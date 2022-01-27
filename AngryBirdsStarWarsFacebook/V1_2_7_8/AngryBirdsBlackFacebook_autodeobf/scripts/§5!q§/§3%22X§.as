package §5!q§
{
   import §#!k§.§`L§;
   import §'"b§.§?!D§;
   import §+"f§.§+!0§;
   import §+"f§.§[_§;
   import §,#+§.§6G§;
   import §,#+§.§7!m§;
   import §,#+§.§<U§;
   import §0"I§.§5!s§;
   import §1"s§.DisplayObject;
   import §1"s§.Sprite;
   import §2!`§.§#"m§;
   import §2!`§.§;6§;
   import §3"$§.§"7§;
   import §3"$§.§&"0§;
   import §3"$§.§]k§;
   import §4"F§.§^d§;
   import §5i§.§+M§;
   import §6"R§.§!z§;
   import §6"R§.§%!0§;
   import §6"R§.§-#'§;
   import §6"R§.§4!w§;
   import §6"R§.§super§;
   import §7!S§.§>"-§;
   import §7§.§21§;
   import §7§.§8V§;
   import §7A§.§5"2§;
   import §7A§.§<1§;
   import §9!!§.§=!S§;
   import §9!s§.b2Settings;
   import §>!J§.§8e§;
   import §>P§.§!!O§;
   import §]!=§.§6"p§;
   import §^>§.b2Vec2;
   import com.angrybirds.§;!e§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §3"X§
   {
      
      private static const §7!C§:int = 20;
      
      public static const §6"t§:Number = §;!e§.§]";§;
      
      public static const §="h§:Number = §;!e§.§8"?§;
      
      public static const §;"l§:Number = 1 / 20;
      
      public static const §5"$§:Number = §;!e§.§8"?§ * §;"l§;
      
      public static const §3"m§:Number = §6"t§ * §;"l§;
      
      public static const §02§:§<1§ = new §<1§(13 - 3);
      
      protected static var §0t§:String;
      
      protected static var §6"m§:Number = 1;
      
      protected static var §[c§:String = §<U§.§[q§;
       
      
      protected var §^"8§:§super§;
      
      private var §2#6§:Array = null;
      
      protected var §!A§:§>"-§;
      
      public var mLevelEngine:§]!i§;
      
      protected var §[M§:§"!s§;
      
      protected var §+_§:§+M§;
      
      protected var §-!E§:§-R§;
      
      protected var §2@§:§#"m§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §&"=§:Boolean = false;
      
      protected var §2!§:Boolean = false;
      
      protected var §+##§:Boolean = false;
      
      public var §8[§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §[6§:Number;
      
      public var §@">§:Number;
      
      private var §<]§:§4a§;
      
      private var §""3§:Sprite;
      
      protected var §6B§:§<U§;
      
      protected var §<!f§:§6"p§ = null;
      
      private var §6#0§:EventDispatcher;
      
      private var §'1§:Array;
      
      private var §<"f§:§=!S§;
      
      private var §3y§:§8V§;
      
      protected var §-#7§:§&"0§;
      
      protected var §5#&§:§]k§;
      
      private var §5"-§:§"7§;
      
      private var §<z§:§"7§;
      
      private var §%"-§:§"7§;
      
      private var §#o§:Stage;
      
      private var §#1§:§["J§;
      
      protected var §6n§:§8e§;
      
      protected var §""y§:§8e§;
      
      protected var §6j§:Number = 0.0;
      
      protected var §]O§:String;
      
      private var §9!"§:Boolean;
      
      private var §1!2§:Number;
      
      private var § [§:Number;
      
      protected var §;"V§:§>#,§;
      
      protected var §#"§:§!!O§;
      
      protected var § G§:§+!0§;
      
      protected var § !p§:§7!m§;
      
      protected var §[z§:uint = 1.417339207E9;
      
      public var §2#1§:Boolean;
      
      private var §3"o§:Boolean = true;
      
      protected var §'"Z§:int = 0;
      
      protected var §5'§:int = 0;
      
      protected var §>"0§:Number = 1.0;
      
      protected var §0P§:Number = 1.0;
      
      protected var §2!t§:Boolean;
      
      private var §0"r§:§5"2§;
      
      public function §3"X§(param1:Stage, param2:§!!O§, param3:§+!0§, param4:§7!m§)
      {
         this.§'1§ = [];
         super();
         this.§6#0§ = new EventDispatcher();
         this.§#o§ = param1;
         this.§#"§ = param2;
         this.§ G§ = param3;
         this.§ !p§ = param4;
         this.§-#7§ = §&"0§.§-G§;
         this.§5#&§ = this.§+!Y§(this.§-#7§);
         this.§5"-§ = this.initThemeGraphicsManager();
         this.§<z§ = this.initThemeSoundsManager();
         this.§%"-§ = this.initCutSceneManager();
         this.§0"r§ = new §5"2§();
         var _loc5_:Stage3D = param1.stage3Ds[0];
         this.§<"f§ = new §=!S§(§4a§,param1,new Rectangle(0,0,§;!e§.§]";§,§;!e§.§8"?§),_loc5_);
         §;!e§.§6!v§.addEventListener(§`L§.§4f§,this.§<"f§.onEnterFrame);
         _loc5_.addEventListener(Event.CONTEXT3D_CREATE,this.§#!'§,false,0,true);
         this.§<"f§.§0!X§ = false;
         this.§<"f§.enableErrorChecking = false;
         this.§<"f§.§]!'§ = 2;
         this.§<"f§.§`!;§();
      }
      
      public static function §@"R§(param1:§!z§, param2:§!z§) : Number
      {
         var _loc3_:Number = param1.§1#§ - param2.§1#§;
         var _loc4_:Number = param1.§6#2§ - param2.§6#2§;
         return §<"2§(_loc3_,_loc4_);
      }
      
      public static function §<"2§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      protected function get sprite() : Sprite
      {
         if(!this.§""3§ && this.§]"m§)
         {
            this.§""3§ = this.§<]§.§3# §;
         }
         return this.§""3§;
      }
      
      public function get §]"m§() : Sprite
      {
         if(!this.§<]§)
         {
            this.§<]§ = this.§<"f§.§?"0§ as §4a§;
            this.§<]§.§#C§ = false;
         }
         return this.§<]§;
      }
      
      private function get §`!Y§() : DisplayObject
      {
         if(this.§]"m§)
         {
            return (this.§]"m§ as §4a§).§`!Y§;
         }
         return null;
      }
      
      public function get animationManager() : §]k§
      {
         return this.§5#&§;
      }
      
      public function get textureManager() : §&"0§
      {
         return this.§-#7§;
      }
      
      public function get camera() : §+M§
      {
         return this.§+_§;
      }
      
      public function get objects() : §super§
      {
         return this.§^"8§;
      }
      
      public function get particles() : §#"m§
      {
         return this.§2@§;
      }
      
      public function get background() : §>"-§
      {
         return this.§!A§;
      }
      
      public function get slingshot() : §-R§
      {
         return this.§-!E§;
      }
      
      public function get §;#!§() : §"!s§
      {
         return this.§[M§;
      }
      
      public function get stage() : Stage
      {
         return this.§#o§;
      }
      
      public function get levelItemManager() : §!!O§
      {
         return this.§#"§;
      }
      
      public function get §=K§() : §"7§
      {
         return this.§%"-§;
      }
      
      protected function get §!!k§() : §"7§
      {
         return this.§5"-§;
      }
      
      public function setSlowMotion(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§;"V§ = new §>#,§(param1,param2,param3,param4);
      }
      
      public function get damageScoreMultiplier() : int
      {
         return §3"X§.§02§.getValue();
      }
      
      public function get §%#6§() : Boolean
      {
         return this.§3"o§;
      }
      
      public function set §%#6§(param1:Boolean) : void
      {
         this.§3"o§ = param1;
      }
      
      public function clear() : void
      {
         if(this.§3y§)
         {
            this.§3y§.dispose();
         }
         if(this.§-#7§)
         {
            this.§-#7§.removeEventListener(Event.INIT,this.§#"8§);
            this.§-#7§.dispose();
         }
         if(this.§5"-§ && this.§5"-§.textureManager)
         {
            this.§5"-§.textureManager.dispose();
         }
         if(this.§%"-§ && this.§%"-§.textureManager)
         {
            this.§%"-§.textureManager.dispose();
         }
         if(this.§<"f§)
         {
            this.§<"f§.dispose();
         }
      }
      
      protected function initThemeGraphicsManager() : §"7§
      {
         return new §"7§(this.§#o§.loaderInfo.parameters.assetsUrl || "",this.§#o§.loaderInfo.parameters.buildNumber || "",this.§ !p§);
      }
      
      protected function initThemeSoundsManager() : §"7§
      {
         return new §"7§(this.§#o§.loaderInfo.parameters.assetsUrl || "",this.§#o§.loaderInfo.parameters.buildNumber || "",this.§ !p§,false);
      }
      
      protected function initCutSceneManager() : §"7§
      {
         return new §"7§(this.§#o§.loaderInfo.parameters.assetsUrl || "",this.§#o§.loaderInfo.parameters.buildNumber || "",this.§ !p§);
      }
      
      protected function §+!Y§(param1:§&"0§) : §]k§
      {
         return new §]k§(param1);
      }
      
      public function §5!y§(param1:Boolean) : void
      {
         if(§=!S§.§8y§)
         {
            if(param1)
            {
               §=!S§.§8y§.start();
            }
            else
            {
               §=!S§.§8y§.stop();
               §=!S§.§8y§.color = 0;
            }
         }
      }
      
      public function §+!L§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function §%!L§(param1:§6"p§) : void
      {
         if(this.§<!f§ != null)
         {
            this.§<!f§.removeEventListeners();
         }
         this.§<!f§ = param1;
         if(this.mReadyToRun)
         {
            this.§<!f§.addEventListeners();
         }
      }
      
      public function §0'§() : §8e§
      {
         return this.§6n§;
      }
      
      protected function getSpriteSheetGroup(param1:§21§) : int
      {
         return 0;
      }
      
      public function §5"E§(param1:§8V§, param2:Function) : void
      {
         var _loc5_:§21§ = null;
         var _loc6_:int = 0;
         this.§3y§ = param1;
         var _loc3_:int = this.§3y§.§6§;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = this.§3y§.§2!E§(_loc4_);
            _loc6_ = this.getSpriteSheetGroup(_loc5_);
            this.§-#7§.§>!j§(_loc5_,_loc6_);
            _loc4_++;
         }
         if(param2 != null)
         {
            this.§6#0§.addEventListener(Event.INIT,param2);
            this.§'1§.push(param2);
         }
         if(this.§<!>§())
         {
            this.§,!i§();
         }
      }
      
      private function §<!>§() : Boolean
      {
         this.§-#7§.removeEventListener(Event.INIT,this.§#"8§);
         if(this.§-#7§.initializeTextures())
         {
            this.§9!+§();
            this.§2!t§ = false;
            return true;
         }
         this.§-#7§.addEventListener(Event.INIT,this.§#"8§);
         this.§2!t§ = true;
         return false;
      }
      
      private function §#"8§(param1:Event) : void
      {
         this.§-#7§.removeEventListener(Event.INIT,this.§#"8§);
         this.§9!+§();
         this.§2!t§ = false;
         this.§,!i§();
      }
      
      protected function §9!+§() : void
      {
         this.§5#&§.§9!+§();
         this.§#"§.initAnimations();
      }
      
      private function §#!'§(param1:Event) : void
      {
         if(!§=!S§.§!!,§())
         {
            return;
         }
         this.§-#7§.reInitializeTextures();
         if(this.§!!k§ && this.§!!k§.textureManager)
         {
            this.§!!k§.textureManager.reInitializeTextures();
         }
         if(this.§=K§ && this.§=K§.textureManager)
         {
            this.§=K§.textureManager.reInitializeTextures();
         }
         if(this.§2!t§)
         {
            if(this.§<!>§())
            {
               this.§,!i§();
            }
         }
         if(this.§<!f§ != null && this.mReadyToRun)
         {
            this.§<!f§.addEventListeners();
         }
         if(this.§5"-§)
         {
            this.§5"-§.initializeTextures();
         }
         if(this.§%"-§)
         {
            if(this.§%"-§.textureManager)
            {
               this.§%"-§.initializeTextures();
            }
         }
      }
      
      private function §,!i§() : void
      {
         this.§6#0§.dispatchEvent(new Event(Event.INIT));
         this.§["l§();
      }
      
      private function §["l§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§'1§)
         {
            this.§6#0§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§'1§ = [];
      }
      
      public function init(param1:§<U§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§[M§ = new §"!s§(this,param1);
         this.§+_§ = this.§2!R§(param1);
         this.§[6§ = 0;
         this.§@">§ = 0;
         this.§9!"§ = false;
         this.mReadyToRun = false;
         this.§&"=§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         param1.theme = param1.theme || "background_blue_grass";
         §[c§ = param1.theme;
         this.§6B§ = param1;
         this.§2!§ = this.§<u§(param1.theme);
         this.§+##§ = this.§+N§(param1.theme);
         if(this.§2!§ && this.§+##§)
         {
            this.initialize(param1);
         }
         else
         {
            this.§,H§(param1.theme);
         }
         this.§"B§(param1.name);
         §"!A§.init();
      }
      
      protected function §"B§(param1:String) : void
      {
         this.§6n§ = new §8e§(param1);
      }
      
      protected function §<u§(param1:String) : Boolean
      {
         if(this.§5"-§)
         {
            return false;
         }
         return true;
      }
      
      protected function §+N§(param1:String) : Boolean
      {
         var _loc2_:§[_§ = null;
         if(this.§<z§)
         {
            _loc2_ = this.§ G§.getBackground(param1);
            if(_loc2_)
            {
               if(_loc2_.§4!B§ && !this.§<z§.§^!y§(_loc2_.§4!B§))
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
      
      protected function §,H§(param1:String) : void
      {
         var _loc2_:Array = null;
         var _loc3_:§[_§ = null;
         if(this.§5"-§ && !this.§<u§(param1))
         {
            this.§5"-§.removeEventListener(Event.COMPLETE,this.§0g§);
            this.§5"-§.removeEventListener(Event.CANCEL,this.§;!G§);
            this.§5"-§.addEventListener(Event.COMPLETE,this.§0g§);
            this.§5"-§.addEventListener(Event.CANCEL,this.§;!G§);
            _loc2_ = this.getThemeGraphicsLoadList(param1);
            this.§5"-§.§+!6§(param1,_loc2_);
         }
         if(this.§<z§ && !this.§+N§(param1))
         {
            this.§<z§.removeEventListener(Event.COMPLETE,this.§2p§);
            this.§<z§.removeEventListener(Event.CANCEL,this.§4s§);
            this.§<z§.addEventListener(Event.COMPLETE,this.§2p§);
            this.§<z§.addEventListener(Event.CANCEL,this.§4s§);
            _loc3_ = this.§ G§.getBackground(param1);
            if(_loc3_)
            {
               this.§<z§.§+!6§(_loc3_.§4!B§);
            }
         }
      }
      
      private function §0g§(param1:Event) : void
      {
         this.§5"-§.removeEventListener(Event.COMPLETE,this.§0g§);
         this.§5"-§.removeEventListener(Event.CANCEL,this.§;!G§);
         this.§2!§ = true;
         if(this.§2!§ && this.§+##§)
         {
            this.initialize(this.§6B§);
         }
      }
      
      private function §;!G§(param1:Event) : void
      {
         this.§5"-§.removeEventListener(Event.COMPLETE,this.§0g§);
         this.§5"-§.removeEventListener(Event.CANCEL,this.§;!G§);
         this.§&"=§ = true;
      }
      
      private function §2p§(param1:Event) : void
      {
         this.§5"-§.removeEventListener(Event.COMPLETE,this.§2p§);
         this.§5"-§.removeEventListener(Event.CANCEL,this.§4s§);
         this.§+##§ = true;
         if(this.§2!§ && this.§+##§)
         {
            this.initialize(this.§6B§);
         }
      }
      
      private function §4s§(param1:Event) : void
      {
         this.§5"-§.removeEventListener(Event.COMPLETE,this.§2p§);
         this.§5"-§.removeEventListener(Event.CANCEL,this.§4s§);
         this.§+##§ = true;
         if(this.§2!§ && this.§+##§)
         {
            this.initialize(this.§6B§);
         }
      }
      
      public function get backgroundTextureManager() : §&"0§
      {
         if(this.§!!k§)
         {
            return this.§!!k§.textureManager;
         }
         return null;
      }
      
      protected function initializePhysicsConstants(param1:§<U§) : void
      {
         b2Settings.b2_linearSleepTolerance = b2Settings.§<"B§;
      }
      
      private function initialize(param1:§<U§) : void
      {
         this.§;"V§ = null;
         this.§2#1§ = false;
         if(§=!S§.§ #"§)
         {
            §=!S§.§ #"§.speed = 1;
         }
         this.initializePhysicsConstants(param1);
         this.initLevelEngine(param1);
         this.§!A§ = this.initializeLevelBackground(param1.theme,0 / §;"l§,this.backgroundTextureManager,this.§+_§.§>#!§());
         this.§!A§.§&U§(§;!e§.§8!e§());
         if(§=!S§.§8y§)
         {
            §=!S§.§8y§.color = this.§!A§.skyColor;
         }
         this.§^"8§ = this.initializeLevelObjectManager(param1);
         this.§^"8§.§#"s§ = this.§&B§(param1.name);
         this.§-!E§ = this.initializeLevelSlingshot(param1);
         this.§2@§ = this.§4#5§(this.§5#&§,this.§-#7§);
         this.§+_§.init();
         this.§&H§();
         this.§[#"§();
         this.mReadyToRun = true;
         if(this.§<!f§)
         {
            this.§<!f§.addEventListeners();
         }
         if(param1.name == §0t§)
         {
            this.§+_§.§+"L§(§6"m§);
            this.§4l§(0);
         }
         else
         {
            §0t§ = param1.name;
         }
         this.levelInitialized();
      }
      
      protected function levelInitialized() : void
      {
         this.§^"8§.levelInitialized();
      }
      
      protected function initLevelEngine(param1:§<U§) : void
      {
         this.mLevelEngine = new §]!i§(this);
      }
      
      protected function §[#"§() : void
      {
         if(this.§]O§)
         {
            this.§""y§ = §8e§.initialize(this.§]O§);
            this.§""y§.speed = 1;
            this.§""y§.play();
            this.§6j§ = -1000;
            this.§]O§ = null;
         }
      }
      
      public function §6"8§(param1:String) : void
      {
         this.§]O§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§""y§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§""y§)
         {
            if(param1)
            {
               this.§""y§.speed = Math.min(this.§""y§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§""y§.speed = Math.max(this.§""y§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§""y§)
         {
            this.§""y§.speed = 1;
         }
      }
      
      protected function initializeLevelObjectManager(param1:§<U§) : §super§
      {
         var _loc2_:String = §[_§.§+!3§;
         return new §super§(this,param1,new Sprite(),_loc2_);
      }
      
      protected function §&B§(param1:String) : §?!D§
      {
         if(!param1)
         {
            return null;
         }
         var _loc2_:Class = this.§0"r§[param1.toLowerCase()];
         if(!_loc2_)
         {
            return null;
         }
         return new _loc2_() as §?!D§;
      }
      
      public function §["@§(param1:String, param2:Class) : void
      {
         this.§0"r§[param1.toLowerCase()] = param2;
      }
      
      protected function §2!R§(param1:§<U§) : §+M§
      {
         return new §+M§(this,param1);
      }
      
      protected function initializeLevelBackground(param1:String, param2:Number, param3:§&"0§, param4:Number) : §>"-§
      {
         var _loc5_:§[_§;
         if((_loc5_ = this.§ G§.getBackground(param1)) == null)
         {
            §5!s§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §<U§.§[q§;
            _loc5_ = this.§ G§.getBackground(param1);
         }
         return new §>"-§(_loc5_,param2,param3,param4,!§=!S§.§&!n§);
      }
      
      protected function initializeLevelSlingshot(param1:§<U§) : §-R§
      {
         return new §-R§(this,param1,new Sprite());
      }
      
      protected function §4#5§(param1:§]k§, param2:§&"0§) : §#"m§
      {
         return new §#"m§(param1,param2);
      }
      
      public function initializeEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§<U§ = new §<U§();
         _loc3_.slingshotY = -12;
         var _loc4_:§6G§;
         (_loc4_ = new §6G§()).left = 0;
         _loc4_.top = -§+M§.§9"6§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §+M§.§9"6§;
         _loc4_.right = _loc4_.left + §+M§.§ ";§;
         _loc4_.y = -13.929;
         _loc4_.x = §+M§.§ ";§;
         _loc4_.id = §+M§.§^G§;
         _loc3_.§5Q§(_loc4_);
         var _loc5_:§6G§;
         (_loc5_ = new §6G§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §+M§.§ ";§;
         _loc5_.bottom = _loc5_.top + §+M§.§9"6§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §+M§.§ ";§ / 2;
         _loc5_.id = §+M§.§'!O§;
         _loc3_.§5Q§(_loc5_);
         this.§##2§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§[c§ != null)
         {
            _loc3_.theme = §[c§;
         }
         this.init(_loc3_);
      }
      
      protected function §##2§(param1:§<U§, param2:Boolean) : void
      {
         if(param2)
         {
            this.§^§(param1);
         }
      }
      
      protected function §@!s§() : Number
      {
         this.§[z§ ^= this.§[z§ << 21;
         this.§[z§ ^= this.§[z§ >>> 35;
         this.§[z§ ^= this.§[z§ << 4;
         return this.§[z§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §^§(param1:§<U§) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§^d§ = null;
         this.§[z§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < 10)
         {
            _loc4_ = 0;
            while(_loc4_ < 5)
            {
               _loc5_ = this.§@!s§() * 5;
               (_loc6_ = new §^d§()).x = 30 + _loc4_ * 10 + this.§@!s§() * 9;
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
                  _loc6_.angle = 45 - this.§@!s§() * 90;
               }
               else
               {
                  _loc6_.y = -30 + _loc3_ * 6 - this.§@!s§() * 3 - _loc4_ * 8;
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
                  _loc6_.angle = this.§@!s§() * 360;
               }
               _loc6_.id = _loc2_;
               param1.addObject(_loc6_);
               _loc2_++;
               _loc4_++;
            }
            _loc3_++;
         }
      }
      
      private function §<!b§() : void
      {
      }
      
      protected function § !9§() : void
      {
         if(§>"-§.§9!m§)
         {
            this.§,"e§(this.§!A§.§-!q§);
         }
      }
      
      protected function §"E§() : void
      {
         this.§,"e§(this.§2@§.§;c§(§#"m§.§6"E§));
         this.§,"e§(this.§2@§.§;c§(§#"m§.§["A§));
      }
      
      protected function §`!A§() : void
      {
         this.§,"e§(this.§2@§.§;c§(§#"m§.§7-§));
         this.§,"e§(this.§^"8§.§6!>§);
         this.§,"e§(this.§-!E§.sprite);
         this.§,"e§(this.§2@§.§;c§(§#"m§.§=!"§));
      }
      
      protected function §0"D§() : void
      {
         this.§,"e§(this.§!A§.§9P§);
         if(§>"-§.§9!m§)
         {
            this.§,"e§(this.§!A§.§4"T§);
         }
      }
      
      protected function §"C§() : void
      {
         this.§,"e§(this.§^"8§.§1"A§);
         this.§,"e§(this.§2@§.§;c§(§#"m§.§9!c§));
         this.§,"e§(this.§2@§.§;c§(§#"m§.§!"F§));
      }
      
      private function §&H§() : void
      {
         this.§ !9§();
         this.§"E§();
         this.§`!A§();
         this.§0"D§();
         this.§"C§();
      }
      
      protected function §,"e§(param1:DisplayObject) : void
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
         if(§;!e§.§7"4§ > §;!e§.§1"6§)
         {
            param1 /= §;!e§.§7"4§;
            param2 /= §;!e§.§7"4§;
         }
         else
         {
            param1 /= §;!e§.§1"6§;
            param2 /= §;!e§.§1"6§;
         }
         param3.x = ((param1 - this.sprite.x) / §+M§.§&!u§ + this.§+_§.§&!@§) * §;"l§;
         param3.y = ((param2 - this.sprite.y) / §+M§.§&!u§ + this.§+_§.§["R§) * §;"l§;
         return param3;
      }
      
      public function §+!x§(param1:Number, param2:Number, param3:Point = null) : Point
      {
         if(!param3)
         {
            param3 = new Point();
         }
         param3.x = (param1 / §;"l§ - this.§+_§.§&!@§) * §+M§.§&!u§ + this.sprite.x;
         param3.y = (param2 / §;"l§ - this.§+_§.§["R§) * §+M§.§&!u§ + this.sprite.y;
         var _loc4_:Number = Math.max(§;!e§.§7"4§,§;!e§.§1"6§);
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
            this.background.setScreenOffset(param1,param2,this.§'"Z§,this.§5'§,param3,this.§>"0§,this.§0P§);
         }
         if(this.objects)
         {
            this.objects.§6#3§(param1,param2);
         }
         if(this.mLevelEngine)
         {
            this.mLevelEngine.§6#3§(param1,param2);
         }
         if(this.slingshot)
         {
            this.slingshot.§6#3§(param1,param2);
         }
         if(this.particles)
         {
            this.particles.§6#3§(param1,param2);
         }
      }
      
      public function §%"#§(param1:String, param2:Number, param3:Number) : void
      {
         this.§^"8§.addObject(param1,param2,param3,0,§super§.§4"D§);
      }
      
      public function §if §() : void
      {
         if(this.§`!Y§)
         {
            this.§`!Y§.visible = true;
            this.§`!Y§.alpha = 0;
         }
         this.§8[§ = 0;
      }
      
      public function §6X§(param1:Boolean, param2:Number = 0, param3:Number = 0, param4:Number = 0) : void
      {
         if(param1)
         {
            this.§#1§ = new §["J§(param2,param3,param4);
         }
         else
         {
            this.§#1§ = null;
         }
      }
      
      public function clearLevel() : void
      {
         if(this.§!A§)
         {
            this.§!A§.dispose();
            this.§!A§ = null;
         }
         if(this.§^"8§)
         {
            this.§^"8§.dispose();
            this.§^"8§ = null;
         }
         if(this.mLevelEngine)
         {
            if(!this.mLevelEngine.§>!n§)
            {
            }
            this.mLevelEngine.clear();
            this.mLevelEngine = null;
         }
         if(this.§[M§)
         {
            this.§[M§.clear();
            this.§[M§ = null;
         }
         if(this.§-!E§)
         {
            this.§-!E§.dispose();
            this.§-!E§ = null;
         }
         if(this.§+_§)
         {
            §6"m§ = this.§+_§.§ #2§;
            this.§+_§.clear();
            this.§+_§ = null;
         }
         if(this.§2@§)
         {
            this.§2@§.dispose();
            this.§2@§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§[6§ = 0;
         this.§@">§ = 0;
         this.mReadyToRun = false;
         this.§9!"§ = false;
         this.§8[§ = §<"n§.§9>§;
         if(this.§]"m§)
         {
            (this.§]"m§ as §4a§).§@#!§.x = 0;
            (this.§]"m§ as §4a§).§@#!§.y = 0;
         }
         if(this.§`!Y§)
         {
            this.§`!Y§.visible = false;
         }
         this.§""y§ = null;
         this.§6n§ = null;
         if(this.§5"-§)
         {
            this.§5"-§.removeEventListener(Event.COMPLETE,this.§0g§);
            this.§5"-§.removeEventListener(Event.CANCEL,this.§;!G§);
         }
         if(this.§<z§)
         {
            this.§<z§.removeEventListener(Event.COMPLETE,this.§2p§);
            this.§<z§.removeEventListener(Event.CANCEL,this.§4s§);
         }
         this.§["l§();
         if(§=!S§.§8y§)
         {
            §=!S§.§8y§.color = 0;
         }
         if(this.§<!f§)
         {
            this.§<!f§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver(param1:int) : void
      {
      }
      
      public function §4i§() : String
      {
         if(this.§6n§)
         {
            return this.§6n§.toString();
         }
         return null;
      }
      
      public function get timeSpeedMultiplier() : Number
      {
         if(this.§;"V§)
         {
            return this.§;"V§.speed;
         }
         return 1;
      }
      
      public function update(param1:Number, param2:Boolean) : Number
      {
         if(!this.mReadyToRun || !§=!S§.§!!,§())
         {
            return 0;
         }
         if(this.§""y§ && this.§""y§.§^"h§)
         {
            return this.§!s§(param1,param2);
         }
         return this.updateWithTime(param1,true,param2);
      }
      
      protected function updateWithTime(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc4_:Boolean = false;
         if(this.§;"V§)
         {
            _loc4_ = this.§;"V§.update(param1);
            param1 *= this.§;"V§.speed;
            if(§=!S§.§ #"§)
            {
               §=!S§.§ #"§.speed = this.§;"V§.speed;
            }
            if(!_loc4_)
            {
               this.§;"V§ = null;
            }
         }
         this.§@">§ += param1;
         if(this.§%#6§)
         {
            this.§[6§ += param1;
            this.§[6§ = this.mLevelEngine.§^"J§(this.§[6§);
         }
         else
         {
            this.§[6§ = 0;
            this.handleEngineUpdateStep(param1);
         }
         this.§-!E§.update(param1,param3);
         if(param2)
         {
            this.§4l§(param1);
         }
         return param1;
      }
      
      private function §!s§(param1:Number, param2:Boolean) : Number
      {
         var _loc4_:Number = NaN;
         var _loc3_:Number = §]!i§.§4"Q§;
         if(this.§""y§)
         {
            param1 *= this.§""y§.speed;
            _loc4_ = this.§@">§ + param1;
            while(this.§@">§ + _loc3_ < _loc4_)
            {
               if(this.§@">§ + _loc3_ > this.§6j§)
               {
                  this.§""y§.step(this);
                  this.§6j§ += _loc3_;
               }
               this.updateWithTime(_loc3_,false,param2);
            }
            if(_loc4_ > this.§6j§ + _loc3_)
            {
               this.§""y§.step(this);
               this.§6j§ += _loc3_;
            }
            if(this.§@">§ < _loc4_)
            {
               this.updateWithTime(_loc4_ - this.§@">§,true,param2);
            }
            return param1;
         }
         return param1;
      }
      
      private function §4l§(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         this.§!A§.update(param1);
         this.§^"8§.renderObjects(param1,this.mLevelEngine.§>C§,this.§[6§);
         this.§7!c§();
         if(this.§8[§ < §<"n§.§9>§)
         {
            this.§8[§ += param1;
            _loc2_ = §<"n§.§9>§ / 2;
            _loc3_ = (-Math.abs(this.§8[§ - _loc2_) + _loc2_) * (§<"n§.§'"f§ / _loc2_);
            if(this.§`!Y§)
            {
               this.§`!Y§.alpha = _loc3_;
            }
         }
         else if(this.§`!Y§)
         {
            this.§`!Y§.visible = false;
         }
         if(this.§#1§)
         {
            if(!this.§#1§.§3!H§(this.§+_§,param1))
            {
               this.§6X§(false);
            }
         }
         this.§+_§.§5"5§(param1);
         this.mLevelEngine.§&i§();
         this.§2@§.update(param1);
      }
      
      public function handleEngineUpdateStep(param1:Number) : void
      {
         this.objects.updateObjects(param1);
         this.§?G§();
      }
      
      protected function §7!c§() : void
      {
         var _loc1_:§4!w§ = null;
         if(this.§2#6§ != null)
         {
            for each(_loc1_ in this.§2#6§)
            {
               if(!_loc1_.isLeavingTrail)
               {
                  this.§<!p§(_loc1_);
               }
            }
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§-#'§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            _loc2_ = this.§^"8§.§`4§(true);
            if(_loc2_)
            {
               _loc2_.scream();
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§^"8§.§[!r§());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            _loc2_ = this.§^"8§.§`4§(true);
            if(_loc2_)
            {
               _loc2_.blink();
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§^"8§.§[!r§());
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §;6§.§^X§;
         }
         §"!A§.addScore(param1,param2);
         this.§<!f§.addScore(param1);
         if(param3 && param1 > 0 && !this.§2#1§)
         {
            this.§3!0§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §3!0§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §;6§.§1"R§;
         }
         this.§2@§.§[#$§(§;6§.§4! §,§#"m§.§9!c§,§;6§.§@"H§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §4^§(param1:§!z§) : void
      {
         if(this.§2#6§ == null)
         {
            this.§2#6§ = new Array();
         }
         this.§2#6§.push(param1);
      }
      
      public function useMightyEagle() : void
      {
         this.§-!E§.useMightyEagle();
         this.§^"8§.§5r§();
         this.§2#1§ = true;
      }
      
      public function §<!p§(param1:§4!w§) : void
      {
         this.§2@§.§<a§(§#"m§.§6"E§);
         if(this.§2#6§.indexOf(param1) >= 0)
         {
            this.§2#6§.splice(this.§2#6§.indexOf(param1),1);
         }
         if(this.§2#6§.length == 0)
         {
            this.§2#6§ = null;
         }
      }
      
      public function shootBird(param1:§+e§, param2:Number, param3:Number) : §%!0§
      {
         var _loc4_:§%!0§ = §%!0§(this.§^"8§.addObject(param1.name,param1.x,param1.y,0,§super§.§4"D§,true,true,true,param1.scale));
         var _loc5_:Number = param1.§,!§;
         if(param1.§,"a§ > 1)
         {
            _loc4_.§="?§(param1.§,"a§);
         }
         if(param1.§=!8§ != 0)
         {
            _loc5_ = param1.§=!8§;
         }
         var _loc6_:Number = -_loc5_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc7_:Number = _loc5_ * param2 * Math.sin(param3 / (180 / Math.PI));
         _loc4_.§?""§(new b2Vec2(_loc6_,_loc7_),false,true);
         _loc4_.isLeavingTrail = true;
         this.camera.setAction(§+M§.§&R§);
         if(this.§6n§)
         {
            this.§6n§.shootBird(this.mLevelEngine.§`"+§,param1.x,param1.y,param2,param3);
         }
         return _loc4_;
      }
      
      public function activateSpecialPower(param1:Number, param2:Number) : void
      {
         this.§9!"§ = true;
         this.§1!2§ = param1;
         this.§ [§ = param2;
      }
      
      private function §?G§() : void
      {
         if(!this.§9!"§)
         {
            return;
         }
         this.§9!"§ = false;
         if(this.§^"8§.activeObject is §%!0§)
         {
            this.§^"8§.activateSpecialPower(this.§1!2§,this.§ [§);
         }
         if(this.§6n§)
         {
            this.§6n§.§6" §(this.mLevelEngine.§`"+§,this.§1!2§,this.§ [§);
         }
      }
      
      public function §0"&§() : void
      {
         this.§^"8§.§0"&§();
      }
      
      public function §[""§() : void
      {
         this.§^"8§.§+"k§();
      }
      
      public function §`#,§() : §<U§
      {
         var _loc1_:§<U§ = new §<U§();
         _loc1_.scoreGold = this.§6B§.scoreGold;
         _loc1_.scoreSilver = this.§6B§.scoreSilver;
         this.§+_§.§0"'§(_loc1_);
         this.§^"8§.§"!3§(_loc1_);
         this.§-!E§.§8#2§(_loc1_);
         _loc1_.theme = this.§!A§.§2V§();
         return _loc1_;
      }
      
      public function §[k§() : int
      {
         return this.§6B§.scoreSilver;
      }
      
      public function §""w§() : int
      {
         return this.§6B§.scoreGold;
      }
      
      public function §'#&§(param1:int) : void
      {
         this.§6B§.scoreSilver = param1;
      }
      
      public function §3h§(param1:int) : void
      {
         this.§6B§.scoreGold = param1;
      }
      
      public function §`P§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§'"Z§ = param1;
         this.§5'§ = param2;
         this.§>"0§ = param3;
         this.§0P§ = param4;
         if(this.§<]§)
         {
            this.§<]§.§[#3§(param1,param2);
         }
         if(this.§+_§)
         {
            this.§+_§.§5"5§(0);
         }
      }
      
      public function isCollisionExcluded(param1:§!z§, param2:§!z§) : Boolean
      {
         return false;
      }
      
      public function get currentLevel() : §<U§
      {
         return this.§6B§;
      }
      
      public function get levelObjects() : §super§
      {
         return this.§^"8§;
      }
      
      protected function get §@! §() : §=!S§
      {
         return this.§<"f§;
      }
      
      public function get §4!e§() : int
      {
         return §7!C§;
      }
   }
}
