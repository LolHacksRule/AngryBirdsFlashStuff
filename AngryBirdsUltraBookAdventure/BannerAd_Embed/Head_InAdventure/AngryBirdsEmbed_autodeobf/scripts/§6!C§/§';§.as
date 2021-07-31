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
       
      
      public function §';§(param1:§4!,§, param2:StatePopupManager, param3:String = "generalError")
      {
         super(§5A§.§;L§.Views.PopupView_Error[0],param1);
         mClip.gotoAndStop([§4!G§,§,F§].indexOf(param3) + 1);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§^g§);
         §=w§.pause();
         AngryBirdsFP11.§ y§.§8<§();
      }
      
      private function §^g§(param1:MouseEvent) : void
      {
         AngryBirdsFP11.§ y§.§8<§();
      }
   }
}
