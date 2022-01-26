package §##§
{
   import §87§.§2-§;
   import §87§.§]T§;
   import §;j§.§8[§;
   import flash.events.MouseEvent;
   
   public class §9l§ extends Popup
   {
      
      public static const §8!8§:String = "generalError";
      
      public static const §6t§:String = "thirdPartyCookiesDisabled";
       
      
      public function §9l§(param1:§]T§, param2:StatePopupManager, param3:String = "generalError")
      {
         super(§2-§.§+J§.Views.PopupView_Error[0],param1);
         mClip.gotoAndStop([§8!8§,§6t§].indexOf(param3) + 1);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§+!H§);
         §8[§.pause();
         AngryBirdsFP11.§`H§.§#g§();
      }
      
      private function §+!H§(param1:MouseEvent) : void
      {
         AngryBirdsFP11.§`H§.§#g§();
      }
   }
}
