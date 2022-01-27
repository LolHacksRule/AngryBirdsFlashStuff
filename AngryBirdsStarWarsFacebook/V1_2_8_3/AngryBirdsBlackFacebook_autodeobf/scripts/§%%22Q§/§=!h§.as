package §%"Q§
{
   import §!b§.§]!s§;
   import §"#§.§+§;
   import §"#§.§>H§;
   import §%!U§.§="H§;
   import §&!j§.§5#+§;
   import §+"Y§.§4#%§;
   import §+"Y§.SyncPopup;
   import §+"Y§.§^!S§;
   import §+"x§.§&!Y§;
   import §+"x§.§2!s§;
   import §+"x§.§3!§;
   import §8!h§.§-V§;
   import §=Z§.§;g§;
   import §`"1§.§=Q§;
   import §`"n§.§""r§;
   import §`"n§.UserProgressEvent;
   import com.angrybirds.§<!J§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import §null §.§5!K§;
   import §null §.§5#§;
   
   public class §=!h§ extends §&"L§
   {
       
      
      protected var §?"Q§:§4#%§;
      
      protected var §="J§:String;
      
      protected var §-#+§:§>H§;
      
      protected var §0#6§:Boolean;
      
      protected var §6#&§:MovieClip;
      
      protected var §0"R§:§;g§;
      
      protected var §-O§:§+#6§;
      
      public function §=!h§(param1:§5#§, param2:§5#+§, param3:Boolean = false, param4:String = "LevelEndEagleState")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§?"Q§ = §4#%§(§4"#§.singleton.popupManager);
         this.§0"R§ = §;g§(§^!b§.getItemByName("Button_Tournament"));
         this.§6#&§ = §^!b§.getItemByName("MovieClip_LevelsUntilTournament").mClip;
         §^!b§.getItemByName("MovieClip_PowerupReward").mClip.powerup.stop();
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §throw§(§<!J§.§#!L§).§^!O§.§?a§ = false;
         this.§-#+§ = new §>H§(§[#,§);
         if(§[#,§.getItemByName("MovieClip_PowerupReward"))
         {
            this.§-O§ = new §+#6§(§[#,§,§[#,§.getItemByName("MovieClip_PowerupReward").mClip);
         }
         this.§0"R§.setVisibility(false);
      }
      
      private function get §@"p§() : Boolean
      {
         return §3"§.isLevelPassed(§'""§.getEpisodeByName(§?!W§.§?7§).getLevelName(§?!W§.§>"N§ - 1));
      }
      
      override protected function setScoreData() : void
      {
         var _loc6_:String = null;
         var _loc1_:§5!K§ = §'""§.getEpisodeForLevel(§'""§.currentLevel);
         var _loc2_:Boolean = §3"§.isLevelPassed(§'""§.currentLevel);
         var _loc3_:int = _loc1_.getLevelIndex(§'""§.currentLevel);
         var _loc4_:int = _loc3_ + 1;
         if(_loc1_.name == "2" && _loc4_ == 9 && !_loc2_ && !this.§@"p§)
         {
            this.§0#6§ = true;
         }
         else
         {
            this.§0#6§ = false;
         }
         var _loc5_:int = §?!W§.§>"N§ - 1 - _loc3_;
         if(!this.§0#6§ && _loc1_.name == "2" && _loc5_ > 0 && !_loc2_ && !this.§@"p§)
         {
            _loc6_ = (_loc6_ = (_loc6_ = §4"#§.singleton.§1!L§.getLocalizedString("levelend_unlock_tournament")).replace("[count]",_loc5_)).replace("[levels]",_loc5_ == 1 ? "level" : "levels");
            this.§6#&§.txtLabel.text = _loc6_;
            this.§6#&§.visible = true;
         }
         if(§#$§)
         {
            §throw§(§4"#§.singleton).§?"T§.§"]§();
         }
         super.setScoreData();
      }
      
      override public function deActivate() : void
      {
         if(this.§-#+§)
         {
            this.§-#+§.removeEventListener(§>H§.§"k§,this.§1"u§);
            this.§-#+§.dispose();
            this.§-#+§ = null;
         }
         §""r§(§4"#§.singleton.dataModel.userProgress).removeEventListener(UserProgressEvent.§"_§,this.§<"D§);
         this.§?"Q§.§8!v§();
         super.deActivate();
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         this.§-#+§.update(param1);
      }
      
      override protected function onCountComplete() : void
      {
         super.onCountComplete();
         if(!§#$§ && this.§0#6§)
         {
            this.§-#+§.addEventListener(§>H§.§"k§,this.§1"u§);
            this.§-#+§.show();
         }
      }
      
      override protected function onBadgeLanded() : void
      {
         super.onBadgeLanded();
         if(this.§0#6§)
         {
            this.§-#+§.addEventListener(§>H§.§"k§,this.§1"u§);
            this.§-#+§.show();
         }
      }
      
      protected function §1"u§(param1:Event) : void
      {
         this.§-#+§.removeEventListener(§>H§.§"k§,this.§1"u§);
         this.setButtonAlignment();
      }
      
      override protected function setButtonAlignment() : void
      {
         var _loc1_:Boolean = §<!k§.visible;
         var _loc2_:Boolean = §%N§.visible;
         var _loc3_:int = §2!z§;
         _loc3_ += !!_loc2_ ? §##&§ + §2!z§ : 0;
         _loc3_ += !!_loc1_ ? §##&§ + §2!z§ : 0;
         _loc3_ += !!this.§0#6§ ? §##&§ + §2!z§ : 0;
         var _loc4_:int = -_loc3_ / 2 + §7!E§;
         if(_loc2_)
         {
            §%N§.x = _loc4_;
            _loc4_ += §##&§ + §2!z§;
         }
         §"f§.x = _loc4_;
         _loc4_ += §##&§ + §2!z§;
         if(_loc1_)
         {
            §<!k§.x = _loc4_;
            _loc4_ += §##&§ + §2!z§;
         }
         if(this.§0#6§)
         {
            this.§0"R§.setVisibility(true);
            this.§0"R§.x = _loc4_;
            _loc4_ += §##&§ + §2!z§;
         }
         else
         {
            this.§0"R§.setVisibility(false);
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§-V§) : void
      {
         var _loc7_:§3!§ = null;
         var _loc4_:Array = ["NEXT_LEVEL","REPLAY","MENU"];
         var _loc5_:§&!Y§ = §4"#§.singleton.popupManager;
         var _loc6_:§""r§;
         if((_loc6_ = §""r§(§4"#§.singleton.dataModel.userProgress)).§=#%§ && _loc4_.indexOf(param2) != -1)
         {
            if(!_loc5_.isPopupOpenById(SyncPopup.§-"§))
            {
               this.§="J§ = param2;
               _loc6_.addEventListener(UserProgressEvent.§"_§,this.§%"6§);
               _loc7_ = new SyncPopup(§^!S§.ERROR,§2!s§.DEFAULT);
               §4"#§.singleton.popupManager.openPopup(_loc7_);
            }
            return;
         }
         switch(param2)
         {
            case "NEXT_LEVEL":
               §=Q§.§`!A§("misc_menubuttonproceed_1");
               §`"y§();
               §`0§(StateCutScene.§-!U§);
               break;
            case "REPLAY":
               §=Q§.§`!A§("misc_menubuttonproceed_1");
               §`0§(§7"9§.§-!U§);
               break;
            case "MENU":
               §=Q§.§!#,§();
               §=Q§.§`!A§("misc_menubuttonback_1");
               §`0§(§`=§.§-!U§);
         }
      }
      
      protected function §%"6§(param1:UserProgressEvent) : void
      {
         var _loc2_:§""r§ = §""r§(§4"#§.singleton.dataModel.userProgress);
         _loc2_.removeEventListener(UserProgressEvent.§"_§,this.§%"6§);
         var _loc3_:§&!Y§ = §4"#§.singleton.popupManager;
         _loc3_.§6!u§(SyncPopup.§-"§);
         §+##§(-1,this.§="J§,null);
         this.§="J§ = null;
      }
      
      override protected function saveNewHighScore(param1:Number) : void
      {
         super.saveNewHighScore(param1);
         §3"§.addEventListener(UserProgressEvent.§"_§,this.§<"D§);
         §3"§.saveLevelProgress(§'""§.currentLevel,false,false);
         §throw§(§4"#§.singleton).§9F§(§'""§.currentLevel,false);
      }
      
      private function §<"D§(param1:UserProgressEvent) : void
      {
         §""r§(§4"#§.singleton.dataModel.userProgress).removeEventListener(UserProgressEvent.§"_§,this.§<"D§);
         var _loc2_:§="H§ = §="H§(param1.data);
         if(_loc2_ && _loc2_.§["O§ && _loc2_.§+!n§ > 0)
         {
            §]!s§.§,!T§(§]!s§.§'!@§,_loc2_.§["O§,_loc2_.§+!n§);
         }
         if(_loc2_.§["O§ && this.§-O§)
         {
            §^!b§.getItemByName("MovieClip_PowerupReward").mClip.powerup.gotoAndStop(_loc2_.§["O§);
            §^!b§.getItemByName("MovieClip_PowerupReward").mClip.txtAmount.text = "x" + _loc2_.§+!n§;
            this.§-O§.visible = true;
            §=Q§.§`!A§("highscore");
            this.§-O§.show();
         }
      }
   }
}
