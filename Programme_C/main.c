#include <stdint.h>

#define BASE_ADDR           0xFF200000
#define LED_ADDR            0x00020000
#define STATE_REG           0x00030000
#define ALPHA_U_REG         0x00030002
#define ALPHA_V_REG         0x00030004
#define ALPHA_W_REG         0x00030006
#define PERIODE_REG         0x00030008
#define TEMPS_MORT_REG      0x0003000A

volatile char irq_status;

void my_irq(volatile uint8_t * LED_ptr, volatile uint16_t * SR_ptr, volatile uint16_t * alpha_u_ptr, volatile uint16_t * alpha_v_ptr, volatile uint16_t * alpha_w_ptr, volatile uint16_t * periode_ptr, volatile uint16_t * tps_mort_ptr)
{
    // Je mets à jour tous les registres du controleur_onduleur
    *(alpha_u_ptr)  = 0x09C4;       // Alpha = 50%
    *(alpha_v_ptr)  = 0x09C4;
    *(alpha_w_ptr)  = 0x09C4;
    *(periode_ptr)  = 0x1388;       // Periode = 20Khz
    *(tps_mort_ptr) = 0x00C8;       // temps mort = 2µs


    *(SR_ptr)       =     0x003;    // Je mets le flag d'interruption à zéro        
}

int main(void) {

    //Je déclare tous les registres en tenant en compte l'offset (BASE_ADDR)
    volatile uint8_t  * LED_ptr          =  (uint8_t *)(BASE_ADDR | LED_ADDR); 
    volatile uint16_t * SR_ptr           =  (uint16_t *)(BASE_ADDR | STATE_REG);
    volatile uint16_t * alpha_u_ptr      =  (uint16_t *)(BASE_ADDR | ALPHA_U_REG);
    volatile uint16_t * alpha_v_ptr      =  (uint16_t *)(BASE_ADDR | ALPHA_V_REG);
    volatile uint16_t * alpha_w_ptr      =  (uint16_t *)(BASE_ADDR | ALPHA_W_REG);
    volatile uint16_t * periode_ptr      =  (uint16_t *)(BASE_ADDR | PERIODE_REG);
    volatile uint16_t * tps_mort_ptr     =  (uint16_t *)(BASE_ADDR | TEMPS_MORT_REG);
   
     // Initialisation
    *(LED_ptr) = 0x00;
      
    
    /*              Structure du registre d'état
    +--------------------------------------------------------------------+
    +15|...|5|end_periode|secu|interrupt_flag|interrupt_enable|start_stop+    
    +--------------------------------------------------------------------+
    */  

    *(SR_ptr) = 0x03;   // Je mets les bits 0 et 1 du registre d'état à 1 pour démarer le système et autorisé la demande d'interruption
    
    *(LED_ptr) = 0xFF;

    while (1) {

        if ((*(SR_ptr) & 0x00000004) == 0x00000004){ // Je vérifie s'il y'a une demande d'interruption
            my_irq(LED_ptr, SR_ptr, alpha_u_ptr, alpha_v_ptr, alpha_w_ptr, periode_ptr, tps_mort_ptr);    
        }

    }
}

