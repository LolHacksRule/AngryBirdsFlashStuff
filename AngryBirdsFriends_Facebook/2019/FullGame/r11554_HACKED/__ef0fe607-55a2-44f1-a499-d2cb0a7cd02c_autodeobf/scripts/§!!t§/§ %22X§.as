package §!!t§
{
   import §"$=§.§'![§;
   import §"$=§.§,-§;
   import §+"u§.§># §;
   import §+"u§.§^"C§;
   import §3"G§.§16§;
   import §3=§.§!c§;
   import §4!n§.§'!,§;
   import §5!$§.§"S§;
   import §>"9§.§[#%§;
   import §]"'§.§@"%§;
   
   public class § "X§ extends §!c§
   {
      
      public static const STATE_NAME:String = "stateTournamentLevelEndFail";
       
      
      private var §@!I§:§># §;
      
      public function § "X§(param1:§'![§, param2:§16§, param3:Boolean = false, param4:String = "stateTournamentLevelEndFail")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§@!I§ = new §># §(this,§"S§(§<"`§.getItemByName("Button_NextLevel")),§^"C§.§?q§,§@"%§(AngryBirdsBase.singleton.dataModel).§,H§,§@"%§(AngryBirdsBase.singleton.dataModel).§8!8§);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         var _loc2_:String = §^"C§.§?q§.§`-§(mLevelManager.currentLevel);
         if(_loc2_)
         {
            this.§@!I§.activate(_loc2_);
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§@!I§.deactivate();
      }
      
      protected function §9#]§() : void
      {
      }
      
      override protected function getCutSceneState() : String
      {
         return §1!M§.STATE_NAME;
      }
      
      override protected function getLevelLoadState() : String
      {
         return §8!k§.STATE_NAME;
      }
      
      override protected function getLevelSelectionState() : String
      {
         return §'8§.STATE_NAME;
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
            (mLevelManager as §,-§).previousLevel = mLevelManager.currentLevel;
         }
      }
      
      override protected function showButtons() : void
      {
         var _loc1_:String = this.getNextIdentifier();
         if(!_loc1_)
         {
            (§<"`§.getItemByName("Button_NextLevel") as §"S§).setVisibility(false);
            (§<"`§.getItemByName("Button_CutScene") as §"S§).setVisibility(false);
            (§<"`§.getItemByName("Button_MightyEagle") as §"S§).setVisibility(true);
         }
         else if(mLevelManager.isCutSceneNext())
         {
            (§<"`§.getItemByName("Button_NextLevel") as §"S§).setVisibility(false);
            (§<"`§.getItemByName("Button_CutScene") as §"S§).setVisibility(true);
         }
         else
         {
            (§<"`§.getItemByName("Button_NextLevel") as §"S§).setVisibility(true);
            (§<"`§.getItemByName("Button_CutScene") as §"S§).setVisibility(false);
            (§<"`§.getItemByName("Button_NextLevel") as §"S§).mClip.unlocksIn.visible = !§^"C§.§?q§.isLevelOpen(_loc1_);
         }
         (§<"`§.getItemByName("Button_CutScene") as §"S§).setVisibility(false);
         _loc1_ = §^"C§.§?q§.§"!@§(mLevelManager.currentLevel);
         if(_loc1_)
         {
            (§<"`§.getItemByName("Button_NextLevel") as §"S§).setVisibility(true);
            (§<"`§.getItemByName("Button_Menu") as §"S§).x = §]#G§[0];
            (§<"`§.getItemByName("Button_Replay") as §"S§).x = §]#G§[1];
            (§<"`§.getItemByName("Button_NextLevel") as §"S§).x = §]#G§[2];
         }
         else
         {
            (§<"`§.getItemByName("Button_NextLevel") as §"S§).setVisibility(false);
            (§<"`§.getItemByName("Button_Menu") as §"S§).x = §]#G§[0];
            (§<"`§.getItemByName("Button_Replay") as §"S§).x = §]#G§[1];
            (§<"`§.getItemByName("Button_MightyEagle") as §"S§).x = §]#G§[2];
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!,§) : void
      {
         var _loc4_:Boolean = false;
         switch(param2)
         {
            case "NEXT_LEVEL":
               _loc4_ = true;
               if(§^"C§.§?q§.§&2§())
               {
                  if(§^"C§.§?q§.§&"C§() <= 0)
                  {
                     §9$A§.§`o§();
                     §%D§(§9$A§.STATE_NAME);
                     _loc4_ = false;
                  }
               }
               if(_loc4_)
               {
                  if(mLevelManager.isCutSceneNext())
                  {
                     super.onUIInteraction(param1,param2,param3);
                  }
                  else if(this.§@!I§.§^#u§)
                  {
                     super.onUIInteraction(param1,param2,param3);
                  }
                  else if(this.§@!I§.§^"3§)
                  {
                     this.§@!I§.§ "i§();
                  }
               }
               break;
            case "REPLAY":
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               if(§^"C§.§?q§.§&2§())
               {
                  if(§^"C§.§?q§.§&"C§() <= 0)
                  {
                     §9$A§.§`o§();
                     §%D§(§9$A§.STATE_NAME);
                  }
                  else
                  {
                     §%D§(this.getLevelLoadState());
                  }
               }
               else
               {
                  §%D§(this.getLevelLoadState());
               }
               break;
            default:
               super.onUIInteraction(param1,param2,param3);
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         this.§@!I§.update();
      }
      
      override public function getNextIdentifier() : String
      {
         return §^"C§.§?q§.§"!@§(mLevelManager.currentLevel);
      }
      
      override protected function getTournamentId() : int
      {
         if(§^"C§.§?q§.§4#-§)
         {
            return §^"C§.§?q§.§4#-§.id;
         }
         return -1;
      }
   }
}
