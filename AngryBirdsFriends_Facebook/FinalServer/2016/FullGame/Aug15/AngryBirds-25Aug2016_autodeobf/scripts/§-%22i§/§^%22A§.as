package §-"i§
{
   import §#v§.§#!?§;
   import §#v§.§6^§;
   import §%$!§.§+3§;
   import §'!U§.§0!?§;
   import §'U§.§]#[§;
   import §,!=§.§'=§;
   import §5"$§.§"!$§;
   import §5"$§.§]!m§;
   import §6"r§.§=O§;
   
   public class §^"A§ extends §'=§
   {
      
      public static const STATE_NAME:String = "stateTournamentLevelEndFail";
       
      
      private var §?#?§:§"!$§;
      
      public function §^"A§(param1:§#!?§, param2:§]#[§, param3:Boolean = false, param4:String = "stateTournamentLevelEndFail")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§?#?§ = new §"!$§(this,§=O§(§!$§.getItemByName("Button_NextLevel")),§]!m§.§3!]§,§+3§(AngryBirdsBase.singleton.dataModel).§ ,§,§+3§(AngryBirdsBase.singleton.dataModel).§<$&§);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         var _loc2_:String = §]!m§.§3!]§.§;x§(mLevelManager.currentLevel);
         if(_loc2_)
         {
            this.§?#?§.activate(_loc2_);
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§?#?§.deactivate();
      }
      
      protected function §;#W§() : void
      {
      }
      
      override protected function getCutSceneState() : String
      {
         return §5!o§.STATE_NAME;
      }
      
      override protected function getLevelLoadState() : String
      {
         return §;"§.STATE_NAME;
      }
      
      override protected function getLevelSelectionState() : String
      {
         return §%!'§.STATE_NAME;
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
            (mLevelManager as §6^§).previousLevel = mLevelManager.currentLevel;
         }
      }
      
      override protected function showButtons() : void
      {
         var _loc1_:String = this.getNextIdentifier();
         if(!_loc1_)
         {
            (§!$§.getItemByName("Button_NextLevel") as §=O§).setVisibility(false);
            (§!$§.getItemByName("Button_CutScene") as §=O§).setVisibility(false);
            (§!$§.getItemByName("Button_MightyEagle") as §=O§).setVisibility(true);
         }
         else if(mLevelManager.isCutSceneNext())
         {
            (§!$§.getItemByName("Button_NextLevel") as §=O§).setVisibility(false);
            (§!$§.getItemByName("Button_CutScene") as §=O§).setVisibility(true);
         }
         else
         {
            (§!$§.getItemByName("Button_NextLevel") as §=O§).setVisibility(true);
            (§!$§.getItemByName("Button_CutScene") as §=O§).setVisibility(false);
            (§!$§.getItemByName("Button_NextLevel") as §=O§).mClip.unlocksIn.visible = !§]!m§.§3!]§.isLevelOpen(_loc1_);
         }
         (§!$§.getItemByName("Button_CutScene") as §=O§).setVisibility(false);
         _loc1_ = §]!m§.§3!]§.§<"o§(mLevelManager.currentLevel);
         if(_loc1_)
         {
            (§!$§.getItemByName("Button_NextLevel") as §=O§).setVisibility(true);
            (§!$§.getItemByName("Button_Menu") as §=O§).x = §1#Q§[0];
            (§!$§.getItemByName("Button_Replay") as §=O§).x = §1#Q§[1];
            (§!$§.getItemByName("Button_NextLevel") as §=O§).x = §1#Q§[2];
         }
         else
         {
            (§!$§.getItemByName("Button_NextLevel") as §=O§).setVisibility(false);
            (§!$§.getItemByName("Button_Menu") as §=O§).x = §1#Q§[0];
            (§!$§.getItemByName("Button_Replay") as §=O§).x = §1#Q§[1];
            (§!$§.getItemByName("Button_MightyEagle") as §=O§).x = §1#Q§[2];
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§0!?§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               if(mLevelManager.isCutSceneNext())
               {
                  super.onUIInteraction(param1,param2,param3);
               }
               else if(this.§?#?§.§9"4§)
               {
                  super.onUIInteraction(param1,param2,param3);
               }
               else if(this.§?#?§.§ p§)
               {
                  this.§?#?§.§2S§();
               }
               break;
            default:
               super.onUIInteraction(param1,param2,param3);
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         this.§?#?§.update();
      }
      
      override public function getNextIdentifier() : String
      {
         return §]!m§.§3!]§.§<"o§(mLevelManager.currentLevel);
      }
   }
}
