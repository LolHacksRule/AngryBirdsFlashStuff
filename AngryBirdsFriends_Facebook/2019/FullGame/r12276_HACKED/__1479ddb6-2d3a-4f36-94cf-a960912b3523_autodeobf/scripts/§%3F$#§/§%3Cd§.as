package §?$#§
{
   import § "v§.§+o§;
   import §#!S§.§[!s§;
   import §#!S§.§`"B§;
   import §#"3§.§4!h§;
   import §#Z§.DisplayObject;
   import §#Z§.Sprite;
   import §%$0§.§2#Z§;
   import §%$0§.§`#I§;
   import §&§.Starling;
   import §+!"§.§-"V§;
   import §+!n§.§+!p§;
   import §-!j§.§#"+§;
   import §0!>§.§^$D§;
   import §0#I§.§-!6§;
   import §1#F§.b2Settings;
   import §2E§.§&#a§;
   import §5#K§.§,!9§;
   import §6!R§.b2Vec2;
   import §8"h§.§]n§;
   import §9#M§.§!!]§;
   import §9#M§.§%"=§;
   import §9#M§.§8§;
   import §=X§.§`#x§;
   import §?o§.§ ^§;
   import §?o§.§"!6§;
   import §?o§.§4#?§;
   import §@"J§.§&!C§;
   import §@"v§.§@$<§;
   import §[!&§.§6!Z§;
   import §[!&§.§`#D§;
   import §^0§.§%"^§;
   import §^0§.§&"e§;
   import §^0§.§4!t§;
   import §^0§.§=Q§;
   import §`$=§.§5$E§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §<d§ extends §-!6§
   {
      
      private static const §"q§:int = 20;
      
      public static const §6@§:Number = 1 / 20;
      
      protected static var §get §:String;
      
      protected static var §'"1§:Number = 1;
      
      protected static var §3!T§:String = § ^§.§,!t§;
       
      
      protected var §>"6§:§%"^§;
      
      private var §]#-§:Array = null;
      
      protected var §2"o§:§]n§;
      
      public var mLevelEngine:§@#l§;
      
      protected var §;"`§:§]#>§;
      
      protected var §;k§:§5$E§;
      
      protected var §""-§:§2!"§;
      
      protected var §2"k§:§2#Z§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §9"§:Boolean = false;
      
      protected var §="P§:Boolean = false;
      
      protected var §0"e§:Boolean = false;
      
      public var §4"r§:Number = 1500;
      
      protected var §1"a§:int = 500;
      
      protected var §4#z§:int;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      private var §=#h§:Number;
      
      private var §!o§:Number;
      
      private var §%#H§:Number;
      
      public var §;#U§:Number;
      
      public var §4#k§:Number;
      
      private var §8"+§:§-!2§;
      
      private var §>"C§:Sprite;
      
      protected var §=!h§:§ ^§;
      
      protected var §3!0§:§^$D§ = null;
      
      private var §4$<§:EventDispatcher;
      
      private var §^"T§:Array;
      
      private var §&@§:Starling;
      
      private var §'!v§:Vector.<§6!Z§>;
      
      protected var §]#o§:§%"=§;
      
      protected var §]!g§:§!!]§;
      
      private var include:§8#0§;
      
      private var §3"A§:§8#0§;
      
      private var §4!g§:§8#0§;
      
      private var §1!f§:Stage;
      
      private var §>!i§:§9"^§;
      
      protected var §9!=§:§-"V§;
      
      protected var §3B§:§-"V§;
      
      protected var §,B§:Number = 0.0;
      
      protected var §05§:String;
      
      private var §+J§:Boolean;
      
      private var §&!r§:Number;
      
      private var §71§:Number;
      
      protected var §+!&§:§,#,§;
      
      protected var §+#D§:§#"+§;
      
      protected var §8$;§:§[!s§;
      
      protected var mLevelManager:§4#?§;
      
      protected var §8!X§:uint = 1.417339207E9;
      
      public var §+"l§:Boolean;
      
      private var §5#&§:Boolean = true;
      
      protected var §;";§:int = 0;
      
      protected var §]B§:int = 0;
      
      protected var §2"r§:Number = 1.0;
      
      protected var §6"z§:Number = 1.0;
      
      protected var §<$,§:Boolean;
      
      private var §0+§:§&#a§;
      
      protected var §4!=§:Boolean = false;
      
      private var §!"g§:§&!C§;
      
      public function §<d§(param1:Stage, param2:§#"+§, param3:§[!s§, param4:§4#?§)
      {
         this.§^"T§ = [];
         this.§'!v§ = new Vector.<§6!Z§>();
         super();
         this.§4$<§ = new EventDispatcher();
         this.§1!f§ = param1;
         this.§+#D§ = param2;
         this.§8$;§ = param3;
         this.mLevelManager = param4;
         this.§]#o§ = §%"=§.§3"1§;
         this.§]!g§ = this.initAnimationManager(this.§]#o§);
         this.include = this.initThemeGraphicsManager();
         this.§3"A§ = this.initThemeSoundsManager();
         this.§4!g§ = this.initCutSceneManager();
         this.§0+§ = new §&#a§();
         var _loc5_:Stage3D = param1.stage3Ds[0];
         this.§&@§ = new Starling(§-!2§,param1,new Rectangle(0,0,§+!p§.§2"?§,§+!p§.§%!"§),_loc5_);
         _loc5_.addEventListener(Event.CONTEXT3D_CREATE,this.§^#e§,false,0,true);
         this.§&@§.§+#8§ = false;
         this.§&@§.enableErrorChecking = false;
         this.§&@§.§>$3§ = 2;
         this.§&@§.§;$9§();
         this.§!"g§ = new §&!C§(this);
      }
      
      public static function get §=2§() : Number
      {
         return §+!p§.§2"?§;
      }
      
      public static function get §6"'§() : Number
      {
         return §+!p§.§%!"§;
      }
      
      public static function get §2"h§() : Number
      {
         return §+!p§.§%!"§ * §6@§;
      }
      
      public static function get §]#Q§() : Number
      {
         return §=2§ * §6@§;
      }
      
      public static function §3#7§(param1:§4!t§, param2:§4!t§) : Number
      {
         var _loc3_:Number = param1.§]K§ - param2.§]K§;
         var _loc4_:Number = param1.§7"u§ - param2.§7"u§;
         return §,"0§(_loc3_,_loc4_);
      }
      
      public static function §,"0§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get §>#,§() : Boolean
      {
         return this.§4!=§;
      }
      
      protected function get sprite() : Sprite
      {
         if(!this.§>"C§ && this.§2"v§)
         {
            this.§>"C§ = this.§8"+§.§<"O§;
         }
         return this.§>"C§;
      }
      
      public function get §2"v§() : Sprite
      {
         if(!this.§8"+§)
         {
            this.§8"+§ = this.§&@§.§#"`§ as §-!2§;
            this.§8"+§.§^"$§ = false;
         }
         return this.§8"+§;
      }
      
      private function get §`A§() : DisplayObject
      {
         if(this.§2"v§)
         {
            return (this.§2"v§ as §-!2§).§`A§;
         }
         return null;
      }
      
      public function get animationManager() : §!!]§
      {
         return this.§]!g§;
      }
      
      public function get textureManager() : §%"=§
      {
         return this.§]#o§;
      }
      
      public function get camera() : §5$E§
      {
         return this.§;k§;
      }
      
      public function get objects() : §%"^§
      {
         return this.§>"6§;
      }
      
      public function get particles() : §2#Z§
      {
         return this.§2"k§;
      }
      
      public function get background() : §]n§
      {
         return this.§2"o§;
      }
      
      public function get slingshot() : §2!"§
      {
         return this.§""-§;
      }
      
      public function get §%?§() : §]#>§
      {
         return this.§;"`§;
      }
      
      public function get stage() : Stage
      {
         return this.§1!f§;
      }
      
      public function get levelItemManager() : §#"+§
      {
         return this.§+#D§;
      }
      
      public function get §9!v§() : §8#0§
      {
         return this.§4!g§;
      }
      
      protected function get §3"§() : §8#0§
      {
         return this.include;
      }
      
      public function setSlowMotion(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§+!&§ = new §,#,§(param1,param2,param3,param4);
      }
      
      public function get §`"A§() : Boolean
      {
         return this.§5#&§;
      }
      
      public function set §`"A§(param1:Boolean) : void
      {
         this.§5#&§ = param1;
      }
      
      public function clear() : void
      {
         var _loc2_:§6!Z§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§'!v§.length)
         {
            _loc2_ = this.§'!v§[_loc1_];
            _loc2_.dispose();
            _loc1_++;
         }
         this.§'!v§ = new Vector.<§6!Z§>();
         if(this.§]#o§)
         {
            this.§]#o§.removeEventListener(Event.INIT,this.§^#-§);
            this.§]#o§.dispose();
         }
         if(this.include && this.include.textureManager)
         {
            this.include.textureManager.dispose();
         }
         if(this.§4!g§ && this.§4!g§.textureManager)
         {
            this.§4!g§.textureManager.dispose();
         }
         if(this.§&@§)
         {
            this.§&@§.dispose();
         }
      }
      
      protected function initThemeGraphicsManager() : §8#0§
      {
         return new §8#0§(this.§1!f§.loaderInfo.parameters.assetsUrl || "",this.§1!f§.loaderInfo.parameters.buildNumber || "",this.mLevelManager);
      }
      
      protected function initThemeSoundsManager() : §8#0§
      {
         return new §8#0§(this.§1!f§.loaderInfo.parameters.assetsUrl || "",this.§1!f§.loaderInfo.parameters.buildNumber || "",this.mLevelManager,false);
      }
      
      protected function initCutSceneManager() : §8#0§
      {
         return new §8#0§(this.§1!f§.loaderInfo.parameters.assetsUrl || "",this.§1!f§.loaderInfo.parameters.buildNumber || "",this.mLevelManager);
      }
      
      protected function initAnimationManager(param1:§%"=§) : §!!]§
      {
         return new §!!]§(param1);
      }
      
      public function setVisible(param1:Boolean) : void
      {
         if(Starling.§%!q§)
         {
            if(param1)
            {
               Starling.§%!q§.start();
            }
            else
            {
               Starling.§%!q§.stop();
               Starling.§%!q§.color = 0;
            }
         }
      }
      
      public function §'#F§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function setController(param1:§^$D§) : void
      {
         if(this.§3!0§ != null)
         {
            this.§3!0§.removeEventListeners();
         }
         this.§3!0§ = param1;
         if(this.mReadyToRun)
         {
            this.§3!0§.addEventListeners();
         }
      }
      
      public function §!!9§() : §-"V§
      {
         return this.§9!=§;
      }
      
      protected function getSpriteSheetGroup(param1:§`#D§) : int
      {
         return 0;
      }
      
      public function §@V§(param1:§6!Z§, param2:Array, param3:Function) : void
      {
         var _loc6_:§`#D§ = null;
         var _loc7_:int = 0;
         if(this.§'!v§.indexOf(param1) != -1)
         {
            return;
         }
         this.§'!v§.push(param1);
         var _loc4_:int = param1.§"!=§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc6_ = param1.§;F§(_loc5_);
            _loc7_ = this.getSpriteSheetGroup(_loc6_);
            this.§]#o§.§>#4§(_loc6_,_loc7_);
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§4$<§.addEventListener(Event.INIT,param3);
            this.§^"T§.push(param3);
         }
         this.§]#o§.removeEventListener(Event.INIT,this.§^#-§);
         if(this.§]#o§.§ $ §())
         {
            this.§+#D§.each(param2);
            this.§<$,§ = false;
            this.§"d§();
         }
         else
         {
            this.§]#o§.addEventListener(Event.INIT,this.§^#-§);
            this.§<$,§ = true;
         }
      }
      
      public function §2"^§(param1:§6!Z§, param2:Function) : void
      {
         var _loc5_:§`#D§ = null;
         var _loc6_:int = 0;
         if(this.§'!v§.indexOf(param1) != -1)
         {
            return;
         }
         this.§'!v§.push(param1);
         var _loc3_:int = param1.§"!=§;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.§;F§(_loc4_);
            _loc6_ = this.getSpriteSheetGroup(_loc5_);
            this.§]#o§.§>#4§(_loc5_,_loc6_);
            _loc4_++;
         }
         if(param2 != null)
         {
            this.§4$<§.addEventListener(Event.INIT,param2);
            this.§^"T§.push(param2);
         }
         if(this.§@n§())
         {
            this.§"d§();
         }
      }
      
      private function §@n§() : Boolean
      {
         this.§]#o§.removeEventListener(Event.INIT,this.§^#-§);
         if(this.§]#o§.§ $ §())
         {
            this.initializeAnimations();
            this.§<$,§ = false;
            return true;
         }
         this.§]#o§.addEventListener(Event.INIT,this.§^#-§);
         this.§<$,§ = true;
         return false;
      }
      
      private function §^#-§(param1:Event) : void
      {
         this.§]#o§.removeEventListener(Event.INIT,this.§^#-§);
         this.initializeAnimations();
         this.§<$,§ = false;
         this.§"d§();
      }
      
      protected function initializeAnimations() : void
      {
         this.§]!g§.initializeAnimations();
         this.§+#D§.each();
      }
      
      private function §^#e§(param1:Event) : void
      {
         if(!Starling.§6O§())
         {
            return;
         }
         this.§]#o§.reInitializeTextures();
         if(this.§3"§ && this.§3"§.textureManager)
         {
            this.§3"§.textureManager.reInitializeTextures();
         }
         if(this.§9!v§ && this.§9!v§.textureManager)
         {
            this.§9!v§.textureManager.reInitializeTextures();
         }
         if(this.§<$,§)
         {
            if(this.§@n§())
            {
               this.§"d§();
            }
         }
         if(this.§3!0§ != null && this.mReadyToRun)
         {
            this.§3!0§.addEventListeners();
         }
         if(this.include)
         {
            this.include.§ $ §();
         }
         if(this.§4!g§)
         {
            if(this.§4!g§.textureManager)
            {
               this.§4!g§.§ $ §();
            }
         }
      }
      
      private function §"d§() : void
      {
         this.§4$<§.dispatchEvent(new Event(Event.INIT));
         this.§`#q§();
      }
      
      private function §`#q§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§^"T§)
         {
            this.§4$<§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§^"T§ = [];
      }
      
      public function init(param1:§ ^§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         §3!T§ = param1.theme;
         this.§=!h§ = param1;
         this.§;"`§ = this.§&q§(param1);
         this.§;k§ = this.initializeLevelCamera(param1);
         this.§;#U§ = 0;
         this.§4#k§ = 0;
         this.§+J§ = false;
         this.mReadyToRun = false;
         this.§9"§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         this.§=#h§ = 1500;
         this.§!o§ = 3000;
         this.§%#H§ = 0;
         param1.theme = param1.theme || "background_blue_grass";
         this.§="P§ = this.§`#[§(param1.theme);
         this.§0"e§ = this.§@#x§(param1.theme);
         if(this.§="P§ && this.§0"e§)
         {
            this.initialize(param1);
         }
         else
         {
            this.loadTheme(param1.theme);
         }
         this.§3"S§(param1.name);
         §-V§.init();
         this.addEventListeners();
      }
      
      protected function §&q§(param1:§ ^§) : §]#>§
      {
         return new §]#>§(this,param1);
      }
      
      public function addEventListeners() : void
      {
         §+!p§.§;"-§.addEventListener(§`#x§.§2"F§,this.§&@§.onEnterFrame);
         this.§4!=§ = true;
      }
      
      protected function §3"S§(param1:String) : void
      {
         this.§9!=§ = new §-"V§(param1);
      }
      
      protected function §`#[§(param1:String) : Boolean
      {
         if(this.include)
         {
            return false;
         }
         return true;
      }
      
      protected function §@#x§(param1:String) : Boolean
      {
         var _loc2_:§`"B§ = null;
         if(this.§3"A§ && !this.mLevelManager.getCurrentEpisodeModel().isTournament)
         {
            _loc2_ = this.§8$;§.getBackground(param1);
            if(_loc2_)
            {
               if(_loc2_.§-!Y§ && !this.§3"A§.§%#>§(_loc2_.§-!Y§))
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
         this.§ set§(param1);
      }
      
      protected function § set§(param1:String) : void
      {
         var _loc2_:Array = null;
         if(this.include && !this.§`#[§(param1))
         {
            this.include.removeEventListener(Event.COMPLETE,this.§@!6§);
            this.include.removeEventListener(Event.CANCEL,this.onThemeGraphicsNotAvailable);
            this.include.addEventListener(Event.COMPLETE,this.§@!6§);
            this.include.addEventListener(Event.CANCEL,this.onThemeGraphicsNotAvailable);
            _loc2_ = this.getThemeGraphicsLoadList(param1);
            this.include.§2#z§(param1,_loc2_);
         }
         else
         {
            this.§0!i§(param1);
         }
      }
      
      protected function §0!i§(param1:String) : void
      {
         var _loc2_:§`"B§ = null;
         if(this.§3"A§ && !this.§@#x§(param1))
         {
            this.§3"A§.removeEventListener(Event.COMPLETE,this.§#$7§);
            this.§3"A§.removeEventListener(Event.CANCEL,this.§["5§);
            this.§3"A§.addEventListener(Event.COMPLETE,this.§#$7§);
            this.§3"A§.addEventListener(Event.CANCEL,this.§["5§);
            _loc2_ = this.§8$;§.getBackground(param1);
            if(_loc2_)
            {
               this.§3"A§.§2#z§(_loc2_.§-!Y§);
            }
         }
         else
         {
            this.initialize(this.§=!h§);
         }
      }
      
      protected function §@!6§(param1:Event) : void
      {
         this.include.removeEventListener(Event.COMPLETE,this.§@!6§);
         this.include.removeEventListener(Event.CANCEL,this.onThemeGraphicsNotAvailable);
         this.§="P§ = true;
         this.§0!i§(this.§=!h§.theme);
      }
      
      protected function onThemeGraphicsNotAvailable(param1:Event) : void
      {
         this.include.removeEventListener(Event.COMPLETE,this.§@!6§);
         this.include.removeEventListener(Event.CANCEL,this.onThemeGraphicsNotAvailable);
         this.§9"§ = true;
      }
      
      protected function §#$7§(param1:Event) : void
      {
         this.include.removeEventListener(Event.COMPLETE,this.§#$7§);
         this.include.removeEventListener(Event.CANCEL,this.§["5§);
         this.§0"e§ = true;
         if(this.§="P§ && this.§0"e§)
         {
            this.initialize(this.§=!h§);
         }
      }
      
      protected function §["5§(param1:Event) : void
      {
         this.include.removeEventListener(Event.COMPLETE,this.§#$7§);
         this.include.removeEventListener(Event.CANCEL,this.§["5§);
         this.§0"e§ = true;
         if(this.§="P§ && this.§0"e§)
         {
            this.initialize(this.§=!h§);
         }
      }
      
      public function get backgroundTextureManager() : §%"=§
      {
         if(this.§3"§)
         {
            return this.§3"§.textureManager;
         }
         return null;
      }
      
      protected function initializePhysicsConstants(param1:§ ^§) : void
      {
         b2Settings.b2_linearSleepTolerance = b2Settings.§=T§;
      }
      
      protected function initialize(param1:§ ^§) : void
      {
         this.§+!&§ = null;
         this.§+"l§ = false;
         if(Starling.§`"E§)
         {
            Starling.§`"E§.speed = 1;
         }
         this.initializePhysicsConstants(param1);
         this.initLevelEngine(param1);
         this.§2"o§ = this.initializeLevelBackground(param1.theme,0 / §6@§,this.backgroundTextureManager,this.§;k§.§5#+§());
         this.§2"o§.§1#5§(§+!p§.§'$,§());
         if(Starling.§%!q§)
         {
            Starling.§%!q§.color = this.§2"o§.§@#h§;
         }
         this.§>"6§ = this.initializeLevelObjectManager(param1);
         this.§>"6§.§6#3§ = this.§;W§(param1.name);
         this.§""-§ = this.initializeLevelSlingshot(param1);
         this.§2"k§ = this.initializeParticleManager(this.§]!g§,this.§]#o§);
         this.§;k§.init();
         this.§,-§();
         this.§9R§();
         this.mReadyToRun = true;
         if(this.§3!0§)
         {
            this.§3!0§.addEventListeners();
         }
         if(param1.name == §get §)
         {
            this.§;k§.§%h§(§'"1§);
            this.§^d§(0);
         }
         else
         {
            §get § = param1.name;
         }
         this.levelInitialized();
      }
      
      protected function levelInitialized() : void
      {
         this.§>"6§.levelInitialized();
      }
      
      protected function initLevelEngine(param1:§ ^§) : void
      {
         this.mLevelEngine = new §@#l§(this);
      }
      
      protected function §9R§() : void
      {
         if(this.§05§)
         {
            this.§3B§ = §-"V§.initialize(this.§05§);
            this.§3B§.speed = 1;
            this.§3B§.play();
            this.§,B§ = -1000;
            this.§05§ = null;
         }
      }
      
      public function §4!#§(param1:String) : void
      {
         this.§05§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§3B§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§3B§)
         {
            if(param1)
            {
               this.§3B§.speed = Math.min(this.§3B§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§3B§.speed = Math.max(this.§3B§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§3B§)
         {
            this.§3B§.speed = 1;
         }
      }
      
      protected function initializeLevelObjectManager(param1:§ ^§) : §%"^§
      {
         var _loc2_:String = §`"B§.§8#f§;
         return new §%"^§(this,param1,new Sprite(),_loc2_);
      }
      
      protected function §;W§(param1:String) : §,!9§
      {
         if(!param1)
         {
            return null;
         }
         var _loc2_:Class = this.§0+§[param1.toLowerCase()];
         if(!_loc2_)
         {
            return null;
         }
         return new _loc2_() as §,!9§;
      }
      
      public function §&!1§(param1:String, param2:Class) : void
      {
         this.§0+§[param1.toLowerCase()] = param2;
      }
      
      protected function initializeLevelCamera(param1:§ ^§) : §5$E§
      {
         return new §5$E§(this,param1);
      }
      
      protected function initializeLevelBackground(param1:String, param2:Number, param3:§%"=§, param4:Number) : §]n§
      {
         var _loc5_:§`"B§;
         if((_loc5_ = this.§8$;§.getBackground(param1)) == null)
         {
            §4!h§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = § ^§.§,!t§;
            _loc5_ = this.§8$;§.getBackground(param1);
         }
         return new §]n§(this,_loc5_,param2,param3,param4,!Starling.§," §);
      }
      
      protected function initializeLevelSlingshot(param1:§ ^§) : §2!"§
      {
         return new §2!"§(this,param1,new Sprite());
      }
      
      protected function initializeParticleManager(param1:§!!]§, param2:§%"=§) : §2#Z§
      {
         return new §2#Z§(param1,param2);
      }
      
      public function initializeEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§ ^§ = new § ^§();
         _loc3_.slingshotY = -12;
         var _loc4_:§"!6§;
         (_loc4_ = new §"!6§()).left = 0;
         _loc4_.top = -§5$E§.§4$B§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §5$E§.§4$B§;
         _loc4_.right = _loc4_.left + §5$E§.§'!F§;
         _loc4_.y = -13.929;
         _loc4_.x = §5$E§.§'!F§;
         _loc4_.id = §5$E§.§>$E§;
         _loc3_.§<L§(_loc4_);
         var _loc5_:§"!6§;
         (_loc5_ = new §"!6§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §5$E§.§'!F§;
         _loc5_.bottom = _loc5_.top + §5$E§.§4$B§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §5$E§.§'!F§ / 2;
         _loc5_.id = §5$E§.§""y§;
         _loc3_.§<L§(_loc5_);
         this.§^!^§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§3!T§ != null)
         {
            _loc3_.theme = §3!T§;
         }
         this.init(_loc3_);
      }
      
      protected function §^!^§(param1:§ ^§, param2:Boolean) : void
      {
         if(param2)
         {
            this.§?"3§(param1);
         }
      }
      
      protected function §#;§() : Number
      {
         this.§8!X§ ^= this.§8!X§ << 21;
         this.§8!X§ ^= this.§8!X§ >>> 35;
         this.§8!X§ ^= this.§8!X§ << 4;
         return this.§8!X§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §?"3§(param1:§ ^§) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§@$<§ = null;
         this.§8!X§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < 10)
         {
            _loc4_ = 0;
            while(_loc4_ < 5)
            {
               _loc5_ = this.§#;§() * 5;
               (_loc6_ = new §@$<§()).x = 30 + _loc4_ * 10 + this.§#;§() * 9;
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
                  _loc6_.angle = 45 - this.§#;§() * 90;
               }
               else
               {
                  _loc6_.y = -30 + _loc3_ * 6 - this.§#;§() * 3 - _loc4_ * 8;
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
                  _loc6_.angle = this.§#;§() * 360;
               }
               _loc6_.id = _loc2_;
               param1.addObject(_loc6_);
               _loc2_++;
               _loc4_++;
            }
            _loc3_++;
         }
      }
      
      private function §2#1§() : void
      {
      }
      
      protected function §@#&§() : void
      {
         if(§]n§.static)
         {
            this.addItemToDisplayList(this.§2"o§.§9#9§);
         }
      }
      
      protected function addBackgroundSpritesToDisplayList() : void
      {
         this.addItemToDisplayList(this.§>"6§.backgroundSprite);
         this.addItemToDisplayList(this.§2"k§.§?B§(§2#Z§.§3#2§));
         this.addItemToDisplayList(this.§2"k§.§?B§(§2#Z§.§,!]§));
      }
      
      protected function addGameSpritesToDisplayList() : void
      {
         this.addItemToDisplayList(this.§2"k§.§?B§(§2#Z§.PARTICLE_GROUP_BACKGROUND_EFFECTS));
         this.addItemToDisplayList(this.§>"6§.§8!k§);
         this.addItemToDisplayList(this.§""-§.sprite);
         this.addItemToDisplayList(this.§2"k§.§?B§(§2#Z§.PARTICLE_GROUP_GAME_EFFECTS));
         this.addItemToDisplayList(this.§>"6§.§7#R§);
      }
      
      protected function §8H§() : void
      {
         this.addItemToDisplayList(this.§2"o§.§'!§);
         if(§]n§.static)
         {
            this.addItemToDisplayList(this.§2"o§.§3]§);
         }
      }
      
      protected function §1"r§() : void
      {
         this.addItemToDisplayList(this.§>"6§.§2+§);
         this.addItemToDisplayList(this.§2"k§.§?B§(§2#Z§.§'!3§));
         this.addItemToDisplayList(this.§2"k§.§?B§(§2#Z§.PARTICLE_GROUP_FOREGROUND_EFFECTS));
      }
      
      private function §,-§() : void
      {
         this.§@#&§();
         this.addBackgroundSpritesToDisplayList();
         this.addGameSpritesToDisplayList();
         this.§8H§();
         this.§1"r§();
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
         if(§+!p§.§<#,§ > §+!p§.§"#m§)
         {
            param1 /= §+!p§.§<#,§;
            param2 /= §+!p§.§<#,§;
         }
         else
         {
            param1 /= §+!p§.§"#m§;
            param2 /= §+!p§.§"#m§;
         }
         param3.x = ((param1 - this.sprite.x) / §5$E§.§4W§ + this.§;k§.§2!G§) * §6@§;
         param3.y = ((param2 - this.sprite.y) / §5$E§.§4W§ + this.§;k§.§4!@§) * §6@§;
         return param3;
      }
      
      public function § "8§(param1:Number, param2:Number, param3:Point = null) : Point
      {
         if(!param3)
         {
            param3 = new Point();
         }
         param3.x = (param1 / §6@§ - this.§;k§.§2!G§) * §5$E§.§4W§ + this.sprite.x;
         param3.y = (param2 / §6@§ - this.§;k§.§4!@§) * §5$E§.§4W§ + this.sprite.y;
         var _loc4_:Number = Math.max(§+!p§.§<#,§,§+!p§.§"#m§);
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
            this.background.setScreenOffset(param1,param2,this.§;";§,this.§]B§,param3,this.§2"r§,this.§6"z§);
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
      
      public function §!"8§(param1:String, param2:Number, param3:Number) : void
      {
         this.§>"6§.addObject(param1,param2,param3,0,§%"^§.ID_NEXT_FREE);
      }
      
      public function §6$#§() : void
      {
         if(this.§`A§)
         {
            this.§`A§.visible = true;
            this.§`A§.alpha = 0;
         }
         this.§4"r§ = 0;
      }
      
      public function §7"f§(param1:Boolean, param2:Number = 0, param3:Number = 0, param4:Number = 0) : void
      {
         if(param1)
         {
            if(this.§>!i§)
            {
               this.§>!i§.§9"q§(param2);
               this.§>!i§.§+!<§(param3);
               this.§>!i§.§<#t§(param4);
            }
            else
            {
               this.§>!i§ = new §9"^§(param2,param3,param4);
            }
         }
         else
         {
            this.§;k§.§ !§(0,0);
            this.§>!i§ = null;
         }
      }
      
      public function clearLevel() : void
      {
         this.§!"g§.clear();
         if(this.§2"o§)
         {
            this.§2"o§.dispose();
            this.§2"o§ = null;
         }
         if(this.§>"6§)
         {
            this.§>"6§.dispose();
            this.§>"6§ = null;
         }
         this.§4#z§ = this.§1"a§;
         if(this.mLevelEngine)
         {
            if(!this.mLevelEngine.§;# §)
            {
            }
            this.mLevelEngine.clear();
            this.mLevelEngine = null;
         }
         if(this.§;"`§)
         {
            this.§;"`§.clear();
            this.§;"`§ = null;
         }
         if(this.§""-§)
         {
            this.§""-§.dispose();
            this.§""-§ = null;
         }
         if(this.§;k§)
         {
            §'"1§ = this.§;k§.§9"o§;
            this.§;k§.clear();
            this.§;k§ = null;
         }
         if(this.§2"k§)
         {
            this.§2"k§.dispose();
            this.§2"k§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§;#U§ = 0;
         this.§4#k§ = 0;
         this.mReadyToRun = false;
         this.§+J§ = false;
         this.§4"r§ = §&$0§.§"#<§;
         if(this.§2"v§)
         {
            (this.§2"v§ as §-!2§).§9!8§.x = 0;
            (this.§2"v§ as §-!2§).§9!8§.y = 0;
         }
         if(this.§`A§)
         {
            this.§`A§.visible = false;
         }
         this.§3B§ = null;
         this.§9!=§ = null;
         if(this.include)
         {
            this.include.removeEventListener(Event.COMPLETE,this.§@!6§);
            this.include.removeEventListener(Event.CANCEL,this.onThemeGraphicsNotAvailable);
         }
         if(this.§3"A§)
         {
            this.§3"A§.removeEventListener(Event.COMPLETE,this.§#$7§);
            this.§3"A§.removeEventListener(Event.CANCEL,this.§["5§);
         }
         this.§`#q§();
         if(Starling.§%!q§)
         {
            Starling.§%!q§.color = 0;
         }
         if(this.§3!0§)
         {
            this.§3!0§.removeEventListeners();
         }
         §+!p§.§;"-§.removeEventListener(§`#x§.§2"F§,this.§&@§.onEnterFrame);
         this.§4!=§ = false;
         this.mReadyToRun = false;
      }
      
      public function gameOver(param1:int) : void
      {
      }
      
      public function §`"f§() : String
      {
         if(this.§9!=§)
         {
            return this.§9!=§.toString();
         }
         return null;
      }
      
      public function get §5D§() : Number
      {
         if(this.§+!&§)
         {
            return this.§+!&§.speed;
         }
         return 1;
      }
      
      public function update(param1:Number, param2:Boolean) : Number
      {
         if(!this.mReadyToRun || !Starling.§6O§())
         {
            return 0;
         }
         if(this.§4#z§ > 0)
         {
            this.§4#z§ -= param1;
         }
         if(this.§3B§ && this.§3B§.isPlaying)
         {
            return this.§!!b§(param1,param2);
         }
         return this.updateWithTime(param1,true,param2);
      }
      
      protected function updateWithTime(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc4_:Boolean = false;
         if(this.§+!&§)
         {
            _loc4_ = this.§+!&§.update(param1);
            param1 *= this.§+!&§.speed;
            if(Starling.§`"E§)
            {
               Starling.§`"E§.speed = this.§+!&§.speed;
            }
            if(!_loc4_)
            {
               this.§+!&§ = null;
            }
         }
         this.§4#k§ += param1;
         if(this.§`"A§)
         {
            this.§;#U§ += param1;
            this.§;#U§ = this.mLevelEngine.§"!J§(this.§;#U§);
         }
         else
         {
            this.§;#U§ = 0;
            this.handleEngineUpdateStep(param1);
         }
         this.§""-§.update(param1,param3);
         if(param2)
         {
            this.§^d§(param1);
         }
         this.§!"g§.update(param1);
         return param1;
      }
      
      private function §!!b§(param1:Number, param2:Boolean) : Number
      {
         var _loc4_:Number = NaN;
         var _loc3_:Number = §@#l§.§'k§;
         if(this.§3B§)
         {
            param1 *= this.§3B§.speed;
            _loc4_ = this.§4#k§ + param1;
            while(this.§4#k§ + _loc3_ < _loc4_)
            {
               if(this.§4#k§ + _loc3_ > this.§,B§)
               {
                  this.§3B§.step(this);
                  this.§,B§ += _loc3_;
               }
               this.updateWithTime(_loc3_,false,param2);
            }
            if(_loc4_ > this.§,B§ + _loc3_)
            {
               this.§3B§.step(this);
               this.§,B§ += _loc3_;
            }
            if(this.§4#k§ < _loc4_)
            {
               this.updateWithTime(_loc4_ - this.§4#k§,true,param2);
            }
            return param1;
         }
         return param1;
      }
      
      private function §^d§(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.§2"o§)
         {
            this.§2"o§.update(param1);
         }
         this.§>"6§.renderObjects(param1,this.mLevelEngine.§[$E§,this.§;#U§);
         this.§+V§();
         if(this.§4"r§ < §&$0§.§"#<§)
         {
            this.§4"r§ += param1;
            _loc2_ = §&$0§.§"#<§ / 2;
            _loc3_ = (-Math.abs(this.§4"r§ - _loc2_) + _loc2_) * (§&$0§.§%R§ / _loc2_);
            if(this.§`A§)
            {
               this.§`A§.alpha = _loc3_;
            }
         }
         else if(this.§`A§)
         {
            this.§`A§.visible = false;
         }
         if(this.§>!i§)
         {
            if(!this.§>!i§.§3"z§(this.§;k§,param1))
            {
               this.§7"f§(false);
            }
         }
         this.§;k§.§>!r§(param1);
         this.mLevelEngine.§'R§();
         this.§2"k§.update(param1);
         this.§6!f§(param1);
         this.§`"y§(param1);
      }
      
      public function handleEngineUpdateStep(param1:Number) : void
      {
         this.objects.updateObjects(param1);
         this.§@!c§();
      }
      
      protected function §+V§() : void
      {
         var _loc1_:§=Q§ = null;
         if(this.§]#-§ != null)
         {
            for each(_loc1_ in this.§]#-§)
            {
               if(!_loc1_.isLeavingTrail)
               {
                  this.§8_§(_loc1_);
               }
            }
         }
      }
      
      public function §6!f§(param1:Number) : void
      {
         var _loc2_:§&"e§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            _loc2_ = this.§>"6§.§3$&§(true);
            if(_loc2_)
            {
               _loc2_.scream();
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§>"6§.getPigCount());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            _loc2_ = this.§>"6§.§3$&§(true);
            if(_loc2_)
            {
               _loc2_.blink();
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§>"6§.getPigCount());
            }
         }
      }
      
      public function §`"y§(param1:Number) : void
      {
         var _loc2_:Array = null;
         var _loc3_:§=Q§ = null;
         var _loc4_:int = 0;
         var _loc5_:§=Q§ = null;
         var _loc6_:§+o§ = null;
         if(this.§!o§ > 0)
         {
            this.§!o§ -= param1;
         }
         if(this.§=#h§ > 0)
         {
            this.§=#h§ -= param1;
         }
         if(this.§=#h§ <= 0 || this.§!o§ <= 0)
         {
            _loc2_ = this.§>"6§.§"!7§();
            if(_loc2_.length > 0)
            {
               _loc3_ = null;
               if(this.§=#h§ <= 0)
               {
                  _loc4_ = Math.random() * _loc2_.length;
                  _loc3_ = this.§>"6§.getObject(_loc2_[_loc4_]) as §=Q§;
                  if(_loc3_)
                  {
                     _loc3_.blink();
                     this.§=#h§ = 250 + Math.random() * 500 + 2000 / (3 + _loc2_.length);
                  }
               }
               if(this.§!o§ <= 0)
               {
                  _loc4_ = Math.random() * _loc2_.length;
                  _loc3_ = this.§>"6§.getObject(_loc2_[_loc4_]) as §=Q§;
                  if(_loc3_)
                  {
                     _loc3_.scream();
                     this.§!o§ = 1500 + Math.random() * 3000 + 4000 / (3 + _loc2_.length);
                  }
               }
            }
         }
         if(this.§%#H§ <= 0)
         {
            if(_loc5_ = this.§>"6§.§,Q§())
            {
               if(_loc6_ = _loc5_.playFearSound())
               {
                  this.§%#H§ = _loc6_.§&$!§;
               }
            }
         }
         else
         {
            this.§%#H§ -= param1;
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999, param7:String = null) : void
      {
         if(this.§4#z§ > 0)
         {
            return;
         }
         if(param6 == -9999)
         {
            param6 = §`#I§.§@!T§;
         }
         §-V§.addScore(param1,param2);
         this.§3!0§.addScore(param1);
         if(param3 && param1 > 0 && !this.§+"l§)
         {
            this.§2" §(param1.toString(),param4,param5,800,param6,0,0,param7);
         }
      }
      
      public function §2" §(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3, param8:String = null) : void
      {
         if(param5 == -9999)
         {
            param5 = §`#I§.§1#,§;
         }
         this.§2"k§.addParticle(§`#I§.§9#'§,§2#Z§.§'!3§,§`#I§.§9@§,param2,param3,param4,param1,param5,param6,param7,0,0,1,-1,false,param8);
      }
      
      public function §8"F§(param1:§4!t§) : void
      {
         if(this.§]#-§ == null)
         {
            this.§]#-§ = new Array();
         }
         this.§]#-§.push(param1);
      }
      
      public function useMightyEagle() : void
      {
         this.§""-§.useMightyEagle();
         this.§>"6§.§!#W§();
         this.§+"l§ = true;
      }
      
      public function §8_§(param1:§=Q§) : void
      {
         this.§2"k§.§`!<§(§2#Z§.§3#2§);
         if(this.§]#-§.indexOf(param1) >= 0)
         {
            this.§]#-§.splice(this.§]#-§.indexOf(param1),1);
         }
         if(this.§]#-§.length == 0)
         {
            this.§]#-§ = null;
         }
      }
      
      public function shootBird(param1:§;![§, param2:Number, param3:Number) : §=Q§
      {
         var _loc4_:§=Q§ = §=Q§(this.§>"6§.addObject(param1.name,param1.x,param1.y,0,§%"^§.ID_NEXT_FREE,true,true,true,param1.scale));
         var _loc5_:Number = param1.§7z§;
         _loc4_.§>"[§(param1.§&3§);
         _loc4_.§&! §(param1.§!$&§);
         if(param1.§7g§ != 0)
         {
            _loc5_ = param1.§7g§;
         }
         var _loc6_:Number = -_loc5_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc7_:Number = _loc5_ * param2 * Math.sin(param3 / (180 / Math.PI));
         _loc4_.§+!!§(new b2Vec2(_loc6_,_loc7_),false,true);
         _loc4_.isLeavingTrail = true;
         this.camera.setAction(§5$E§.§<!V§);
         if(this.§9!=§)
         {
            this.§9!=§.shootBird(this.mLevelEngine.§^"3§,param1.x,param1.y,param2,param3);
         }
         return _loc4_;
      }
      
      public function activateSpecialPower(param1:Number, param2:Number) : void
      {
         this.§+J§ = true;
         this.§&!r§ = param1;
         this.§71§ = param2;
      }
      
      private function §@!c§() : void
      {
         if(!this.§+J§)
         {
            return;
         }
         this.§+J§ = false;
         this.§>"6§.activateSpecialPower(this.§&!r§,this.§71§);
         if(this.§9!=§)
         {
            this.§9!=§.§##r§(this.mLevelEngine.§^"3§,this.§&!r§,this.§71§);
         }
      }
      
      public function §06§() : void
      {
         this.§>"6§.§06§();
      }
      
      public function §7w§() : void
      {
         this.§>"6§.§;"d§();
      }
      
      public function §;!5§() : § ^§
      {
         var _loc1_:§ ^§ = new § ^§();
         _loc1_.scoreGold = this.§=!h§.scoreGold;
         _loc1_.scoreSilver = this.§=!h§.scoreSilver;
         _loc1_.scoreEagle = this.§=!h§.scoreEagle;
         _loc1_.blockDestructionScorePercentage = this.§=!h§.blockDestructionScorePercentage;
         _loc1_.worldGravity = this.§=!h§.worldGravity;
         _loc1_.borderTop = this.§=!h§.borderTop;
         _loc1_.borderGround = this.§=!h§.borderGround;
         _loc1_.borderLeft = this.§=!h§.borderLeft;
         _loc1_.borderRight = this.§=!h§.borderRight;
         this.§;k§.§'#§(_loc1_);
         this.§>"6§.§,$-§(_loc1_);
         this.§""-§.§%#R§(_loc1_);
         _loc1_.theme = !!this.§2"o§ ? this.§2"o§.§,"[§() : "background_blue_grass";
         return _loc1_;
      }
      
      public function §7##§() : int
      {
         return this.§=!h§.scoreSilver;
      }
      
      public function §9#k§() : int
      {
         return this.§=!h§.scoreGold;
      }
      
      public function §'$"§(param1:int) : void
      {
         this.§=!h§.scoreSilver = param1;
      }
      
      public function §[#s§(param1:int) : void
      {
         this.§=!h§.scoreGold = param1;
      }
      
      public function §5!=§() : Number
      {
         return this.§=!h§.worldGravity;
      }
      
      public function §"#F§(param1:Number) : void
      {
         this.§=!h§.worldGravity = param1;
      }
      
      public function §6"n§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(this.§;"`§)
         {
            this.§;"`§.§6"n§(param1,param2,param3,param4);
         }
         if(this.§=!h§)
         {
            this.§=!h§.borderTop = param1;
            this.§=!h§.borderGround = param2;
            this.§=!h§.borderLeft = param3;
            this.§=!h§.borderRight = param4;
         }
      }
      
      public function §2k§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§;";§ = param1;
         this.§]B§ = param2;
         this.§2"r§ = param3;
         this.§6"z§ = param4;
         if(this.§8"+§)
         {
            this.§8"+§.§>#Q§(param1,param2);
         }
         if(this.§;k§)
         {
            this.§;k§.§>!r§(0);
         }
      }
      
      public function §1!3§(param1:§4!t§, param2:§4!t§) : Boolean
      {
         return false;
      }
      
      public function get currentLevel() : § ^§
      {
         return this.§=!h§;
      }
      
      public function get levelObjects() : §%"^§
      {
         return this.§>"6§;
      }
      
      protected function get starling() : Starling
      {
         return this.§&@§;
      }
      
      public function get §@"b§() : int
      {
         return §"q§;
      }
      
      public function get §]!_§() : Array
      {
         return this.§!"g§.§,S§();
      }
      
      public function §>#Z§(param1:String, param2:String) : Boolean
      {
         return this.§!"g§.§+"X§(param1,param2,this);
      }
   }
}
