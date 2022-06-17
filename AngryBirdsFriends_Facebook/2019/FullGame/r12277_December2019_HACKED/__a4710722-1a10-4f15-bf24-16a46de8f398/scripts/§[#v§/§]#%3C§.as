package §[#v§
{
   import § "v§.§4$4§;
   import § #_§.§?!>§;
   import §2$;§.§;!b§;
   import §4#$§.§5"L§;
   import §4#$§.§7Q§;
   import §<8§.§8!g§;
   import §>#Y§.§,#b§;
   import §?o§.§4#?§;
   import §?o§.§?"m§;
   import §^1§.§6g§;
   
   public class §]#<§ extends §6g§
   {
      
      public static const STATE_NAME:String = "stateTournamentLevelEndFail";
       
      
      private var §2]§:§7Q§;
      
      public function §]#<§(param1:§4#?§, param2:§?!>§, param3:Boolean = false, param4:String = "stateTournamentLevelEndFail")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§2]§ = new §7Q§(this,§;!b§(§@!D§.getItemByName("Button_NextLevel")),§5"L§.§3"1§,§,#b§(AngryBirdsBase.singleton.dataModel).§+!J§,§,#b§(AngryBirdsBase.singleton.dataModel).§%$;§);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         var _loc2_:String = §5"L§.§3"1§.§&"4§(mLevelManager.currentLevel);
         if(_loc2_)
         {
            this.§2]§.activate(_loc2_);
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§2]§.deactivate();
      }
      
      protected function §8#o§() : void
      {
      }
      
      override protected function getCutSceneState() : String
      {
         return §["!§.STATE_NAME;
      }
      
      override protected function getLevelLoadState() : String
      {
         return §'"b§.STATE_NAME;
      }
      
      override protected function getLevelSelectionState() : String
      {
         return §4e§.STATE_NAME;
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
            (mLevelManager as §?"m§).previousLevel = mLevelManager.currentLevel;
         }
      }
      
      override protected function showButtons() : void
      {
         var _loc1_:String = this.getNextIdentifier();
         if(!_loc1_)
         {
            (§@!D§.getItemByName("Button_NextLevel") as §;!b§).setVisibility(false);
            (§@!D§.getItemByName("Button_CutScene") as §;!b§).setVisibility(false);
            (§@!D§.getItemByName("Button_MightyEagle") as §;!b§).setVisibility(true);
         }
         else if(mLevelManager.isCutSceneNext())
         {
            (§@!D§.getItemByName("Button_NextLevel") as §;!b§).setVisibility(false);
            (§@!D§.getItemByName("Button_CutScene") as §;!b§).setVisibility(true);
         }
         else
         {
            (§@!D§.getItemByName("Button_NextLevel") as §;!b§).setVisibility(true);
            (§@!D§.getItemByName("Button_CutScene") as §;!b§).setVisibility(false);
            (§@!D§.getItemByName("Button_NextLevel") as §;!b§).mClip.unlocksIn.visible = !§5"L§.§3"1§.isLevelOpen(_loc1_);
         }
         (§@!D§.getItemByName("Button_CutScene") as §;!b§).setVisibility(false);
         _loc1_ = §5"L§.§3"1§.§!$A§(mLevelManager.currentLevel);
         if(_loc1_)
         {
            (§@!D§.getItemByName("Button_NextLevel") as §;!b§).setVisibility(true);
            (§@!D§.getItemByName("Button_Menu") as §;!b§).x = §+$'§[0];
            (§@!D§.getItemByName("Button_Replay") as §;!b§).x = §+$'§[1];
            (§@!D§.getItemByName("Button_NextLevel") as §;!b§).x = §+$'§[2];
         }
         else
         {
            (§@!D§.getItemByName("Button_NextLevel") as §;!b§).setVisibility(false);
            (§@!D§.getItemByName("Button_Menu") as §;!b§).x = §+$'§[0];
            (§@!D§.getItemByName("Button_Replay") as §;!b§).x = §+$'§[1];
            (§@!D§.getItemByName("Button_MightyEagle") as §;!b§).x = §+$'§[2];
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§8!g§) : void
      {
         var _loc4_:Boolean = false;
         switch(param2)
         {
            case "NEXT_LEVEL":
               _loc4_ = true;
               if(§5"L§.§3"1§.§2o§())
               {
                  if(§5"L§.§3"1§.§@!-§() <= 0)
                  {
                     §7"Z§.§,#M§();
                     §%!?§(§7"Z§.STATE_NAME);
                     _loc4_ = false;
                  }
               }
               if(_loc4_)
               {
                  if(mLevelManager.isCutSceneNext())
                  {
                     super.onUIInteraction(param1,param2,param3);
                  }
                  else if(this.§2]§.§1#q§)
                  {
                     super.onUIInteraction(param1,param2,param3);
                  }
                  else if(this.§2]§.§,#m§)
                  {
                     this.§2]§.§,5§();
                  }
               }
               break;
            case "REPLAY":
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               if(§5"L§.§3"1§.§2o§())
               {
                  if(§5"L§.§3"1§.§@!-§() <= 0)
                  {
                     §7"Z§.§,#M§();
                     §%!?§(§7"Z§.STATE_NAME);
                  }
                  else
                  {
                     §%!?§(this.getLevelLoadState());
                  }
               }
               else
               {
                  §%!?§(this.getLevelLoadState());
               }
               break;
            default:
               super.onUIInteraction(param1,param2,param3);
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         this.§2]§.update();
      }
      
      override public function getNextIdentifier() : String
      {
         return §5"L§.§3"1§.§!$A§(mLevelManager.currentLevel);
      }
      
      override protected function getTournamentId() : int
      {
         if(§5"L§.§3"1§.§54§)
         {
            return §5"L§.§3"1§.§54§.id;
         }
         return -1;
      }
   }
}
