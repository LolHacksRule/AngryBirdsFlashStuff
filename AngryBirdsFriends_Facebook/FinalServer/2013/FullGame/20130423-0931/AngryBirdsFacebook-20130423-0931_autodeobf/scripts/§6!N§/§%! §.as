package §6!N§
{
   import §%!I§.§]!M§;
   import §2<§.§3d§;
   import §5!Y§.Popup;
   import §5!Y§.StatePopupManager;
   import §9@§.§4d§;
   import §9@§.§@q§;
   import §@!%§.§#!$§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import flash.events.MouseEvent;
   
   public class §%! § extends Popup implements §4d§
   {
      
      private static const §>!z§:String = "Easter";
       
      
      private var §>"P§:StatePopupManager;
      
      private var §^!?§:Boolean = false;
      
      private var §2!H§:§3d§;
      
      public function §%! §(param1:§`_§, param2:StatePopupManager)
      {
         super(§ "<§.§%I§.Views.PopupView_NewTournamentBranded[0],param1);
         this.§>"P§ = param2;
         mClip.PlayNowButton.addEventListener(MouseEvent.CLICK,this.§""O§);
      }
      
      private function §""O§(param1:MouseEvent) : void
      {
         §%"S§.§!C§.§`H§(§]!M§.STATE_NAME);
         (AngryBirdsFP11.sUserProgress as §#!$§).saveTutorialSeen(§#!$§.§;O§);
         this.close();
      }
      
      override public function close() : void
      {
         mClip.PlayNowButton.removeEventListener(MouseEvent.CLICK,this.§""O§);
         super.close();
      }
      
      public function §=,§() : String
      {
         return §@q§.§73§;
      }
      
      public function §8"3§() : String
      {
         return §>!z§;
      }
   }
}
