package §8"'§
{
   import §"#§.§"G§;
   import §%"Q§.§?!W§;
   import §&!j§.§5#+§;
   import §+"Y§.EnergyOutPopup;
   import §+"Y§.§^!S§;
   import §+"x§.§2!s§;
   import §+"x§.§3!§;
   import §6"-§.§^!Q§;
   import §8!h§.§-V§;
   import §8!h§.§[Z§;
   import §9!a§.§&!q§;
   import §9!a§.§]a§;
   import §9"U§.§7"1§;
   import §9"U§.§;9§;
   import §9"U§.§[!s§;
   import §98§.§'"M§;
   import §;!3§.§^"z§;
   import §?!u§.§9"D§;
   import §`"1§.§=Q§;
   import §`"n§.§""r§;
   import §`"n§.UserProgressEvent;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.utils.getTimer;
   import §null §.§5#§;
   
   public class §`k§ extends §?!W§
   {
      
      public static const §-!U§:String = "stateTournamentLevelEnd";
       
      
      private var §&"N§:Number;
      
      private var §5"-§:§"G§;
      
      private var §^!R§:MovieClip;
      
      private var §""B§:Boolean;
      
      public function §`k§(param1:§5#§, param2:§5#+§, param3:Boolean = false, param4:String = "stateTournamentLevelEnd")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function get restartUsesEnergyCrystal() : Boolean
      {
         return true;
      }
      
      override public function getMenuButtonTargetState() : String
      {
         return §4!T§.§-!U§;
      }
      
      override protected function getStateLevelLoadState() : String
      {
         return §-0§.§-!U§;
      }
      
      override protected function getCutSceneState() : String
      {
         return §#!0§.§-!U§;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§^!R§ = §<!k§.mClip.unlockTimer;
         this.§5"-§ = new §"G§(§<!k§,§7"1§(§4"#§.singleton.dataModel).§,!6§.§"y§.§?2§,true);
         this.§""B§ = false;
         this.§%!P§();
         §7"1§(§4"#§.singleton.dataModel).§1z§.addEventListener(§[!s§.§,!4§,this.onTournamentOver);
         if(this.§6!E§)
         {
            §7"1§(§4"#§.singleton.dataModel).§!"H§.§7"H§(§;9§.§6&§);
            §4"#§.singleton.popupManager.openPopup(new §^"z§(§^!S§.§'"c§,§2!s§.TOP,§^"z§.§5"t§,true),true,true,false);
         }
      }
      
      override protected function setScoreData() : void
      {
         this.§^!0§();
         super.setScoreData();
         if(!§#$§)
         {
            §""r§(§4"#§.singleton.dataModel.userProgress).saveLevelProgress(§'""§.currentLevel,false,true);
         }
      }
      
      protected function §^!0§() : void
      {
         var _loc1_:int = §4"#§.singleton.dataModel.userProgress.getStarsForLevel(§'""§.currentLevel,§7"1§(§4"#§.singleton.dataModel).§1z§.getScoreForLevel(§'""§.currentLevel));
         var _loc2_:§[Z§ = §^!b§.getItemByName("MovieClip_CoinLeft");
         var _loc3_:§[Z§ = §^!b§.getItemByName("MovieClip_CoinMiddle");
         var _loc4_:§[Z§ = §^!b§.getItemByName("MovieClip_CoinRight");
         var _loc5_:Array = §7"1§(§4"#§.singleton.dataModel).§1z§.starCoinRewards;
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
         var _loc3_:MovieClip = §^!b§.getItemByName(["MovieClip_CoinLeft","MovieClip_CoinMiddle","MovieClip_CoinRight"][_loc2_]).mClip;
         _loc3_.gotoAndStop(2);
         _loc3_.txtAmount.text = "x" + §7"1§(§4"#§.singleton.dataModel).§1z§.starCoinRewards[_loc2_];
         if(_loc3_.visible == true)
         {
            _loc4_ = [10,20,30][_loc2_];
            §4#-§ = new §&!q§(§4"#§.screenWidth,§4"#§.screenHeight,_loc3_.x + §[#,§.x + 70,_loc3_.y + §[#,§.y + 70,[§&!q§.§[0§,§&!q§.§=!N§,§&!q§.§[">§][_loc2_],_loc4_,§]a§.§+!#§);
            §^!b§.addChild(§4#-§);
            §["P§.push(§4#-§);
         }
      }
      
      private function §%!P§() : void
      {
         var _loc6_:Object = null;
         var _loc1_:§[!s§ = §7"1§(§4"#§.singleton.dataModel).§1z§;
         var _loc2_:Object = _loc1_.§9<§(§'""§.currentLevel);
         var _loc3_:int = _loc1_.levelObjects.indexOf(_loc2_);
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc3_ + 1 < _loc1_.levelObjects.length)
         {
            if((_loc6_ = _loc1_.levelObjects[_loc3_ + 1]).unlocksAt && _loc6_.unlocksAt > getTimer())
            {
               _loc4_ = true;
               _loc5_ = true;
               this.§&"N§ = _loc6_.unlocksAt;
               §^!b§.movieClip.removeEventListener(Event.ENTER_FRAME,this.§^!<§);
               §^!b§.movieClip.addEventListener(Event.ENTER_FRAME,this.§^!<§);
            }
         }
         else
         {
            _loc4_ = false;
         }
         §<!k§.setVisibility(_loc4_);
         this.§5"-§.isLocked = _loc5_;
         if(_loc6_)
         {
            this.§5"-§.§@X§ = _loc6_;
         }
      }
      
      override protected function saveLevelProgress() : void
      {
         §throw§(§4"#§.singleton).§9F§(§'""§.currentLevel,true);
         §""r§(§4"#§.singleton.dataModel.userProgress).addEventListener(UserProgressEvent.§"_§,§<"D§);
         §""r§(§4"#§.singleton.dataModel.userProgress).saveLevelProgress(§'""§.currentLevel,false,true);
      }
      
      override public function deActivate() : void
      {
         this.§5"-§.dispose();
         this.§5"-§ = null;
         §7"1§(§4"#§.singleton.dataModel).§,!6§.removeEventListener(§9"D§.§3s§,this.§1k§);
         §^!b§.movieClip.removeEventListener(Event.ENTER_FRAME,this.§^!<§);
         super.deActivate();
         §7"1§(§4"#§.singleton.dataModel).§1z§.removeEventListener(§[!s§.§,!4§,this.onTournamentOver);
      }
      
      private function get §6!E§() : Boolean
      {
         var _loc1_:Number = §7"1§(§4"#§.singleton.dataModel).§!"H§.§`"x§(§;9§.§6&§);
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
         §`0§(§4!T§.§-!U§);
      }
      
      private function §^!<§(param1:Event) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc2_:Number = Math.floor((this.§&"N§ - getTimer()) / 1000);
         if(_loc2_ > 0)
         {
            _loc3_ = _loc2_ / (60 * 60 * 24);
            if(_loc3_ > 0)
            {
               if(_loc3_ > 4)
               {
                  _loc3_ = 4;
               }
               this.§^!R§.gotoAndStop("days_" + _loc3_);
               this.§^!R§.txtTimer.visible = false;
            }
            else
            {
               this.§^!R§.gotoAndStop("hours");
               this.§^!R§.txtTimer.visible = true;
               if(_loc2_ < 60)
               {
                  this.§^!R§.txtTimer.text = _loc2_.toString() + " sec";
               }
               else
               {
                  _loc2_ += 60;
                  _loc4_ = _loc2_ / (60 * 60);
                  _loc5_ = (_loc2_ - _loc4_ * (60 * 60)) / 60;
                  this.§^!R§.txtTimer.text = (_loc4_ < 10 ? "0" : "") + _loc4_ + ":" + (_loc5_ < 10 ? "0" : "") + _loc5_;
               }
            }
         }
         else
         {
            this.§ #-§();
         }
      }
      
      protected function § #-§() : void
      {
         if(this.§5"-§.§@X§)
         {
            delete this.§5"-§.§@X§.unlocksAt;
            this.§5"-§.§@X§ = null;
         }
         §^!b§.movieClip.removeEventListener(Event.ENTER_FRAME,this.§^!<§);
         this.§5"-§.isLocked = false;
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§-V§) : void
      {
         var _loc4_:§7"1§ = null;
         var _loc5_:§[!s§ = null;
         var _loc6_:§3!§ = null;
         if((param2 == "REPLAY" || param2 == "NEXT_LEVEL") && §7"1§(§4"#§.singleton.dataModel).§9"$§.energy <= 0)
         {
            §4"#§.singleton.popupManager.openPopup(new EnergyOutPopup(§^!S§.§'"c§,§2!s§.TOP),true,true,true);
            return;
         }
         if(param2 == "REPLAY")
         {
            if(!this.§@!S§(§'""§.currentLevel))
            {
               §`0§(this.getMenuButtonTargetState());
               return;
            }
         }
         if(param2 == "NEXT_LEVEL")
         {
            if(this.§5"-§.isLocked)
            {
               if(this.§5"-§.canBuyToUnlock)
               {
                  if((_loc4_ = §7"1§(§4"#§.singleton.dataModel)).§&!w§.starCoins >= this.§5"-§.§5!T§)
                  {
                     this.§5"-§.canBuyToUnlock = false;
                     _loc5_ = §7"1§(§4"#§.singleton.dataModel).§1z§;
                     this.§""B§ = _loc5_.§9"K§;
                     _loc5_.§9"K§ = true;
                     _loc4_.§&!w§.§&"-§(this.§5"-§.§5!T§);
                     _loc4_.§,!6§.addEventListener(§9"D§.§3s§,this.§1k§);
                     _loc4_.§,!6§.§&!Q§(new §'"M§("TournamentLevel",1,this.§5"-§.§5!T§));
                     §=Q§.§`!A§("black_shop_purchase");
                  }
                  else
                  {
                     _loc6_ = §^!Q§.§>"[§(§^!S§.§'"c§,§2!s§.TOP,§^!Q§.§5!5§);
                     §4"#§.singleton.popupManager.openPopup(_loc6_,true,true,true);
                  }
               }
               return;
            }
         }
         super.onUIInteraction(param1,param2,param3);
      }
      
      private function §1k§(param1:§9"D§) : void
      {
         var _loc2_:§[!s§ = null;
         §7"1§(§4"#§.singleton.dataModel).§,!6§.removeEventListener(§9"D§.§3s§,this.§1k§);
         if(!this.§""B§)
         {
            _loc2_ = §7"1§(§4"#§.singleton.dataModel).§1z§;
            _loc2_.§9"K§ = false;
         }
         this.§ #-§();
         this.onUIInteraction(-1,"NEXT_LEVEL",§ ]§);
      }
      
      private function §@!S§(param1:String) : Boolean
      {
         var _loc2_:§[!s§ = §7"1§(§4"#§.singleton.dataModel).§1z§;
         return !_loc2_.isLoading && _loc2_.§9<§(§'""§.currentLevel) != null;
      }
      
      override protected function loadNextLevel() : void
      {
         if(!this.§@!S§(§'""§.currentLevel) || !this.§@!S§(§'""§.getNextLevelId()))
         {
            §`0§(this.getMenuButtonTargetState());
         }
         else
         {
            super.loadNextLevel();
         }
      }
      
      override protected function getRankForLevel() : int
      {
         return §7"1§(§4"#§.singleton.dataModel).§1z§.getRankForLevel(§'""§.currentLevel);
      }
   }
}
