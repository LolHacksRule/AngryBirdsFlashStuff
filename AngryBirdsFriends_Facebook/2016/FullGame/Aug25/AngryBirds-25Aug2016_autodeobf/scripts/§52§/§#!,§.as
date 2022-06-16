package §52§
{
   import §!x§.§4"d§;
   import §#v§.§#!?§;
   import §#v§.§-"R§;
   import §#v§.§8i§;
   import §'z§.§]!T§;
   import §+#m§.§=#S§;
   import §+#m§.§^#j§;
   import §,#L§.§!#%§;
   import §-W§.§9#Z§;
   import §0H§.b2Settings;
   import §0m§.b2Vec2;
   import §2]§.§%#Y§;
   import §3!T§.§5"8§;
   import §6§.§]!Q§;
   import §8$1§.§<"G§;
   import §8§.§@!"§;
   import §9$§.DisplayObject;
   import §9$§.Sprite;
   import §=!7§.§5"6§;
   import §=!7§.§=$4§;
   import §>!#§.§'"R§;
   import §?§.§>"$§;
   import §@"§.§&!=§;
   import §@"§.§,"A§;
   import §@"§.§]!-§;
   import §["Q§.§0$,§;
   import §[#a§.§-k§;
   import §[#a§.§3a§;
   import §[#a§.§6"[§;
   import §[#a§.§<"H§;
   import §[#a§.§="@§;
   import §^§.§1!9§;
   import §^§.§[>§;
   import §^a§.Starling;
   import §`"K§.§?#U§;
   import §`#C§.§9#s§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §#!,§ extends §]!Q§
   {
      
      private static const §6#M§:int = 20;
      
      public static const §?$#§:Number = 1 / 20;
      
      protected static var §'#8§:String;
      
      protected static var §@#N§:Number = 1;
      
      protected static var §#S§:String = §-"R§.§?! §;
       
      
      protected var §@#y§:§6"[§;
      
      private var §8#G§:Array = null;
      
      protected var §-"!§:§<"G§;
      
      public var mLevelEngine:§ "M§;
      
      protected var §5!b§:§1E§;
      
      protected var §7!1§:§0$,§;
      
      protected var §6"t§:§@M§;
      
      protected var §2"o§:§5"6§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §6"@§:Boolean = false;
      
      protected var §"#n§:Boolean = false;
      
      protected var § $,§:Boolean = false;
      
      public var §&"H§:Number = 1500;
      
      private var §1!c§:int = 500;
      
      private var §]#s§:int;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      private var §4# §:Number;
      
      private var § " §:Number;
      
      private var §6"V§:Number;
      
      public var §-";§:Number;
      
      public var §?#W§:Number;
      
      private var §]#p§:§%#Q§;
      
      private var §^#1§:Sprite;
      
      protected var §0#L§:§-"R§;
      
      protected var §8#a§:§]!T§ = null;
      
      private var §1X§:EventDispatcher;
      
      private var § $6§:Array;
      
      private var §+$2§:Starling;
      
      private var §&"i§:Vector.<§^#j§>;
      
      protected var §5!H§:§&!=§;
      
      protected var §@">§:§]!-§;
      
      private var §2"N§:§,"A§;
      
      private var §1$3§:§,"A§;
      
      private var §=#j§:§,"A§;
      
      private var §>A§:Stage;
      
      private var §`?§:§9!U§;
      
      protected var §<p§:§?#U§;
      
      protected var §`§:§?#U§;
      
      protected var §%!f§:Number = 0.0;
      
      protected var §7#Z§:String;
      
      private var §4_§:Boolean;
      
      private var §["o§:Number;
      
      private var §^#^§:Number;
      
      protected var §8!!§:§0"H§;
      
      protected var §#o§:§9#s§;
      
      protected var §]$ §:§1!9§;
      
      protected var mLevelManager:§#!?§;
      
      protected var §&""§:uint = 1.417339207E9;
      
      public var §'"j§:Boolean;
      
      private var §>Y§:Boolean = true;
      
      protected var §&!E§:int = 0;
      
      protected var §#"K§:int = 0;
      
      protected var §]1§:Number = 1.0;
      
      protected var §[$4§:Number = 1.0;
      
      protected var §7"-§:Boolean;
      
      private var §7"B§:§'"R§;
      
      protected var §`m§:Boolean = false;
      
      private var §6#`§:§%#Y§;
      
      public function §#!,§(param1:Stage, param2:§9#s§, param3:§1!9§, param4:§#!?§)
      {
         this.§ $6§ = [];
         this.§&"i§ = new Vector.<§^#j§>();
         super();
         this.§1X§ = new EventDispatcher();
         this.§>A§ = param1;
         this.§#o§ = param2;
         this.§]$ § = param3;
         this.mLevelManager = param4;
         this.§5!H§ = §&!=§.§3!]§;
         this.§@">§ = this.initAnimationManager(this.§5!H§);
         this.§2"N§ = this.initThemeGraphicsManager();
         this.§1$3§ = this.initThemeSoundsManager();
         this.§=#j§ = this.initCutSceneManager();
         this.§7"B§ = new §'"R§();
         var _loc5_:Stage3D = param1.stage3Ds[0];
         this.§+$2§ = new Starling(§%#Q§,param1,new Rectangle(0,0,§>"$§.§ "+§,§>"$§.§&#-§),_loc5_);
         _loc5_.addEventListener(Event.CONTEXT3D_CREATE,this.§^"W§,false,0,true);
         this.§+$2§.§?n§ = false;
         this.§+$2§.enableErrorChecking = false;
         this.§+$2§.§%"0§ = 2;
         this.§+$2§.§7#q§();
         this.§6#`§ = new §%#Y§(this);
      }
      
      public static function get §%"9§() : Number
      {
         return §>"$§.§ "+§;
      }
      
      public static function get §`"V§() : Number
      {
         return §>"$§.§&#-§;
      }
      
      public static function get §7#@§() : Number
      {
         return §>"$§.§&#-§ * §?$#§;
      }
      
      public static function get §]"L§() : Number
      {
         return §%"9§ * §?$#§;
      }
      
      public static function §3"0§(param1:§<"H§, param2:§<"H§) : Number
      {
         var _loc3_:Number = param1.§;#e§ - param2.§;#e§;
         var _loc4_:Number = param1.§^"@§ - param2.§^"@§;
         return §9"g§(_loc3_,_loc4_);
      }
      
      public static function §9"g§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get §8!C§() : Boolean
      {
         return this.§`m§;
      }
      
      protected function get sprite() : Sprite
      {
         if(!this.§^#1§ && this.§&"L§)
         {
            this.§^#1§ = this.§]#p§.§@$9§;
         }
         return this.§^#1§;
      }
      
      public function get §&"L§() : Sprite
      {
         if(!this.§]#p§)
         {
            this.§]#p§ = this.§+$2§.§!$#§ as §%#Q§;
            this.§]#p§.§0$6§ = false;
         }
         return this.§]#p§;
      }
      
      private function get §?"n§() : DisplayObject
      {
         if(this.§&"L§)
         {
            return (this.§&"L§ as §%#Q§).§?"n§;
         }
         return null;
      }
      
      public function get animationManager() : §]!-§
      {
         return this.§@">§;
      }
      
      public function get textureManager() : §&!=§
      {
         return this.§5!H§;
      }
      
      public function get camera() : §0$,§
      {
         return this.§7!1§;
      }
      
      public function get objects() : §6"[§
      {
         return this.§@#y§;
      }
      
      public function get particles() : §5"6§
      {
         return this.§2"o§;
      }
      
      public function get background() : §<"G§
      {
         return this.§-"!§;
      }
      
      public function get slingshot() : §@M§
      {
         return this.§6"t§;
      }
      
      public function get §8!X§() : §1E§
      {
         return this.§5!b§;
      }
      
      public function get stage() : Stage
      {
         return this.§>A§;
      }
      
      public function get levelItemManager() : §9#s§
      {
         return this.§#o§;
      }
      
      public function get §2§() : §,"A§
      {
         return this.§=#j§;
      }
      
      protected function get §8"R§() : §,"A§
      {
         return this.§2"N§;
      }
      
      public function setSlowMotion(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§8!!§ = new §0"H§(param1,param2,param3,param4);
      }
      
      public function get §?"x§() : Boolean
      {
         return this.§>Y§;
      }
      
      public function set §?"x§(param1:Boolean) : void
      {
         this.§>Y§ = param1;
      }
      
      public function clear() : void
      {
         var _loc2_:§^#j§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§&"i§.length)
         {
            _loc2_ = this.§&"i§[_loc1_];
            _loc2_.dispose();
            _loc1_++;
         }
         this.§&"i§ = new Vector.<§^#j§>();
         if(this.§5!H§)
         {
            this.§5!H§.removeEventListener(Event.INIT,this.§=h§);
            this.§5!H§.dispose();
         }
         if(this.§2"N§ && this.§2"N§.textureManager)
         {
            this.§2"N§.textureManager.dispose();
         }
         if(this.§=#j§ && this.§=#j§.textureManager)
         {
            this.§=#j§.textureManager.dispose();
         }
         if(this.§+$2§)
         {
            this.§+$2§.dispose();
         }
      }
      
      protected function initThemeGraphicsManager() : §,"A§
      {
         return new §,"A§(this.§>A§.loaderInfo.parameters.assetsUrl || "",this.§>A§.loaderInfo.parameters.buildNumber || "",this.mLevelManager);
      }
      
      protected function initThemeSoundsManager() : §,"A§
      {
         return new §,"A§(this.§>A§.loaderInfo.parameters.assetsUrl || "",this.§>A§.loaderInfo.parameters.buildNumber || "",this.mLevelManager,false);
      }
      
      protected function initCutSceneManager() : §,"A§
      {
         return new §,"A§(this.§>A§.loaderInfo.parameters.assetsUrl || "",this.§>A§.loaderInfo.parameters.buildNumber || "",this.mLevelManager);
      }
      
      protected function initAnimationManager(param1:§&!=§) : §]!-§
      {
         return new §]!-§(param1);
      }
      
      public function §5'§(param1:Boolean) : void
      {
         if(Starling.§<#`§)
         {
            if(param1)
            {
               Starling.§<#`§.start();
            }
            else
            {
               Starling.§<#`§.stop();
               Starling.§<#`§.color = 0;
            }
         }
      }
      
      public function §;W§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function setController(param1:§]!T§) : void
      {
         if(this.§8#a§ != null)
         {
            this.§8#a§.removeEventListeners();
         }
         this.§8#a§ = param1;
         if(this.mReadyToRun)
         {
            this.§8#a§.addEventListeners();
         }
      }
      
      public function §7O§() : §?#U§
      {
         return this.§<p§;
      }
      
      protected function getSpriteSheetGroup(param1:§=#S§) : int
      {
         return 0;
      }
      
      public function §0"c§(param1:§^#j§, param2:Array, param3:Function) : void
      {
         var _loc6_:§=#S§ = null;
         var _loc7_:int = 0;
         if(this.§&"i§.indexOf(param1) != -1)
         {
            return;
         }
         this.§&"i§.push(param1);
         var _loc4_:int = param1.§#!e§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc6_ = param1.§^#q§(_loc5_);
            _loc7_ = this.getSpriteSheetGroup(_loc6_);
            this.§5!H§.§-#]§(_loc6_,_loc7_);
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§1X§.addEventListener(Event.INIT,param3);
            this.§ $6§.push(param3);
         }
         this.§5!H§.removeEventListener(Event.INIT,this.§=h§);
         if(this.§5!H§.§8o§())
         {
            this.§#o§.§!B§(param2);
            this.§7"-§ = false;
            this.§&#N§();
         }
         else
         {
            this.§5!H§.addEventListener(Event.INIT,this.§=h§);
            this.§7"-§ = true;
         }
      }
      
      public function §;#3§(param1:§^#j§, param2:Function) : void
      {
         var _loc5_:§=#S§ = null;
         var _loc6_:int = 0;
         if(this.§&"i§.indexOf(param1) != -1)
         {
            return;
         }
         this.§&"i§.push(param1);
         var _loc3_:int = param1.§#!e§;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.§^#q§(_loc4_);
            _loc6_ = this.getSpriteSheetGroup(_loc5_);
            this.§5!H§.§-#]§(_loc5_,_loc6_);
            _loc4_++;
         }
         if(param2 != null)
         {
            this.§1X§.addEventListener(Event.INIT,param2);
            this.§ $6§.push(param2);
         }
         if(this.§<"C§())
         {
            this.§&#N§();
         }
      }
      
      private function §<"C§() : Boolean
      {
         this.§5!H§.removeEventListener(Event.INIT,this.§=h§);
         if(this.§5!H§.§8o§())
         {
            this.initializeAnimations();
            this.§7"-§ = false;
            return true;
         }
         this.§5!H§.addEventListener(Event.INIT,this.§=h§);
         this.§7"-§ = true;
         return false;
      }
      
      private function §=h§(param1:Event) : void
      {
         this.§5!H§.removeEventListener(Event.INIT,this.§=h§);
         this.initializeAnimations();
         this.§7"-§ = false;
         this.§&#N§();
      }
      
      protected function initializeAnimations() : void
      {
         this.§@">§.initializeAnimations();
         this.§#o§.§!B§();
      }
      
      private function §^"W§(param1:Event) : void
      {
         if(!Starling.§]">§())
         {
            return;
         }
         this.§5!H§.reInitializeTextures();
         if(this.§8"R§ && this.§8"R§.textureManager)
         {
            this.§8"R§.textureManager.reInitializeTextures();
         }
         if(this.§2§ && this.§2§.textureManager)
         {
            this.§2§.textureManager.reInitializeTextures();
         }
         if(this.§7"-§)
         {
            if(this.§<"C§())
            {
               this.§&#N§();
            }
         }
         if(this.§8#a§ != null && this.mReadyToRun)
         {
            this.§8#a§.addEventListeners();
         }
         if(this.§2"N§)
         {
            this.§2"N§.§8o§();
         }
         if(this.§=#j§)
         {
            if(this.§=#j§.textureManager)
            {
               this.§=#j§.§8o§();
            }
         }
      }
      
      private function §&#N§() : void
      {
         this.§1X§.dispatchEvent(new Event(Event.INIT));
         this.§`"N§();
      }
      
      private function §`"N§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§ $6§)
         {
            this.§1X§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§ $6§ = [];
      }
      
      public function init(param1:§-"R§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         §#S§ = param1.theme;
         this.§0#L§ = param1;
         this.§5!b§ = this.§@#J§(param1);
         this.§7!1§ = this.initializeLevelCamera(param1);
         this.§-";§ = 0;
         this.§?#W§ = 0;
         this.§4_§ = false;
         this.mReadyToRun = false;
         this.§6"@§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         this.§4# § = 1500;
         this.§ " § = 3000;
         this.§6"V§ = 0;
         param1.theme = param1.theme || "background_blue_grass";
         this.§"#n§ = this.§]#r§(param1.theme);
         this.§ $,§ = this.§>#N§(param1.theme);
         if(this.§"#n§ && this.§ $,§)
         {
            this.initialize(param1);
         }
         else
         {
            this.loadTheme(param1.theme);
         }
         this.§'!V§(param1.name);
         §6" §.init();
         this.addEventListeners();
      }
      
      protected function §@#J§(param1:§-"R§) : §1E§
      {
         return new §1E§(this,param1);
      }
      
      public function addEventListeners() : void
      {
         §>"$§.§<_§.addEventListener(§5"8§.§>#x§,this.§+$2§.onEnterFrame);
         this.§`m§ = true;
      }
      
      protected function §'!V§(param1:String) : void
      {
         this.§<p§ = new §?#U§(param1);
      }
      
      protected function §]#r§(param1:String) : Boolean
      {
         if(this.§2"N§)
         {
            return false;
         }
         return true;
      }
      
      protected function §>#N§(param1:String) : Boolean
      {
         var _loc2_:§[>§ = null;
         if(this.§1$3§)
         {
            _loc2_ = this.§]$ §.getBackground(param1);
            if(_loc2_)
            {
               if(_loc2_.§-$4§ && !this.§1$3§.§,#m§(_loc2_.§-$4§))
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
         this.§"$!§(param1);
      }
      
      protected function §"$!§(param1:String) : void
      {
         var _loc2_:Array = null;
         if(this.§2"N§ && !this.§]#r§(param1))
         {
            this.§2"N§.removeEventListener(Event.COMPLETE,this.§0#n§);
            this.§2"N§.removeEventListener(Event.CANCEL,this.onThemeGraphicsNotAvailable);
            this.§2"N§.addEventListener(Event.COMPLETE,this.§0#n§);
            this.§2"N§.addEventListener(Event.CANCEL,this.onThemeGraphicsNotAvailable);
            _loc2_ = this.getThemeGraphicsLoadList(param1);
            this.§2"N§.§[!z§(param1,_loc2_);
         }
         else
         {
            this.§9!1§(param1);
         }
      }
      
      protected function §9!1§(param1:String) : void
      {
         var _loc2_:§[>§ = null;
         if(this.§1$3§ && !this.§>#N§(param1))
         {
            this.§1$3§.removeEventListener(Event.COMPLETE,this.§ ![§);
            this.§1$3§.removeEventListener(Event.CANCEL,this.§]_§);
            this.§1$3§.addEventListener(Event.COMPLETE,this.§ ![§);
            this.§1$3§.addEventListener(Event.CANCEL,this.§]_§);
            _loc2_ = this.§]$ §.getBackground(param1);
            if(_loc2_)
            {
               this.§1$3§.§[!z§(_loc2_.§-$4§);
            }
         }
         else
         {
            this.initialize(this.§0#L§);
         }
      }
      
      protected function §0#n§(param1:Event) : void
      {
         this.§2"N§.removeEventListener(Event.COMPLETE,this.§0#n§);
         this.§2"N§.removeEventListener(Event.CANCEL,this.onThemeGraphicsNotAvailable);
         this.§"#n§ = true;
         this.§9!1§(this.§0#L§.theme);
      }
      
      protected function onThemeGraphicsNotAvailable(param1:Event) : void
      {
         this.§2"N§.removeEventListener(Event.COMPLETE,this.§0#n§);
         this.§2"N§.removeEventListener(Event.CANCEL,this.onThemeGraphicsNotAvailable);
         this.§6"@§ = true;
      }
      
      protected function § ![§(param1:Event) : void
      {
         this.§2"N§.removeEventListener(Event.COMPLETE,this.§ ![§);
         this.§2"N§.removeEventListener(Event.CANCEL,this.§]_§);
         this.§ $,§ = true;
         if(this.§"#n§ && this.§ $,§)
         {
            this.initialize(this.§0#L§);
         }
      }
      
      protected function §]_§(param1:Event) : void
      {
         this.§2"N§.removeEventListener(Event.COMPLETE,this.§ ![§);
         this.§2"N§.removeEventListener(Event.CANCEL,this.§]_§);
         this.§ $,§ = true;
         if(this.§"#n§ && this.§ $,§)
         {
            this.initialize(this.§0#L§);
         }
      }
      
      public function get backgroundTextureManager() : §&!=§
      {
         if(this.§8"R§)
         {
            return this.§8"R§.textureManager;
         }
         return null;
      }
      
      protected function initializePhysicsConstants(param1:§-"R§) : void
      {
         b2Settings.b2_linearSleepTolerance = b2Settings.§6#Z§;
      }
      
      private function initialize(param1:§-"R§) : void
      {
         this.§8!!§ = null;
         this.§'"j§ = false;
         if(Starling.§6!h§)
         {
            Starling.§6!h§.speed = 1;
         }
         this.initializePhysicsConstants(param1);
         this.initLevelEngine(param1);
         this.§-"!§ = this.initializeLevelBackground(param1.theme,0 / §?$#§,this.backgroundTextureManager,this.§7!1§.§5#@§());
         this.§-"!§.§,#K§(§>"$§.§-$5§());
         if(Starling.§<#`§)
         {
            Starling.§<#`§.color = this.§-"!§.§6$ §;
         }
         this.§@#y§ = this.initializeLevelObjectManager(param1);
         this.§@#y§.§!!+§ = this.§`$+§(param1.name);
         this.§6"t§ = this.initializeLevelSlingshot(param1);
         this.§2"o§ = this.initializeParticleManager(this.§@">§,this.§5!H§);
         this.§7!1§.init();
         this.§3"$§();
         this.§8$-§();
         this.mReadyToRun = true;
         if(this.§8#a§)
         {
            this.§8#a§.addEventListeners();
         }
         if(param1.name == §'#8§)
         {
            this.§7!1§.§=!x§(§@#N§);
            this.§4!Q§(0);
         }
         else
         {
            §'#8§ = param1.name;
         }
         this.levelInitialized();
      }
      
      protected function levelInitialized() : void
      {
         this.§@#y§.levelInitialized();
      }
      
      protected function initLevelEngine(param1:§-"R§) : void
      {
         this.mLevelEngine = new § "M§(this);
      }
      
      protected function §8$-§() : void
      {
         if(this.§7#Z§)
         {
            this.§`§ = §?#U§.initialize(this.§7#Z§);
            this.§`§.speed = 1;
            this.§`§.play();
            this.§%!f§ = -1000;
            this.§7#Z§ = null;
         }
      }
      
      public function §?#[§(param1:String) : void
      {
         this.§7#Z§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§`§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§`§)
         {
            if(param1)
            {
               this.§`§.speed = Math.min(this.§`§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§`§.speed = Math.max(this.§`§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§`§)
         {
            this.§`§.speed = 1;
         }
      }
      
      protected function initializeLevelObjectManager(param1:§-"R§) : §6"[§
      {
         var _loc2_:String = §[>§.§1"r§;
         return new §6"[§(this,param1,new Sprite(),_loc2_);
      }
      
      protected function §`$+§(param1:String) : §9#Z§
      {
         if(!param1)
         {
            return null;
         }
         var _loc2_:Class = this.§7"B§[param1.toLowerCase()];
         if(!_loc2_)
         {
            return null;
         }
         return new _loc2_() as §9#Z§;
      }
      
      public function §+"h§(param1:String, param2:Class) : void
      {
         this.§7"B§[param1.toLowerCase()] = param2;
      }
      
      protected function initializeLevelCamera(param1:§-"R§) : §0$,§
      {
         return new §0$,§(this,param1);
      }
      
      protected function initializeLevelBackground(param1:String, param2:Number, param3:§&!=§, param4:Number) : §<"G§
      {
         var _loc5_:§[>§;
         if((_loc5_ = this.§]$ §.getBackground(param1)) == null)
         {
            §4"d§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §-"R§.§?! §;
            _loc5_ = this.§]$ §.getBackground(param1);
         }
         return new §<"G§(this,_loc5_,param2,param3,param4,!Starling.§ #4§);
      }
      
      protected function initializeLevelSlingshot(param1:§-"R§) : §@M§
      {
         return new §@M§(this,param1,new Sprite());
      }
      
      protected function initializeParticleManager(param1:§]!-§, param2:§&!=§) : §5"6§
      {
         return new §5"6§(param1,param2);
      }
      
      public function initializeEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§-"R§ = new §-"R§();
         _loc3_.slingshotY = -12;
         var _loc4_:§8i§;
         (_loc4_ = new §8i§()).left = 0;
         _loc4_.top = -§0$,§.§'!@§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §0$,§.§'!@§;
         _loc4_.right = _loc4_.left + §0$,§.§,4§;
         _loc4_.y = -13.929;
         _loc4_.x = §0$,§.§,4§;
         _loc4_.id = §0$,§.§@"'§;
         _loc3_.§2#]§(_loc4_);
         var _loc5_:§8i§;
         (_loc5_ = new §8i§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §0$,§.§,4§;
         _loc5_.bottom = _loc5_.top + §0$,§.§'!@§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §0$,§.§,4§ / 2;
         _loc5_.id = §0$,§.§##x§;
         _loc3_.§2#]§(_loc5_);
         this.§+§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§#S§ != null)
         {
            _loc3_.theme = §#S§;
         }
         this.init(_loc3_);
      }
      
      protected function §+§(param1:§-"R§, param2:Boolean) : void
      {
         if(param2)
         {
            this.§!#O§(param1);
         }
      }
      
      protected function §8"u§() : Number
      {
         this.§&""§ ^= this.§&""§ << 21;
         this.§&""§ ^= this.§&""§ >>> 35;
         this.§&""§ ^= this.§&""§ << 4;
         return this.§&""§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §!#O§(param1:§-"R§) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§!#%§ = null;
         this.§&""§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < 10)
         {
            _loc4_ = 0;
            while(_loc4_ < 5)
            {
               _loc5_ = this.§8"u§() * 5;
               (_loc6_ = new §!#%§()).x = 30 + _loc4_ * 10 + this.§8"u§() * 9;
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
                  _loc6_.angle = 45 - this.§8"u§() * 90;
               }
               else
               {
                  _loc6_.y = -30 + _loc3_ * 6 - this.§8"u§() * 3 - _loc4_ * 8;
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
                  _loc6_.angle = this.§8"u§() * 360;
               }
               _loc6_.id = _loc2_;
               param1.addObject(_loc6_);
               _loc2_++;
               _loc4_++;
            }
            _loc3_++;
         }
      }
      
      private function §"#4§() : void
      {
      }
      
      protected function §%#"§() : void
      {
         if(§<"G§.§7!q§)
         {
            this.addItemToDisplayList(this.§-"!§.§-#8§);
         }
      }
      
      protected function addBackgroundSpritesToDisplayList() : void
      {
         this.addItemToDisplayList(this.§@#y§.backgroundSprite);
         this.addItemToDisplayList(this.§2"o§.§2# §(§5"6§.§&#I§));
         this.addItemToDisplayList(this.§2"o§.§2# §(§5"6§.§5"B§));
      }
      
      protected function addGameSpritesToDisplayList() : void
      {
         this.addItemToDisplayList(this.§2"o§.§2# §(§5"6§.PARTICLE_GROUP_BACKGROUND_EFFECTS));
         this.addItemToDisplayList(this.§@#y§.final);
         this.addItemToDisplayList(this.§6"t§.sprite);
         this.addItemToDisplayList(this.§2"o§.§2# §(§5"6§.PARTICLE_GROUP_GAME_EFFECTS));
         this.addItemToDisplayList(this.§@#y§.§>u§);
      }
      
      protected function §2M§() : void
      {
         this.addItemToDisplayList(this.§-"!§.§6!G§);
         if(§<"G§.§7!q§)
         {
            this.addItemToDisplayList(this.§-"!§.§&!t§);
         }
      }
      
      protected function §7$8§() : void
      {
         this.addItemToDisplayList(this.§@#y§.§<#^§);
         this.addItemToDisplayList(this.§2"o§.§2# §(§5"6§.§<"n§));
         this.addItemToDisplayList(this.§2"o§.§2# §(§5"6§.§4"8§));
      }
      
      private function §3"$§() : void
      {
         this.§%#"§();
         this.addBackgroundSpritesToDisplayList();
         this.addGameSpritesToDisplayList();
         this.§2M§();
         this.§7$8§();
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
         if(§>"$§.§;!m§ > §>"$§.§`G§)
         {
            param1 /= §>"$§.§;!m§;
            param2 /= §>"$§.§;!m§;
         }
         else
         {
            param1 /= §>"$§.§`G§;
            param2 /= §>"$§.§`G§;
         }
         param3.x = ((param1 - this.sprite.x) / §0$,§.§`#1§ + this.§7!1§.§##D§) * §?$#§;
         param3.y = ((param2 - this.sprite.y) / §0$,§.§`#1§ + this.§7!1§.§^"a§) * §?$#§;
         return param3;
      }
      
      public function §each §(param1:Number, param2:Number, param3:Point = null) : Point
      {
         if(!param3)
         {
            param3 = new Point();
         }
         param3.x = (param1 / §?$#§ - this.§7!1§.§##D§) * §0$,§.§`#1§ + this.sprite.x;
         param3.y = (param2 / §?$#§ - this.§7!1§.§^"a§) * §0$,§.§`#1§ + this.sprite.y;
         var _loc4_:Number = Math.max(§>"$§.§;!m§,§>"$§.§`G§);
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
            this.background.setScreenOffset(param1,param2,this.§&!E§,this.§#"K§,param3,this.§]1§,this.§[$4§);
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
      
      public function §#"s§(param1:String, param2:Number, param3:Number) : void
      {
         this.§@#y§.addObject(param1,param2,param3,0,§6"[§.ID_NEXT_FREE);
      }
      
      public function §4y§() : void
      {
         if(this.§?"n§)
         {
            this.§?"n§.visible = true;
            this.§?"n§.alpha = 0;
         }
         this.§&"H§ = 0;
      }
      
      public function § !A§(param1:Boolean, param2:Number = 0, param3:Number = 0, param4:Number = 0) : void
      {
         if(param1)
         {
            if(this.§`?§)
            {
               this.§`?§.§;R§(param2);
               this.§`?§.§]!j§(param3);
               this.§`?§.§;o§(param4);
            }
            else
            {
               this.§`?§ = new §9!U§(param2,param3,param4);
            }
         }
         else
         {
            this.§7!1§.§=#[§(0,0);
            this.§`?§ = null;
         }
      }
      
      public function clearLevel() : void
      {
         this.§6#`§.clear();
         if(this.§-"!§)
         {
            this.§-"!§.dispose();
            this.§-"!§ = null;
         }
         if(this.§@#y§)
         {
            this.§@#y§.dispose();
            this.§@#y§ = null;
         }
         this.§]#s§ = this.§1!c§;
         if(this.mLevelEngine)
         {
            if(!this.mLevelEngine.§=!9§)
            {
            }
            this.mLevelEngine.clear();
            this.mLevelEngine = null;
         }
         if(this.§5!b§)
         {
            this.§5!b§.clear();
            this.§5!b§ = null;
         }
         if(this.§6"t§)
         {
            this.§6"t§.dispose();
            this.§6"t§ = null;
         }
         if(this.§7!1§)
         {
            §@#N§ = this.§7!1§.§5,§;
            this.§7!1§.clear();
            this.§7!1§ = null;
         }
         if(this.§2"o§)
         {
            this.§2"o§.dispose();
            this.§2"o§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§-";§ = 0;
         this.§?#W§ = 0;
         this.mReadyToRun = false;
         this.§4_§ = false;
         this.§&"H§ = §;!p§.§#!I§;
         if(this.§&"L§)
         {
            (this.§&"L§ as §%#Q§).§?"Y§.x = 0;
            (this.§&"L§ as §%#Q§).§?"Y§.y = 0;
         }
         if(this.§?"n§)
         {
            this.§?"n§.visible = false;
         }
         this.§`§ = null;
         this.§<p§ = null;
         if(this.§2"N§)
         {
            this.§2"N§.removeEventListener(Event.COMPLETE,this.§0#n§);
            this.§2"N§.removeEventListener(Event.CANCEL,this.onThemeGraphicsNotAvailable);
         }
         if(this.§1$3§)
         {
            this.§1$3§.removeEventListener(Event.COMPLETE,this.§ ![§);
            this.§1$3§.removeEventListener(Event.CANCEL,this.§]_§);
         }
         this.§`"N§();
         if(Starling.§<#`§)
         {
            Starling.§<#`§.color = 0;
         }
         if(this.§8#a§)
         {
            this.§8#a§.removeEventListeners();
         }
         §>"$§.§<_§.removeEventListener(§5"8§.§>#x§,this.§+$2§.onEnterFrame);
         this.§`m§ = false;
         this.mReadyToRun = false;
      }
      
      public function gameOver(param1:int) : void
      {
      }
      
      public function §6",§() : String
      {
         if(this.§<p§)
         {
            return this.§<p§.toString();
         }
         return null;
      }
      
      public function get §[$#§() : Number
      {
         if(this.§8!!§)
         {
            return this.§8!!§.speed;
         }
         return 1;
      }
      
      public function update(param1:Number, param2:Boolean) : Number
      {
         if(!this.mReadyToRun || !Starling.§]">§())
         {
            return 0;
         }
         if(this.§]#s§ > 0)
         {
            this.§]#s§ -= param1;
         }
         if(this.§`§ && this.§`§.isPlaying)
         {
            return this.§8!T§(param1,param2);
         }
         return this.updateWithTime(param1,true,param2);
      }
      
      protected function updateWithTime(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc4_:Boolean = false;
         if(this.§8!!§)
         {
            _loc4_ = this.§8!!§.update(param1);
            param1 *= this.§8!!§.speed;
            if(Starling.§6!h§)
            {
               Starling.§6!h§.speed = this.§8!!§.speed;
            }
            if(!_loc4_)
            {
               this.§8!!§ = null;
            }
         }
         this.§?#W§ += param1;
         if(this.§?"x§)
         {
            this.§-";§ += param1;
            this.§-";§ = this.mLevelEngine.§=!D§(this.§-";§);
         }
         else
         {
            this.§-";§ = 0;
            this.handleEngineUpdateStep(param1);
         }
         this.§6"t§.update(param1,param3);
         if(param2)
         {
            this.§4!Q§(param1);
         }
         this.§6#`§.update(param1);
         return param1;
      }
      
      private function §8!T§(param1:Number, param2:Boolean) : Number
      {
         var _loc4_:Number = NaN;
         var _loc3_:Number = § "M§.§9#l§;
         if(this.§`§)
         {
            param1 *= this.§`§.speed;
            _loc4_ = this.§?#W§ + param1;
            while(this.§?#W§ + _loc3_ < _loc4_)
            {
               if(this.§?#W§ + _loc3_ > this.§%!f§)
               {
                  this.§`§.step(this);
                  this.§%!f§ += _loc3_;
               }
               this.updateWithTime(_loc3_,false,param2);
            }
            if(_loc4_ > this.§%!f§ + _loc3_)
            {
               this.§`§.step(this);
               this.§%!f§ += _loc3_;
            }
            if(this.§?#W§ < _loc4_)
            {
               this.updateWithTime(_loc4_ - this.§?#W§,true,param2);
            }
            return param1;
         }
         return param1;
      }
      
      private function §4!Q§(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         this.§-"!§.update(param1);
         this.§@#y§.renderObjects(param1,this.mLevelEngine.§;!r§,this.§-";§);
         this.§3!s§();
         if(this.§&"H§ < §;!p§.§#!I§)
         {
            this.§&"H§ += param1;
            _loc2_ = §;!p§.§#!I§ / 2;
            _loc3_ = (-Math.abs(this.§&"H§ - _loc2_) + _loc2_) * (§;!p§.§&#H§ / _loc2_);
            if(this.§?"n§)
            {
               this.§?"n§.alpha = _loc3_;
            }
         }
         else if(this.§?"n§)
         {
            this.§?"n§.visible = false;
         }
         if(this.§`?§)
         {
            if(!this.§`?§.§8e§(this.§7!1§,param1))
            {
               this.§ !A§(false);
            }
         }
         this.§7!1§.§0!h§(param1);
         this.mLevelEngine.§]!"§();
         this.§2"o§.update(param1);
         this.§<"#§(param1);
         this.§^O§(param1);
      }
      
      public function handleEngineUpdateStep(param1:Number) : void
      {
         this.objects.updateObjects(param1);
         this.§7"o§();
      }
      
      protected function §3!s§() : void
      {
         var _loc1_:§="@§ = null;
         if(this.§8#G§ != null)
         {
            for each(_loc1_ in this.§8#G§)
            {
               if(!_loc1_.isLeavingTrail)
               {
                  this.§0!6§(_loc1_);
               }
            }
         }
      }
      
      public function §<"#§(param1:Number) : void
      {
         var _loc2_:§3a§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            _loc2_ = this.§@#y§.§="A§(true);
            if(_loc2_)
            {
               _loc2_.scream();
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§@#y§.getPigCount());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            _loc2_ = this.§@#y§.§="A§(true);
            if(_loc2_)
            {
               _loc2_.blink();
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§@#y§.getPigCount());
            }
         }
      }
      
      public function §^O§(param1:Number) : void
      {
         var _loc2_:Array = null;
         var _loc3_:§="@§ = null;
         var _loc4_:int = 0;
         var _loc5_:§="@§ = null;
         var _loc6_:§@!"§ = null;
         if(this.§ " § > 0)
         {
            this.§ " § -= param1;
         }
         if(this.§4# § > 0)
         {
            this.§4# § -= param1;
         }
         if(this.§4# § <= 0 || this.§ " § <= 0)
         {
            _loc2_ = this.§@#y§.§#R§();
            if(_loc2_.length > 0)
            {
               _loc3_ = null;
               if(this.§4# § <= 0)
               {
                  _loc4_ = Math.random() * _loc2_.length;
                  _loc3_ = this.§@#y§.getObject(_loc2_[_loc4_]) as §="@§;
                  if(_loc3_)
                  {
                     _loc3_.blink();
                     this.§4# § = 250 + Math.random() * 500 + 2000 / (3 + _loc2_.length);
                  }
               }
               if(this.§ " § <= 0)
               {
                  _loc4_ = Math.random() * _loc2_.length;
                  _loc3_ = this.§@#y§.getObject(_loc2_[_loc4_]) as §="@§;
                  if(_loc3_)
                  {
                     _loc3_.scream();
                     this.§ " § = 1500 + Math.random() * 3000 + 4000 / (3 + _loc2_.length);
                  }
               }
            }
         }
         if(this.§6"V§ <= 0)
         {
            if(_loc5_ = this.§@#y§.§'"b§())
            {
               if(_loc6_ = _loc5_.playFearSound())
               {
                  this.§6"V§ = _loc6_.§ Q§;
               }
            }
         }
         else
         {
            this.§6"V§ -= param1;
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(this.§]#s§ > 0)
         {
            return;
         }
         if(param6 == -9999)
         {
            param6 = §=$4§.§[!Q§;
         }
         §6" §.addScore(param1,param2);
         this.§8#a§.addScore(param1);
         if(param3 && param1 > 0 && !this.§'"j§)
         {
            this.§<"N§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §<"N§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §=$4§.§+!K§;
         }
         this.§2"o§.addParticle(§=$4§.§ S§,§5"6§.§<"n§,§=$4§.§6!e§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §&!y§(param1:§<"H§) : void
      {
         if(this.§8#G§ == null)
         {
            this.§8#G§ = new Array();
         }
         this.§8#G§.push(param1);
      }
      
      public function useMightyEagle() : void
      {
         this.§6"t§.useMightyEagle();
         this.§@#y§.§5!C§();
         this.§'"j§ = true;
      }
      
      public function §0!6§(param1:§="@§) : void
      {
         this.§2"o§.§,!K§(§5"6§.§&#I§);
         if(this.§8#G§.indexOf(param1) >= 0)
         {
            this.§8#G§.splice(this.§8#G§.indexOf(param1),1);
         }
         if(this.§8#G§.length == 0)
         {
            this.§8#G§ = null;
         }
      }
      
      public function shootBird(param1:§5!&§, param2:Number, param3:Number) : §-k§
      {
         var _loc4_:§-k§ = §-k§(this.§@#y§.addObject(param1.name,param1.x,param1.y,0,§6"[§.ID_NEXT_FREE,true,true,true,param1.scale));
         var _loc5_:Number = param1.§-f§;
         if(param1.§=#8§ > 1)
         {
            _loc4_.§%$§(param1.§=#8§);
         }
         if(param1.§4"?§ != 0)
         {
            _loc5_ = param1.§4"?§;
         }
         var _loc6_:Number = -_loc5_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc7_:Number = _loc5_ * param2 * Math.sin(param3 / (180 / Math.PI));
         _loc4_.§%"R§(new b2Vec2(_loc6_,_loc7_),false,true);
         _loc4_.isLeavingTrail = true;
         this.camera.setAction(§0$,§.§>n§);
         if(this.§<p§)
         {
            this.§<p§.shootBird(this.mLevelEngine.§?#E§,param1.x,param1.y,param2,param3);
         }
         return _loc4_;
      }
      
      public function activateSpecialPower(param1:Number, param2:Number) : void
      {
         this.§4_§ = true;
         this.§["o§ = param1;
         this.§^#^§ = param2;
      }
      
      private function §7"o§() : void
      {
         if(!this.§4_§)
         {
            return;
         }
         this.§4_§ = false;
         if(this.§@#y§.activeObject is §-k§)
         {
            this.§@#y§.activateSpecialPower(this.§["o§,this.§^#^§);
         }
         if(this.§<p§)
         {
            this.§<p§.§>#5§(this.mLevelEngine.§?#E§,this.§["o§,this.§^#^§);
         }
      }
      
      public function §%"s§() : void
      {
         this.§@#y§.§%"s§();
      }
      
      public function §%l§() : void
      {
         this.§@#y§.§9!v§();
      }
      
      public function §+$"§() : §-"R§
      {
         var _loc1_:§-"R§ = new §-"R§();
         _loc1_.scoreGold = this.§0#L§.scoreGold;
         _loc1_.scoreSilver = this.§0#L§.scoreSilver;
         _loc1_.scoreEagle = this.§0#L§.scoreEagle;
         _loc1_.blockDestructionScorePercentage = this.§0#L§.blockDestructionScorePercentage;
         _loc1_.worldGravity = this.§0#L§.worldGravity;
         _loc1_.borderTop = this.§0#L§.borderTop;
         _loc1_.borderGround = this.§0#L§.borderGround;
         _loc1_.borderLeft = this.§0#L§.borderLeft;
         _loc1_.borderRight = this.§0#L§.borderRight;
         this.§7!1§.§]w§(_loc1_);
         this.§@#y§.§[!F§(_loc1_);
         this.§6"t§.§3# §(_loc1_);
         _loc1_.theme = this.§-"!§.§!#g§();
         return _loc1_;
      }
      
      public function §=j§() : int
      {
         return this.§0#L§.scoreSilver;
      }
      
      public function §[!$§() : int
      {
         return this.§0#L§.scoreGold;
      }
      
      public function §8#@§(param1:int) : void
      {
         this.§0#L§.scoreSilver = param1;
      }
      
      public function §[#e§(param1:int) : void
      {
         this.§0#L§.scoreGold = param1;
      }
      
      public function §@"r§() : Number
      {
         return this.§0#L§.worldGravity;
      }
      
      public function §7j§(param1:Number) : void
      {
         this.§0#L§.worldGravity = param1;
      }
      
      public function §6,§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(this.§5!b§)
         {
            this.§5!b§.§6,§(param1,param2,param3,param4);
         }
         if(this.§0#L§)
         {
            this.§0#L§.borderTop = param1;
            this.§0#L§.borderGround = param2;
            this.§0#L§.borderLeft = param3;
            this.§0#L§.borderRight = param4;
         }
      }
      
      public function §,!L§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§&!E§ = param1;
         this.§#"K§ = param2;
         this.§]1§ = param3;
         this.§[$4§ = param4;
         if(this.§]#p§)
         {
            this.§]#p§.§'W§(param1,param2);
         }
         if(this.§7!1§)
         {
            this.§7!1§.§0!h§(0);
         }
      }
      
      public function §'"+§(param1:§<"H§, param2:§<"H§) : Boolean
      {
         return false;
      }
      
      public function get currentLevel() : §-"R§
      {
         return this.§0#L§;
      }
      
      public function get levelObjects() : §6"[§
      {
         return this.§@#y§;
      }
      
      protected function get starling() : Starling
      {
         return this.§+$2§;
      }
      
      public function get §,I§() : int
      {
         return §6#M§;
      }
      
      public function get §]"§() : Array
      {
         return this.§6#`§.§[!n§();
      }
      
      public function §1!P§(param1:String, param2:String) : Boolean
      {
         return this.§6#`§.§<!]§(param1,param2,this);
      }
   }
}
