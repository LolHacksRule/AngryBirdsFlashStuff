package §4q§
{
   import §"^§.§9=§;
   import §5!<§.§@]§;
   import §5!<§.§^!$§;
   import flash.events.MouseEvent;
   
   public class §,]§ extends Popup
   {
      
      public static const §3$§:String = "generalError";
      
      public static const §8v§:String = "thirdPartyCookiesDisabled";
       
      
      public function §,]§(param1:§@]§, param2:StatePopupManager, param3:String = "generalError")
      {
         super(§^!$§.§"!9§.Views.PopupView_Error[0],param1);
         mClip.gotoAndStop([§3$§,§8v§].indexOf(param3) + 1);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§+4§);
         §9=§.pause();
         AngryBirdsFP11.§ j§.§,O§();
      }
      
      private function §+4§(param1:MouseEvent) : void
      {
         AngryBirdsFP11.§ j§.§,O§();
      }
   }
}
