package §%!c§
{
   import §!X§.§=!z§;
   import §"!P§.§3G§;
   import §"!P§.UserProgressEvent;
   import §'+§.§="B§;
   import §,"v§.§@§;
   import §,#+§.§7!m§;
   import §1!o§.§<"]§;
   import §4##§.§5!9§;
   import §4##§.§7!B§;
   import §4m§.§^T§;
   import §5",§.§#F§;
   import §5",§.§%"@§;
   import §6"e§.§+!§;
   import §8"h§.§!w§;
   import §;q§.§ true§;
   import §<"s§.§0u§;
   import §<"s§.EnergyOutPopup;
   import §>"!§.§>D§;
   import §`"8§.§#"S§;
   import §`"8§.§-!w§;
   import §`"8§.§>6§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.utils.getTimer;
   
   public class §%h§ extends §=!z§
   {
      
      public static const §'#2§:String = "stateTournamentLevelEnd";
       
      
      private var §<""§:Number;
      
      private var §#"r§:§!w§;
      
      private var §@!%§:MovieClip;
      
      private var §8!H§:Boolean;
      
      public function §%h§(param1:§7!m§, param2:§="B§, param3:Boolean = false, param4:String = "stateTournamentLevelEnd")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function get restartUsesEnergyCrystal() : Boolean
      {
         return true;
      }
      
      override public function getMenuButtonTargetState() : String
      {
         return §@!#§.§'#2§;
      }
      
      override protected function getStateLevelLoadState() : String
      {
         return §4"O§.§'#2§;
      }
      
      override protected function getCutSceneState() : String
      {
         return §;"h§.§'#2§;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§@!%§ = §#"A§.mClip.unlockTimer;
         this.§#"r§ = new §!w§(§#"A§,§-!w§(§;"@§.singleton.dataModel).§9"1§.§@!&§.§]"j§,true);
         this.§8!H§ = false;
         this.§!!w§();
         §-!w§(§;"@§.singleton.dataModel).§2!J§.addEventListener(§>6§.§ !A§,this.onTournamentOver);
         if(this.§0!7§)
         {
            §-!w§(§;"@§.singleton.dataModel).§#t§.§-!v§(§#"S§.§@" §);
            §;"@§.singleton.popupManager.openPopup(new §>D§(§0u§.§1"J§,§^T§.TOP,§>D§.§<"U§,true),true,true,false);
         }
      }
      
      override protected function setScoreData() : void
      {
         this.§<,§();
         super.setScoreData();
         if(!§4!U§)
         {
            §3G§(§;"@§.singleton.dataModel.userProgress).saveLevelProgress(§ !p§.currentLevel,false,true);
         }
      }
      
      protected function §<,§() : void
      {
         var _loc1_:int = §;"@§.singleton.dataModel.userProgress.getStarsForLevel(§ !p§.currentLevel,§-!w§(§;"@§.singleton.dataModel).§2!J§.getScoreForLevel(§ !p§.currentLevel));
         var _loc2_:§5!9§ = §>I§.getItemByName("MovieClip_CoinLeft");
         var _loc3_:§5!9§ = §>I§.getItemByName("MovieClip_CoinMiddle");
         var _loc4_:§5!9§ = §>I§.getItemByName("MovieClip_CoinRight");
         var _loc5_:Array = §-!w§(§;"@§.singleton.dataModel).§2!J§.starCoinRewards;
         _loc2_.mClip.gotoAndStop(1);
         _loc2_.setVisibility(_loc1_ < 1);
         _loc2_.mClip.txtAmount.text = "x" + _loc5_[0];
         _loc3_.mClip.gotoAndStop(1);
         _loc3_.setVisibility(_loc1_ < 2);
         _loc3_.mClip.txtAmount.text = "x" + _loc5_[1];
         _loc4_.mClip.gotoAndStop(1);
         _loc4_.setVisibility(_loc1_ < 3);
         _loc4_.mClip.txtAmount.text = "x" + _loc5_[2];
      }
      
      override protected function lightStar(param1:int) : void
      {
         var _loc4_:int = 0;
         super.lightStar(param1);
         var _loc2_:int = param1 - 1;
         var _loc3_:MovieClip = §>I§.getItemByName(["MovieClip_CoinLeft","MovieClip_CoinMiddle","MovieClip_CoinRight"][_loc2_]).mClip;
         _loc3_.gotoAndStop(2);
         _loc3_.txtAmount.text = "x" + §-!w§(§;"@§.singleton.dataModel).§2!J§.starCoinRewards[_loc2_];
         if(_loc3_.visible == true)
         {
            _loc4_ = [10,20,30][_loc2_];
            §-"?§ = new §%"@§(§;"@§.screenWidth,§;"@§.screenHeight,_loc3_.x + §,r§.x + 70,_loc3_.y + §,r§.y + 70,[§%"@§.§'!$§,§%"@§.§`#&§,§%"@§.§=!I§][_loc2_],_loc4_,§#F§.§%"_§);
            §>I§.addChild(§-"?§);
            §<!T§.push(§-"?§);
         }
      }
      
      private function §!!w§() : void
      {
         var _loc6_:Object = null;
         var _loc1_:§>6§ = §-!w§(§;"@§.singleton.dataModel).§2!J§;
         var _loc2_:Object = _loc1_.§]!@§(§ !p§.currentLevel);
         var _loc3_:int = _loc1_.levelObjects.indexOf(_loc2_);
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc3_ + 1 < _loc1_.levelObjects.length)
         {
            if((_loc6_ = _loc1_.levelObjects[_loc3_ + 1]).unlocksAt && _loc6_.unlocksAt > getTimer())
            {
               _loc4_ = true;
               _loc5_ = true;
               this.§<""§ = _loc6_.unlocksAt;
               §>I§.movieClip.removeEventListener(Event.ENTER_FRAME,this.§`_§);
               §>I§.movieClip.addEventListener(Event.ENTER_FRAME,this.§`_§);
            }
         }
         else
         {
            _loc4_ = false;
         }
         §#"A§.setVisibility(_loc4_);
         this.§#"r§.isLocked = _loc5_;
         if(_loc6_)
         {
            this.§#"r§.§""8§ = _loc6_;
         }
      }
      
      override protected function saveLevelProgress() : void
      {
         §&"1§(§;"@§.singleton).§8"X§(§ !p§.currentLevel,true);
         §3G§(§;"@§.singleton.dataModel.userProgress).addEventListener(UserProgressEvent.§!#,§,§!`§);
         §3G§(§;"@§.singleton.dataModel.userProgress).saveLevelProgress(§ !p§.currentLevel,false,true);
      }
      
      override public function deActivate() : void
      {
         this.§#"r§.dispose();
         this.§#"r§ = null;
         §-!w§(§;"@§.singleton.dataModel).§9"1§.removeEventListener(§<"]§.§2"S§,this.§6O§);
         §>I§.movieClip.removeEventListener(Event.ENTER_FRAME,this.§`_§);
         super.deActivate();
         §-!w§(§;"@§.singleton.dataModel).§2!J§.removeEventListener(§>6§.§ !A§,this.onTournamentOver);
      }
      
      private function get §0!7§() : Boolean
      {
         var _loc1_:Number = §-!w§(§;"@§.singleton.dataModel).§#t§.§]"w§(§#"S§.§@" §);
         if(!_loc1_)
         {
            return true;
         }
         var _loc2_:Date = new Date(_loc1_);
         var _loc3_:Date = new Date();
         if(_loc2_.day != _loc3_.day || _loc2_.month != _loc3_.month || _loc2_.fullYear != _loc3_.fullYear)
         {
            return true;
         }
         return false;
      }
      
      private function onTournamentOver(param1:Event) : void
      {
         §0"B§(§@!#§.§'#2§);
      }
      
      private function §`_§(param1:Event) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc2_:Number = Math.floor((this.§<""§ - getTimer()) / 1000);
         if(_loc2_ > 0)
         {
            _loc3_ = _loc2_ / (60 * 60 * 24);
            if(_loc3_ > 0)
            {
               if(_loc3_ > 4)
               {
                  _loc3_ = 4;
               }
               this.§@!%§.gotoAndStop("days_" + _loc3_);
               this.§@!%§.txtTimer.visible = false;
            }
            else
            {
               this.§@!%§.gotoAndStop("hours");
               this.§@!%§.txtTimer.visible = true;
               if(_loc2_ < 60)
               {
                  this.§@!%§.txtTimer.text = _loc2_.toString() + " sec";
               }
               else
               {
                  _loc2_ += 60;
                  _loc4_ = _loc2_ / (60 * 60);
                  _loc5_ = (_loc2_ - _loc4_ * (60 * 60)) / 60;
                  this.§@!%§.txtTimer.text = (_loc4_ < 10 ? "0" : "") + _loc4_ + ":" + (_loc5_ < 10 ? "0" : "") + _loc5_;
               }
            }
         }
         else
         {
            this.§<"§();
         }
      }
      
      protected function §<"§() : void
      {
         if(this.§#"r§.§""8§)
         {
            delete this.§#"r§.§""8§.unlocksAt;
            this.§#"r§.§""8§ = null;
         }
         §>I§.movieClip.removeEventListener(Event.ENTER_FRAME,this.§`_§);
         this.§#"r§.isLocked = false;
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§7!B§) : void
      {
         var _loc4_:§-!w§ = null;
         var _loc5_:§>6§ = null;
         if((param2 == "REPLAY" || param2 == "NEXT_LEVEL") && §-!w§(§;"@§.singleton.dataModel).§`!§.energy <= 0)
         {
            §;"@§.singleton.popupManager.openPopup(new EnergyOutPopup(§0u§.§1"J§,§^T§.TOP),true,true,true);
            return;
         }
         if(param2 == "REPLAY")
         {
            if(!this.§ B§(§ !p§.currentLevel))
            {
               §0"B§(this.getMenuButtonTargetState());
               return;
            }
         }
         if(param2 == "NEXT_LEVEL")
         {
            if(this.§#"r§.isLocked)
            {
               if(this.§#"r§.canBuyToUnlock)
               {
                  if((_loc4_ = §-!w§(§;"@§.singleton.dataModel)).§;L§.starCoins >= this.§#"r§.§,"=§)
                  {
                     this.§#"r§.canBuyToUnlock = false;
                     _loc5_ = §-!w§(§;"@§.singleton.dataModel).§2!J§;
                     this.§8!H§ = _loc5_.§4,§;
                     _loc5_.§4,§ = true;
                     _loc4_.§;L§.§1"F§(this.§#"r§.§,"=§);
                     _loc4_.§9"1§.addEventListener(§<"]§.§2"S§,this.§6O§);
                     _loc4_.§9"1§.§!l§(new § true§("TournamentLevel",1,this.§#"r§.§,"=§));
                     §@§.§=Y§("black_shop_purchase");
                  }
                  else
                  {
                     §;"@§.singleton.popupManager.openPopup(new §+!§(§0u§.§1"J§,§^T§.TOP,§+!§.§7!W§),true,true,true);
                  }
               }
               return;
            }
         }
         super.onUIInteraction(param1,param2,param3);
      }
      
      private function §6O§(param1:§<"]§) : void
      {
         var _loc2_:§>6§ = null;
         §-!w§(§;"@§.singleton.dataModel).§9"1§.removeEventListener(§<"]§.§2"S§,this.§6O§);
         if(!this.§8!H§)
         {
            _loc2_ = §-!w§(§;"@§.singleton.dataModel).§2!J§;
            _loc2_.§4,§ = false;
         }
         this.§<"§();
         this.onUIInteraction(-1,"NEXT_LEVEL",§[#4§);
      }
      
      private function § B§(param1:String) : Boolean
      {
         var _loc2_:§>6§ = §-!w§(§;"@§.singleton.dataModel).§2!J§;
         return !_loc2_.isLoading && _loc2_.§]!@§(§ !p§.currentLevel) != null;
      }
      
      override protected function loadNextLevel() : void
      {
         if(!this.§ B§(§ !p§.currentLevel) || !this.§ B§(§ !p§.getNextLevelId()))
         {
            §0"B§(this.getMenuButtonTargetState());
         }
         else
         {
            super.loadNextLevel();
         }
      }
      
      override protected function getRankForLevel() : int
      {
         return §-!w§(§;"@§.singleton.dataModel).§2!J§.getRankForLevel(§ !p§.currentLevel);
      }
   }
}
