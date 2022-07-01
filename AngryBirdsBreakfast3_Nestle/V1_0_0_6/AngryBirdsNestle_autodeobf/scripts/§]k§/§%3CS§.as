package §]k§
{
   import § !T§.§ q§;
   import § !T§.§%!D§;
   import § !T§.§7@§;
   import § 8§.§?!9§;
   import §#!4§.§0!q§;
   import §#!4§.§=f§;
   import §%z§.§?8§;
   import §,!q§.DisplayObject;
   import §,!q§.Sprite;
   import §-!A§.b2Vec2;
   import §-!Y§.§%!%§;
   import §-!b§.§,"1§;
   import §-!b§.§0!D§;
   import §-!b§.§[E§;
   import §0!s§.§5!L§;
   import §0m§.§<p§;
   import §0m§.§`!K§;
   import §2!N§.§8!7§;
   import §2W§.§2E§;
   import §7'§.§"'§;
   import §8,§.§?J§;
   import §=!`§.§!H§;
   import §=!`§.§&6§;
   import §=!`§.§6!-§;
   import §=!`§.§=6§;
   import §=!`§.§^^§;
   import §@&§.§ !E§;
   import §@&§.§"! §;
   import §@h§.b2Settings;
   import §[!B§.§#_§;
   import com.angrybirds.§6!E§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §<S§
   {
      
      private static const §!"'§:int = 20;
      
      public static const §7!y§:Number = §6!E§.§#9§;
      
      public static const §^![§:Number = §6!E§.§<N§;
      
      public static const §;!Q§:Number = 1 / 20;
      
      public static const §[-§:Number = §6!E§.§<N§ * §;!Q§;
      
      public static const §;R§:Number = §7!y§ * §;!Q§;
      
      public static const §'!W§:§2E§ = new §2E§(13 - 3);
      
      protected static var §6!v§:String;
      
      protected static var §&!+§:Number = 1;
      
      protected static var § A§:String = §7@§.§0P§;
       
      
      protected var §!M§:§!H§;
      
      private var §`K§:Array = null;
      
      protected var §?!-§:§#_§;
      
      public var §3n§:§=![§;
      
      protected var §"!D§:§]W§;
      
      protected var §-%§:§?!9§;
      
      protected var §#!a§:§>!x§;
      
      protected var §"z§:§0!q§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §34§:Boolean = false;
      
      protected var §32§:Boolean = false;
      
      protected var §[H§:Boolean = false;
      
      public var §+g§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §`i§:Number;
      
      public var §`!J§:Number;
      
      private var §1!X§:§^8§;
      
      private var §3"3§:Sprite;
      
      protected var §7n§:§7@§;
      
      protected var §8]§:§8!7§ = null;
      
      private var §>V§:EventDispatcher;
      
      private var §#!k§:Array;
      
      private var §#D§:§%!%§;
      
      private var §3Z§:§`!K§;
      
      protected var §@=§:§[E§;
      
      protected var §+-§:§,"1§;
      
      private var §"H§:§0!D§;
      
      private var §for §:§0!D§;
      
      private var §&"3§:§0!D§;
      
      private var §'!k§:Stage;
      
      private var §@z§:§6!<§;
      
      protected var §'!`§:§"'§;
      
      protected var §'Y§:§"'§;
      
      protected var §1!u§:Number = 0.0;
      
      protected var §6N§:String;
      
      private var §catch§:Boolean;
      
      private var §<4§:Number;
      
      private var §8q§:Number;
      
      protected var §;§:§%P§;
      
      protected var §'K§:§?8§;
      
      protected var §," §:§ !E§;
      
      protected var §="4§:§ q§;
      
      protected var §#2§:uint = 1.417339207E9;
      
      public var §7!i§:Boolean;
      
      protected var §4",§:int = 0;
      
      protected var § case§:int = 0;
      
      protected var §`!l§:Number = 1.0;
      
      protected var §&"-§:Number = 1.0;
      
      protected var §5z§:Boolean;
      
      public function §<S§(param1:Stage, param2:§?8§, param3:§ !E§, param4:§ q§)
      {
         this.§#!k§ = [];
         super();
         this.§>V§ = new EventDispatcher();
         this.§'!k§ = param1;
         this.§'K§ = param2;
         this.§," § = param3;
         this.§="4§ = param4;
         this.§@=§ = §[E§.§<"5§;
         this.§+-§ = this.initAnimationManager(this.§@=§);
         this.§"H§ = this.§]p§();
         this.§for § = this.initThemeSoundsManager();
         this.§&"3§ = this.initCutSceneManager();
         var _loc5_:Stage3D = param1.stage3Ds[0];
         this.§#D§ = new §%!%§(§^8§,param1,new Rectangle(0,0,§6!E§.§#9§,§6!E§.§<N§),_loc5_);
         §6!E§.§@!U§.addEventListener(§?J§.§0H§,this.§#D§.onEnterFrame);
         _loc5_.addEventListener(Event.CONTEXT3D_CREATE,this.§5!h§,false,0,true);
         this.§#D§.§;X§ = false;
         this.§#D§.enableErrorChecking = false;
         this.§#D§.§,X§ = 2;
         this.§#D§.§4!#§();
      }
      
      public static function §+!B§(param1:§=6§, param2:§=6§) : Number
      {
         var _loc3_:Number = param1.§5B§ - param2.§5B§;
         var _loc4_:Number = param1.§7"#§ - param2.§7"#§;
         return §[7§(_loc3_,_loc4_);
      }
      
      public static function §[7§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      protected function get sprite() : Sprite
      {
         if(!this.§3"3§ && this.§#Q§)
         {
            this.§3"3§ = this.§1!X§.§;",§;
         }
         return this.§3"3§;
      }
      
      public function get §#Q§() : Sprite
      {
         if(!this.§1!X§)
         {
            this.§1!X§ = this.§#D§.§1U§ as §^8§;
            this.§1!X§.§ w§ = false;
         }
         return this.§1!X§;
      }
      
      private function get §8l§() : DisplayObject
      {
         if(this.§#Q§)
         {
            return (this.§#Q§ as §^8§).§8l§;
         }
         return null;
      }
      
      public function get §-h§() : §,"1§
      {
         return this.§+-§;
      }
      
      public function get §0p§() : §[E§
      {
         return this.§@=§;
      }
      
      public function get camera() : §?!9§
      {
         return this.§-%§;
      }
      
      public function get objects() : §!H§
      {
         return this.§!M§;
      }
      
      public function get particles() : §0!q§
      {
         return this.§"z§;
      }
      
      public function get background() : §#_§
      {
         return this.§?!-§;
      }
      
      public function get slingshot() : §>!x§
      {
         return this.§#!a§;
      }
      
      public function get §-"3§() : §]W§
      {
         return this.§"!D§;
      }
      
      public function get stage() : Stage
      {
         return this.§'!k§;
      }
      
      public function get levelItemManager() : §?8§
      {
         return this.§'K§;
      }
      
      public function get §+!z§() : §0!D§
      {
         return this.§&"3§;
      }
      
      protected function get §?k§() : §0!D§
      {
         return this.§"H§;
      }
      
      public function §5!b§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§;§ = new §%P§(param1,param2,param3,param4);
      }
      
      public function get damageScoreMultiplier() : int
      {
         return §<S§.§'!W§.getValue();
      }
      
      public function clear() : void
      {
         if(this.§3Z§)
         {
            this.§3Z§.dispose();
         }
         if(this.§@=§)
         {
            this.§@=§.removeEventListener(Event.INIT,this.§5!B§);
            this.§@=§.dispose();
         }
         if(this.§"H§ && this.§"H§.§0p§)
         {
            this.§"H§.§0p§.dispose();
         }
         if(this.§&"3§ && this.§&"3§.§0p§)
         {
            this.§&"3§.§0p§.dispose();
         }
         if(this.§#D§)
         {
            this.§#D§.dispose();
         }
      }
      
      protected function §]p§() : §0!D§
      {
         return new §0!D§(this.§'!k§.loaderInfo.parameters.assetsUrl || "",this.§'!k§.loaderInfo.parameters.buildNumber || "",this.§="4§);
      }
      
      protected function initThemeSoundsManager() : §0!D§
      {
         return new §0!D§(this.§'!k§.loaderInfo.parameters.assetsUrl || "",this.§'!k§.loaderInfo.parameters.buildNumber || "",this.§="4§,false);
      }
      
      protected function initCutSceneManager() : §0!D§
      {
         return new §0!D§(this.§'!k§.loaderInfo.parameters.assetsUrl || "",this.§'!k§.loaderInfo.parameters.buildNumber || "",this.§="4§);
      }
      
      protected function initAnimationManager(param1:§[E§) : §,"1§
      {
         return new §,"1§(param1);
      }
      
      public function §'F§(param1:Boolean) : void
      {
         if(§%!%§.§"T§)
         {
            if(param1)
            {
               §%!%§.§"T§.start();
            }
            else
            {
               §%!%§.§"T§.stop();
               §%!%§.§"T§.color = 0;
            }
         }
      }
      
      public function §8w§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function setController(param1:§8!7§) : void
      {
         if(this.§8]§ != null)
         {
            this.§8]§.removeEventListeners();
         }
         this.§8]§ = param1;
         if(this.mReadyToRun)
         {
            this.§8]§.addEventListeners();
         }
      }
      
      public function §,O§() : §"'§
      {
         return this.§'!`§;
      }
      
      protected function §'d§(param1:§<p§) : int
      {
         return 0;
      }
      
      public function §"",§(param1:§`!K§, param2:Function) : void
      {
         var _loc5_:§<p§ = null;
         var _loc6_:int = 0;
         this.§3Z§ = param1;
         var _loc3_:int = this.§3Z§.§><§;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = this.§3Z§.§3P§(_loc4_);
            _loc6_ = this.§'d§(_loc5_);
            this.§@=§.§#%§(_loc5_,_loc6_);
            _loc4_++;
         }
         if(param2 != null)
         {
            this.§>V§.addEventListener(Event.INIT,param2);
            this.§#!k§.push(param2);
         }
         if(this.§8u§())
         {
            this.§5"4§();
         }
      }
      
      private function §8u§() : Boolean
      {
         this.§@=§.removeEventListener(Event.INIT,this.§5!B§);
         if(this.§@=§.§<?§())
         {
            this.initializeAnimations();
            this.§5z§ = false;
            return true;
         }
         this.§@=§.addEventListener(Event.INIT,this.§5!B§);
         this.§5z§ = true;
         return false;
      }
      
      private function §5!B§(param1:Event) : void
      {
         this.§@=§.removeEventListener(Event.INIT,this.§5!B§);
         this.initializeAnimations();
         this.§5z§ = false;
         this.§5"4§();
      }
      
      protected function initializeAnimations() : void
      {
         this.§+-§.initializeAnimations();
         this.§'K§.§@!$§();
      }
      
      private function §5!h§(param1:Event) : void
      {
         this.§@=§.§%"§();
         if(this.§?k§ && this.§?k§.§0p§)
         {
            this.§?k§.§0p§.§%"§();
         }
         if(this.§+!z§ && this.§+!z§.§0p§)
         {
            this.§+!z§.§0p§.§%"§();
         }
         if(this.§5z§)
         {
            if(this.§8u§())
            {
               this.§5"4§();
            }
         }
         if(this.§8]§ != null && this.mReadyToRun)
         {
            this.§8]§.addEventListeners();
         }
         if(this.§"H§)
         {
            this.§"H§.§<?§();
         }
         if(this.§&"3§)
         {
            if(this.§&"3§.§0p§)
            {
               this.§&"3§.§<?§();
            }
         }
      }
      
      private function §5"4§() : void
      {
         this.§>V§.dispatchEvent(new Event(Event.INIT));
         this.§[c§();
      }
      
      private function §[c§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§#!k§)
         {
            this.§>V§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§#!k§ = [];
      }
      
      public function init(param1:§7@§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§"!D§ = new §]W§(this,param1);
         this.§-%§ = this.initializeLevelCamera(param1);
         this.§`i§ = 0;
         this.§`!J§ = 0;
         this.§catch§ = false;
         this.mReadyToRun = false;
         this.§34§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         param1.theme = param1.theme || "background_blue_grass";
         § A§ = param1.theme;
         this.§7n§ = param1;
         this.§32§ = this.§;!%§(param1.theme);
         this.§[H§ = this.§2!#§(param1.theme);
         if(this.§32§ && this.§[H§)
         {
            this.initialize(param1);
         }
         else
         {
            this.§7]§(param1.theme);
         }
         this.§7!@§(param1.name);
         §9J§.init();
      }
      
      protected function §7!@§(param1:String) : void
      {
         this.§'!`§ = new §"'§(param1);
      }
      
      protected function §;!%§(param1:String) : Boolean
      {
         if(this.§"H§)
         {
            return false;
         }
         return true;
      }
      
      protected function §2!#§(param1:String) : Boolean
      {
         var _loc2_:§"! § = null;
         if(this.§for §)
         {
            _loc2_ = this.§," §.§"U§(param1);
            if(_loc2_)
            {
               if(_loc2_.§>a§ && !this.§for §.§ P§(_loc2_.§>a§))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function §4" §(param1:String) : Array
      {
         return null;
      }
      
      protected function §7]§(param1:String) : void
      {
         var _loc2_:Array = null;
         var _loc3_:§"! § = null;
         if(this.§"H§ && !this.§;!%§(param1))
         {
            this.§"H§.removeEventListener(Event.COMPLETE,this.§["5§);
            this.§"H§.removeEventListener(Event.CANCEL,this.§;!M§);
            this.§"H§.addEventListener(Event.COMPLETE,this.§["5§);
            this.§"H§.addEventListener(Event.CANCEL,this.§;!M§);
            _loc2_ = this.§4" §(param1);
            this.§"H§.loadContent(param1,_loc2_);
         }
         if(this.§for § && !this.§2!#§(param1))
         {
            this.§for §.removeEventListener(Event.COMPLETE,this.§^!M§);
            this.§for §.removeEventListener(Event.CANCEL,this.§[n§);
            this.§for §.addEventListener(Event.COMPLETE,this.§^!M§);
            this.§for §.addEventListener(Event.CANCEL,this.§[n§);
            _loc3_ = this.§," §.§"U§(param1);
            if(_loc3_)
            {
               this.§for §.loadContent(_loc3_.§>a§);
            }
         }
      }
      
      private function §["5§(param1:Event) : void
      {
         this.§"H§.removeEventListener(Event.COMPLETE,this.§["5§);
         this.§"H§.removeEventListener(Event.CANCEL,this.§;!M§);
         this.§32§ = true;
         if(this.§32§ && this.§[H§)
         {
            this.initialize(this.§7n§);
         }
      }
      
      private function §;!M§(param1:Event) : void
      {
         this.§"H§.removeEventListener(Event.COMPLETE,this.§["5§);
         this.§"H§.removeEventListener(Event.CANCEL,this.§;!M§);
         this.§34§ = true;
      }
      
      private function §^!M§(param1:Event) : void
      {
         this.§"H§.removeEventListener(Event.COMPLETE,this.§^!M§);
         this.§"H§.removeEventListener(Event.CANCEL,this.§[n§);
         this.§[H§ = true;
         if(this.§32§ && this.§[H§)
         {
            this.initialize(this.§7n§);
         }
      }
      
      private function §[n§(param1:Event) : void
      {
         this.§"H§.removeEventListener(Event.COMPLETE,this.§^!M§);
         this.§"H§.removeEventListener(Event.CANCEL,this.§[n§);
         this.§[H§ = true;
         if(this.§32§ && this.§[H§)
         {
            this.initialize(this.§7n§);
         }
      }
      
      public function get § _§() : §[E§
      {
         if(this.§?k§)
         {
            return this.§?k§.§0p§;
         }
         return null;
      }
      
      protected function §[_§(param1:§7@§) : void
      {
         b2Settings.b2_linearSleepTolerance = b2Settings.§1L§;
      }
      
      private function initialize(param1:§7@§) : void
      {
         this.§;§ = null;
         this.§7!i§ = false;
         if(§%!%§.§8B§)
         {
            §%!%§.§8B§.speed = 1;
         }
         this.§[_§(param1);
         this.§ E§(param1);
         this.§?!-§ = this.§@]§(param1.theme,0 / §;!Q§,this.§ _§,this.§-%§.§1!§());
         this.§?!-§.§!!T§(§6!E§.§^A§());
         if(§%!%§.§"T§)
         {
            §%!%§.§"T§.color = this.§?!-§.§2'§;
         }
         this.§!M§ = this.initializeLevelObjectManager(param1);
         this.§#!a§ = this.initializeLevelSlingshot(param1);
         this.§"z§ = this.§=!r§(this.§+-§,this.§@=§);
         this.§-%§.init();
         this.§&'§();
         this.§7!_§();
         this.mReadyToRun = true;
         if(this.§8]§)
         {
            this.§8]§.addEventListeners();
         }
         if(param1.name == §6!v§)
         {
            this.§-%§.§ s§(§&!+§);
            this.§>!i§(0);
         }
         else
         {
            §6!v§ = param1.name;
         }
         this.§&"&§();
      }
      
      protected function §&"&§() : void
      {
      }
      
      protected function § E§(param1:§7@§) : void
      {
         this.§3n§ = new §=![§(this);
      }
      
      protected function §7!_§() : void
      {
         if(this.§6N§)
         {
            this.§'Y§ = §"'§.initialize(this.§6N§);
            this.§'Y§.speed = 1;
            this.§'Y§.play();
            this.§1!u§ = -1000;
            this.§6N§ = null;
         }
      }
      
      public function §4!0§(param1:String) : void
      {
         this.§6N§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§'Y§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§'Y§)
         {
            if(param1)
            {
               this.§'Y§.speed = Math.min(this.§'Y§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§'Y§.speed = Math.max(this.§'Y§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§'Y§)
         {
            this.§'Y§.speed = 1;
         }
      }
      
      protected function initializeLevelObjectManager(param1:§7@§) : §!H§
      {
         var _loc2_:String = §"! §.§;f§;
         return new §!H§(this,param1,new Sprite(),_loc2_);
      }
      
      protected function initializeLevelCamera(param1:§7@§) : §?!9§
      {
         return new §?!9§(this,param1);
      }
      
      protected function §@]§(param1:String, param2:Number, param3:§[E§, param4:Number) : §#_§
      {
         var _loc5_:§"! §;
         if((_loc5_ = this.§," §.§"U§(param1)) == null)
         {
            param1 = §7@§.§0P§;
            _loc5_ = this.§," §.§"U§(param1);
         }
         return new §#_§(_loc5_,param2,param3,param4,!§%!%§.§4K§);
      }
      
      protected function initializeLevelSlingshot(param1:§7@§) : §>!x§
      {
         return new §>!x§(this,param1,new Sprite());
      }
      
      protected function §=!r§(param1:§,"1§, param2:§[E§) : §0!q§
      {
         return new §0!q§(param1,param2);
      }
      
      public function initializeEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§7@§ = new §7@§();
         _loc3_.slingshotY = -12;
         var _loc4_:§%!D§;
         (_loc4_ = new §%!D§()).left = 0;
         _loc4_.top = -§?!9§.§,"!§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §?!9§.§,"!§;
         _loc4_.right = _loc4_.left + §?!9§.§1f§;
         _loc4_.y = -13.929;
         _loc4_.x = §?!9§.§1f§;
         _loc4_.id = §?!9§.§[! §;
         _loc3_.§-!O§(_loc4_);
         var _loc5_:§%!D§;
         (_loc5_ = new §%!D§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §?!9§.§1f§;
         _loc5_.bottom = _loc5_.top + §?!9§.§,"!§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §?!9§.§1f§ / 2;
         _loc5_.id = §?!9§.§4+§;
         _loc3_.§-!O§(_loc5_);
         this.§0L§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§ A§ != null)
         {
            _loc3_.theme = § A§;
         }
         this.init(_loc3_);
      }
      
      protected function §0L§(param1:§7@§, param2:Boolean) : void
      {
         if(param2)
         {
            this.§@N§(param1);
         }
      }
      
      protected function §["2§() : Number
      {
         this.§#2§ ^= this.§#2§ << 21;
         this.§#2§ ^= this.§#2§ >>> 35;
         this.§#2§ ^= this.§#2§ << 4;
         return this.§#2§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §@N§(param1:§7@§) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§5!L§ = null;
         this.§#2§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < 10)
         {
            _loc4_ = 0;
            while(_loc4_ < 5)
            {
               _loc5_ = this.§["2§() * 5;
               (_loc6_ = new §5!L§()).x = 30 + _loc4_ * 10 + this.§["2§() * 9;
               if(_loc3_ == 0)
               {
                  _loc6_.y = 0;
                  if(_loc4_ == 1 || _loc4_ == 2 || _loc4_ == 4)
                  {
                     _loc6_.type = "PIG_MUSTACHE";
                  }
                  else
                  {
                     _loc6_.type = "PIG_HELMET";
                  }
                  _loc6_.angle = 45 - this.§["2§() * 90;
               }
               else
               {
                  _loc6_.y = -30 + _loc3_ * 6 - this.§["2§() * 3 - _loc4_ * 8;
                  if((_loc5_ = (_loc4_ * _loc4_ + _loc3_ * _loc4_ + _loc3_) % 5) < 2)
                  {
                     _loc6_.type = "BIRD_RED";
                  }
                  else if(_loc5_ == 3)
                  {
                     _loc6_.type = "BIRD_YELLOW";
                  }
                  else
                  {
                     _loc6_.type = "BIRD_BLUE";
                  }
                  _loc6_.angle = this.§["2§() * 360;
               }
               _loc6_.id = _loc2_;
               param1.§`!k§(_loc6_);
               _loc2_++;
               _loc4_++;
            }
            _loc3_++;
         }
      }
      
      private function §"!c§() : void
      {
      }
      
      protected function §=+§() : void
      {
         if(§#_§.§9g§)
         {
            this.§,C§(this.§?!-§.§^!m§);
         }
      }
      
      protected function §]!n§() : void
      {
         this.§,C§(this.§"z§.§;!9§(§0!q§.§5!W§));
         this.§,C§(this.§"z§.§;!9§(§0!q§.§-g§));
      }
      
      protected function §?N§() : void
      {
         this.§,C§(this.§"z§.§;!9§(§0!q§.§,V§));
         this.§,C§(this.§!M§.§@B§);
         this.§,C§(this.§#!a§.sprite);
         this.§,C§(this.§"z§.§;!9§(§0!q§.§[!V§));
      }
      
      protected function §-'§() : void
      {
         this.§,C§(this.§?!-§.§8Y§);
         if(§#_§.§9g§)
         {
            this.§,C§(this.§?!-§.§1!T§);
         }
      }
      
      protected function §6?§() : void
      {
         this.§,C§(this.§!M§.§3M§);
         this.§,C§(this.§"z§.§;!9§(§0!q§.§4!H§));
         this.§,C§(this.§"z§.§;!9§(§0!q§.§1!>§));
      }
      
      private function §&'§() : void
      {
         this.§=+§();
         this.§]!n§();
         this.§?N§();
         this.§-'§();
         this.§6?§();
         if(!§=![§.§'"-§)
         {
         }
      }
      
      protected function §,C§(param1:DisplayObject) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(param1);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number, param3:Point = null) : Point
      {
         if(!param3)
         {
            param3 = new Point();
         }
         if(§6!E§.§'!U§ > §6!E§.§5!=§)
         {
            param1 /= §6!E§.§'!U§;
            param2 /= §6!E§.§'!U§;
         }
         else
         {
            param1 /= §6!E§.§5!=§;
            param2 /= §6!E§.§5!=§;
         }
         param3.x = ((param1 - this.sprite.x) / §?!9§.§7C§ + this.§-%§.§^S§) * §;!Q§;
         param3.y = ((param2 - this.sprite.y) / §?!9§.§7C§ + this.§-%§.§+!Z§) * §;!Q§;
         return param3;
      }
      
      public function §"e§(param1:Number, param2:Number, param3:Point = null) : Point
      {
         if(!param3)
         {
            param3 = new Point();
         }
         param3.x = (param1 / §;!Q§ - this.§-%§.§^S§) * §?!9§.§7C§ + this.sprite.x;
         param3.y = (param2 / §;!Q§ - this.§-%§.§+!Z§) * §?!9§.§7C§ + this.sprite.y;
         var _loc4_:Number = Math.max(§6!E§.§'!U§,§6!E§.§5!=§);
         param3.x *= _loc4_;
         param3.y *= _loc4_;
         return param3;
      }
      
      public function setScreenOffset(param1:Number, param2:Number, param3:Number) : void
      {
         this.sprite.scaleX = param3;
         this.sprite.scaleY = param3;
         if(this.background)
         {
            this.background.setScreenOffset(param1,param2,this.§4",§,this.§ case§,param3,this.§`!l§,this.§&"-§);
         }
         if(this.objects)
         {
            this.objects.§7Z§(param1,param2);
         }
         if(this.§3n§)
         {
            this.§3n§.§7Z§(param1,param2);
         }
         if(this.slingshot)
         {
            this.slingshot.§7Z§(param1,param2);
         }
         if(this.particles)
         {
            this.particles.§7Z§(param1,param2);
         }
      }
      
      public function §7!7§(param1:String, param2:Number, param3:Number) : void
      {
         this.§!M§.§`!k§(param1,param2,param3,0,§!H§.§"!W§);
      }
      
      public function §&m§() : void
      {
         if(this.§8l§)
         {
            this.§8l§.visible = true;
            this.§8l§.alpha = 0;
         }
         this.§+g§ = 0;
      }
      
      public function §-!t§(param1:Boolean, param2:Number = 0, param3:Number = 0, param4:Number = 0) : void
      {
         if(param1)
         {
            this.§@z§ = new §6!<§(param2,param3,param4);
         }
         else
         {
            this.§@z§ = null;
         }
      }
      
      public function clearLevel() : void
      {
         if(this.§?!-§)
         {
            this.§?!-§.dispose();
            this.§?!-§ = null;
         }
         if(this.§!M§)
         {
            this.§!M§.dispose();
            this.§!M§ = null;
         }
         if(this.§3n§)
         {
            if(!this.§3n§.§8"5§)
            {
            }
            this.§3n§.clear();
            this.§3n§ = null;
         }
         if(this.§"!D§)
         {
            this.§"!D§.clear();
            this.§"!D§ = null;
         }
         if(this.§#!a§)
         {
            this.§#!a§.dispose();
            this.§#!a§ = null;
         }
         if(this.§-%§)
         {
            §&!+§ = this.§-%§.§@""§;
            this.§-%§.clear();
            this.§-%§ = null;
         }
         if(this.§"z§)
         {
            this.§"z§.dispose();
            this.§"z§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§`i§ = 0;
         this.§`!J§ = 0;
         this.mReadyToRun = false;
         this.§catch§ = false;
         this.§+g§ = §#w§.§!"#§;
         if(this.§#Q§)
         {
            (this.§#Q§ as §^8§).§1!t§.x = 0;
            (this.§#Q§ as §^8§).§1!t§.y = 0;
         }
         if(this.§8l§)
         {
            this.§8l§.visible = false;
         }
         this.§'Y§ = null;
         this.§'!`§ = null;
         if(this.§"H§)
         {
            this.§"H§.removeEventListener(Event.COMPLETE,this.§["5§);
            this.§"H§.removeEventListener(Event.CANCEL,this.§;!M§);
         }
         if(this.§for §)
         {
            this.§for §.removeEventListener(Event.COMPLETE,this.§^!M§);
            this.§for §.removeEventListener(Event.CANCEL,this.§[n§);
         }
         this.§[c§();
         if(§%!%§.§"T§)
         {
            §%!%§.§"T§.color = 0;
         }
         if(this.§8]§)
         {
            this.§8]§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver(param1:int) : void
      {
      }
      
      public function §@7§() : String
      {
         if(this.§'!`§)
         {
            return this.§'!`§.toString();
         }
         return null;
      }
      
      public function get §8!3§() : Number
      {
         if(this.§;§)
         {
            return this.§;§.speed;
         }
         return 1;
      }
      
      public function update(param1:Number, param2:Boolean) : Number
      {
         if(!this.mReadyToRun || !§%!%§.§5"%§())
         {
            return 0;
         }
         if(this.§'Y§ && this.§'Y§.§35§)
         {
            return this.§6!u§(param1,param2);
         }
         return this.§=_§(param1,true,param2);
      }
      
      protected function §=_§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc4_:Boolean = false;
         if(this.§;§)
         {
            _loc4_ = this.§;§.update(param1);
            param1 *= this.§;§.speed;
            if(§%!%§.§8B§)
            {
               §%!%§.§8B§.speed = this.§;§.speed;
            }
            if(!_loc4_)
            {
               this.§;§ = null;
            }
         }
         this.§`!J§ += param1;
         this.§`i§ += param1;
         this.§`i§ = this.§3n§.§#!1§(this.§`i§);
         this.§#!a§.update(param1,param3);
         if(param2)
         {
            this.§>!i§(param1);
         }
         return param1;
      }
      
      private function §6!u§(param1:Number, param2:Boolean) : Number
      {
         var _loc4_:Number = NaN;
         var _loc3_:Number = §=![§.§>^§;
         if(this.§'Y§)
         {
            param1 *= this.§'Y§.speed;
            _loc4_ = this.§`!J§ + param1;
            while(this.§`!J§ + _loc3_ < _loc4_)
            {
               if(this.§`!J§ + _loc3_ > this.§1!u§)
               {
                  this.§'Y§.step(this);
                  this.§1!u§ += _loc3_;
               }
               this.§=_§(_loc3_,false,param2);
            }
            if(_loc4_ > this.§1!u§ + _loc3_)
            {
               this.§'Y§.step(this);
               this.§1!u§ += _loc3_;
            }
            if(this.§`!J§ < _loc4_)
            {
               this.§=_§(_loc4_ - this.§`!J§,true,param2);
            }
            return param1;
         }
         return param1;
      }
      
      private function §>!i§(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         this.§?!-§.update(param1);
         this.§!M§.§!5§(param1,this.§3n§.§8"%§,this.§`i§);
         this.§^O§();
         if(this.§+g§ < §#w§.§!"#§)
         {
            this.§+g§ += param1;
            _loc2_ = §#w§.§!"#§ / 2;
            _loc3_ = (-Math.abs(this.§+g§ - _loc2_) + _loc2_) * (§#w§.§#8§ / _loc2_);
            if(this.§8l§)
            {
               this.§8l§.alpha = _loc3_;
            }
         }
         else if(this.§8l§)
         {
            this.§8l§.visible = false;
         }
         if(this.§@z§)
         {
            if(!this.§@z§.§#A§(this.§-%§,param1))
            {
               this.§-!t§(false);
            }
         }
         this.§-%§.§%&§(param1);
         this.§3n§.§7!k§();
         this.§"z§.update(param1);
      }
      
      public function §"!t§(param1:Number) : void
      {
         this.objects.§'?§(param1);
         this.§?O§();
      }
      
      protected function §^O§() : void
      {
         var _loc1_:§^^§ = null;
         if(this.§`K§ != null)
         {
            for each(_loc1_ in this.§`K§)
            {
               if(!_loc1_.isLeavingTrail)
               {
                  this.§-!S§(_loc1_);
               }
            }
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§&6§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            _loc2_ = this.§!M§.§>!r§(true);
            if(_loc2_)
            {
               _loc2_.scream();
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§!M§.§!!p§());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            _loc2_ = this.§!M§.§>!r§(true);
            if(_loc2_)
            {
               _loc2_.blink();
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§!M§.§!!p§());
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §=f§.§8J§;
         }
         §9J§.addScore(param1,param2);
         this.§8]§.addScore(param1);
         if(param3 && param1 > 0 && !this.§7!i§)
         {
            this.§=8§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §=8§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §=f§.§1i§;
         }
         this.§"z§.§6!=§(§=f§.§3;§,§0!q§.§4!H§,§=f§.§[u§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §'Z§(param1:§=6§) : void
      {
         if(this.§`K§ == null)
         {
            this.§`K§ = new Array();
         }
         this.§`K§.push(param1);
      }
      
      public function §4"-§() : void
      {
         this.§#!a§.§4"-§();
         this.§!M§.§3I§();
         this.§7!i§ = true;
      }
      
      public function §-!S§(param1:§^^§) : void
      {
         this.§"z§.§@v§(§0!q§.§5!W§);
         if(this.§`K§.indexOf(param1) >= 0)
         {
            this.§`K§.splice(this.§`K§.indexOf(param1),1);
         }
         if(this.§`K§.length == 0)
         {
            this.§`K§ = null;
         }
      }
      
      public function §8G§(param1:§-! §, param2:Number, param3:Number) : §6!-§
      {
         var _loc4_:§6!-§ = §6!-§(this.§!M§.§`!k§(param1.name,param1.x,param1.y,0,§!H§.§"!W§,true,true,true,param1.scale));
         var _loc5_:Number = param1.§?!w§;
         if(param1.§-"-§ > 1)
         {
            _loc4_.§<!o§(param1.§-"-§);
         }
         if(param1.§!9§ != 0)
         {
            _loc5_ = param1.§!9§;
         }
         var _loc6_:Number = -_loc5_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc7_:Number = _loc5_ * param2 * Math.sin(param3 / (180 / Math.PI));
         _loc4_.§=!P§(new b2Vec2(_loc6_,_loc7_),false,true);
         this.camera.§7!P§(§?!9§.§'W§);
         if(this.§'!`§)
         {
            this.§'!`§.§8G§(this.§3n§.§%u§,param1.x,param1.y,param2,param3);
         }
         return _loc4_;
      }
      
      public function activateSpecialPower(param1:Number, param2:Number) : void
      {
         this.§catch§ = true;
         this.§<4§ = param1;
         this.§8q§ = param2;
      }
      
      private function §?O§() : void
      {
         if(!this.§catch§)
         {
            return;
         }
         this.§catch§ = false;
         if(this.§!M§.activeObject is §6!-§)
         {
            this.§!M§.activateSpecialPower(this.§<4§,this.§8q§);
         }
         if(this.§'!`§)
         {
            this.§'!`§.§5J§(this.§3n§.§%u§,this.§<4§,this.§8q§);
         }
      }
      
      public function §0!9§() : void
      {
         this.§!M§.§0!9§();
      }
      
      public function §5!§() : void
      {
         this.§!M§.§4%§();
      }
      
      public function §<!Y§() : §7@§
      {
         var _loc1_:§7@§ = new §7@§();
         _loc1_.scoreGold = this.§7n§.scoreGold;
         _loc1_.scoreSilver = this.§7n§.scoreSilver;
         this.§-%§.§>!3§(_loc1_);
         this.§!M§.§22§(_loc1_);
         this.§#!a§.§#"0§(_loc1_);
         _loc1_.theme = this.§?!-§.§`]§();
         return _loc1_;
      }
      
      public function §#n§() : int
      {
         return this.§7n§.scoreSilver;
      }
      
      public function § !=§() : int
      {
         return this.§7n§.scoreGold;
      }
      
      public function § #§(param1:int) : void
      {
         this.§7n§.scoreSilver = param1;
      }
      
      public function §2!]§(param1:int) : void
      {
         this.§7n§.scoreGold = param1;
      }
      
      public function §&a§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§4",§ = param1;
         this.§ case§ = param2;
         this.§`!l§ = param3;
         this.§&"-§ = param4;
         if(this.§1!X§)
         {
            this.§1!X§.§8!t§(param1,param2);
         }
         if(this.§-%§)
         {
            this.§-%§.§%&§(0);
         }
      }
      
      public function get currentLevel() : §7@§
      {
         return this.§7n§;
      }
      
      public function get levelObjects() : §!H§
      {
         return this.§!M§;
      }
      
      protected function get §`F§() : §%!%§
      {
         return this.§#D§;
      }
      
      public function get §6F§() : int
      {
         return §!"'§;
      }
   }
}
