package §6k§
{
   import §-B§.§]!<§;
   import §@",§.§9" §;
   import §^!o§.§=1§;
   import §`!n§.LevelManager;
   
   public class §;!e§ extends §9" §
   {
      
      public static const STATE_NAME:String = "stateTournamentLevelEndFail";
       
      
      public function §;!e§(param1:Boolean = false, param2:String = "stateTournamentLevelEndFail")
      {
         super(param1,param2);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§&!v§();
      }
      
      protected function §&!v§() : void
      {
         §2!K§.getItemByName("Button_Share_Default").setVisibility(false);
         §2!K§.getItemByName("Button_Embed").setVisibility(false);
      }
      
      override protected function getCutSceneState() : String
      {
         return §0§.STATE_NAME;
      }
      
      override protected function getLevelLoadState() : String
      {
         return §?1§.STATE_NAME;
      }
      
      override protected function getLevelSelectionState() : String
      {
         return §-#§.STATE_NAME;
      }
      
      override protected function loadNextLevel() : void
      {
         var _loc1_:String = §=1§.§1[§.§4O§(LevelManager.§`-§);
         if(_loc1_ != null && _loc1_ != "")
         {
            LevelManager.§^p§(LevelManager.§&!1§(_loc1_));
         }
         else
         {
            LevelManager.§]!5§ = LevelManager.§`-§;
         }
         mNextState = this.getCutSceneState();
      }
      
      override protected function showButtons() : void
      {
         var _loc1_:String = §=1§.§1[§.§4O§(LevelManager.§`-§);
         if(!AngryBirdsFP11.sUserProgress.isLevelOpen(_loc1_))
         {
            (§2!K§.getItemByName("Button_NextLevel") as §]!<§).setVisibility(false);
            (§2!K§.getItemByName("Button_CutScene") as §]!<§).setVisibility(false);
            (§2!K§.getItemByName("Button_MightyEagle") as §]!<§).setVisibility(true);
         }
         else if(LevelManager.§;"@§())
         {
            (§2!K§.getItemByName("Button_NextLevel") as §]!<§).setVisibility(false);
            (§2!K§.getItemByName("Button_CutScene") as §]!<§).setVisibility(true);
         }
         else
         {
            (§2!K§.getItemByName("Button_NextLevel") as §]!<§).setVisibility(true);
            (§2!K§.getItemByName("Button_CutScene") as §]!<§).setVisibility(false);
         }
      }
   }
}
