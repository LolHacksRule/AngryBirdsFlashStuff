package § !D§
{
   import §!6§.DisplayObject;
   import §!6§.Sprite;
   import §!L§.§@$#§;
   import §"$=§.§'![§;
   import §"$=§.§5#v§;
   import §"$=§.§=$&§;
   import §%A§.§'Y§;
   import §%A§.§>F§;
   import §%_§.§;l§;
   import §'!O§.§>!Y§;
   import §'!O§.§@P§;
   import §+#B§.§4"[§;
   import §-!!§.§1#B§;
   import §-!!§.§1$<§;
   import §-!!§.§7S§;
   import §-!!§.§8"J§;
   import §-"i§.§"!Y§;
   import §1C§.§,!$§;
   import §5"G§.§^"&§;
   import §9#K§.§=#f§;
   import §9$+§.§9"4§;
   import §;$?§.§0p§;
   import §<#S§.§[!W§;
   import §=!2§.§%"T§;
   import §="l§.§#u§;
   import §="l§.§;#f§;
   import §>"9§.§1"T§;
   import §?§.§<"J§;
   import §[!3§.b2Settings;
   import §["9§.§,2§;
   import §]"P§.Starling;
   import §^"[§.§&"-§;
   import §^"[§.§2§;
   import §^"[§.§=#;§;
   import §`# §.b2Vec2;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §'"u§ extends §"!Y§
   {
      
      private static const §2f§:int = 20;
      
      public static const §'#e§:Number = 1 / 20;
      
      protected static var §,&§:String;
      
      protected static var §8"O§:Number = 1;
      
      protected static var §]#§:String = §=$&§.§2"f§;
       
      
      protected var §]!'§:§7S§;
      
      private var §1$-§:Array = null;
      
      protected var §3!?§:§[!W§;
      
      public var mLevelEngine:§<!A§;
      
      protected var §2!`§:§;3§;
      
      protected var §;#g§:§;l§;
      
      protected var §,c§:§"b§;
      
      protected var §,"Q§:§>F§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §,#l§:Boolean = false;
      
      protected var §-#0§:Boolean = false;
      
      protected var §-#Z§:Boolean = false;
      
      public var §@4§:Number = 1500;
      
      protected var §["r§:int = 500;
      
      protected var §6!>§:int;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      private var §@#C§:Number;
      
      private var §1G§:Number;
      
      private var §`l§:Number;
      
      public var §3#&§:Number;
      
      public var § # §:Number;
      
      private var §;$1§:§7!P§;
      
      private var §>$;§:Sprite;
      
      protected var §8"x§:§=$&§;
      
      protected var §-!q§:§@$#§ = null;
      
      private var §?'§:EventDispatcher;
      
      private var §"v§:Array;
      
      private var §##d§:Starling;
      
      private var §&!0§:Vector.<§#u§>;
      
      protected var §2!b§:§=#;§;
      
      protected var § "9§:§2#6§;
      
      private var §6j§:§&"-§;
      
      private var §,!"§:§&"-§;
      
      private var §1#>§:§&"-§;
      
      private var § #z§:Stage;
      
      private var §4"k§:§6"=§;
      
      protected var §@"Y§:§,2§;
      
      protected var § ]§:§,2§;
      
      protected var §8# §:Number = 0.0;
      
      protected var §,$-§:String;
      
      private var §^!z§:Boolean;
      
      private var §<!c§:Number;
      
      private var §&"H§:Number;
      
      protected var §=#r§:§-!a§;
      
      protected var §`!2§:§<"J§;
      
      protected var §&"%§:§>!Y§;
      
      protected var mLevelManager:§'![§;
      
      protected var §+C§:uint = 1.417339207E9;
      
      public var §0!,§:Boolean;
      
      private var §-"D§:Boolean = true;
      
      protected var §;[§:int = 0;
      
      protected var §7#d§:int = 0;
      
      protected var §4"j§:Number = 1.0;
      
      protected var §8"V§:Number = 1.0;
      
      protected var §^n§:Boolean;
      
      private var §@"N§:§4"[§;
      
      protected var §+"e§:Boolean = false;
      
      private var §3!q§:§,!$§;
      
      public function §'"u§(param1:Stage, param2:§<"J§, param3:§>!Y§, param4:§'![§)
      {
         this.§"v§ = [];
         this.§&!0§ = new Vector.<§#u§>();
         super();
         this.§?'§ = new EventDispatcher();
         this.§ #z§ = param1;
         this.§`!2§ = param2;
         this.§&"%§ = param3;
         this.mLevelManager = param4;
         this.§2!b§ = §=#;§.§?q§;
         this.§ "9§ = this.initAnimationManager(this.§2!b§);
         this.§6j§ = this.initThemeGraphicsManager();
         this.§,!"§ = this.initThemeSoundsManager();
         this.§1#>§ = this.initCutSceneManager();
         this.§@"N§ = new §4"[§();
         var _loc5_:Stage3D = param1.stage3Ds[0];
         this.§##d§ = new Starling(§7!P§,param1,new Rectangle(0,0,§%"T§.§["?§,§%"T§.§01§),_loc5_);
         _loc5_.addEventListener(Event.CONTEXT3D_CREATE,this.§-s§,false,0,true);
         this.§##d§.§=#t§ = false;
         this.§##d§.enableErrorChecking = false;
         this.§##d§.§;!5§ = 2;
         this.§##d§.§'#F§();
         this.§3!q§ = new §,!$§(this);
      }
      
      public static function get §]!F§() : Number
      {
         return §%"T§.§["?§;
      }
      
      public static function get §3"r§() : Number
      {
         return §%"T§.§01§;
      }
      
      public static function get §`C§() : Number
      {
         return §%"T§.§01§ * §'#e§;
      }
      
      public static function get §,?§() : Number
      {
         return §]!F§ * §'#e§;
      }
      
      public static function §9!_§(param1:§1#B§, param2:§1#B§) : Number
      {
         var _loc3_:Number = param1.§ $!§ - param2.§ $!§;
         var _loc4_:Number = param1.§2#?§ - param2.§2#?§;
         return §#![§(_loc3_,_loc4_);
      }
      
      public static function §#![§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get §!"`§() : Boolean
      {
         return this.§+"e§;
      }
      
      protected function get sprite() : Sprite
      {
         if(!this.§>$;§ && this.§4!4§)
         {
            this.§>$;§ = this.§;$1§.§<#g§;
         }
         return this.§>$;§;
      }
      
      public function get §4!4§() : Sprite
      {
         if(!this.§;$1§)
         {
            this.§;$1§ = this.§##d§.§4#5§ as §7!P§;
            this.§;$1§.§7!w§ = false;
         }
         return this.§;$1§;
      }
      
      private function get §-#$§() : DisplayObject
      {
         if(this.§4!4§)
         {
            return (this.§4!4§ as §7!P§).§-#$§;
         }
         return null;
      }
      
      public function get animationManager() : §2#6§
      {
         return this.§ "9§;
      }
      
      public function get textureManager() : §=#;§
      {
         return this.§2!b§;
      }
      
      public function get camera() : §;l§
      {
         return this.§;#g§;
      }
      
      public function get objects() : §7S§
      {
         return this.§]!'§;
      }
      
      public function get particles() : §>F§
      {
         return this.§,"Q§;
      }
      
      public function get background() : §[!W§
      {
         return this.§3!?§;
      }
      
      public function get slingshot() : §"b§
      {
         return this.§,c§;
      }
      
      public function get §!!,§() : §;3§
      {
         return this.§2!`§;
      }
      
      public function get stage() : Stage
      {
         return this.§ #z§;
      }
      
      public function get levelItemManager() : §<"J§
      {
         return this.§`!2§;
      }
      
      public function get §-=§() : §&"-§
      {
         return this.§1#>§;
      }
      
      protected function get §[#K§() : §&"-§
      {
         return this.§6j§;
      }
      
      public function setSlowMotion(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§=#r§ = new §-!a§(param1,param2,param3,param4);
      }
      
      public function get §=#S§() : Boolean
      {
         return this.§-"D§;
      }
      
      public function set §=#S§(param1:Boolean) : void
      {
         this.§-"D§ = param1;
      }
      
      public function clear() : void
      {
         var _loc2_:§#u§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§&!0§.length)
         {
            _loc2_ = this.§&!0§[_loc1_];
            _loc2_.dispose();
            _loc1_++;
         }
         this.§&!0§ = new Vector.<§#u§>();
         if(this.§2!b§)
         {
            this.§2!b§.removeEventListener(Event.INIT,this.§7$<§);
            this.§2!b§.dispose();
         }
         if(this.§6j§ && this.§6j§.textureManager)
         {
            this.§6j§.textureManager.dispose();
         }
         if(this.§1#>§ && this.§1#>§.textureManager)
         {
            this.§1#>§.textureManager.dispose();
         }
         if(this.§##d§)
         {
            this.§##d§.dispose();
         }
      }
      
      protected function initThemeGraphicsManager() : §&"-§
      {
         return new §&"-§(this.§ #z§.loaderInfo.parameters.assetsUrl || "",this.§ #z§.loaderInfo.parameters.buildNumber || "",this.mLevelManager);
      }
      
      protected function initThemeSoundsManager() : §&"-§
      {
         return new §&"-§(this.§ #z§.loaderInfo.parameters.assetsUrl || "",this.§ #z§.loaderInfo.parameters.buildNumber || "",this.mLevelManager,false);
      }
      
      protected function initCutSceneManager() : §&"-§
      {
         return new §&"-§(this.§ #z§.loaderInfo.parameters.assetsUrl || "",this.§ #z§.loaderInfo.parameters.buildNumber || "",this.mLevelManager);
      }
      
      protected function initAnimationManager(param1:§=#;§) : §2#6§
      {
         return new §2#6§(param1);
      }
      
      public function setVisible(param1:Boolean) : void
      {
         if(Starling.§3!I§)
         {
            if(param1)
            {
               Starling.§3!I§.start();
            }
            else
            {
               Starling.§3!I§.stop();
               Starling.§3!I§.color = 0;
            }
         }
      }
      
      public function §^!m§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function setController(param1:§@$#§) : void
      {
         if(this.§-!q§ != null)
         {
            this.§-!q§.removeEventListeners();
         }
         this.§-!q§ = param1;
         if(this.mReadyToRun)
         {
            this.§-!q§.addEventListeners();
         }
      }
      
      public function §"!O§() : §,2§
      {
         return this.§@"Y§;
      }
      
      protected function getSpriteSheetGroup(param1:§;#f§) : int
      {
         return 0;
      }
      
      public function §"#S§(param1:§#u§, param2:Array, param3:Function) : void
      {
         var _loc6_:§;#f§ = null;
         var _loc7_:int = 0;
         if(this.§&!0§.indexOf(param1) != -1)
         {
            return;
         }
         this.§&!0§.push(param1);
         var _loc4_:int = param1.§<!>§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc6_ = param1.§5o§(_loc5_);
            _loc7_ = this.getSpriteSheetGroup(_loc6_);
            this.§2!b§.§-$1§(_loc6_,_loc7_);
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§?'§.addEventListener(Event.INIT,param3);
            this.§"v§.push(param3);
         }
         this.§2!b§.removeEventListener(Event.INIT,this.§7$<§);
         if(this.§2!b§.§4d§())
         {
            this.§`!2§.§%e§(param2);
            this.§^n§ = false;
            this.§8"s§();
         }
         else
         {
            this.§2!b§.addEventListener(Event.INIT,this.§7$<§);
            this.§^n§ = true;
         }
      }
      
      public function §]]§(param1:§#u§, param2:Function) : void
      {
         var _loc5_:§;#f§ = null;
         var _loc6_:int = 0;
         if(this.§&!0§.indexOf(param1) != -1)
         {
            return;
         }
         this.§&!0§.push(param1);
         var _loc3_:int = param1.§<!>§;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.§5o§(_loc4_);
            _loc6_ = this.getSpriteSheetGroup(_loc5_);
            this.§2!b§.§-$1§(_loc5_,_loc6_);
            _loc4_++;
         }
         if(param2 != null)
         {
            this.§?'§.addEventListener(Event.INIT,param2);
            this.§"v§.push(param2);
         }
         if(this.§8#w§())
         {
            this.§8"s§();
         }
      }
      
      private function §8#w§() : Boolean
      {
         this.§2!b§.removeEventListener(Event.INIT,this.§7$<§);
         if(this.§2!b§.§4d§())
         {
            this.initializeAnimations();
            this.§^n§ = false;
            return true;
         }
         this.§2!b§.addEventListener(Event.INIT,this.§7$<§);
         this.§^n§ = true;
         return false;
      }
      
      private function §7$<§(param1:Event) : void
      {
         this.§2!b§.removeEventListener(Event.INIT,this.§7$<§);
         this.initializeAnimations();
         this.§^n§ = false;
         this.§8"s§();
      }
      
      protected function initializeAnimations() : void
      {
         this.§ "9§.initializeAnimations();
         this.§`!2§.§%e§();
      }
      
      private function §-s§(param1:Event) : void
      {
         if(!Starling.§]#<§())
         {
            return;
         }
         this.§2!b§.reInitializeTextures();
         if(this.§[#K§ && this.§[#K§.textureManager)
         {
            this.§[#K§.textureManager.reInitializeTextures();
         }
         if(this.§-=§ && this.§-=§.textureManager)
         {
            this.§-=§.textureManager.reInitializeTextures();
         }
         if(this.§^n§)
         {
            if(this.§8#w§())
            {
               this.§8"s§();
            }
         }
         if(this.§-!q§ != null && this.mReadyToRun)
         {
            this.§-!q§.addEventListeners();
         }
         if(this.§6j§)
         {
            this.§6j§.§4d§();
         }
         if(this.§1#>§)
         {
            if(this.§1#>§.textureManager)
            {
               this.§1#>§.§4d§();
            }
         }
      }
      
      private function §8"s§() : void
      {
         this.§?'§.dispatchEvent(new Event(Event.INIT));
         this.§`p§();
      }
      
      private function §`p§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§"v§)
         {
            this.§?'§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§"v§ = [];
      }
      
      public function init(param1:§=$&§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         §]#§ = param1.theme;
         this.§8"x§ = param1;
         this.§2!`§ = this.§;B§(param1);
         this.§;#g§ = this.initializeLevelCamera(param1);
         this.§3#&§ = 0;
         this.§ # § = 0;
         this.§^!z§ = false;
         this.mReadyToRun = false;
         this.§,#l§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         this.§@#C§ = 1500;
         this.§1G§ = 3000;
         this.§`l§ = 0;
         param1.theme = param1.theme || "background_blue_grass";
         this.§-#0§ = this.§;!v§(param1.theme);
         this.§-#Z§ = this.§#"A§(param1.theme);
         if(this.§-#0§ && this.§-#Z§)
         {
            this.initialize(param1);
         }
         else
         {
            this.loadTheme(param1.theme);
         }
         this.§7"h§(param1.name);
         §@#z§.init();
         this.addEventListeners();
      }
      
      protected function §;B§(param1:§=$&§) : §;3§
      {
         return new §;3§(this,param1);
      }
      
      public function addEventListeners() : void
      {
         §%"T§.§>$<§.addEventListener(§^"&§.§>"q§,this.§##d§.onEnterFrame);
         this.§+"e§ = true;
      }
      
      protected function §7"h§(param1:String) : void
      {
         this.§@"Y§ = new §,2§(param1);
      }
      
      protected function §;!v§(param1:String) : Boolean
      {
         if(this.§6j§)
         {
            return false;
         }
         return true;
      }
      
      protected function §#"A§(param1:String) : Boolean
      {
         var _loc2_:§@P§ = null;
         if(this.§,!"§ && !this.mLevelManager.getCurrentEpisodeModel().isTournament)
         {
            _loc2_ = this.§&"%§.getBackground(param1);
            if(_loc2_)
            {
               if(_loc2_.§>"H§ && !this.§,!"§.§ for§(_loc2_.§>"H§))
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
         this.§1M§(param1);
      }
      
      protected function §1M§(param1:String) : void
      {
         var _loc2_:Array = null;
         if(this.§6j§ && !this.§;!v§(param1))
         {
            this.§6j§.removeEventListener(Event.COMPLETE,this.§,"D§);
            this.§6j§.removeEventListener(Event.CANCEL,this.onThemeGraphicsNotAvailable);
            this.§6j§.addEventListener(Event.COMPLETE,this.§,"D§);
            this.§6j§.addEventListener(Event.CANCEL,this.onThemeGraphicsNotAvailable);
            _loc2_ = this.getThemeGraphicsLoadList(param1);
            this.§6j§.§,%§(param1,_loc2_);
         }
         else
         {
            this.§0#v§(param1);
         }
      }
      
      protected function §0#v§(param1:String) : void
      {
         var _loc2_:§@P§ = null;
         if(this.§,!"§ && !this.§#"A§(param1))
         {
            this.§,!"§.removeEventListener(Event.COMPLETE,this.§4n§);
            this.§,!"§.removeEventListener(Event.CANCEL,this.§2!P§);
            this.§,!"§.addEventListener(Event.COMPLETE,this.§4n§);
            this.§,!"§.addEventListener(Event.CANCEL,this.§2!P§);
            _loc2_ = this.§&"%§.getBackground(param1);
            if(_loc2_)
            {
               this.§,!"§.§,%§(_loc2_.§>"H§);
            }
         }
         else
         {
            this.initialize(this.§8"x§);
         }
      }
      
      protected function §,"D§(param1:Event) : void
      {
         this.§6j§.removeEventListener(Event.COMPLETE,this.§,"D§);
         this.§6j§.removeEventListener(Event.CANCEL,this.onThemeGraphicsNotAvailable);
         this.§-#0§ = true;
         this.§0#v§(this.§8"x§.theme);
      }
      
      protected function onThemeGraphicsNotAvailable(param1:Event) : void
      {
         this.§6j§.removeEventListener(Event.COMPLETE,this.§,"D§);
         this.§6j§.removeEventListener(Event.CANCEL,this.onThemeGraphicsNotAvailable);
         this.§,#l§ = true;
      }
      
      protected function §4n§(param1:Event) : void
      {
         this.§6j§.removeEventListener(Event.COMPLETE,this.§4n§);
         this.§6j§.removeEventListener(Event.CANCEL,this.§2!P§);
         this.§-#Z§ = true;
         if(this.§-#0§ && this.§-#Z§)
         {
            this.initialize(this.§8"x§);
         }
      }
      
      protected function §2!P§(param1:Event) : void
      {
         this.§6j§.removeEventListener(Event.COMPLETE,this.§4n§);
         this.§6j§.removeEventListener(Event.CANCEL,this.§2!P§);
         this.§-#Z§ = true;
         if(this.§-#0§ && this.§-#Z§)
         {
            this.initialize(this.§8"x§);
         }
      }
      
      public function get backgroundTextureManager() : §=#;§
      {
         if(this.§[#K§)
         {
            return this.§[#K§.textureManager;
         }
         return null;
      }
      
      protected function initializePhysicsConstants(param1:§=$&§) : void
      {
         b2Settings.b2_linearSleepTolerance = b2Settings.§!$'§;
      }
      
      protected function initialize(param1:§=$&§) : void
      {
         this.§=#r§ = null;
         this.§0!,§ = false;
         if(Starling.§?"7§)
         {
            Starling.§?"7§.speed = 1;
         }
         this.initializePhysicsConstants(param1);
         this.initLevelEngine(param1);
         this.§3!?§ = this.initializeLevelBackground(param1.theme,0 / §'#e§,this.backgroundTextureManager,this.§;#g§.§`!W§());
         this.§3!?§.§0"q§(§%"T§.§=!'§());
         if(Starling.§3!I§)
         {
            Starling.§3!I§.color = this.§3!?§.§""H§;
         }
         this.§]!'§ = this.initializeLevelObjectManager(param1);
         this.§]!'§.§8"j§ = this.§%#Q§(param1.name);
         this.§,c§ = this.initializeLevelSlingshot(param1);
         this.§,"Q§ = this.initializeParticleManager(this.§ "9§,this.§2!b§);
         this.§;#g§.init();
         this.§%#c§();
         this.§ #t§();
         this.mReadyToRun = true;
         if(this.§-!q§)
         {
            this.§-!q§.addEventListeners();
         }
         if(param1.name == §,&§)
         {
            this.§;#g§.§6$8§(§8"O§);
            this.§^"u§(0);
         }
         else
         {
            §,&§ = param1.name;
         }
         this.levelInitialized();
      }
      
      protected function levelInitialized() : void
      {
         this.§]!'§.levelInitialized();
      }
      
      protected function initLevelEngine(param1:§=$&§) : void
      {
         this.mLevelEngine = new §<!A§(this);
      }
      
      protected function § #t§() : void
      {
         if(this.§,$-§)
         {
            this.§ ]§ = §,2§.initialize(this.§,$-§);
            this.§ ]§.speed = 1;
            this.§ ]§.play();
            this.§8# § = -1000;
            this.§,$-§ = null;
         }
      }
      
      public function §0&§(param1:String) : void
      {
         this.§,$-§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§ ]§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§ ]§)
         {
            if(param1)
            {
               this.§ ]§.speed = Math.min(this.§ ]§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§ ]§.speed = Math.max(this.§ ]§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§ ]§)
         {
            this.§ ]§.speed = 1;
         }
      }
      
      protected function initializeLevelObjectManager(param1:§=$&§) : §7S§
      {
         var _loc2_:String = §@P§.§-$0§;
         return new §7S§(this,param1,new Sprite(),_loc2_);
      }
      
      protected function §%#Q§(param1:String) : §0p§
      {
         if(!param1)
         {
            return null;
         }
         var _loc2_:Class = this.§@"N§[param1.toLowerCase()];
         if(!_loc2_)
         {
            return null;
         }
         return new _loc2_() as §0p§;
      }
      
      public function §0!4§(param1:String, param2:Class) : void
      {
         this.§@"N§[param1.toLowerCase()] = param2;
      }
      
      protected function initializeLevelCamera(param1:§=$&§) : §;l§
      {
         return new §;l§(this,param1);
      }
      
      protected function initializeLevelBackground(param1:String, param2:Number, param3:§=#;§, param4:Number) : §[!W§
      {
         var _loc5_:§@P§;
         if((_loc5_ = this.§&"%§.getBackground(param1)) == null)
         {
            §=#f§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §=$&§.§2"f§;
            _loc5_ = this.§&"%§.getBackground(param1);
         }
         return new §[!W§(this,_loc5_,param2,param3,param4,!Starling.§^$?§);
      }
      
      protected function initializeLevelSlingshot(param1:§=$&§) : §"b§
      {
         return new §"b§(this,param1,new Sprite());
      }
      
      protected function initializeParticleManager(param1:§2#6§, param2:§=#;§) : §>F§
      {
         return new §>F§(param1,param2);
      }
      
      public function initializeEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§=$&§ = new §=$&§();
         _loc3_.slingshotY = -12;
         var _loc4_:§5#v§;
         (_loc4_ = new §5#v§()).left = 0;
         _loc4_.top = -§;l§.§;#2§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §;l§.§;#2§;
         _loc4_.right = _loc4_.left + §;l§.§@#5§;
         _loc4_.y = -13.929;
         _loc4_.x = §;l§.§@#5§;
         _loc4_.id = §;l§.§]#w§;
         _loc3_.§'§(_loc4_);
         var _loc5_:§5#v§;
         (_loc5_ = new §5#v§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §;l§.§@#5§;
         _loc5_.bottom = _loc5_.top + §;l§.§;#2§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §;l§.§@#5§ / 2;
         _loc5_.id = §;l§.§[#n§;
         _loc3_.§'§(_loc5_);
         this.§^"Y§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§]#§ != null)
         {
            _loc3_.theme = §]#§;
         }
         this.init(_loc3_);
      }
      
      protected function §^"Y§(param1:§=$&§, param2:Boolean) : void
      {
         if(param2)
         {
            this.§?"b§(param1);
         }
      }
      
      protected function §@$ §() : Number
      {
         this.§+C§ ^= this.§+C§ << 21;
         this.§+C§ ^= this.§+C§ >>> 35;
         this.§+C§ ^= this.§+C§ << 4;
         return this.§+C§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §?"b§(param1:§=$&§) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§9"4§ = null;
         this.§+C§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < 10)
         {
            _loc4_ = 0;
            while(_loc4_ < 5)
            {
               _loc5_ = this.§@$ §() * 5;
               (_loc6_ = new §9"4§()).x = 30 + _loc4_ * 10 + this.§@$ §() * 9;
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
                  _loc6_.angle = 45 - this.§@$ §() * 90;
               }
               else
               {
                  _loc6_.y = -30 + _loc3_ * 6 - this.§@$ §() * 3 - _loc4_ * 8;
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
                  _loc6_.angle = this.§@$ §() * 360;
               }
               _loc6_.id = _loc2_;
               param1.addObject(_loc6_);
               _loc2_++;
               _loc4_++;
            }
            _loc3_++;
         }
      }
      
      private function §@"+§() : void
      {
      }
      
      protected function §=#,§() : void
      {
         if(§[!W§.§4$2§)
         {
            this.addItemToDisplayList(this.§3!?§.§7#f§);
         }
      }
      
      protected function addBackgroundSpritesToDisplayList() : void
      {
         this.addItemToDisplayList(this.§]!'§.backgroundSprite);
         this.addItemToDisplayList(this.§,"Q§.§;h§(§>F§.§1I§));
         this.addItemToDisplayList(this.§,"Q§.§;h§(§>F§.§ 4§));
      }
      
      protected function addGameSpritesToDisplayList() : void
      {
         this.addItemToDisplayList(this.§,"Q§.§;h§(§>F§.PARTICLE_GROUP_BACKGROUND_EFFECTS));
         this.addItemToDisplayList(this.§]!'§.§8!&§);
         this.addItemToDisplayList(this.§,c§.sprite);
         this.addItemToDisplayList(this.§,"Q§.§;h§(§>F§.PARTICLE_GROUP_GAME_EFFECTS));
         this.addItemToDisplayList(this.§]!'§.§2#u§);
      }
      
      protected function §%!T§() : void
      {
         this.addItemToDisplayList(this.§3!?§.§'"$§);
         if(§[!W§.§4$2§)
         {
            this.addItemToDisplayList(this.§3!?§.§?!;§);
         }
      }
      
      protected function §>q§() : void
      {
         this.addItemToDisplayList(this.§]!'§.§]#D§);
         this.addItemToDisplayList(this.§,"Q§.§;h§(§>F§.§#!H§));
         this.addItemToDisplayList(this.§,"Q§.§;h§(§>F§.PARTICLE_GROUP_FOREGROUND_EFFECTS));
      }
      
      private function §%#c§() : void
      {
         this.§=#,§();
         this.addBackgroundSpritesToDisplayList();
         this.addGameSpritesToDisplayList();
         this.§%!T§();
         this.§>q§();
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
         if(§%"T§.§7#W§ > §%"T§.§"x§)
         {
            param1 /= §%"T§.§7#W§;
            param2 /= §%"T§.§7#W§;
         }
         else
         {
            param1 /= §%"T§.§"x§;
            param2 /= §%"T§.§"x§;
         }
         param3.x = ((param1 - this.sprite.x) / §;l§.§%#3§ + this.§;#g§.§ y§) * §'#e§;
         param3.y = ((param2 - this.sprite.y) / §;l§.§%#3§ + this.§;#g§.§?"e§) * §'#e§;
         return param3;
      }
      
      public function §=#M§(param1:Number, param2:Number, param3:Point = null) : Point
      {
         if(!param3)
         {
            param3 = new Point();
         }
         param3.x = (param1 / §'#e§ - this.§;#g§.§ y§) * §;l§.§%#3§ + this.sprite.x;
         param3.y = (param2 / §'#e§ - this.§;#g§.§?"e§) * §;l§.§%#3§ + this.sprite.y;
         var _loc4_:Number = Math.max(§%"T§.§7#W§,§%"T§.§"x§);
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
            this.background.setScreenOffset(param1,param2,this.§;[§,this.§7#d§,param3,this.§4"j§,this.§8"V§);
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
      
      public function §+#b§(param1:String, param2:Number, param3:Number) : void
      {
         this.§]!'§.addObject(param1,param2,param3,0,§7S§.ID_NEXT_FREE);
      }
      
      public function §5#a§() : void
      {
         if(this.§-#$§)
         {
            this.§-#$§.visible = true;
            this.§-#$§.alpha = 0;
         }
         this.§@4§ = 0;
      }
      
      public function §?"G§(param1:Boolean, param2:Number = 0, param3:Number = 0, param4:Number = 0) : void
      {
         if(param1)
         {
            if(this.§4"k§)
            {
               this.§4"k§.§<"k§(param2);
               this.§4"k§.§[#0§(param3);
               this.§4"k§.§ #m§(param4);
            }
            else
            {
               this.§4"k§ = new §6"=§(param2,param3,param4);
            }
         }
         else
         {
            this.§;#g§.§4#&§(0,0);
            this.§4"k§ = null;
         }
      }
      
      public function clearLevel() : void
      {
         this.§3!q§.clear();
         if(this.§3!?§)
         {
            this.§3!?§.dispose();
            this.§3!?§ = null;
         }
         if(this.§]!'§)
         {
            this.§]!'§.dispose();
            this.§]!'§ = null;
         }
         this.§6!>§ = this.§["r§;
         if(this.mLevelEngine)
         {
            if(!this.mLevelEngine.§=$7§)
            {
            }
            this.mLevelEngine.clear();
            this.mLevelEngine = null;
         }
         if(this.§2!`§)
         {
            this.§2!`§.clear();
            this.§2!`§ = null;
         }
         if(this.§,c§)
         {
            this.§,c§.dispose();
            this.§,c§ = null;
         }
         if(this.§;#g§)
         {
            §8"O§ = this.§;#g§.§7#-§;
            this.§;#g§.clear();
            this.§;#g§ = null;
         }
         if(this.§,"Q§)
         {
            this.§,"Q§.dispose();
            this.§,"Q§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§3#&§ = 0;
         this.§ # § = 0;
         this.mReadyToRun = false;
         this.§^!z§ = false;
         this.§@4§ = §;#W§.§&#X§;
         if(this.§4!4§)
         {
            (this.§4!4§ as §7!P§).§ #[§.x = 0;
            (this.§4!4§ as §7!P§).§ #[§.y = 0;
         }
         if(this.§-#$§)
         {
            this.§-#$§.visible = false;
         }
         this.§ ]§ = null;
         this.§@"Y§ = null;
         if(this.§6j§)
         {
            this.§6j§.removeEventListener(Event.COMPLETE,this.§,"D§);
            this.§6j§.removeEventListener(Event.CANCEL,this.onThemeGraphicsNotAvailable);
         }
         if(this.§,!"§)
         {
            this.§,!"§.removeEventListener(Event.COMPLETE,this.§4n§);
            this.§,!"§.removeEventListener(Event.CANCEL,this.§2!P§);
         }
         this.§`p§();
         if(Starling.§3!I§)
         {
            Starling.§3!I§.color = 0;
         }
         if(this.§-!q§)
         {
            this.§-!q§.removeEventListeners();
         }
         §%"T§.§>$<§.removeEventListener(§^"&§.§>"q§,this.§##d§.onEnterFrame);
         this.§+"e§ = false;
         this.mReadyToRun = false;
      }
      
      public function gameOver(param1:int) : void
      {
      }
      
      public function § !0§() : String
      {
         if(this.§@"Y§)
         {
            return this.§@"Y§.toString();
         }
         return null;
      }
      
      public function get §="A§() : Number
      {
         if(this.§=#r§)
         {
            return this.§=#r§.speed;
         }
         return 1;
      }
      
      public function update(param1:Number, param2:Boolean) : Number
      {
         if(!this.mReadyToRun || !Starling.§]#<§())
         {
            return 0;
         }
         if(this.§6!>§ > 0)
         {
            this.§6!>§ -= param1;
         }
         if(this.§ ]§ && this.§ ]§.isPlaying)
         {
            return this.§-#!§(param1,param2);
         }
         return this.updateWithTime(param1,true,param2);
      }
      
      protected function updateWithTime(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc4_:Boolean = false;
         if(this.§=#r§)
         {
            _loc4_ = this.§=#r§.update(param1);
            param1 *= this.§=#r§.speed;
            if(Starling.§?"7§)
            {
               Starling.§?"7§.speed = this.§=#r§.speed;
            }
            if(!_loc4_)
            {
               this.§=#r§ = null;
            }
         }
         this.§ # § += param1;
         if(this.§=#S§)
         {
            this.§3#&§ += param1;
            this.§3#&§ = this.mLevelEngine.§["M§(this.§3#&§);
         }
         else
         {
            this.§3#&§ = 0;
            this.handleEngineUpdateStep(param1);
         }
         this.§,c§.update(param1,param3);
         if(param2)
         {
            this.§^"u§(param1);
         }
         this.§3!q§.update(param1);
         return param1;
      }
      
      private function §-#!§(param1:Number, param2:Boolean) : Number
      {
         var _loc4_:Number = NaN;
         var _loc3_:Number = §<!A§.§1!T§;
         if(this.§ ]§)
         {
            param1 *= this.§ ]§.speed;
            _loc4_ = this.§ # § + param1;
            while(this.§ # § + _loc3_ < _loc4_)
            {
               if(this.§ # § + _loc3_ > this.§8# §)
               {
                  this.§ ]§.step(this);
                  this.§8# § += _loc3_;
               }
               this.updateWithTime(_loc3_,false,param2);
            }
            if(_loc4_ > this.§8# § + _loc3_)
            {
               this.§ ]§.step(this);
               this.§8# § += _loc3_;
            }
            if(this.§ # § < _loc4_)
            {
               this.updateWithTime(_loc4_ - this.§ # §,true,param2);
            }
            return param1;
         }
         return param1;
      }
      
      private function §^"u§(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.§3!?§)
         {
            this.§3!?§.update(param1);
         }
         this.§]!'§.renderObjects(param1,this.mLevelEngine.§4!=§,this.§3#&§);
         this.§'#§();
         if(this.§@4§ < §;#W§.§&#X§)
         {
            this.§@4§ += param1;
            _loc2_ = §;#W§.§&#X§ / 2;
            _loc3_ = (-Math.abs(this.§@4§ - _loc2_) + _loc2_) * (§;#W§.§import§ / _loc2_);
            if(this.§-#$§)
            {
               this.§-#$§.alpha = _loc3_;
            }
         }
         else if(this.§-#$§)
         {
            this.§-#$§.visible = false;
         }
         if(this.§4"k§)
         {
            if(!this.§4"k§.§,"S§(this.§;#g§,param1))
            {
               this.§?"G§(false);
            }
         }
         this.§;#g§.§%!6§(param1);
         this.mLevelEngine.§""m§();
         this.§,"Q§.update(param1);
         this.§-"o§(param1);
         this.§8$,§(param1);
      }
      
      public function handleEngineUpdateStep(param1:Number) : void
      {
         this.objects.updateObjects(param1);
         this.§##u§();
      }
      
      protected function §'#§() : void
      {
         var _loc1_:§8"J§ = null;
         if(this.§1$-§ != null)
         {
            for each(_loc1_ in this.§1$-§)
            {
               if(!_loc1_.isLeavingTrail)
               {
                  this.§3p§(_loc1_);
               }
            }
         }
      }
      
      public function §-"o§(param1:Number) : void
      {
         var _loc2_:§1$<§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            _loc2_ = this.§]!'§.§3!n§(true);
            if(_loc2_)
            {
               _loc2_.scream();
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§]!'§.getPigCount());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            _loc2_ = this.§]!'§.§3!n§(true);
            if(_loc2_)
            {
               _loc2_.blink();
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§]!'§.getPigCount());
            }
         }
      }
      
      public function §8$,§(param1:Number) : void
      {
         var _loc2_:Array = null;
         var _loc3_:§8"J§ = null;
         var _loc4_:int = 0;
         var _loc5_:§8"J§ = null;
         var _loc6_:§1"T§ = null;
         if(this.§1G§ > 0)
         {
            this.§1G§ -= param1;
         }
         if(this.§@#C§ > 0)
         {
            this.§@#C§ -= param1;
         }
         if(this.§@#C§ <= 0 || this.§1G§ <= 0)
         {
            _loc2_ = this.§]!'§.§,#;§();
            if(_loc2_.length > 0)
            {
               _loc3_ = null;
               if(this.§@#C§ <= 0)
               {
                  _loc4_ = Math.random() * _loc2_.length;
                  _loc3_ = this.§]!'§.getObject(_loc2_[_loc4_]) as §8"J§;
                  if(_loc3_)
                  {
                     _loc3_.blink();
                     this.§@#C§ = 250 + Math.random() * 500 + 2000 / (3 + _loc2_.length);
                  }
               }
               if(this.§1G§ <= 0)
               {
                  _loc4_ = Math.random() * _loc2_.length;
                  _loc3_ = this.§]!'§.getObject(_loc2_[_loc4_]) as §8"J§;
                  if(_loc3_)
                  {
                     _loc3_.scream();
                     this.§1G§ = 1500 + Math.random() * 3000 + 4000 / (3 + _loc2_.length);
                  }
               }
            }
         }
         if(this.§`l§ <= 0)
         {
            if(_loc5_ = this.§]!'§.§^#`§())
            {
               if(_loc6_ = _loc5_.playFearSound())
               {
                  this.§`l§ = _loc6_.§6!a§;
               }
            }
         }
         else
         {
            this.§`l§ -= param1;
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999, param7:String = null) : void
      {
         if(this.§6!>§ > 0)
         {
            return;
         }
         if(param6 == -9999)
         {
            param6 = §'Y§.§2d§;
         }
         §@#z§.addScore(param1,param2);
         this.§-!q§.addScore(param1);
         if(param3 && param1 > 0 && !this.§0!,§)
         {
            this.§7#c§(param1.toString(),param4,param5,800,param6,0,0,param7);
         }
      }
      
      public function §7#c§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3, param8:String = null) : void
      {
         if(param5 == -9999)
         {
            param5 = §'Y§.§=,§;
         }
         this.§,"Q§.addParticle(§'Y§.§8!N§,§>F§.§#!H§,§'Y§.§1",§,param2,param3,param4,param1,param5,param6,param7,0,0,1,-1,false,param8);
      }
      
      public function §="-§(param1:§1#B§) : void
      {
         if(this.§1$-§ == null)
         {
            this.§1$-§ = new Array();
         }
         this.§1$-§.push(param1);
      }
      
      public function useMightyEagle() : void
      {
         this.§,c§.useMightyEagle();
         this.§]!'§.§1"w§();
         this.§0!,§ = true;
      }
      
      public function §3p§(param1:§8"J§) : void
      {
         this.§,"Q§.§2#'§(§>F§.§1I§);
         if(this.§1$-§.indexOf(param1) >= 0)
         {
            this.§1$-§.splice(this.§1$-§.indexOf(param1),1);
         }
         if(this.§1$-§.length == 0)
         {
            this.§1$-§ = null;
         }
      }
      
      public function shootBird(param1:§;M§, param2:Number, param3:Number) : §8"J§
      {
         var _loc4_:§8"J§ = §8"J§(this.§]!'§.addObject(param1.name,param1.x,param1.y,0,§7S§.ID_NEXT_FREE,true,true,true,param1.scale));
         var _loc5_:Number = param1.§=@§;
         _loc4_.§,!9§(param1.§;"R§);
         _loc4_.§=!8§(param1.§1O§);
         if(param1.§5$1§ != 0)
         {
            _loc5_ = param1.§5$1§;
         }
         var _loc6_:Number = -_loc5_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc7_:Number = _loc5_ * param2 * Math.sin(param3 / (180 / Math.PI));
         _loc4_.§ #+§(new b2Vec2(_loc6_,_loc7_),false,true);
         _loc4_.isLeavingTrail = true;
         this.camera.setAction(§;l§.§9!§);
         if(this.§@"Y§)
         {
            this.§@"Y§.shootBird(this.mLevelEngine.§3!k§,param1.x,param1.y,param2,param3);
         }
         return _loc4_;
      }
      
      public function activateSpecialPower(param1:Number, param2:Number) : void
      {
         this.§^!z§ = true;
         this.§<!c§ = param1;
         this.§&"H§ = param2;
      }
      
      private function §##u§() : void
      {
         if(!this.§^!z§)
         {
            return;
         }
         this.§^!z§ = false;
         this.§]!'§.activateSpecialPower(this.§<!c§,this.§&"H§);
         if(this.§@"Y§)
         {
            this.§@"Y§.§[$0§(this.mLevelEngine.§3!k§,this.§<!c§,this.§&"H§);
         }
      }
      
      public function §5$9§() : void
      {
         this.§]!'§.§5$9§();
      }
      
      public function §'"E§() : void
      {
         this.§]!'§.§=$=§();
      }
      
      public function §9#X§() : §=$&§
      {
         var _loc1_:§=$&§ = new §=$&§();
         _loc1_.scoreGold = this.§8"x§.scoreGold;
         _loc1_.scoreSilver = this.§8"x§.scoreSilver;
         _loc1_.scoreEagle = this.§8"x§.scoreEagle;
         _loc1_.blockDestructionScorePercentage = this.§8"x§.blockDestructionScorePercentage;
         _loc1_.worldGravity = this.§8"x§.worldGravity;
         _loc1_.borderTop = this.§8"x§.borderTop;
         _loc1_.borderGround = this.§8"x§.borderGround;
         _loc1_.borderLeft = this.§8"x§.borderLeft;
         _loc1_.borderRight = this.§8"x§.borderRight;
         this.§;#g§.§9"y§(_loc1_);
         this.§]!'§.§^$B§(_loc1_);
         this.§,c§.§4"4§(_loc1_);
         _loc1_.theme = !!this.§3!?§ ? this.§3!?§.§3!^§() : "background_blue_grass";
         return _loc1_;
      }
      
      public function §`$+§() : int
      {
         return this.§8"x§.scoreSilver;
      }
      
      public function §,"$§() : int
      {
         return this.§8"x§.scoreGold;
      }
      
      public function §4#,§(param1:int) : void
      {
         this.§8"x§.scoreSilver = param1;
      }
      
      public function §-#N§(param1:int) : void
      {
         this.§8"x§.scoreGold = param1;
      }
      
      public function §4!B§() : Number
      {
         return this.§8"x§.worldGravity;
      }
      
      public function §8^§(param1:Number) : void
      {
         this.§8"x§.worldGravity = param1;
      }
      
      public function §[!!§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(this.§2!`§)
         {
            this.§2!`§.§[!!§(param1,param2,param3,param4);
         }
         if(this.§8"x§)
         {
            this.§8"x§.borderTop = param1;
            this.§8"x§.borderGround = param2;
            this.§8"x§.borderLeft = param3;
            this.§8"x§.borderRight = param4;
         }
      }
      
      public function §0a§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§;[§ = param1;
         this.§7#d§ = param2;
         this.§4"j§ = param3;
         this.§8"V§ = param4;
         if(this.§;$1§)
         {
            this.§;$1§.§>!6§(param1,param2);
         }
         if(this.§;#g§)
         {
            this.§;#g§.§%!6§(0);
         }
      }
      
      public function §!!@§(param1:§1#B§, param2:§1#B§) : Boolean
      {
         return false;
      }
      
      public function get currentLevel() : §=$&§
      {
         return this.§8"x§;
      }
      
      public function get levelObjects() : §7S§
      {
         return this.§]!'§;
      }
      
      protected function get starling() : Starling
      {
         return this.§##d§;
      }
      
      public function get §@"H§() : int
      {
         return §2f§;
      }
      
      public function get §,"^§() : Array
      {
         return this.§3!q§.§3!@§();
      }
      
      public function §7"n§(param1:String, param2:String) : Boolean
      {
         return this.§3!q§.§"#B§(param1,param2,this);
      }
   }
}
