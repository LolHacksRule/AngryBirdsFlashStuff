package §@0§
{
   import § "%§.b2Vec2;
   import §!'§.§@>§;
   import §!'§.§[p§;
   import §%!P§.§4#u§;
   import §'!L§.§8"y§;
   import §+"T§.§6$%§;
   import §,!s§.b2Settings;
   import §3"I§.§?#N§;
   import §3$"§.§@# §;
   import §5#J§.§2#<§;
   import §6$8§.§'!W§;
   import §6$8§.§]§;
   import §8"L§.§8W§;
   import §8§.§!#L§;
   import §8§.§,§;
   import §8§.§4!y§;
   import §8§.§6!H§;
   import §;#D§.§3#U§;
   import §;$3§.§%V§;
   import §;$3§.§8=§;
   import §;$3§.§>f§;
   import §=#G§.§;3§;
   import §=§.§>!o§;
   import §>M§.§["z§;
   import §?"#§.§1!C§;
   import §?"#§.§=!I§;
   import §?"e§.Starling;
   import §@!M§.§^#p§;
   import §]!6§.§6Y§;
   import §^"S§.DisplayObject;
   import §^"S§.Sprite;
   import §`"8§.§34§;
   import §`"8§.§8$3§;
   import §`"8§.§`#+§;
   import §`7§.§0t§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §%!q§ extends §8"y§
   {
      
      private static const §6"Z§:int = 20;
      
      public static const §6q§:Number = 1 / 20;
      
      protected static var §[d§:String;
      
      protected static var §1q§:Number = 1;
      
      protected static var §7S§:String = §>f§.§="X§;
       
      
      protected var §"#[§:§!#L§;
      
      private var §8!R§:Array = null;
      
      protected var §"$2§:§>!o§;
      
      public var mLevelEngine:§9"Q§;
      
      protected var §>"J§:§`s§;
      
      protected var §4"l§:§4#u§;
      
      protected var §-$3§:§ !o§;
      
      protected var §#""§:§[p§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §3#1§:Boolean = false;
      
      protected var §="d§:Boolean = false;
      
      protected var §]+§:Boolean = false;
      
      public var §,!]§:Number = 1500;
      
      protected var §7##§:int = 500;
      
      protected var §&"'§:int;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      private var §>#6§:Number;
      
      private var §,"Z§:Number;
      
      private var §,$7§:Number;
      
      public var §["y§:Number;
      
      public var §&!§:Number;
      
      private var §="i§:§;V§;
      
      private var §]#i§:Sprite;
      
      protected var §<4§:§>f§;
      
      protected var §'>§:§;3§ = null;
      
      private var §=#R§:EventDispatcher;
      
      private var §,#L§:Array;
      
      private var § J§:Starling;
      
      private var §+#t§:Vector.<§1!C§>;
      
      protected var §4Z§:§34§;
      
      protected var §##i§:§`#+§;
      
      private var §?n§:§8$3§;
      
      private var §"";§:§8$3§;
      
      private var §@!!§:§8$3§;
      
      private var §!#^§:Stage;
      
      private var §#;§:§catch§;
      
      protected var §'#l§:§6$%§;
      
      protected var §4!A§:§6$%§;
      
      protected var §1"f§:Number = 0.0;
      
      protected var §'f§:String;
      
      private var §"B§:Boolean;
      
      private var §"I§:Number;
      
      private var §^g§:Number;
      
      protected var §8B§:§ !1§;
      
      protected var §<"a§:§8W§;
      
      protected var §5m§:§'!W§;
      
      protected var mLevelManager:§8=§;
      
      protected var §2#K§:uint = 1.417339207E9;
      
      public var §2!R§:Boolean;
      
      private var §^#6§:Boolean = true;
      
      protected var §^§:int = 0;
      
      protected var §##1§:int = 0;
      
      protected var §+!P§:Number = 1.0;
      
      protected var §+!N§:Number = 1.0;
      
      protected var §<"O§:Boolean;
      
      private var §?#$§:§0t§;
      
      protected var §3$3§:Boolean = false;
      
      private var §5v§:§@# §;
      
      public function §%!q§(param1:Stage, param2:§8W§, param3:§'!W§, param4:§8=§)
      {
         this.§,#L§ = [];
         this.§+#t§ = new Vector.<§1!C§>();
         super();
         this.§=#R§ = new EventDispatcher();
         this.§!#^§ = param1;
         this.§<"a§ = param2;
         this.§5m§ = param3;
         this.mLevelManager = param4;
         this.§4Z§ = §34§.§6!§;
         this.§##i§ = this.initAnimationManager(this.§4Z§);
         this.§?n§ = this.initThemeGraphicsManager();
         this.§"";§ = this.initThemeSoundsManager();
         this.§@!!§ = this.initCutSceneManager();
         this.§?#$§ = new §0t§();
         var _loc5_:Stage3D = param1.stage3Ds[0];
         this.§ J§ = new Starling(§;V§,param1,new Rectangle(0,0,§3#U§.§,g§,§3#U§.§2b§),_loc5_);
         _loc5_.addEventListener(Event.CONTEXT3D_CREATE,this.§!G§,false,0,true);
         this.§ J§.§;#%§ = false;
         this.§ J§.enableErrorChecking = false;
         this.§ J§.§;!+§ = 2;
         this.§ J§.§'N§();
         this.§5v§ = new §@# §(this);
      }
      
      public static function get § "+§() : Number
      {
         return §3#U§.§,g§;
      }
      
      public static function get §=K§() : Number
      {
         return §3#U§.§2b§;
      }
      
      public static function get §3#X§() : Number
      {
         return §3#U§.§2b§ * §6q§;
      }
      
      public static function get §!d§() : Number
      {
         return § "+§ * §6q§;
      }
      
      public static function §!u§(param1:§,#5§, param2:§,#5§) : Number
      {
         var _loc3_:Number = param1.§;d§ - param2.§;d§;
         var _loc4_:Number = param1.§["t§ - param2.§["t§;
         return §#p§(_loc3_,_loc4_);
      }
      
      public static function §#p§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get §=!o§() : Boolean
      {
         return this.§3$3§;
      }
      
      protected function get sprite() : Sprite
      {
         if(!this.§]#i§ && this.§+T§)
         {
            this.§]#i§ = this.§="i§.§<#u§;
         }
         return this.§]#i§;
      }
      
      public function get §+T§() : Sprite
      {
         if(!this.§="i§)
         {
            this.§="i§ = this.§ J§.§1!P§ as §;V§;
            this.§="i§.§?C§ = false;
         }
         return this.§="i§;
      }
      
      private function get §4!^§() : DisplayObject
      {
         if(this.§+T§)
         {
            return (this.§+T§ as §;V§).§4!^§;
         }
         return null;
      }
      
      public function get animationManager() : §`#+§
      {
         return this.§##i§;
      }
      
      public function get textureManager() : §34§
      {
         return this.§4Z§;
      }
      
      public function get camera() : §4#u§
      {
         return this.§4"l§;
      }
      
      public function get objects() : §!#L§
      {
         return this.§"#[§;
      }
      
      public function get particles() : §[p§
      {
         return this.§#""§;
      }
      
      public function get background() : §>!o§
      {
         return this.§"$2§;
      }
      
      public function get slingshot() : § !o§
      {
         return this.§-$3§;
      }
      
      public function get §^n§() : §`s§
      {
         return this.§>"J§;
      }
      
      public function get stage() : Stage
      {
         return this.§!#^§;
      }
      
      public function get levelItemManager() : §8W§
      {
         return this.§<"a§;
      }
      
      public function get §]!d§() : §8$3§
      {
         return this.§@!!§;
      }
      
      protected function get §'!t§() : §8$3§
      {
         return this.§?n§;
      }
      
      public function setSlowMotion(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§8B§ = new § !1§(param1,param2,param3,param4);
      }
      
      public function get §]!`§() : Boolean
      {
         return this.§^#6§;
      }
      
      public function set §]!`§(param1:Boolean) : void
      {
         this.§^#6§ = param1;
      }
      
      public function clear() : void
      {
         var _loc2_:§1!C§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§+#t§.length)
         {
            _loc2_ = this.§+#t§[_loc1_];
            _loc2_.dispose();
            _loc1_++;
         }
         this.§+#t§ = new Vector.<§1!C§>();
         if(this.§4Z§)
         {
            this.§4Z§.removeEventListener(Event.INIT,this.§`@§);
            this.§4Z§.dispose();
         }
         if(this.§?n§ && this.§?n§.textureManager)
         {
            this.§?n§.textureManager.dispose();
         }
         if(this.§@!!§ && this.§@!!§.textureManager)
         {
            this.§@!!§.textureManager.dispose();
         }
         if(this.§ J§)
         {
            this.§ J§.dispose();
         }
      }
      
      protected function initThemeGraphicsManager() : §8$3§
      {
         return new §8$3§(this.§!#^§.loaderInfo.parameters.assetsUrl || "",this.§!#^§.loaderInfo.parameters.buildNumber || "",this.mLevelManager);
      }
      
      protected function initThemeSoundsManager() : §8$3§
      {
         return new §8$3§(this.§!#^§.loaderInfo.parameters.assetsUrl || "",this.§!#^§.loaderInfo.parameters.buildNumber || "",this.mLevelManager,false);
      }
      
      protected function initCutSceneManager() : §8$3§
      {
         return new §8$3§(this.§!#^§.loaderInfo.parameters.assetsUrl || "",this.§!#^§.loaderInfo.parameters.buildNumber || "",this.mLevelManager);
      }
      
      protected function initAnimationManager(param1:§34§) : §`#+§
      {
         return new §`#+§(param1);
      }
      
      public function §;"?§(param1:Boolean) : void
      {
         if(Starling.§@#K§)
         {
            if(param1)
            {
               Starling.§@#K§.start();
            }
            else
            {
               Starling.§@#K§.stop();
               Starling.§@#K§.color = 0;
            }
         }
      }
      
      public function §0"2§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function setController(param1:§;3§) : void
      {
         if(this.§'>§ != null)
         {
            this.§'>§.removeEventListeners();
         }
         this.§'>§ = param1;
         if(this.mReadyToRun)
         {
            this.§'>§.addEventListeners();
         }
      }
      
      public function §&"a§() : §6$%§
      {
         return this.§'#l§;
      }
      
      protected function getSpriteSheetGroup(param1:§=!I§) : int
      {
         return 0;
      }
      
      public function §^#j§(param1:§1!C§, param2:Array, param3:Function) : void
      {
         var _loc6_:§=!I§ = null;
         var _loc7_:int = 0;
         if(this.§+#t§.indexOf(param1) != -1)
         {
            return;
         }
         this.§+#t§.push(param1);
         var _loc4_:int = param1.§ #0§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc6_ = param1.§+!u§(_loc5_);
            _loc7_ = this.getSpriteSheetGroup(_loc6_);
            this.§4Z§.§5#I§(_loc6_,_loc7_);
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§=#R§.addEventListener(Event.INIT,param3);
            this.§,#L§.push(param3);
         }
         this.§4Z§.removeEventListener(Event.INIT,this.§`@§);
         if(this.§4Z§.§`"Q§())
         {
            this.§<"a§.§3m§(param2);
            this.§<"O§ = false;
            this.§>#O§();
         }
         else
         {
            this.§4Z§.addEventListener(Event.INIT,this.§`@§);
            this.§<"O§ = true;
         }
      }
      
      public function §'$-§(param1:§1!C§, param2:Function) : void
      {
         var _loc5_:§=!I§ = null;
         var _loc6_:int = 0;
         if(this.§+#t§.indexOf(param1) != -1)
         {
            return;
         }
         this.§+#t§.push(param1);
         var _loc3_:int = param1.§ #0§;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.§+!u§(_loc4_);
            _loc6_ = this.getSpriteSheetGroup(_loc5_);
            this.§4Z§.§5#I§(_loc5_,_loc6_);
            _loc4_++;
         }
         if(param2 != null)
         {
            this.§=#R§.addEventListener(Event.INIT,param2);
            this.§,#L§.push(param2);
         }
         if(this.§%h§())
         {
            this.§>#O§();
         }
      }
      
      private function §%h§() : Boolean
      {
         this.§4Z§.removeEventListener(Event.INIT,this.§`@§);
         if(this.§4Z§.§`"Q§())
         {
            this.initializeAnimations();
            this.§<"O§ = false;
            return true;
         }
         this.§4Z§.addEventListener(Event.INIT,this.§`@§);
         this.§<"O§ = true;
         return false;
      }
      
      private function §`@§(param1:Event) : void
      {
         this.§4Z§.removeEventListener(Event.INIT,this.§`@§);
         this.initializeAnimations();
         this.§<"O§ = false;
         this.§>#O§();
      }
      
      protected function initializeAnimations() : void
      {
         this.§##i§.initializeAnimations();
         this.§<"a§.§3m§();
      }
      
      private function §!G§(param1:Event) : void
      {
         if(!Starling.§1#H§())
         {
            return;
         }
         this.§4Z§.reInitializeTextures();
         if(this.§'!t§ && this.§'!t§.textureManager)
         {
            this.§'!t§.textureManager.reInitializeTextures();
         }
         if(this.§]!d§ && this.§]!d§.textureManager)
         {
            this.§]!d§.textureManager.reInitializeTextures();
         }
         if(this.§<"O§)
         {
            if(this.§%h§())
            {
               this.§>#O§();
            }
         }
         if(this.§'>§ != null && this.mReadyToRun)
         {
            this.§'>§.addEventListeners();
         }
         if(this.§?n§)
         {
            this.§?n§.§`"Q§();
         }
         if(this.§@!!§)
         {
            if(this.§@!!§.textureManager)
            {
               this.§@!!§.§`"Q§();
            }
         }
      }
      
      private function §>#O§() : void
      {
         this.§=#R§.dispatchEvent(new Event(Event.INIT));
         this.§&"$§();
      }
      
      private function §&"$§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§,#L§)
         {
            this.§=#R§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§,#L§ = [];
      }
      
      public function init(param1:§>f§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         §7S§ = param1.theme;
         this.§<4§ = param1;
         this.§>"J§ = this.§1"R§(param1);
         this.§4"l§ = this.initializeLevelCamera(param1);
         this.§["y§ = 0;
         this.§&!§ = 0;
         this.§"B§ = false;
         this.mReadyToRun = false;
         this.§3#1§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         this.§>#6§ = 1500;
         this.§,"Z§ = 3000;
         this.§,$7§ = 0;
         param1.theme = param1.theme || "background_blue_grass";
         this.§="d§ = this.§!#1§(param1.theme);
         this.§]+§ = this.§5#M§(param1.theme);
         if(this.§="d§ && this.§]+§)
         {
            this.initialize(param1);
         }
         else
         {
            this.loadTheme(param1.theme);
         }
         this.§'!V§(param1.name);
         §&"A§.init();
         this.addEventListeners();
      }
      
      protected function §1"R§(param1:§>f§) : §`s§
      {
         return new §`s§(this,param1);
      }
      
      public function addEventListeners() : void
      {
         §3#U§.§9#^§.addEventListener(§?#N§.§1!I§,this.§ J§.onEnterFrame);
         this.§3$3§ = true;
      }
      
      protected function §'!V§(param1:String) : void
      {
         this.§'#l§ = new §6$%§(param1);
      }
      
      protected function §!#1§(param1:String) : Boolean
      {
         if(this.§?n§)
         {
            return false;
         }
         return true;
      }
      
      protected function §5#M§(param1:String) : Boolean
      {
         var _loc2_:§]§ = null;
         if(this.§"";§ && !this.mLevelManager.getCurrentEpisodeModel().isTournament)
         {
            _loc2_ = this.§5m§.getBackground(param1);
            if(_loc2_)
            {
               if(_loc2_.§>#5§ && !this.§"";§.§@!c§(_loc2_.§>#5§))
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
         this.§51§(param1);
      }
      
      protected function §51§(param1:String) : void
      {
         var _loc2_:Array = null;
         if(this.§?n§ && !this.§!#1§(param1))
         {
            this.§?n§.removeEventListener(Event.COMPLETE,this.§&!u§);
            this.§?n§.removeEventListener(Event.CANCEL,this.onThemeGraphicsNotAvailable);
            this.§?n§.addEventListener(Event.COMPLETE,this.§&!u§);
            this.§?n§.addEventListener(Event.CANCEL,this.onThemeGraphicsNotAvailable);
            _loc2_ = this.getThemeGraphicsLoadList(param1);
            this.§?n§.§,!j§(param1,_loc2_);
         }
         else
         {
            this.§7"1§(param1);
         }
      }
      
      protected function §7"1§(param1:String) : void
      {
         var _loc2_:§]§ = null;
         if(this.§"";§ && !this.§5#M§(param1))
         {
            this.§"";§.removeEventListener(Event.COMPLETE,this.§@!&§);
            this.§"";§.removeEventListener(Event.CANCEL,this.§"3§);
            this.§"";§.addEventListener(Event.COMPLETE,this.§@!&§);
            this.§"";§.addEventListener(Event.CANCEL,this.§"3§);
            _loc2_ = this.§5m§.getBackground(param1);
            if(_loc2_)
            {
               this.§"";§.§,!j§(_loc2_.§>#5§);
            }
         }
         else
         {
            this.initialize(this.§<4§);
         }
      }
      
      protected function §&!u§(param1:Event) : void
      {
         this.§?n§.removeEventListener(Event.COMPLETE,this.§&!u§);
         this.§?n§.removeEventListener(Event.CANCEL,this.onThemeGraphicsNotAvailable);
         this.§="d§ = true;
         this.§7"1§(this.§<4§.theme);
      }
      
      protected function onThemeGraphicsNotAvailable(param1:Event) : void
      {
         this.§?n§.removeEventListener(Event.COMPLETE,this.§&!u§);
         this.§?n§.removeEventListener(Event.CANCEL,this.onThemeGraphicsNotAvailable);
         this.§3#1§ = true;
      }
      
      protected function §@!&§(param1:Event) : void
      {
         this.§?n§.removeEventListener(Event.COMPLETE,this.§@!&§);
         this.§?n§.removeEventListener(Event.CANCEL,this.§"3§);
         this.§]+§ = true;
         if(this.§="d§ && this.§]+§)
         {
            this.initialize(this.§<4§);
         }
      }
      
      protected function §"3§(param1:Event) : void
      {
         this.§?n§.removeEventListener(Event.COMPLETE,this.§@!&§);
         this.§?n§.removeEventListener(Event.CANCEL,this.§"3§);
         this.§]+§ = true;
         if(this.§="d§ && this.§]+§)
         {
            this.initialize(this.§<4§);
         }
      }
      
      public function get backgroundTextureManager() : §34§
      {
         if(this.§'!t§)
         {
            return this.§'!t§.textureManager;
         }
         return null;
      }
      
      protected function initializePhysicsConstants(param1:§>f§) : void
      {
         b2Settings.b2_linearSleepTolerance = b2Settings.§@#E§;
      }
      
      protected function initialize(param1:§>f§) : void
      {
         this.§8B§ = null;
         this.§2!R§ = false;
         if(Starling.§%!&§)
         {
            Starling.§%!&§.speed = 1;
         }
         this.initializePhysicsConstants(param1);
         this.initLevelEngine(param1);
         this.§"$2§ = this.initializeLevelBackground(param1.theme,0 / §6q§,this.backgroundTextureManager,this.§4"l§.§,"<§());
         this.§"$2§.§-#p§(§3#U§.§3#=§());
         if(Starling.§@#K§)
         {
            Starling.§@#K§.color = this.§"$2§.§@#-§;
         }
         this.§"#[§ = this.initializeLevelObjectManager(param1);
         this.§"#[§.§^#P§ = this.§@#B§(param1.name);
         this.§-$3§ = this.initializeLevelSlingshot(param1);
         this.§#""§ = this.initializeParticleManager(this.§##i§,this.§4Z§);
         this.§4"l§.init();
         this.§@#r§();
         this.§8$&§();
         this.mReadyToRun = true;
         if(this.§'>§)
         {
            this.§'>§.addEventListeners();
         }
         if(param1.name == §[d§)
         {
            this.§4"l§.§`#^§(§1q§);
            this.§?"O§(0);
         }
         else
         {
            §[d§ = param1.name;
         }
         this.levelInitialized();
      }
      
      protected function levelInitialized() : void
      {
         this.§"#[§.levelInitialized();
      }
      
      protected function initLevelEngine(param1:§>f§) : void
      {
         this.mLevelEngine = new §9"Q§(this);
      }
      
      protected function §8$&§() : void
      {
         if(this.§'f§)
         {
            this.§4!A§ = §6$%§.initialize(this.§'f§);
            this.§4!A§.speed = 1;
            this.§4!A§.play();
            this.§1"f§ = -1000;
            this.§'f§ = null;
         }
      }
      
      public function §&"h§(param1:String) : void
      {
         this.§'f§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§4!A§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§4!A§)
         {
            if(param1)
            {
               this.§4!A§.speed = Math.min(this.§4!A§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§4!A§.speed = Math.max(this.§4!A§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§4!A§)
         {
            this.§4!A§.speed = 1;
         }
      }
      
      protected function initializeLevelObjectManager(param1:§>f§) : §!#L§
      {
         var _loc2_:String = §]§.§-k§;
         return new §!#L§(this,param1,new Sprite(),_loc2_);
      }
      
      protected function §@#B§(param1:String) : §2#<§
      {
         if(!param1)
         {
            return null;
         }
         var _loc2_:Class = this.§?#$§[param1.toLowerCase()];
         if(!_loc2_)
         {
            return null;
         }
         return new _loc2_() as §2#<§;
      }
      
      public function §`!t§(param1:String, param2:Class) : void
      {
         this.§?#$§[param1.toLowerCase()] = param2;
      }
      
      protected function initializeLevelCamera(param1:§>f§) : §4#u§
      {
         return new §4#u§(this,param1);
      }
      
      protected function initializeLevelBackground(param1:String, param2:Number, param3:§34§, param4:Number) : §>!o§
      {
         var _loc5_:§]§;
         if((_loc5_ = this.§5m§.getBackground(param1)) == null)
         {
            §6Y§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §>f§.§="X§;
            _loc5_ = this.§5m§.getBackground(param1);
         }
         return new §>!o§(this,_loc5_,param2,param3,param4,!Starling.§`"J§);
      }
      
      protected function initializeLevelSlingshot(param1:§>f§) : § !o§
      {
         return new § !o§(this,param1,new Sprite());
      }
      
      protected function initializeParticleManager(param1:§`#+§, param2:§34§) : §[p§
      {
         return new §[p§(param1,param2);
      }
      
      public function initializeEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§>f§ = new §>f§();
         _loc3_.slingshotY = -12;
         var _loc4_:§%V§;
         (_loc4_ = new §%V§()).left = 0;
         _loc4_.top = -§4#u§.§3j§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §4#u§.§3j§;
         _loc4_.right = _loc4_.left + §4#u§.§[!#§;
         _loc4_.y = -13.929;
         _loc4_.x = §4#u§.§[!#§;
         _loc4_.id = §4#u§.§2#2§;
         _loc3_.§"K§(_loc4_);
         var _loc5_:§%V§;
         (_loc5_ = new §%V§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §4#u§.§[!#§;
         _loc5_.bottom = _loc5_.top + §4#u§.§3j§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §4#u§.§[!#§ / 2;
         _loc5_.id = §4#u§.§6"=§;
         _loc3_.§"K§(_loc5_);
         this.§=v§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§7S§ != null)
         {
            _loc3_.theme = §7S§;
         }
         this.init(_loc3_);
      }
      
      protected function §=v§(param1:§>f§, param2:Boolean) : void
      {
         if(param2)
         {
            this.§8$<§(param1);
         }
      }
      
      protected function §7K§() : Number
      {
         this.§2#K§ ^= this.§2#K§ << 21;
         this.§2#K§ ^= this.§2#K§ >>> 35;
         this.§2#K§ ^= this.§2#K§ << 4;
         return this.§2#K§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §8$<§(param1:§>f§) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§["z§ = null;
         this.§2#K§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < 10)
         {
            _loc4_ = 0;
            while(_loc4_ < 5)
            {
               _loc5_ = this.§7K§() * 5;
               (_loc6_ = new §["z§()).x = 30 + _loc4_ * 10 + this.§7K§() * 9;
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
                  _loc6_.angle = 45 - this.§7K§() * 90;
               }
               else
               {
                  _loc6_.y = -30 + _loc3_ * 6 - this.§7K§() * 3 - _loc4_ * 8;
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
                  _loc6_.angle = this.§7K§() * 360;
               }
               _loc6_.id = _loc2_;
               param1.addObject(_loc6_);
               _loc2_++;
               _loc4_++;
            }
            _loc3_++;
         }
      }
      
      private function §""f§() : void
      {
      }
      
      protected function §0#d§() : void
      {
         if(§>!o§.§;!D§)
         {
            this.addItemToDisplayList(this.§"$2§.§"![§);
         }
      }
      
      protected function addBackgroundSpritesToDisplayList() : void
      {
         this.addItemToDisplayList(this.§"#[§.backgroundSprite);
         this.addItemToDisplayList(this.§#""§.§4"1§(§[p§.§0![§));
         this.addItemToDisplayList(this.§#""§.§4"1§(§[p§.§7"+§));
      }
      
      protected function addGameSpritesToDisplayList() : void
      {
         this.addItemToDisplayList(this.§#""§.§4"1§(§[p§.PARTICLE_GROUP_BACKGROUND_EFFECTS));
         this.addItemToDisplayList(this.§"#[§.§`#T§);
         this.addItemToDisplayList(this.§-$3§.sprite);
         this.addItemToDisplayList(this.§#""§.§4"1§(§[p§.PARTICLE_GROUP_GAME_EFFECTS));
         this.addItemToDisplayList(this.§"#[§.§>!f§);
      }
      
      protected function §2"Q§() : void
      {
         this.addItemToDisplayList(this.§"$2§.§&!L§);
         if(§>!o§.§;!D§)
         {
            this.addItemToDisplayList(this.§"$2§.§#"j§);
         }
      }
      
      protected function §<#3§() : void
      {
         this.addItemToDisplayList(this.§"#[§.§!!'§);
         this.addItemToDisplayList(this.§#""§.§4"1§(§[p§.§'!q§));
         this.addItemToDisplayList(this.§#""§.§4"1§(§[p§.PARTICLE_GROUP_FOREGROUND_EFFECTS));
      }
      
      private function §@#r§() : void
      {
         this.§0#d§();
         this.addBackgroundSpritesToDisplayList();
         this.addGameSpritesToDisplayList();
         this.§2"Q§();
         this.§<#3§();
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
         if(§3#U§.§<!K§ > §3#U§.§>!p§)
         {
            param1 /= §3#U§.§<!K§;
            param2 /= §3#U§.§<!K§;
         }
         else
         {
            param1 /= §3#U§.§>!p§;
            param2 /= §3#U§.§>!p§;
         }
         param3.x = ((param1 - this.sprite.x) / §4#u§.§3"§ + this.§4"l§.§6#i§) * §6q§;
         param3.y = ((param2 - this.sprite.y) / §4#u§.§3"§ + this.§4"l§.§="e§) * §6q§;
         return param3;
      }
      
      public function §!#u§(param1:Number, param2:Number, param3:Point = null) : Point
      {
         if(!param3)
         {
            param3 = new Point();
         }
         param3.x = (param1 / §6q§ - this.§4"l§.§6#i§) * §4#u§.§3"§ + this.sprite.x;
         param3.y = (param2 / §6q§ - this.§4"l§.§="e§) * §4#u§.§3"§ + this.sprite.y;
         var _loc4_:Number = Math.max(§3#U§.§<!K§,§3#U§.§>!p§);
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
            this.background.setScreenOffset(param1,param2,this.§^§,this.§##1§,param3,this.§+!P§,this.§+!N§);
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
      
      public function §4"e§(param1:String, param2:Number, param3:Number) : void
      {
         this.§"#[§.addObject(param1,param2,param3,0,§!#L§.ID_NEXT_FREE);
      }
      
      public function §>"T§() : void
      {
         if(this.§4!^§)
         {
            this.§4!^§.visible = true;
            this.§4!^§.alpha = 0;
         }
         this.§,!]§ = 0;
      }
      
      public function §""x§(param1:Boolean, param2:Number = 0, param3:Number = 0, param4:Number = 0) : void
      {
         if(param1)
         {
            if(this.§#;§)
            {
               this.§#;§.§0!g§(param2);
               this.§#;§.§+'§(param3);
               this.§#;§.§;z§(param4);
            }
            else
            {
               this.§#;§ = new §catch§(param2,param3,param4);
            }
         }
         else
         {
            this.§4"l§.§!^§(0,0);
            this.§#;§ = null;
         }
      }
      
      public function clearLevel() : void
      {
         this.§5v§.clear();
         if(this.§"$2§)
         {
            this.§"$2§.dispose();
            this.§"$2§ = null;
         }
         if(this.§"#[§)
         {
            this.§"#[§.dispose();
            this.§"#[§ = null;
         }
         this.§&"'§ = this.§7##§;
         if(this.mLevelEngine)
         {
            if(!this.mLevelEngine.§!"S§)
            {
            }
            this.mLevelEngine.clear();
            this.mLevelEngine = null;
         }
         if(this.§>"J§)
         {
            this.§>"J§.clear();
            this.§>"J§ = null;
         }
         if(this.§-$3§)
         {
            this.§-$3§.dispose();
            this.§-$3§ = null;
         }
         if(this.§4"l§)
         {
            §1q§ = this.§4"l§.§#r§;
            this.§4"l§.clear();
            this.§4"l§ = null;
         }
         if(this.§#""§)
         {
            this.§#""§.dispose();
            this.§#""§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§["y§ = 0;
         this.§&!§ = 0;
         this.mReadyToRun = false;
         this.§"B§ = false;
         this.§,!]§ = §1#7§.§&!h§;
         if(this.§+T§)
         {
            (this.§+T§ as §;V§).§6#H§.x = 0;
            (this.§+T§ as §;V§).§6#H§.y = 0;
         }
         if(this.§4!^§)
         {
            this.§4!^§.visible = false;
         }
         this.§4!A§ = null;
         this.§'#l§ = null;
         if(this.§?n§)
         {
            this.§?n§.removeEventListener(Event.COMPLETE,this.§&!u§);
            this.§?n§.removeEventListener(Event.CANCEL,this.onThemeGraphicsNotAvailable);
         }
         if(this.§"";§)
         {
            this.§"";§.removeEventListener(Event.COMPLETE,this.§@!&§);
            this.§"";§.removeEventListener(Event.CANCEL,this.§"3§);
         }
         this.§&"$§();
         if(Starling.§@#K§)
         {
            Starling.§@#K§.color = 0;
         }
         if(this.§'>§)
         {
            this.§'>§.removeEventListeners();
         }
         §3#U§.§9#^§.removeEventListener(§?#N§.§1!I§,this.§ J§.onEnterFrame);
         this.§3$3§ = false;
         this.mReadyToRun = false;
      }
      
      public function gameOver(param1:int) : void
      {
      }
      
      public function §#S§() : String
      {
         if(this.§'#l§)
         {
            return this.§'#l§.toString();
         }
         return null;
      }
      
      public function get §9"]§() : Number
      {
         if(this.§8B§)
         {
            return this.§8B§.speed;
         }
         return 1;
      }
      
      public function update(param1:Number, param2:Boolean) : Number
      {
         if(!this.mReadyToRun || !Starling.§1#H§())
         {
            return 0;
         }
         if(this.§&"'§ > 0)
         {
            this.§&"'§ -= param1;
         }
         if(this.§4!A§ && this.§4!A§.isPlaying)
         {
            return this.§]"c§(param1,param2);
         }
         return this.updateWithTime(param1,true,param2);
      }
      
      protected function updateWithTime(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc4_:Boolean = false;
         if(this.§8B§)
         {
            _loc4_ = this.§8B§.update(param1);
            param1 *= this.§8B§.speed;
            if(Starling.§%!&§)
            {
               Starling.§%!&§.speed = this.§8B§.speed;
            }
            if(!_loc4_)
            {
               this.§8B§ = null;
            }
         }
         this.§&!§ += param1;
         if(this.§]!`§)
         {
            this.§["y§ += param1;
            this.§["y§ = this.mLevelEngine.§>#g§(this.§["y§);
         }
         else
         {
            this.§["y§ = 0;
            this.handleEngineUpdateStep(param1);
         }
         this.§-$3§.update(param1,param3);
         if(param2)
         {
            this.§?"O§(param1);
         }
         this.§5v§.update(param1);
         return param1;
      }
      
      private function §]"c§(param1:Number, param2:Boolean) : Number
      {
         var _loc4_:Number = NaN;
         var _loc3_:Number = §9"Q§.§`E§;
         if(this.§4!A§)
         {
            param1 *= this.§4!A§.speed;
            _loc4_ = this.§&!§ + param1;
            while(this.§&!§ + _loc3_ < _loc4_)
            {
               if(this.§&!§ + _loc3_ > this.§1"f§)
               {
                  this.§4!A§.step(this);
                  this.§1"f§ += _loc3_;
               }
               this.updateWithTime(_loc3_,false,param2);
            }
            if(_loc4_ > this.§1"f§ + _loc3_)
            {
               this.§4!A§.step(this);
               this.§1"f§ += _loc3_;
            }
            if(this.§&!§ < _loc4_)
            {
               this.updateWithTime(_loc4_ - this.§&!§,true,param2);
            }
            return param1;
         }
         return param1;
      }
      
      private function §?"O§(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.§"$2§)
         {
            this.§"$2§.update(param1);
         }
         this.§"#[§.renderObjects(param1,this.mLevelEngine.§ !e§,this.§["y§);
         this.§6"?§();
         if(this.§,!]§ < §1#7§.§&!h§)
         {
            this.§,!]§ += param1;
            _loc2_ = §1#7§.§&!h§ / 2;
            _loc3_ = (-Math.abs(this.§,!]§ - _loc2_) + _loc2_) * (§1#7§.§2#W§ / _loc2_);
            if(this.§4!^§)
            {
               this.§4!^§.alpha = _loc3_;
            }
         }
         else if(this.§4!^§)
         {
            this.§4!^§.visible = false;
         }
         if(this.§#;§)
         {
            if(!this.§#;§.§;#3§(this.§4"l§,param1))
            {
               this.§""x§(false);
            }
         }
         this.§4"l§.§0"`§(param1);
         this.mLevelEngine.§]X§();
         this.§#""§.update(param1);
         this.§4" §(param1);
         this.§>$A§(param1);
      }
      
      public function handleEngineUpdateStep(param1:Number) : void
      {
         this.objects.updateObjects(param1);
         this.§4"_§();
      }
      
      protected function §6"?§() : void
      {
         var _loc1_:§4!y§ = null;
         if(this.§8!R§ != null)
         {
            for each(_loc1_ in this.§8!R§)
            {
               if(!_loc1_.isLeavingTrail)
               {
                  this.§`#'§(_loc1_);
               }
            }
         }
      }
      
      public function §4" §(param1:Number) : void
      {
         var _loc2_:§6!H§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            _loc2_ = this.§"#[§.§<#;§(true);
            if(_loc2_)
            {
               _loc2_.scream();
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§"#[§.getPigCount());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            _loc2_ = this.§"#[§.§<#;§(true);
            if(_loc2_)
            {
               _loc2_.blink();
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§"#[§.getPigCount());
            }
         }
      }
      
      public function §>$A§(param1:Number) : void
      {
         var _loc2_:Array = null;
         var _loc3_:§4!y§ = null;
         var _loc4_:int = 0;
         var _loc5_:§4!y§ = null;
         var _loc6_:§^#p§ = null;
         if(this.§,"Z§ > 0)
         {
            this.§,"Z§ -= param1;
         }
         if(this.§>#6§ > 0)
         {
            this.§>#6§ -= param1;
         }
         if(this.§>#6§ <= 0 || this.§,"Z§ <= 0)
         {
            _loc2_ = this.§"#[§.§1"c§();
            if(_loc2_.length > 0)
            {
               _loc3_ = null;
               if(this.§>#6§ <= 0)
               {
                  _loc4_ = Math.random() * _loc2_.length;
                  _loc3_ = this.§"#[§.getObject(_loc2_[_loc4_]) as §4!y§;
                  if(_loc3_)
                  {
                     _loc3_.blink();
                     this.§>#6§ = 250 + Math.random() * 500 + 2000 / (3 + _loc2_.length);
                  }
               }
               if(this.§,"Z§ <= 0)
               {
                  _loc4_ = Math.random() * _loc2_.length;
                  _loc3_ = this.§"#[§.getObject(_loc2_[_loc4_]) as §4!y§;
                  if(_loc3_)
                  {
                     _loc3_.scream();
                     this.§,"Z§ = 1500 + Math.random() * 3000 + 4000 / (3 + _loc2_.length);
                  }
               }
            }
         }
         if(this.§,$7§ <= 0)
         {
            if(_loc5_ = this.§"#[§.§5$'§())
            {
               if(_loc6_ = _loc5_.playFearSound())
               {
                  this.§,$7§ = _loc6_.§3N§;
               }
            }
         }
         else
         {
            this.§,$7§ -= param1;
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999, param7:String = null) : void
      {
         if(this.§&"'§ > 0)
         {
            return;
         }
         if(param6 == -9999)
         {
            param6 = §@>§.§9#9§;
         }
         §&"A§.addScore(param1,param2);
         this.§'>§.addScore(param1);
         if(param3 && param1 > 0 && !this.§2!R§)
         {
            this.§4#w§(param1.toString(),param4,param5,800,param6,0,0,param7);
         }
      }
      
      public function §4#w§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3, param8:String = null) : void
      {
         if(param5 == -9999)
         {
            param5 = §@>§.§^#J§;
         }
         this.§#""§.addParticle(§@>§.§[!9§,§[p§.§'!q§,§@>§.§%7§,param2,param3,param4,param1,param5,param6,param7,0,0,1,-1,false,param8);
      }
      
      public function §'"a§(param1:§,#5§) : void
      {
         if(this.§8!R§ == null)
         {
            this.§8!R§ = new Array();
         }
         this.§8!R§.push(param1);
      }
      
      public function useMightyEagle() : void
      {
         this.§-$3§.useMightyEagle();
         this.§"#[§.§?#S§();
         this.§2!R§ = true;
      }
      
      public function §`#'§(param1:§4!y§) : void
      {
         this.§#""§.§-$"§(§[p§.§0![§);
         if(this.§8!R§.indexOf(param1) >= 0)
         {
            this.§8!R§.splice(this.§8!R§.indexOf(param1),1);
         }
         if(this.§8!R§.length == 0)
         {
            this.§8!R§ = null;
         }
      }
      
      public function shootBird(param1:§4!_§, param2:Number, param3:Number) : §4!y§
      {
         var _loc4_:§4!y§ = §4!y§(this.§"#[§.addObject(param1.name,param1.x,param1.y,0,§!#L§.ID_NEXT_FREE,true,true,true,param1.scale));
         var _loc5_:Number = param1.§-$0§;
         _loc4_.§]#'§(param1.§!a§);
         _loc4_.§?!V§(param1.§7!x§);
         if(param1.§'"]§ != 0)
         {
            _loc5_ = param1.§'"]§;
         }
         var _loc6_:Number = -_loc5_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc7_:Number = _loc5_ * param2 * Math.sin(param3 / (180 / Math.PI));
         _loc4_.§5"[§(new b2Vec2(_loc6_,_loc7_),false,true);
         _loc4_.isLeavingTrail = true;
         this.camera.setAction(§4#u§.§+"s§);
         if(this.§'#l§)
         {
            this.§'#l§.shootBird(this.mLevelEngine.§71§,param1.x,param1.y,param2,param3);
         }
         return _loc4_;
      }
      
      public function activateSpecialPower(param1:Number, param2:Number) : void
      {
         this.§"B§ = true;
         this.§"I§ = param1;
         this.§^g§ = param2;
      }
      
      private function §4"_§() : void
      {
         if(!this.§"B§)
         {
            return;
         }
         this.§"B§ = false;
         this.§"#[§.activateSpecialPower(this.§"I§,this.§^g§);
         if(this.§'#l§)
         {
            this.§'#l§.§`$6§(this.mLevelEngine.§71§,this.§"I§,this.§^g§);
         }
      }
      
      public function §;!2§() : void
      {
         this.§"#[§.§;!2§();
      }
      
      public function § "A§() : void
      {
         this.§"#[§.§<#M§();
      }
      
      public function §'#s§() : §>f§
      {
         var _loc1_:§>f§ = new §>f§();
         _loc1_.scoreGold = this.§<4§.scoreGold;
         _loc1_.scoreSilver = this.§<4§.scoreSilver;
         _loc1_.scoreEagle = this.§<4§.scoreEagle;
         _loc1_.blockDestructionScorePercentage = this.§<4§.blockDestructionScorePercentage;
         _loc1_.worldGravity = this.§<4§.worldGravity;
         _loc1_.borderTop = this.§<4§.borderTop;
         _loc1_.borderGround = this.§<4§.borderGround;
         _loc1_.borderLeft = this.§<4§.borderLeft;
         _loc1_.borderRight = this.§<4§.borderRight;
         this.§4"l§.§#!5§(_loc1_);
         this.§"#[§.§4"n§(_loc1_);
         this.§-$3§.§=!T§(_loc1_);
         _loc1_.theme = !!this.§"$2§ ? this.§"$2§.§>#D§() : "background_blue_grass";
         return _loc1_;
      }
      
      public function §&6§() : int
      {
         return this.§<4§.scoreSilver;
      }
      
      public function §^"_§() : int
      {
         return this.§<4§.scoreGold;
      }
      
      public function §%!v§(param1:int) : void
      {
         this.§<4§.scoreSilver = param1;
      }
      
      public function §6u§(param1:int) : void
      {
         this.§<4§.scoreGold = param1;
      }
      
      public function §+"g§() : Number
      {
         return this.§<4§.worldGravity;
      }
      
      public function §%$7§(param1:Number) : void
      {
         this.§<4§.worldGravity = param1;
      }
      
      public function §=I§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(this.§>"J§)
         {
            this.§>"J§.§=I§(param1,param2,param3,param4);
         }
         if(this.§<4§)
         {
            this.§<4§.borderTop = param1;
            this.§<4§.borderGround = param2;
            this.§<4§.borderLeft = param3;
            this.§<4§.borderRight = param4;
         }
      }
      
      public function §&!1§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§^§ = param1;
         this.§##1§ = param2;
         this.§+!P§ = param3;
         this.§+!N§ = param4;
         if(this.§="i§)
         {
            this.§="i§.§;#[§(param1,param2);
         }
         if(this.§4"l§)
         {
            this.§4"l§.§0"`§(0);
         }
      }
      
      public function §7!t§(param1:§,#5§, param2:§,#5§) : Boolean
      {
         return false;
      }
      
      public function get currentLevel() : §>f§
      {
         return this.§<4§;
      }
      
      public function get levelObjects() : §!#L§
      {
         return this.§"#[§;
      }
      
      protected function get starling() : Starling
      {
         return this.§ J§;
      }
      
      public function get §0$!§() : int
      {
         return §6"Z§;
      }
      
      public function get §7'§() : Array
      {
         return this.§5v§.§>$#§();
      }
      
      public function §5#X§(param1:String, param2:String) : Boolean
      {
         return this.§5v§.§1"Z§(param1,param2,this);
      }
   }
}
