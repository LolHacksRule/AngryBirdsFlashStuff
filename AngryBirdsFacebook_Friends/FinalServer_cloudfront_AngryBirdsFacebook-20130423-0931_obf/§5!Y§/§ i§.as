package §5!Y§
{
   import §%!I§.§]!M§;
   import §@!"§.§?l§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import flash.events.MouseEvent;
   
   public class § i§ extends Popup
   {
       
      
      public function § i§(param1:§`_§, param2:StatePopupManager)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            super(§ "<§.§%I§.Views.PopupTournamentEnded[0],param1);
         }
         while(true)
         {
            mClip.btnBack.addEventListener(MouseEvent.CLICK,this.§ "B§);
            while(!_loc3_)
            {
               §?l§.pause();
               if(!_loc3_)
               {
                  return;
               }
            }
         }
      }
      
      private function § "B§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §%"S§.§!C§.§`H§(§]!M§.STATE_NAME);
         }
         do
         {
            close();
         }
         while(_loc2_);
         
      }
   }
}
