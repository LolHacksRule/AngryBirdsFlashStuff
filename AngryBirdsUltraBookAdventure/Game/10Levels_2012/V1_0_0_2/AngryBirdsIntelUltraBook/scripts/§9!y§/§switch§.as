package §9!y§
{
   import §2h§.§'!^§;
   import §2h§.§[!'§;
   import §@i§.§=r§;
   import §[m§.Popup;
   import flash.display.StageDisplayState;
   import flash.events.MouseEvent;
   import §true§.§ _§;
   
   public class §switch§ extends Popup
   {
       
      
      public function §switch§(param1:§'!^§, param2:StatePopupManager)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            super(§[!'§.§+@§.Views.PopupServerUpdated_Error[0],param1);
            while(true)
            {
               mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§"!8§);
               while(true)
               {
                  § _§.pause();
                  §§goto(addr73);
               }
            }
         }
         addr73:
         while(true)
         {
            AngryBirdsFP11.§3!a§.§5C§();
            if(_loc4_)
            {
               if(_loc4_ || param2)
               {
                  continue loop0;
               }
               continue loop1;
            }
         }
         addr69:
      }
      
      private function §"!8§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            AngryBirdsFP11.§3!a§.stage.displayState = StageDisplayState.NORMAL;
         }
         do
         {
            §=r§.§[!3§("window.location.reload");
         }
         while(!_loc2_);
         
      }
   }
}
