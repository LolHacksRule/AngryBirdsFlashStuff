package §[!K§
{
   import §#!e§.LevelManager;
   import §4!e§.§^!D§;
   import §7"@§.§1G§;
   import §7-§.§,!C§;
   
   public class §4#§ extends §1G§
   {
      
      public static const STATE_NAME:String = "stateTournamentLevelEndFail";
       
      
      public function §4#§(param1:Boolean = false, param2:String = "stateTournamentLevelEndFail")
      {
         super(param1,param2);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§-!U§();
      }
      
      protected function §-!U§() : void
      {
         §6w§.getItemByName("Button_Share_Default").setVisibility(false);
         §6w§.getItemByName("Button_Embed").setVisibility(false);
      }
      
      override protected function getCutSceneState() : String
      {
         return §;+§.STATE_NAME;
      }
      
      override protected function getLevelLoadState() : String
      {
         return §="#§.STATE_NAME;
      }
      
      override protected function getLevelSelectionState() : String
      {
         return §-k§.STATE_NAME;
      }
      
      override protected function loadNextLevel() : void
      {
         var _loc1_:String = §,!C§.§;"§.§4W§(LevelManager.§'!O§);
         if(_loc1_ != null && _loc1_ != "")
         {
            LevelManager.§-!4§(LevelManager.§;!f§(_loc1_));
         }
         else
         {
            LevelManager.§+!;§ = LevelManager.§'!O§;
         }
         mNextState = this.getCutSceneState();
      }
      
      override protected function showButtons() : void
      {
         var _loc1_:String = §,!C§.§;"§.§4W§(LevelManager.§'!O§);
         if(!AngryBirdsFP11.sUserProgress.isLevelOpen(_loc1_))
         {
            (§6w§.getItemByName("Button_NextLevel") as §^!D§).setVisibility(false);
            (§6w§.getItemByName("Button_CutScene") as §^!D§).setVisibility(false);
            (§6w§.getItemByName("Button_MightyEagle") as §^!D§).setVisibility(true);
         }
         else if(LevelManager.§%^§())
         {
            (§6w§.getItemByName("Button_NextLevel") as §^!D§).setVisibility(false);
            (§6w§.getItemByName("Button_CutScene") as §^!D§).setVisibility(true);
         }
         else
         {
            (§6w§.getItemByName("Button_NextLevel") as §^!D§).setVisibility(true);
            (§6w§.getItemByName("Button_CutScene") as §^!D§).setVisibility(false);
         }
      }
   }
}
