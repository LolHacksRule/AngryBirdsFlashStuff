package §"O§
{
   import §!"W§.§@!X§;
   import §!"e§.§`"W§;
   import §%#W§.§["m§;
   import §'y§.§^!B§;
   import §+D§.§ #^§;
   import §+D§.§^"m§;
   import §,"N§.§6"w§;
   import §,"N§.§@#B§;
   import §5§.§0§;
   import §6!H§.§,#E§;
   import §6!H§.§8!r§;
   import §7P§.§=1§;
   import §;! §.§!Z§;
   import §;"3§.§+H§;
   import §<w§.§6#'§;
   import §="2§.§?!r§;
   import §?m§.§+"2§;
   import §[!m§.§+5§;
   import §[!m§.§[!j§;
   import §^#>§.§15§;
   import §^#>§.§8"f§;
   import §^#>§.§;x§;
   import com.angrybirds.§,!q§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class §^#]§ extends EventDispatcher
   {
      
      public static const §5!&§:int = 0;
      
      public static const §4F§:int = 1;
      
      public static const §%"-§:int = 2;
      
      public static const §-!l§:int = 3;
      
      public static const §1!Z§:int = 4;
      
      public static const §%#'§:String = "event_powerup_used";
      
      private static const §4#1§:int = 25;
      
      public static var §>!e§:Boolean = false;
      
      public static var §>"V§:Boolean = true;
       
      
      private var §?H§:Number = 0;
      
      private var §@!s§:Number;
      
      private var §'f§:Number;
      
      private var §]#<§:Number;
      
      private var get:Timer;
      
      protected var §+!b§:§+"2§;
      
      protected var §4#J§:§@#B§;
      
      protected var §=#=§:§ #^§;
      
      protected var §#"1§:§5#F§;
      
      protected var §3"7§:Vector.<§-#§>;
      
      protected var §0I§:§["m§;
      
      public function §^#]§(param1:§ #^§, param2:§5#F§, param3:§@#B§, param4:§["m§)
      {
         super();
         this.§=#=§ = param1;
         this.§#"1§ = param2;
         this.§4#J§ = param3;
         this.§0I§ = param4;
         this.init();
      }
      
      public function set §3-§(param1:§+"2§) : void
      {
         this.§+!b§ = param1;
      }
      
      public function get §0";§() : Boolean
      {
         return §>!e§;
      }
      
      public function set §0";§(param1:Boolean) : void
      {
         §>!e§ = param1;
      }
      
      private function init() : void
      {
         var _loc4_:String = null;
         var _loc5_:int = 0;
         var _loc6_:§8!r§ = null;
         var _loc7_:§^"m§ = null;
         var _loc8_:§-#§ = null;
         this.§'f§ = this.§=#=§.width - §4#1§;
         this.§]#<§ = this.§=#=§.height;
         this.§@!s§ = this.§=#=§.x;
         this.get = new Timer(1000,1);
         this.get.addEventListener(TimerEvent.TIMER_COMPLETE,this.§2U§);
         this.§3"7§ = new Vector.<§-#§>(0);
         var _loc1_:Vector.<String> = new <String>[§6"w§.§,!4§,§6"w§.§3"F§,§6"w§.§ !p§];
         var _loc2_:Vector.<§8!r§> = this.§4#J§.§]"<§.§;#?§.§^"'§;
         var _loc3_:int = 0;
         loop0:
         while(_loc3_ < _loc1_.length)
         {
            _loc4_ = _loc1_[_loc3_];
            _loc5_ = 0;
            while(_loc5_ < _loc2_.length)
            {
               if((_loc6_ = _loc2_[_loc5_]).§7!%§ == §,#E§.§00§ && _loc6_.§="A§ == _loc4_)
               {
                  if(!(_loc7_ = §^"m§(this.§=#=§.getItemByName("Button_PowerUp" + _loc3_))))
                  {
                     throw new Error("--#PowerupsUIManager[init]:: Not enough visuals for powerups, missing[" + _loc6_.§="A§ + "]");
                  }
                  (_loc8_ = new §-#§(_loc7_,_loc6_.§="A§)).addEventListener(§-#§.§8"C§,this.§>#5§);
                  this.§3"7§.push(_loc8_);
                  _loc3_++;
                  continue loop0;
               }
               _loc5_++;
            }
         }
      }
      
      public function dispose() : void
      {
         var _loc2_:§-#§ = null;
         this.disable();
         this.§3"7§.length = 0;
         this.§#"1§ = null;
         this.§0I§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§3"7§.length)
         {
            _loc2_ = this.§3"7§[_loc1_];
            _loc2_.removeEventListener(§-#§.§8"C§,this.§>#5§);
            _loc2_.dispose();
            _loc2_ = null;
            _loc1_++;
         }
      }
      
      public function enable() : void
      {
         this.§7!#§();
         this.§;"N§(0);
         var _loc1_:int = 0;
         while(_loc1_ < this.§3"7§.length)
         {
            this.§3"7§[_loc1_].isDisabled = false;
            _loc1_++;
         }
         this.§4#J§.§]"<§.addEventListener(§@!X§.§1c§,this.§=!E§);
         this.§=#=§.addEventListener(§6#'§.§+!>§,this.onUIInteraction);
         this.§#"1§.view.addEventListener(§6#'§.§+!>§,this.onUIInteraction);
         §8"f§(§,!q§.§9!,§).§=j§.addEventListener(§+H§.§=Z§,this.§ #R§);
      }
      
      public function disable() : void
      {
         §8"f§(§,!q§.§9!,§).§=j§.removeEventListener(§+H§.§=Z§,this.§ #R§);
         this.§=#=§.removeEventListener(§6#'§.§+!>§,this.onUIInteraction);
         this.§#"1§.view.removeEventListener(§6#'§.§+!>§,this.onUIInteraction);
         if(this.get)
         {
            this.get.stop();
         }
         this.§4#J§.§]"<§.removeEventListener(§@!X§.§1c§,this.§=!E§);
         §>"V§ = §>!e§;
      }
      
      public function § !J§(param1:uint) : String
      {
         var _loc2_:§-#§ = null;
         if(param1 < this.§3"7§.length)
         {
            _loc2_ = this.§3"7§[param1];
            return _loc2_.dataID;
         }
         return "";
      }
      
      public function update(param1:Number) : void
      {
         if(§,!q§.§9!,§.slingshot.mSlingShotState == §;x§.§?R§ && !this.get.running)
         {
            this.get.reset();
            this.get.start();
         }
         this.§;"N§(param1);
      }
      
      protected function §8"h§(param1:Number) : Boolean
      {
         if(§>!e§)
         {
            this.§=#=§.setVisibility(true);
            if(this.§?H§ < this.§'f§ - 20)
            {
               this.§?H§ += 0.5 * param1;
               if(this.§?H§ > this.§'f§ - 20)
               {
                  this.§?H§ = this.§'f§ - 20;
               }
               return true;
            }
            if(this.§?H§ > this.§'f§ - 20)
            {
               this.§?H§ = this.§'f§ - 20;
               if(this.§?H§ < this.§'f§ - 20)
               {
                  this.§?H§ = this.§'f§ - 20;
               }
               return true;
            }
         }
         else if(this.§?H§ > 0)
         {
            this.§?H§ -= 0.5 * param1;
            if(this.§?H§ <= 0)
            {
               this.§?H§ = 0;
               this.§=#=§.setVisibility(false);
            }
            return true;
         }
         return false;
      }
      
      protected function §>#5§(param1:Event) : void
      {
         this.§'"&§();
      }
      
      protected function §'"&§() : void
      {
         var _loc2_:int = 0;
         var _loc3_:§-#§ = null;
         var _loc1_:Boolean = false;
         if(!§>!e§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§3"7§.length)
            {
               _loc3_ = this.§3"7§[_loc2_];
               if(_loc3_.§'"Q§)
               {
                  _loc1_ = true;
                  break;
               }
               _loc2_++;
            }
         }
         if(this.§#"1§)
         {
            this.§#"1§.§&#0§(_loc1_);
         }
      }
      
      protected function §;"N§(param1:Number) : void
      {
         var _loc3_:Rectangle = null;
         this.§#"1§.update(param1);
         var _loc2_:Boolean = this.§8"h§(param1);
         if(_loc2_)
         {
            _loc3_ = new Rectangle(this.§'f§ - this.§?H§ - 20,0,this.§'f§ + 30,this.§]#<§);
            this.§=#=§.mClip.scrollRect = _loc3_;
         }
      }
      
      public function §8!p§() : void
      {
         if(this.§#"1§.§`!^§ == true)
         {
            return;
         }
         if(§>!e§)
         {
            §>!e§ = false;
         }
         else
         {
            §>!e§ = true;
         }
         this.§'"&§();
      }
      
      public function §&!O§(param1:Boolean = false) : void
      {
         var _loc2_:int = §8"f§(§,!q§.§9!,§).§2!o§();
         if(_loc2_ >= §15§.§5u§)
         {
            return;
         }
         if(this.§#"1§.§`!^§ == true && !param1)
         {
            if(this.§#"1§.enabled == false)
            {
               this.§#"1§.show();
            }
            return;
         }
         this.§#"1§.§`!^§ = false;
         this.§#"1§.show();
         §>!e§ = true;
         this.§=!,§();
         this.§'"&§();
      }
      
      public function §##A§() : void
      {
         if(§>!e§)
         {
            this.get.reset();
            this.get.start();
         }
         this.§#"1§.hide(!!§>!e§ ? true : false);
         §>!e§ = false;
         this.§>"W§();
         this.§'"&§();
      }
      
      public function §=!,§() : void
      {
         var _loc1_:§-#§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§3"7§.length)
         {
            _loc1_ = this.§3"7§[_loc2_];
            _loc1_.isDisabled = false;
            _loc2_++;
         }
      }
      
      public function §>"W§() : void
      {
         var _loc1_:§-#§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§3"7§.length)
         {
            _loc1_ = this.§3"7§[_loc2_];
            _loc1_.isDisabled = true;
            _loc2_++;
         }
      }
      
      private function § #R§(param1:§+H§) : void
      {
         if(param1.allowNextPowerUp)
         {
            this.§=!,§();
         }
         else
         {
            this.§>"W§();
         }
      }
      
      private function §2U§(param1:TimerEvent) : void
      {
         §>!e§ = false;
      }
      
      public function §0"[§(param1:String) : int
      {
         var _loc5_:§[!j§ = null;
         var _loc6_:§0#2§ = null;
         var _loc2_:§8!r§ = this.§4#J§.§]"<§.§;#?§.§<Z§(param1);
         if(_loc2_ == null)
         {
            throw new Error("Unknown powerup: " + param1);
         }
         var _loc3_:Boolean = this.§4#J§.§]"<§.§ #D§(_loc2_.§="A§);
         var _loc4_:int;
         if((_loc4_ = this.§4#J§.§]"<§.§8#K§(_loc2_.§="A§)) <= 0 && _loc3_ == false)
         {
            _loc5_ = new §!Z§(§`"W§.§?z§,§+5§.§>!g§,§^!B§.§0#"§,_loc2_.§="A§);
            §4#;§.singleton.popupManager.openPopup(_loc5_,true,true,true);
            return §%"-§;
         }
         this.§%v§(param1,false);
         if(_loc2_.§+'§ && §8"f§(§,!q§.§9!,§).§2!o§() >= §15§.§5u§)
         {
            this.§##A§();
            return §4F§;
         }
         if(_loc2_.§7!%§ == §,#E§.§00§ || _loc2_.§7!%§ == §,#E§.§'"d§)
         {
            if(§,!q§.§9!,§.slingshot.getBirdCount() <= 0)
            {
               return §-!l§;
            }
            if(§,!q§.§9!,§.slingshot.getCurrentBirdType() == §=1§.§+"§)
            {
               return §1!Z§;
            }
         }
         §8"f§(§,!q§.§9!,§).§=j§.§0"[§(param1);
         this.§4#J§.§]"<§.§#"0§ = "";
         if(this.§4#J§.userProgress.hasTutorialBeenSeen(param1))
         {
            this.§0I§.§]"m§(param1);
         }
         else
         {
            (_loc6_ = §4#;§.singleton.tutorialPopupManager).§,!c§(param1,§+5§.TOP);
         }
         if(_loc2_.§+'§ && §8"f§(§,!q§.§9!,§).§2!o§() >= §15§.§5u§)
         {
            this.§##A§();
         }
         §?!r§.§"#_§("powerup_selected");
         dispatchEvent(new Event(§%#'§));
         return §5!&§;
      }
      
      public function §%v§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:§-#§ = null;
         var _loc4_:int = 0;
         while(_loc4_ < this.§3"7§.length)
         {
            _loc3_ = this.§3"7§[_loc4_];
            if(_loc3_.dataID == param1)
            {
               _loc3_.isDisabled = !param2;
               return;
            }
            _loc4_++;
         }
      }
      
      private function §7!#§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§3"7§.length)
         {
            this.§3"7§[_loc1_].count = this.§4#J§.§]"<§.§8#K§(this.§3"7§[_loc1_].dataID);
            _loc1_++;
         }
      }
      
      private function §=!E§(param1:§@!X§) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§3"7§.length)
         {
            if(this.§3"7§[_loc2_].dataID == param1.§6#R§)
            {
               this.§3"7§[_loc2_].count = this.§4#J§.§]"<§.§8#K§(this.§3"7§[_loc2_].dataID);
               return;
            }
            _loc2_++;
         }
      }
      
      protected function onUIInteraction(param1:§6#'§) : void
      {
         var _loc2_:int = 0;
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:Boolean = false;
         if(param1.§=!k§.indexOf("USE_POWERUP_") != -1)
         {
            _loc2_ = parseInt(param1.§=!k§.substr(String("USE_POWERUP_").length));
            _loc3_ = this.§ !J§(_loc2_);
            if((_loc4_ = this.§0"[§(_loc3_)) == §4F§ || _loc4_ == §-!l§)
            {
               this.§#"1§.§@#D§();
               return;
            }
            if(_loc4_ == §5!&§)
            {
               return;
            }
         }
         if(param1.§=!k§ == "OPEN_POWERUP_MENU")
         {
            if(!this.§0";§)
            {
               _loc5_ = false;
               this.§#"1§.§`!^§ = false;
               this.§#"1§.visible = true;
               §?!r§.§"#_§("misc_menubuttonproceed_1");
            }
            else
            {
               _loc5_ = true;
               §?!r§.§"#_§("misc_menubuttonback_1");
            }
            this.§8!p§();
            this.§#"1§.§`!^§ = _loc5_;
         }
      }
   }
}
