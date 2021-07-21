package §'d§
{
   import §>!O§.§[+§;
   import §@a§.§'p§;
   import §@a§.§8H§;
   import flash.events.MouseEvent;
   
   public class §'`§ extends Popup
   {
      
      public static const §38§:String = "generalError";
      
      public static const §#!5§:String = "thirdPartyCookiesDisabled";
       
      
      public function §'`§(param1:§8H§, param2:StatePopupManager, param3:String = "generalError")
      {
         super(§'p§.§ ,§.Views.PopupView_Error[0],param1);
         mClip.gotoAndStop([§38§,§#!5§].indexOf(param3) + 1);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§%"§);
         §[+§.pause();
         AngryBirdsFP11.§6Z§.§&=§();
      }
      
      private function §%"§(param1:MouseEvent) : void
      {
         AngryBirdsFP11.§6Z§.§&=§();
      }
   }
}
