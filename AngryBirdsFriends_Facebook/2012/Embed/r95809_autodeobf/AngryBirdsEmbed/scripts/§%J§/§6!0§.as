package §%J§
{
   import §-l§.§?'§;
   import §5Y§.§"!4§;
   import §5Y§.§1!$§;
   import flash.events.MouseEvent;
   
   public class §6!0§ extends Popup
   {
      
      public static const §>p§:String = "generalError";
      
      public static const §"t§:String = "thirdPartyCookiesDisabled";
       
      
      public function §6!0§(param1:§"!4§, param2:StatePopupManager, param3:String = "generalError")
      {
         super(§1!$§.§7e§.Views.PopupView_Error[0],param1);
         mClip.gotoAndStop([§>p§,§"t§].indexOf(param3) + 1);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§;[§);
         §?'§.pause();
         AngryBirdsFP11.§ for§.§?M§();
      }
      
      private function §;[§(param1:MouseEvent) : void
      {
         AngryBirdsFP11.§ for§.§?M§();
      }
   }
}
