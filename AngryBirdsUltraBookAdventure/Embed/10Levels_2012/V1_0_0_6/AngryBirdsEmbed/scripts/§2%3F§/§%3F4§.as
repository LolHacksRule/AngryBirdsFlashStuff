package §2?§
{
   import §+!?§.§"h§;
   import §0w§.§0#§;
   import §0w§.§06§;
   import flash.events.MouseEvent;
   
   public class §?4§ extends Popup
   {
      
      public static const §=5§:String = "generalError";
      
      public static const §"w§:String = "thirdPartyCookiesDisabled";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §=5§ = "generalError";
            if(_loc1_ || _loc1_)
            {
               addr43:
               §"w§ = "thirdPartyCookiesDisabled";
            }
            return;
         }
         §§goto(addr43);
      }
      
      public function §?4§(param1:§0#§, param2:StatePopupManager, param3:String = "generalError")
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super(§06§.§-`§.Views.PopupView_Error[0],param1);
            if(!_loc5_)
            {
               mClip.gotoAndStop([§=5§,§"w§].indexOf(param3) + 1);
               if(_loc4_)
               {
                  mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§37§);
                  if(_loc5_)
                  {
                  }
                  §§goto(addr76);
               }
            }
            §"h§.pause();
            if(!_loc5_)
            {
               AngryBirdsFP11.§0P§.§#2§();
            }
         }
         addr76:
      }
      
      private function §37§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            AngryBirdsFP11.§0P§.§#2§();
         }
      }
   }
}
