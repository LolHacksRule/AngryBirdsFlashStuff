package §9#B§
{
   import §"!@§.§`i§;
   import §2G§.§#"8§;
   import §3#T§.§'§;
   import §5P§.§""C§;
   import §8#!§.§0">§;
   import §8#!§.§5`§;
   import §;$3§.§8=§;
   import §;$3§.§?!0§;
   import §<h§.§>"0§;
   
   public class §=!V§ extends §`i§
   {
      
      public static const STATE_NAME:String = "stateTournamentLevelEndFail";
       
      
      private var §>D§:§0">§;
      
      public function §=!V§(param1:§8=§, param2:§""C§, param3:Boolean = false, param4:String = "stateTournamentLevelEndFail")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§>D§ = new §0">§(this,§>"0§(§`!H§.getItemByName("Button_NextLevel")),§5`§.§6!§,§#"8§(AngryBirdsBase.singleton.dataModel).§-!h§,§#"8§(AngryBirdsBase.singleton.dataModel).§""[§);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         var _loc2_:String = §5`§.§6!§.§=0§(mLevelManager.currentLevel);
         if(_loc2_)
         {
            this.§>D§.activate(_loc2_);
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§>D§.deactivate();
      }
      
      protected function §-&§() : void
      {
      }
      
      override protected function getCutSceneState() : String
      {
         return §3#t§.STATE_NAME;
      }
      
      override protected function getLevelLoadState() : String
      {
         return §+y§.STATE_NAME;
      }
      
      override protected function getLevelSelectionState() : String
      {
         return §=!L§.STATE_NAME;
      }
      
      override public function prepareToLoadNextClassicLevel() : void
      {
         var _loc1_:String = this.getNextIdentifier();
         if(_loc1_ != null && _loc1_ != "")
         {
            mLevelManager.loadLevel(mLevelManager.getValidLevelId(_loc1_));
         }
         else
         {
            (mLevelManager as §?!0§).previousLevel = mLevelManager.currentLevel;
         }
      }
      
      override protected function showButtons() : void
      {
         var _loc1_:String = this.getNextIdentifier();
         if(!_loc1_)
         {
            (§`!H§.getItemByName("Button_NextLevel") as §>"0§).setVisibility(false);
            (§`!H§.getItemByName("Button_CutScene") as §>"0§).setVisibility(false);
            (§`!H§.getItemByName("Button_MightyEagle") as §>"0§).setVisibility(true);
         }
         else if(mLevelManager.isCutSceneNext())
         {
            (§`!H§.getItemByName("Button_NextLevel") as §>"0§).setVisibility(false);
            (§`!H§.getItemByName("Button_CutScene") as §>"0§).setVisibility(true);
         }
         else
         {
            (§`!H§.getItemByName("Button_NextLevel") as §>"0§).setVisibility(true);
            (§`!H§.getItemByName("Button_CutScene") as §>"0§).setVisibility(false);
            (§`!H§.getItemByName("Button_NextLevel") as §>"0§).mClip.unlocksIn.visible = !§5`§.§6!§.isLevelOpen(_loc1_);
         }
         (§`!H§.getItemByName("Button_CutScene") as §>"0§).setVisibility(false);
         _loc1_ = §5`§.§6!§.§ #A§(mLevelManager.currentLevel);
         if(_loc1_)
         {
            (§`!H§.getItemByName("Button_NextLevel") as §>"0§).setVisibility(true);
            (§`!H§.getItemByName("Button_Menu") as §>"0§).x = §5!h§[0];
            (§`!H§.getItemByName("Button_Replay") as §>"0§).x = §5!h§[1];
            (§`!H§.getItemByName("Button_NextLevel") as §>"0§).x = §5!h§[2];
         }
         else
         {
            (§`!H§.getItemByName("Button_NextLevel") as §>"0§).setVisibility(false);
            (§`!H§.getItemByName("Button_Menu") as §>"0§).x = §5!h§[0];
            (§`!H§.getItemByName("Button_Replay") as §>"0§).x = §5!h§[1];
            (§`!H§.getItemByName("Button_MightyEagle") as §>"0§).x = §5!h§[2];
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'#0§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               if(mLevelManager.isCutSceneNext())
               {
                  super.onUIInteraction(param1,param2,param3);
               }
               else if(this.§>D§.§5[§)
               {
                  super.onUIInteraction(param1,param2,param3);
               }
               else if(this.§>D§.§9!Z§)
               {
                  this.§>D§.§%[§();
               }
               break;
            default:
               super.onUIInteraction(param1,param2,param3);
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         this.§>D§.update();
      }
      
      override public function getNextIdentifier() : String
      {
         return §5`§.§6!§.§ #A§(mLevelManager.currentLevel);
      }
      
      override protected function getTournamentId() : int
      {
         if(§5`§.§6!§.§"!^§)
         {
            return §5`§.§6!§.§"!^§.id;
         }
         return -1;
      }
   }
}
