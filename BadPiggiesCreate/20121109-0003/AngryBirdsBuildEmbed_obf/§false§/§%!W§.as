package §false§
{
   import §!y§.§2U§;
   import §!y§.§=!Z§;
   import §?!-§.§'!V§;
   import flash.events.MouseEvent;
   
   public class §%!W§ extends Popup
   {
       
      
      public function §%!W§(param1:§2U§, param2:StatePopupManager)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            super(§=!Z§.§;K§.Views.PopupView_Warning[0],param1);
            if(_loc3_ || param1)
            {
               mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§9!I§);
               if(_loc3_)
               {
                  §'!V§.pause();
                  if(!(_loc4_ && param1))
                  {
                     addr77:
                     AngryBirdsFP11.§`!d§.§2t§();
                  }
               }
               return;
            }
         }
         §§goto(addr77);
      }
      
      private function §9!I§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.deActivate();
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super.deActivate();
            if(_loc1_)
            {
               §§goto(addr37);
            }
            §§goto(addr46);
         }
         addr37:
         §'!V§.resume();
         if(!(_loc2_ && _loc1_))
         {
            addr46:
            this.close();
         }
      }
   }
}
