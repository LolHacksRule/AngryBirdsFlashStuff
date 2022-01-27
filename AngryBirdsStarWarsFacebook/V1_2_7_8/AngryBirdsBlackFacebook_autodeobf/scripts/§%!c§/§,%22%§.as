package §%!c§
{
   import §!X§.§!"A§;
   import §'+§.§="B§;
   import §,#+§.§7!m§;
   import §1!o§.§<"]§;
   import §4##§.§7!B§;
   import §4m§.§5!R§;
   import §4m§.§^T§;
   import §6"e§.§+!§;
   import §8"h§.§!w§;
   import §;q§.§ true§;
   import §<"s§.§0u§;
   import §<"s§.EnergyOutPopup;
   import §`"8§.§-!w§;
   import §`"8§.§>6§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.utils.getTimer;
   
   public class §,"%§ extends §!"A§
   {
      
      public static const §'#2§:String = "stateTournamentLevelEndFail";
       
      
      private var §<""§:Number;
      
      private var §#"r§:§!w§;
      
      private var §@!%§:MovieClip;
      
      private var §8!H§:Boolean;
      
      public function §,"%§(param1:§7!m§, param2:§="B§, param3:Boolean = false, param4:String = "stateTournamentLevelEndFail")
      {
         super(param1,param2,param3,param4);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§@!%§ = §#"A§.mClip.unlockTimer;
         this.§#"r§ = new §!w§(§#"A§,§-!w§(§;"@§.singleton.dataModel).§9"1§.§@!&§.§]"j§,true);
         this.§!!w§();
         this.setButtonAlignment();
         §-!w§(§;"@§.singleton.dataModel).§2!J§.addEventListener(§>6§.§ !A§,this.onTournamentOver);
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
         if(§ !p§.isCutSceneNext())
         {
            §+"g§.setVisibility(false);
         }
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
      
      override protected function setButtonAlignment() : void
      {
         var _loc2_:int = §%"X§ * 2;
         _loc2_ += 0;
         _loc2_ += !!§<"F§() ? §!!o§ + §%"X§ : 0;
         var _loc3_:int = -_loc2_ / 2 + §["8§;
         §"V§.x = _loc3_;
         _loc3_ += §!!o§ + §%"X§;
         §;"i§.x = _loc3_;
         _loc3_ += §!!o§ + §%"X§;
         § "4§.view.visible = false;
         §#"A§.x = _loc3_;
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§7!B§) : void
      {
         var _loc5_:§-!w§ = null;
         var _loc6_:§>6§ = null;
         var _loc7_:§5!R§ = null;
         var _loc4_:* = §-!w§(§;"@§.singleton.dataModel).§`!§.energy > 0;
         switch(param2)
         {
            case "NEXT_LEVEL":
               if(this.§#"r§.isLocked)
               {
                  if(this.§#"r§.canBuyToUnlock)
                  {
                     if((_loc5_ = §-!w§(§;"@§.singleton.dataModel)).§;L§.starCoins >= this.§#"r§.§,"=§)
                     {
                        this.§#"r§.canBuyToUnlock = false;
                        _loc6_ = §-!w§(§;"@§.singleton.dataModel).§2!J§;
                        this.§8!H§ = _loc6_.§4,§;
                        _loc6_.§4,§ = true;
                        _loc5_.§;L§.§1"F§(this.§#"r§.§,"=§);
                        _loc5_.§9"1§.addEventListener(§<"]§.§2"S§,this.§6O§);
                        _loc5_.§9"1§.§!l§(new § true§("TournamentLevel",1,this.§#"r§.§,"=§));
                     }
                     else
                     {
                        §;"@§.singleton.popupManager.openPopup(new §+!§(§0u§.§1"J§,§^T§.TOP,§+!§.§7!W§),true,true,true);
                     }
                  }
                  return;
               }
            case "REPLAY":
               if(!_loc4_)
               {
                  _loc7_ = new EnergyOutPopup(§0u§.§1"J§,§^T§.TOP);
                  §;"@§.singleton.popupManager.openPopup(_loc7_,true,true,true);
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
         this.§#"r§.dispose();
         this.§#"r§ = null;
         §-!w§(§;"@§.singleton.dataModel).§9"1§.removeEventListener(§<"]§.§2"S§,this.§6O§);
         §>I§.movieClip.removeEventListener(Event.ENTER_FRAME,this.§`_§);
         §-!w§(§;"@§.singleton.dataModel).§2!J§.removeEventListener(§>6§.§ !A§,this.onTournamentOver);
         super.deActivate();
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
      
      private function onTournamentOver(param1:Event) : void
      {
         §0"B§(§@!#§.§'#2§);
      }
      
      override protected function getLevelLoadState() : String
      {
         return §4"O§.§'#2§;
      }
      
      override protected function getLevelSelectionState() : String
      {
         return §@!#§.§'#2§;
      }
      
      override protected function getCutSceneState() : String
      {
         return §;"h§.§'#2§;
      }
      
      override protected function getPlayState() : String
      {
         return §2![§.§'#2§;
      }
   }
}
