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
       
      
      public function §3K§(param1:§2U§, param2:StatePopupManager, param3:String = "generalError")
      {
         super(§=!Z§.§;K§.Views.PopupView_Error[0],param1);
         mClip.gotoAndStop([§%w§,§6!#§].indexOf(param3) + 1);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§3!S§);
         §'!V§.pause();
         AngryBirdsFP11.§`!d§.§2t§();
      }
      
      private function §3!S§(param1:MouseEvent) : void
      {
         AngryBirdsFP11.§`!d§.§2t§();
      }
   }
}
