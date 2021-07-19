package §<"c§
{
   import § "4§.§7q§;
   import § "4§.UserProgressEvent;
   import §!"e§.§9#B§;
   import §!"e§.SyncPopup;
   import §!"e§.TournamentUnlockedPopup;
   import §!"e§.§`"W§;
   import §#!'§.§6"]§;
   import §+D§.§^"m§;
   import §,"N§.§@#B§;
   import §7!$§.§&$§;
   import §7#W§.§6!W§;
   import §9p§.§#"T§;
   import §;"Y§.§&#X§;
   import §;"Y§.§1"z§;
   import §="2§.§?!r§;
   import §="V§.§""v§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   import §?m§.§,"X§;
   import §?m§.§3![§;
   import §[!m§.§+5§;
   import §[!m§.§;a§;
   import §[!m§.§[!j§;
   import §^!v§.§ ?§;
   import §^!v§.§@"A§;
   import com.angrybirds.§,!q§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §?!W§ extends §""o§
   {
      
      public static const §0#G§:int = 9;
      
      public static const §=q§:String = "2";
      
      private static var §'"q§:int = 0;
       
      
      protected var §5#?§:String;
      
      protected var §5M§:§9#B§;
      
      protected var §"!c§:§ ?§;
      
      protected var §4!&§:Boolean;
      
      protected var §'#[§:Boolean;
      
      protected var §=3§:Boolean;
      
      protected var §2"'§:Boolean;
      
      protected var §0"S§:Boolean;
      
      protected var §2!w§:§^"m§;
      
      protected var §6U§:MovieClip;
      
      protected var §-"X§:Boolean = false;
      
      protected var §`"Z§:§#"T§;
      
      protected var §5!r§:§@"A§;
      
      protected var §]"b§:§^"m§;
      
      public function §?!W§(param1:§+"2§, param2:§5"H§, param3:Boolean = false, param4:String = "LevelEndState")
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
         this.§5M§ = §9#B§(§4#;§.singleton.popupManager);
         §@;§.getItemByName("MovieClip_PowerupReward").mClip.powerup.stop();
         this.§ A§();
         this.§2!w§ = §^"m§(§@;§.getItemByName("Button_Tournament"));
         this.§6U§ = §@;§.getItemByName("MovieClip_LevelsUntilTournament").mClip;
         this.§]"b§ = §^"m§(§^c§.getItemByName("Button_NextLevelLocked"));
         §9!#§.mClip.unlockTimer.visible = false;
         this.§]"b§.setVisibility(false);
         §9!#§.mClip.unlockTimer.mouseChildren = false;
         §9!#§.mClip.unlockTimer.mouseEnabled = false;
      }
      
      override protected function getViewXML() : XML
      {
         return §&$§.§@8§.Views.View_LevelEnd[0];
      }
      
      override public function activate(param1:String) : void
      {
         var _loc3_:§[!j§ = null;
         this.§4!&§ = false;
         this.§2"'§ = true;
         this.§0"S§ = false;
         super.activate(param1);
         §@;§.getItemByName("Button_Share").setVisibility(false);
         this.§'#[§ = false;
         this.§=3§ = false;
         this.§"!c§ = new § ?§(§^c§);
         if(§^c§.getItemByName("MovieClip_PowerupReward"))
         {
            this.§5!r§ = new §@"A§(§^c§,§^c§.getItemByName("MovieClip_PowerupReward").mClip);
            this.§5!r§.addEventListener(§ ?§.§[!9§,this.onBadgeLanded);
         }
         §[N§.addEventListener(§ ?§.§[!9§,this.onBadgeLanded);
         §@;§.getItemByName("MovieClip_PowerupReward").setVisibility(false);
         this.setButtonAlignment();
         §""v§.addCallback("crownShared",this.§0!<§);
         ++§'"q§;
         var _loc2_:Boolean = §@#B§(§4#;§.singleton.dataModel).§!!C§.§;!C§;
         if(§'"q§ == 2 && this.§#F§ && !_loc2_)
         {
            _loc3_ = new TournamentUnlockedPopup(§`"W§.§+v§,§+5§.DEFAULT,TournamentUnlockedPopup.§ !e§);
            §4#;§.singleton.popupManager.openPopup(_loc3_,true,true,true);
         }
      }
      
      protected function § A§() : void
      {
         §@;§.getItemByName("MovieClip_CoinLeft").mClip.gotoAndStop(1);
         §@;§.getItemByName("MovieClip_CoinMiddle").mClip.gotoAndStop(1);
         §@;§.getItemByName("MovieClip_CoinRight").mClip.gotoAndStop(1);
      }
      
      override public function deActivate() : void
      {
         §7q§(§4#;§.singleton.dataModel.userProgress).removeEventListener(UserProgressEvent.§3#V§,this.§6d§);
         §[N§.removeEventListener(§ ?§.§[!9§,this.onBadgeLanded);
         if(this.§5!r§)
         {
            this.§5!r§.removeEventListener(§ ?§.§[!9§,this.onBadgeLanded);
            this.§5!r§.dispose();
            this.§5!r§ = null;
         }
         this.§"!c§.removeEventListener(§ ?§.§[!9§,this.§&!u§);
         this.§"!c§.removeEventListener(§ ?§.§="<§,this.§6!s§);
         this.§"!c§.dispose();
         this.§"!c§ = null;
         this.§`"Z§ = null;
         this.§-"X§ = false;
         this.§5M§.§="M§();
         §""v§.§&z§("crownShared",this.§0!<§);
         super.deActivate();
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         this.§"!c§.update(param1);
      }
      
      private function get §#F§() : Boolean
      {
         return §">§.isLevelPassed(§+!b§.getEpisodeByName(§=q§).getLevelName(§0#G§ - 1));
      }
      
      override protected function setScoreData() : void
      {
         var _loc6_:String = null;
         var _loc1_:§3![§ = §+!b§.getEpisodeForLevel(§+!b§.currentLevel);
         var _loc2_:Boolean = §">§.isLevelPassed(§+!b§.currentLevel);
         var _loc3_:int = _loc1_.getLevelIndex(§+!b§.currentLevel);
         var _loc4_:int = _loc3_ + 1;
         if(_loc1_.name == "2" && _loc4_ == §0#G§ && !_loc2_ && !this.§#F§)
         {
            this.§4!&§ = true;
            this.§2"'§ = false;
         }
         else
         {
            this.§4!&§ = false;
         }
         var _loc5_:int = §0#G§ - 1 - _loc3_;
         if(!this.§4!&§ && _loc1_.name == "2" && _loc5_ > 0 && !_loc2_ && !this.§#F§)
         {
            _loc6_ = (_loc6_ = (_loc6_ = §4#;§.singleton.§4#,§.getLocalizedString("levelend_unlock_tournament")).replace("[count]",_loc5_)).replace("[levels]",_loc5_ == 1 ? "level" : "levels");
            this.§6U§.txtLabel.text = _loc6_;
            this.§6U§.visible = true;
         }
         else
         {
            this.§6U§.visible = false;
         }
         super.setScoreData();
         if(§<!L§)
         {
            this.saveLevelProgress();
            §@!m§(§4#;§.singleton).§""s§.§!d§();
         }
         §@!m§(§,!q§.§>#D§).§ "g§.§""O§ = false;
      }
      
      override protected function setButtonAlignment() : void
      {
         var _loc1_:Boolean = §9!#§.visible;
         var _loc2_:Boolean = §^W§.visible;
         var _loc3_:int = §,#9§;
         _loc3_ += !!_loc2_ ? §5"n§ + §,#9§ : 0;
         _loc3_ += !!_loc1_ ? §5"n§ + §,#9§ : 0;
         _loc3_ += !!this.§0"S§ ? §5"n§ + §,#9§ : 0;
         var _loc4_:int = -_loc3_ / 2 + §<!K§;
         if(_loc2_)
         {
            §^W§.x = _loc4_;
            _loc4_ += §5"n§ + §,#9§;
            §^W§.setEnabled(this.§2"'§);
            §^W§.setComponentState(!!this.§2"'§ ? §1"z§.COMPONENT_STATE_ACTIVE_DEFAULT : §1"z§.COMPONENT_STATE_DISABLED);
         }
         §5"t§.x = _loc4_;
         _loc4_ += §5"n§ + §,#9§;
         §^"^§.setEnabled(this.§2"'§);
         §^"^§.setComponentState(!!this.§2"'§ ? §1"z§.COMPONENT_STATE_ACTIVE_DEFAULT : §1"z§.COMPONENT_STATE_DISABLED);
         if(_loc1_)
         {
            §9!#§.x = _loc4_;
            _loc4_ += §5"n§ + §,#9§;
            §]6§.setEnabled(this.§2"'§);
            §]6§.setComponentState(!!this.§2"'§ ? §1"z§.COMPONENT_STATE_ACTIVE_DEFAULT : §1"z§.COMPONENT_STATE_DISABLED);
            §,>§.setEnabled(this.§2"'§);
            §,>§.setComponentState(!!this.§2"'§ ? §1"z§.COMPONENT_STATE_ACTIVE_DEFAULT : §1"z§.COMPONENT_STATE_DISABLED);
            this.§]"b§.setEnabled(this.§2"'§);
            this.§]"b§.setComponentState(!!this.§2"'§ ? §1"z§.COMPONENT_STATE_ACTIVE_DEFAULT : §1"z§.COMPONENT_STATE_DISABLED);
         }
         if(this.§0"S§)
         {
            this.§2!w§.setVisibility(true);
            this.§2!w§.x = _loc4_;
            _loc4_ += §5"n§ + §,#9§;
            this.§2!w§.setEnabled(this.§2"'§);
            this.§2!w§.setComponentState(!!this.§2"'§ ? §1"z§.COMPONENT_STATE_ACTIVE_DEFAULT : §1"z§.COMPONENT_STATE_DISABLED);
         }
         else
         {
            this.§2!w§.setVisibility(false);
         }
      }
      
      protected function saveLevelProgress() : void
      {
         §@!m§(§4#;§.singleton).§1g§(§+!b§.currentLevel,false);
         §7q§(§4#;§.singleton.dataModel.userProgress).addEventListener(UserProgressEvent.§3#V§,this.§6d§);
         §7q§(§4#;§.singleton.dataModel.userProgress).saveLevelProgress(§+!b§.currentLevel,false,false);
      }
      
      protected function §6d§(param1:UserProgressEvent) : void
      {
         this.§=3§ = true;
         §7q§(§4#;§.singleton.dataModel.userProgress).removeEventListener(UserProgressEvent.§3#V§,this.§6d§);
         this.§`"Z§ = §#"T§(param1.data);
         if(this.§`"Z§ && this.§`"Z§.§@!?§ && this.§`"Z§.§+",§ > 0)
         {
            §6"]§.§4!9§(§6"]§.§3!b§,this.§`"Z§.§@!?§,this.§`"Z§.§+",§);
         }
         if(this.§-"X§)
         {
            this.§##5§();
         }
         else if(this.§'#[§)
         {
            this.§8E§();
         }
      }
      
      override protected function showScore() : void
      {
         super.showScore();
         if(!§<!L§ && this.§4!&§)
         {
            if(this.§=3§)
            {
               this.§8E§();
            }
            else
            {
               this.§'#[§ = true;
            }
         }
      }
      
      private function §8E§() : void
      {
         this.§2"'§ = false;
         this.§"!c§.addEventListener(§ ?§.§[!9§,this.§&!u§);
         this.§"!c§.addEventListener(§ ?§.§="<§,this.§6!s§);
         this.§"!c§.show();
      }
      
      override protected function showHighScoreBadge() : void
      {
         if(this.§=3§)
         {
            this.§##5§();
         }
         else
         {
            this.§-"X§ = true;
         }
         this.§0B§();
      }
      
      private function §0B§() : void
      {
         if(§<!L§ && this.getRankForLevel() == 1)
         {
            §@;§.getItemByName("Button_Share").setVisibility(true);
            §?N§();
         }
      }
      
      protected function §##5§() : void
      {
         if(this.§`"Z§.§@!?§ && this.§5!r§)
         {
            §@;§.getItemByName("MovieClip_PowerupReward").mClip.powerup.gotoAndStop(this.§`"Z§.§@!?§);
            §@;§.getItemByName("MovieClip_PowerupReward").mClip.txtAmount.text = "x" + this.§`"Z§.§+",§;
            this.§5!r§.visible = true;
            §?!r§.§"#_§("highscore");
            this.§5!r§.show();
         }
         else
         {
            super.showHighScoreBadge();
         }
         this.§-"X§ = false;
      }
      
      protected function onBadgeLanded(param1:Event) : void
      {
         if(this.§4!&§)
         {
            if(this.§=3§)
            {
               this.§8E§();
            }
            else
            {
               this.§'#[§ = true;
            }
         }
      }
      
      protected function §&!u§(param1:Event) : void
      {
         this.§"!c§.removeEventListener(§ ?§.§[!9§,this.§&!u§);
         this.§0"S§ = true;
         this.setButtonAlignment();
      }
      
      protected function §6!s§(param1:Event) : void
      {
         this.§"!c§.removeEventListener(§ ?§.§="<§,this.§&!u§);
         this.§2"'§ = true;
         this.setButtonAlignment();
      }
      
      override protected function loadNextLevel() : void
      {
         §'$§();
         § g§(getCutSceneState());
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
      {
         if(!this.§2"'§ || this.§=!4§(param2))
         {
            return;
         }
         switch(param2)
         {
            case "NEXT_LEVEL":
               §?!r§.§"#_§("misc_menubuttonproceed_1");
               this.loadNextLevel();
               break;
            case "REPLAY":
               §?!r§.§"#_§("misc_menubuttonproceed_1");
               § g§(getStateLevelLoadState());
               break;
            case "TOURNAMENT":
               §?!r§.§"#_§("misc_menubuttonproceed_1");
               § g§(this.§3#-§());
               break;
            case "MENU":
               §?!r§.§0"#§();
               §?!r§.§"#_§("misc_menubuttonback_1");
               § g§(getMenuButtonTargetState());
               break;
            case "SHARE_CROWN":
               §?!r§.§"#_§("misc_menubuttonproceed_1");
               this.shareCrown();
         }
      }
      
      protected function §=!4§(param1:String) : Boolean
      {
         var _loc6_:§[!j§ = null;
         var _loc2_:Array = ["NEXT_LEVEL","REPLAY","MENU"];
         var _loc3_:§;a§ = §4#;§.singleton.popupManager;
         var _loc4_:§7q§ = §7q§(§4#;§.singleton.dataModel.userProgress);
         var _loc5_:* = _loc2_.indexOf(param1) != -1;
         if(_loc4_.§7"`§ && _loc5_)
         {
            if(!_loc3_.isPopupOpenById(SyncPopup.§%!h§))
            {
               this.§5#?§ = param1;
               _loc4_.addEventListener(UserProgressEvent.§3#V§,this.§=>§);
               _loc6_ = new SyncPopup(§`"W§.ERROR,§+5§.DEFAULT);
               §4#;§.singleton.popupManager.openPopup(_loc6_);
            }
            return true;
         }
         return false;
      }
      
      private function shareCrown() : void
      {
         §4#;§.singleton.§<#'§();
         var _loc1_:int = this.getRankForLevel();
         §""v§.§&R§("shareCrown",§+!b§.currentLevel,§,"X§(§+!b§).getPrettyLevelString(§+!b§.currentLevel),_loc1_,§,!q§.§>k§.getScore(10));
      }
      
      protected function §3#-§() : String
      {
         return §6!W§.§^!7§;
      }
      
      protected function §=>§(param1:UserProgressEvent) : void
      {
         var _loc2_:§7q§ = §7q§(§4#;§.singleton.dataModel.userProgress);
         _loc2_.removeEventListener(UserProgressEvent.§3#V§,this.§=>§);
         var _loc3_:§;a§ = §4#;§.singleton.popupManager;
         _loc3_.§,"o§(SyncPopup.§%!h§);
         §=!q§(-1,this.§5#?§,null);
         this.§5#?§ = null;
      }
      
      protected function getRankForLevel() : int
      {
         return §7q§(§">§).getRankForLevel(§+!b§.currentLevel);
      }
      
      private function §0!<§() : void
      {
         §@;§.getItemByName("Button_Share").setVisibility(false);
      }
   }
}
