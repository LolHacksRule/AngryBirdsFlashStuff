package §9!#§
{
   import §=z§.§0!E§;
   import §>!7§.§"Q§;
   import §>!7§.§`d§;
   import flash.events.MouseEvent;
   
   public class §@!9§ extends Popup
   {
      
      public static const §9S§:String = "generalError";
      
      public static const §^P§:String = "thirdPartyCookiesDisabled";
       
      
      public function §@!9§(param1:§"Q§, param2:StatePopupManager, param3:String = "generalError")
      {
         super(§`d§.§8?§.Views.PopupView_Error[0],param1);
         mClip.gotoAndStop([§9S§,§^P§].indexOf(param3) + 1);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§-!?§);
         §0!E§.pause();
         AngryBirdsFP11.§;!@§.§&L§();
      }
      
      private function §-!?§(param1:MouseEvent) : void
      {
         AngryBirdsFP11.§;!@§.§&L§();
      }
   }
}
