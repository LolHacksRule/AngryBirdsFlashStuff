package §2!!§
{
   import §@w§.§2G§;
   import §]!O§.§+[§;
   import §]!O§.§;Q§;
   import flash.events.MouseEvent;
   
   public class §+D§ extends Popup
   {
      
      public static const §1>§:String = "generalError";
      
      public static const §4!0§:String = "thirdPartyCookiesDisabled";
       
      
      public function §+D§(param1:§+[§, param2:StatePopupManager, param3:String = "generalError")
      {
         super(§;Q§.static.Views.PopupView_Error[0],param1);
         mClip.gotoAndStop([§1>§,§4!0§].indexOf(param3) + 1);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§ H§);
         §2G§.pause();
         AngryBirdsFP11.§<2§.§8y§();
      }
      
      private function § H§(param1:MouseEvent) : void
      {
         AngryBirdsFP11.§<2§.§8y§();
      }
   }
}
