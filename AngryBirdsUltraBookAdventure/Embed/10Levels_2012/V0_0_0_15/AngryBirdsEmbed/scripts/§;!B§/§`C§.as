package §;!B§
{
   import §5H§.§[k§;
   import §<!G§.§!I§;
   import §<!G§.§^3§;
   import flash.events.MouseEvent;
   
   public class §`C§ extends Popup
   {
      
      public static const §3X§:String = "generalError";
      
      public static const §8M§:String = "thirdPartyCookiesDisabled";
       
      
      public function §`C§(param1:§^3§, param2:StatePopupManager, param3:String = "generalError")
      {
         super(§!I§.§7y§.Views.PopupView_Error[0],param1);
         mClip.gotoAndStop([§3X§,§8M§].indexOf(param3) + 1);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§&#§);
         §[k§.pause();
         AngryBirdsFP11.§,s§.§2'§();
      }
      
      private function §&#§(param1:MouseEvent) : void
      {
         AngryBirdsFP11.§,s§.§2'§();
      }
   }
}
