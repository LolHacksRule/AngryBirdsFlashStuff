package §%"Q§
{
   import §!b§.§]!s§;
   import §"§.§%§;
   import §"§.§0F§;
   import §"§.§;!E§;
   import §"§.§<U§;
   import §"`§.§6"P§;
   import §&!j§.§5#+§;
   import §'"A§.§!§;
   import §'"A§.§3"x§;
   import §+"Y§.§4#%§;
   import §+d§.§`!<§;
   import §18§.§-!>§;
   import §3W§.§-n§;
   import §4"k§.§+"W§;
   import §8!h§.§-V§;
   import §9"U§.§'!;§;
   import §9"U§.§7"1§;
   import §9"U§.§[!b§;
   import §=Z§.§@!8§;
   import §?!2§.§+!F§;
   import §?"6§.§`!^§;
   import §[!H§.§4Z§;
   import §[!H§.§^x§;
   import §`"T§.§7?§;
   import §`"T§.TutorialPopup;
   import §`"T§.§[l§;
   import com.angrybirds.§<!J§;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import §null §.§1"o§;
   import §null §.§5#§;
   
   public class §-"B§ extends §+!<§
   {
      
      public static var §^"8§:Boolean = false;
       
      
      protected var §?#7§:Boolean;
      
      protected var §"D§:Boolean;
      
      protected var §@#6§:§6"P§;
      
      protected var §7#0§:String;
      
      protected var §>"$§:§?!"§;
      
      public function §-"B§(param1:§5#§, param2:§5#+§, param3:Boolean = true, param4:String = "StatePlay")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         §^!b§ = new §4Z§(this);
         §^!b§.init(§^x§.§ '§.Views.View_LevelPlay[0]);
         §^!b§.getItemByName("Button_ExtraBird").mClip.extraBird.stop();
      }
      
      override protected function addPauseView() : void
      {
         var _loc1_:§'!;§ = §4"#§.singleton.dataModel;
         var _loc2_:§@!8§ = §@!8§(§^!b§.getItemByName("Container_Pause"));
         §,8§ = new §-n§(_loc2_,§'""§,_loc1_,§-1§);
      }
      
      override protected function addPlayView() : void
      {
         var _loc1_:§'!;§ = §4"#§.singleton.dataModel;
         var _loc2_:§@!8§ = §@!8§(§^!b§.getItemByName("Container_Play"));
         §-S§ = new §+"W§(_loc2_,§'""§,§3!d§,_loc1_,§-1§);
      }
      
      override public function showTutorials() : void
      {
         §4"#§.singleton.tutorialPopupManager.openMultipleTutorialPopups(this.getTutorialsToShow());
      }
      
      protected function getTutorialsToShow() : Vector.<String>
      {
         var _loc4_:§!#2§ = null;
         var _loc1_:§[l§ = §4"#§.singleton.tutorialPopupManager;
         var _loc2_:Vector.<String> = _loc1_.§9"Y§.getTutorialNamesForMapping(§7?§.§%%§);
         var _loc3_:§[!b§ = §7"1§(§4"#§.singleton.dataModel).§@!K§;
         for each(_loc4_ in _loc3_.§<!h§.§2d§)
         {
            if(!(_loc4_.§,!8§ == §3"x§.§<!j§ && §'""§.getCurrentEpisodeModel().name == "2000"))
            {
               if(_loc3_.§6"0§(_loc4_.§1!b§) > 0)
               {
                  _loc2_.unshift(_loc4_.§1!b§);
               }
            }
         }
         return _loc2_;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§7#0§ = "";
         this.§"D§ = false;
         this.§?#7§ = false;
         this.§@#6§ = new §6"P§(this.§`o§);
         §^!b§.movieClip.mouseChildren = true;
         this.§=j§();
         §<!J§.§=!%§.slingshot.addEventListener(§%#7§.§@"8§,this.§0+§);
         this.showTutorials();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§>"$§)
         {
            this.§>"$§.§7"J§();
            this.§>"$§.§?@§();
         }
         this.§@#6§.dispose();
         this.§@#6§ = null;
         §<!J§.§=!%§.slingshot.removeEventListener(§%#7§.§@"8§,this.§0+§);
         §4"#§.singleton.popupManager.§6!u§(TutorialPopup.§-"§);
         §throw§(§4"#§.singleton).§?"T§.§ !b§();
      }
      
      private function §0+§(param1:Event) : void
      {
         this.§=j§();
      }
      
      private function §=j§() : void
      {
         §+"W§(§-S§).§7"3§(§<U§(§<!J§.§=!%§.slingshot).§0!"§.levelItem.itemName.split("_")[0]);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         this.showLevelScores();
         this.§>"$§ = new §?!"§(§'""§.currentLevelNumericName);
         §]!s§.§+#$§(§`!<§.§-x§,§'""§.currentLevelNumericName);
      }
      
      override protected function levelCompleted() : void
      {
         var _loc4_:Vector.<String> = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         super.levelCompleted();
         var _loc1_:String = §'""§.currentLevelNumericName;
         var _loc2_:int = §3!d§.getScore(10);
         §]!s§.§+#$§(§`!<§.§;5§,_loc1_,_loc2_);
         var _loc3_:§0F§ = §<!J§.§=!%§ as §0F§;
         if(_loc3_)
         {
            _loc4_ = _loc3_.§7"f§();
            _loc5_ = [];
            for each(_loc6_ in _loc4_)
            {
               _loc5_.push(_loc6_);
            }
            §]!s§.§ "V§(_loc5_,_loc1_,_loc2_);
         }
      }
      
      override protected function resumeEngine() : void
      {
         var _loc1_:Boolean = §4#%§(§4"#§.singleton.popupManager).§#"E§();
         if(!_loc1_)
         {
            §<!J§.resume();
         }
      }
      
      protected function showLevelScores() : void
      {
         §throw§(§4"#§.singleton).§?"T§.showLevelScores(§1"o§(§'""§).getEpisodeForLevel(§'""§.currentLevel).name,§'""§.currentLevel,false);
      }
      
      override protected function getGameLogicController(param1:§;!E§) : §`!^§
      {
         return new §+!F§(param1,§'""§);
      }
      
      override protected function isAllowedToChangeVictoryState() : Boolean
      {
         var _loc1_:Boolean = §-S§.isAllowedToChangeVictoryState();
         if(!this.§"D§ && _loc1_)
         {
            this.§"D§ = true;
            §^!b§.movieClip.mouseChildren = false;
            this.§@#6§.§<"f§(true);
         }
         return this.§?#7§;
      }
      
      override protected function isAllowedToChangeFailState() : Boolean
      {
         var _loc1_:Boolean = §-S§.isAllowedToChangeFailState();
         if(!this.§"D§ && _loc1_)
         {
            this.§"D§ = true;
            §^!b§.movieClip.mouseChildren = false;
            this.§@#6§.§<"f§(false);
         }
         return this.§?#7§;
      }
      
      protected function §`o§(param1:Boolean) : void
      {
         this.§?#7§ = param1;
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(§-S§ && §-S§.isEnabled())
         {
            if(this.§>"$§ && !§4"#§.singleton.popupManager.§#"E§())
            {
               this.§>"$§.§9!r§(param1);
            }
         }
         if(this.§7#0§ && this.§7#0§ != "" && §-S§.isAllowedToChangeStateRegardingPowerUpsSyncing())
         {
            §`0§(this.§7#0§);
            this.§7#0§ = "";
         }
      }
      
      override protected function viewEventHandler(param1:§-!>§) : void
      {
         var _loc2_:String = null;
         if(this.§"D§)
         {
            return;
         }
         switch(param1.type)
         {
            case §-!>§.§ "D§:
               break;
            case §-!>§.§@! §:
               § 4§(true);
               break;
            case §-!>§.RESUME_LEVEL:
               § 4§(false);
               break;
            case §-!>§.RESTART_LEVEL:
               this.restartLevel();
               break;
            case §-!>§.§5!w§:
               _loc2_ = param1.§[Q§;
               if(!§-S§.isAllowedToChangeStateRegardingPowerUpsSyncing())
               {
                  this.§7#0§ = _loc2_;
                  return;
               }
               §`0§(_loc2_);
               break;
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§-V§) : void
      {
         if(this.§"D§)
         {
            return;
         }
         super.onUIInteraction(param1,param2,param3);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         if(this.§"D§)
         {
            return;
         }
         super.keyUp(param1);
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         if(this.§"D§)
         {
            return;
         }
         super.keyDown(param1);
      }
      
      override protected function restartLevel() : void
      {
         var _loc1_:String = getLevelLoadStateName();
         if(!§-S§.isAllowedToChangeStateRegardingPowerUpsSyncing())
         {
            this.§7#0§ = _loc1_;
            return;
         }
         §`0§(_loc1_);
      }
   }
}
