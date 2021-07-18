package §^!o§
{
   import §5!Y§.§9"6§;
   import §5!Y§.Popup;
   import §5!Y§.StatePopupManager;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import flash.events.MouseEvent;
   
   public class §'s§ extends Popup
   {
       
      
      public function §'s§(param1:§`_§, param2:StatePopupManager, param3:String = "")
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super(§ "<§.§%I§.Views.PopupView_VCTutorial[0],param1);
            do
            {
               mClip.birdCoinWallet.coinsAddButton.addEventListener(MouseEvent.CLICK,this.§6">§);
            }
            while(!_loc4_);
            
         }
      }
      
      private function §6">§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            close();
            do
            {
               §9"6§.§?"F§();
            }
            while(_loc2_ && param1);
            
         }
      }
   }
}
