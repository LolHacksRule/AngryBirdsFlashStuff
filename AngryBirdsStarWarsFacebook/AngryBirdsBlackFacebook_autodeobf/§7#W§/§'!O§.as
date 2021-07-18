package §7#W§
{
   import § "4§.§7q§;
   import § "4§.UserProgressEvent;
   import §!"W§.§="g§;
   import §!"e§.EnergyOutPopup;
   import §!"e§.§`"W§;
   import §+!!§.§9"i§;
   import §,"N§.§8"3§;
   import §,"N§.§@"b§;
   import §,"N§.§@#B§;
   import §2!f§.§]!J§;
   import §3§.§1"M§;
   import §3§.§<#A§;
   import §7K§.§,T§;
   import §;"Y§.§&#X§;
   import §;"Y§.§]#X§;
   import §<"c§.§?!W§;
   import §="2§.§?!r§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   import §[!m§.§+5§;
   import §[!m§.§[!j§;
   import §^!v§.§5!N§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.utils.getTimer;
   
   public class §'!O§ extends §?!W§
   {
      
      public static const §^!7§:String = "stateTournamentLevelEnd";
       
      
      private var §5"a§:Number;
      
      private var § <§:§5!N§;
      
      private var §6"7§:MovieClip;
      
      private var §?#F§:Boolean;
      
      public function §'!O§(param1:§+"2§, param2:§5"H§, param3:Boolean = false, param4:String = "stateTournamentLevelEnd")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function get restartUsesEnergyCrystal() : Boolean
      {
         return true;
      }
      
      override public function getMenuButtonTargetState() : String
      {
         return §6!W§.§^!7§;
      }
      
      override protected function getStateLevelLoadState() : String
      {
         return §2O§.§^!7§;
      }
      
      override protected function getCutSceneState() : String
      {
         return §8!]§.§^!7§;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§6"7§ = §9!#§.mClip.unlockTimer;
         this.§ <§ = new §5!N§(§9!#§,§@#B§(§4#;§.singleton.dataModel).§1!f§.§^5§.§2"^§,true);
         this.§?#F§ = false;
         this.§]"R§();
         §@#B§(§4#;§.singleton.dataModel).§!!C§.addEventListener(§@"b§.§3R§,this.onTournamentOver);
         if(this.§3"A§)
         {
            §@#B§(§4#;§.singleton.dataModel).§%!?§.§+#U§(§8"3§.§@"U§);
            §4#;§.singleton.popupManager.openPopup(new §9"i§(§`"W§.§+v§,§+5§.TOP,§9"i§.§8i§,true),true,true,false);
         }
      }
      
      override protected function setScoreData() : void
      {
         this.§#$§();
         super.setScoreData();
         if(!§<!L§)
         {
            §7q§(§4#;§.singleton.dataModel.userProgress).saveLevelProgress(§+!b§.currentLevel,false,true);
         }
      }
      
      protected function §#$§() : void
      {
         var _loc1_:int = §4#;§.singleton.dataModel.userProgress.getStarsForLevel(§+!b§.currentLevel,§@#B§(§4#;§.singleton.dataModel).§!!C§.getScoreForLevel(§+!b§.currentLevel));
         var _loc2_:§]#X§ = §@;§.getItemByName("MovieClip_CoinLeft");
         var _loc3_:§]#X§ = §@;§.getItemByName("MovieClip_CoinMiddle");
         var _loc4_:§]#X§ = §@;§.getItemByName("MovieClip_CoinRight");
         var _loc5_:Array = §@#B§(§4#;§.singleton.dataModel).§!!C§.starCoinRewards;
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
         var _loc3_:MovieClip = §@;§.getItemByName(["MovieClip_CoinLeft","MovieClip_CoinMiddle","MovieClip_CoinRight"][_loc2_]).mClip;
         _loc3_.gotoAndStop(2);
         _loc3_.txtAmount.text = "x" + §@#B§(§4#;§.singleton.dataModel).§!!C§.starCoinRewards[_loc2_];
         if(_loc3_.visible == true)
         {
            _loc4_ = [10,20,30][_loc2_];
            §0!r§ = new §<#A§(§4#;§.screenWidth,§4#;§.screenHeight,_loc3_.x + §^c§.x + 70,_loc3_.y + §^c§.y + 70,[§<#A§.§=!D§,§<#A§.§!&§,§<#A§.§?b§][_loc2_],_loc4_,§1"M§.§&!y§);
            §@;§.addChild(§0!r§);
            §%#>§.push(§0!r§);
         }
      }
      
      private function §]"R§() : void
      {
         var _loc6_:Object = null;
         var _loc1_:§@"b§ = §@#B§(§4#;§.singleton.dataModel).§!!C§;
         var _loc2_:Object = _loc1_.§["^§(§+!b§.currentLevel);
         var _loc3_:int = _loc1_.levelObjects.indexOf(_loc2_);
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc3_ + 1 < _loc1_.levelObjects.length)
         {
            if((_loc6_ = _loc1_.levelObjects[_loc3_ + 1]).unlocksAt && _loc6_.unlocksAt > getTimer())
            {
               _loc4_ = true;
               _loc5_ = true;
               this.§5"a§ = _loc6_.unlocksAt;
               §@;§.movieClip.removeEventListener(Event.ENTER_FRAME,this.§-!u§);
               §@;§.movieClip.addEventListener(Event.ENTER_FRAME,this.§-!u§);
            }
         }
         else
         {
            _loc4_ = false;
         }
         §9!#§.setVisibility(_loc4_);
         this.§ <§.isLocked = _loc5_;
         if(_loc6_)
         {
            this.§ <§.§5!_§ = _loc6_;
         }
      }
      
      override protected function saveLevelProgress() : void
      {
         §@!m§(§4#;§.singleton).§1g§(§+!b§.currentLevel,true);
         §7q§(§4#;§.singleton.dataModel.userProgress).addEventListener(UserProgressEvent.§3#V§,§6d§);
         §7q§(§4#;§.singleton.dataModel.userProgress).saveLevelProgress(§+!b§.currentLevel,false,true);
      }
      
      override public function deActivate() : void
      {
         this.§ <§.dispose();
         this.§ <§ = null;
         §@#B§(§4#;§.singleton.dataModel).§1!f§.removeEventListener(§="g§.§=#2§,this.§"#^§);
         §@;§.movieClip.removeEventListener(Event.ENTER_FRAME,this.§-!u§);
         super.deActivate();
         §@#B§(§4#;§.singleton.dataModel).§!!C§.removeEventListener(§@"b§.§3R§,this.onTournamentOver);
      }
      
      private function get §3"A§() : Boolean
      {
         var _loc1_:Number = §@#B§(§4#;§.singleton.dataModel).§%!?§.§5">§(§8"3§.§@"U§);
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
         § g§(§6!W§.§^!7§);
      }
      
      private function §-!u§(param1:Event) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc2_:Number = Math.floor((this.§5"a§ - getTimer()) / 1000);
         if(_loc2_ > 0)
         {
            _loc3_ = _loc2_ / (60 * 60 * 24);
            if(_loc3_ > 0)
            {
               if(_loc3_ > 4)
               {
                  _loc3_ = 4;
               }
               this.§6"7§.gotoAndStop("days_" + _loc3_);
               this.§6"7§.txtTimer.visible = false;
            }
            else
            {
               this.§6"7§.gotoAndStop("hours");
               this.§6"7§.txtTimer.visible = true;
               if(_loc2_ < 60)
               {
                  this.§6"7§.txtTimer.text = _loc2_.toString() + " sec";
               }
               else
               {
                  _loc2_ += 60;
                  _loc4_ = _loc2_ / (60 * 60);
                  _loc5_ = (_loc2_ - _loc4_ * (60 * 60)) / 60;
                  this.§6"7§.txtTimer.text = (_loc4_ < 10 ? "0" : "") + _loc4_ + ":" + (_loc5_ < 10 ? "0" : "") + _loc5_;
               }
            }
         }
         else
         {
            this.§+n§();
         }
      }
      
      protected function §+n§() : void
      {
         if(this.§ <§.§5!_§)
         {
            delete this.§ <§.§5!_§.unlocksAt;
            this.§ <§.§5!_§ = null;
         }
         §@;§.movieClip.removeEventListener(Event.ENTER_FRAME,this.§-!u§);
         this.§ <§.isLocked = false;
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
      {
         var _loc4_:§@#B§ = null;
         var _loc5_:§@"b§ = null;
         var _loc6_:§[!j§ = null;
         if((param2 == "REPLAY" || param2 == "NEXT_LEVEL") && §@#B§(§4#;§.singleton.dataModel).§^"J§.energy <= 0)
         {
            §4#;§.singleton.popupManager.openPopup(new EnergyOutPopup(§`"W§.§+v§,§+5§.TOP),true,true,true);
            return;
         }
         if(param2 == "REPLAY")
         {
            if(!this.§7"e§(§+!b§.currentLevel))
            {
               § g§(this.getMenuButtonTargetState());
               return;
            }
         }
         if(param2 == "NEXT_LEVEL")
         {
            if(this.§ <§.isLocked)
            {
               if(this.§ <§.canBuyToUnlock)
               {
                  if((_loc4_ = §@#B§(§4#;§.singleton.dataModel)).§`!W§.starCoins >= this.§ <§.§?!N§)
                  {
                     this.§ <§.canBuyToUnlock = false;
                     _loc5_ = §@#B§(§4#;§.singleton.dataModel).§!!C§;
                     this.§?#F§ = _loc5_.§!!e§;
                     _loc5_.§!!e§ = true;
                     _loc4_.§`!W§.§12§(this.§ <§.§?!N§);
                     _loc4_.§1!f§.addEventListener(§="g§.§=#2§,this.§"#^§);
                     _loc4_.§1!f§.§9?§(new §,T§("TournamentLevel",1,this.§ <§.§?!N§));
                     §?!r§.§"#_§("black_shop_purchase");
                  }
                  else
                  {
                     _loc6_ = §]!J§.§9P§(§`"W§.§+v§,§+5§.TOP,§]!J§.§[!v§);
                     §4#;§.singleton.popupManager.openPopup(_loc6_,true,true,true);
                  }
               }
               return;
            }
         }
         super.onUIInteraction(param1,param2,param3);
      }
      
      private function §"#^§(param1:§="g§) : void
      {
         var _loc2_:§@"b§ = null;
         §@#B§(§4#;§.singleton.dataModel).§1!f§.removeEventListener(§="g§.§=#2§,this.§"#^§);
         if(!this.§?#F§)
         {
            _loc2_ = §@#B§(§4#;§.singleton.dataModel).§!!C§;
            _loc2_.§!!e§ = false;
         }
         this.§+n§();
         this.onUIInteraction(-1,"NEXT_LEVEL",§,>§);
      }
      
      private function §7"e§(param1:String) : Boolean
      {
         var _loc2_:§@"b§ = §@#B§(§4#;§.singleton.dataModel).§!!C§;
         return !_loc2_.isLoading && _loc2_.§["^§(§+!b§.currentLevel) != null;
      }
      
      override protected function loadNextLevel() : void
      {
         if(!this.§7"e§(§+!b§.currentLevel) || !this.§7"e§(§+!b§.getNextLevelId()))
         {
            § g§(this.getMenuButtonTargetState());
         }
         else
         {
            super.loadNextLevel();
         }
      }
      
      override protected function getRankForLevel() : int
      {
         return §@#B§(§4#;§.singleton.dataModel).§!!C§.getRankForLevel(§+!b§.currentLevel);
      }
   }
}
