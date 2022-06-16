package §>2§
{
   import §!!P§.§,!e§;
   import §!"'§.§2"?§;
   import §&!_§.§[!j§;
   import §'!j§.Starling;
   import §'G§.§2#n§;
   import §'G§.§3$§;
   import §'G§.§^"[§;
   import §,"v§.§7!J§;
   import §,"v§.§;"n§;
   import §,"v§.§<x§;
   import §-#X§.§,!B§;
   import §-<§.§'"v§;
   import §-<§.§4[§;
   import §1#u§.§;"Q§;
   import §1#v§.§;!Y§;
   import §2!l§.§0"[§;
   import §4§.§="r§;
   import §6!3§.§!y§;
   import §6!3§.§'!§;
   import §6!3§.§;!U§;
   import §6!3§.§>#p§;
   import §6#H§.DisplayObject;
   import §6#H§.Sprite;
   import §7"p§.§6!9§;
   import §7"p§.§<#]§;
   import §8#K§.§-!o§;
   import §;$<§.§%#w§;
   import §;$<§.§2#$§;
   import §<#E§.§7"c§;
   import §?!C§.b2Vec2;
   import §?$<§.§2#W§;
   import §?N§.b2Settings;
   import §^!_§.§1"n§;
   import §^"Z§.§'!C§;
   import §`#@§.§7n§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §!6§ extends §0"[§
   {
      
      private static const §2"T§:int = 20;
      
      public static const §[#v§:Number = 1 / 20;
      
      protected static var §[#k§:String;
      
      protected static var §6$ §:Number = 1;
      
      protected static var §9"$§:String = §7!J§.§&[§;
       
      
      protected var §@"]§:§'!§;
      
      private var §3#_§:Array = null;
      
      protected var §2$2§:§,!e§;
      
      public var mLevelEngine:§5!`§;
      
      protected var §;#z§:§-#v§;
      
      protected var §^$C§:§;"Q§;
      
      protected var §`"Q§:§6#t§;
      
      protected var §5!j§:§<#]§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §@#P§:Boolean = false;
      
      protected var §4"M§:Boolean = false;
      
      protected var §;#m§:Boolean = false;
      
      public var §<$<§:Number = 1500;
      
      protected var §9!L§:int = 500;
      
      protected var §8!o§:int;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      private var §!!=§:Number;
      
      private var §1#'§:Number;
      
      private var §4!j§:Number;
      
      public var §"#;§:Number;
      
      public var §'m§:Number;
      
      private var §'"?§:§1!=§;
      
      private var §""z§:Sprite;
      
      protected var §[##§:§7!J§;
      
      protected var §&!Y§:§="r§ = null;
      
      private var §8!A§:EventDispatcher;
      
      private var §2!0§:Array;
      
      private var §,!i§:Starling;
      
      private var §[!+§:Vector.<§2#$§>;
      
      protected var §?#r§:§3$§;
      
      protected var §7!w§:§^"[§;
      
      private var §4"4§:§2#n§;
      
      private var §="e§:§2#n§;
      
      private var §<#`§:§2#n§;
      
      private var §3"K§:Stage;
      
      private var §4"6§:§?"#§;
      
      protected var §`$,§:§1"n§;
      
      protected var §4!R§:§1"n§;
      
      protected var §+r§:Number = 0.0;
      
      protected var §8Q§:String;
      
      private var §1v§:Boolean;
      
      private var §+b§:Number;
      
      private var §4!t§:Number;
      
      protected var §+#7§:§5!M§;
      
      protected var §!#J§:§2#W§;
      
      protected var §]!9§:§4[§;
      
      protected var mLevelManager:§;"n§;
      
      protected var §+#J§:uint = 1.417339207E9;
      
      public var §>q§:Boolean;
      
      private var §^!4§:Boolean = true;
      
      protected var §1b§:int = 0;
      
      protected var §^"i§:int = 0;
      
      protected var §9"q§:Number = 1.0;
      
      protected var §!!;§:Number = 1.0;
      
      protected var §#"9§:Boolean;
      
      private var §6o§:§[!j§;
      
      protected var §?!Y§:Boolean = false;
      
      private var §[g§:§'!C§;
      
      public function §!6§(param1:Stage, param2:§2#W§, param3:§4[§, param4:§;"n§)
      {
         this.§2!0§ = [];
         this.§[!+§ = new Vector.<§2#$§>();
         super();
         this.§8!A§ = new EventDispatcher();
         this.§3"K§ = param1;
         this.§!#J§ = param2;
         this.§]!9§ = param3;
         this.mLevelManager = param4;
         this.§?#r§ = §3$§.§`"H§;
         this.§7!w§ = this.initAnimationManager(this.§?#r§);
         this.§4"4§ = this.initThemeGraphicsManager();
         this.§="e§ = this.initThemeSoundsManager();
         this.§<#`§ = this.initCutSceneManager();
         this.§6o§ = new §[!j§();
         var _loc5_:Stage3D = param1.stage3Ds[0];
         this.§,!i§ = new Starling(§1!=§,param1,new Rectangle(0,0,§7n§.§1!Q§,§7n§.§##3§),_loc5_);
         _loc5_.addEventListener(Event.CONTEXT3D_CREATE,this.§%"]§,false,0,true);
         this.§,!i§.§%"+§ = false;
         this.§,!i§.enableErrorChecking = false;
         this.§,!i§.§#X§ = 2;
         this.§,!i§.§"!0§();
         this.§[g§ = new §'!C§(this);
      }
      
      public static function get §+#P§() : Number
      {
         return §7n§.§1!Q§;
      }
      
      public static function get §5"f§() : Number
      {
         return §7n§.§##3§;
      }
      
      public static function get §%$E§() : Number
      {
         return §7n§.§##3§ * §[#v§;
      }
      
      public static function get §>"9§() : Number
      {
         return §+#P§ * §[#v§;
      }
      
      public static function §+#5§(param1:§!y§, param2:§!y§) : Number
      {
         var _loc3_:Number = param1.§=!K§ - param2.§=!K§;
         var _loc4_:Number = param1.§'!T§ - param2.§'!T§;
         return §"!U§(_loc3_,_loc4_);
      }
      
      public static function §"!U§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get §@=§() : Boolean
      {
         return this.§?!Y§;
      }
      
      protected function get sprite() : Sprite
      {
         if(!this.§""z§ && this.§@!g§)
         {
            this.§""z§ = this.§'"?§.§`#N§;
         }
         return this.§""z§;
      }
      
      public function get §@!g§() : Sprite
      {
         if(!this.§'"?§)
         {
            this.§'"?§ = this.§,!i§.§;#T§ as §1!=§;
            this.§'"?§.§?#N§ = false;
         }
         return this.§'"?§;
      }
      
      private function get §[r§() : DisplayObject
      {
         if(this.§@!g§)
         {
            return (this.§@!g§ as §1!=§).§[r§;
         }
         return null;
      }
      
      public function get animationManager() : §^"[§
      {
         return this.§7!w§;
      }
      
      public function get textureManager() : §3$§
      {
         return this.§?#r§;
      }
      
      public function get camera() : §;"Q§
      {
         return this.§^$C§;
      }
      
      public function get objects() : §'!§
      {
         return this.§@"]§;
      }
      
      public function get particles() : §<#]§
      {
         return this.§5!j§;
      }
      
      public function get background() : §,!e§
      {
         return this.§2$2§;
      }
      
      public function get slingshot() : §6#t§
      {
         return this.§`"Q§;
      }
      
      public function get §;$5§() : §-#v§
      {
         return this.§;#z§;
      }
      
      public function get stage() : Stage
      {
         return this.§3"K§;
      }
      
      public function get levelItemManager() : §2#W§
      {
         return this.§!#J§;
      }
      
      public function get §&"Q§() : §2#n§
      {
         return this.§<#`§;
      }
      
      protected function get §=!R§() : §2#n§
      {
         return this.§4"4§;
      }
      
      public function setSlowMotion(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§+#7§ = new §5!M§(param1,param2,param3,param4);
      }
      
      public function get §2$5§() : Boolean
      {
         return this.§^!4§;
      }
      
      public function set §2$5§(param1:Boolean) : void
      {
         this.§^!4§ = param1;
      }
      
      public function clear() : void
      {
         var _loc2_:§2#$§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§[!+§.length)
         {
            _loc2_ = this.§[!+§[_loc1_];
            _loc2_.dispose();
            _loc1_++;
         }
         this.§[!+§ = new Vector.<§2#$§>();
         if(this.§?#r§)
         {
            this.§?#r§.removeEventListener(Event.INIT,this.§8";§);
            this.§?#r§.dispose();
         }
         if(this.§4"4§ && this.§4"4§.textureManager)
         {
            this.§4"4§.textureManager.dispose();
         }
         if(this.§<#`§ && this.§<#`§.textureManager)
         {
            this.§<#`§.textureManager.dispose();
         }
         if(this.§,!i§)
         {
            this.§,!i§.dispose();
         }
      }
      
      protected function initThemeGraphicsManager() : §2#n§
      {
         return new §2#n§(this.§3"K§.loaderInfo.parameters.assetsUrl || "",this.§3"K§.loaderInfo.parameters.buildNumber || "",this.mLevelManager);
      }
      
      protected function initThemeSoundsManager() : §2#n§
      {
         return new §2#n§(this.§3"K§.loaderInfo.parameters.assetsUrl || "",this.§3"K§.loaderInfo.parameters.buildNumber || "",this.mLevelManager,false);
      }
      
      protected function initCutSceneManager() : §2#n§
      {
         return new §2#n§(this.§3"K§.loaderInfo.parameters.assetsUrl || "",this.§3"K§.loaderInfo.parameters.buildNumber || "",this.mLevelManager);
      }
      
      protected function initAnimationManager(param1:§3$§) : §^"[§
      {
         return new §^"[§(param1);
      }
      
      public function setVisible(param1:Boolean) : void
      {
         if(Starling.§>x§)
         {
            if(param1)
            {
               Starling.§>x§.start();
            }
            else
            {
               Starling.§>x§.stop();
               Starling.§>x§.color = 0;
            }
         }
      }
      
      public function §1"`§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function setController(param1:§="r§) : void
      {
         if(this.§&!Y§ != null)
         {
            this.§&!Y§.removeEventListeners();
         }
         this.§&!Y§ = param1;
         if(this.mReadyToRun)
         {
            this.§&!Y§.addEventListeners();
         }
      }
      
      public function §2"[§() : §1"n§
      {
         return this.§`$,§;
      }
      
      protected function getSpriteSheetGroup(param1:§%#w§) : int
      {
         return 0;
      }
      
      public function §["`§(param1:§2#$§, param2:Array, param3:Function) : void
      {
         var _loc6_:§%#w§ = null;
         var _loc7_:int = 0;
         if(this.§[!+§.indexOf(param1) != -1)
         {
            return;
         }
         this.§[!+§.push(param1);
         var _loc4_:int = param1.§5!H§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc6_ = param1.§#!U§(_loc5_);
            _loc7_ = this.getSpriteSheetGroup(_loc6_);
            this.§?#r§.§+#y§(_loc6_,_loc7_);
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§8!A§.addEventListener(Event.INIT,param3);
            this.§2!0§.push(param3);
         }
         this.§?#r§.removeEventListener(Event.INIT,this.§8";§);
         if(this.§?#r§.§3"A§())
         {
            this.§!#J§.§]"5§(param2);
            this.§#"9§ = false;
            this.§;!9§();
         }
         else
         {
            this.§?#r§.addEventListener(Event.INIT,this.§8";§);
            this.§#"9§ = true;
         }
      }
      
      public function § "C§(param1:§2#$§, param2:Function) : void
      {
         var _loc5_:§%#w§ = null;
         var _loc6_:int = 0;
         if(this.§[!+§.indexOf(param1) != -1)
         {
            return;
         }
         this.§[!+§.push(param1);
         var _loc3_:int = param1.§5!H§;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.§#!U§(_loc4_);
            _loc6_ = this.getSpriteSheetGroup(_loc5_);
            this.§?#r§.§+#y§(_loc5_,_loc6_);
            _loc4_++;
         }
         if(param2 != null)
         {
            this.§8!A§.addEventListener(Event.INIT,param2);
            this.§2!0§.push(param2);
         }
         if(this.§5#"§())
         {
            this.§;!9§();
         }
      }
      
      private function §5#"§() : Boolean
      {
         this.§?#r§.removeEventListener(Event.INIT,this.§8";§);
         if(this.§?#r§.§3"A§())
         {
            this.initializeAnimations();
            this.§#"9§ = false;
            return true;
         }
         this.§?#r§.addEventListener(Event.INIT,this.§8";§);
         this.§#"9§ = true;
         return false;
      }
      
      private function §8";§(param1:Event) : void
      {
         this.§?#r§.removeEventListener(Event.INIT,this.§8";§);
         this.initializeAnimations();
         this.§#"9§ = false;
         this.§;!9§();
      }
      
      protected function initializeAnimations() : void
      {
         this.§7!w§.initializeAnimations();
         this.§!#J§.§]"5§();
      }
      
      private function §%"]§(param1:Event) : void
      {
         if(!Starling.§?"w§())
         {
            return;
         }
         this.§?#r§.reInitializeTextures();
         if(this.§=!R§ && this.§=!R§.textureManager)
         {
            this.§=!R§.textureManager.reInitializeTextures();
         }
         if(this.§&"Q§ && this.§&"Q§.textureManager)
         {
            this.§&"Q§.textureManager.reInitializeTextures();
         }
         if(this.§#"9§)
         {
            if(this.§5#"§())
            {
               this.§;!9§();
            }
         }
         if(this.§&!Y§ != null && this.mReadyToRun)
         {
            this.§&!Y§.addEventListeners();
         }
         if(this.§4"4§)
         {
            this.§4"4§.§3"A§();
         }
         if(this.§<#`§)
         {
            if(this.§<#`§.textureManager)
            {
               this.§<#`§.§3"A§();
            }
         }
      }
      
      private function §;!9§() : void
      {
         this.§8!A§.dispatchEvent(new Event(Event.INIT));
         this.§ x§();
      }
      
      private function § x§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§2!0§)
         {
            this.§8!A§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§2!0§ = [];
      }
      
      public function init(param1:§7!J§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         §9"$§ = param1.theme;
         this.§[##§ = param1;
         this.§;#z§ = this.§1"4§(param1);
         this.§^$C§ = this.initializeLevelCamera(param1);
         this.§"#;§ = 0;
         this.§'m§ = 0;
         this.§1v§ = false;
         this.mReadyToRun = false;
         this.§@#P§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         this.§!!=§ = 1500;
         this.§1#'§ = 3000;
         this.§4!j§ = 0;
         param1.theme = param1.theme || "background_blue_grass";
         this.§4"M§ = this.§ $;§(param1.theme);
         this.§;#m§ = this.§!#8§(param1.theme);
         if(this.§4"M§ && this.§;#m§)
         {
            this.initialize(param1);
         }
         else
         {
            this.loadTheme(param1.theme);
         }
         this.§+"o§(param1.name);
         § $,§.init();
         this.addEventListeners();
      }
      
      protected function §1"4§(param1:§7!J§) : §-#v§
      {
         return new §-#v§(this,param1);
      }
      
      public function addEventListeners() : void
      {
         §7n§.§-$<§.addEventListener(§2"?§.§?#Y§,this.§,!i§.onEnterFrame);
         this.§?!Y§ = true;
      }
      
      protected function §+"o§(param1:String) : void
      {
         this.§`$,§ = new §1"n§(param1);
      }
      
      protected function § $;§(param1:String) : Boolean
      {
         if(this.§4"4§)
         {
            return false;
         }
         return true;
      }
      
      protected function §!#8§(param1:String) : Boolean
      {
         var _loc2_:§'"v§ = null;
         if(this.§="e§ && !this.mLevelManager.getCurrentEpisodeModel().isTournament)
         {
            _loc2_ = this.§]!9§.getBackground(param1);
            if(_loc2_)
            {
               if(_loc2_.§7!=§ && !this.§="e§.§6!F§(_loc2_.§7!=§))
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
         this.§1"Q§(param1);
      }
      
      protected function §1"Q§(param1:String) : void
      {
         var _loc2_:Array = null;
         if(this.§4"4§ && !this.§ $;§(param1))
         {
            this.§4"4§.removeEventListener(Event.COMPLETE,this.§ V§);
            this.§4"4§.removeEventListener(Event.CANCEL,this.onThemeGraphicsNotAvailable);
            this.§4"4§.addEventListener(Event.COMPLETE,this.§ V§);
            this.§4"4§.addEventListener(Event.CANCEL,this.onThemeGraphicsNotAvailable);
            _loc2_ = this.getThemeGraphicsLoadList(param1);
            this.§4"4§.§""%§(param1,_loc2_);
         }
         else
         {
            this.§^!3§(param1);
         }
      }
      
      protected function §^!3§(param1:String) : void
      {
         var _loc2_:§'"v§ = null;
         if(this.§="e§ && !this.§!#8§(param1))
         {
            this.§="e§.removeEventListener(Event.COMPLETE,this.§<p§);
            this.§="e§.removeEventListener(Event.CANCEL,this.§7§);
            this.§="e§.addEventListener(Event.COMPLETE,this.§<p§);
            this.§="e§.addEventListener(Event.CANCEL,this.§7§);
            _loc2_ = this.§]!9§.getBackground(param1);
            if(_loc2_)
            {
               this.§="e§.§""%§(_loc2_.§7!=§);
            }
         }
         else
         {
            this.initialize(this.§[##§);
         }
      }
      
      protected function § V§(param1:Event) : void
      {
         this.§4"4§.removeEventListener(Event.COMPLETE,this.§ V§);
         this.§4"4§.removeEventListener(Event.CANCEL,this.onThemeGraphicsNotAvailable);
         this.§4"M§ = true;
         this.§^!3§(this.§[##§.theme);
      }
      
      protected function onThemeGraphicsNotAvailable(param1:Event) : void
      {
         this.§4"4§.removeEventListener(Event.COMPLETE,this.§ V§);
         this.§4"4§.removeEventListener(Event.CANCEL,this.onThemeGraphicsNotAvailable);
         this.§@#P§ = true;
      }
      
      protected function §<p§(param1:Event) : void
      {
         this.§4"4§.removeEventListener(Event.COMPLETE,this.§<p§);
         this.§4"4§.removeEventListener(Event.CANCEL,this.§7§);
         this.§;#m§ = true;
         if(this.§4"M§ && this.§;#m§)
         {
            this.initialize(this.§[##§);
         }
      }
      
      protected function §7§(param1:Event) : void
      {
         this.§4"4§.removeEventListener(Event.COMPLETE,this.§<p§);
         this.§4"4§.removeEventListener(Event.CANCEL,this.§7§);
         this.§;#m§ = true;
         if(this.§4"M§ && this.§;#m§)
         {
            this.initialize(this.§[##§);
         }
      }
      
      public function get backgroundTextureManager() : §3$§
      {
         if(this.§=!R§)
         {
            return this.§=!R§.textureManager;
         }
         return null;
      }
      
      protected function initializePhysicsConstants(param1:§7!J§) : void
      {
         b2Settings.b2_linearSleepTolerance = b2Settings.§?!l§;
      }
      
      protected function initialize(param1:§7!J§) : void
      {
         this.§+#7§ = null;
         this.§>q§ = false;
         if(Starling.§@!T§)
         {
            Starling.§@!T§.speed = 1;
         }
         this.initializePhysicsConstants(param1);
         this.initLevelEngine(param1);
         this.§2$2§ = this.initializeLevelBackground(param1.theme,0 / §[#v§,this.backgroundTextureManager,this.§^$C§.§ "c§());
         this.§2$2§.§4#P§(§7n§.§?$5§());
         if(Starling.§>x§)
         {
            Starling.§>x§.color = this.§2$2§.§ #J§;
         }
         this.§@"]§ = this.initializeLevelObjectManager(param1);
         this.§@"]§.§<!b§ = this.§="R§(param1.name);
         this.§`"Q§ = this.initializeLevelSlingshot(param1);
         this.§5!j§ = this.initializeParticleManager(this.§7!w§,this.§?#r§);
         this.§^$C§.init();
         this.§[#W§();
         this.§"$+§();
         this.mReadyToRun = true;
         if(this.§&!Y§)
         {
            this.§&!Y§.addEventListeners();
         }
         if(param1.name == §[#k§)
         {
            this.§^$C§.§8#8§(§6$ §);
            this.§1;§(0);
         }
         else
         {
            §[#k§ = param1.name;
         }
         this.levelInitialized();
      }
      
      protected function levelInitialized() : void
      {
         this.§@"]§.levelInitialized();
      }
      
      protected function initLevelEngine(param1:§7!J§) : void
      {
         this.mLevelEngine = new §5!`§(this);
      }
      
      protected function §"$+§() : void
      {
         if(this.§8Q§)
         {
            this.§4!R§ = §1"n§.initialize(this.§8Q§);
            this.§4!R§.speed = 1;
            this.§4!R§.play();
            this.§+r§ = -1000;
            this.§8Q§ = null;
         }
      }
      
      public function §8y§(param1:String) : void
      {
         this.§8Q§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§4!R§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§4!R§)
         {
            if(param1)
            {
               this.§4!R§.speed = Math.min(this.§4!R§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§4!R§.speed = Math.max(this.§4!R§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§4!R§)
         {
            this.§4!R§.speed = 1;
         }
      }
      
      protected function initializeLevelObjectManager(param1:§7!J§) : §'!§
      {
         var _loc2_:String = §'"v§.§"!B§;
         return new §'!§(this,param1,new Sprite(),_loc2_);
      }
      
      protected function §="R§(param1:String) : §7"c§
      {
         if(!param1)
         {
            return null;
         }
         var _loc2_:Class = this.§6o§[param1.toLowerCase()];
         if(!_loc2_)
         {
            return null;
         }
         return new _loc2_() as §7"c§;
      }
      
      public function §@j§(param1:String, param2:Class) : void
      {
         this.§6o§[param1.toLowerCase()] = param2;
      }
      
      protected function initializeLevelCamera(param1:§7!J§) : §;"Q§
      {
         return new §;"Q§(this,param1);
      }
      
      protected function initializeLevelBackground(param1:String, param2:Number, param3:§3$§, param4:Number) : §,!e§
      {
         var _loc5_:§'"v§;
         if((_loc5_ = this.§]!9§.getBackground(param1)) == null)
         {
            §;!Y§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §7!J§.§&[§;
            _loc5_ = this.§]!9§.getBackground(param1);
         }
         return new §,!e§(this,_loc5_,param2,param3,param4,!Starling.§&"f§);
      }
      
      protected function initializeLevelSlingshot(param1:§7!J§) : §6#t§
      {
         return new §6#t§(this,param1,new Sprite());
      }
      
      protected function initializeParticleManager(param1:§^"[§, param2:§3$§) : §<#]§
      {
         return new §<#]§(param1,param2);
      }
      
      public function initializeEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§7!J§ = new §7!J§();
         _loc3_.slingshotY = -12;
         var _loc4_:§<x§;
         (_loc4_ = new §<x§()).left = 0;
         _loc4_.top = -§;"Q§.§`"N§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §;"Q§.§`"N§;
         _loc4_.right = _loc4_.left + §;"Q§.§[$8§;
         _loc4_.y = -13.929;
         _loc4_.x = §;"Q§.§[$8§;
         _loc4_.id = §;"Q§.§-!S§;
         _loc3_.§="%§(_loc4_);
         var _loc5_:§<x§;
         (_loc5_ = new §<x§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §;"Q§.§[$8§;
         _loc5_.bottom = _loc5_.top + §;"Q§.§`"N§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §;"Q§.§[$8§ / 2;
         _loc5_.id = §;"Q§.§&!b§;
         _loc3_.§="%§(_loc5_);
         this.§]"x§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§9"$§ != null)
         {
            _loc3_.theme = §9"$§;
         }
         this.init(_loc3_);
      }
      
      protected function §]"x§(param1:§7!J§, param2:Boolean) : void
      {
         if(param2)
         {
            this.§6#_§(param1);
         }
      }
      
      protected function §%!i§() : Number
      {
         this.§+#J§ ^= this.§+#J§ << 21;
         this.§+#J§ ^= this.§+#J§ >>> 35;
         this.§+#J§ ^= this.§+#J§ << 4;
         return this.§+#J§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §6#_§(param1:§7!J§) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§,!B§ = null;
         this.§+#J§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < 10)
         {
            _loc4_ = 0;
            while(_loc4_ < 5)
            {
               _loc5_ = this.§%!i§() * 5;
               (_loc6_ = new §,!B§()).x = 30 + _loc4_ * 10 + this.§%!i§() * 9;
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
                  _loc6_.angle = 45 - this.§%!i§() * 90;
               }
               else
               {
                  _loc6_.y = -30 + _loc3_ * 6 - this.§%!i§() * 3 - _loc4_ * 8;
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
                  _loc6_.angle = this.§%!i§() * 360;
               }
               _loc6_.id = _loc2_;
               param1.addObject(_loc6_);
               _loc2_++;
               _loc4_++;
            }
            _loc3_++;
         }
      }
      
      private function § "e§() : void
      {
      }
      
      protected function §`"o§() : void
      {
         if(§,!e§.§4v§)
         {
            this.addItemToDisplayList(this.§2$2§.§7c§);
         }
      }
      
      protected function addBackgroundSpritesToDisplayList() : void
      {
         this.addItemToDisplayList(this.§@"]§.backgroundSprite);
         this.addItemToDisplayList(this.§5!j§.§3#f§(§<#]§.§4!7§));
         this.addItemToDisplayList(this.§5!j§.§3#f§(§<#]§.§@"5§));
      }
      
      protected function addGameSpritesToDisplayList() : void
      {
         this.addItemToDisplayList(this.§5!j§.§3#f§(§<#]§.PARTICLE_GROUP_BACKGROUND_EFFECTS));
         this.addItemToDisplayList(this.§@"]§.§&#c§);
         this.addItemToDisplayList(this.§`"Q§.sprite);
         this.addItemToDisplayList(this.§5!j§.§3#f§(§<#]§.PARTICLE_GROUP_GAME_EFFECTS));
         this.addItemToDisplayList(this.§@"]§.§46§);
      }
      
      protected function §=!M§() : void
      {
         this.addItemToDisplayList(this.§2$2§.§;S§);
         if(§,!e§.§4v§)
         {
            this.addItemToDisplayList(this.§2$2§.§0"%§);
         }
      }
      
      protected function §-"z§() : void
      {
         this.addItemToDisplayList(this.§@"]§.§9#W§);
         this.addItemToDisplayList(this.§5!j§.§3#f§(§<#]§.§&"<§));
         this.addItemToDisplayList(this.§5!j§.§3#f§(§<#]§.PARTICLE_GROUP_FOREGROUND_EFFECTS));
      }
      
      private function §[#W§() : void
      {
         this.§`"o§();
         this.addBackgroundSpritesToDisplayList();
         this.addGameSpritesToDisplayList();
         this.§=!M§();
         this.§-"z§();
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
         if(§7n§.§9#o§ > §7n§.§'#M§)
         {
            param1 /= §7n§.§9#o§;
            param2 /= §7n§.§9#o§;
         }
         else
         {
            param1 /= §7n§.§'#M§;
            param2 /= §7n§.§'#M§;
         }
         param3.x = ((param1 - this.sprite.x) / §;"Q§.§>m§ + this.§^$C§.§%!t§) * §[#v§;
         param3.y = ((param2 - this.sprite.y) / §;"Q§.§>m§ + this.§^$C§.§<#U§) * §[#v§;
         return param3;
      }
      
      public function §@"X§(param1:Number, param2:Number, param3:Point = null) : Point
      {
         if(!param3)
         {
            param3 = new Point();
         }
         param3.x = (param1 / §[#v§ - this.§^$C§.§%!t§) * §;"Q§.§>m§ + this.sprite.x;
         param3.y = (param2 / §[#v§ - this.§^$C§.§<#U§) * §;"Q§.§>m§ + this.sprite.y;
         var _loc4_:Number = Math.max(§7n§.§9#o§,§7n§.§'#M§);
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
            this.background.setScreenOffset(param1,param2,this.§1b§,this.§^"i§,param3,this.§9"q§,this.§!!;§);
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
      
      public function §0!w§(param1:String, param2:Number, param3:Number) : void
      {
         this.§@"]§.addObject(param1,param2,param3,0,§'!§.ID_NEXT_FREE);
      }
      
      public function §9"H§() : void
      {
         if(this.§[r§)
         {
            this.§[r§.visible = true;
            this.§[r§.alpha = 0;
         }
         this.§<$<§ = 0;
      }
      
      public function §&"!§(param1:Boolean, param2:Number = 0, param3:Number = 0, param4:Number = 0) : void
      {
         if(param1)
         {
            if(this.§4"6§)
            {
               this.§4"6§.§;"b§(param2);
               this.§4"6§.§;r§(param3);
               this.§4"6§.§1"E§(param4);
            }
            else
            {
               this.§4"6§ = new §?"#§(param2,param3,param4);
            }
         }
         else
         {
            this.§^$C§.§;$%§(0,0);
            this.§4"6§ = null;
         }
      }
      
      public function clearLevel() : void
      {
         this.§[g§.clear();
         if(this.§2$2§)
         {
            this.§2$2§.dispose();
            this.§2$2§ = null;
         }
         if(this.§@"]§)
         {
            this.§@"]§.dispose();
            this.§@"]§ = null;
         }
         this.§8!o§ = this.§9!L§;
         if(this.mLevelEngine)
         {
            if(!this.mLevelEngine.§2!e§)
            {
            }
            this.mLevelEngine.clear();
            this.mLevelEngine = null;
         }
         if(this.§;#z§)
         {
            this.§;#z§.clear();
            this.§;#z§ = null;
         }
         if(this.§`"Q§)
         {
            this.§`"Q§.dispose();
            this.§`"Q§ = null;
         }
         if(this.§^$C§)
         {
            §6$ § = this.§^$C§.§?"G§;
            this.§^$C§.clear();
            this.§^$C§ = null;
         }
         if(this.§5!j§)
         {
            this.§5!j§.dispose();
            this.§5!j§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§"#;§ = 0;
         this.§'m§ = 0;
         this.mReadyToRun = false;
         this.§1v§ = false;
         this.§<$<§ = §!!W§.§?"u§;
         if(this.§@!g§)
         {
            (this.§@!g§ as §1!=§).§2$9§.x = 0;
            (this.§@!g§ as §1!=§).§2$9§.y = 0;
         }
         if(this.§[r§)
         {
            this.§[r§.visible = false;
         }
         this.§4!R§ = null;
         this.§`$,§ = null;
         if(this.§4"4§)
         {
            this.§4"4§.removeEventListener(Event.COMPLETE,this.§ V§);
            this.§4"4§.removeEventListener(Event.CANCEL,this.onThemeGraphicsNotAvailable);
         }
         if(this.§="e§)
         {
            this.§="e§.removeEventListener(Event.COMPLETE,this.§<p§);
            this.§="e§.removeEventListener(Event.CANCEL,this.§7§);
         }
         this.§ x§();
         if(Starling.§>x§)
         {
            Starling.§>x§.color = 0;
         }
         if(this.§&!Y§)
         {
            this.§&!Y§.removeEventListeners();
         }
         §7n§.§-$<§.removeEventListener(§2"?§.§?#Y§,this.§,!i§.onEnterFrame);
         this.§?!Y§ = false;
         this.mReadyToRun = false;
      }
      
      public function gameOver(param1:int) : void
      {
      }
      
      public function §4!E§() : String
      {
         if(this.§`$,§)
         {
            return this.§`$,§.toString();
         }
         return null;
      }
      
      public function get §!x§() : Number
      {
         if(this.§+#7§)
         {
            return this.§+#7§.speed;
         }
         return 1;
      }
      
      public function update(param1:Number, param2:Boolean) : Number
      {
         if(!this.mReadyToRun || !Starling.§?"w§())
         {
            return 0;
         }
         if(this.§8!o§ > 0)
         {
            this.§8!o§ -= param1;
         }
         if(this.§4!R§ && this.§4!R§.isPlaying)
         {
            return this.§@"j§(param1,param2);
         }
         return this.updateWithTime(param1,true,param2);
      }
      
      protected function updateWithTime(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc4_:Boolean = false;
         if(this.§+#7§)
         {
            _loc4_ = this.§+#7§.update(param1);
            param1 *= this.§+#7§.speed;
            if(Starling.§@!T§)
            {
               Starling.§@!T§.speed = this.§+#7§.speed;
            }
            if(!_loc4_)
            {
               this.§+#7§ = null;
            }
         }
         this.§'m§ += param1;
         if(this.§2$5§)
         {
            this.§"#;§ += param1;
            this.§"#;§ = this.mLevelEngine.§[!_§(this.§"#;§);
         }
         else
         {
            this.§"#;§ = 0;
            this.handleEngineUpdateStep(param1);
         }
         this.§`"Q§.update(param1,param3);
         if(param2)
         {
            this.§1;§(param1);
         }
         this.§[g§.update(param1);
         return param1;
      }
      
      private function §@"j§(param1:Number, param2:Boolean) : Number
      {
         var _loc4_:Number = NaN;
         var _loc3_:Number = §5!`§.§?!Q§;
         if(this.§4!R§)
         {
            param1 *= this.§4!R§.speed;
            _loc4_ = this.§'m§ + param1;
            while(this.§'m§ + _loc3_ < _loc4_)
            {
               if(this.§'m§ + _loc3_ > this.§+r§)
               {
                  this.§4!R§.step(this);
                  this.§+r§ += _loc3_;
               }
               this.updateWithTime(_loc3_,false,param2);
            }
            if(_loc4_ > this.§+r§ + _loc3_)
            {
               this.§4!R§.step(this);
               this.§+r§ += _loc3_;
            }
            if(this.§'m§ < _loc4_)
            {
               this.updateWithTime(_loc4_ - this.§'m§,true,param2);
            }
            return param1;
         }
         return param1;
      }
      
      private function §1;§(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.§2$2§)
         {
            this.§2$2§.update(param1);
         }
         this.§@"]§.renderObjects(param1,this.mLevelEngine.§3!6§,this.§"#;§);
         this.§="c§();
         if(this.§<$<§ < §!!W§.§?"u§)
         {
            this.§<$<§ += param1;
            _loc2_ = §!!W§.§?"u§ / 2;
            _loc3_ = (-Math.abs(this.§<$<§ - _loc2_) + _loc2_) * (§!!W§.§&#n§ / _loc2_);
            if(this.§[r§)
            {
               this.§[r§.alpha = _loc3_;
            }
         }
         else if(this.§[r§)
         {
            this.§[r§.visible = false;
         }
         if(this.§4"6§)
         {
            if(!this.§4"6§.§3$8§(this.§^$C§,param1))
            {
               this.§&"!§(false);
            }
         }
         this.§^$C§.§2!_§(param1);
         this.mLevelEngine.§ #;§();
         this.§5!j§.update(param1);
         this.§;!k§(param1);
         this.§;!8§(param1);
      }
      
      public function handleEngineUpdateStep(param1:Number) : void
      {
         this.objects.updateObjects(param1);
         this.§##e§();
      }
      
      protected function §="c§() : void
      {
         var _loc1_:§;!U§ = null;
         if(this.§3#_§ != null)
         {
            for each(_loc1_ in this.§3#_§)
            {
               if(!_loc1_.isLeavingTrail)
               {
                  this.§1"w§(_loc1_);
               }
            }
         }
      }
      
      public function §;!k§(param1:Number) : void
      {
         var _loc2_:§>#p§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            _loc2_ = this.§@"]§.§##_§(true);
            if(_loc2_)
            {
               _loc2_.scream();
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§@"]§.getPigCount());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            _loc2_ = this.§@"]§.§##_§(true);
            if(_loc2_)
            {
               _loc2_.blink();
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§@"]§.getPigCount());
            }
         }
      }
      
      public function §;!8§(param1:Number) : void
      {
         var _loc2_:Array = null;
         var _loc3_:§;!U§ = null;
         var _loc4_:int = 0;
         var _loc5_:§;!U§ = null;
         var _loc6_:§-!o§ = null;
         if(this.§1#'§ > 0)
         {
            this.§1#'§ -= param1;
         }
         if(this.§!!=§ > 0)
         {
            this.§!!=§ -= param1;
         }
         if(this.§!!=§ <= 0 || this.§1#'§ <= 0)
         {
            _loc2_ = this.§@"]§.§9"s§();
            if(_loc2_.length > 0)
            {
               _loc3_ = null;
               if(this.§!!=§ <= 0)
               {
                  _loc4_ = Math.random() * _loc2_.length;
                  _loc3_ = this.§@"]§.getObject(_loc2_[_loc4_]) as §;!U§;
                  if(_loc3_)
                  {
                     _loc3_.blink();
                     this.§!!=§ = 250 + Math.random() * 500 + 2000 / (3 + _loc2_.length);
                  }
               }
               if(this.§1#'§ <= 0)
               {
                  _loc4_ = Math.random() * _loc2_.length;
                  _loc3_ = this.§@"]§.getObject(_loc2_[_loc4_]) as §;!U§;
                  if(_loc3_)
                  {
                     _loc3_.scream();
                     this.§1#'§ = 1500 + Math.random() * 3000 + 4000 / (3 + _loc2_.length);
                  }
               }
            }
         }
         if(this.§4!j§ <= 0)
         {
            if(_loc5_ = this.§@"]§.§%"i§())
            {
               if(_loc6_ = _loc5_.playFearSound())
               {
                  this.§4!j§ = _loc6_.§^#5§;
               }
            }
         }
         else
         {
            this.§4!j§ -= param1;
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999, param7:String = null) : void
      {
         if(this.§8!o§ > 0)
         {
            return;
         }
         if(param6 == -9999)
         {
            param6 = §6!9§.§^!+§;
         }
         § $,§.addScore(param1,param2);
         this.§&!Y§.addScore(param1);
         if(param3 && param1 > 0 && !this.§>q§)
         {
            this.§6"j§(param1.toString(),param4,param5,800,param6,0,0,param7);
         }
      }
      
      public function §6"j§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3, param8:String = null) : void
      {
         if(param5 == -9999)
         {
            param5 = §6!9§.§?#1§;
         }
         this.§5!j§.addParticle(§6!9§.§]"X§,§<#]§.§&"<§,§6!9§.§-D§,param2,param3,param4,param1,param5,param6,param7,0,0,1,-1,false,param8);
      }
      
      public function §-"W§(param1:§!y§) : void
      {
         if(this.§3#_§ == null)
         {
            this.§3#_§ = new Array();
         }
         this.§3#_§.push(param1);
      }
      
      public function useMightyEagle() : void
      {
         this.§`"Q§.useMightyEagle();
         this.§@"]§.§=!0§();
         this.§>q§ = true;
      }
      
      public function §1"w§(param1:§;!U§) : void
      {
         this.§5!j§.§!"_§(§<#]§.§4!7§);
         if(this.§3#_§.indexOf(param1) >= 0)
         {
            this.§3#_§.splice(this.§3#_§.indexOf(param1),1);
         }
         if(this.§3#_§.length == 0)
         {
            this.§3#_§ = null;
         }
      }
      
      public function shootBird(param1:§>#!§, param2:Number, param3:Number) : §;!U§
      {
         var _loc4_:§;!U§ = §;!U§(this.§@"]§.addObject(param1.name,param1.x,param1.y,0,§'!§.ID_NEXT_FREE,true,true,true,param1.scale));
         var _loc5_:Number = param1.§0" §;
         _loc4_.§?$&§(param1.§]!q§);
         _loc4_.§0_§(param1.§+#?§);
         if(param1.§<!+§ != 0)
         {
            _loc5_ = param1.§<!+§;
         }
         var _loc6_:Number = -_loc5_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc7_:Number = _loc5_ * param2 * Math.sin(param3 / (180 / Math.PI));
         _loc4_.§-#l§(new b2Vec2(_loc6_,_loc7_),false,true);
         _loc4_.isLeavingTrail = true;
         this.camera.setAction(§;"Q§.§!! §);
         if(this.§`$,§)
         {
            this.§`$,§.shootBird(this.mLevelEngine.§"!2§,param1.x,param1.y,param2,param3);
         }
         return _loc4_;
      }
      
      public function activateSpecialPower(param1:Number, param2:Number) : void
      {
         this.§1v§ = true;
         this.§+b§ = param1;
         this.§4!t§ = param2;
      }
      
      private function §##e§() : void
      {
         if(!this.§1v§)
         {
            return;
         }
         this.§1v§ = false;
         this.§@"]§.activateSpecialPower(this.§+b§,this.§4!t§);
         if(this.§`$,§)
         {
            this.§`$,§.§-"1§(this.mLevelEngine.§"!2§,this.§+b§,this.§4!t§);
         }
      }
      
      public function §[$@§() : void
      {
         this.§@"]§.§[$@§();
      }
      
      public function §,!!§() : void
      {
         this.§@"]§.§ "b§();
      }
      
      public function §#"x§() : §7!J§
      {
         var _loc1_:§7!J§ = new §7!J§();
         _loc1_.scoreGold = this.§[##§.scoreGold;
         _loc1_.scoreSilver = this.§[##§.scoreSilver;
         _loc1_.scoreEagle = this.§[##§.scoreEagle;
         _loc1_.blockDestructionScorePercentage = this.§[##§.blockDestructionScorePercentage;
         _loc1_.worldGravity = this.§[##§.worldGravity;
         _loc1_.borderTop = this.§[##§.borderTop;
         _loc1_.borderGround = this.§[##§.borderGround;
         _loc1_.borderLeft = this.§[##§.borderLeft;
         _loc1_.borderRight = this.§[##§.borderRight;
         this.§^$C§.§`"C§(_loc1_);
         this.§@"]§.§1#R§(_loc1_);
         this.§`"Q§.§<!4§(_loc1_);
         _loc1_.theme = !!this.§2$2§ ? this.§2$2§.§2!^§() : "background_blue_grass";
         return _loc1_;
      }
      
      public function §!#m§() : int
      {
         return this.§[##§.scoreSilver;
      }
      
      public function §#C§() : int
      {
         return this.§[##§.scoreGold;
      }
      
      public function §7!k§(param1:int) : void
      {
         this.§[##§.scoreSilver = param1;
      }
      
      public function §+#M§(param1:int) : void
      {
         this.§[##§.scoreGold = param1;
      }
      
      public function §[$+§() : Number
      {
         return this.§[##§.worldGravity;
      }
      
      public function §7$B§(param1:Number) : void
      {
         this.§[##§.worldGravity = param1;
      }
      
      public function §]"9§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(this.§;#z§)
         {
            this.§;#z§.§]"9§(param1,param2,param3,param4);
         }
         if(this.§[##§)
         {
            this.§[##§.borderTop = param1;
            this.§[##§.borderGround = param2;
            this.§[##§.borderLeft = param3;
            this.§[##§.borderRight = param4;
         }
      }
      
      public function §<#Q§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§1b§ = param1;
         this.§^"i§ = param2;
         this.§9"q§ = param3;
         this.§!!;§ = param4;
         if(this.§'"?§)
         {
            this.§'"?§.§?#G§(param1,param2);
         }
         if(this.§^$C§)
         {
            this.§^$C§.§2!_§(0);
         }
      }
      
      public function §'"C§(param1:§!y§, param2:§!y§) : Boolean
      {
         return false;
      }
      
      public function get currentLevel() : §7!J§
      {
         return this.§[##§;
      }
      
      public function get levelObjects() : §'!§
      {
         return this.§@"]§;
      }
      
      protected function get starling() : Starling
      {
         return this.§,!i§;
      }
      
      public function get §9!i§() : int
      {
         return §2"T§;
      }
      
      public function get §##7§() : Array
      {
         return this.§[g§.§;"z§();
      }
      
      public function §=R§(param1:String, param2:String) : Boolean
      {
         return this.§[g§.§%"$§(param1,param2,this);
      }
   }
}
