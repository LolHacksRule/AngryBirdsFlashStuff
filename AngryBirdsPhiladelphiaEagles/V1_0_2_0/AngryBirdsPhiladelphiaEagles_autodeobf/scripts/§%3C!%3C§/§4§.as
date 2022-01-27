package §<!<§
{
   import §2S§.§,!;§;
   import §2S§.§<!K§;
   import §<!F§.§5!+§;
   import flash.events.MouseEvent;
   
   public class §4§ extends Popup
   {
      
      public static const §[!%§:String = "generalError";
      
      public static const §#D§:String = "thirdPartyCookiesDisabled";
       
      
      public function §4§(param1:§<!K§, param2:StatePopupManager, param3:String = "generalError")
      {
         super(§,!;§.§2o§.Views.PopupView_Error[0],param1);
         mClip.gotoAndStop([§[!%§,§#D§].indexOf(param3) + 1);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§1!A§);
         §5!+§.pause();
         AngryBirdsFP11.§"Y§.§1s§();
      }
      
      private function §1!A§(param1:MouseEvent) : void
      {
         AngryBirdsFP11.§"Y§.§1s§();
      }
   }
}
