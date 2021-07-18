package §<"c§
{
   import § "4§.§7q§;
   import § "4§.UserProgressEvent;
   import §!"e§.§9#B§;
   import §!"e§.SyncPopup;
   import §!"e§.§`"W§;
   import §#!'§.§6"]§;
   import §+D§.§^"m§;
   import §9p§.§#"T§;
   import §;"Y§.§&#X§;
   import §="2§.§?!r§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   import §?m§.§3![§;
   import §[!m§.§+5§;
   import §[!m§.§;a§;
   import §[!m§.§[!j§;
   import §^!v§.§ ?§;
   import §^!v§.§@"A§;
   import com.angrybirds.§,!q§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §>#Y§ extends § #4§
   {
       
      
      protected var §5M§:§9#B§;
      
      protected var §5#?§:String;
      
      protected var §"!c§:§ ?§;
      
      protected var §4!&§:Boolean;
      
      protected var §6U§:MovieClip;
      
      protected var §2!w§:§^"m§;
      
      protected var §5!r§:§@"A§;
      
      public function §>#Y§(param1:§+"2§, param2:§5"H§, param3:Boolean = false, param4:String = "LevelEndEagleState")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§5M§ = §9#B§(§4#;§.singleton.popupManager);
         this.§2!w§ = §^"m§(§@;§.getItemByName("Button_Tournament"));
         this.§6U§ = §@;§.getItemByName("MovieClip_LevelsUntilTournament").mClip;
         §@;§.getItemByName("MovieClip_PowerupReward").mClip.powerup.stop();
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §@!m§(§,!q§.§>#D§).§ "g§.§""O§ = false;
         this.§"!c§ = new § ?§(§^c§);
         if(§^c§.getItemByName("MovieClip_PowerupReward"))
         {
            this.§5!r§ = new §@"A§(§^c§,§^c§.getItemByName("MovieClip_PowerupReward").mClip);
         }
         this.§2!w§.setVisibility(false);
      }
      
      private function get §#F§() : Boolean
      {
         return §">§.isLevelPassed(§+!b§.getEpisodeByName(§?!W§.§=q§).getLevelName(§?!W§.§0#G§ - 1));
      }
      
      override protected function setScoreData() : void
      {
         var _loc6_:String = null;
         var _loc1_:§3![§ = §+!b§.getEpisodeForLevel(§+!b§.currentLevel);
         var _loc2_:Boolean = §">§.isLevelPassed(§+!b§.currentLevel);
         var _loc3_:int = _loc1_.getLevelIndex(§+!b§.currentLevel);
         var _loc4_:int = _loc3_ + 1;
         if(_loc1_.name == "2" && _loc4_ == 9 && !_loc2_ && !this.§#F§)
         {
            this.§4!&§ = true;
         }
         else
         {
            this.§4!&§ = false;
         }
         var _loc5_:int = §?!W§.§0#G§ - 1 - _loc3_;
         if(!this.§4!&§ && _loc1_.name == "2" && _loc5_ > 0 && !_loc2_ && !this.§#F§)
         {
            _loc6_ = (_loc6_ = (_loc6_ = §4#;§.singleton.§4#,§.getLocalizedString("levelend_unlock_tournament")).replace("[count]",_loc5_)).replace("[levels]",_loc5_ == 1 ? "level" : "levels");
            this.§6U§.txtLabel.text = _loc6_;
            this.§6U§.visible = true;
         }
         if(§<!L§)
         {
            §@!m§(§4#;§.singleton).§""s§.§!d§();
         }
         super.setScoreData();
      }
      
      override public function deActivate() : void
      {
         if(this.§"!c§)
         {
            this.§"!c§.removeEventListener(§ ?§.§[!9§,this.§&!u§);
            this.§"!c§.dispose();
            this.§"!c§ = null;
         }
         §7q§(§4#;§.singleton.dataModel.userProgress).removeEventListener(UserProgressEvent.§3#V§,this.§6d§);
         this.§5M§.§="M§();
         super.deActivate();
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         this.§"!c§.update(param1);
      }
      
      override protected function onCountComplete() : void
      {
         super.onCountComplete();
         if(!§<!L§ && this.§4!&§)
         {
            this.§"!c§.addEventListener(§ ?§.§[!9§,this.§&!u§);
            this.§"!c§.show();
         }
      }
      
      override protected function onBadgeLanded() : void
      {
         super.onBadgeLanded();
         if(this.§4!&§)
         {
            this.§"!c§.addEventListener(§ ?§.§[!9§,this.§&!u§);
            this.§"!c§.show();
         }
      }
      
      protected function §&!u§(param1:Event) : void
      {
         this.§"!c§.removeEventListener(§ ?§.§[!9§,this.§&!u§);
         this.setButtonAlignment();
      }
      
      override protected function setButtonAlignment() : void
      {
         var _loc1_:Boolean = §9!#§.visible;
         var _loc2_:Boolean = §^W§.visible;
         var _loc3_:int = §,#9§;
         _loc3_ += !!_loc2_ ? §5"n§ + §,#9§ : 0;
         _loc3_ += !!_loc1_ ? §5"n§ + §,#9§ : 0;
         _loc3_ += !!this.§4!&§ ? §5"n§ + §,#9§ : 0;
         var _loc4_:int = -_loc3_ / 2 + §<!K§;
         if(_loc2_)
         {
            §^W§.x = _loc4_;
            _loc4_ += §5"n§ + §,#9§;
         }
         §^"^§.x = _loc4_;
         _loc4_ += §5"n§ + §,#9§;
         if(_loc1_)
         {
            §9!#§.x = _loc4_;
            _loc4_ += §5"n§ + §,#9§;
         }
         if(this.§4!&§)
         {
            this.§2!w§.setVisibility(true);
            this.§2!w§.x = _loc4_;
            _loc4_ += §5"n§ + §,#9§;
         }
         else
         {
            this.§2!w§.setVisibility(false);
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
      {
         var _loc7_:§[!j§ = null;
         var _loc4_:Array = ["NEXT_LEVEL","REPLAY","MENU"];
         var _loc5_:§;a§ = §4#;§.singleton.popupManager;
         var _loc6_:§7q§;
         if((_loc6_ = §7q§(§4#;§.singleton.dataModel.userProgress)).§7"`§ && _loc4_.indexOf(param2) != -1)
         {
            if(!_loc5_.isPopupOpenById(SyncPopup.§%!h§))
            {
               this.§5#?§ = param2;
               _loc6_.addEventListener(UserProgressEvent.§3#V§,this.§?"x§);
               _loc7_ = new SyncPopup(§`"W§.ERROR,§+5§.DEFAULT);
               §4#;§.singleton.popupManager.openPopup(_loc7_);
            }
            return;
         }
         switch(param2)
         {
            case "NEXT_LEVEL":
               §?!r§.§"#_§("misc_menubuttonproceed_1");
               §'$§();
               § g§(StateCutScene.§^!7§);
               break;
            case "REPLAY":
               §?!r§.§"#_§("misc_menubuttonproceed_1");
               § g§(§<2§.§^!7§);
               break;
            case "MENU":
               §?!r§.§0"#§();
               §?!r§.§"#_§("misc_menubuttonback_1");
               § g§(§+#?§.§^!7§);
         }
      }
      
      protected function §?"x§(param1:UserProgressEvent) : void
      {
         var _loc2_:§7q§ = §7q§(§4#;§.singleton.dataModel.userProgress);
         _loc2_.removeEventListener(UserProgressEvent.§3#V§,this.§?"x§);
         var _loc3_:§;a§ = §4#;§.singleton.popupManager;
         _loc3_.§,"o§(SyncPopup.§%!h§);
         §=!q§(-1,this.§5#?§,null);
         this.§5#?§ = null;
      }
      
      override protected function saveNewHighScore(param1:Number) : void
      {
         super.saveNewHighScore(param1);
         §">§.addEventListener(UserProgressEvent.§3#V§,this.§6d§);
         §">§.saveLevelProgress(§+!b§.currentLevel,false,false);
         §@!m§(§4#;§.singleton).§1g§(§+!b§.currentLevel,false);
      }
      
      private function §6d§(param1:UserProgressEvent) : void
      {
         §7q§(§4#;§.singleton.dataModel.userProgress).removeEventListener(UserProgressEvent.§3#V§,this.§6d§);
         var _loc2_:§#"T§ = §#"T§(param1.data);
         if(_loc2_ && _loc2_.§@!?§ && _loc2_.§+",§ > 0)
         {
            §6"]§.§4!9§(§6"]§.§3!b§,_loc2_.§@!?§,_loc2_.§+",§);
         }
         if(_loc2_.§@!?§ && this.§5!r§)
         {
            §@;§.getItemByName("MovieClip_PowerupReward").mClip.powerup.gotoAndStop(_loc2_.§@!?§);
            §@;§.getItemByName("MovieClip_PowerupReward").mClip.txtAmount.text = "x" + _loc2_.§+",§;
            this.§5!r§.visible = true;
            §?!r§.§"#_§("highscore");
            this.§5!r§.show();
         }
      }
   }
}
