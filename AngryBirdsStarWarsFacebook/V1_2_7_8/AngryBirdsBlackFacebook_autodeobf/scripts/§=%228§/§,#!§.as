package §="8§
{
   import §""d§.§,m§;
   import §""d§.§2"8§;
   import §#!k§.§4!4§;
   import §,"v§.§@§;
   import §,#+§.§7!m§;
   import §-4§.§4!C§;
   import §0b§.§7">§;
   import §1!o§.§#"y§;
   import §4m§.§5!R§;
   import §4m§.§^T§;
   import §5!q§.§-R§;
   import §5!q§.§6"@§;
   import §5!q§.§>o§;
   import §6"R§.§7#"§;
   import §7#+§.§[##§;
   import §<"s§.§0u§;
   import §@b§.§&M§;
   import §@b§.§1"0§;
   import §]"o§.§8!l§;
   import §^9§.§<! §;
   import §`"8§.§#f§;
   import §`"8§.§-!w§;
   import com.angrybirds.§;!e§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class §,#!§ extends EventDispatcher
   {
      
      public static const §@"S§:int = 0;
      
      public static const §&o§:int = 1;
      
      public static const §9"X§:int = 2;
      
      public static const §=@§:int = 3;
      
      public static const §!!9§:int = 4;
      
      public static const §6!n§:String = "event_powerup_used";
      
      private static const §4"@§:int = 25;
      
      public static var §^I§:Boolean = false;
      
      public static var §?#6§:Boolean = true;
       
      
      private var §2#§:Number = 0;
      
      private var §1!B§:Number;
      
      private var §9"T§:Number;
      
      private var §!"O§:Number;
      
      private var §>N§:Timer;
      
      protected var § !p§:§7!m§;
      
      protected var §]S§:§-!w§;
      
      protected var §=5§:§,m§;
      
      protected var §7!I§:§1#3§;
      
      protected var §&!0§:Vector.<§ k§>;
      
      protected var §]!T§:§4!C§;
      
      public function §,#!§(param1:§,m§, param2:§1#3§, param3:§-!w§, param4:§4!C§)
      {
         super();
         this.§=5§ = param1;
         this.§7!I§ = param2;
         this.§]S§ = param3;
         this.§]!T§ = param4;
         this.init();
      }
      
      public function set §#!J§(param1:§7!m§) : void
      {
         this.§ !p§ = param1;
      }
      
      public function get §3!n§() : Boolean
      {
         return §^I§;
      }
      
      public function set §3!n§(param1:Boolean) : void
      {
         §^I§ = param1;
      }
      
      private function init() : void
      {
         var _loc4_:String = null;
         var _loc5_:int = 0;
         var _loc6_:§1"0§ = null;
         var _loc7_:§2"8§ = null;
         var _loc8_:§ k§ = null;
         this.§9"T§ = this.§=5§.width - §4"@§;
         this.§!"O§ = this.§=5§.height;
         this.§1!B§ = this.§=5§.x;
         this.§>N§ = new Timer(1000,1);
         this.§>N§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§`e§);
         this.§&!0§ = new Vector.<§ k§>(0);
         var _loc1_:Vector.<String> = new <String>[§#f§.§!"L§,§#f§.§]Z§,§#f§.§0"v§];
         var _loc2_:Vector.<§1"0§> = this.§]S§.§=>§.§[!D§.§8"A§;
         var _loc3_:int = 0;
         loop0:
         while(_loc3_ < _loc1_.length)
         {
            _loc4_ = _loc1_[_loc3_];
            _loc5_ = 0;
            while(_loc5_ < _loc2_.length)
            {
               if((_loc6_ = _loc2_[_loc5_]).§%"0§ == §&M§.§4!F§ && _loc6_.§0B§ == _loc4_)
               {
                  if(!(_loc7_ = §2"8§(this.§=5§.getItemByName("Button_PowerUp" + _loc3_))))
                  {
                     throw new Error("--#PowerupsUIManager[init]:: Not enough visuals for powerups, missing[" + _loc6_.§0B§ + "]");
                  }
                  (_loc8_ = new § k§(_loc7_,_loc6_.§0B§)).addEventListener(§ k§.§6!z§,this.§?"`§);
                  this.§&!0§.push(_loc8_);
                  _loc3_++;
                  continue loop0;
               }
               _loc5_++;
            }
         }
      }
      
      public function dispose() : void
      {
         var _loc2_:§ k§ = null;
         this.disable();
         this.§&!0§.length = 0;
         this.§7!I§ = null;
         this.§]!T§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§&!0§.length)
         {
            _loc2_ = this.§&!0§[_loc1_];
            _loc2_.removeEventListener(§ k§.§6!z§,this.§?"`§);
            _loc2_.dispose();
            _loc2_ = null;
            _loc1_++;
         }
      }
      
      public function enable() : void
      {
         this.§8O§();
         this.§6"=§(0);
         var _loc1_:int = 0;
         while(_loc1_ < this.§&!0§.length)
         {
            this.§&!0§[_loc1_].isDisabled = false;
            _loc1_++;
         }
         this.§]S§.§=>§.addEventListener(§#"y§.§4f§,this.§ "[§);
         this.§=5§.addEventListener(§4!4§.§="n§,this.onUIInteraction);
         this.§7!I§.view.addEventListener(§4!4§.§="n§,this.onUIInteraction);
         §6"@§(§;!e§.§<x§).§2#7§.addEventListener(§8!l§.§3#4§,this.§""G§);
      }
      
      public function disable() : void
      {
         §6"@§(§;!e§.§<x§).§2#7§.removeEventListener(§8!l§.§3#4§,this.§""G§);
         this.§=5§.removeEventListener(§4!4§.§="n§,this.onUIInteraction);
         this.§7!I§.view.removeEventListener(§4!4§.§="n§,this.onUIInteraction);
         if(this.§>N§)
         {
            this.§>N§.stop();
         }
         this.§]S§.§=>§.removeEventListener(§#"y§.§4f§,this.§ "[§);
         §?#6§ = §^I§;
      }
      
      public function §+z§(param1:uint) : String
      {
         var _loc2_:§ k§ = null;
         if(param1 < this.§&!0§.length)
         {
            _loc2_ = this.§&!0§[param1];
            return _loc2_.dataID;
         }
         return "";
      }
      
      public function update(param1:Number) : void
      {
         if(§;!e§.§<x§.slingshot.mSlingShotState == §-R§.§7!w§ && !this.§>N§.running)
         {
            this.§>N§.reset();
            this.§>N§.start();
         }
         this.§6"=§(param1);
      }
      
      protected function §-"n§(param1:Number) : Boolean
      {
         if(§^I§)
         {
            this.§=5§.setVisibility(true);
            if(this.§2#§ < this.§9"T§ - 20)
            {
               this.§2#§ += 0.5 * param1;
               if(this.§2#§ > this.§9"T§ - 20)
               {
                  this.§2#§ = this.§9"T§ - 20;
               }
               return true;
            }
            if(this.§2#§ > this.§9"T§ - 20)
            {
               this.§2#§ = this.§9"T§ - 20;
               if(this.§2#§ < this.§9"T§ - 20)
               {
                  this.§2#§ = this.§9"T§ - 20;
               }
               return true;
            }
         }
         else if(this.§2#§ > 0)
         {
            this.§2#§ -= 0.5 * param1;
            if(this.§2#§ <= 0)
            {
               this.§2#§ = 0;
               this.§=5§.setVisibility(false);
            }
            return true;
         }
         return false;
      }
      
      protected function §?"`§(param1:Event) : void
      {
         this.§,y§();
      }
      
      protected function §,y§() : void
      {
         var _loc2_:int = 0;
         var _loc3_:§ k§ = null;
         var _loc1_:Boolean = false;
         if(!§^I§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§&!0§.length)
            {
               _loc3_ = this.§&!0§[_loc2_];
               if(_loc3_.§=!]§)
               {
                  _loc1_ = true;
                  break;
               }
               _loc2_++;
            }
         }
         if(this.§7!I§)
         {
            this.§7!I§.§ p§(_loc1_);
         }
      }
      
      protected function §6"=§(param1:Number) : void
      {
         var _loc3_:Rectangle = null;
         this.§7!I§.update(param1);
         var _loc2_:Boolean = this.§-"n§(param1);
         if(_loc2_)
         {
            _loc3_ = new Rectangle(this.§9"T§ - this.§2#§ - 20,0,this.§9"T§ + 30,this.§!"O§);
            this.§=5§.mClip.scrollRect = _loc3_;
         }
      }
      
      public function §"![§() : void
      {
         if(this.§7!I§.§&"s§ == true)
         {
            return;
         }
         if(§^I§)
         {
            §^I§ = false;
         }
         else
         {
            §^I§ = true;
         }
         this.§,y§();
      }
      
      public function §+6§(param1:Boolean = false) : void
      {
         var _loc2_:int = §6"@§(§;!e§.§<x§).§]"4§();
         if(_loc2_ >= §>o§.§[!!§)
         {
            return;
         }
         if(this.§7!I§.§&"s§ == true && !param1)
         {
            if(this.§7!I§.enabled == false)
            {
               this.§7!I§.show();
            }
            return;
         }
         this.§7!I§.§&"s§ = false;
         this.§7!I§.show();
         §^I§ = true;
         this.§=!u§();
         this.§,y§();
      }
      
      public function §+F§() : void
      {
         if(§^I§)
         {
            this.§>N§.reset();
            this.§>N§.start();
         }
         this.§7!I§.hide(!!§^I§ ? true : false);
         §^I§ = false;
         this.§1o§();
         this.§,y§();
      }
      
      public function §=!u§() : void
      {
         var _loc1_:§ k§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§&!0§.length)
         {
            _loc1_ = this.§&!0§[_loc2_];
            _loc1_.isDisabled = false;
            _loc2_++;
         }
      }
      
      public function §1o§() : void
      {
         var _loc1_:§ k§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§&!0§.length)
         {
            _loc1_ = this.§&!0§[_loc2_];
            _loc1_.isDisabled = true;
            _loc2_++;
         }
      }
      
      private function §""G§(param1:§8!l§) : void
      {
         if(param1.allowNextPowerUp)
         {
            this.§=!u§();
         }
         else
         {
            this.§1o§();
         }
      }
      
      private function §`e§(param1:TimerEvent) : void
      {
         §^I§ = false;
      }
      
      public function §8"E§(param1:String) : int
      {
         var _loc5_:§5!R§ = null;
         var _loc6_:§7">§ = null;
         var _loc2_:§1"0§ = this.§]S§.§=>§.§[!D§.§9!r§(param1);
         if(_loc2_ == null)
         {
            throw new Error("Unknown powerup: " + param1);
         }
         var _loc3_:Boolean = this.§]S§.§=>§.§="&§(_loc2_.§0B§);
         var _loc4_:int;
         if((_loc4_ = this.§]S§.§=>§.§"!V§(_loc2_.§0B§)) <= 0 && _loc3_ == false)
         {
            _loc5_ = new §<! §(§0u§.§]!?§,§^T§.§0O§,§[##§.§9"U§,_loc2_.§0B§);
            §;"@§.singleton.popupManager.openPopup(_loc5_,true,true,true);
            return §9"X§;
         }
         this.§7!F§(param1,false);
         if(_loc2_.§7!M§ && §6"@§(§;!e§.§<x§).§]"4§() >= §>o§.§[!!§)
         {
            this.§+F§();
            return §&o§;
         }
         if(_loc2_.§%"0§ == §&M§.§4!F§ || _loc2_.§%"0§ == §&M§.§0!f§)
         {
            if(§;!e§.§<x§.slingshot.getBirdCount() <= 0)
            {
               return §=@§;
            }
            if(§;!e§.§<x§.slingshot.getCurrentBirdType() == §7#"§.§^!3§)
            {
               return §!!9§;
            }
         }
         §6"@§(§;!e§.§<x§).§2#7§.§8"E§(param1);
         this.§]S§.§=>§.§^Z§ = "";
         if(this.§]S§.userProgress.hasTutorialBeenSeen(param1))
         {
            this.§]!T§.§]"u§(param1);
         }
         else
         {
            (_loc6_ = §;"@§.singleton.tutorialPopupManager).§,"7§(param1,§^T§.TOP);
         }
         if(_loc2_.§7!M§ && §6"@§(§;!e§.§<x§).§]"4§() >= §>o§.§[!!§)
         {
            this.§+F§();
         }
         §@§.§=Y§("powerup_selected");
         dispatchEvent(new Event(§6!n§));
         return §@"S§;
      }
      
      public function §7!F§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:§ k§ = null;
         var _loc4_:int = 0;
         while(_loc4_ < this.§&!0§.length)
         {
            _loc3_ = this.§&!0§[_loc4_];
            if(_loc3_.dataID == param1)
            {
               _loc3_.isDisabled = !param2;
               return;
            }
            _loc4_++;
         }
      }
      
      private function §8O§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§&!0§.length)
         {
            this.§&!0§[_loc1_].count = this.§]S§.§=>§.§"!V§(this.§&!0§[_loc1_].dataID);
            _loc1_++;
         }
      }
      
      private function § "[§(param1:§#"y§) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§&!0§.length)
         {
            if(this.§&!0§[_loc2_].dataID == param1.§9u§)
            {
               this.§&!0§[_loc2_].count = this.§]S§.§=>§.§"!V§(this.§&!0§[_loc2_].dataID);
               return;
            }
            _loc2_++;
         }
      }
      
      protected function onUIInteraction(param1:§4!4§) : void
      {
         var _loc2_:int = 0;
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:Boolean = false;
         if(param1.§84§.indexOf("USE_POWERUP_") != -1)
         {
            _loc2_ = parseInt(param1.§84§.substr(String("USE_POWERUP_").length));
            _loc3_ = this.§+z§(_loc2_);
            if((_loc4_ = this.§8"E§(_loc3_)) == §&o§ || _loc4_ == §=@§)
            {
               this.§7!I§.§`@§();
               return;
            }
            if(_loc4_ == §@"S§)
            {
               return;
            }
         }
         if(param1.§84§ == "OPEN_POWERUP_MENU")
         {
            if(!this.§3!n§)
            {
               _loc5_ = false;
               this.§7!I§.§&"s§ = false;
               this.§7!I§.visible = true;
               §@§.§=Y§("misc_menubuttonproceed_1");
            }
            else
            {
               _loc5_ = true;
               §@§.§=Y§("misc_menubuttonback_1");
            }
            this.§"![§();
            this.§7!I§.§&"s§ = _loc5_;
         }
      }
   }
}
