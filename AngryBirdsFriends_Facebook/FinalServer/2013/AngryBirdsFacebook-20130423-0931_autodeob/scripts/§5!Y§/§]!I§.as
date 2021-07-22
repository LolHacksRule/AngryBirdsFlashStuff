package §5!Y§
{
   import §30§.§'"+§;
   import §@!"§.§?l§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import flash.events.MouseEvent;
   
   public class §]!I§ extends Popup
   {
      
      public static const § !d§:String = "generalError";
      
      public static const §`'§:String = "thirdPartyCookiesDisabled";
       
      
      public function §]!I§(param1:§`_§, param2:StatePopupManager, param3:String = "generalError")
      {
         super(§ "<§.§%I§.Views.PopupView_Error[0],param1);
         §""W§ = §>!L§;
         mClip.gotoAndStop([§ !d§,§`'§].indexOf(param3) + 1);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§ "B§);
         §?l§.pause();
         AngryBirdsFP11.§>m§.§^X§();
      }
      
      private function § "B§(param1:MouseEvent) : void
      {
         AngryBirdsFP11.§>m§.§^X§();
         §'"+§.§'!#§("window.location.reload");
      }
   }
}
