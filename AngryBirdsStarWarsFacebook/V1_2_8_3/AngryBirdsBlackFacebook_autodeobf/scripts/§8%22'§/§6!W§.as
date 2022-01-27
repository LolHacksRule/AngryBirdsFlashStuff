package §8"'§
{
   import §"#§.§"G§;
   import §%"Q§.§0!F§;
   import §&!j§.§5#+§;
   import §+"Y§.EnergyOutPopup;
   import §+"Y§.§^!S§;
   import §+"x§.§2!s§;
   import §+"x§.§3!§;
   import §6"-§.§^!Q§;
   import §8!h§.§-V§;
   import §9"U§.§7"1§;
   import §9"U§.§[!s§;
   import §98§.§'"M§;
   import §?!u§.§9"D§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.utils.getTimer;
   import §null §.§5#§;
   
   public class §6!W§ extends §0!F§
   {
      
      public static const §-!U§:String = "stateTournamentLevelEndFail";
       
      
      private var §&"N§:Number;
      
      private var §5"-§:§"G§;
      
      private var §^!R§:MovieClip;
      
      private var §""B§:Boolean;
      
      public function §6!W§(param1:§5#§, param2:§5#+§, param3:Boolean = false, param4:String = "stateTournamentLevelEndFail")
      {
         super(param1,param2,param3,param4);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§^!R§ = §<!k§.mClip.unlockTimer;
         this.§5"-§ = new §"G§(§<!k§,§7"1§(§4"#§.singleton.dataModel).§,!6§.§"y§.§?2§,true);
         this.§%!P§();
         this.setButtonAlignment();
         §7"1§(§4"#§.singleton.dataModel).§1z§.addEventListener(§[!s§.§,!4§,this.onTournamentOver);
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
         if(§'""§.isCutSceneNext())
         {
            §>"C§.setVisibility(false);
         }
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
      
      override protected function setButtonAlignment() : void
      {
         var _loc2_:int = §2!z§ * 2;
         _loc2_ += 0;
         _loc2_ += !!§7"0§() ? §##&§ + §2!z§ : 0;
         var _loc3_:int = -_loc2_ / 2 + §7!E§;
         §%N§.x = _loc3_;
         _loc3_ += §##&§ + §2!z§;
         §!'§.x = _loc3_;
         _loc3_ += §##&§ + §2!z§;
         §^#+§.view.visible = false;
         §<!k§.x = _loc3_;
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§-V§) : void
      {
         var _loc5_:§7"1§ = null;
         var _loc6_:§[!s§ = null;
         var _loc7_:§3!§ = null;
         var _loc4_:* = §7"1§(§4"#§.singleton.dataModel).§9"$§.energy > 0;
         switch(param2)
         {
            case "NEXT_LEVEL":
               if(this.§5"-§.isLocked)
               {
                  if(this.§5"-§.canBuyToUnlock)
                  {
                     if((_loc5_ = §7"1§(§4"#§.singleton.dataModel)).§&!w§.starCoins >= this.§5"-§.§5!T§)
                     {
                        this.§5"-§.canBuyToUnlock = false;
                        _loc6_ = §7"1§(§4"#§.singleton.dataModel).§1z§;
                        this.§""B§ = _loc6_.§9"K§;
                        _loc6_.§9"K§ = true;
                        _loc5_.§&!w§.§&"-§(this.§5"-§.§5!T§);
                        _loc5_.§,!6§.addEventListener(§9"D§.§3s§,this.§1k§);
                        _loc5_.§,!6§.§&!Q§(new §'"M§("TournamentLevel",1,this.§5"-§.§5!T§));
                     }
                     else
                     {
                        _loc7_ = §^!Q§.§>"[§(§^!S§.§'"c§,§2!s§.TOP,§^!Q§.§5!5§);
                        §4"#§.singleton.popupManager.openPopup(_loc7_,true,true,true);
                     }
                  }
                  return;
               }
            case "REPLAY":
               if(!_loc4_)
               {
                  _loc7_ = new EnergyOutPopup(§^!S§.§'"c§,§2!s§.TOP);
                  §4"#§.singleton.popupManager.openPopup(_loc7_,true,true,true);
                  break;
               }
               super.onUIInteraction(param1,param2,param3);
               break;
            default:
               super.onUIInteraction(param1,param2,param3);
         }
      }
      
      override public function deActivate() : void
      {
         this.§5"-§.dispose();
         this.§5"-§ = null;
         §7"1§(§4"#§.singleton.dataModel).§,!6§.removeEventListener(§9"D§.§3s§,this.§1k§);
         §^!b§.movieClip.removeEventListener(Event.ENTER_FRAME,this.§^!<§);
         §7"1§(§4"#§.singleton.dataModel).§1z§.removeEventListener(§[!s§.§,!4§,this.onTournamentOver);
         super.deActivate();
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
      
      private function onTournamentOver(param1:Event) : void
      {
         §`0§(§4!T§.§-!U§);
      }
      
      override protected function getLevelLoadState() : String
      {
         return §-0§.§-!U§;
      }
      
      override protected function getLevelSelectionState() : String
      {
         return §4!T§.§-!U§;
      }
      
      override protected function getCutSceneState() : String
      {
         return §#!0§.§-!U§;
      }
      
      override protected function getPlayState() : String
      {
         return §0h§.§-!U§;
      }
   }
}
