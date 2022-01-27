package §!X§
{
   import §"!P§.§3G§;
   import §"!P§.UserProgressEvent;
   import §""d§.§2"8§;
   import §'+§.§="B§;
   import §,"v§.§@§;
   import §,#+§.§ "0§;
   import §,#+§.§7!m§;
   import §0R§.§0!8§;
   import §4##§.§7!B§;
   import §4m§.§&N§;
   import §4m§.§5!R§;
   import §4m§.§^T§;
   import §8"h§.§ "e§;
   import §8"h§.§7"8§;
   import §8_§.§-"5§;
   import §<"s§.§0u§;
   import §<"s§.§@![§;
   import §<"s§.SyncPopup;
   import com.angrybirds.§;!e§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §;'§ extends §,!A§
   {
       
      
      protected var §"q§:§@![§;
      
      protected var §=§:String;
      
      protected var §'"$§:§7"8§;
      
      protected var §#",§:Boolean;
      
      protected var §9I§:MovieClip;
      
      protected var §3i§:§2"8§;
      
      protected var §@N§:§ "e§;
      
      public function §;'§(param1:§7!m§, param2:§="B§, param3:Boolean = false, param4:String = "LevelEndEagleState")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§"q§ = §@![§(§;"@§.singleton.popupManager);
         this.§3i§ = §2"8§(§>I§.getItemByName("Button_Tournament"));
         this.§9I§ = §>I§.getItemByName("MovieClip_LevelsUntilTournament").mClip;
         §>I§.getItemByName("MovieClip_PowerupReward").mClip.powerup.stop();
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §&"1§(§;!e§.§6!v§).§#"t§.§`§ = false;
         this.§'"$§ = new §7"8§(§,r§);
         if(§,r§.getItemByName("MovieClip_PowerupReward"))
         {
            this.§@N§ = new § "e§(§,r§,§,r§.getItemByName("MovieClip_PowerupReward").mClip);
         }
         this.§3i§.setVisibility(false);
      }
      
      private function get §70§() : Boolean
      {
         return §+"v§.isLevelPassed(§ !p§.getEpisodeByName(§=!z§.§"z§).getLevelName(§=!z§.§3!§ - 1));
      }
      
      override protected function setScoreData() : void
      {
         var _loc6_:String = null;
         var _loc1_:§ "0§ = § !p§.getEpisodeForLevel(§ !p§.currentLevel);
         var _loc2_:Boolean = §+"v§.isLevelPassed(§ !p§.currentLevel);
         var _loc3_:int = _loc1_.getLevelIndex(§ !p§.currentLevel);
         var _loc4_:int = _loc3_ + 1;
         if(_loc1_.name == "2" && _loc4_ == 9 && !_loc2_ && !this.§70§)
         {
            this.§#",§ = true;
         }
         else
         {
            this.§#",§ = false;
         }
         var _loc5_:int = §=!z§.§3!§ - 1 - _loc3_;
         if(!this.§#",§ && _loc1_.name == "2" && _loc5_ > 0 && !_loc2_ && !this.§70§)
         {
            _loc6_ = (_loc6_ = (_loc6_ = §;"@§.singleton.§!# §.getLocalizedString("levelend_unlock_tournament")).replace("[count]",_loc5_)).replace("[levels]",_loc5_ == 1 ? "level" : "levels");
            this.§9I§.txtLabel.text = _loc6_;
            this.§9I§.visible = true;
         }
         if(§4!U§)
         {
            §&"1§(§;"@§.singleton).§`!u§.§3"a§();
         }
         super.setScoreData();
      }
      
      override public function deActivate() : void
      {
         if(this.§'"$§)
         {
            this.§'"$§.removeEventListener(§7"8§.§3"L§,this.§]!5§);
            this.§'"$§.dispose();
            this.§'"$§ = null;
         }
         §3G§(§;"@§.singleton.dataModel.userProgress).removeEventListener(UserProgressEvent.§!#,§,this.§!`§);
         this.§"q§.§'!8§();
         super.deActivate();
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         this.§'"$§.update(param1);
      }
      
      override protected function onCountComplete() : void
      {
         super.onCountComplete();
         if(!§4!U§ && this.§#",§)
         {
            this.§'"$§.addEventListener(§7"8§.§3"L§,this.§]!5§);
            this.§'"$§.show();
         }
      }
      
      override protected function onBadgeLanded() : void
      {
         super.onBadgeLanded();
         if(this.§#",§)
         {
            this.§'"$§.addEventListener(§7"8§.§3"L§,this.§]!5§);
            this.§'"$§.show();
         }
      }
      
      protected function §]!5§(param1:Event) : void
      {
         this.§'"$§.removeEventListener(§7"8§.§3"L§,this.§]!5§);
         this.setButtonAlignment();
      }
      
      override protected function setButtonAlignment() : void
      {
         var _loc1_:Boolean = §#"A§.visible;
         var _loc2_:Boolean = §"V§.visible;
         var _loc3_:int = §%"X§;
         _loc3_ += !!_loc2_ ? §!!o§ + §%"X§ : 0;
         _loc3_ += !!_loc1_ ? §!!o§ + §%"X§ : 0;
         _loc3_ += !!this.§#",§ ? §!!o§ + §%"X§ : 0;
         var _loc4_:int = -_loc3_ / 2 + §["8§;
         if(_loc2_)
         {
            §"V§.x = _loc4_;
            _loc4_ += §!!o§ + §%"X§;
         }
         §7"0§.x = _loc4_;
         _loc4_ += §!!o§ + §%"X§;
         if(_loc1_)
         {
            §#"A§.x = _loc4_;
            _loc4_ += §!!o§ + §%"X§;
         }
         if(this.§#",§)
         {
            this.§3i§.setVisibility(true);
            this.§3i§.x = _loc4_;
            _loc4_ += §!!o§ + §%"X§;
         }
         else
         {
            this.§3i§.setVisibility(false);
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§7!B§) : void
      {
         var _loc7_:§5!R§ = null;
         var _loc4_:Array = ["NEXT_LEVEL","REPLAY","MENU"];
         var _loc5_:§&N§ = §;"@§.singleton.popupManager;
         var _loc6_:§3G§;
         if((_loc6_ = §3G§(§;"@§.singleton.dataModel.userProgress)).§,"X§ && _loc4_.indexOf(param2) != -1)
         {
            if(!_loc5_.isPopupOpenById(SyncPopup.§^"3§))
            {
               this.§=§ = param2;
               _loc6_.addEventListener(UserProgressEvent.§!#,§,this.§!R§);
               _loc7_ = new SyncPopup(§0u§.ERROR,§^T§.DEFAULT);
               §;"@§.singleton.popupManager.openPopup(_loc7_);
            }
            return;
         }
         switch(param2)
         {
            case "NEXT_LEVEL":
               §@§.§=Y§("misc_menubuttonproceed_1");
               § !Y§();
               §0"B§(StateCutScene.§'#2§);
               break;
            case "REPLAY":
               §@§.§=Y§("misc_menubuttonproceed_1");
               §0"B§(§>!I§.§'#2§);
               break;
            case "MENU":
               §@§.§+A§();
               §@§.§=Y§("misc_menubuttonback_1");
               §0"B§(§,"p§.§'#2§);
         }
      }
      
      protected function §!R§(param1:UserProgressEvent) : void
      {
         var _loc2_:§3G§ = §3G§(§;"@§.singleton.dataModel.userProgress);
         _loc2_.removeEventListener(UserProgressEvent.§!#,§,this.§!R§);
         var _loc3_:§&N§ = §;"@§.singleton.popupManager;
         _loc3_.§7M§(SyncPopup.§^"3§);
         §6t§(-1,this.§=§,null);
         this.§=§ = null;
      }
      
      override protected function saveNewHighScore(param1:Number) : void
      {
         super.saveNewHighScore(param1);
         §+"v§.addEventListener(UserProgressEvent.§!#,§,this.§!`§);
         §+"v§.saveLevelProgress(§ !p§.currentLevel,false,false);
         §&"1§(§;"@§.singleton).§8"X§(§ !p§.currentLevel,false);
      }
      
      private function §!`§(param1:UserProgressEvent) : void
      {
         §3G§(§;"@§.singleton.dataModel.userProgress).removeEventListener(UserProgressEvent.§!#,§,this.§!`§);
         var _loc2_:§-"5§ = §-"5§(param1.data);
         if(_loc2_ && _loc2_.§+!l§ && _loc2_.§""f§ > 0)
         {
            §0!8§.§,">§(§0!8§.§'"M§,_loc2_.§+!l§,_loc2_.§""f§);
         }
         if(_loc2_.§+!l§ && this.§@N§)
         {
            §>I§.getItemByName("MovieClip_PowerupReward").mClip.powerup.gotoAndStop(_loc2_.§+!l§);
            §>I§.getItemByName("MovieClip_PowerupReward").mClip.txtAmount.text = "x" + _loc2_.§""f§;
            this.§@N§.visible = true;
            §@§.§=Y§("highscore");
            this.§@N§.show();
         }
      }
   }
}
