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
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super(§[!'§.§+@§.Views.PopupServerUpdated_Error[0],param1);
            while(true)
            {
               mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§"!8§);
               loop1:
               while(_loc3_)
               {
                  § _§.pause();
                  while(true)
                  {
                     AngryBirdsFP11.§3!a§.§5C§();
                     if(_loc3_)
                     {
                        if(_loc3_ || param1)
                        {
                           break;
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr60);
      }
      
      private function §"!8§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            AngryBirdsFP11.§3!a§.stage.displayState = StageDisplayState.NORMAL;
         }
         do
         {
            §=r§.§[!3§("window.location.reload");
         }
         while(!(_loc2_ || this));
         
      }
   }
}
