package §7!r§
{
   import §#M§.§%^§;
   import §#M§.§^0§;
   import §&!"§.Popup;
   import §&!"§.StatePopupManager;
   import §6k§.§-#§;
   import §<";§.§'y§;
   import §[!-§.§9!S§;
   import flash.events.MouseEvent;
   
   public class §;§ extends Popup
   {
       
      
      private var §[!g§:StatePopupManager;
      
      private var §4B§:Boolean = false;
      
      private var §?"<§:§9!S§;
      
      public function §;§(param1:§^0§, param2:StatePopupManager)
      {
         super(§%^§.§?>§.Views.PopupView_NewTournamentBranded[0],param1);
         this.§[!g§ = param2;
         mClip.PlayNowButton.addEventListener(MouseEvent.CLICK,this.§@O§);
      }
      
      private function §@O§(param1:MouseEvent) : void
      {
         §,"I§.§&q§.§>"I§(§-#§.STATE_NAME);
         (AngryBirdsFP11.sUserProgress as §'y§).saveTutorialSeen(§'y§.§-O§);
         this.close();
      }
      
      override public function close() : void
      {
         mClip.PlayNowButton.removeEventListener(MouseEvent.CLICK,this.§@O§);
         super.close();
      }
   }
}
