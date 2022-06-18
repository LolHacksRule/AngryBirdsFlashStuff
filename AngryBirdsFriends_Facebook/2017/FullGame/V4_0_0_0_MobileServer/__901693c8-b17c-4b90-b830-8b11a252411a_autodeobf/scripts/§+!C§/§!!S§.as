package §+!C§
{
   import §%!9§.b2Vec2;
   import §%!f§.§7a§;
   import §%"v§.§"$,§;
   import §&!v§.DisplayObject;
   import §&!v§.Sprite;
   import §0!=§.§4!+§;
   import §1#W§.§="D§;
   import §4o§.§!"e§;
   import §6!6§.§6!r§;
   import §6!6§.§[k§;
   import §6"r§.§!#A§;
   import §6$"§.§]"o§;
   import §6V§.§&"g§;
   import §7!j§.§"I§;
   import §7!j§.§'0§;
   import §7!j§.§,"d§;
   import §7"&§.§&"T§;
   import §9#K§.b2Settings;
   import §9$<§.§-t§;
   import §9+§.Starling;
   import §<"p§.§?!T§;
   import §<o§.§7"P§;
   import §>!5§.§"7§;
   import §>!5§.§#-§;
   import §>!5§.§6#-§;
   import §>!5§.§76§;
   import §>!5§.§^"9§;
   import §?$9§.§5!T§;
   import §?$9§.§7"H§;
   import §@#§.§@"v§;
   import §@#§.§]#B§;
   import §@#§.§^#Q§;
   import §["-§.§#R§;
   import §]#m§.§0!^§;
   import §^$1§.§2"^§;
   import §^$1§.§7"6§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §!!S§ extends §!"e§
   {
      
      private static const §<?§:int = 20;
      
      public static const §,"3§:Number = 1 / 20;
      
      protected static var §9$&§:String;
      
      protected static var §"!N§:Number = 1;
      
      protected static var §5r§:String = §]#B§.§-$&§;
       
      
      protected var §!Y§:§6#-§;
      
      private var §'"a§:Array = null;
      
      protected var §'I§:§0!^§;
      
      public var mLevelEngine:§<!-§;
      
      protected var §0#h§:§&K§;
      
      protected var §?"O§:§-t§;
      
      protected var §5"$§:§]#b§;
      
      protected var §&"?§:§7"6§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §7!B§:Boolean = false;
      
      protected var §-"!§:Boolean = false;
      
      protected var §@]§:Boolean = false;
      
      public var §0!F§:Number = 1500;
      
      protected var §8B§:int = 500;
      
      protected var §`$$§:int;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      private var §]!+§:Number;
      
      private var §1!o§:Number;
      
      private var §=!+§:Number;
      
      public var §9"e§:Number;
      
      public var §^'§:Number;
      
      private var §'#7§:§-!g§;
      
      private var §@!r§:Sprite;
      
      protected var §1#p§:§]#B§;
      
      protected var §;"N§:§#R§ = null;
      
      private var §^#>§:EventDispatcher;
      
      private var §9!&§:Array;
      
      private var §3"#§:Starling;
      
      private var §9!R§:Vector.<§5!T§>;
      
      protected var §>!4§:§'0§;
      
      protected var §@!u§:§"I§;
      
      private var §3D§:§,"d§;
      
      private var §;!5§:§,"d§;
      
      private var §#!<§:§,"d§;
      
      private var §^!8§:Stage;
      
      private var §3X§:§;#b§;
      
      protected var §[!Y§:§7a§;
      
      protected var §>w§:§7a§;
      
      protected var §4"#§:Number = 0.0;
      
      protected var §@<§:String;
      
      private var §=l§:Boolean;
      
      private var §[<§:Number;
      
      private var §5v§:Number;
      
      protected var §@v§:§?"[§;
      
      protected var § "G§:§&"T§;
      
      protected var §7"h§:§[k§;
      
      protected var mLevelManager:§^#Q§;
      
      protected var §'",§:uint = 1.417339207E9;
      
      public var §]"p§:Boolean;
      
      private var §!$7§:Boolean = true;
      
      protected var §!t§:int = 0;
      
      protected var §8#y§:int = 0;
      
      protected var §,J§:Number = 1.0;
      
      protected var §?$2§:Number = 1.0;
      
      protected var §;!e§:Boolean;
      
      private var §<!^§:§&"g§;
      
      protected var §0#b§:Boolean = false;
      
      private var §#P§:§"$,§;
      
      public function §!!S§(param1:Stage, param2:§&"T§, param3:§[k§, param4:§^#Q§)
      {
         this.§9!&§ = [];
         this.§9!R§ = new Vector.<§5!T§>();
         super();
         this.§^#>§ = new EventDispatcher();
         this.§^!8§ = param1;
         this.§ "G§ = param2;
         this.§7"h§ = param3;
         this.mLevelManager = param4;
         this.§>!4§ = §'0§.§ "D§;
         this.§@!u§ = this.initAnimationManager(this.§>!4§);
         this.§3D§ = this.initThemeGraphicsManager();
         this.§;!5§ = this.initThemeSoundsManager();
         this.§#!<§ = this.initCutSceneManager();
         this.§<!^§ = new §&"g§();
         var _loc5_:Stage3D = param1.stage3Ds[0];
         this.§3"#§ = new Starling(§-!g§,param1,new Rectangle(0,0,§!#A§.§-Y§,§!#A§.§<!q§),_loc5_);
         _loc5_.addEventListener(Event.CONTEXT3D_CREATE,this.§`",§,false,0,true);
         this.§3"#§.§3!>§ = false;
         this.§3"#§.enableErrorChecking = false;
         this.§3"#§.§'"y§ = 2;
         this.§3"#§.§2!V§();
         this.§#P§ = new §"$,§(this);
      }
      
      public static function get §6" §() : Number
      {
         return §!#A§.§-Y§;
      }
      
      public static function get §6",§() : Number
      {
         return §!#A§.§<!q§;
      }
      
      public static function get §;s§() : Number
      {
         return §!#A§.§<!q§ * §,"3§;
      }
      
      public static function get §-I§() : Number
      {
         return §6" § * §,"3§;
      }
      
      public static function §6#k§(param1:§#-§, param2:§#-§) : Number
      {
         var _loc3_:Number = param1.§;"o§ - param2.§;"o§;
         var _loc4_:Number = param1.§`#T§ - param2.§`#T§;
         return §1$1§(_loc3_,_loc4_);
      }
      
      public static function §1$1§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get §>$-§() : Boolean
      {
         return this.§0#b§;
      }
      
      protected function get sprite() : Sprite
      {
         if(!this.§@!r§ && this.§="N§)
         {
            this.§@!r§ = this.§'#7§.§[!$§;
         }
         return this.§@!r§;
      }
      
      public function get §="N§() : Sprite
      {
         if(!this.§'#7§)
         {
            this.§'#7§ = this.§3"#§.§'"k§ as §-!g§;
            this.§'#7§.§ !$§ = false;
         }
         return this.§'#7§;
      }
      
      private function get §&"j§() : DisplayObject
      {
         if(this.§="N§)
         {
            return (this.§="N§ as §-!g§).§&"j§;
         }
         return null;
      }
      
      public function get animationManager() : §"I§
      {
         return this.§@!u§;
      }
      
      public function get textureManager() : §'0§
      {
         return this.§>!4§;
      }
      
      public function get camera() : §-t§
      {
         return this.§?"O§;
      }
      
      public function get objects() : §6#-§
      {
         return this.§!Y§;
      }
      
      public function get particles() : §7"6§
      {
         return this.§&"?§;
      }
      
      public function get background() : §0!^§
      {
         return this.§'I§;
      }
      
      public function get slingshot() : §]#b§
      {
         return this.§5"$§;
      }
      
      public function get §>$$§() : §&K§
      {
         return this.§0#h§;
      }
      
      public function get stage() : Stage
      {
         return this.§^!8§;
      }
      
      public function get levelItemManager() : §&"T§
      {
         return this.§ "G§;
      }
      
      public function get §"]§() : §,"d§
      {
         return this.§#!<§;
      }
      
      protected function get §3T§() : §,"d§
      {
         return this.§3D§;
      }
      
      public function setSlowMotion(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§@v§ = new §?"[§(param1,param2,param3,param4);
      }
      
      public function get §-#O§() : Boolean
      {
         return this.§!$7§;
      }
      
      public function set §-#O§(param1:Boolean) : void
      {
         this.§!$7§ = param1;
      }
      
      public function clear() : void
      {
         var _loc2_:§5!T§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§9!R§.length)
         {
            _loc2_ = this.§9!R§[_loc1_];
            _loc2_.dispose();
            _loc1_++;
         }
         this.§9!R§ = new Vector.<§5!T§>();
         if(this.§>!4§)
         {
            this.§>!4§.removeEventListener(Event.INIT,this.§4K§);
            this.§>!4§.dispose();
         }
         if(this.§3D§ && this.§3D§.textureManager)
         {
            this.§3D§.textureManager.dispose();
         }
         if(this.§#!<§ && this.§#!<§.textureManager)
         {
            this.§#!<§.textureManager.dispose();
         }
         if(this.§3"#§)
         {
            this.§3"#§.dispose();
         }
      }
      
      protected function initThemeGraphicsManager() : §,"d§
      {
         return new §,"d§(this.§^!8§.loaderInfo.parameters.assetsUrl || "",this.§^!8§.loaderInfo.parameters.buildNumber || "",this.mLevelManager);
      }
      
      protected function initThemeSoundsManager() : §,"d§
      {
         return new §,"d§(this.§^!8§.loaderInfo.parameters.assetsUrl || "",this.§^!8§.loaderInfo.parameters.buildNumber || "",this.mLevelManager,false);
      }
      
      protected function initCutSceneManager() : §,"d§
      {
         return new §,"d§(this.§^!8§.loaderInfo.parameters.assetsUrl || "",this.§^!8§.loaderInfo.parameters.buildNumber || "",this.mLevelManager);
      }
      
      protected function initAnimationManager(param1:§'0§) : §"I§
      {
         return new §"I§(param1);
      }
      
      public function §8"d§(param1:Boolean) : void
      {
         if(Starling.§?$#§)
         {
            if(param1)
            {
               Starling.§?$#§.start();
            }
            else
            {
               Starling.§?$#§.stop();
               Starling.§?$#§.color = 0;
            }
         }
      }
      
      public function §1!t§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function setController(param1:§#R§) : void
      {
         if(this.§;"N§ != null)
         {
            this.§;"N§.removeEventListeners();
         }
         this.§;"N§ = param1;
         if(this.mReadyToRun)
         {
            this.§;"N§.addEventListeners();
         }
      }
      
      public function §6#p§() : §7a§
      {
         return this.§[!Y§;
      }
      
      protected function getSpriteSheetGroup(param1:§7"H§) : int
      {
         return 0;
      }
      
      public function §0#=§(param1:§5!T§, param2:Array, param3:Function) : void
      {
         var _loc6_:§7"H§ = null;
         var _loc7_:int = 0;
         if(this.§9!R§.indexOf(param1) != -1)
         {
            return;
         }
         this.§9!R§.push(param1);
         var _loc4_:int = param1.§8"_§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc6_ = param1.§?"q§(_loc5_);
            _loc7_ = this.getSpriteSheetGroup(_loc6_);
            this.§>!4§.§]#`§(_loc6_,_loc7_);
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§^#>§.addEventListener(Event.INIT,param3);
            this.§9!&§.push(param3);
         }
         this.§>!4§.removeEventListener(Event.INIT,this.§4K§);
         if(this.§>!4§.§&!d§())
         {
            this.§ "G§.§4$8§(param2);
            this.§;!e§ = false;
            this.§7!§();
         }
         else
         {
            this.§>!4§.addEventListener(Event.INIT,this.§4K§);
            this.§;!e§ = true;
         }
      }
      
      public function §^C§(param1:§5!T§, param2:Function) : void
      {
         var _loc5_:§7"H§ = null;
         var _loc6_:int = 0;
         if(this.§9!R§.indexOf(param1) != -1)
         {
            return;
         }
         this.§9!R§.push(param1);
         var _loc3_:int = param1.§8"_§;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.§?"q§(_loc4_);
            _loc6_ = this.getSpriteSheetGroup(_loc5_);
            this.§>!4§.§]#`§(_loc5_,_loc6_);
            _loc4_++;
         }
         if(param2 != null)
         {
            this.§^#>§.addEventListener(Event.INIT,param2);
            this.§9!&§.push(param2);
         }
         if(this.§%#O§())
         {
            this.§7!§();
         }
      }
      
      private function §%#O§() : Boolean
      {
         this.§>!4§.removeEventListener(Event.INIT,this.§4K§);
         if(this.§>!4§.§&!d§())
         {
            this.initializeAnimations();
            this.§;!e§ = false;
            return true;
         }
         this.§>!4§.addEventListener(Event.INIT,this.§4K§);
         this.§;!e§ = true;
         return false;
      }
      
      private function §4K§(param1:Event) : void
      {
         this.§>!4§.removeEventListener(Event.INIT,this.§4K§);
         this.initializeAnimations();
         this.§;!e§ = false;
         this.§7!§();
      }
      
      protected function initializeAnimations() : void
      {
         this.§@!u§.initializeAnimations();
         this.§ "G§.§4$8§();
      }
      
      private function §`",§(param1:Event) : void
      {
         if(!Starling.§&!#§())
         {
            return;
         }
         this.§>!4§.reInitializeTextures();
         if(this.§3T§ && this.§3T§.textureManager)
         {
            this.§3T§.textureManager.reInitializeTextures();
         }
         if(this.§"]§ && this.§"]§.textureManager)
         {
            this.§"]§.textureManager.reInitializeTextures();
         }
         if(this.§;!e§)
         {
            if(this.§%#O§())
            {
               this.§7!§();
            }
         }
         if(this.§;"N§ != null && this.mReadyToRun)
         {
            this.§;"N§.addEventListeners();
         }
         if(this.§3D§)
         {
            this.§3D§.§&!d§();
         }
         if(this.§#!<§)
         {
            if(this.§#!<§.textureManager)
            {
               this.§#!<§.§&!d§();
            }
         }
      }
      
      private function §7!§() : void
      {
         this.§^#>§.dispatchEvent(new Event(Event.INIT));
         this.§^"6§();
      }
      
      private function §^"6§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§9!&§)
         {
            this.§^#>§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§9!&§ = [];
      }
      
      public function init(param1:§]#B§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         §5r§ = param1.theme;
         this.§1#p§ = param1;
         this.§0#h§ = this.§,!0§(param1);
         this.§?"O§ = this.initializeLevelCamera(param1);
         this.§9"e§ = 0;
         this.§^'§ = 0;
         this.§=l§ = false;
         this.mReadyToRun = false;
         this.§7!B§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         this.§]!+§ = 1500;
         this.§1!o§ = 3000;
         this.§=!+§ = 0;
         param1.theme = param1.theme || "background_blue_grass";
         this.§-"!§ = this.§ "z§(param1.theme);
         this.§@]§ = this.§`"_§(param1.theme);
         if(this.§-"!§ && this.§@]§)
         {
            this.initialize(param1);
         }
         else
         {
            this.loadTheme(param1.theme);
         }
         this.§"#]§(param1.name);
         §2"b§.init();
         this.addEventListeners();
      }
      
      protected function §,!0§(param1:§]#B§) : §&K§
      {
         return new §&K§(this,param1);
      }
      
      public function addEventListeners() : void
      {
         §!#A§.§>q§.addEventListener(§7"P§.§,"!§,this.§3"#§.onEnterFrame);
         this.§0#b§ = true;
      }
      
      protected function §"#]§(param1:String) : void
      {
         this.§[!Y§ = new §7a§(param1);
      }
      
      protected function § "z§(param1:String) : Boolean
      {
         if(this.§3D§)
         {
            return false;
         }
         return true;
      }
      
      protected function §`"_§(param1:String) : Boolean
      {
         var _loc2_:§6!r§ = null;
         if(this.§;!5§ && !this.mLevelManager.getCurrentEpisodeModel().isTournament)
         {
            _loc2_ = this.§7"h§.getBackground(param1);
            if(_loc2_)
            {
               if(_loc2_.§="B§ && !this.§;!5§.§3"%§(_loc2_.§="B§))
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
         this.§+"I§(param1);
      }
      
      protected function §+"I§(param1:String) : void
      {
         var _loc2_:Array = null;
         if(this.§3D§ && !this.§ "z§(param1))
         {
            this.§3D§.removeEventListener(Event.COMPLETE,this.§<b§);
            this.§3D§.removeEventListener(Event.CANCEL,this.onThemeGraphicsNotAvailable);
            this.§3D§.addEventListener(Event.COMPLETE,this.§<b§);
            this.§3D§.addEventListener(Event.CANCEL,this.onThemeGraphicsNotAvailable);
            _loc2_ = this.getThemeGraphicsLoadList(param1);
            this.§3D§.§;"M§(param1,_loc2_);
         }
         else
         {
            this.§'j§(param1);
         }
      }
      
      protected function §'j§(param1:String) : void
      {
         var _loc2_:§6!r§ = null;
         if(this.§;!5§ && !this.§`"_§(param1))
         {
            this.§;!5§.removeEventListener(Event.COMPLETE,this.§7#!§);
            this.§;!5§.removeEventListener(Event.CANCEL,this.§,#&§);
            this.§;!5§.addEventListener(Event.COMPLETE,this.§7#!§);
            this.§;!5§.addEventListener(Event.CANCEL,this.§,#&§);
            _loc2_ = this.§7"h§.getBackground(param1);
            if(_loc2_)
            {
               this.§;!5§.§;"M§(_loc2_.§="B§);
            }
         }
         else
         {
            this.initialize(this.§1#p§);
         }
      }
      
      protected function §<b§(param1:Event) : void
      {
         this.§3D§.removeEventListener(Event.COMPLETE,this.§<b§);
         this.§3D§.removeEventListener(Event.CANCEL,this.onThemeGraphicsNotAvailable);
         this.§-"!§ = true;
         this.§'j§(this.§1#p§.theme);
      }
      
      protected function onThemeGraphicsNotAvailable(param1:Event) : void
      {
         this.§3D§.removeEventListener(Event.COMPLETE,this.§<b§);
         this.§3D§.removeEventListener(Event.CANCEL,this.onThemeGraphicsNotAvailable);
         this.§7!B§ = true;
      }
      
      protected function §7#!§(param1:Event) : void
      {
         this.§3D§.removeEventListener(Event.COMPLETE,this.§7#!§);
         this.§3D§.removeEventListener(Event.CANCEL,this.§,#&§);
         this.§@]§ = true;
         if(this.§-"!§ && this.§@]§)
         {
            this.initialize(this.§1#p§);
         }
      }
      
      protected function §,#&§(param1:Event) : void
      {
         this.§3D§.removeEventListener(Event.COMPLETE,this.§7#!§);
         this.§3D§.removeEventListener(Event.CANCEL,this.§,#&§);
         this.§@]§ = true;
         if(this.§-"!§ && this.§@]§)
         {
            this.initialize(this.§1#p§);
         }
      }
      
      public function get backgroundTextureManager() : §'0§
      {
         if(this.§3T§)
         {
            return this.§3T§.textureManager;
         }
         return null;
      }
      
      protected function initializePhysicsConstants(param1:§]#B§) : void
      {
         b2Settings.b2_linearSleepTolerance = b2Settings.§^"z§;
      }
      
      protected function initialize(param1:§]#B§) : void
      {
         this.§@v§ = null;
         this.§]"p§ = false;
         if(Starling.§]F§)
         {
            Starling.§]F§.speed = 1;
         }
         this.initializePhysicsConstants(param1);
         this.initLevelEngine(param1);
         this.§'I§ = this.initializeLevelBackground(param1.theme,0 / §,"3§,this.backgroundTextureManager,this.§?"O§.§`"!§());
         this.§'I§.§-$>§(§!#A§.§-#?§());
         if(Starling.§?$#§)
         {
            Starling.§?$#§.color = this.§'I§.§2"Y§;
         }
         this.§!Y§ = this.initializeLevelObjectManager(param1);
         this.§!Y§.§4!'§ = this.§5#S§(param1.name);
         this.§5"$§ = this.initializeLevelSlingshot(param1);
         this.§&"?§ = this.initializeParticleManager(this.§@!u§,this.§>!4§);
         this.§?"O§.init();
         this.§"V§();
         this.§7#V§();
         this.mReadyToRun = true;
         if(this.§;"N§)
         {
            this.§;"N§.addEventListeners();
         }
         if(param1.name == §9$&§)
         {
            this.§?"O§.§^!#§(§"!N§);
            this.§?"a§(0);
         }
         else
         {
            §9$&§ = param1.name;
         }
         this.levelInitialized();
      }
      
      protected function levelInitialized() : void
      {
         this.§!Y§.levelInitialized();
      }
      
      protected function initLevelEngine(param1:§]#B§) : void
      {
         this.mLevelEngine = new §<!-§(this);
      }
      
      protected function §7#V§() : void
      {
         if(this.§@<§)
         {
            this.§>w§ = §7a§.initialize(this.§@<§);
            this.§>w§.speed = 1;
            this.§>w§.play();
            this.§4"#§ = -1000;
            this.§@<§ = null;
         }
      }
      
      public function §!!+§(param1:String) : void
      {
         this.§@<§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§>w§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§>w§)
         {
            if(param1)
            {
               this.§>w§.speed = Math.min(this.§>w§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§>w§.speed = Math.max(this.§>w§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§>w§)
         {
            this.§>w§.speed = 1;
         }
      }
      
      protected function initializeLevelObjectManager(param1:§]#B§) : §6#-§
      {
         var _loc2_:String = §6!r§.§9#&§;
         return new §6#-§(this,param1,new Sprite(),_loc2_);
      }
      
      protected function §5#S§(param1:String) : §4!+§
      {
         if(!param1)
         {
            return null;
         }
         var _loc2_:Class = this.§<!^§[param1.toLowerCase()];
         if(!_loc2_)
         {
            return null;
         }
         return new _loc2_() as §4!+§;
      }
      
      public function §9"q§(param1:String, param2:Class) : void
      {
         this.§<!^§[param1.toLowerCase()] = param2;
      }
      
      protected function initializeLevelCamera(param1:§]#B§) : §-t§
      {
         return new §-t§(this,param1);
      }
      
      protected function initializeLevelBackground(param1:String, param2:Number, param3:§'0§, param4:Number) : §0!^§
      {
         var _loc5_:§6!r§;
         if((_loc5_ = this.§7"h§.getBackground(param1)) == null)
         {
            §?!T§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §]#B§.§-$&§;
            _loc5_ = this.§7"h§.getBackground(param1);
         }
         return new §0!^§(this,_loc5_,param2,param3,param4,!Starling.§-m§);
      }
      
      protected function initializeLevelSlingshot(param1:§]#B§) : §]#b§
      {
         return new §]#b§(this,param1,new Sprite());
      }
      
      protected function initializeParticleManager(param1:§"I§, param2:§'0§) : §7"6§
      {
         return new §7"6§(param1,param2);
      }
      
      public function initializeEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§]#B§ = new §]#B§();
         _loc3_.slingshotY = -12;
         var _loc4_:§@"v§;
         (_loc4_ = new §@"v§()).left = 0;
         _loc4_.top = -§-t§.§`#Z§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §-t§.§`#Z§;
         _loc4_.right = _loc4_.left + §-t§.§6w§;
         _loc4_.y = -13.929;
         _loc4_.x = §-t§.§6w§;
         _loc4_.id = §-t§.§6!-§;
         _loc3_.§+#w§(_loc4_);
         var _loc5_:§@"v§;
         (_loc5_ = new §@"v§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §-t§.§6w§;
         _loc5_.bottom = _loc5_.top + §-t§.§`#Z§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §-t§.§6w§ / 2;
         _loc5_.id = §-t§.include;
         _loc3_.§+#w§(_loc5_);
         this.§`$;§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§5r§ != null)
         {
            _loc3_.theme = §5r§;
         }
         this.init(_loc3_);
      }
      
      protected function §`$;§(param1:§]#B§, param2:Boolean) : void
      {
         if(param2)
         {
            this.§>"3§(param1);
         }
      }
      
      protected function § "X§() : Number
      {
         this.§'",§ ^= this.§'",§ << 21;
         this.§'",§ ^= this.§'",§ >>> 35;
         this.§'",§ ^= this.§'",§ << 4;
         return this.§'",§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §>"3§(param1:§]#B§) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§]"o§ = null;
         this.§'",§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < 10)
         {
            _loc4_ = 0;
            while(_loc4_ < 5)
            {
               _loc5_ = this.§ "X§() * 5;
               (_loc6_ = new §]"o§()).x = 30 + _loc4_ * 10 + this.§ "X§() * 9;
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
                  _loc6_.angle = 45 - this.§ "X§() * 90;
               }
               else
               {
                  _loc6_.y = -30 + _loc3_ * 6 - this.§ "X§() * 3 - _loc4_ * 8;
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
                  _loc6_.angle = this.§ "X§() * 360;
               }
               _loc6_.id = _loc2_;
               param1.addObject(_loc6_);
               _loc2_++;
               _loc4_++;
            }
            _loc3_++;
         }
      }
      
      private function §1#9§() : void
      {
      }
      
      protected function §,""§() : void
      {
         if(§0!^§.§!#§)
         {
            this.addItemToDisplayList(this.§'I§.§1! §);
         }
      }
      
      protected function addBackgroundSpritesToDisplayList() : void
      {
         this.addItemToDisplayList(this.§!Y§.backgroundSprite);
         this.addItemToDisplayList(this.§&"?§.§?!D§(§7"6§.§]#N§));
         this.addItemToDisplayList(this.§&"?§.§?!D§(§7"6§.§>C§));
      }
      
      protected function addGameSpritesToDisplayList() : void
      {
         this.addItemToDisplayList(this.§&"?§.§?!D§(§7"6§.PARTICLE_GROUP_BACKGROUND_EFFECTS));
         this.addItemToDisplayList(this.§!Y§.§'"Z§);
         this.addItemToDisplayList(this.§5"$§.sprite);
         this.addItemToDisplayList(this.§&"?§.§?!D§(§7"6§.PARTICLE_GROUP_GAME_EFFECTS));
         this.addItemToDisplayList(this.§!Y§.§7"<§);
      }
      
      protected function §,!$§() : void
      {
         this.addItemToDisplayList(this.§'I§.§3!I§);
         if(§0!^§.§!#§)
         {
            this.addItemToDisplayList(this.§'I§.§'y§);
         }
      }
      
      protected function §#!'§() : void
      {
         this.addItemToDisplayList(this.§!Y§.§="G§);
         this.addItemToDisplayList(this.§&"?§.§?!D§(§7"6§.§"!I§));
         this.addItemToDisplayList(this.§&"?§.§?!D§(§7"6§.§#$4§));
      }
      
      private function §"V§() : void
      {
         this.§,""§();
         this.addBackgroundSpritesToDisplayList();
         this.addGameSpritesToDisplayList();
         this.§,!$§();
         this.§#!'§();
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
         if(§!#A§.§+K§ > §!#A§.§5O§)
         {
            param1 /= §!#A§.§+K§;
            param2 /= §!#A§.§+K§;
         }
         else
         {
            param1 /= §!#A§.§5O§;
            param2 /= §!#A§.§5O§;
         }
         param3.x = ((param1 - this.sprite.x) / §-t§.§<!W§ + this.§?"O§.§'#x§) * §,"3§;
         param3.y = ((param2 - this.sprite.y) / §-t§.§<!W§ + this.§?"O§.§>!w§) * §,"3§;
         return param3;
      }
      
      public function §7$3§(param1:Number, param2:Number, param3:Point = null) : Point
      {
         if(!param3)
         {
            param3 = new Point();
         }
         param3.x = (param1 / §,"3§ - this.§?"O§.§'#x§) * §-t§.§<!W§ + this.sprite.x;
         param3.y = (param2 / §,"3§ - this.§?"O§.§>!w§) * §-t§.§<!W§ + this.sprite.y;
         var _loc4_:Number = Math.max(§!#A§.§+K§,§!#A§.§5O§);
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
            this.background.setScreenOffset(param1,param2,this.§!t§,this.§8#y§,param3,this.§,J§,this.§?$2§);
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
      
      public function §@$!§(param1:String, param2:Number, param3:Number) : void
      {
         this.§!Y§.addObject(param1,param2,param3,0,§6#-§.ID_NEXT_FREE);
      }
      
      public function §][§() : void
      {
         if(this.§&"j§)
         {
            this.§&"j§.visible = true;
            this.§&"j§.alpha = 0;
         }
         this.§0!F§ = 0;
      }
      
      public function §#2§(param1:Boolean, param2:Number = 0, param3:Number = 0, param4:Number = 0) : void
      {
         if(param1)
         {
            if(this.§3X§)
            {
               this.§3X§.§?W§(param2);
               this.§3X§.§1"v§(param3);
               this.§3X§.§]!G§(param4);
            }
            else
            {
               this.§3X§ = new §;#b§(param2,param3,param4);
            }
         }
         else
         {
            this.§?"O§.§,!P§(0,0);
            this.§3X§ = null;
         }
      }
      
      public function clearLevel() : void
      {
         this.§#P§.clear();
         if(this.§'I§)
         {
            this.§'I§.dispose();
            this.§'I§ = null;
         }
         if(this.§!Y§)
         {
            this.§!Y§.dispose();
            this.§!Y§ = null;
         }
         this.§`$$§ = this.§8B§;
         if(this.mLevelEngine)
         {
            if(!this.mLevelEngine.§%![§)
            {
            }
            this.mLevelEngine.clear();
            this.mLevelEngine = null;
         }
         if(this.§0#h§)
         {
            this.§0#h§.clear();
            this.§0#h§ = null;
         }
         if(this.§5"$§)
         {
            this.§5"$§.dispose();
            this.§5"$§ = null;
         }
         if(this.§?"O§)
         {
            §"!N§ = this.§?"O§.§?!,§;
            this.§?"O§.clear();
            this.§?"O§ = null;
         }
         if(this.§&"?§)
         {
            this.§&"?§.dispose();
            this.§&"?§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§9"e§ = 0;
         this.§^'§ = 0;
         this.mReadyToRun = false;
         this.§=l§ = false;
         this.§0!F§ = §1!$§.§>!u§;
         if(this.§="N§)
         {
            (this.§="N§ as §-!g§).§`"V§.x = 0;
            (this.§="N§ as §-!g§).§`"V§.y = 0;
         }
         if(this.§&"j§)
         {
            this.§&"j§.visible = false;
         }
         this.§>w§ = null;
         this.§[!Y§ = null;
         if(this.§3D§)
         {
            this.§3D§.removeEventListener(Event.COMPLETE,this.§<b§);
            this.§3D§.removeEventListener(Event.CANCEL,this.onThemeGraphicsNotAvailable);
         }
         if(this.§;!5§)
         {
            this.§;!5§.removeEventListener(Event.COMPLETE,this.§7#!§);
            this.§;!5§.removeEventListener(Event.CANCEL,this.§,#&§);
         }
         this.§^"6§();
         if(Starling.§?$#§)
         {
            Starling.§?$#§.color = 0;
         }
         if(this.§;"N§)
         {
            this.§;"N§.removeEventListeners();
         }
         §!#A§.§>q§.removeEventListener(§7"P§.§,"!§,this.§3"#§.onEnterFrame);
         this.§0#b§ = false;
         this.mReadyToRun = false;
      }
      
      public function gameOver(param1:int) : void
      {
      }
      
      public function §`<§() : String
      {
         if(this.§[!Y§)
         {
            return this.§[!Y§.toString();
         }
         return null;
      }
      
      public function get §'`§() : Number
      {
         if(this.§@v§)
         {
            return this.§@v§.speed;
         }
         return 1;
      }
      
      public function update(param1:Number, param2:Boolean) : Number
      {
         if(!this.mReadyToRun || !Starling.§&!#§())
         {
            return 0;
         }
         if(this.§`$$§ > 0)
         {
            this.§`$$§ -= param1;
         }
         if(this.§>w§ && this.§>w§.isPlaying)
         {
            return this.§ !d§(param1,param2);
         }
         return this.updateWithTime(param1,true,param2);
      }
      
      protected function updateWithTime(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc4_:Boolean = false;
         if(this.§@v§)
         {
            _loc4_ = this.§@v§.update(param1);
            param1 *= this.§@v§.speed;
            if(Starling.§]F§)
            {
               Starling.§]F§.speed = this.§@v§.speed;
            }
            if(!_loc4_)
            {
               this.§@v§ = null;
            }
         }
         this.§^'§ += param1;
         if(this.§-#O§)
         {
            this.§9"e§ += param1;
            this.§9"e§ = this.mLevelEngine.§?+§(this.§9"e§);
         }
         else
         {
            this.§9"e§ = 0;
            this.handleEngineUpdateStep(param1);
         }
         this.§5"$§.update(param1,param3);
         if(param2)
         {
            this.§?"a§(param1);
         }
         this.§#P§.update(param1);
         return param1;
      }
      
      private function § !d§(param1:Number, param2:Boolean) : Number
      {
         var _loc4_:Number = NaN;
         var _loc3_:Number = §<!-§.§&"o§;
         if(this.§>w§)
         {
            param1 *= this.§>w§.speed;
            _loc4_ = this.§^'§ + param1;
            while(this.§^'§ + _loc3_ < _loc4_)
            {
               if(this.§^'§ + _loc3_ > this.§4"#§)
               {
                  this.§>w§.step(this);
                  this.§4"#§ += _loc3_;
               }
               this.updateWithTime(_loc3_,false,param2);
            }
            if(_loc4_ > this.§4"#§ + _loc3_)
            {
               this.§>w§.step(this);
               this.§4"#§ += _loc3_;
            }
            if(this.§^'§ < _loc4_)
            {
               this.updateWithTime(_loc4_ - this.§^'§,true,param2);
            }
            return param1;
         }
         return param1;
      }
      
      private function §?"a§(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.§'I§)
         {
            this.§'I§.update(param1);
         }
         this.§!Y§.renderObjects(param1,this.mLevelEngine.§-$4§,this.§9"e§);
         this.§+#9§();
         if(this.§0!F§ < §1!$§.§>!u§)
         {
            this.§0!F§ += param1;
            _loc2_ = §1!$§.§>!u§ / 2;
            _loc3_ = (-Math.abs(this.§0!F§ - _loc2_) + _loc2_) * (§1!$§.§2!z§ / _loc2_);
            if(this.§&"j§)
            {
               this.§&"j§.alpha = _loc3_;
            }
         }
         else if(this.§&"j§)
         {
            this.§&"j§.visible = false;
         }
         if(this.§3X§)
         {
            if(!this.§3X§.§`"o§(this.§?"O§,param1))
            {
               this.§#2§(false);
            }
         }
         this.§?"O§.§3!_§(param1);
         this.mLevelEngine.§[#_§();
         this.§&"?§.update(param1);
         this.§,!^§(param1);
         this.§8!O§(param1);
      }
      
      public function handleEngineUpdateStep(param1:Number) : void
      {
         this.objects.updateObjects(param1);
         this.§#$3§();
      }
      
      protected function §+#9§() : void
      {
         var _loc1_:§^"9§ = null;
         if(this.§'"a§ != null)
         {
            for each(_loc1_ in this.§'"a§)
            {
               if(!_loc1_.isLeavingTrail)
               {
                  this.§%"y§(_loc1_);
               }
            }
         }
      }
      
      public function §,!^§(param1:Number) : void
      {
         var _loc2_:§76§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            _loc2_ = this.§!Y§.§[![§(true);
            if(_loc2_)
            {
               _loc2_.scream();
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§!Y§.getPigCount());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            _loc2_ = this.§!Y§.§[![§(true);
            if(_loc2_)
            {
               _loc2_.blink();
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§!Y§.getPigCount());
            }
         }
      }
      
      public function §8!O§(param1:Number) : void
      {
         var _loc2_:Array = null;
         var _loc3_:§^"9§ = null;
         var _loc4_:int = 0;
         var _loc5_:§^"9§ = null;
         var _loc6_:§="D§ = null;
         if(this.§1!o§ > 0)
         {
            this.§1!o§ -= param1;
         }
         if(this.§]!+§ > 0)
         {
            this.§]!+§ -= param1;
         }
         if(this.§]!+§ <= 0 || this.§1!o§ <= 0)
         {
            _loc2_ = this.§!Y§.§4!e§();
            if(_loc2_.length > 0)
            {
               _loc3_ = null;
               if(this.§]!+§ <= 0)
               {
                  _loc4_ = Math.random() * _loc2_.length;
                  _loc3_ = this.§!Y§.getObject(_loc2_[_loc4_]) as §^"9§;
                  if(_loc3_)
                  {
                     _loc3_.blink();
                     this.§]!+§ = 250 + Math.random() * 500 + 2000 / (3 + _loc2_.length);
                  }
               }
               if(this.§1!o§ <= 0)
               {
                  _loc4_ = Math.random() * _loc2_.length;
                  _loc3_ = this.§!Y§.getObject(_loc2_[_loc4_]) as §^"9§;
                  if(_loc3_)
                  {
                     _loc3_.scream();
                     this.§1!o§ = 1500 + Math.random() * 3000 + 4000 / (3 + _loc2_.length);
                  }
               }
            }
         }
         if(this.§=!+§ <= 0)
         {
            if(_loc5_ = this.§!Y§.§6!V§())
            {
               if(_loc6_ = _loc5_.playFearSound())
               {
                  this.§=!+§ = _loc6_.§3#T§;
               }
            }
         }
         else
         {
            this.§=!+§ -= param1;
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999, param7:String = null) : void
      {
         if(this.§`$$§ > 0)
         {
            return;
         }
         if(param6 == -9999)
         {
            param6 = §2"^§.§5#y§;
         }
         §2"b§.addScore(param1,param2);
         this.§;"N§.addScore(param1);
         if(param3 && param1 > 0 && !this.§]"p§)
         {
            this.§%#^§(param1.toString(),param4,param5,800,param6,0,0,param7);
         }
      }
      
      public function §%#^§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3, param8:String = null) : void
      {
         if(param5 == -9999)
         {
            param5 = §2"^§.§;!Q§;
         }
         this.§&"?§.addParticle(§2"^§.§&# §,§7"6§.§"!I§,§2"^§.§8"0§,param2,param3,param4,param1,param5,param6,param7,0,0,1,-1,false,param8);
      }
      
      public function §8"T§(param1:§#-§) : void
      {
         if(this.§'"a§ == null)
         {
            this.§'"a§ = new Array();
         }
         this.§'"a§.push(param1);
      }
      
      public function useMightyEagle() : void
      {
         this.§5"$§.useMightyEagle();
         this.§!Y§.§#!@§();
         this.§]"p§ = true;
      }
      
      public function §%"y§(param1:§^"9§) : void
      {
         this.§&"?§.§@"t§(§7"6§.§]#N§);
         if(this.§'"a§.indexOf(param1) >= 0)
         {
            this.§'"a§.splice(this.§'"a§.indexOf(param1),1);
         }
         if(this.§'"a§.length == 0)
         {
            this.§'"a§ = null;
         }
      }
      
      public function shootBird(param1:§@"@§, param2:Number, param3:Number) : §"7§
      {
         var _loc4_:§"7§ = §"7§(this.§!Y§.addObject(param1.name,param1.x,param1.y,0,§6#-§.ID_NEXT_FREE,true,true,true,param1.scale));
         var _loc5_:Number = param1.§6i§;
         _loc4_.§[#m§(param1.§^!&§);
         _loc4_.§%$&§(param1.§=$-§);
         if(param1.§%"n§ != 0)
         {
            _loc5_ = param1.§%"n§;
         }
         var _loc6_:Number = -_loc5_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc7_:Number = _loc5_ * param2 * Math.sin(param3 / (180 / Math.PI));
         _loc4_.§!!b§(new b2Vec2(_loc6_,_loc7_),false,true);
         _loc4_.isLeavingTrail = true;
         this.camera.setAction(§-t§.§;$8§);
         if(this.§[!Y§)
         {
            this.§[!Y§.shootBird(this.mLevelEngine.§`#r§,param1.x,param1.y,param2,param3);
         }
         return _loc4_;
      }
      
      public function activateSpecialPower(param1:Number, param2:Number) : void
      {
         this.§=l§ = true;
         this.§[<§ = param1;
         this.§5v§ = param2;
      }
      
      private function §#$3§() : void
      {
         if(!this.§=l§)
         {
            return;
         }
         this.§=l§ = false;
         if(this.§!Y§.activeObject is §"7§)
         {
            this.§!Y§.activateSpecialPower(this.§[<§,this.§5v§);
         }
         if(this.§[!Y§)
         {
            this.§[!Y§.§6%§(this.mLevelEngine.§`#r§,this.§[<§,this.§5v§);
         }
      }
      
      public function §=D§() : void
      {
         this.§!Y§.§=D§();
      }
      
      public function §;#w§() : void
      {
         this.§!Y§.§'#5§();
      }
      
      public function §1O§() : §]#B§
      {
         var _loc1_:§]#B§ = new §]#B§();
         _loc1_.scoreGold = this.§1#p§.scoreGold;
         _loc1_.scoreSilver = this.§1#p§.scoreSilver;
         _loc1_.scoreEagle = this.§1#p§.scoreEagle;
         _loc1_.blockDestructionScorePercentage = this.§1#p§.blockDestructionScorePercentage;
         _loc1_.worldGravity = this.§1#p§.worldGravity;
         _loc1_.borderTop = this.§1#p§.borderTop;
         _loc1_.borderGround = this.§1#p§.borderGround;
         _loc1_.borderLeft = this.§1#p§.borderLeft;
         _loc1_.borderRight = this.§1#p§.borderRight;
         this.§?"O§.§#"G§(_loc1_);
         this.§!Y§.§%#n§(_loc1_);
         this.§5"$§.§1"p§(_loc1_);
         _loc1_.theme = !!this.§'I§ ? this.§'I§.§6#i§() : "background_blue_grass";
         return _loc1_;
      }
      
      public function §'!A§() : int
      {
         return this.§1#p§.scoreSilver;
      }
      
      public function §]!M§() : int
      {
         return this.§1#p§.scoreGold;
      }
      
      public function §&$'§(param1:int) : void
      {
         this.§1#p§.scoreSilver = param1;
      }
      
      public function §]"W§(param1:int) : void
      {
         this.§1#p§.scoreGold = param1;
      }
      
      public function §7#=§() : Number
      {
         return this.§1#p§.worldGravity;
      }
      
      public function §[#V§(param1:Number) : void
      {
         this.§1#p§.worldGravity = param1;
      }
      
      public function §4"o§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(this.§0#h§)
         {
            this.§0#h§.§4"o§(param1,param2,param3,param4);
         }
         if(this.§1#p§)
         {
            this.§1#p§.borderTop = param1;
            this.§1#p§.borderGround = param2;
            this.§1#p§.borderLeft = param3;
            this.§1#p§.borderRight = param4;
         }
      }
      
      public function §]#=§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§!t§ = param1;
         this.§8#y§ = param2;
         this.§,J§ = param3;
         this.§?$2§ = param4;
         if(this.§'#7§)
         {
            this.§'#7§.§@!c§(param1,param2);
         }
         if(this.§?"O§)
         {
            this.§?"O§.§3!_§(0);
         }
      }
      
      public function §"!B§(param1:§#-§, param2:§#-§) : Boolean
      {
         return false;
      }
      
      public function get currentLevel() : §]#B§
      {
         return this.§1#p§;
      }
      
      public function get levelObjects() : §6#-§
      {
         return this.§!Y§;
      }
      
      protected function get starling() : Starling
      {
         return this.§3"#§;
      }
      
      public function get §4n§() : int
      {
         return §<?§;
      }
      
      public function get §]#V§() : Array
      {
         return this.§#P§.§#i§();
      }
      
      public function §1j§(param1:String, param2:String) : Boolean
      {
         return this.§#P§.§8$$§(param1,param2,this);
      }
   }
}
