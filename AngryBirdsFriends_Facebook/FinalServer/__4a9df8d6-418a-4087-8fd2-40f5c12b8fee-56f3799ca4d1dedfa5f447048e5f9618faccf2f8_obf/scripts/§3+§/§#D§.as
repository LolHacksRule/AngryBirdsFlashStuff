package §3+§
{
   import § !j§.§4#c§;
   import §!#C§.§4!Q§;
   import §#,§.§ !>§;
   import §,!Q§.§6"n§;
   import §,"v§.§;"n§;
   import §,"v§.§;#A§;
   import §2";§.§="b§;
   import §8#K§.§3Z§;
   import §<!r§.§'##§;
   import §<!r§.§]#Q§;
   
   public class §#D§ extends §="b§
   {
      
      public static const STATE_NAME:String = "stateTournamentLevelEndFail";
       
      
      private var §[#m§:§]#Q§;
      
      public function §#D§(param1:§;"n§, param2:§4#c§, param3:Boolean = false, param4:String = "stateTournamentLevelEndFail")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§[#m§ = new §]#Q§(this,§ !>§(§[$5§.getItemByName("Button_NextLevel")),§'##§.§`"H§,§4!Q§(AngryBirdsBase.singleton.dataModel).§="N§,§4!Q§(AngryBirdsBase.singleton.dataModel).§1W§);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         var _loc2_:String = §'##§.§`"H§.§8!i§(mLevelManager.currentLevel);
         if(_loc2_)
         {
            this.§[#m§.activate(_loc2_);
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§[#m§.deactivate();
      }
      
      protected function §&"T§() : void
      {
      }
      
      override protected function getCutSceneState() : String
      {
         return §7#t§.STATE_NAME;
      }
      
      override protected function getLevelLoadState() : String
      {
         return §+">§.STATE_NAME;
      }
      
      override protected function getLevelSelectionState() : String
      {
         return §;!H§.STATE_NAME;
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
            (mLevelManager as §;#A§).previousLevel = mLevelManager.currentLevel;
         }
      }
      
      override protected function showButtons() : void
      {
         var _loc1_:String = this.getNextIdentifier();
         if(!_loc1_)
         {
            (§[$5§.getItemByName("Button_NextLevel") as § !>§).setVisibility(false);
            (§[$5§.getItemByName("Button_CutScene") as § !>§).setVisibility(false);
            (§[$5§.getItemByName("Button_MightyEagle") as § !>§).setVisibility(true);
         }
         else if(mLevelManager.isCutSceneNext())
         {
            (§[$5§.getItemByName("Button_NextLevel") as § !>§).setVisibility(false);
            (§[$5§.getItemByName("Button_CutScene") as § !>§).setVisibility(true);
         }
         else
         {
            (§[$5§.getItemByName("Button_NextLevel") as § !>§).setVisibility(true);
            (§[$5§.getItemByName("Button_CutScene") as § !>§).setVisibility(false);
            (§[$5§.getItemByName("Button_NextLevel") as § !>§).mClip.unlocksIn.visible = !§'##§.§`"H§.isLevelOpen(_loc1_);
         }
         (§[$5§.getItemByName("Button_CutScene") as § !>§).setVisibility(false);
         _loc1_ = §'##§.§`"H§.§>Q§(mLevelManager.currentLevel);
         if(_loc1_)
         {
            (§[$5§.getItemByName("Button_NextLevel") as § !>§).setVisibility(true);
            (§[$5§.getItemByName("Button_Menu") as § !>§).x = §,d§[0];
            (§[$5§.getItemByName("Button_Replay") as § !>§).x = §,d§[1];
            (§[$5§.getItemByName("Button_NextLevel") as § !>§).x = §,d§[2];
         }
         else
         {
            (§[$5§.getItemByName("Button_NextLevel") as § !>§).setVisibility(false);
            (§[$5§.getItemByName("Button_Menu") as § !>§).x = §,d§[0];
            (§[$5§.getItemByName("Button_Replay") as § !>§).x = §,d§[1];
            (§[$5§.getItemByName("Button_MightyEagle") as § !>§).x = §,d§[2];
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6"n§) : void
      {
         var _loc4_:Boolean = false;
         switch(param2)
         {
            case "NEXT_LEVEL":
               _loc4_ = true;
               if(§'##§.§`"H§.§;!q§())
               {
                  if(§'##§.§`"H§.§'"^§() <= 0)
                  {
                     §0!S§.§>!Q§();
                     §1!L§(§0!S§.STATE_NAME);
                     _loc4_ = false;
                  }
               }
               if(_loc4_)
               {
                  if(mLevelManager.isCutSceneNext())
                  {
                     super.onUIInteraction(param1,param2,param3);
                  }
                  else if(this.§[#m§.§;#W§)
                  {
                     super.onUIInteraction(param1,param2,param3);
                  }
                  else if(this.§[#m§.§-#j§)
                  {
                     this.§[#m§.§;!K§();
                  }
               }
               break;
            case "REPLAY":
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               if(§'##§.§`"H§.§;!q§())
               {
                  if(§'##§.§`"H§.§'"^§() <= 0)
                  {
                     §0!S§.§>!Q§();
                     §1!L§(§0!S§.STATE_NAME);
                  }
                  else
                  {
                     §1!L§(this.getLevelLoadState());
                  }
               }
               else
               {
                  §1!L§(this.getLevelLoadState());
               }
               break;
            default:
               super.onUIInteraction(param1,param2,param3);
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         this.§[#m§.update();
      }
      
      override public function getNextIdentifier() : String
      {
         return §'##§.§`"H§.§>Q§(mLevelManager.currentLevel);
      }
      
      override protected function getTournamentId() : int
      {
         if(§'##§.§`"H§.§;#Q§)
         {
            return §'##§.§`"H§.§;#Q§.id;
         }
         return -1;
      }
   }
}
