package §?!<§
{
   import §""<§.§#N§;
   import §&!S§.b2Vec2;
   import §'!&§.DisplayObject;
   import §'!&§.Sprite;
   import §'#§.§4!!§;
   import §+!9§.§;0§;
   import §,§.;
   import §,§.§-!d§;
   import §,7§.§9!v§;
   import §,7§.§?L§;
   import §-!b§.§9U§;
   import §3!4§.§ ![§;
   import §7";§.§9![§;
   import §8";§.§#+§;
   import §8";§.§`!a§;
   import §8o§.§""4§;
   import §8o§.§5"%§;
   import §8o§.§^!L§;
   import §;!0§.§!!X§;
   import §;!0§.;
   import §;!0§.§2!4§;
   import §;"=§.§3"=§;
   import §<!#§.§3"%§;
   import §<"9§.§0";§;
   import §@!@§.b2Settings;
   import §[!v§.§!e§;
   import §[,§.§#!v§;
   import §[,§.§1d§;
   import §[,§.§5,§;
   import §[,§.§<!f§;
   import §[,§.§]j§;
   import §[r§.§ use§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §'!1§
   {
      
      private static const §@w§:int = 20;
      
      public static const §,o§:Number = §;0§.§+g§;
      
      public static const §3"?§:Number = §;0§.§5+§;
      
      public static const §<!@§:Number = 1 / 20;
      
      public static const §3O§:Number = §;0§.§5+§ * §<!@§;
      
      public static const §&"-§:Number = §,o§ * §<!@§;
      
      public static const §^x§:§4!!§ = new §4!!§(13 - 3);
      
      protected static var §@!u§:String;
      
      protected static var §!U§:Number = 1;
      
      protected static var §[z§:String = §!!X§.§7!y§;
       
      
      protected var §#!u§:§]j§;
      
      private var §8@§:Array = null;
      
      protected var §]"3§:§9U§;
      
      public var mLevelEngine:§,p§;
      
      protected var §#!$§:§]!Q§;
      
      protected var §=5§:§ use§;
      
      protected var §]v§:§&V§;
      
      protected var §7!J§:§?L§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §+t§:Boolean = false;
      
      protected var §;=§:Boolean = false;
      
      protected var §,!N§:Boolean = false;
      
      public var §0U§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §8U§:Number;
      
      public var §@!v§:Number;
      
      private var §9!§:§^w§;
      
      private var §4!<§:Sprite;
      
      protected var §0!9§:§!!X§;
      
      protected var §]!!§:§0";§ = null;
      
      private var §+!z§:EventDispatcher;
      
      private var §2"$§:Array;
      
      private var §3"D§:§ ![§;
      
      private var §1+§:§#+§;
      
      protected var §3'§:§5"%§;
      
      protected var §13§:§""4§;
      
      private var §7!I§:§^!L§;
      
      private var §6C§:§^!L§;
      
      private var §#"@§:§^!L§;
      
      private var §,""§:Stage;
      
      private var §4!5§:§5!,§;
      
      protected var §=G§:§9![§;
      
      protected var §6q§:§9![§;
      
      protected var §2c§:Number = 0.0;
      
      protected var §8"8§:String;
      
      private var §&"B§:Boolean;
      
      private var §,!y§:Number;
      
      private var §<"C§:Number;
      
      protected var §#X§:§8!m§;
      
      protected var §@1§:§3"=§;
      
      protected var §,!r§:§,§.§#0§;
      
      protected var §,W§:§;!0§.§#2§;
      
      protected var §?"C§:uint = 1.417339207E9;
      
      public var §,"#§:Boolean;
      
      protected var §%!s§:int = 0;
      
      protected var §`!C§:int = 0;
      
      protected var §[=§:Number = 1.0;
      
      protected var §=!=§:Number = 1.0;
      
      protected var §>!=§:Boolean;
      
      public function §'!1§(param1:Stage, param2:§3"=§, param3:§,§.§#0§, param4:§;!0§.§#2§)
      {
         this.§2"$§ = [];
         super();
         this.§+!z§ = new EventDispatcher();
         this.§,""§ = param1;
         this.§@1§ = param2;
         this.§,!r§ = param3;
         this.§,W§ = param4;
         this.§3'§ = §5"%§.§<"B§;
         this.§13§ = this.initAnimationManager(this.§3'§);
         this.§7!I§ = this.initThemeGraphicsManager();
         this.§6C§ = this.initThemeSoundsManager();
         this.§#"@§ = this.initCutSceneManager();
         var _loc5_:Stage3D = param1.stage3Ds[0];
         this.§3"D§ = new § ![§(§^w§,param1,new Rectangle(0,0,§;0§.§+g§,§;0§.§5+§),_loc5_);
         §;0§.§3>§.addEventListener(§3"%§.§9!w§,this.§3"D§.onEnterFrame);
         _loc5_.addEventListener(Event.CONTEXT3D_CREATE,this.§+!0§,false,0,true);
         this.§3"D§.§>H§ = false;
         this.§3"D§.enableErrorChecking = false;
         this.§3"D§.§;<§ = 2;
         this.§3"D§.§9D§();
      }
      
      public static function §^!x§(param1:§1d§, param2:§1d§) : Number
      {
         var _loc3_:Number = param1.§ ^§ - param2.§ ^§;
         var _loc4_:Number = param1.§0,§ - param2.§0,§;
         return §,"7§(_loc3_,_loc4_);
      }
      
      public static function §,"7§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      protected function get sprite() : Sprite
      {
         if(!this.§4!<§ && this.§9!%§)
         {
            this.§4!<§ = this.§9!§.§5">§;
         }
         return this.§4!<§;
      }
      
      public function get §9!%§() : Sprite
      {
         if(!this.§9!§)
         {
            this.§9!§ = this.§3"D§.§#M§ as §^w§;
            this.§9!§.§="E§ = false;
         }
         return this.§9!§;
      }
      
      private function get §?N§() : DisplayObject
      {
         if(this.§9!%§)
         {
            return (this.§9!%§ as §^w§).§?N§;
         }
         return null;
      }
      
      public function get animationManager() : §""4§
      {
         return this.§13§;
      }
      
      public function get textureManager() : §5"%§
      {
         return this.§3'§;
      }
      
      public function get camera() : § use§
      {
         return this.§=5§;
      }
      
      public function get objects() : §]j§
      {
         return this.§#!u§;
      }
      
      public function get particles() : §?L§
      {
         return this.§7!J§;
      }
      
      public function get background() : §9U§
      {
         return this.§]"3§;
      }
      
      public function get slingshot() : §&V§
      {
         return this.§]v§;
      }
      
      public function get §'!I§() : §]!Q§
      {
         return this.§#!$§;
      }
      
      public function get stage() : Stage
      {
         return this.§,""§;
      }
      
      public function get levelItemManager() : §3"=§
      {
         return this.§@1§;
      }
      
      public function get §;"?§() : §^!L§
      {
         return this.§#"@§;
      }
      
      protected function get §>!n§() : §^!L§
      {
         return this.§7!I§;
      }
      
      public function setSlowMotion(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§#X§ = new §8!m§(param1,param2,param3,param4);
      }
      
      public function get damageScoreMultiplier() : int
      {
         return §'!1§.§^x§.getValue();
      }
      
      public function clear() : void
      {
         if(this.§1+§)
         {
            this.§1+§.dispose();
         }
         if(this.§3'§)
         {
            this.§3'§.dispose();
         }
         if(this.§7!I§ && this.§7!I§.textureManager)
         {
            this.§7!I§.textureManager.dispose();
         }
         if(this.§#"@§ && this.§#"@§.textureManager)
         {
            this.§#"@§.textureManager.dispose();
         }
         if(this.§3"D§)
         {
            this.§3"D§.dispose();
         }
      }
      
      protected function initThemeGraphicsManager() : §^!L§
      {
         return new §^!L§(this.§,""§.loaderInfo.parameters.assetsUrl || "",this.§,""§.loaderInfo.parameters.buildNumber || "",this.§,W§);
      }
      
      protected function initThemeSoundsManager() : §^!L§
      {
         return new §^!L§(this.§,""§.loaderInfo.parameters.assetsUrl || "",this.§,""§.loaderInfo.parameters.buildNumber || "",this.§,W§,false);
      }
      
      protected function initCutSceneManager() : §^!L§
      {
         return new §^!L§(this.§,""§.loaderInfo.parameters.assetsUrl || "",this.§,""§.loaderInfo.parameters.buildNumber || "",this.§,W§);
      }
      
      protected function initAnimationManager(param1:§5"%§) : §""4§
      {
         return new §""4§(param1);
      }
      
      public function §'!z§(param1:Boolean) : void
      {
         if(§ ![§.§!G§)
         {
            if(param1)
            {
               § ![§.§!G§.start();
            }
            else
            {
               § ![§.§!G§.stop();
               § ![§.§!G§.color = 0;
            }
         }
      }
      
      public function §-s§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function §'"8§(param1:§0";§) : void
      {
         if(this.§]!!§ != null)
         {
            this.§]!!§.removeEventListeners();
         }
         this.§]!!§ = param1;
         if(this.mReadyToRun)
         {
            this.§]!!§.addEventListeners();
         }
      }
      
      public function §2l§() : §9![§
      {
         return this.§=G§;
      }
      
      protected function §5!@§(param1:§`!a§) : int
      {
         return 0;
      }
      
      public function §77§(param1:§#+§, param2:Function) : void
      {
         var _loc5_:§`!a§ = null;
         var _loc6_:int = 0;
         this.§1+§ = param1;
         var _loc3_:int = this.§1+§.§<!3§;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = this.§1+§.§,!;§(_loc4_);
            _loc6_ = this.§5!@§(_loc5_);
            this.§3'§.§8#§(_loc5_,_loc6_);
            _loc4_++;
         }
         if(param2 != null)
         {
            this.§+!z§.addEventListener(Event.INIT,param2);
            this.§2"$§.push(param2);
         }
         if(this.§,O§())
         {
            this.§#!4§();
         }
      }
      
      private function §,O§() : Boolean
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(this.§3'§.§""=§())
         {
            _loc1_ = this.§3'§.§<V§ / 1000;
            _loc2_ = this.§3'§.§"!c§ / 1000;
            §#N§.log("\n\nMain texture manager memory usage:\n   textures " + _loc1_ + " kilobytes\n   bitmaps " + _loc2_ + " kilobytes\n\n");
            this.initializeAnimations();
            this.§>!=§ = false;
            return true;
         }
         this.§>!=§ = true;
         return false;
      }
      
      protected function initializeAnimations() : void
      {
         this.§13§.initializeAnimations();
         this.§@1§.initAnimations();
      }
      
      private function §+!0§(param1:Event) : void
      {
         this.§3'§.§1!>§();
         if(this.§>!n§ && this.§>!n§.textureManager)
         {
            this.§>!n§.textureManager.§1!>§();
         }
         if(this.§;"?§ && this.§;"?§.textureManager)
         {
            this.§;"?§.textureManager.§1!>§();
         }
         if(this.§>!=§)
         {
            this.§,O§();
            this.§#!4§();
         }
         if(this.§]!!§ != null && this.mReadyToRun)
         {
            this.§]!!§.addEventListeners();
         }
         if(this.§7!I§)
         {
            this.§7!I§.§""=§();
         }
         if(this.§#"@§)
         {
            if(this.§#"@§.textureManager)
            {
               this.§#"@§.textureManager.§1!>§();
               this.§#"@§.§""=§();
            }
         }
      }
      
      private function §#!4§() : void
      {
         this.§+!z§.dispatchEvent(new Event(Event.INIT));
         this.§-!a§();
      }
      
      private function §-!a§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§2"$§)
         {
            this.§+!z§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§2"$§ = [];
      }
      
      public function init(param1:§!!X§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§#!$§ = new §]!Q§(this,param1);
         this.§=5§ = this.initializeLevelCamera(param1);
         this.§8U§ = 0;
         this.§@!v§ = 0;
         this.§&"B§ = false;
         this.mReadyToRun = false;
         this.§+t§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         param1.theme = param1.theme || "background_blue_grass";
         §[z§ = param1.theme;
         this.§0!9§ = param1;
         this.§;=§ = this.§<N§(param1.theme);
         this.§,!N§ = this.§?Q§(param1.theme);
         if(this.§;=§ && this.§,!N§)
         {
            this.initialize(param1);
         }
         else
         {
            this.§0!O§(param1.theme);
         }
         this.§?!T§(param1.name);
         §8R§.init();
      }
      
      protected function §?!T§(param1:String) : void
      {
         this.§=G§ = new §9![§(param1);
      }
      
      protected function §<N§(param1:String) : Boolean
      {
         if(this.§7!I§)
         {
            return false;
         }
         return true;
      }
      
      protected function §?Q§(param1:String) : Boolean
      {
         var _loc2_:§-!d§ = null;
         if(this.§6C§)
         {
            _loc2_ = this.§,!r§.getBackground(param1);
            if(_loc2_)
            {
               if(_loc2_.§2">§ && !this.§6C§.§6!0§(_loc2_.§2">§))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function getThemeGraphicsLoadList(param1:String) : Array
      {
         return null;
      }
      
      protected function §0!O§(param1:String) : void
      {
         var _loc2_:Array = null;
         var _loc3_:§-!d§ = null;
         if(this.§7!I§ && !this.§<N§(param1))
         {
            this.§7!I§.removeEventListener(Event.COMPLETE,this.§[!2§);
            this.§7!I§.removeEventListener(Event.CANCEL,this.§1!c§);
            this.§7!I§.addEventListener(Event.COMPLETE,this.§[!2§);
            this.§7!I§.addEventListener(Event.CANCEL,this.§1!c§);
            _loc2_ = this.getThemeGraphicsLoadList(param1);
            this.§7!I§.§5m§(param1,_loc2_);
         }
         if(this.§6C§ && !this.§?Q§(param1))
         {
            this.§6C§.removeEventListener(Event.COMPLETE,this.§+! §);
            this.§6C§.removeEventListener(Event.CANCEL,this.§ !l§);
            this.§6C§.addEventListener(Event.COMPLETE,this.§+! §);
            this.§6C§.addEventListener(Event.CANCEL,this.§ !l§);
            _loc3_ = this.§,!r§.getBackground(param1);
            if(_loc3_)
            {
               this.§6C§.§5m§(_loc3_.§2">§);
            }
         }
      }
      
      private function §[!2§(param1:Event) : void
      {
         this.§7!I§.removeEventListener(Event.COMPLETE,this.§[!2§);
         this.§7!I§.removeEventListener(Event.CANCEL,this.§1!c§);
         this.§;=§ = true;
         if(this.§;=§ && this.§,!N§)
         {
            this.initialize(this.§0!9§);
         }
      }
      
      private function §1!c§(param1:Event) : void
      {
         this.§7!I§.removeEventListener(Event.COMPLETE,this.§[!2§);
         this.§7!I§.removeEventListener(Event.CANCEL,this.§1!c§);
         this.§+t§ = true;
      }
      
      private function §+! §(param1:Event) : void
      {
         this.§7!I§.removeEventListener(Event.COMPLETE,this.§+! §);
         this.§7!I§.removeEventListener(Event.CANCEL,this.§ !l§);
         this.§,!N§ = true;
         if(this.§;=§ && this.§,!N§)
         {
            this.initialize(this.§0!9§);
         }
      }
      
      private function § !l§(param1:Event) : void
      {
         this.§7!I§.removeEventListener(Event.COMPLETE,this.§+! §);
         this.§7!I§.removeEventListener(Event.CANCEL,this.§ !l§);
         this.§,!N§ = true;
         if(this.§;=§ && this.§,!N§)
         {
            this.initialize(this.§0!9§);
         }
      }
      
      public function get backgroundTextureManager() : §5"%§
      {
         if(this.§>!n§)
         {
            return this.§>!n§.textureManager;
         }
         return null;
      }
      
      protected function initializePhysicsConstants(param1:§!!X§) : void
      {
         b2Settings.b2_linearSleepTolerance = b2Settings.§'!;§;
      }
      
      private function initialize(param1:§!!X§) : void
      {
         this.§#X§ = null;
         this.§,"#§ = false;
         if(§ ![§.§7`§)
         {
            § ![§.§7`§.speed = 1;
         }
         this.initializePhysicsConstants(param1);
         this.initLevelEngine(param1);
         this.§]"3§ = this.initializeLevelBackground(param1.theme,0 / §<!@§,this.backgroundTextureManager,this.§=5§.§+r§());
         this.§]"3§.§<4§(§;0§.§%!3§());
         if(§ ![§.§!G§)
         {
            § ![§.§!G§.color = this.§]"3§.skyColor;
         }
         this.§#!u§ = this.initializeLevelObjectManager(param1);
         this.§]v§ = this.initializeLevelSlingshot(param1);
         this.§7!J§ = this.§@-§(this.§13§,this.§3'§);
         this.§=5§.init();
         this.§'!Z§();
         this.§@![§();
         this.mReadyToRun = true;
         if(this.§]!!§)
         {
            this.§]!!§.addEventListeners();
         }
         if(param1.name == §@!u§)
         {
            this.§=5§.§@!x§(§!U§);
            this.§[J§(0);
         }
         else
         {
            §@!u§ = param1.name;
         }
         this.levelInitialized();
      }
      
      protected function levelInitialized() : void
      {
      }
      
      protected function initLevelEngine(param1:§!!X§) : void
      {
         this.mLevelEngine = new §,p§(this);
      }
      
      protected function §@![§() : void
      {
         if(this.§8"8§)
         {
            this.§6q§ = §9![§.initialize(this.§8"8§);
            this.§6q§.speed = 1;
            this.§6q§.play();
            this.§2c§ = -1000;
            this.§8"8§ = null;
         }
      }
      
      public function §!"0§(param1:String) : void
      {
         this.§8"8§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§6q§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§6q§)
         {
            if(param1)
            {
               this.§6q§.speed = Math.min(this.§6q§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§6q§.speed = Math.max(this.§6q§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§6q§)
         {
            this.§6q§.speed = 1;
         }
      }
      
      protected function initializeLevelObjectManager(param1:§!!X§) : §]j§
      {
         var _loc2_:String = §-!d§.§`"=§;
         return new §]j§(this,param1,new Sprite(),_loc2_);
      }
      
      protected function initializeLevelCamera(param1:§!!X§) : § use§
      {
         return new § use§(this,param1);
      }
      
      protected function initializeLevelBackground(param1:String, param2:Number, param3:§5"%§, param4:Number) : §9U§
      {
         var _loc5_:§-!d§;
         if((_loc5_ = this.§,!r§.getBackground(param1)) == null)
         {
            §#N§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §!!X§.§7!y§;
            _loc5_ = this.§,!r§.getBackground(param1);
         }
         return new §9U§(_loc5_,param2,param3,param4,!§ ![§.§>n§);
      }
      
      protected function initializeLevelSlingshot(param1:§!!X§) : §&V§
      {
         return new §&V§(this,param1,new Sprite());
      }
      
      protected function §@-§(param1:§""4§, param2:§5"%§) : §?L§
      {
         return new §?L§(param1,param2);
      }
      
      public function initializeEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§!!X§ = new §!!X§();
         _loc3_.slingshotY = -12;
         var _loc4_:§2!4§;
         (_loc4_ = new §2!4§()).left = 0;
         _loc4_.top = -§ use§.§2H§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + § use§.§2H§;
         _loc4_.right = _loc4_.left + § use§.§7m§;
         _loc4_.y = -13.929;
         _loc4_.x = § use§.§7m§;
         _loc4_.id = § use§.§["A§;
         _loc3_.§^!'§(_loc4_);
         var _loc5_:§2!4§;
         (_loc5_ = new §2!4§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + § use§.§7m§;
         _loc5_.bottom = _loc5_.top + § use§.§2H§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + § use§.§7m§ / 2;
         _loc5_.id = § use§.§-S§;
         _loc3_.§^!'§(_loc5_);
         this.§^t§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§[z§ != null)
         {
            _loc3_.theme = §[z§;
         }
         this.init(_loc3_);
      }
      
      protected function §^t§(param1:§!!X§, param2:Boolean) : void
      {
         if(param2)
         {
            this.§6!5§(param1);
         }
      }
      
      protected function § "%§() : Number
      {
         this.§?"C§ ^= this.§?"C§ << 21;
         this.§?"C§ ^= this.§?"C§ >>> 35;
         this.§?"C§ ^= this.§?"C§ << 4;
         return this.§?"C§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §6!5§(param1:§!!X§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§!e§ = null;
         this.§?"C§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§ "%§() * 5;
               (_loc5_ = new §!e§()).x = 30 + _loc3_ * 10 + this.§ "%§() * 9;
               if(_loc2_ == 0)
               {
                  _loc5_.y = 0;
                  if(_loc3_ == 1 || _loc3_ == 2 || _loc3_ == 4)
                  {
                     _loc5_.type = "PIG_MUSTACHE";
                  }
                  else
                  {
                     _loc5_.type = "PIG_HELMET";
                  }
                  _loc5_.angle = 45 - this.§ "%§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§ "%§() * 3 - _loc3_ * 8;
                  if((_loc4_ = (_loc3_ * _loc3_ + _loc2_ * _loc3_ + _loc2_) % 5) < 2)
                  {
                     _loc5_.type = "BIRD_RED";
                  }
                  else if(_loc4_ == 3)
                  {
                     _loc5_.type = "BIRD_YELLOW";
                  }
                  else
                  {
                     _loc5_.type = "BIRD_BLUE";
                  }
                  _loc5_.angle = this.§ "%§() * 360;
               }
               param1.addObject(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      private function §6"A§() : void
      {
      }
      
      protected function §'!Z§() : void
      {
         if(§9U§.§^"7§)
         {
            this.§@S§(this.§]"3§.§^!3§);
         }
         this.§@S§(this.§7!J§.§8w§(§?L§.§2!b§));
         this.§@S§(this.§7!J§.§8w§(§?L§.§!S§));
         this.§@S§(this.§#!u§.§^!b§);
         this.§@S§(this.§]v§.sprite);
         this.§@S§(this.§7!J§.§8w§(§?L§.§7!B§));
         this.§@S§(this.§]"3§.§"!%§);
         if(§9U§.§^"7§)
         {
            this.§@S§(this.§]"3§.§;"9§);
         }
         this.§@S§(this.§#!u§.overlaySprite);
         this.§@S§(this.§7!J§.§8w§(§?L§.§`"6§));
         if(!§,p§.§@8§)
         {
         }
      }
      
      protected function §@S§(param1:DisplayObject) : void
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
         if(§;0§.§@'§ > §;0§.§6[§)
         {
            param1 /= §;0§.§@'§;
            param2 /= §;0§.§@'§;
         }
         else
         {
            param1 /= §;0§.§6[§;
            param2 /= §;0§.§6[§;
         }
         param3.x = ((param1 - this.sprite.x) / § use§.§#!;§ + this.§=5§.§,J§) * §<!@§;
         param3.y = ((param2 - this.sprite.y) / § use§.§#!;§ + this.§=5§.§9"+§) * §<!@§;
         return param3;
      }
      
      public function §^_§(param1:Number, param2:Number, param3:Point = null) : Point
      {
         if(!param3)
         {
            param3 = new Point();
         }
         param3.x = (param1 / §<!@§ - this.§=5§.§,J§) * § use§.§#!;§ + this.sprite.x;
         param3.y = (param2 / §<!@§ - this.§=5§.§9"+§) * § use§.§#!;§ + this.sprite.y;
         var _loc4_:Number = Math.max(§;0§.§@'§,§;0§.§6[§);
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
            this.background.setScreenOffset(param1,param2,this.§%!s§,this.§`!C§,param3,this.§[=§,this.§=!=§);
         }
         if(this.objects)
         {
            this.objects.§%!2§(param1,param2);
         }
         if(this.mLevelEngine)
         {
            this.mLevelEngine.§%!2§(param1,param2);
         }
         if(this.slingshot)
         {
            this.slingshot.§%!2§(param1,param2);
         }
         if(this.particles)
         {
            this.particles.§%!2§(param1,param2);
         }
      }
      
      public function §[S§(param1:String, param2:Number, param3:Number) : void
      {
         this.§#!u§.addObject(param1,param2,param3,0,§]j§.§4"1§);
      }
      
      public function §8"F§() : void
      {
         if(this.§?N§)
         {
            this.§?N§.visible = true;
            this.§?N§.alpha = 0;
         }
         this.§0U§ = 0;
      }
      
      public function §+!I§(param1:Boolean, param2:Number = 0, param3:Number = 0, param4:Number = 0) : void
      {
         if(param1)
         {
            this.§4!5§ = new §5!,§(param2,param3,param4);
         }
         else
         {
            this.§4!5§ = null;
         }
      }
      
      public function clearLevel() : void
      {
         if(this.§]"3§)
         {
            this.§]"3§.dispose();
            this.§]"3§ = null;
         }
         if(this.§#!u§)
         {
            this.§#!u§.dispose();
            this.§#!u§ = null;
         }
         if(this.mLevelEngine)
         {
            if(!this.mLevelEngine.§ "3§)
            {
            }
            this.mLevelEngine.clear();
            this.mLevelEngine = null;
         }
         if(this.§#!$§)
         {
            this.§#!$§.clear();
            this.§#!$§ = null;
         }
         if(this.§]v§)
         {
            this.§]v§.dispose();
            this.§]v§ = null;
         }
         if(this.§=5§)
         {
            §!U§ = this.§=5§.§]u§;
            this.§=5§.clear();
            this.§=5§ = null;
         }
         if(this.§7!J§)
         {
            this.§7!J§.dispose();
            this.§7!J§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§8U§ = 0;
         this.§@!v§ = 0;
         this.mReadyToRun = false;
         this.§&"B§ = false;
         this.§0U§ = §`!Y§.§[!"§;
         if(this.§9!%§)
         {
            (this.§9!%§ as §^w§).§^l§.x = 0;
            (this.§9!%§ as §^w§).§^l§.y = 0;
         }
         if(this.§?N§)
         {
            this.§?N§.visible = false;
         }
         this.§6q§ = null;
         this.§=G§ = null;
         if(this.§7!I§)
         {
            this.§7!I§.removeEventListener(Event.COMPLETE,this.§[!2§);
            this.§7!I§.removeEventListener(Event.CANCEL,this.§1!c§);
         }
         if(this.§6C§)
         {
            this.§6C§.removeEventListener(Event.COMPLETE,this.§+! §);
            this.§6C§.removeEventListener(Event.CANCEL,this.§ !l§);
         }
         this.§-!a§();
         if(§ ![§.§!G§)
         {
            § ![§.§!G§.color = 0;
         }
         if(this.§]!!§)
         {
            this.§]!!§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver(param1:int) : void
      {
      }
      
      public function §`!B§() : String
      {
         if(this.§=G§)
         {
            return this.§=G§.toString();
         }
         return null;
      }
      
      public function get §5"C§() : Number
      {
         if(this.§#X§)
         {
            return this.§#X§.speed;
         }
         return 1;
      }
      
      public function update(param1:Number, param2:Boolean) : Number
      {
         if(!this.mReadyToRun || !§ ![§.§[c§())
         {
            return 0;
         }
         if(this.§6q§ && this.§6q§.§`]§)
         {
            return this.§ !H§(param1,param2);
         }
         return this.§%!>§(param1,true,param2);
      }
      
      protected function §%!>§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc4_:Boolean = false;
         if(this.§#X§)
         {
            _loc4_ = this.§#X§.update(param1);
            param1 *= this.§#X§.speed;
            if(§ ![§.§7`§)
            {
               § ![§.§7`§.speed = this.§#X§.speed;
            }
            if(!_loc4_)
            {
               this.§#X§ = null;
            }
         }
         this.§@!v§ += param1;
         this.§8U§ += param1;
         this.§8U§ = this.mLevelEngine.§9S§(this.§8U§);
         this.§]v§.update(param1,param3);
         if(param2)
         {
            this.§[J§(param1);
         }
         return param1;
      }
      
      private function § !H§(param1:Number, param2:Boolean) : Number
      {
         var _loc4_:Number = NaN;
         var _loc3_:Number = §,p§.§]!L§;
         if(this.§6q§)
         {
            param1 *= this.§6q§.speed;
            _loc4_ = this.§@!v§ + param1;
            while(this.§@!v§ + _loc3_ < _loc4_)
            {
               if(this.§@!v§ + _loc3_ > this.§2c§)
               {
                  this.§6q§.step(this);
                  this.§2c§ += _loc3_;
               }
               this.§%!>§(_loc3_,false,param2);
            }
            if(_loc4_ > this.§2c§ + _loc3_)
            {
               this.§6q§.step(this);
               this.§2c§ += _loc3_;
            }
            if(this.§@!v§ < _loc4_)
            {
               this.§%!>§(_loc4_ - this.§@!v§,true,param2);
            }
            return param1;
         }
         return param1;
      }
      
      private function §[J§(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         this.§]"3§.update(param1);
         this.§#!u§.renderObjects(param1,this.mLevelEngine.§78§,this.§8U§);
         this.§+!H§();
         if(this.§0U§ < §`!Y§.§[!"§)
         {
            this.§0U§ += param1;
            _loc2_ = §`!Y§.§[!"§ / 2;
            _loc3_ = (-Math.abs(this.§0U§ - _loc2_) + _loc2_) * (§`!Y§.§-f§ / _loc2_);
            if(this.§?N§)
            {
               this.§?N§.alpha = _loc3_;
            }
         }
         else if(this.§?N§)
         {
            this.§?N§.visible = false;
         }
         if(this.§4!5§)
         {
            if(!this.§4!5§.§?&§(this.§=5§,param1))
            {
               this.§+!I§(false);
            }
         }
         this.§=5§.§&;§(param1);
         this.mLevelEngine.§3!!§();
         this.§7!J§.update(param1);
      }
      
      public function §=v§(param1:Number) : void
      {
         this.objects.updateObjects(param1);
         this.§"-§();
      }
      
      protected function §+!H§() : void
      {
         var _loc1_:§5,§ = null;
         if(this.§8@§ != null)
         {
            for each(_loc1_ in this.§8@§)
            {
               if(!_loc1_.isLeavingTrail)
               {
                  this.§8!l§(_loc1_);
               }
            }
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§<!f§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            _loc2_ = this.§#!u§.§@t§(true);
            if(_loc2_)
            {
               _loc2_.scream();
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§#!u§.§#!8§());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            _loc2_ = this.§#!u§.§@t§(true);
            if(_loc2_)
            {
               _loc2_.blink();
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§#!u§.§#!8§());
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §9!v§.§-""§;
         }
         §8R§.addScore(param1,param2);
         this.§]!!§.addScore(param1);
         if(param3 && param1 > 0 && !this.§,"#§)
         {
            this.§[9§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §[9§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §9!v§.§<"#§;
         }
         this.§7!J§.§=J§(§9!v§.§5!j§,§?L§.§`"6§,§9!v§.§8!!§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function § !3§(param1:§1d§) : void
      {
         if(this.§8@§ == null)
         {
            this.§8@§ = new Array();
         }
         this.§8@§.push(param1);
      }
      
      public function §[E§() : void
      {
         this.§]v§.§[E§();
         this.§#!u§.§<!z§();
         this.§,"#§ = true;
      }
      
      public function §8!l§(param1:§5,§) : void
      {
         this.§7!J§.§<"!§(§?L§.§2!b§);
         if(this.§8@§.indexOf(param1) >= 0)
         {
            this.§8@§.splice(this.§8@§.indexOf(param1),1);
         }
         if(this.§8@§.length == 0)
         {
            this.§8@§ = null;
         }
      }
      
      public function §#n§(param1:§6"3§, param2:Number, param3:Number) : §#!v§
      {
         var _loc4_:§#!v§ = §#!v§(this.§#!u§.addObject(param1.name,param1.x,param1.y,0,§]j§.§4"1§,true,true,true,param1.scale));
         var _loc5_:Number = param1.§`!9§;
         if(param1.§2"A§ > 1)
         {
            _loc4_.§33§(param1.§2"A§);
         }
         if(param1.§'Y§ != 0)
         {
            _loc5_ = param1.§'Y§;
         }
         var _loc6_:Number = -_loc5_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc7_:Number = _loc5_ * param2 * Math.sin(param3 / (180 / Math.PI));
         _loc4_.§]Q§(new b2Vec2(_loc6_,_loc7_),false,true);
         this.camera.§`4§(§ use§.§`"E§);
         if(this.§=G§)
         {
            this.§=G§.§#n§(this.mLevelEngine.§8!R§,param1.x,param1.y,param2,param3);
         }
         return _loc4_;
      }
      
      public function activateSpecialPower(param1:Number, param2:Number) : void
      {
         this.§&"B§ = true;
         this.§,!y§ = param1;
         this.§<"C§ = param2;
      }
      
      private function §"-§() : void
      {
         if(!this.§&"B§)
         {
            return;
         }
         this.§&"B§ = false;
         if(this.§#!u§.activeObject is §#!v§)
         {
            this.§#!u§.activateSpecialPower(this.§,!y§,this.§<"C§);
         }
         if(this.§=G§)
         {
            this.§=G§.§?!I§(this.mLevelEngine.§8!R§,this.§,!y§,this.§<"C§);
         }
      }
      
      public function §;p§() : void
      {
         this.§#!u§.§;p§();
      }
      
      public function §[!x§() : void
      {
         this.§#!u§.§&!Y§();
      }
      
      public function getCurrentLevelData() : §!!X§
      {
         var _loc1_:§!!X§ = new §!!X§();
         _loc1_.scoreGold = this.§0!9§.scoreGold;
         _loc1_.scoreSilver = this.§0!9§.scoreSilver;
         this.§=5§.writeCameraInformation(_loc1_);
         this.§#!u§.writeObjectInformation(_loc1_);
         this.§]v§.writeSlingshotInformation(_loc1_);
         _loc1_.theme = this.§]"3§.getCurrentThemeName();
         return _loc1_;
      }
      
      public function §^5§() : int
      {
         return this.§0!9§.scoreSilver;
      }
      
      public function §29§() : int
      {
         return this.§0!9§.scoreGold;
      }
      
      public function §^<§(param1:int) : void
      {
         this.§0!9§.scoreSilver = param1;
      }
      
      public function § 2§(param1:int) : void
      {
         this.§0!9§.scoreGold = param1;
      }
      
      public function §!!Y§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§%!s§ = param1;
         this.§`!C§ = param2;
         this.§[=§ = param3;
         this.§=!=§ = param4;
         if(this.§9!§)
         {
            this.§9!§.§,6§(param1,param2);
         }
         if(this.§=5§)
         {
            this.§=5§.§&;§(0);
         }
      }
      
      public function get currentLevel() : §!!X§
      {
         return this.§0!9§;
      }
      
      public function get levelObjects() : §]j§
      {
         return this.§#!u§;
      }
      
      protected function get §1u§() : § ![§
      {
         return this.§3"D§;
      }
      
      public function get §2i§() : int
      {
         return §@w§;
      }
   }
}
