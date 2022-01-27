package §&!c§
{
   import §!r§.§&$§;
   import §"§.§ !3§;
   import §"§.§%§;
   import §"§.§0F§;
   import §"[§.§""h§;
   import §'"A§.§!§;
   import §'"A§.§3"x§;
   import §+"Y§.§^!S§;
   import §+"x§.§2!s§;
   import §+"x§.§3!§;
   import §3§.§7"?§;
   import §3L§.§+!W§;
   import §4"m§.§>" §;
   import §9"U§.§7"1§;
   import §9"U§.§[!b§;
   import §=!4§.§8"U§;
   import §=Z§.§;g§;
   import §=Z§.§@!8§;
   import §?!u§.§?b§;
   import §`"1§.§=Q§;
   import §`"T§.§[l§;
   import com.angrybirds.§<!J§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   import §null §.§5#§;
   
   public class §5!m§ extends EventDispatcher
   {
      
      public static const §"!g§:int = 0;
      
      public static const §%"_§:int = 1;
      
      public static const §4r§:int = 2;
      
      public static const §&!f§:int = 3;
      
      public static const §9!@§:int = 4;
      
      public static const §]=§:String = "event_powerup_used";
      
      private static const §[!#§:int = 25;
      
      public static var §1U§:Boolean = false;
      
      public static var §8-§:Boolean = true;
       
      
      private var §!"I§:Number = 0;
      
      private var §8v§:Number;
      
      private var §,E§:Number;
      
      private var §-"1§:Number;
      
      private var §4#$§:Timer;
      
      protected var §'""§:§5#§;
      
      protected var §?!$§:§7"1§;
      
      protected var §3!m§:§@!8§;
      
      protected var §`!i§:§1#5§;
      
      protected var §&f§:Vector.<§[!z§>;
      
      protected var § !H§:§7"?§;
      
      public function §5!m§(param1:§@!8§, param2:§1#5§, param3:§7"1§, param4:§7"?§)
      {
         super();
         this.§3!m§ = param1;
         this.§`!i§ = param2;
         this.§?!$§ = param3;
         this.§ !H§ = param4;
         this.init();
      }
      
      public function set §^"E§(param1:§5#§) : void
      {
         this.§'""§ = param1;
      }
      
      public function get §"i§() : Boolean
      {
         return §1U§;
      }
      
      public function set §"i§(param1:Boolean) : void
      {
         §1U§ = param1;
      }
      
      private function init() : void
      {
         var _loc4_:String = null;
         var _loc5_:int = 0;
         var _loc6_:§!#2§ = null;
         var _loc7_:§;g§ = null;
         var _loc8_:§[!z§ = null;
         this.§,E§ = this.§3!m§.width - §[!#§;
         this.§-"1§ = this.§3!m§.height;
         this.§8v§ = this.§3!m§.x;
         this.§4#$§ = new Timer(1000,1);
         this.§4#$§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§9!b§);
         this.§&f§ = new Vector.<§[!z§>(0);
         var _loc1_:Vector.<String> = new <String>[§[!b§.§5n§,§[!b§.§+!y§,§[!b§.§]!&§];
         var _loc2_:Vector.<§!#2§> = this.§?!$§.§@!K§.§<!h§.§2d§;
         var _loc3_:int = 0;
         loop0:
         while(_loc3_ < _loc1_.length)
         {
            _loc4_ = _loc1_[_loc3_];
            _loc5_ = 0;
            while(_loc5_ < _loc2_.length)
            {
               if((_loc6_ = _loc2_[_loc5_]).§,!8§ == §3"x§.§ [§ && _loc6_.§1!b§ == _loc4_)
               {
                  if(!(_loc7_ = §;g§(this.§3!m§.getItemByName("Button_PowerUp" + _loc3_))))
                  {
                     throw new Error("--#PowerupsUIManager[init]:: Not enough visuals for powerups, missing[" + _loc6_.§1!b§ + "]");
                  }
                  (_loc8_ = new §[!z§(_loc7_,_loc6_.§1!b§)).addEventListener(§[!z§.§?"8§,this.§6Z§);
                  this.§&f§.push(_loc8_);
                  _loc3_++;
                  continue loop0;
               }
               _loc5_++;
            }
         }
      }
      
      public function dispose() : void
      {
         var _loc2_:§[!z§ = null;
         this.disable();
         this.§&f§.length = 0;
         this.§`!i§ = null;
         this.§ !H§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§&f§.length)
         {
            _loc2_ = this.§&f§[_loc1_];
            _loc2_.removeEventListener(§[!z§.§?"8§,this.§6Z§);
            _loc2_.dispose();
            _loc2_ = null;
            _loc1_++;
         }
      }
      
      public function enable() : void
      {
         this.§+u§();
         this.§7!W§(0);
         var _loc1_:int = 0;
         while(_loc1_ < this.§&f§.length)
         {
            this.§&f§[_loc1_].isDisabled = false;
            _loc1_++;
         }
         this.§?!$§.§@!K§.addEventListener(§?b§.§6,§,this.§2"s§);
         this.§3!m§.addEventListener(§8"U§.§`n§,this.onUIInteraction);
         this.§`!i§.view.addEventListener(§8"U§.§`n§,this.onUIInteraction);
         §0F§(§<!J§.§=!%§).§9N§.addEventListener(§+!W§.§,U§,this.§ "M§);
      }
      
      public function disable() : void
      {
         §0F§(§<!J§.§=!%§).§9N§.removeEventListener(§+!W§.§,U§,this.§ "M§);
         this.§3!m§.removeEventListener(§8"U§.§`n§,this.onUIInteraction);
         this.§`!i§.view.removeEventListener(§8"U§.§`n§,this.onUIInteraction);
         if(this.§4#$§)
         {
            this.§4#$§.stop();
         }
         this.§?!$§.§@!K§.removeEventListener(§?b§.§6,§,this.§2"s§);
         §8-§ = §1U§;
      }
      
      public function § ![§(param1:uint) : String
      {
         var _loc2_:§[!z§ = null;
         if(param1 < this.§&f§.length)
         {
            _loc2_ = this.§&f§[param1];
            return _loc2_.dataID;
         }
         return "";
      }
      
      public function update(param1:Number) : void
      {
         if(§<!J§.§=!%§.slingshot.mSlingShotState == §%#7§.§>k§ && !this.§4#$§.running)
         {
            this.§4#$§.reset();
            this.§4#$§.start();
         }
         this.§7!W§(param1);
      }
      
      protected function §,!Y§(param1:Number) : Boolean
      {
         if(§1U§)
         {
            this.§3!m§.setVisibility(true);
            if(this.§!"I§ < this.§,E§ - 20)
            {
               this.§!"I§ += 0.5 * param1;
               if(this.§!"I§ > this.§,E§ - 20)
               {
                  this.§!"I§ = this.§,E§ - 20;
               }
               return true;
            }
            if(this.§!"I§ > this.§,E§ - 20)
            {
               this.§!"I§ = this.§,E§ - 20;
               if(this.§!"I§ < this.§,E§ - 20)
               {
                  this.§!"I§ = this.§,E§ - 20;
               }
               return true;
            }
         }
         else if(this.§!"I§ > 0)
         {
            this.§!"I§ -= 0.5 * param1;
            if(this.§!"I§ <= 0)
            {
               this.§!"I§ = 0;
               this.§3!m§.setVisibility(false);
            }
            return true;
         }
         return false;
      }
      
      protected function §6Z§(param1:Event) : void
      {
         this.§=!#§();
      }
      
      protected function §=!#§() : void
      {
         var _loc2_:int = 0;
         var _loc3_:§[!z§ = null;
         var _loc1_:Boolean = false;
         if(!§1U§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§&f§.length)
            {
               _loc3_ = this.§&f§[_loc2_];
               if(_loc3_.§^<§)
               {
                  _loc1_ = true;
                  break;
               }
               _loc2_++;
            }
         }
         if(this.§`!i§)
         {
            this.§`!i§.§<7§(_loc1_);
         }
      }
      
      protected function §7!W§(param1:Number) : void
      {
         var _loc3_:Rectangle = null;
         this.§`!i§.update(param1);
         var _loc2_:Boolean = this.§,!Y§(param1);
         if(_loc2_)
         {
            _loc3_ = new Rectangle(this.§,E§ - this.§!"I§ - 20,0,this.§,E§ + 30,this.§-"1§);
            this.§3!m§.mClip.scrollRect = _loc3_;
         }
      }
      
      public function §@!Q§() : void
      {
         if(this.§`!i§.§ "3§ == true)
         {
            return;
         }
         if(§1U§)
         {
            §1U§ = false;
         }
         else
         {
            §1U§ = true;
         }
         this.§=!#§();
      }
      
      public function §#!@§(param1:Boolean = false) : void
      {
         var _loc2_:int = §0F§(§<!J§.§=!%§).§;!5§();
         if(_loc2_ >= § !3§.§3!<§)
         {
            return;
         }
         if(this.§`!i§.§ "3§ == true && !param1)
         {
            if(this.§`!i§.enabled == false)
            {
               this.§`!i§.show();
            }
            return;
         }
         this.§`!i§.§ "3§ = false;
         this.§`!i§.show();
         §1U§ = true;
         this.§5E§();
         this.§=!#§();
      }
      
      public function §2##§() : void
      {
         if(§1U§)
         {
            this.§4#$§.reset();
            this.§4#$§.start();
         }
         this.§`!i§.hide(!!§1U§ ? true : false);
         §1U§ = false;
         this.§+Z§();
         this.§=!#§();
      }
      
      public function §5E§() : void
      {
         var _loc1_:§[!z§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§&f§.length)
         {
            _loc1_ = this.§&f§[_loc2_];
            _loc1_.isDisabled = false;
            _loc2_++;
         }
      }
      
      public function §+Z§() : void
      {
         var _loc1_:§[!z§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§&f§.length)
         {
            _loc1_ = this.§&f§[_loc2_];
            _loc1_.isDisabled = true;
            _loc2_++;
         }
      }
      
      private function § "M§(param1:§+!W§) : void
      {
         if(param1.allowNextPowerUp)
         {
            this.§5E§();
         }
         else
         {
            this.§+Z§();
         }
      }
      
      private function §9!b§(param1:TimerEvent) : void
      {
         §1U§ = false;
      }
      
      public function § #,§(param1:String) : int
      {
         var _loc5_:§3!§ = null;
         var _loc6_:§[l§ = null;
         var _loc2_:§!#2§ = this.§?!$§.§@!K§.§<!h§.§%!u§(param1);
         if(_loc2_ == null)
         {
            throw new Error("Unknown powerup: " + param1);
         }
         var _loc3_:Boolean = this.§?!$§.§@!K§.§5!<§(_loc2_.§1!b§);
         var _loc4_:int;
         if((_loc4_ = this.§?!$§.§@!K§.§6"0§(_loc2_.§1!b§)) <= 0 && _loc3_ == false)
         {
            _loc5_ = new §>" §(§^!S§.§'J§,§2!s§.§@"$§,§""h§.§%!m§,_loc2_.§1!b§);
            §4"#§.singleton.popupManager.openPopup(_loc5_,true,true,true);
            return §4r§;
         }
         this.§[!B§(param1,false);
         if(_loc2_.§4"8§ && §0F§(§<!J§.§=!%§).§;!5§() >= § !3§.§3!<§)
         {
            this.§2##§();
            return §%"_§;
         }
         if(_loc2_.§,!8§ == §3"x§.§ [§ || _loc2_.§,!8§ == §3"x§.§<!j§)
         {
            if(§<!J§.§=!%§.slingshot.getBirdCount() <= 0)
            {
               return §&!f§;
            }
            if(§<!J§.§=!%§.slingshot.getCurrentBirdType() == §&$§.§5!L§)
            {
               return §9!@§;
            }
         }
         §0F§(§<!J§.§=!%§).§9N§.§ #,§(param1);
         this.§?!$§.§@!K§.§1!O§ = "";
         if(this.§?!$§.userProgress.hasTutorialBeenSeen(param1))
         {
            this.§ !H§.§7#5§(param1);
         }
         else
         {
            (_loc6_ = §4"#§.singleton.tutorialPopupManager).§!"+§(param1,§2!s§.TOP);
         }
         if(_loc2_.§4"8§ && §0F§(§<!J§.§=!%§).§;!5§() >= § !3§.§3!<§)
         {
            this.§2##§();
         }
         §=Q§.§`!A§("powerup_selected");
         dispatchEvent(new Event(§]=§));
         return §"!g§;
      }
      
      public function §[!B§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:§[!z§ = null;
         var _loc4_:int = 0;
         while(_loc4_ < this.§&f§.length)
         {
            _loc3_ = this.§&f§[_loc4_];
            if(_loc3_.dataID == param1)
            {
               _loc3_.isDisabled = !param2;
               return;
            }
            _loc4_++;
         }
      }
      
      private function §+u§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§&f§.length)
         {
            this.§&f§[_loc1_].count = this.§?!$§.§@!K§.§6"0§(this.§&f§[_loc1_].dataID);
            _loc1_++;
         }
      }
      
      private function §2"s§(param1:§?b§) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§&f§.length)
         {
            if(this.§&f§[_loc2_].dataID == param1.§8!#§)
            {
               this.§&f§[_loc2_].count = this.§?!$§.§@!K§.§6"0§(this.§&f§[_loc2_].dataID);
               return;
            }
            _loc2_++;
         }
      }
      
      protected function onUIInteraction(param1:§8"U§) : void
      {
         var _loc2_:int = 0;
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:Boolean = false;
         if(param1.§5!u§.indexOf("USE_POWERUP_") != -1)
         {
            _loc2_ = parseInt(param1.§5!u§.substr(String("USE_POWERUP_").length));
            _loc3_ = this.§ ![§(_loc2_);
            if((_loc4_ = this.§ #,§(_loc3_)) == §%"_§ || _loc4_ == §&!f§)
            {
               this.§`!i§.§4!o§();
               return;
            }
            if(_loc4_ == §"!g§)
            {
               return;
            }
         }
         if(param1.§5!u§ == "OPEN_POWERUP_MENU")
         {
            if(!this.§"i§)
            {
               _loc5_ = false;
               this.§`!i§.§ "3§ = false;
               this.§`!i§.visible = true;
               §=Q§.§`!A§("misc_menubuttonproceed_1");
            }
            else
            {
               _loc5_ = true;
               §=Q§.§`!A§("misc_menubuttonback_1");
            }
            this.§@!Q§();
            this.§`!i§.§ "3§ = _loc5_;
         }
      }
   }
}
