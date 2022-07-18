package §^#>§
{
   import § !w§.§0p§;
   import § #§.§&!>§;
   import §!!U§.DisplayObject;
   import §!!U§.Sprite;
   import §"a§.§?#&§;
   import §&#H§.§3#J§;
   import §-!_§.§,#Q§;
   import §1!i§.§,#_§;
   import §1!i§.§;7§;
   import §2"Y§.§,§;
   import §2d§.§3!R§;
   import §2d§.§;H§;
   import §5"i§.b2Settings;
   import §5t§.Log;
   import §69§.§!!u§;
   import §69§.§4!e§;
   import §7!F§.§1x§;
   import §7!F§.§7§;
   import §7!F§.§`y§;
   import §7P§.§&#=§;
   import §7P§.§7B§;
   import §7P§.§;=§;
   import §7P§.§<!2§;
   import §7P§.§?"N§;
   import §9#@§.§ "V§;
   import §<"B§.§94§;
   import §<w§.§^!q§;
   import §?m§.§+"2§;
   import §?m§.§0!§;
   import §?m§.§8!B§;
   import §[R§.b2Vec2;
   import §`!r§.§ U§;
   import §`!r§.§,!w§;
   import com.angrybirds.§,!q§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §#_§
   {
      
      private static const §9Y§:int = 20;
      
      public static const §]#Q§:Number = §,!q§.§%N§;
      
      public static const §@#!§:Number = §,!q§.§>#O§;
      
      public static const §8]§:Number = 1 / 20;
      
      public static const §45§:Number = §,!q§.§>#O§ * §8]§;
      
      public static const §]!1§:Number = §]#Q§ * §8]§;
      
      public static const §,#7§:§;7§ = new §;7§(13 - 3);
      
      protected static var §>#7§:String;
      
      protected static var §4"=§:Number = 1;
      
      protected static var §%J§:String = §8!B§.§7#M§;
       
      
      protected var §%H§:§;=§;
      
      private var §7!J§:Array = null;
      
      protected var §1!C§:§ "V§;
      
      public var mLevelEngine:§^P§;
      
      protected var §1j§:§2-§;
      
      protected var §#b§:§,#Q§;
      
      protected var §[!s§:§;x§;
      
      protected var §2!d§:§,!w§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §;!F§:Boolean = false;
      
      protected var §""f§:Boolean = false;
      
      protected var §=",§:Boolean = false;
      
      public var §]#U§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §@!B§:Number;
      
      public var §9""§:Number;
      
      private var §^K§:§2"Z§;
      
      private var §9!z§:Sprite;
      
      protected var §@!F§:§8!B§;
      
      protected var §@!P§:§?#&§ = null;
      
      private var §[4§:EventDispatcher;
      
      private var §8!K§:Array;
      
      private var §["0§:§3#J§;
      
      private var §5W§:§3!R§;
      
      protected var §6V§:§7#5§;
      
      protected var §+"4§:§`y§;
      
      private var §6I§:§1x§;
      
      private var §?<§:§1x§;
      
      private var §22§:§1x§;
      
      private var § "u§:Stage;
      
      private var §5#K§:§40§;
      
      protected var §5!;§:§0p§;
      
      protected var §;#3§:§0p§;
      
      protected var §0!"§:Number = 0.0;
      
      protected var §[a§:String;
      
      private var §6P§:Boolean;
      
      private var §-z§:Number;
      
      private var §%!i§:Number;
      
      protected var §4<§:§ !r§;
      
      protected var §?4§:§2"Y§.§,#5§;
      
      protected var §?"1§:§!!u§;
      
      protected var §+!b§:§+"2§;
      
      protected var §"#!§:uint = 1.417339207E9;
      
      public var §]9§:Boolean;
      
      private var §,"M§:Boolean = true;
      
      protected var §2!i§:int = 0;
      
      protected var §;!r§:int = 0;
      
      protected var §0"`§:Number = 1.0;
      
      protected var §]"!§:Number = 1.0;
      
      protected var §-!+§:Boolean;
      
      private var §6@§:§,#_§;
      
      public function §#_§(param1:Stage, param2:§2"Y§.§,#5§, param3:§!!u§, param4:§+"2§)
      {
         this.§8!K§ = [];
         super();
         this.§[4§ = new EventDispatcher();
         this.§ "u§ = param1;
         this.§?4§ = param2;
         this.§?"1§ = param3;
         this.§+!b§ = param4;
         this.§6V§ = §7#5§.§%!E§;
         this.§+"4§ = this.§^"v§(this.§6V§);
         this.§6I§ = this.initThemeGraphicsManager();
         this.§?<§ = this.initThemeSoundsManager();
         this.§22§ = this.initCutSceneManager();
         this.§6@§ = new §,#_§();
         var _loc5_:Stage3D = param1.stage3Ds[0];
         this.§["0§ = new §3#J§(§2"Z§,param1,new Rectangle(0,0,§,!q§.§%N§,§,!q§.§>#O§),_loc5_);
         §,!q§.§>#D§.addEventListener(§^!q§.§1c§,this.§["0§.onEnterFrame);
         _loc5_.addEventListener(Event.CONTEXT3D_CREATE,this.§%!b§,false,0,true);
         this.§["0§.§`#"§ = false;
         this.§["0§.enableErrorChecking = false;
         this.§["0§.§#!t§ = 2;
         this.§["0§.§^"_§();
      }
      
      public static function §!!y§(param1:§7B§, param2:§7B§) : Number
      {
         var _loc3_:Number = param1.§&!d§ - param2.§&!d§;
         var _loc4_:Number = param1.§var§ - param2.§var§;
         return §!#"§(_loc3_,_loc4_);
      }
      
      public static function §!#"§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      protected function get sprite() : Sprite
      {
         if(!this.§9!z§ && this.§!h§)
         {
            this.§9!z§ = this.§^K§.§2"E§;
         }
         return this.§9!z§;
      }
      
      public function get §!h§() : Sprite
      {
         if(!this.§^K§)
         {
            this.§^K§ = this.§["0§.§8"B§ as §2"Z§;
            this.§^K§.§3'§ = false;
         }
         return this.§^K§;
      }
      
      private function get §>D§() : DisplayObject
      {
         if(this.§!h§)
         {
            return (this.§!h§ as §2"Z§).§>D§;
         }
         return null;
      }
      
      public function get animationManager() : §`y§
      {
         return this.§+"4§;
      }
      
      public function get textureManager() : §7#5§
      {
         return this.§6V§;
      }
      
      public function get camera() : §,#Q§
      {
         return this.§#b§;
      }
      
      public function get objects() : §;=§
      {
         return this.§%H§;
      }
      
      public function get particles() : §,!w§
      {
         return this.§2!d§;
      }
      
      public function get background() : § "V§
      {
         return this.§1!C§;
      }
      
      public function get slingshot() : §;x§
      {
         return this.§[!s§;
      }
      
      public function get §""?§() : §2-§
      {
         return this.§1j§;
      }
      
      public function get stage() : Stage
      {
         return this.§ "u§;
      }
      
      public function get levelItemManager() : §2"Y§.§,#5§
      {
         return this.§?4§;
      }
      
      public function get § =§() : §1x§
      {
         return this.§22§;
      }
      
      protected function get §;!@§() : §1x§
      {
         return this.§6I§;
      }
      
      public function setSlowMotion(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§4<§ = new § !r§(param1,param2,param3,param4);
      }
      
      public function get damageScoreMultiplier() : int
      {
         return §#_§.§,#7§.getValue();
      }
      
      public function get §9W§() : Boolean
      {
         return this.§,"M§;
      }
      
      public function set §9W§(param1:Boolean) : void
      {
         this.§,"M§ = param1;
      }
      
      public function clear() : void
      {
         if(this.§5W§)
         {
            this.§5W§.dispose();
         }
         if(this.§6V§)
         {
            this.§6V§.removeEventListener(Event.INIT,this.§>!8§);
            this.§6V§.dispose();
         }
         if(this.§6I§ && this.§6I§.textureManager)
         {
            this.§6I§.textureManager.dispose();
         }
         if(this.§22§ && this.§22§.textureManager)
         {
            this.§22§.textureManager.dispose();
         }
         if(this.§["0§)
         {
            this.§["0§.dispose();
         }
      }
      
      protected function initThemeGraphicsManager() : §1x§
      {
         return new §1x§(this.§ "u§.loaderInfo.parameters.assetsUrl || "",this.§ "u§.loaderInfo.parameters.buildNumber || "",this.§+!b§);
      }
      
      protected function initThemeSoundsManager() : §1x§
      {
         return new §1x§(this.§ "u§.loaderInfo.parameters.assetsUrl || "",this.§ "u§.loaderInfo.parameters.buildNumber || "",this.§+!b§,false);
      }
      
      protected function initCutSceneManager() : §1x§
      {
         return new §1x§(this.§ "u§.loaderInfo.parameters.assetsUrl || "",this.§ "u§.loaderInfo.parameters.buildNumber || "",this.§+!b§);
      }
      
      protected function §^"v§(param1:§7#5§) : §`y§
      {
         return new §`y§(param1);
      }
      
      public function §]"J§(param1:Boolean) : void
      {
         if(§3#J§.§2!C§)
         {
            if(param1)
            {
               §3#J§.§2!C§.start();
            }
            else
            {
               §3#J§.§2!C§.stop();
               §3#J§.§2!C§.color = 0;
            }
         }
      }
      
      public function §--§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function §3!Q§(param1:§?#&§) : void
      {
         if(this.§@!P§ != null)
         {
            this.§@!P§.removeEventListeners();
         }
         this.§@!P§ = param1;
         if(this.mReadyToRun)
         {
            this.§@!P§.addEventListeners();
         }
      }
      
      public function §##'§() : §0p§
      {
         return this.§5!;§;
      }
      
      protected function getSpriteSheetGroup(param1:§;H§) : int
      {
         return 0;
      }
      
      public function §[#Z§(param1:§3!R§, param2:Function) : void
      {
         var _loc5_:§;H§ = null;
         var _loc6_:int = 0;
         this.§5W§ = param1;
         var _loc3_:int = this.§5W§.§^"A§;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = this.§5W§.§"#B§(_loc4_);
            _loc6_ = this.getSpriteSheetGroup(_loc5_);
            this.§6V§.§5j§(_loc5_,_loc6_);
            _loc4_++;
         }
         if(param2 != null)
         {
            this.§[4§.addEventListener(Event.INIT,param2);
            this.§8!K§.push(param2);
         }
         if(this.§2!X§())
         {
            this.§?0§();
         }
      }
      
      private function §2!X§() : Boolean
      {
         this.§6V§.removeEventListener(Event.INIT,this.§>!8§);
         if(this.§6V§.initializeTextures())
         {
            this.§0!8§();
            this.§-!+§ = false;
            return true;
         }
         this.§6V§.addEventListener(Event.INIT,this.§>!8§);
         this.§-!+§ = true;
         return false;
      }
      
      private function §>!8§(param1:Event) : void
      {
         this.§6V§.removeEventListener(Event.INIT,this.§>!8§);
         this.§0!8§();
         this.§-!+§ = false;
         this.§?0§();
      }
      
      protected function §0!8§() : void
      {
         this.§+"4§.§0!8§();
         this.§?4§.initAnimations();
      }
      
      private function §%!b§(param1:Event) : void
      {
         if(!§3#J§.§;[§())
         {
            return;
         }
         this.§6V§.reInitializeTextures();
         if(this.§;!@§ && this.§;!@§.textureManager)
         {
            this.§;!@§.textureManager.reInitializeTextures();
         }
         if(this.§ =§ && this.§ =§.textureManager)
         {
            this.§ =§.textureManager.reInitializeTextures();
         }
         if(this.§-!+§)
         {
            if(this.§2!X§())
            {
               this.§?0§();
            }
         }
         if(this.§@!P§ != null && this.mReadyToRun)
         {
            this.§@!P§.addEventListeners();
         }
         if(this.§6I§)
         {
            this.§6I§.initializeTextures();
         }
         if(this.§22§)
         {
            if(this.§22§.textureManager)
            {
               this.§22§.initializeTextures();
            }
         }
      }
      
      private function §?0§() : void
      {
         this.§[4§.dispatchEvent(new Event(Event.INIT));
         this.§&i§();
      }
      
      private function §&i§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§8!K§)
         {
            this.§[4§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§8!K§ = [];
      }
      
      public function init(param1:§8!B§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§1j§ = new §2-§(this,param1);
         this.§#b§ = this.§'!W§(param1);
         this.§@!B§ = 0;
         this.§9""§ = 0;
         this.§6P§ = false;
         this.mReadyToRun = false;
         this.§;!F§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         param1.theme = param1.theme || "background_blue_grass";
         §%J§ = param1.theme;
         this.§@!F§ = param1;
         this.§""f§ = this.§!l§(param1.theme);
         this.§=",§ = this.§7J§(param1.theme);
         if(this.§""f§ && this.§=",§)
         {
            this.initialize(param1);
         }
         else
         {
            this.loadTheme(param1.theme);
         }
         this.§3!g§(param1.name);
         §&'§.init();
      }
      
      protected function §3!g§(param1:String) : void
      {
         this.§5!;§ = new §0p§(param1);
      }
      
      protected function §!l§(param1:String) : Boolean
      {
         if(this.§6I§)
         {
            return false;
         }
         return true;
      }
      
      protected function §7J§(param1:String) : Boolean
      {
         var _loc2_:§4!e§ = null;
         if(this.§?<§)
         {
            _loc2_ = this.§?"1§.getBackground(param1);
            if(_loc2_)
            {
               if(_loc2_.§0;§ && !this.§?<§.§1#X§(_loc2_.§0;§))
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
      
      protected function loadTheme(param1:String) : void
      {
         var _loc2_:Array = null;
         var _loc3_:§4!e§ = null;
         if(this.§6I§ && !this.§!l§(param1))
         {
            this.§6I§.removeEventListener(Event.COMPLETE,this.§6!B§);
            this.§6I§.removeEventListener(Event.CANCEL,this.§!#_§);
            this.§6I§.addEventListener(Event.COMPLETE,this.§6!B§);
            this.§6I§.addEventListener(Event.CANCEL,this.§!#_§);
            _loc2_ = this.getThemeGraphicsLoadList(param1);
            this.§6I§.§'!t§(param1,_loc2_);
         }
         if(this.§?<§ && !this.§7J§(param1))
         {
            this.§?<§.removeEventListener(Event.COMPLETE,this.§?Y§);
            this.§?<§.removeEventListener(Event.CANCEL,this.§,"U§);
            this.§?<§.addEventListener(Event.COMPLETE,this.§?Y§);
            this.§?<§.addEventListener(Event.CANCEL,this.§,"U§);
            _loc3_ = this.§?"1§.getBackground(param1);
            if(_loc3_)
            {
               this.§?<§.§'!t§(_loc3_.§0;§);
            }
         }
      }
      
      private function §6!B§(param1:Event) : void
      {
         this.§6I§.removeEventListener(Event.COMPLETE,this.§6!B§);
         this.§6I§.removeEventListener(Event.CANCEL,this.§!#_§);
         this.§""f§ = true;
         if(this.§""f§ && this.§=",§)
         {
            this.initialize(this.§@!F§);
         }
      }
      
      private function §!#_§(param1:Event) : void
      {
         this.§6I§.removeEventListener(Event.COMPLETE,this.§6!B§);
         this.§6I§.removeEventListener(Event.CANCEL,this.§!#_§);
         this.§;!F§ = true;
      }
      
      private function §?Y§(param1:Event) : void
      {
         this.§6I§.removeEventListener(Event.COMPLETE,this.§?Y§);
         this.§6I§.removeEventListener(Event.CANCEL,this.§,"U§);
         this.§=",§ = true;
         if(this.§""f§ && this.§=",§)
         {
            this.initialize(this.§@!F§);
         }
      }
      
      private function §,"U§(param1:Event) : void
      {
         this.§6I§.removeEventListener(Event.COMPLETE,this.§?Y§);
         this.§6I§.removeEventListener(Event.CANCEL,this.§,"U§);
         this.§=",§ = true;
         if(this.§""f§ && this.§=",§)
         {
            this.initialize(this.§@!F§);
         }
      }
      
      public function get backgroundTextureManager() : §7#5§
      {
         if(this.§;!@§)
         {
            return this.§;!@§.textureManager;
         }
         return null;
      }
      
      protected function initializePhysicsConstants(param1:§8!B§) : void
      {
         b2Settings.b2_linearSleepTolerance = b2Settings.§-!S§;
      }
      
      private function initialize(param1:§8!B§) : void
      {
         this.§4<§ = null;
         this.§]9§ = false;
         if(§3#J§.§^#A§)
         {
            §3#J§.§^#A§.speed = 1;
         }
         this.initializePhysicsConstants(param1);
         this.initLevelEngine(param1);
         this.§1!C§ = this.initializeLevelBackground(param1.theme,0 / §8]§,this.backgroundTextureManager,this.§#b§.§+"n§());
         this.§1!C§.§%Q§(§,!q§.§0@§());
         if(§3#J§.§2!C§)
         {
            §3#J§.§2!C§.color = this.§1!C§.skyColor;
         }
         this.§%H§ = this.initializeLevelObjectManager(param1);
         this.§%H§.§-7§ = this.§>"=§(param1.name);
         this.§[!s§ = this.initializeLevelSlingshot(param1);
         this.§2!d§ = this.§!#;§(this.§+"4§,this.§6V§);
         this.§#b§.init();
         this.§>#B§();
         this.§6#C§();
         this.mReadyToRun = true;
         if(this.§@!P§)
         {
            this.§@!P§.addEventListeners();
         }
         if(param1.name == §>#7§)
         {
            this.§#b§.§[W§(§4"=§);
            this.§0_§(0);
         }
         else
         {
            §>#7§ = param1.name;
         }
         this.levelInitialized();
      }
      
      protected function levelInitialized() : void
      {
         this.§%H§.levelInitialized();
      }
      
      protected function initLevelEngine(param1:§8!B§) : void
      {
         this.mLevelEngine = new §^P§(this);
      }
      
      protected function §6#C§() : void
      {
         if(this.§[a§)
         {
            this.§;#3§ = §0p§.initialize(this.§[a§);
            this.§;#3§.speed = 1;
            this.§;#3§.play();
            this.§0!"§ = -1000;
            this.§[a§ = null;
         }
      }
      
      public function § r§(param1:String) : void
      {
         this.§[a§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§;#3§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§;#3§)
         {
            if(param1)
            {
               this.§;#3§.speed = Math.min(this.§;#3§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§;#3§.speed = Math.max(this.§;#3§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§;#3§)
         {
            this.§;#3§.speed = 1;
         }
      }
      
      protected function initializeLevelObjectManager(param1:§8!B§) : §;=§
      {
         var _loc2_:String = §4!e§.§0!K§;
         return new §;=§(this,param1,new Sprite(),_loc2_);
      }
      
      protected function §>"=§(param1:String) : §&!>§
      {
         if(!param1)
         {
            return null;
         }
         var _loc2_:Class = this.§6@§[param1.toLowerCase()];
         if(!_loc2_)
         {
            return null;
         }
         return new _loc2_() as §&!>§;
      }
      
      public function §?!5§(param1:String, param2:Class) : void
      {
         this.§6@§[param1.toLowerCase()] = param2;
      }
      
      protected function §'!W§(param1:§8!B§) : §,#Q§
      {
         return new §,#Q§(this,param1);
      }
      
      protected function initializeLevelBackground(param1:String, param2:Number, param3:§7#5§, param4:Number) : § "V§
      {
         var _loc5_:§4!e§;
         if((_loc5_ = this.§?"1§.getBackground(param1)) == null)
         {
            Log.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §8!B§.§7#M§;
            _loc5_ = this.§?"1§.getBackground(param1);
         }
         return new § "V§(_loc5_,param2,param3,param4,!§3#J§.§3!s§);
      }
      
      protected function initializeLevelSlingshot(param1:§8!B§) : §;x§
      {
         return new §;x§(this,param1,new Sprite());
      }
      
      protected function §!#;§(param1:§`y§, param2:§7#5§) : §,!w§
      {
         return new §,!w§(param1,param2);
      }
      
      public function initializeEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§8!B§ = new §8!B§();
         _loc3_.slingshotY = -12;
         var _loc4_:§0!§;
         (_loc4_ = new §0!§()).left = 0;
         _loc4_.top = -§,#Q§.§`"!§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §,#Q§.§`"!§;
         _loc4_.right = _loc4_.left + §,#Q§.§"#N§;
         _loc4_.y = -13.929;
         _loc4_.x = §,#Q§.§"#N§;
         _loc4_.id = §,#Q§.§>"2§;
         _loc3_.§'!h§(_loc4_);
         var _loc5_:§0!§;
         (_loc5_ = new §0!§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §,#Q§.§"#N§;
         _loc5_.bottom = _loc5_.top + §,#Q§.§`"!§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §,#Q§.§"#N§ / 2;
         _loc5_.id = §,#Q§.§?i§;
         _loc3_.§'!h§(_loc5_);
         this.§<!F§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§%J§ != null)
         {
            _loc3_.theme = §%J§;
         }
         this.init(_loc3_);
      }
      
      protected function §<!F§(param1:§8!B§, param2:Boolean) : void
      {
         if(param2)
         {
            this.§3k§(param1);
         }
      }
      
      protected function §0U§() : Number
      {
         this.§"#!§ ^= this.§"#!§ << 21;
         this.§"#!§ ^= this.§"#!§ >>> 35;
         this.§"#!§ ^= this.§"#!§ << 4;
         return this.§"#!§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §3k§(param1:§8!B§) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§94§ = null;
         this.§"#!§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < 10)
         {
            _loc4_ = 0;
            while(_loc4_ < 5)
            {
               _loc5_ = this.§0U§() * 5;
               (_loc6_ = new §94§()).x = 30 + _loc4_ * 10 + this.§0U§() * 9;
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
                  _loc6_.angle = 45 - this.§0U§() * 90;
               }
               else
               {
                  _loc6_.y = -30 + _loc3_ * 6 - this.§0U§() * 3 - _loc4_ * 8;
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
                  _loc6_.angle = this.§0U§() * 360;
               }
               _loc6_.id = _loc2_;
               param1.addObject(_loc6_);
               _loc2_++;
               _loc4_++;
            }
            _loc3_++;
         }
      }
      
      private function §%X§() : void
      {
      }
      
      protected function §0$§() : void
      {
         if(§ "V§.§8#$§)
         {
            this.§1!g§(this.§1!C§.§?!]§);
         }
      }
      
      protected function §[Y§() : void
      {
         this.§1!g§(this.§2!d§.§>!z§(§,!w§.§#Z§));
         this.§1!g§(this.§2!d§.§>!z§(§,!w§.§9F§));
      }
      
      protected function §8<§() : void
      {
         this.§1!g§(this.§2!d§.§>!z§(§,!w§.§7!v§));
         this.§1!g§(this.§%H§.§8#G§);
         this.§1!g§(this.§[!s§.sprite);
         this.§1!g§(this.§2!d§.§>!z§(§,!w§.§ !B§));
      }
      
      protected function §`"p§() : void
      {
         this.§1!g§(this.§1!C§.§4!C§);
         if(§ "V§.§8#$§)
         {
            this.§1!g§(this.§1!C§.§>"a§);
         }
      }
      
      protected function §?#Z§() : void
      {
         this.§1!g§(this.§%H§.§!'§);
         this.§1!g§(this.§2!d§.§>!z§(§,!w§.§,!"§));
         this.§1!g§(this.§2!d§.§>!z§(§,!w§.§7"-§));
      }
      
      private function §>#B§() : void
      {
         this.§0$§();
         this.§[Y§();
         this.§8<§();
         this.§`"p§();
         this.§?#Z§();
      }
      
      protected function §1!g§(param1:DisplayObject) : void
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
         if(§,!q§.§6G§ > §,!q§.§!"N§)
         {
            param1 /= §,!q§.§6G§;
            param2 /= §,!q§.§6G§;
         }
         else
         {
            param1 /= §,!q§.§!"N§;
            param2 /= §,!q§.§!"N§;
         }
         param3.x = ((param1 - this.sprite.x) / §,#Q§.§ #b§ + this.§#b§.§9";§) * §8]§;
         param3.y = ((param2 - this.sprite.y) / §,#Q§.§ #b§ + this.§#b§.§ !4§) * §8]§;
         return param3;
      }
      
      public function §@C§(param1:Number, param2:Number, param3:Point = null) : Point
      {
         if(!param3)
         {
            param3 = new Point();
         }
         param3.x = (param1 / §8]§ - this.§#b§.§9";§) * §,#Q§.§ #b§ + this.sprite.x;
         param3.y = (param2 / §8]§ - this.§#b§.§ !4§) * §,#Q§.§ #b§ + this.sprite.y;
         var _loc4_:Number = Math.max(§,!q§.§6G§,§,!q§.§!"N§);
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
            this.background.setScreenOffset(param1,param2,this.§2!i§,this.§;!r§,param3,this.§0"`§,this.§]"!§);
         }
         if(this.objects)
         {
            this.objects.§'"0§(param1,param2);
         }
         if(this.mLevelEngine)
         {
            this.mLevelEngine.§'"0§(param1,param2);
         }
         if(this.slingshot)
         {
            this.slingshot.§'"0§(param1,param2);
         }
         if(this.particles)
         {
            this.particles.§'"0§(param1,param2);
         }
      }
      
      public function §8!`§(param1:String, param2:Number, param3:Number) : void
      {
         this.§%H§.addObject(param1,param2,param3,0,§;=§.§""3§);
      }
      
      public function §@"1§() : void
      {
         if(this.§>D§)
         {
            this.§>D§.visible = true;
            this.§>D§.alpha = 0;
         }
         this.§]#U§ = 0;
      }
      
      public function §&!G§(param1:Boolean, param2:Number = 0, param3:Number = 0, param4:Number = 0) : void
      {
         if(param1)
         {
            this.§5#K§ = new §40§(param2,param3,param4);
         }
         else
         {
            this.§5#K§ = null;
         }
      }
      
      public function clearLevel() : void
      {
         if(this.§1!C§)
         {
            this.§1!C§.dispose();
            this.§1!C§ = null;
         }
         if(this.§%H§)
         {
            this.§%H§.dispose();
            this.§%H§ = null;
         }
         if(this.mLevelEngine)
         {
            if(!this.mLevelEngine.§&#?§)
            {
            }
            this.mLevelEngine.clear();
            this.mLevelEngine = null;
         }
         if(this.§1j§)
         {
            this.§1j§.clear();
            this.§1j§ = null;
         }
         if(this.§[!s§)
         {
            this.§[!s§.dispose();
            this.§[!s§ = null;
         }
         if(this.§#b§)
         {
            §4"=§ = this.§#b§.§'"2§;
            this.§#b§.clear();
            this.§#b§ = null;
         }
         if(this.§2!d§)
         {
            this.§2!d§.dispose();
            this.§2!d§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§@!B§ = 0;
         this.§9""§ = 0;
         this.mReadyToRun = false;
         this.§6P§ = false;
         this.§]#U§ = §0"x§.§"#a§;
         if(this.§!h§)
         {
            (this.§!h§ as §2"Z§).§`"D§.x = 0;
            (this.§!h§ as §2"Z§).§`"D§.y = 0;
         }
         if(this.§>D§)
         {
            this.§>D§.visible = false;
         }
         this.§;#3§ = null;
         this.§5!;§ = null;
         if(this.§6I§)
         {
            this.§6I§.removeEventListener(Event.COMPLETE,this.§6!B§);
            this.§6I§.removeEventListener(Event.CANCEL,this.§!#_§);
         }
         if(this.§?<§)
         {
            this.§?<§.removeEventListener(Event.COMPLETE,this.§?Y§);
            this.§?<§.removeEventListener(Event.CANCEL,this.§,"U§);
         }
         this.§&i§();
         if(§3#J§.§2!C§)
         {
            §3#J§.§2!C§.color = 0;
         }
         if(this.§@!P§)
         {
            this.§@!P§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver(param1:int) : void
      {
      }
      
      public function §#!M§() : String
      {
         if(this.§5!;§)
         {
            return this.§5!;§.toString();
         }
         return null;
      }
      
      public function get timeSpeedMultiplier() : Number
      {
         if(this.§4<§)
         {
            return this.§4<§.speed;
         }
         return 1;
      }
      
      public function update(param1:Number, param2:Boolean) : Number
      {
         if(!this.mReadyToRun || !§3#J§.§;[§())
         {
            return 0;
         }
         if(this.§;#3§ && this.§;#3§.§<"M§)
         {
            return this.§,"5§(param1,param2);
         }
         return this.updateWithTime(param1,true,param2);
      }
      
      protected function updateWithTime(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc4_:Boolean = false;
         if(this.§4<§)
         {
            _loc4_ = this.§4<§.update(param1);
            param1 *= this.§4<§.speed;
            if(§3#J§.§^#A§)
            {
               §3#J§.§^#A§.speed = this.§4<§.speed;
            }
            if(!_loc4_)
            {
               this.§4<§ = null;
            }
         }
         this.§9""§ += param1;
         if(this.§9W§)
         {
            this.§@!B§ += param1;
            this.§@!B§ = this.mLevelEngine.§2!3§(this.§@!B§);
         }
         else
         {
            this.§@!B§ = 0;
            this.handleEngineUpdateStep(param1);
         }
         this.§[!s§.update(param1,param3);
         if(param2)
         {
            this.§0_§(param1);
         }
         return param1;
      }
      
      private function §,"5§(param1:Number, param2:Boolean) : Number
      {
         var _loc4_:Number = NaN;
         var _loc3_:Number = §^P§.§7!x§;
         if(this.§;#3§)
         {
            param1 *= this.§;#3§.speed;
            _loc4_ = this.§9""§ + param1;
            while(this.§9""§ + _loc3_ < _loc4_)
            {
               if(this.§9""§ + _loc3_ > this.§0!"§)
               {
                  this.§;#3§.step(this);
                  this.§0!"§ += _loc3_;
               }
               this.updateWithTime(_loc3_,false,param2);
            }
            if(_loc4_ > this.§0!"§ + _loc3_)
            {
               this.§;#3§.step(this);
               this.§0!"§ += _loc3_;
            }
            if(this.§9""§ < _loc4_)
            {
               this.updateWithTime(_loc4_ - this.§9""§,true,param2);
            }
            return param1;
         }
         return param1;
      }
      
      private function §0_§(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         this.§1!C§.update(param1);
         this.§%H§.renderObjects(param1,this.mLevelEngine.§^"B§,this.§@!B§);
         this.§=g§();
         if(this.§]#U§ < §0"x§.§"#a§)
         {
            this.§]#U§ += param1;
            _loc2_ = §0"x§.§"#a§ / 2;
            _loc3_ = (-Math.abs(this.§]#U§ - _loc2_) + _loc2_) * (§0"x§.§;"$§ / _loc2_);
            if(this.§>D§)
            {
               this.§>D§.alpha = _loc3_;
            }
         }
         else if(this.§>D§)
         {
            this.§>D§.visible = false;
         }
         if(this.§5#K§)
         {
            if(!this.§5#K§.§9"f§(this.§#b§,param1))
            {
               this.§&!G§(false);
            }
         }
         this.§#b§.§"%§(param1);
         this.mLevelEngine.§+"$§();
         this.§2!d§.update(param1);
      }
      
      public function handleEngineUpdateStep(param1:Number) : void
      {
         this.objects.updateObjects(param1);
         this.§]z§();
      }
      
      protected function §=g§() : void
      {
         var _loc1_:§&#=§ = null;
         if(this.§7!J§ != null)
         {
            for each(_loc1_ in this.§7!J§)
            {
               if(!_loc1_.isLeavingTrail)
               {
                  this.§&"u§(_loc1_);
               }
            }
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§<!2§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            _loc2_ = this.§%H§.§,O§(true);
            if(_loc2_)
            {
               _loc2_.scream();
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§%H§.§3"z§());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            _loc2_ = this.§%H§.§,O§(true);
            if(_loc2_)
            {
               _loc2_.blink();
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§%H§.§3"z§());
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = § U§.§^#+§;
         }
         §&'§.addScore(param1,param2);
         this.§@!P§.addScore(param1);
         if(param3 && param1 > 0 && !this.§]9§)
         {
            this.§1#[§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §1#[§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = § U§.§#!p§;
         }
         this.§2!d§.§;!0§(§ U§.§6?§,§,!w§.§,!"§,§ U§.§8-§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §"!N§(param1:§7B§) : void
      {
         if(this.§7!J§ == null)
         {
            this.§7!J§ = new Array();
         }
         this.§7!J§.push(param1);
      }
      
      public function useMightyEagle() : void
      {
         this.§[!s§.useMightyEagle();
         this.§%H§.§<"Z§();
         this.§]9§ = true;
      }
      
      public function §&"u§(param1:§&#=§) : void
      {
         this.§2!d§.§7p§(§,!w§.§#Z§);
         if(this.§7!J§.indexOf(param1) >= 0)
         {
            this.§7!J§.splice(this.§7!J§.indexOf(param1),1);
         }
         if(this.§7!J§.length == 0)
         {
            this.§7!J§ = null;
         }
      }
      
      public function shootBird(param1:§`"]§, param2:Number, param3:Number) : §?"N§
      {
         var _loc4_:§?"N§ = §?"N§(this.§%H§.addObject(param1.name,param1.x,param1.y,0,§;=§.§""3§,true,true,true,param1.scale));
         var _loc5_:Number = param1.§^"+§;
         if(param1.§<z§ > 1)
         {
            _loc4_.§8" §(param1.§<z§);
         }
         if(param1.§&"D§ != 0)
         {
            _loc5_ = param1.§&"D§;
         }
         var _loc6_:Number = -_loc5_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc7_:Number = _loc5_ * param2 * Math.sin(param3 / (180 / Math.PI));
         _loc4_.§ &§(new b2Vec2(_loc6_,_loc7_),false,true);
         _loc4_.isLeavingTrail = true;
         this.camera.setAction(§,#Q§.§[#H§);
         if(this.§5!;§)
         {
            this.§5!;§.shootBird(this.mLevelEngine.§9o§,param1.x,param1.y,param2,param3);
         }
         return _loc4_;
      }
      
      public function activateSpecialPower(param1:Number, param2:Number) : void
      {
         this.§6P§ = true;
         this.§-z§ = param1;
         this.§%!i§ = param2;
      }
      
      private function §]z§() : void
      {
         if(!this.§6P§)
         {
            return;
         }
         this.§6P§ = false;
         if(this.§%H§.activeObject is §?"N§)
         {
            this.§%H§.activateSpecialPower(this.§-z§,this.§%!i§);
         }
         if(this.§5!;§)
         {
            this.§5!;§.§ "t§(this.mLevelEngine.§9o§,this.§-z§,this.§%!i§);
         }
      }
      
      public function §5h§() : void
      {
         this.§%H§.§5h§();
      }
      
      public function §4"m§() : void
      {
         this.§%H§.§?"O§();
      }
      
      public function §+@§() : §8!B§
      {
         var _loc1_:§8!B§ = new §8!B§();
         _loc1_.scoreGold = this.§@!F§.scoreGold;
         _loc1_.scoreSilver = this.§@!F§.scoreSilver;
         this.§#b§.§+#Y§(_loc1_);
         this.§%H§.§6#O§(_loc1_);
         this.§[!s§.§6!0§(_loc1_);
         _loc1_.theme = this.§1!C§.§6"c§();
         return _loc1_;
      }
      
      public function §,!C§() : int
      {
         return this.§@!F§.scoreSilver;
      }
      
      public function §5##§() : int
      {
         return this.§@!F§.scoreGold;
      }
      
      public function §`]§(param1:int) : void
      {
         this.§@!F§.scoreSilver = param1;
      }
      
      public function §@!i§(param1:int) : void
      {
         this.§@!F§.scoreGold = param1;
      }
      
      public function §!=§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§2!i§ = param1;
         this.§;!r§ = param2;
         this.§0"`§ = param3;
         this.§]"!§ = param4;
         if(this.§^K§)
         {
            this.§^K§.§>"g§(param1,param2);
         }
         if(this.§#b§)
         {
            this.§#b§.§"%§(0);
         }
      }
      
      public function isCollisionExcluded(param1:§7B§, param2:§7B§) : Boolean
      {
         return false;
      }
      
      public function get currentLevel() : §8!B§
      {
         return this.§@!F§;
      }
      
      public function get levelObjects() : §;=§
      {
         return this.§%H§;
      }
      
      protected function get §%"V§() : §3#J§
      {
         return this.§["0§;
      }
      
      public function get §>_§() : int
      {
         return §9Y§;
      }
   }
}
