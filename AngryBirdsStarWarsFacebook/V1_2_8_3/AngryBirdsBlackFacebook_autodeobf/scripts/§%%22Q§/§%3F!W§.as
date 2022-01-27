package §%"Q§
{
   import §!b§.§]!s§;
   import §"#§.§+§;
   import §"#§.§>H§;
   import §%!U§.§="H§;
   import §&!j§.§5#+§;
   import §+"Y§.§4#%§;
   import §+"Y§.SyncPopup;
   import §+"Y§.TournamentUnlockedPopup;
   import §+"Y§.§^!S§;
   import §+"x§.§&!Y§;
   import §+"x§.§2!s§;
   import §+"x§.§3!§;
   import §5"Q§.§5"s§;
   import §8!h§.§%"z§;
   import §8!h§.§-V§;
   import §8"'§.§4!T§;
   import §9"U§.§7"1§;
   import §=Z§.§;g§;
   import §[!H§.§^x§;
   import §`"1§.§=Q§;
   import §`"n§.§""r§;
   import §`"n§.UserProgressEvent;
   import com.angrybirds.§<!J§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import §null §.§ #$§;
   import §null §.§5!K§;
   import §null §.§5#§;
   
   public class §?!W§ extends §<"B§
   {
      
      public static const §>"N§:int = 9;
      
      public static const §?7§:String = "2";
      
      private static var §[#!§:int = 0;
       
      
      protected var §="J§:String;
      
      protected var §?"Q§:§4#%§;
      
      protected var §-#+§:§>H§;
      
      protected var §0#6§:Boolean;
      
      protected var §3!I§:Boolean;
      
      protected var §"B§:Boolean;
      
      protected var §!J§:Boolean;
      
      protected var §0!3§:Boolean;
      
      protected var §0"R§:§;g§;
      
      protected var §6#&§:MovieClip;
      
      protected var §^"x§:Boolean = false;
      
      protected var §2"H§:§="H§;
      
      protected var §-O§:§+#6§;
      
      protected var §>"C§:§;g§;
      
      public function §?!W§(param1:§5#§, param2:§5#+§, param3:Boolean = false, param4:String = "LevelEndState")
      {
         super(param1,param2,param3,param4);
      }
      
      protected function get restartUsesEnergyCrystal() : Boolean
      {
         return false;
      }
      
      override protected function init() : void
      {
         super.init();
         this.§?"Q§ = §4#%§(§4"#§.singleton.popupManager);
         §^!b§.getItemByName("MovieClip_PowerupReward").mClip.powerup.stop();
         this.§"!B§();
         this.§0"R§ = §;g§(§^!b§.getItemByName("Button_Tournament"));
         this.§6#&§ = §^!b§.getItemByName("MovieClip_LevelsUntilTournament").mClip;
         this.§>"C§ = §;g§(§[#,§.getItemByName("Button_NextLevelLocked"));
         §<!k§.mClip.unlockTimer.visible = false;
         this.§>"C§.setVisibility(false);
         §<!k§.mClip.unlockTimer.mouseChildren = false;
         §<!k§.mClip.unlockTimer.mouseEnabled = false;
      }
      
      override protected function getViewXML() : XML
      {
         return §^x§.§ '§.Views.View_LevelEnd[0];
      }
      
      override public function activate(param1:String) : void
      {
         var _loc3_:§3!§ = null;
         this.§0#6§ = false;
         this.§!J§ = true;
         this.§0!3§ = false;
         super.activate(param1);
         §^!b§.getItemByName("Button_Share").setVisibility(false);
         this.§3!I§ = false;
         this.§"B§ = false;
         this.§-#+§ = new §>H§(§[#,§);
         if(§[#,§.getItemByName("MovieClip_PowerupReward"))
         {
            this.§-O§ = new §+#6§(§[#,§,§[#,§.getItemByName("MovieClip_PowerupReward").mClip);
            this.§-O§.addEventListener(§>H§.§"k§,this.onBadgeLanded);
         }
         §8"t§.addEventListener(§>H§.§"k§,this.onBadgeLanded);
         §^!b§.getItemByName("MovieClip_PowerupReward").setVisibility(false);
         this.setButtonAlignment();
         §5"s§.addCallback("crownShared",this.§@$§);
         ++§[#!§;
         var _loc2_:Boolean = §7"1§(§4"#§.singleton.dataModel).§1z§.§""j§;
         if(§[#!§ == 2 && this.§@"p§ && !_loc2_)
         {
            _loc3_ = new TournamentUnlockedPopup(§^!S§.§'"c§,§2!s§.DEFAULT,TournamentUnlockedPopup.§8r§);
            §4"#§.singleton.popupManager.openPopup(_loc3_,true,true,true);
         }
      }
      
      protected function §"!B§() : void
      {
         §^!b§.getItemByName("MovieClip_CoinLeft").mClip.gotoAndStop(1);
         §^!b§.getItemByName("MovieClip_CoinMiddle").mClip.gotoAndStop(1);
         §^!b§.getItemByName("MovieClip_CoinRight").mClip.gotoAndStop(1);
      }
      
      override public function deActivate() : void
      {
         §""r§(§4"#§.singleton.dataModel.userProgress).removeEventListener(UserProgressEvent.§"_§,this.§<"D§);
         §8"t§.removeEventListener(§>H§.§"k§,this.onBadgeLanded);
         if(this.§-O§)
         {
            this.§-O§.removeEventListener(§>H§.§"k§,this.onBadgeLanded);
            this.§-O§.dispose();
            this.§-O§ = null;
         }
         this.§-#+§.removeEventListener(§>H§.§"k§,this.§1"u§);
         this.§-#+§.removeEventListener(§>H§.§[#0§,this.§6D§);
         this.§-#+§.dispose();
         this.§-#+§ = null;
         this.§2"H§ = null;
         this.§^"x§ = false;
         this.§?"Q§.§8!v§();
         §5"s§.§@"-§("crownShared",this.§@$§);
         super.deActivate();
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         this.§-#+§.update(param1);
      }
      
      private function get §@"p§() : Boolean
      {
         return §3"§.isLevelPassed(§'""§.getEpisodeByName(§?7§).getLevelName(§>"N§ - 1));
      }
      
      override protected function setScoreData() : void
      {
         var _loc6_:String = null;
         var _loc1_:§5!K§ = §'""§.getEpisodeForLevel(§'""§.currentLevel);
         var _loc2_:Boolean = §3"§.isLevelPassed(§'""§.currentLevel);
         var _loc3_:int = _loc1_.getLevelIndex(§'""§.currentLevel);
         var _loc4_:int = _loc3_ + 1;
         if(_loc1_.name == "2" && _loc4_ == §>"N§ && !_loc2_ && !this.§@"p§)
         {
            this.§0#6§ = true;
            this.§!J§ = false;
         }
         else
         {
            this.§0#6§ = false;
         }
         var _loc5_:int = §>"N§ - 1 - _loc3_;
         if(!this.§0#6§ && _loc1_.name == "2" && _loc5_ > 0 && !_loc2_ && !this.§@"p§)
         {
            _loc6_ = (_loc6_ = (_loc6_ = §4"#§.singleton.§1!L§.getLocalizedString("levelend_unlock_tournament")).replace("[count]",_loc5_)).replace("[levels]",_loc5_ == 1 ? "level" : "levels");
            this.§6#&§.txtLabel.text = _loc6_;
            this.§6#&§.visible = true;
         }
         else
         {
            this.§6#&§.visible = false;
         }
         super.setScoreData();
         if(§#$§)
         {
            this.saveLevelProgress();
            §throw§(§4"#§.singleton).§?"T§.§"]§();
         }
         §throw§(§<!J§.§#!L§).§^!O§.§?a§ = false;
      }
      
      override protected function setButtonAlignment() : void
      {
         var _loc1_:Boolean = §<!k§.visible;
         var _loc2_:Boolean = §%N§.visible;
         var _loc3_:int = §2!z§;
         _loc3_ += !!_loc2_ ? §##&§ + §2!z§ : 0;
         _loc3_ += !!_loc1_ ? §##&§ + §2!z§ : 0;
         _loc3_ += !!this.§0!3§ ? §##&§ + §2!z§ : 0;
         var _loc4_:int = -_loc3_ / 2 + §7!E§;
         if(_loc2_)
         {
            §%N§.x = _loc4_;
            _loc4_ += §##&§ + §2!z§;
            §%N§.setEnabled(this.§!J§);
            §%N§.setComponentState(!!this.§!J§ ? §%"z§.COMPONENT_STATE_ACTIVE_DEFAULT : §%"z§.COMPONENT_STATE_DISABLED);
         }
         §!'§.x = _loc4_;
         _loc4_ += §##&§ + §2!z§;
         §"f§.setEnabled(this.§!J§);
         §"f§.setComponentState(!!this.§!J§ ? §%"z§.COMPONENT_STATE_ACTIVE_DEFAULT : §%"z§.COMPONENT_STATE_DISABLED);
         if(_loc1_)
         {
            §<!k§.x = _loc4_;
            _loc4_ += §##&§ + §2!z§;
            §1"K§.setEnabled(this.§!J§);
            §1"K§.setComponentState(!!this.§!J§ ? §%"z§.COMPONENT_STATE_ACTIVE_DEFAULT : §%"z§.COMPONENT_STATE_DISABLED);
            § ]§.setEnabled(this.§!J§);
            § ]§.setComponentState(!!this.§!J§ ? §%"z§.COMPONENT_STATE_ACTIVE_DEFAULT : §%"z§.COMPONENT_STATE_DISABLED);
            this.§>"C§.setEnabled(this.§!J§);
            this.§>"C§.setComponentState(!!this.§!J§ ? §%"z§.COMPONENT_STATE_ACTIVE_DEFAULT : §%"z§.COMPONENT_STATE_DISABLED);
         }
         if(this.§0!3§)
         {
            this.§0"R§.setVisibility(true);
            this.§0"R§.x = _loc4_;
            _loc4_ += §##&§ + §2!z§;
            this.§0"R§.setEnabled(this.§!J§);
            this.§0"R§.setComponentState(!!this.§!J§ ? §%"z§.COMPONENT_STATE_ACTIVE_DEFAULT : §%"z§.COMPONENT_STATE_DISABLED);
         }
         else
         {
            this.§0"R§.setVisibility(false);
         }
      }
      
      protected function saveLevelProgress() : void
      {
         §throw§(§4"#§.singleton).§9F§(§'""§.currentLevel,false);
         §""r§(§4"#§.singleton.dataModel.userProgress).addEventListener(UserProgressEvent.§"_§,this.§<"D§);
         §""r§(§4"#§.singleton.dataModel.userProgress).saveLevelProgress(§'""§.currentLevel,false,false);
      }
      
      protected function §<"D§(param1:UserProgressEvent) : void
      {
         this.§"B§ = true;
         §""r§(§4"#§.singleton.dataModel.userProgress).removeEventListener(UserProgressEvent.§"_§,this.§<"D§);
         this.§2"H§ = §="H§(param1.data);
         if(this.§2"H§ && this.§2"H§.§["O§ && this.§2"H§.§+!n§ > 0)
         {
            §]!s§.§,!T§(§]!s§.§'!@§,this.§2"H§.§["O§,this.§2"H§.§+!n§);
         }
         if(this.§^"x§)
         {
            this.§<!G§();
         }
         else if(this.§3!I§)
         {
            this.§2"7§();
         }
      }
      
      override protected function showScore() : void
      {
         super.showScore();
         if(!§#$§ && this.§0#6§)
         {
            if(this.§"B§)
            {
               this.§2"7§();
            }
            else
            {
               this.§3!I§ = true;
            }
         }
      }
      
      private function §2"7§() : void
      {
         this.§!J§ = false;
         this.§-#+§.addEventListener(§>H§.§"k§,this.§1"u§);
         this.§-#+§.addEventListener(§>H§.§[#0§,this.§6D§);
         this.§-#+§.show();
      }
      
      override protected function showHighScoreBadge() : void
      {
         if(this.§"B§)
         {
            this.§<!G§();
         }
         else
         {
            this.§^"x§ = true;
         }
         this.§5&§();
      }
      
      private function §5&§() : void
      {
         if(§#$§ && this.getRankForLevel() == 1)
         {
            §^!b§.getItemByName("Button_Share").setVisibility(true);
            §;!'§();
         }
      }
      
      protected function §<!G§() : void
      {
         if(this.§2"H§.§["O§ && this.§-O§)
         {
            §^!b§.getItemByName("MovieClip_PowerupReward").mClip.powerup.gotoAndStop(this.§2"H§.§["O§);
            §^!b§.getItemByName("MovieClip_PowerupReward").mClip.txtAmount.text = "x" + this.§2"H§.§+!n§;
            this.§-O§.visible = true;
            §=Q§.§`!A§("highscore");
            this.§-O§.show();
         }
         else
         {
            super.showHighScoreBadge();
         }
         this.§^"x§ = false;
      }
      
      protected function onBadgeLanded(param1:Event) : void
      {
         if(this.§0#6§)
         {
            if(this.§"B§)
            {
               this.§2"7§();
            }
            else
            {
               this.§3!I§ = true;
            }
         }
      }
      
      protected function §1"u§(param1:Event) : void
      {
         this.§-#+§.removeEventListener(§>H§.§"k§,this.§1"u§);
         this.§0!3§ = true;
         this.setButtonAlignment();
      }
      
      protected function §6D§(param1:Event) : void
      {
         this.§-#+§.removeEventListener(§>H§.§[#0§,this.§1"u§);
         this.§!J§ = true;
         this.setButtonAlignment();
      }
      
      override protected function loadNextLevel() : void
      {
         §`"y§();
         §`0§(getCutSceneState());
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§-V§) : void
      {
         if(!this.§!J§ || this.§5!h§(param2))
         {
            return;
         }
         switch(param2)
         {
            case "NEXT_LEVEL":
               §=Q§.§`!A§("misc_menubuttonproceed_1");
               this.loadNextLevel();
               break;
            case "REPLAY":
               §=Q§.§`!A§("misc_menubuttonproceed_1");
               §`0§(getStateLevelLoadState());
               break;
            case "TOURNAMENT":
               §=Q§.§`!A§("misc_menubuttonproceed_1");
               §`0§(this.§6?§());
               break;
            case "MENU":
               §=Q§.§!#,§();
               §=Q§.§`!A§("misc_menubuttonback_1");
               §`0§(getMenuButtonTargetState());
               break;
            case "SHARE_CROWN":
               §=Q§.§`!A§("misc_menubuttonproceed_1");
               this.shareCrown();
         }
      }
      
      protected function §5!h§(param1:String) : Boolean
      {
         var _loc6_:§3!§ = null;
         var _loc2_:Array = ["NEXT_LEVEL","REPLAY","MENU"];
         var _loc3_:§&!Y§ = §4"#§.singleton.popupManager;
         var _loc4_:§""r§ = §""r§(§4"#§.singleton.dataModel.userProgress);
         var _loc5_:* = _loc2_.indexOf(param1) != -1;
         if(_loc4_.§=#%§ && _loc5_)
         {
            if(!_loc3_.isPopupOpenById(SyncPopup.§-"§))
            {
               this.§="J§ = param1;
               _loc4_.addEventListener(UserProgressEvent.§"_§,this.§>4§);
               _loc6_ = new SyncPopup(§^!S§.ERROR,§2!s§.DEFAULT);
               §4"#§.singleton.popupManager.openPopup(_loc6_);
            }
            return true;
         }
         return false;
      }
      
      private function shareCrown() : void
      {
         §4"#§.singleton.§,]§();
         var _loc1_:int = this.getRankForLevel();
         §5"s§.§<!8§("shareCrown",§'""§.currentLevel,§ #$§(§'""§).getPrettyLevelString(§'""§.currentLevel),_loc1_,§<!J§.§]!D§.getScore(10));
      }
      
      protected function §6?§() : String
      {
         return §4!T§.§-!U§;
      }
      
      protected function §>4§(param1:UserProgressEvent) : void
      {
         var _loc2_:§""r§ = §""r§(§4"#§.singleton.dataModel.userProgress);
         _loc2_.removeEventListener(UserProgressEvent.§"_§,this.§>4§);
         var _loc3_:§&!Y§ = §4"#§.singleton.popupManager;
         _loc3_.§6!u§(SyncPopup.§-"§);
         §+##§(-1,this.§="J§,null);
         this.§="J§ = null;
      }
      
      protected function getRankForLevel() : int
      {
         return §""r§(§3"§).getRankForLevel(§'""§.currentLevel);
      }
      
      private function §@$§() : void
      {
         §^!b§.getItemByName("Button_Share").setVisibility(false);
      }
   }
}
