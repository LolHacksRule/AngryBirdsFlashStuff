package §5!Y§
{
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import flash.events.MouseEvent;
   
   public class §^7§ extends Popup
   {
       
      
      public function §^7§(param1:§`_§, param2:StatePopupManager)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            super(§ "<§.§%I§.Views.PopupBirdBotHelp[0],param1);
            do
            {
               mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§1'§);
            }
            while(_loc3_ && this);
            
         }
      }
      
      private function §1'§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            close();
         }
      }
   }
}
