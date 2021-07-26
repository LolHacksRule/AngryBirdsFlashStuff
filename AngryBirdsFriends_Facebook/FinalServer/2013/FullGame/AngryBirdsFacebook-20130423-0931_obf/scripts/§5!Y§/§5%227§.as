package §5!Y§
{
   import §;u§.§9!V§;
   import §@!"§.§?l§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import flash.events.MouseEvent;
   
   public class §5"7§ extends Popup
   {
       
      
      public function §5"7§(param1:§`_§, param2:StatePopupManager)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            super(§ "<§.§%I§.Views.PopupTournamentNotFound[0],param1);
            while(true)
            {
               mClip.btnBack.addEventListener(MouseEvent.CLICK,this.§ "B§);
               §§goto(addr74);
            }
         }
         addr74:
         while(true)
         {
            §?l§.pause();
            if(!(_loc4_ && param2))
            {
               if(!(_loc4_ && param1))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private function § "B§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §%"S§.§!C§.§`H§(§9!V§.STATE_NAME);
         }
         do
         {
            close();
         }
         while(!(_loc3_ || _loc2_));
         
      }
   }
}
