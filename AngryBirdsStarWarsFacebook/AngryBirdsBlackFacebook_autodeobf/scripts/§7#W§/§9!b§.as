package §7#W§
{
   import §!"W§.§="g§;
   import §!"e§.EnergyOutPopup;
   import §!"e§.§`"W§;
   import §,"N§.§@"b§;
   import §,"N§.§@#B§;
   import §2!f§.§]!J§;
   import §7K§.§,T§;
   import §;"Y§.§&#X§;
   import §<"c§.§'!'§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   import §[!m§.§+5§;
   import §[!m§.§[!j§;
   import §^!v§.§5!N§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.utils.getTimer;
   
   public class §9!b§ extends §'!'§
   {
      
      public static const §^!7§:String = "stateTournamentLevelEndFail";
       
      
      private var §5"a§:Number;
      
      private var § <§:§5!N§;
      
      private var §6"7§:MovieClip;
      
      private var §?#F§:Boolean;
      
      public function §9!b§(param1:§+"2§, param2:§5"H§, param3:Boolean = false, param4:String = "stateTournamentLevelEndFail")
      {
         super(param1,param2,param3,param4);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§6"7§ = §9!#§.mClip.unlockTimer;
         this.§ <§ = new §5!N§(§9!#§,§@#B§(§4#;§.singleton.dataModel).§1!f§.§^5§.§2"^§,true);
         this.§]"R§();
         this.setButtonAlignment();
         §@#B§(§4#;§.singleton.dataModel).§!!C§.addEventListener(§@"b§.§3R§,this.onTournamentOver);
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
         if(§+!b§.isCutSceneNext())
         {
            §]"b§.setVisibility(false);
         }
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
      
      override protected function setButtonAlignment() : void
      {
         var _loc2_:int = §,#9§ * 2;
         _loc2_ += 0;
         _loc2_ += !!§%!s§() ? §5"n§ + §,#9§ : 0;
         var _loc3_:int = -_loc2_ / 2 + §<!K§;
         §^W§.x = _loc3_;
         _loc3_ += §5"n§ + §,#9§;
         §5"t§.x = _loc3_;
         _loc3_ += §5"n§ + §,#9§;
         §8!X§.view.visible = false;
         §9!#§.x = _loc3_;
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
      {
         var _loc5_:§@#B§ = null;
         var _loc6_:§@"b§ = null;
         var _loc7_:§[!j§ = null;
         var _loc4_:* = §@#B§(§4#;§.singleton.dataModel).§^"J§.energy > 0;
         switch(param2)
         {
            case "NEXT_LEVEL":
               if(this.§ <§.isLocked)
               {
                  if(this.§ <§.canBuyToUnlock)
                  {
                     if((_loc5_ = §@#B§(§4#;§.singleton.dataModel)).§`!W§.starCoins >= this.§ <§.§?!N§)
                     {
                        this.§ <§.canBuyToUnlock = false;
                        _loc6_ = §@#B§(§4#;§.singleton.dataModel).§!!C§;
                        this.§?#F§ = _loc6_.§!!e§;
                        _loc6_.§!!e§ = true;
                        _loc5_.§`!W§.§12§(this.§ <§.§?!N§);
                        _loc5_.§1!f§.addEventListener(§="g§.§=#2§,this.§"#^§);
                        _loc5_.§1!f§.§9?§(new §,T§("TournamentLevel",1,this.§ <§.§?!N§));
                     }
                     else
                     {
                        _loc7_ = §]!J§.§9P§(§`"W§.§+v§,§+5§.TOP,§]!J§.§[!v§);
                        §4#;§.singleton.popupManager.openPopup(_loc7_,true,true,true);
                     }
                  }
                  return;
               }
            case "REPLAY":
               if(!_loc4_)
               {
                  _loc7_ = new EnergyOutPopup(§`"W§.§+v§,§+5§.TOP);
                  §4#;§.singleton.popupManager.openPopup(_loc7_,true,true,true);
               }
               else
               {
                  super.onUIInteraction(param1,param2,param3);
               }
               break;
            default:
               super.onUIInteraction(param1,param2,param3);
         }
      }
      
      override public function deActivate() : void
      {
         this.§ <§.dispose();
         this.§ <§ = null;
         §@#B§(§4#;§.singleton.dataModel).§1!f§.removeEventListener(§="g§.§=#2§,this.§"#^§);
         §@;§.movieClip.removeEventListener(Event.ENTER_FRAME,this.§-!u§);
         §@#B§(§4#;§.singleton.dataModel).§!!C§.removeEventListener(§@"b§.§3R§,this.onTournamentOver);
         super.deActivate();
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
      
      private function onTournamentOver(param1:Event) : void
      {
         § g§(§6!W§.§^!7§);
      }
      
      override protected function getLevelLoadState() : String
      {
         return §2O§.§^!7§;
      }
      
      override protected function getLevelSelectionState() : String
      {
         return §6!W§.§^!7§;
      }
      
      override protected function getCutSceneState() : String
      {
         return §8!]§.§^!7§;
      }
      
      override protected function getPlayState() : String
      {
         return §2&§.§^!7§;
      }
   }
}
