package §6!C§
{
   import §-!D§.§4!,§;
   import §-!D§.§5A§;
   import §5!L§.§=w§;
   import flash.events.MouseEvent;
   
   public class §';§ extends Popup
   {
      
      public static const §4!G§:String = "generalError";
      
      public static const §,F§:String = "thirdPartyCookiesDisabled";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §4!G§ = "generalError";
            if(!_loc2_)
            {
               §,F§ = "thirdPartyCookiesDisabled";
            }
         }
      }
      
      public function §';§(param1:§4!,§, param2:StatePopupManager, param3:String = "generalError")
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super(§5A§.§;L§.Views.PopupView_Error[0],param1);
            if(!_loc4_)
            {
               mClip.gotoAndStop([§4!G§,§,F§].indexOf(param3) + 1);
               if(!(_loc4_ && param3))
               {
                  mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§^g§);
                  if(!(_loc4_ && param3))
                  {
                     §=w§.pause();
                     if(_loc4_)
                     {
                     }
                  }
               }
               §§goto(addr87);
            }
            AngryBirdsFP11.§ y§.§8<§();
         }
         addr87:
      }
      
      private function §^g§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            AngryBirdsFP11.§ y§.§8<§();
         }
      }
   }
}
