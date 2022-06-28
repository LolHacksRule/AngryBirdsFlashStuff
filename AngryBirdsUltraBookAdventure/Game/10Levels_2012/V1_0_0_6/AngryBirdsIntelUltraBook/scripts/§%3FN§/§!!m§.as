package §?N§
{
   import §,B§.Popup;
   import §;!o§.§>!l§;
   import §>! §.§^!c§;
   import §[!+§.§ !I§;
   import §[!+§.§4`§;
   import flash.events.MouseEvent;
   
   public class §!!m§ extends Popup
   {
      
      public static const §^![§:String = "generalError";
      
      public static const §[!x§:String = "thirdPartyCookiesDisabled";
       
      
      public function §!!m§(param1:§4`§, param2:StatePopupManager, param3:String = "generalError")
      {
         super(§ !I§.§3!a§.Views.PopupView_Error[0],param1);
         mClip.gotoAndStop([§^![§,§[!x§].indexOf(param3) + 1);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§<,§);
         §^!c§.pause();
         AngryBirdsFP11.§3l§.§&2§();
      }
      
      private function §<,§(param1:MouseEvent) : void
      {
         AngryBirdsFP11.§3l§.§&2§();
         §>!l§.§ a§("window.location.reload");
      }
   }
}
