package §^!m§
{
   import §!!j§.Popup;
   import §;!y§.§,!s§;
   import §>L§.§+!i§;
   import §>f§.§&!G§;
   import §>f§.§2!z§;
   import flash.events.MouseEvent;
   
   public class §;0§ extends Popup
   {
      
      public static const §%!P§:String = "generalError";
      
      public static const §-!W§:String = "thirdPartyCookiesDisabled";
       
      
      public function §;0§(param1:§&!G§, param2:StatePopupManager, param3:String = "generalError")
      {
         super(§2!z§.§ _§.Views.PopupView_Error[0],param1);
         mClip.gotoAndStop([§%!P§,§-!W§].indexOf(param3) + 1);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§#m§);
         §,!s§.pause();
         AngryBirdsFP11.§'!g§.§5!M§();
      }
      
      private function §#m§(param1:MouseEvent) : void
      {
         AngryBirdsFP11.§'!g§.§5!M§();
         §+!i§.§>!y§("window.location.reload");
      }
   }
}
