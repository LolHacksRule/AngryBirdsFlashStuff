package §5!Y§
{
   import §1!t§.§!!G§;
   import §9!n§.LevelManager;
   import §;u§.§5<§;
   import §<"F§.§["M§;
   import §@!%§.§#!$§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import flash.events.MouseEvent;
   
   public class §5!-§ extends Popup
   {
       
      
      private var §>"P§:StatePopupManager;
      
      public function §5!-§(param1:§`_§, param2:StatePopupManager, param3:Boolean)
      {
         super(§ "<§.§%I§.Views.PopupView_EndOfCompetitionPopup[0],param1);
         mClip.Button_Close.addEventListener(MouseEvent.CLICK,this.§if §);
         mClip.btnPlay.addEventListener(MouseEvent.CLICK,this.§["!§);
         this.§>"P§ = param2;
         this.§,!$§();
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
      }
      
      private function §,!$§() : void
      {
         (§[w§.getItemByName("MovieClip_Popup_Loading") as §!!G§).visible = false;
      }
      
      private function §-"!§() : void
      {
         (§[w§.getItemByName("MovieClip_Popup_Loading") as §!!G§).visible = true;
      }
      
      private function §if §(param1:MouseEvent) : void
      {
         if(!AngryBirdsFP11.sUserProgress.hasTutorialBeenSeen(§#!$§.§+%§ + §["M§.§0<§))
         {
            (AngryBirdsFP11.sUserProgress as §#!$§).saveTutorialSeen(§#!$§.§+%§ + §["M§.§0<§);
         }
         close();
      }
      
      private function §["!§(param1:MouseEvent) : void
      {
         if(!AngryBirdsFP11.sUserProgress.hasTutorialBeenSeen(§#!$§.§+%§ + §["M§.§0<§))
         {
            (AngryBirdsFP11.sUserProgress as §#!$§).saveTutorialSeen(§#!$§.§+%§ + §["M§.§0<§);
         }
         LevelManager.§,m§ = 6;
         §%"S§.§!C§.§`H§(§5<§.STATE_NAME);
         close();
      }
   }
}
