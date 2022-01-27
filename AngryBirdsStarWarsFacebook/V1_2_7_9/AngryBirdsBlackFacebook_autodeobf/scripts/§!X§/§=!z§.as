package §!X§
{
   import § 0§.§@Y§;
   import §"!P§.§3G§;
   import §"!P§.UserProgressEvent;
   import §""d§.§2"8§;
   import §%!c§.§@!#§;
   import §'+§.§="B§;
   import §,"v§.§@§;
   import §,#+§.§ "0§;
   import §,#+§.§7!m§;
   import §,#+§.§;"y§;
   import §0R§.§0!8§;
   import §4##§.§7!B§;
   import §4##§.§7!Y§;
   import §4m§.§&N§;
   import §4m§.§5!R§;
   import §4m§.§^T§;
   import §8"h§.§ "e§;
   import §8"h§.§7"8§;
   import §8_§.§-"5§;
   import §<"s§.§0u§;
   import §<"s§.§@![§;
   import §<"s§.SyncPopup;
   import §<"s§.TournamentUnlockedPopup;
   import §^!`§.§%n§;
   import §`"8§.§-!w§;
   import com.angrybirds.§;!e§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §=!z§ extends §?![§
   {
      
      public static const §3!§:int = 9;
      
      public static const §"z§:String = "2";
      
      private static var §1!5§:int = 0;
       
      
      protected var §=§:String;
      
      protected var §"q§:§@![§;
      
      protected var §'"$§:§7"8§;
      
      protected var §#",§:Boolean;
      
      protected var §>!+§:Boolean;
      
      protected var §7#!§:Boolean;
      
      protected var §!"Z§:Boolean;
      
      protected var §["H§:Boolean;
      
      protected var §3i§:§2"8§;
      
      protected var §9I§:MovieClip;
      
      protected var §[!C§:Boolean = false;
      
      protected var §+2§:§-"5§;
      
      protected var §@N§:§ "e§;
      
      protected var §+"g§:§2"8§;
      
      public function §=!z§(param1:§7!m§, param2:§="B§, param3:Boolean = false, param4:String = "LevelEndState")
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
         this.§"q§ = §@![§(§;"@§.singleton.popupManager);
         §>I§.getItemByName("MovieClip_PowerupReward").mClip.powerup.stop();
         this.§8!$§();
         this.§3i§ = §2"8§(§>I§.getItemByName("Button_Tournament"));
         this.§9I§ = §>I§.getItemByName("MovieClip_LevelsUntilTournament").mClip;
         this.§+"g§ = §2"8§(§,r§.getItemByName("Button_NextLevelLocked"));
         §#"A§.mClip.unlockTimer.visible = false;
         this.§+"g§.setVisibility(false);
         §#"A§.mClip.unlockTimer.mouseChildren = false;
         §#"A§.mClip.unlockTimer.mouseEnabled = false;
      }
      
      override protected function getViewXML() : XML
      {
         return §%n§.§ set§.Views.View_LevelEnd[0];
      }
      
      override public function activate(param1:String) : void
      {
         var _loc3_:§5!R§ = null;
         this.§#",§ = false;
         this.§!"Z§ = true;
         this.§["H§ = false;
         super.activate(param1);
         §>I§.getItemByName("Button_Share").setVisibility(false);
         this.§>!+§ = false;
         this.§7#!§ = false;
         this.§'"$§ = new §7"8§(§,r§);
         if(§,r§.getItemByName("MovieClip_PowerupReward"))
         {
            this.§@N§ = new § "e§(§,r§,§,r§.getItemByName("MovieClip_PowerupReward").mClip);
            this.§@N§.addEventListener(§7"8§.§3"L§,this.onBadgeLanded);
         }
         §-"g§.addEventListener(§7"8§.§3"L§,this.onBadgeLanded);
         §>I§.getItemByName("MovieClip_PowerupReward").setVisibility(false);
         this.setButtonAlignment();
         §@Y§.addCallback("crownShared",this.§9!1§);
         ++§1!5§;
         var _loc2_:Boolean = §-!w§(§;"@§.singleton.dataModel).§2!J§.§5!l§;
         if(§1!5§ == 2 && this.§70§ && !_loc2_)
         {
            _loc3_ = new TournamentUnlockedPopup(§0u§.§1"J§,§^T§.DEFAULT,TournamentUnlockedPopup.§,F§);
            §;"@§.singleton.popupManager.openPopup(_loc3_,true,true,true);
         }
      }
      
      protected function §8!$§() : void
      {
         §>I§.getItemByName("MovieClip_CoinLeft").mClip.gotoAndStop(1);
         §>I§.getItemByName("MovieClip_CoinMiddle").mClip.gotoAndStop(1);
         §>I§.getItemByName("MovieClip_CoinRight").mClip.gotoAndStop(1);
      }
      
      override public function deActivate() : void
      {
         §3G§(§;"@§.singleton.dataModel.userProgress).removeEventListener(UserProgressEvent.§!#,§,this.§!`§);
         §-"g§.removeEventListener(§7"8§.§3"L§,this.onBadgeLanded);
         if(this.§@N§)
         {
            this.§@N§.removeEventListener(§7"8§.§3"L§,this.onBadgeLanded);
            this.§@N§.dispose();
            this.§@N§ = null;
         }
         this.§'"$§.removeEventListener(§7"8§.§3"L§,this.§]!5§);
         this.§'"$§.removeEventListener(§7"8§.§ "W§,this.§return§);
         this.§'"$§.dispose();
         this.§'"$§ = null;
         this.§+2§ = null;
         this.§[!C§ = false;
         this.§"q§.§'!8§();
         §@Y§.§0"<§("crownShared",this.§9!1§);
         super.deActivate();
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         this.§'"$§.update(param1);
      }
      
      private function get §70§() : Boolean
      {
         return §+"v§.isLevelPassed(§ !p§.getEpisodeByName(§"z§).getLevelName(§3!§ - 1));
      }
      
      override protected function setScoreData() : void
      {
         var _loc6_:String = null;
         var _loc1_:§ "0§ = § !p§.getEpisodeForLevel(§ !p§.currentLevel);
         var _loc2_:Boolean = §+"v§.isLevelPassed(§ !p§.currentLevel);
         var _loc3_:int = _loc1_.getLevelIndex(§ !p§.currentLevel);
         var _loc4_:int = _loc3_ + 1;
         if(_loc1_.name == "2" && _loc4_ == §3!§ && !_loc2_ && !this.§70§)
         {
            this.§#",§ = true;
            this.§!"Z§ = false;
         }
         else
         {
            this.§#",§ = false;
         }
         var _loc5_:int = §3!§ - 1 - _loc3_;
         if(!this.§#",§ && _loc1_.name == "2" && _loc5_ > 0 && !_loc2_ && !this.§70§)
         {
            _loc6_ = (_loc6_ = (_loc6_ = §;"@§.singleton.§!# §.getLocalizedString("levelend_unlock_tournament")).replace("[count]",_loc5_)).replace("[levels]",_loc5_ == 1 ? "level" : "levels");
            this.§9I§.txtLabel.text = _loc6_;
            this.§9I§.visible = true;
         }
         else
         {
            this.§9I§.visible = false;
         }
         super.setScoreData();
         if(§4!U§)
         {
            this.saveLevelProgress();
            §&"1§(§;"@§.singleton).§`!u§.§3"a§();
         }
         §&"1§(§;!e§.§6!v§).§#"t§.§`§ = false;
      }
      
      override protected function setButtonAlignment() : void
      {
         var _loc1_:Boolean = §#"A§.visible;
         var _loc2_:Boolean = §"V§.visible;
         var _loc3_:int = §%"X§;
         _loc3_ += !!_loc2_ ? §!!o§ + §%"X§ : 0;
         _loc3_ += !!_loc1_ ? §!!o§ + §%"X§ : 0;
         _loc3_ += !!this.§["H§ ? §!!o§ + §%"X§ : 0;
         var _loc4_:int = -_loc3_ / 2 + §["8§;
         if(_loc2_)
         {
            §"V§.x = _loc4_;
            _loc4_ += §!!o§ + §%"X§;
            §"V§.setEnabled(this.§!"Z§);
            §"V§.setComponentState(!!this.§!"Z§ ? §7!Y§.COMPONENT_STATE_ACTIVE_DEFAULT : §7!Y§.COMPONENT_STATE_DISABLED);
         }
         §;"i§.x = _loc4_;
         _loc4_ += §!!o§ + §%"X§;
         §7"0§.setEnabled(this.§!"Z§);
         §7"0§.setComponentState(!!this.§!"Z§ ? §7!Y§.COMPONENT_STATE_ACTIVE_DEFAULT : §7!Y§.COMPONENT_STATE_DISABLED);
         if(_loc1_)
         {
            §#"A§.x = _loc4_;
            _loc4_ += §!!o§ + §%"X§;
            §[u§.setEnabled(this.§!"Z§);
            §[u§.setComponentState(!!this.§!"Z§ ? §7!Y§.COMPONENT_STATE_ACTIVE_DEFAULT : §7!Y§.COMPONENT_STATE_DISABLED);
            §[#4§.setEnabled(this.§!"Z§);
            §[#4§.setComponentState(!!this.§!"Z§ ? §7!Y§.COMPONENT_STATE_ACTIVE_DEFAULT : §7!Y§.COMPONENT_STATE_DISABLED);
            this.§+"g§.setEnabled(this.§!"Z§);
            this.§+"g§.setComponentState(!!this.§!"Z§ ? §7!Y§.COMPONENT_STATE_ACTIVE_DEFAULT : §7!Y§.COMPONENT_STATE_DISABLED);
         }
         if(this.§["H§)
         {
            this.§3i§.setVisibility(true);
            this.§3i§.x = _loc4_;
            _loc4_ += §!!o§ + §%"X§;
            this.§3i§.setEnabled(this.§!"Z§);
            this.§3i§.setComponentState(!!this.§!"Z§ ? §7!Y§.COMPONENT_STATE_ACTIVE_DEFAULT : §7!Y§.COMPONENT_STATE_DISABLED);
         }
         else
         {
            this.§3i§.setVisibility(false);
         }
      }
      
      protected function saveLevelProgress() : void
      {
         §&"1§(§;"@§.singleton).§8"X§(§ !p§.currentLevel,false);
         §3G§(§;"@§.singleton.dataModel.userProgress).addEventListener(UserProgressEvent.§!#,§,this.§!`§);
         §3G§(§;"@§.singleton.dataModel.userProgress).saveLevelProgress(§ !p§.currentLevel,false,false);
      }
      
      protected function §!`§(param1:UserProgressEvent) : void
      {
         this.§7#!§ = true;
         §3G§(§;"@§.singleton.dataModel.userProgress).removeEventListener(UserProgressEvent.§!#,§,this.§!`§);
         this.§+2§ = §-"5§(param1.data);
         if(this.§+2§ && this.§+2§.§+!l§ && this.§+2§.§""f§ > 0)
         {
            §0!8§.§,">§(§0!8§.§'"M§,this.§+2§.§+!l§,this.§+2§.§""f§);
         }
         if(this.§[!C§)
         {
            this.§]"^§();
         }
         else if(this.§>!+§)
         {
            this.§-!G§();
         }
      }
      
      override protected function showScore() : void
      {
         super.showScore();
         if(!§4!U§ && this.§#",§)
         {
            if(this.§7#!§)
            {
               this.§-!G§();
            }
            else
            {
               this.§>!+§ = true;
            }
         }
      }
      
      private function §-!G§() : void
      {
         this.§!"Z§ = false;
         this.§'"$§.addEventListener(§7"8§.§3"L§,this.§]!5§);
         this.§'"$§.addEventListener(§7"8§.§ "W§,this.§return§);
         this.§'"$§.show();
      }
      
      override protected function showHighScoreBadge() : void
      {
         if(this.§7#!§)
         {
            this.§]"^§();
         }
         else
         {
            this.§[!C§ = true;
         }
         this.§1!j§();
      }
      
      private function §1!j§() : void
      {
         if(§4!U§ && this.getRankForLevel() == 1)
         {
            §>I§.getItemByName("Button_Share").setVisibility(true);
            §7b§();
         }
      }
      
      protected function §]"^§() : void
      {
         if(this.§+2§.§+!l§ && this.§@N§)
         {
            §>I§.getItemByName("MovieClip_PowerupReward").mClip.powerup.gotoAndStop(this.§+2§.§+!l§);
            §>I§.getItemByName("MovieClip_PowerupReward").mClip.txtAmount.text = "x" + this.§+2§.§""f§;
            this.§@N§.visible = true;
            §@§.§=Y§("highscore");
            this.§@N§.show();
         }
         else
         {
            super.showHighScoreBadge();
         }
         this.§[!C§ = false;
      }
      
      protected function onBadgeLanded(param1:Event) : void
      {
         if(this.§#",§)
         {
            if(this.§7#!§)
            {
               this.§-!G§();
            }
            else
            {
               this.§>!+§ = true;
            }
         }
      }
      
      protected function §]!5§(param1:Event) : void
      {
         this.§'"$§.removeEventListener(§7"8§.§3"L§,this.§]!5§);
         this.§["H§ = true;
         this.setButtonAlignment();
      }
      
      protected function §return§(param1:Event) : void
      {
         this.§'"$§.removeEventListener(§7"8§.§ "W§,this.§]!5§);
         this.§!"Z§ = true;
         this.setButtonAlignment();
      }
      
      override protected function loadNextLevel() : void
      {
         § !Y§();
         §0"B§(getCutSceneState());
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§7!B§) : void
      {
         if(!this.§!"Z§ || this.§7<§(param2))
         {
            return;
         }
         switch(param2)
         {
            case "NEXT_LEVEL":
               §@§.§=Y§("misc_menubuttonproceed_1");
               this.loadNextLevel();
               break;
            case "REPLAY":
               §@§.§=Y§("misc_menubuttonproceed_1");
               §0"B§(getStateLevelLoadState());
               break;
            case "TOURNAMENT":
               §@§.§=Y§("misc_menubuttonproceed_1");
               §0"B§(this.§[L§());
               break;
            case "MENU":
               §@§.§+A§();
               §@§.§=Y§("misc_menubuttonback_1");
               §0"B§(getMenuButtonTargetState());
               break;
            case "SHARE_CROWN":
               §@§.§=Y§("misc_menubuttonproceed_1");
               this.shareCrown();
         }
      }
      
      protected function §7<§(param1:String) : Boolean
      {
         var _loc6_:§5!R§ = null;
         var _loc2_:Array = ["NEXT_LEVEL","REPLAY","MENU"];
         var _loc3_:§&N§ = §;"@§.singleton.popupManager;
         var _loc4_:§3G§ = §3G§(§;"@§.singleton.dataModel.userProgress);
         var _loc5_:* = _loc2_.indexOf(param1) != -1;
         if(_loc4_.§,"X§ && _loc5_)
         {
            if(!_loc3_.isPopupOpenById(SyncPopup.§^"3§))
            {
               this.§=§ = param1;
               _loc4_.addEventListener(UserProgressEvent.§!#,§,this.§4I§);
               _loc6_ = new SyncPopup(§0u§.ERROR,§^T§.DEFAULT);
               §;"@§.singleton.popupManager.openPopup(_loc6_);
            }
            return true;
         }
         return false;
      }
      
      private function shareCrown() : void
      {
         §;"@§.singleton.§@_§();
         var _loc1_:int = this.getRankForLevel();
         §@Y§.§7"H§("shareCrown",§ !p§.currentLevel,§;"y§(§ !p§).getPrettyLevelString(§ !p§.currentLevel),_loc1_,§;!e§.§%e§.getScore(10));
      }
      
      protected function §[L§() : String
      {
         return §@!#§.§'#2§;
      }
      
      protected function §4I§(param1:UserProgressEvent) : void
      {
         var _loc2_:§3G§ = §3G§(§;"@§.singleton.dataModel.userProgress);
         _loc2_.removeEventListener(UserProgressEvent.§!#,§,this.§4I§);
         var _loc3_:§&N§ = §;"@§.singleton.popupManager;
         _loc3_.§7M§(SyncPopup.§^"3§);
         §6t§(-1,this.§=§,null);
         this.§=§ = null;
      }
      
      protected function getRankForLevel() : int
      {
         return §3G§(§+"v§).getRankForLevel(§ !p§.currentLevel);
      }
      
      private function §9!1§() : void
      {
         §>I§.getItemByName("Button_Share").setVisibility(false);
      }
   }
}
