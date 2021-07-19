package §false§
{
   import §!y§.§2U§;
   import §!y§.§=!Z§;
   import §?!-§.§'!V§;
   import flash.events.MouseEvent;
   
   public class §3K§ extends Popup
   {
      
      public static const §%w§:String = "generalError";
      
      public static const §6!#§:String = "thirdPartyCookiesDisabled";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §%w§ = "generalError";
            if(!(_loc1_ && _loc1_))
            {
               addr29:
               §6!#§ = "thirdPartyCookiesDisabled";
            }
            return;
         }
         §§goto(addr29);
      }
      
      public function §3K§(param1:§2U§, param2:StatePopupManager, param3:String = "generalError")
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            super(§=!Z§.§;K§.Views.PopupView_Error[0],param1);
            if(!_loc5_)
            {
               mClip.gotoAndStop([§%w§,§6!#§].indexOf(param3) + 1);
               if(_loc4_)
               {
                  addr65:
                  mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§3!S§);
                  if(!(_loc5_ && param3))
                  {
                     §'!V§.pause();
                     if(!_loc5_)
                     {
                        addr83:
                        AngryBirdsFP11.§`!d§.§2t§();
                     }
                  }
                  §§goto(addr83);
               }
               return;
            }
            §§goto(addr65);
         }
         §§goto(addr83);
      }
      
      private function §3!S§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            AngryBirdsFP11.§`!d§.§2t§();
         }
      }
   }
}
