package §#g§
{
   import § !N§.§5"?§;
   import § #>§.§=!,§;
   import §"#k§.Starling;
   import §#"4§.§&r§;
   import §&$+§.b2Settings;
   import §,#e§.DisplayObject;
   import §,#e§.Sprite;
   import §,0§.§`5§;
   import §04§.b2Vec2;
   import §3"V§.§9$8§;
   import §4"Y§.§+!q§;
   import §4"Y§.§-!`§;
   import §4§.§`3§;
   import §6"p§.§^"t§;
   import §6#h§.§]!d§;
   import §7"T§.§#"^§;
   import §7"T§.§4#[§;
   import §7"T§.§6!G§;
   import §7"o§.§##P§;
   import §7"o§.§=,§;
   import §7#$§.§5#-§;
   import §7#$§.§?# §;
   import §7#$§.§]#q§;
   import §8#K§.§2§;
   import §9! §.§&!i§;
   import §9!o§.§;"v§;
   import §9!o§.§=!B§;
   import §;!=§.§ !i§;
   import §;!=§.§#!m§;
   import §;!=§.§'#N§;
   import §;!=§.§>"G§;
   import §;Q§.§9>§;
   import §?#z§.§]$?§;
   import §@#b§.§1_§;
   import §`§.§?$B§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §8#3§ extends §`5§
   {
      
      private static const §]#&§:int = 20;
      
      public static const §2K§:Number = 1 / 20;
      
      protected static var §38§:String;
      
      protected static var §1#K§:Number = 1;
      
      protected static var §,'§:String = §?# §.§8#v§;
       
      
      protected var §&!h§:§ !i§;
      
      private var §3K§:Array = null;
      
      protected var §;!z§:§1_§;
      
      public var mLevelEngine:§4!`§;
      
      protected var §]$,§:§7d§;
      
      protected var §!?§:§`3§;
      
      protected var §1"§:§^"R§;
      
      protected var §9"F§:§##P§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §&"u§:Boolean = false;
      
      protected var §]!r§:Boolean = false;
      
      protected var §1$2§:Boolean = false;
      
      public var §3$ §:Number = 1500;
      
      protected var §43§:int = 500;
      
      protected var §%$<§:int;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      private var §4"p§:Number;
      
      private var §0@§:Number;
      
      private var §2!5§:Number;
      
      public var §;!>§:Number;
      
      public var §>e§:Number;
      
      private var §8#z§:§<"=§;
      
      private var §"#s§:Sprite;
      
      protected var §5"s§:§?# §;
      
      protected var §=#8§:§]!d§ = null;
      
      private var §8#q§:EventDispatcher;
      
      private var §]#<§:Array;
      
      private var §?"z§:Starling;
      
      private var § "7§:Vector.<§=!B§>;
      
      protected var §-i§:§#"^§;
      
      protected var §`!§:§4#[§;
      
      private var §0#a§:§6!G§;
      
      private var §5!k§:§6!G§;
      
      private var §;t§:§6!G§;
      
      private var §6$ §:Stage;
      
      private var §,#I§:§%#Z§;
      
      protected var §%#P§:§9>§;
      
      protected var §-!L§:§9>§;
      
      protected var §5G§:Number = 0.0;
      
      protected var §!#j§:String;
      
      private var §3"1§:Boolean;
      
      private var §5#M§:Number;
      
      private var §@#9§:Number;
      
      protected var §5"x§:§5!T§;
      
      protected var §7"Z§:§2#3§;
      
      protected var §%!,§:§-!`§;
      
      protected var mLevelManager:§]#q§;
      
      protected var §>!t§:uint = 1.417339207E9;
      
      public var §6"_§:Boolean;
      
      private var §`N§:Boolean = true;
      
      protected var §2"F§:int = 0;
      
      protected var §<#[§:int = 0;
      
      protected var §=#L§:Number = 1.0;
      
      protected var §<!r§:Number = 1.0;
      
      protected var §[#`§:Boolean;
      
      private var §%!p§:§&r§;
      
      protected var §2$$§:Boolean = false;
      
      private var §^!Q§:§=!,§;
      
      public function §8#3§(param1:Stage, param2:§2#3§, param3:§-!`§, param4:§]#q§)
      {
         this.§]#<§ = [];
         this.§ "7§ = new Vector.<§=!B§>();
         super();
         this.§8#q§ = new EventDispatcher();
         this.§6$ § = param1;
         this.§7"Z§ = param2;
         this.§%!,§ = param3;
         this.mLevelManager = param4;
         this.§-i§ = §#"^§.§+!,§;
         this.§`!§ = this.initAnimationManager(this.§-i§);
         this.§0#a§ = this.initThemeGraphicsManager();
         this.§5!k§ = this.initThemeSoundsManager();
         this.§;t§ = this.initCutSceneManager();
         this.§%!p§ = new §&r§();
         var _loc5_:Stage3D = param1.stage3Ds[0];
         this.§?"z§ = new Starling(§<"=§,param1,new Rectangle(0,0,§]$?§.§!!x§,§]$?§.§@!=§),_loc5_);
         _loc5_.addEventListener(Event.CONTEXT3D_CREATE,this.§>E§,false,0,true);
         this.§?"z§.§['§ = false;
         this.§?"z§.enableErrorChecking = false;
         this.§?"z§.§,"^§ = 2;
         this.§?"z§.§5"%§();
         this.§^!Q§ = new §=!,§(this);
      }
      
      public static function get §"#I§() : Number
      {
         return §]$?§.§!!x§;
      }
      
      public static function get §<" §() : Number
      {
         return §]$?§.§@!=§;
      }
      
      public static function get §#!B§() : Number
      {
         return §]$?§.§@!=§ * §2K§;
      }
      
      public static function get §1!=§() : Number
      {
         return §"#I§ * §2K§;
      }
      
      public static function §?!i§(param1:§'#N§, param2:§'#N§) : Number
      {
         var _loc3_:Number = param1.§88§ - param2.§88§;
         var _loc4_:Number = param1.§]![§ - param2.§]![§;
         return §6"3§(_loc3_,_loc4_);
      }
      
      public static function §6"3§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get § §() : Boolean
      {
         return this.§2$$§;
      }
      
      protected function get sprite() : Sprite
      {
         if(!this.§"#s§ && this.§7!i§)
         {
            this.§"#s§ = this.§8#z§.§'$+§;
         }
         return this.§"#s§;
      }
      
      public function get §7!i§() : Sprite
      {
         if(!this.§8#z§)
         {
            this.§8#z§ = this.§?"z§.§`#b§ as §<"=§;
            this.§8#z§.§4"e§ = false;
         }
         return this.§8#z§;
      }
      
      private function get §1"Z§() : DisplayObject
      {
         if(this.§7!i§)
         {
            return (this.§7!i§ as §<"=§).§1"Z§;
         }
         return null;
      }
      
      public function get animationManager() : §4#[§
      {
         return this.§`!§;
      }
      
      public function get textureManager() : §#"^§
      {
         return this.§-i§;
      }
      
      public function get camera() : §`3§
      {
         return this.§!?§;
      }
      
      public function get objects() : § !i§
      {
         return this.§&!h§;
      }
      
      public function get particles() : §##P§
      {
         return this.§9"F§;
      }
      
      public function get background() : §1_§
      {
         return this.§;!z§;
      }
      
      public function get slingshot() : §^"R§
      {
         return this.§1"§;
      }
      
      public function get §3"b§() : §7d§
      {
         return this.§]$,§;
      }
      
      public function get stage() : Stage
      {
         return this.§6$ §;
      }
      
      public function get levelItemManager() : §2#3§
      {
         return this.§7"Z§;
      }
      
      public function get §>!@§() : §6!G§
      {
         return this.§;t§;
      }
      
      protected function get §;#O§() : §6!G§
      {
         return this.§0#a§;
      }
      
      public function setSlowMotion(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§5"x§ = new §5!T§(param1,param2,param3,param4);
      }
      
      public function get §>#Y§() : Boolean
      {
         return this.§`N§;
      }
      
      public function set §>#Y§(param1:Boolean) : void
      {
         this.§`N§ = param1;
      }
      
      public function clear() : void
      {
         var _loc2_:§=!B§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§ "7§.length)
         {
            _loc2_ = this.§ "7§[_loc1_];
            _loc2_.dispose();
            _loc1_++;
         }
         this.§ "7§ = new Vector.<§=!B§>();
         if(this.§-i§)
         {
            this.§-i§.removeEventListener(Event.INIT,this.§#`§);
            this.§-i§.dispose();
         }
         if(this.§0#a§ && this.§0#a§.textureManager)
         {
            this.§0#a§.textureManager.dispose();
         }
         if(this.§;t§ && this.§;t§.textureManager)
         {
            this.§;t§.textureManager.dispose();
         }
         if(this.§?"z§)
         {
            this.§?"z§.dispose();
         }
      }
      
      protected function initThemeGraphicsManager() : §6!G§
      {
         return new §6!G§(this.§6$ §.loaderInfo.parameters.assetsUrl || "",this.§6$ §.loaderInfo.parameters.buildNumber || "",this.mLevelManager);
      }
      
      protected function initThemeSoundsManager() : §6!G§
      {
         return new §6!G§(this.§6$ §.loaderInfo.parameters.assetsUrl || "",this.§6$ §.loaderInfo.parameters.buildNumber || "",this.mLevelManager,false);
      }
      
      protected function initCutSceneManager() : §6!G§
      {
         return new §6!G§(this.§6$ §.loaderInfo.parameters.assetsUrl || "",this.§6$ §.loaderInfo.parameters.buildNumber || "",this.mLevelManager);
      }
      
      protected function initAnimationManager(param1:§#"^§) : §4#[§
      {
         return new §4#[§(param1);
      }
      
      public function setVisible(param1:Boolean) : void
      {
         if(Starling.§4$#§)
         {
            if(param1)
            {
               Starling.§4$#§.start();
            }
            else
            {
               Starling.§4$#§.stop();
               Starling.§4$#§.color = 0;
            }
         }
      }
      
      public function §9!S§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function setController(param1:§]!d§) : void
      {
         if(this.§=#8§ != null)
         {
            this.§=#8§.removeEventListeners();
         }
         this.§=#8§ = param1;
         if(this.mReadyToRun)
         {
            this.§=#8§.addEventListeners();
         }
      }
      
      public function §#!E§() : §9>§
      {
         return this.§%#P§;
      }
      
      protected function getSpriteSheetGroup(param1:§;"v§) : int
      {
         return 0;
      }
      
      public function §;#b§(param1:§=!B§, param2:Array, param3:Function) : void
      {
         var _loc6_:§;"v§ = null;
         var _loc7_:int = 0;
         if(this.§ "7§.indexOf(param1) != -1)
         {
            return;
         }
         this.§ "7§.push(param1);
         var _loc4_:int = param1.§&![§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc6_ = param1.§`$C§(_loc5_);
            _loc7_ = this.getSpriteSheetGroup(_loc6_);
            this.§-i§.§#$8§(_loc6_,_loc7_);
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§8#q§.addEventListener(Event.INIT,param3);
            this.§]#<§.push(param3);
         }
         this.§-i§.removeEventListener(Event.INIT,this.§#`§);
         if(this.§-i§.§ v§())
         {
            this.§7"Z§.§""%§(param2);
            this.§[#`§ = false;
            this.§3#j§();
         }
         else
         {
            this.§-i§.addEventListener(Event.INIT,this.§#`§);
            this.§[#`§ = true;
         }
      }
      
      public function §?"f§(param1:§=!B§, param2:Function) : void
      {
         var _loc5_:§;"v§ = null;
         var _loc6_:int = 0;
         if(this.§ "7§.indexOf(param1) != -1)
         {
            return;
         }
         this.§ "7§.push(param1);
         var _loc3_:int = param1.§&![§;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.§`$C§(_loc4_);
            _loc6_ = this.getSpriteSheetGroup(_loc5_);
            this.§-i§.§#$8§(_loc5_,_loc6_);
            _loc4_++;
         }
         if(param2 != null)
         {
            this.§8#q§.addEventListener(Event.INIT,param2);
            this.§]#<§.push(param2);
         }
         if(this.§6V§())
         {
            this.§3#j§();
         }
      }
      
      private function §6V§() : Boolean
      {
         this.§-i§.removeEventListener(Event.INIT,this.§#`§);
         if(this.§-i§.§ v§())
         {
            this.initializeAnimations();
            this.§[#`§ = false;
            return true;
         }
         this.§-i§.addEventListener(Event.INIT,this.§#`§);
         this.§[#`§ = true;
         return false;
      }
      
      private function §#`§(param1:Event) : void
      {
         this.§-i§.removeEventListener(Event.INIT,this.§#`§);
         this.initializeAnimations();
         this.§[#`§ = false;
         this.§3#j§();
      }
      
      protected function initializeAnimations() : void
      {
         this.§`!§.initializeAnimations();
         this.§7"Z§.§""%§();
      }
      
      private function §>E§(param1:Event) : void
      {
         if(!Starling.§'8§())
         {
            return;
         }
         this.§-i§.reInitializeTextures();
         if(this.§;#O§ && this.§;#O§.textureManager)
         {
            this.§;#O§.textureManager.reInitializeTextures();
         }
         if(this.§>!@§ && this.§>!@§.textureManager)
         {
            this.§>!@§.textureManager.reInitializeTextures();
         }
         if(this.§[#`§)
         {
            if(this.§6V§())
            {
               this.§3#j§();
            }
         }
         if(this.§=#8§ != null && this.mReadyToRun)
         {
            this.§=#8§.addEventListeners();
         }
         if(this.§0#a§)
         {
            this.§0#a§.§ v§();
         }
         if(this.§;t§)
         {
            if(this.§;t§.textureManager)
            {
               this.§;t§.§ v§();
            }
         }
      }
      
      private function §3#j§() : void
      {
         this.§8#q§.dispatchEvent(new Event(Event.INIT));
         this.§ "u§();
      }
      
      private function § "u§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§]#<§)
         {
            this.§8#q§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§]#<§ = [];
      }
      
      public function init(param1:§?# §) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         §,'§ = param1.theme;
         this.§5"s§ = param1;
         this.§]$,§ = this.§2!&§(param1);
         this.§!?§ = this.initializeLevelCamera(param1);
         this.§;!>§ = 0;
         this.§>e§ = 0;
         this.§3"1§ = false;
         this.mReadyToRun = false;
         this.§&"u§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         this.§4"p§ = 1500;
         this.§0@§ = 3000;
         this.§2!5§ = 0;
         param1.theme = param1.theme || "background_blue_grass";
         this.§]!r§ = this.§@!y§(param1.theme);
         this.§1$2§ = this.§?>§(param1.theme);
         if(this.§]!r§ && this.§1$2§)
         {
            this.initialize(param1);
         }
         else
         {
            this.loadTheme(param1.theme);
         }
         this.§="v§(param1.name);
         §%!a§.init();
         this.addEventListeners();
      }
      
      protected function §2!&§(param1:§?# §) : §7d§
      {
         return new §7d§(this,param1);
      }
      
      public function addEventListeners() : void
      {
         §]$?§.§;u§.addEventListener(§?$B§.§^"%§,this.§?"z§.onEnterFrame);
         this.§2$$§ = true;
      }
      
      protected function §="v§(param1:String) : void
      {
         this.§%#P§ = new §9>§(param1);
      }
      
      protected function §@!y§(param1:String) : Boolean
      {
         if(this.§0#a§)
         {
            return false;
         }
         return true;
      }
      
      protected function §?>§(param1:String) : Boolean
      {
         var _loc2_:§+!q§ = null;
         if(this.§5!k§ && !this.mLevelManager.getCurrentEpisodeModel().isTournament)
         {
            _loc2_ = this.§%!,§.getBackground(param1);
            if(_loc2_)
            {
               if(_loc2_.§<"!§ && !this.§5!k§.§]k§(_loc2_.§<"!§))
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
         this.§]!w§(param1);
      }
      
      protected function §]!w§(param1:String) : void
      {
         var _loc2_:Array = null;
         if(this.§0#a§ && !this.§@!y§(param1))
         {
            this.§0#a§.removeEventListener(Event.COMPLETE,this.§3!r§);
            this.§0#a§.removeEventListener(Event.CANCEL,this.onThemeGraphicsNotAvailable);
            this.§0#a§.addEventListener(Event.COMPLETE,this.§3!r§);
            this.§0#a§.addEventListener(Event.CANCEL,this.onThemeGraphicsNotAvailable);
            _loc2_ = this.getThemeGraphicsLoadList(param1);
            this.§0#a§.§[#Q§(param1,_loc2_);
         }
         else
         {
            this.§=!u§(param1);
         }
      }
      
      protected function §=!u§(param1:String) : void
      {
         var _loc2_:§+!q§ = null;
         if(this.§5!k§ && !this.§?>§(param1))
         {
            this.§5!k§.removeEventListener(Event.COMPLETE,this.§#!H§);
            this.§5!k§.removeEventListener(Event.CANCEL,this.§`b§);
            this.§5!k§.addEventListener(Event.COMPLETE,this.§#!H§);
            this.§5!k§.addEventListener(Event.CANCEL,this.§`b§);
            _loc2_ = this.§%!,§.getBackground(param1);
            if(_loc2_)
            {
               this.§5!k§.§[#Q§(_loc2_.§<"!§);
            }
         }
         else
         {
            this.initialize(this.§5"s§);
         }
      }
      
      protected function §3!r§(param1:Event) : void
      {
         this.§0#a§.removeEventListener(Event.COMPLETE,this.§3!r§);
         this.§0#a§.removeEventListener(Event.CANCEL,this.onThemeGraphicsNotAvailable);
         this.§]!r§ = true;
         this.§=!u§(this.§5"s§.theme);
      }
      
      protected function onThemeGraphicsNotAvailable(param1:Event) : void
      {
         this.§0#a§.removeEventListener(Event.COMPLETE,this.§3!r§);
         this.§0#a§.removeEventListener(Event.CANCEL,this.onThemeGraphicsNotAvailable);
         this.§&"u§ = true;
      }
      
      protected function §#!H§(param1:Event) : void
      {
         this.§0#a§.removeEventListener(Event.COMPLETE,this.§#!H§);
         this.§0#a§.removeEventListener(Event.CANCEL,this.§`b§);
         this.§1$2§ = true;
         if(this.§]!r§ && this.§1$2§)
         {
            this.initialize(this.§5"s§);
         }
      }
      
      protected function §`b§(param1:Event) : void
      {
         this.§0#a§.removeEventListener(Event.COMPLETE,this.§#!H§);
         this.§0#a§.removeEventListener(Event.CANCEL,this.§`b§);
         this.§1$2§ = true;
         if(this.§]!r§ && this.§1$2§)
         {
            this.initialize(this.§5"s§);
         }
      }
      
      public function get backgroundTextureManager() : §#"^§
      {
         if(this.§;#O§)
         {
            return this.§;#O§.textureManager;
         }
         return null;
      }
      
      protected function initializePhysicsConstants(param1:§?# §) : void
      {
         b2Settings.b2_linearSleepTolerance = b2Settings.§"!$§;
      }
      
      protected function initialize(param1:§?# §) : void
      {
         this.§5"x§ = null;
         this.§6"_§ = false;
         if(Starling.§%",§)
         {
            Starling.§%",§.speed = 1;
         }
         this.initializePhysicsConstants(param1);
         this.initLevelEngine(param1);
         this.§;!z§ = this.initializeLevelBackground(param1.theme,0 / §2K§,this.backgroundTextureManager,this.§!?§.§^=§());
         this.§;!z§.§-!$§(§]$?§.§4!q§());
         if(Starling.§4$#§)
         {
            Starling.§4$#§.color = this.§;!z§.§>$2§;
         }
         this.§&!h§ = this.initializeLevelObjectManager(param1);
         this.§&!h§.§7$8§ = this.§>!3§(param1.name);
         this.§1"§ = this.initializeLevelSlingshot(param1);
         this.§9"F§ = this.initializeParticleManager(this.§`!§,this.§-i§);
         this.§!?§.init();
         this.§>"[§();
         this.§1#_§();
         this.mReadyToRun = true;
         if(this.§=#8§)
         {
            this.§=#8§.addEventListeners();
         }
         if(param1.name == §38§)
         {
            this.§!?§.§[#§(§1#K§);
            this.§4"D§(0);
         }
         else
         {
            §38§ = param1.name;
         }
         this.levelInitialized();
      }
      
      protected function levelInitialized() : void
      {
         this.§&!h§.levelInitialized();
      }
      
      protected function initLevelEngine(param1:§?# §) : void
      {
         this.mLevelEngine = new §4!`§(this);
      }
      
      protected function §1#_§() : void
      {
         if(this.§!#j§)
         {
            this.§-!L§ = §9>§.initialize(this.§!#j§);
            this.§-!L§.speed = 1;
            this.§-!L§.play();
            this.§5G§ = -1000;
            this.§!#j§ = null;
         }
      }
      
      public function §#"g§(param1:String) : void
      {
         this.§!#j§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§-!L§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§-!L§)
         {
            if(param1)
            {
               this.§-!L§.speed = Math.min(this.§-!L§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§-!L§.speed = Math.max(this.§-!L§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§-!L§)
         {
            this.§-!L§.speed = 1;
         }
      }
      
      protected function initializeLevelObjectManager(param1:§?# §) : § !i§
      {
         var _loc2_:String = §+!q§.§6!q§;
         return new § !i§(this,param1,new Sprite(),_loc2_);
      }
      
      protected function §>!3§(param1:String) : §&!i§
      {
         if(!param1)
         {
            return null;
         }
         var _loc2_:Class = this.§%!p§[param1.toLowerCase()];
         if(!_loc2_)
         {
            return null;
         }
         return new _loc2_() as §&!i§;
      }
      
      public function §[# §(param1:String, param2:Class) : void
      {
         this.§%!p§[param1.toLowerCase()] = param2;
      }
      
      protected function initializeLevelCamera(param1:§?# §) : §`3§
      {
         return new §`3§(this,param1);
      }
      
      protected function initializeLevelBackground(param1:String, param2:Number, param3:§#"^§, param4:Number) : §1_§
      {
         var _loc5_:§+!q§;
         if((_loc5_ = this.§%!,§.getBackground(param1)) == null)
         {
            §^"t§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §?# §.§8#v§;
            _loc5_ = this.§%!,§.getBackground(param1);
         }
         return new §1_§(this,_loc5_,param2,param3,param4,!Starling.§1""§);
      }
      
      protected function initializeLevelSlingshot(param1:§?# §) : §^"R§
      {
         return new §^"R§(this,param1,new Sprite());
      }
      
      protected function initializeParticleManager(param1:§4#[§, param2:§#"^§) : §##P§
      {
         return new §##P§(param1,param2);
      }
      
      public function initializeEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§?# § = new §?# §();
         _loc3_.slingshotY = -12;
         var _loc4_:§5#-§;
         (_loc4_ = new §5#-§()).left = 0;
         _loc4_.top = -§`3§.§ 3§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §`3§.§ 3§;
         _loc4_.right = _loc4_.left + §`3§.§#$7§;
         _loc4_.y = -13.929;
         _loc4_.x = §`3§.§#$7§;
         _loc4_.id = §`3§.§-$;§;
         _loc3_.§%"%§(_loc4_);
         var _loc5_:§5#-§;
         (_loc5_ = new §5#-§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §`3§.§#$7§;
         _loc5_.bottom = _loc5_.top + §`3§.§ 3§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §`3§.§#$7§ / 2;
         _loc5_.id = §`3§.§8?§;
         _loc3_.§%"%§(_loc5_);
         this.§="r§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§,'§ != null)
         {
            _loc3_.theme = §,'§;
         }
         this.init(_loc3_);
      }
      
      protected function §="r§(param1:§?# §, param2:Boolean) : void
      {
         if(param2)
         {
            this.§0!W§(param1);
         }
      }
      
      protected function §8$0§() : Number
      {
         this.§>!t§ ^= this.§>!t§ << 21;
         this.§>!t§ ^= this.§>!t§ >>> 35;
         this.§>!t§ ^= this.§>!t§ << 4;
         return this.§>!t§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §0!W§(param1:§?# §) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§5"?§ = null;
         this.§>!t§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < 10)
         {
            _loc4_ = 0;
            while(_loc4_ < 5)
            {
               _loc5_ = this.§8$0§() * 5;
               (_loc6_ = new §5"?§()).x = 30 + _loc4_ * 10 + this.§8$0§() * 9;
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
                  _loc6_.angle = 45 - this.§8$0§() * 90;
               }
               else
               {
                  _loc6_.y = -30 + _loc3_ * 6 - this.§8$0§() * 3 - _loc4_ * 8;
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
                  _loc6_.angle = this.§8$0§() * 360;
               }
               _loc6_.id = _loc2_;
               param1.addObject(_loc6_);
               _loc2_++;
               _loc4_++;
            }
            _loc3_++;
         }
      }
      
      private function §-!R§() : void
      {
      }
      
      protected function §+$6§() : void
      {
         if(§1_§.§9!9§)
         {
            this.addItemToDisplayList(this.§;!z§.§ #p§);
         }
      }
      
      protected function addBackgroundSpritesToDisplayList() : void
      {
         this.addItemToDisplayList(this.§&!h§.backgroundSprite);
         this.addItemToDisplayList(this.§9"F§.§@!O§(§##P§.§?##§));
         this.addItemToDisplayList(this.§9"F§.§@!O§(§##P§.§`#q§));
      }
      
      protected function addGameSpritesToDisplayList() : void
      {
         this.addItemToDisplayList(this.§9"F§.§@!O§(§##P§.PARTICLE_GROUP_BACKGROUND_EFFECTS));
         this.addItemToDisplayList(this.§&!h§.§&!-§);
         this.addItemToDisplayList(this.§1"§.sprite);
         this.addItemToDisplayList(this.§9"F§.§@!O§(§##P§.PARTICLE_GROUP_GAME_EFFECTS));
         this.addItemToDisplayList(this.§&!h§.§-$-§);
      }
      
      protected function §!!g§() : void
      {
         this.addItemToDisplayList(this.§;!z§.§ $+§);
         if(§1_§.§9!9§)
         {
            this.addItemToDisplayList(this.§;!z§.§"!>§);
         }
      }
      
      protected function §2"&§() : void
      {
         this.addItemToDisplayList(this.§&!h§.§`"%§);
         this.addItemToDisplayList(this.§9"F§.§@!O§(§##P§.§-#r§));
         this.addItemToDisplayList(this.§9"F§.§@!O§(§##P§.PARTICLE_GROUP_FOREGROUND_EFFECTS));
      }
      
      private function §>"[§() : void
      {
         this.§+$6§();
         this.addBackgroundSpritesToDisplayList();
         this.addGameSpritesToDisplayList();
         this.§!!g§();
         this.§2"&§();
      }
      
      protected function addItemToDisplayList(param1:DisplayObject) : void
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
         if(§]$?§.§6p§ > §]$?§.§[#U§)
         {
            param1 /= §]$?§.§6p§;
            param2 /= §]$?§.§6p§;
         }
         else
         {
            param1 /= §]$?§.§[#U§;
            param2 /= §]$?§.§[#U§;
         }
         param3.x = ((param1 - this.sprite.x) / §`3§.§-"C§ + this.§!?§.§2#<§) * §2K§;
         param3.y = ((param2 - this.sprite.y) / §`3§.§-"C§ + this.§!?§.§6#3§) * §2K§;
         return param3;
      }
      
      public function §9![§(param1:Number, param2:Number, param3:Point = null) : Point
      {
         if(!param3)
         {
            param3 = new Point();
         }
         param3.x = (param1 / §2K§ - this.§!?§.§2#<§) * §`3§.§-"C§ + this.sprite.x;
         param3.y = (param2 / §2K§ - this.§!?§.§6#3§) * §`3§.§-"C§ + this.sprite.y;
         var _loc4_:Number = Math.max(§]$?§.§6p§,§]$?§.§[#U§);
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
            this.background.setScreenOffset(param1,param2,this.§2"F§,this.§<#[§,param3,this.§=#L§,this.§<!r§);
         }
         if(this.objects)
         {
            this.objects.updateScrollAndScale(param1,param2);
         }
         if(this.mLevelEngine)
         {
            this.mLevelEngine.updateScrollAndScale(param1,param2);
         }
         if(this.slingshot)
         {
            this.slingshot.updateScrollAndScale(param1,param2);
         }
         if(this.particles)
         {
            this.particles.updateScrollAndScale(param1,param2);
         }
      }
      
      public function §,#C§(param1:String, param2:Number, param3:Number) : void
      {
         this.§&!h§.addObject(param1,param2,param3,0,§ !i§.ID_NEXT_FREE);
      }
      
      public function §@#T§() : void
      {
         if(this.§1"Z§)
         {
            this.§1"Z§.visible = true;
            this.§1"Z§.alpha = 0;
         }
         this.§3$ § = 0;
      }
      
      public function §-!D§(param1:Boolean, param2:Number = 0, param3:Number = 0, param4:Number = 0) : void
      {
         if(param1)
         {
            if(this.§,#I§)
            {
               this.§,#I§.§<#q§(param2);
               this.§,#I§.§+#d§(param3);
               this.§,#I§.§]"%§(param4);
            }
            else
            {
               this.§,#I§ = new §%#Z§(param2,param3,param4);
            }
         }
         else
         {
            this.§!?§.§<!?§(0,0);
            this.§,#I§ = null;
         }
      }
      
      public function clearLevel() : void
      {
         this.§^!Q§.clear();
         if(this.§;!z§)
         {
            this.§;!z§.dispose();
            this.§;!z§ = null;
         }
         if(this.§&!h§)
         {
            this.§&!h§.dispose();
            this.§&!h§ = null;
         }
         this.§%$<§ = this.§43§;
         if(this.mLevelEngine)
         {
            if(!this.mLevelEngine.§""j§)
            {
            }
            this.mLevelEngine.clear();
            this.mLevelEngine = null;
         }
         if(this.§]$,§)
         {
            this.§]$,§.clear();
            this.§]$,§ = null;
         }
         if(this.§1"§)
         {
            this.§1"§.dispose();
            this.§1"§ = null;
         }
         if(this.§!?§)
         {
            §1#K§ = this.§!?§.§6"&§;
            this.§!?§.clear();
            this.§!?§ = null;
         }
         if(this.§9"F§)
         {
            this.§9"F§.dispose();
            this.§9"F§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§;!>§ = 0;
         this.§>e§ = 0;
         this.mReadyToRun = false;
         this.§3"1§ = false;
         this.§3$ § = §7#E§.§"!%§;
         if(this.§7!i§)
         {
            (this.§7!i§ as §<"=§).§&!5§.x = 0;
            (this.§7!i§ as §<"=§).§&!5§.y = 0;
         }
         if(this.§1"Z§)
         {
            this.§1"Z§.visible = false;
         }
         this.§-!L§ = null;
         this.§%#P§ = null;
         if(this.§0#a§)
         {
            this.§0#a§.removeEventListener(Event.COMPLETE,this.§3!r§);
            this.§0#a§.removeEventListener(Event.CANCEL,this.onThemeGraphicsNotAvailable);
         }
         if(this.§5!k§)
         {
            this.§5!k§.removeEventListener(Event.COMPLETE,this.§#!H§);
            this.§5!k§.removeEventListener(Event.CANCEL,this.§`b§);
         }
         this.§ "u§();
         if(Starling.§4$#§)
         {
            Starling.§4$#§.color = 0;
         }
         if(this.§=#8§)
         {
            this.§=#8§.removeEventListeners();
         }
         §]$?§.§;u§.removeEventListener(§?$B§.§^"%§,this.§?"z§.onEnterFrame);
         this.§2$$§ = false;
         this.mReadyToRun = false;
      }
      
      public function gameOver(param1:int) : void
      {
      }
      
      public function §#_§() : String
      {
         if(this.§%#P§)
         {
            return this.§%#P§.toString();
         }
         return null;
      }
      
      public function get §&#o§() : Number
      {
         if(this.§5"x§)
         {
            return this.§5"x§.speed;
         }
         return 1;
      }
      
      public function update(param1:Number, param2:Boolean) : Number
      {
         if(!this.mReadyToRun || !Starling.§'8§())
         {
            return 0;
         }
         if(this.§%$<§ > 0)
         {
            this.§%$<§ -= param1;
         }
         if(this.§-!L§ && this.§-!L§.isPlaying)
         {
            return this.§"!x§(param1,param2);
         }
         return this.updateWithTime(param1,true,param2);
      }
      
      protected function updateWithTime(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc4_:Boolean = false;
         if(this.§5"x§)
         {
            _loc4_ = this.§5"x§.update(param1);
            param1 *= this.§5"x§.speed;
            if(Starling.§%",§)
            {
               Starling.§%",§.speed = this.§5"x§.speed;
            }
            if(!_loc4_)
            {
               this.§5"x§ = null;
            }
         }
         this.§>e§ += param1;
         if(this.§>#Y§)
         {
            this.§;!>§ += param1;
            this.§;!>§ = this.mLevelEngine.§=#H§(this.§;!>§);
         }
         else
         {
            this.§;!>§ = 0;
            this.handleEngineUpdateStep(param1);
         }
         this.§1"§.update(param1,param3);
         if(param2)
         {
            this.§4"D§(param1);
         }
         this.§^!Q§.update(param1);
         return param1;
      }
      
      private function §"!x§(param1:Number, param2:Boolean) : Number
      {
         var _loc4_:Number = NaN;
         var _loc3_:Number = §4!`§.§7!h§;
         if(this.§-!L§)
         {
            param1 *= this.§-!L§.speed;
            _loc4_ = this.§>e§ + param1;
            while(this.§>e§ + _loc3_ < _loc4_)
            {
               if(this.§>e§ + _loc3_ > this.§5G§)
               {
                  this.§-!L§.step(this);
                  this.§5G§ += _loc3_;
               }
               this.updateWithTime(_loc3_,false,param2);
            }
            if(_loc4_ > this.§5G§ + _loc3_)
            {
               this.§-!L§.step(this);
               this.§5G§ += _loc3_;
            }
            if(this.§>e§ < _loc4_)
            {
               this.updateWithTime(_loc4_ - this.§>e§,true,param2);
            }
            return param1;
         }
         return param1;
      }
      
      private function §4"D§(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.§;!z§)
         {
            this.§;!z§.update(param1);
         }
         this.§&!h§.renderObjects(param1,this.mLevelEngine.§81§,this.§;!>§);
         this.§2!"§();
         if(this.§3$ § < §7#E§.§"!%§)
         {
            this.§3$ § += param1;
            _loc2_ = §7#E§.§"!%§ / 2;
            _loc3_ = (-Math.abs(this.§3$ § - _loc2_) + _loc2_) * (§7#E§.§"!i§ / _loc2_);
            if(this.§1"Z§)
            {
               this.§1"Z§.alpha = _loc3_;
            }
         }
         else if(this.§1"Z§)
         {
            this.§1"Z§.visible = false;
         }
         if(this.§,#I§)
         {
            if(!this.§,#I§.§@#o§(this.§!?§,param1))
            {
               this.§-!D§(false);
            }
         }
         this.§!?§.§2o§(param1);
         this.mLevelEngine.§';§();
         this.§9"F§.update(param1);
         this.§,!j§(param1);
         this.§@$B§(param1);
      }
      
      public function handleEngineUpdateStep(param1:Number) : void
      {
         this.objects.updateObjects(param1);
         this.§4"Z§();
      }
      
      protected function §2!"§() : void
      {
         var _loc1_:§>"G§ = null;
         if(this.§3K§ != null)
         {
            for each(_loc1_ in this.§3K§)
            {
               if(!_loc1_.isLeavingTrail)
               {
                  this.§1W§(_loc1_);
               }
            }
         }
      }
      
      public function §,!j§(param1:Number) : void
      {
         var _loc2_:§#!m§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            _loc2_ = this.§&!h§.§"!E§(true);
            if(_loc2_)
            {
               _loc2_.scream();
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§&!h§.getPigCount());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            _loc2_ = this.§&!h§.§"!E§(true);
            if(_loc2_)
            {
               _loc2_.blink();
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§&!h§.getPigCount());
            }
         }
      }
      
      public function §@$B§(param1:Number) : void
      {
         var _loc2_:Array = null;
         var _loc3_:§>"G§ = null;
         var _loc4_:int = 0;
         var _loc5_:§>"G§ = null;
         var _loc6_:§9$8§ = null;
         if(this.§0@§ > 0)
         {
            this.§0@§ -= param1;
         }
         if(this.§4"p§ > 0)
         {
            this.§4"p§ -= param1;
         }
         if(this.§4"p§ <= 0 || this.§0@§ <= 0)
         {
            _loc2_ = this.§&!h§.§["[§();
            if(_loc2_.length > 0)
            {
               _loc3_ = null;
               if(this.§4"p§ <= 0)
               {
                  _loc4_ = Math.random() * _loc2_.length;
                  _loc3_ = this.§&!h§.getObject(_loc2_[_loc4_]) as §>"G§;
                  if(_loc3_)
                  {
                     _loc3_.blink();
                     this.§4"p§ = 250 + Math.random() * 500 + 2000 / (3 + _loc2_.length);
                  }
               }
               if(this.§0@§ <= 0)
               {
                  _loc4_ = Math.random() * _loc2_.length;
                  _loc3_ = this.§&!h§.getObject(_loc2_[_loc4_]) as §>"G§;
                  if(_loc3_)
                  {
                     _loc3_.scream();
                     this.§0@§ = 1500 + Math.random() * 3000 + 4000 / (3 + _loc2_.length);
                  }
               }
            }
         }
         if(this.§2!5§ <= 0)
         {
            if(_loc5_ = this.§&!h§.§<#>§())
            {
               if(_loc6_ = _loc5_.playFearSound())
               {
                  this.§2!5§ = _loc6_.§##8§;
               }
            }
         }
         else
         {
            this.§2!5§ -= param1;
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999, param7:String = null) : void
      {
         if(this.§%$<§ > 0)
         {
            return;
         }
         if(param6 == -9999)
         {
            param6 = §=,§.§?E§;
         }
         §%!a§.addScore(param1,param2);
         this.§=#8§.addScore(param1);
         if(param3 && param1 > 0 && !this.§6"_§)
         {
            this.§4m§(param1.toString(),param4,param5,800,param6,0,0,param7);
         }
      }
      
      public function §4m§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3, param8:String = null) : void
      {
         if(param5 == -9999)
         {
            param5 = §=,§.§9!>§;
         }
         this.§9"F§.addParticle(§=,§.§%P§,§##P§.§-#r§,§=,§.§2##§,param2,param3,param4,param1,param5,param6,param7,0,0,1,-1,false,param8);
      }
      
      public function §>"f§(param1:§'#N§) : void
      {
         if(this.§3K§ == null)
         {
            this.§3K§ = new Array();
         }
         this.§3K§.push(param1);
      }
      
      public function useMightyEagle() : void
      {
         this.§1"§.useMightyEagle();
         this.§&!h§.§?#J§();
         this.§6"_§ = true;
      }
      
      public function §1W§(param1:§>"G§) : void
      {
         this.§9"F§.§[!L§(§##P§.§?##§);
         if(this.§3K§.indexOf(param1) >= 0)
         {
            this.§3K§.splice(this.§3K§.indexOf(param1),1);
         }
         if(this.§3K§.length == 0)
         {
            this.§3K§ = null;
         }
      }
      
      public function shootBird(param1:§1#0§, param2:Number, param3:Number) : §>"G§
      {
         var _loc4_:§>"G§ = §>"G§(this.§&!h§.addObject(param1.name,param1.x,param1.y,0,§ !i§.ID_NEXT_FREE,true,true,true,param1.scale));
         var _loc5_:Number = param1.§3$9§;
         _loc4_.§<#%§(param1.§?"'§);
         _loc4_.§8X§(param1.§0#1§);
         if(param1.§8#T§ != 0)
         {
            _loc5_ = param1.§8#T§;
         }
         var _loc6_:Number = -_loc5_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc7_:Number = _loc5_ * param2 * Math.sin(param3 / (180 / Math.PI));
         _loc4_.§0"y§(new b2Vec2(_loc6_,_loc7_),false,true);
         _loc4_.isLeavingTrail = true;
         this.camera.setAction(§`3§.§<3§);
         if(this.§%#P§)
         {
            this.§%#P§.shootBird(this.mLevelEngine.§4$2§,param1.x,param1.y,param2,param3);
         }
         return _loc4_;
      }
      
      public function activateSpecialPower(param1:Number, param2:Number) : void
      {
         this.§3"1§ = true;
         this.§5#M§ = param1;
         this.§@#9§ = param2;
      }
      
      private function §4"Z§() : void
      {
         if(!this.§3"1§)
         {
            return;
         }
         this.§3"1§ = false;
         this.§&!h§.activateSpecialPower(this.§5#M§,this.§@#9§);
         if(this.§%#P§)
         {
            this.§%#P§.§5#h§(this.mLevelEngine.§4$2§,this.§5#M§,this.§@#9§);
         }
      }
      
      public function §?#!§() : void
      {
         this.§&!h§.§?#!§();
      }
      
      public function §<$A§() : void
      {
         this.§&!h§.§4F§();
      }
      
      public function §`S§() : §?# §
      {
         var _loc1_:§?# § = new §?# §();
         _loc1_.scoreGold = this.§5"s§.scoreGold;
         _loc1_.scoreSilver = this.§5"s§.scoreSilver;
         _loc1_.scoreEagle = this.§5"s§.scoreEagle;
         _loc1_.blockDestructionScorePercentage = this.§5"s§.blockDestructionScorePercentage;
         _loc1_.worldGravity = this.§5"s§.worldGravity;
         _loc1_.borderTop = this.§5"s§.borderTop;
         _loc1_.borderGround = this.§5"s§.borderGround;
         _loc1_.borderLeft = this.§5"s§.borderLeft;
         _loc1_.borderRight = this.§5"s§.borderRight;
         this.§!?§.§8!?§(_loc1_);
         this.§&!h§.§@!'§(_loc1_);
         this.§1"§.§[!b§(_loc1_);
         _loc1_.theme = !!this.§;!z§ ? this.§;!z§.§="M§() : "background_blue_grass";
         return _loc1_;
      }
      
      public function §7"Y§() : int
      {
         return this.§5"s§.scoreSilver;
      }
      
      public function §`"!§() : int
      {
         return this.§5"s§.scoreGold;
      }
      
      public function §%$1§(param1:int) : void
      {
         this.§5"s§.scoreSilver = param1;
      }
      
      public function §[#2§(param1:int) : void
      {
         this.§5"s§.scoreGold = param1;
      }
      
      public function §5#B§() : Number
      {
         return this.§5"s§.worldGravity;
      }
      
      public function §""F§(param1:Number) : void
      {
         this.§5"s§.worldGravity = param1;
      }
      
      public function §3`§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(this.§]$,§)
         {
            this.§]$,§.§3`§(param1,param2,param3,param4);
         }
         if(this.§5"s§)
         {
            this.§5"s§.borderTop = param1;
            this.§5"s§.borderGround = param2;
            this.§5"s§.borderLeft = param3;
            this.§5"s§.borderRight = param4;
         }
      }
      
      public function §9#3§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§2"F§ = param1;
         this.§<#[§ = param2;
         this.§=#L§ = param3;
         this.§<!r§ = param4;
         if(this.§8#z§)
         {
            this.§8#z§.§?!D§(param1,param2);
         }
         if(this.§!?§)
         {
            this.§!?§.§2o§(0);
         }
      }
      
      public function §;"6§(param1:§'#N§, param2:§'#N§) : Boolean
      {
         return false;
      }
      
      public function get currentLevel() : §?# §
      {
         return this.§5"s§;
      }
      
      public function get levelObjects() : § !i§
      {
         return this.§&!h§;
      }
      
      protected function get starling() : Starling
      {
         return this.§?"z§;
      }
      
      public function get §>#G§() : int
      {
         return §]#&§;
      }
      
      public function get §>#H§() : Array
      {
         return this.§^!Q§.§`!=§();
      }
      
      public function §!">§(param1:String, param2:String) : Boolean
      {
         return this.§^!Q§.§7!7§(param1,param2,this);
      }
   }
}
