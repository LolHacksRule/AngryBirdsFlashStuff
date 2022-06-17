package §!!L§
{
   import § "L§.§1"r§;
   import §+`§.§%"q§;
   import §,#,§.§=#o§;
   import §3"V§.§ b§;
   import §7#$§.§8$%§;
   import §7#$§.§]#q§;
   import §]§.§&!e§;
   import §^"3§.§`$4§;
   import §`,§.§ !f§;
   import §`,§.§7!$§;
   
   public class §6$1§ extends §&!e§
   {
      
      public static const STATE_NAME:String = "stateTournamentLevelEndFail";
       
      
      private var §,#P§:§ !f§;
      
      public function §6$1§(param1:§]#q§, param2:§%"q§, param3:Boolean = false, param4:String = "stateTournamentLevelEndFail")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§,#P§ = new § !f§(this,§1"r§(§;!w§.getItemByName("Button_NextLevel")),§7!$§.§+!,§,§=#o§(AngryBirdsBase.singleton.dataModel).§[h§,§=#o§(AngryBirdsBase.singleton.dataModel).§1q§);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         var _loc2_:String = §7!$§.§+!,§.§="X§(mLevelManager.currentLevel);
         if(_loc2_)
         {
            this.§,#P§.activate(_loc2_);
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§,#P§.deactivate();
      }
      
      protected function §1$<§() : void
      {
      }
      
      override protected function getCutSceneState() : String
      {
         return §@<§.STATE_NAME;
      }
      
      override protected function getLevelLoadState() : String
      {
         return §=$3§.STATE_NAME;
      }
      
      override protected function getLevelSelectionState() : String
      {
         return § !8§.STATE_NAME;
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
            (mLevelManager as §8$%§).previousLevel = mLevelManager.currentLevel;
         }
      }
      
      override protected function showButtons() : void
      {
         var _loc1_:String = this.getNextIdentifier();
         if(!_loc1_)
         {
            (§;!w§.getItemByName("Button_NextLevel") as §1"r§).setVisibility(false);
            (§;!w§.getItemByName("Button_CutScene") as §1"r§).setVisibility(false);
            (§;!w§.getItemByName("Button_MightyEagle") as §1"r§).setVisibility(true);
         }
         else if(mLevelManager.isCutSceneNext())
         {
            (§;!w§.getItemByName("Button_NextLevel") as §1"r§).setVisibility(false);
            (§;!w§.getItemByName("Button_CutScene") as §1"r§).setVisibility(true);
         }
         else
         {
            (§;!w§.getItemByName("Button_NextLevel") as §1"r§).setVisibility(true);
            (§;!w§.getItemByName("Button_CutScene") as §1"r§).setVisibility(false);
            (§;!w§.getItemByName("Button_NextLevel") as §1"r§).mClip.unlocksIn.visible = !§7!$§.§+!,§.isLevelOpen(_loc1_);
         }
         (§;!w§.getItemByName("Button_CutScene") as §1"r§).setVisibility(false);
         _loc1_ = §7!$§.§+!,§.§>";§(mLevelManager.currentLevel);
         if(_loc1_)
         {
            (§;!w§.getItemByName("Button_NextLevel") as §1"r§).setVisibility(true);
            (§;!w§.getItemByName("Button_Menu") as §1"r§).x = §<"#§[0];
            (§;!w§.getItemByName("Button_Replay") as §1"r§).x = §<"#§[1];
            (§;!w§.getItemByName("Button_NextLevel") as §1"r§).x = §<"#§[2];
         }
         else
         {
            (§;!w§.getItemByName("Button_NextLevel") as §1"r§).setVisibility(false);
            (§;!w§.getItemByName("Button_Menu") as §1"r§).x = §<"#§[0];
            (§;!w§.getItemByName("Button_Replay") as §1"r§).x = §<"#§[1];
            (§;!w§.getItemByName("Button_MightyEagle") as §1"r§).x = §<"#§[2];
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§`$4§) : void
      {
         var _loc4_:Boolean = false;
         switch(param2)
         {
            case "NEXT_LEVEL":
               _loc4_ = true;
               if(§7!$§.§+!,§.§!$#§())
               {
                  if(§7!$§.§+!,§.§&"%§() <= 0)
                  {
                     §8"^§.§!#C§();
                     §3#§(§8"^§.STATE_NAME);
                     _loc4_ = false;
                  }
               }
               if(_loc4_)
               {
                  if(mLevelManager.isCutSceneNext())
                  {
                     super.onUIInteraction(param1,param2,param3);
                  }
                  else if(this.§,#P§.§>M§)
                  {
                     super.onUIInteraction(param1,param2,param3);
                  }
                  else if(this.§,#P§.§5#>§)
                  {
                     this.§,#P§.§`!w§();
                  }
               }
               break;
            case "REPLAY":
               § b§.playSound("Menu_Confirm",§ b§.§;$5§);
               if(§7!$§.§+!,§.§!$#§())
               {
                  if(§7!$§.§+!,§.§&"%§() <= 0)
                  {
                     §8"^§.§!#C§();
                     §3#§(§8"^§.STATE_NAME);
                  }
                  else
                  {
                     §3#§(this.getLevelLoadState());
                  }
               }
               else
               {
                  §3#§(this.getLevelLoadState());
               }
               break;
            default:
               super.onUIInteraction(param1,param2,param3);
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         this.§,#P§.update();
      }
      
      override public function getNextIdentifier() : String
      {
         return §7!$§.§+!,§.§>";§(mLevelManager.currentLevel);
      }
      
      override protected function getTournamentId() : int
      {
         if(§7!$§.§+!,§.§@!v§)
         {
            return §7!$§.§+!,§.§@!v§.id;
         }
         return -1;
      }
   }
}
