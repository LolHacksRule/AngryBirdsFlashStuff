package §"§#0
{
   import § "-§.§6!R§;
   import §!!k§.§0!B§;
   import §!!k§.§?!3§;
   import §!!k§.§@'§;
   import §!r§.§0N§;
   import §!r§.§4%§;
   import §!r§.§9"f§;
   import §!r§.§;!T§;
   import §!r§.§?!x§;
   import §""c§.§>"w§;
   import §#g§.§2"m§;
   import §+=§.§<T§;
   import §+=§.§`"t§;
   import §+d§.§0#&§;
   import §+d§.§2!g§;
   import §,B§.§for§;
   import §7!I§.b2Settings;
   import §7"A§.b2Vec2;
   import §7§.§8[§;
   import §9"`§.§-"H§;
   import §=!4§.§7!@§;
   import §=G§.§9v§;
   import §?"6§.§@A§;
   import §^9§.§?"E§;
   import §^9§.§^#'§;
   import §`!v§.§5!R§;
   import §`!v§.§8X§;
   import §`4§.§>K§;
   import com.angrybirds.§<!J§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import §null §.§ case§;
   import §null §.§5#§;
   import §null §.§>#-§;
   import §use§.DisplayObject;
   import §use§.Sprite;
   
   public class §;!E§
   {
      
      private static const §;"s§:int = 20;
      
      public static const §;#&§:Number = §<!J§.§8!Q§;
      
      public static const §!#-§:Number = §<!J§.§,e§;
      
      public static const §0"?§:Number = 1 / 20;
      
      public static const §[!@§:Number = §<!J§.§,e§ * §0"?§;
      
      public static const §8!E§:Number = §;#&§ * §0"?§;
      
      public static const §="I§:§0#&§ = new §0#&§(13 - 3);
      
      protected static var §=!@§:String;
      
      protected static var §`9§:Number = 1;
      
      protected static var §!!t§:String = §>#-§.§"!i§;
       
      
      protected var § +§:§9"f§;
      
      private var §9"8§:Array = null;
      
      protected var §3"k§:§>"w§;
      
      public var mLevelEngine:§!x§;
      
      protected var §"""§:§+#&§;
      
      protected var §?V§:§8[§;
      
      protected var §[N§:§%#7§;
      
      protected var §'">§:§^#'§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §%!>§:Boolean = false;
      
      protected var §8"+§:Boolean = false;
      
      protected var §^"Q§:Boolean = false;
      
      public var §9"L§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §`"p§:Number;
      
      public var §-"o§:Number;
      
      private var §`"L§:§["b§;
      
      private var §5q§:Sprite;
      
      protected var §88§:§>#-§;
      
      protected var §7§:§@A§ = null;
      
      private var §`"=§:EventDispatcher;
      
      private var §6"+§:Array;
      
      private var §=>§:§6!R§;
      
      private var §3"V§:§`"t§;
      
      protected var §9!G§:§0!B§;
      
      protected var §9"v§:§?!3§;
      
      private var §6!3§:§@'§;
      
      private var §>"%§:§@'§;
      
      private var §13§:§@'§;
      
      private var §`6§:Stage;
      
      private var §#"]§:§8!8§;
      
      protected var §"^§:§>K§;
      
      protected var §3"l§:§>K§;
      
      protected var §[D§:Number = 0.0;
      
      protected var §-"A§:String;
      
      private var §5#1§:Boolean;
      
      private var § set§:Number;
      
      private var §5!q§:Number;
      
      protected var §>!i§:§0"a§;
      
      protected var §7W§:§2"m§;
      
      protected var §+!X§:§5!R§;
      
      protected var §'""§:§5#§;
      
      protected var §'"P§:uint = 1.417339207E9;
      
      public var §4!L§:Boolean;
      
      private var §#&§:Boolean = true;
      
      protected var §>!E§:int = 0;
      
      protected var §;"k§:int = 0;
      
      protected var §3";§:Number = 1.0;
      
      protected var §]"Q§:Number = 1.0;
      
      protected var §<O§:Boolean;
      
      private var §-!'§:§2!g§;
      
      public function §;!E§(param1:Stage, param2:§2"m§, param3:§5!R§, param4:§5#§)
      {
         this.§6"+§ = [];
         super();
         this.§`"=§ = new EventDispatcher();
         this.§`6§ = param1;
         this.§7W§ = param2;
         this.§+!X§ = param3;
         this.§'""§ = param4;
         this.§9!G§ = §0!B§.§!6§;
         this.§9"v§ = this.§`H§(this.§9!G§);
         this.§6!3§ = this.initThemeGraphicsManager();
         this.§>"%§ = this.initThemeSoundsManager();
         this.§13§ = this.initCutSceneManager();
         this.§-!'§ = new §2!g§();
         var _loc5_:Stage3D = param1.stage3Ds[0];
         this.§=>§ = new §6!R§(§["b§,param1,new Rectangle(0,0,§<!J§.§8!Q§,§<!J§.§,e§),_loc5_);
         §<!J§.§#!L§.addEventListener(§7!@§.§6,§,this.§=>§.onEnterFrame);
         _loc5_.addEventListener(Event.CONTEXT3D_CREATE,this.§&"O§,false,0,true);
         this.§=>§.§^!3§ = false;
         this.§=>§.enableErrorChecking = false;
         this.§=>§.§5P§ = 2;
         this.§=>§.§9!`§();
      }
      
      public static function §4C§(param1:§?!x§, param2:§?!x§) : Number
      {
         var _loc3_:Number = param1.§=8§ - param2.§=8§;
         var _loc4_:Number = param1.§2"K§ - param2.§2"K§;
         return §@"3§(_loc3_,_loc4_);
      }
      
      public static function §@"3§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      protected function get sprite() : Sprite
      {
         if(!this.§5q§ && this.§+n§)
         {
            this.§5q§ = this.§`"L§.§+!N§;
         }
         return this.§5q§;
      }
      
      public function get §+n§() : Sprite
      {
         if(!this.§`"L§)
         {
            this.§`"L§ = this.§=>§.§9"-§ as §["b§;
            this.§`"L§.§^!G§ = false;
         }
         return this.§`"L§;
      }
      
      private function get §]S§() : DisplayObject
      {
         if(this.§+n§)
         {
            return (this.§+n§ as §["b§).§]S§;
         }
         return null;
      }
      
      public function get animationManager() : §?!3§
      {
         return this.§9"v§;
      }
      
      public function get textureManager() : §0!B§
      {
         return this.§9!G§;
      }
      
      public function get camera() : §8[§
      {
         return this.§?V§;
      }
      
      public function get objects() : §9"f§
      {
         return this.§ +§;
      }
      
      public function get particles() : §^#'§
      {
         return this.§'">§;
      }
      
      public function get background() : §>"w§
      {
         return this.§3"k§;
      }
      
      public function get slingshot() : §%#7§
      {
         return this.§[N§;
      }
      
      public function get §""P§() : §+#&§
      {
         return this.§"""§;
      }
      
      public function get stage() : Stage
      {
         return this.§`6§;
      }
      
      public function get levelItemManager() : §2"m§
      {
         return this.§7W§;
      }
      
      public function get §@!;§() : §@'§
      {
         return this.§13§;
      }
      
      protected function get §3!'§() : §@'§
      {
         return this.§6!3§;
      }
      
      public function setSlowMotion(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§>!i§ = new §0"a§(param1,param2,param3,param4);
      }
      
      public function get damageScoreMultiplier() : int
      {
         return §;!E§.§="I§.getValue();
      }
      
      public function get §<#0§() : Boolean
      {
         return this.§#&§;
      }
      
      public function set §<#0§(param1:Boolean) : void
      {
         this.§#&§ = param1;
      }
      
      public function clear() : void
      {
         if(this.§3"V§)
         {
            this.§3"V§.dispose();
         }
         if(this.§9!G§)
         {
            this.§9!G§.removeEventListener(Event.INIT,this.§="+§);
            this.§9!G§.dispose();
         }
         if(this.§6!3§ && this.§6!3§.textureManager)
         {
            this.§6!3§.textureManager.dispose();
         }
         if(this.§13§ && this.§13§.textureManager)
         {
            this.§13§.textureManager.dispose();
         }
         if(this.§=>§)
         {
            this.§=>§.dispose();
         }
      }
      
      protected function initThemeGraphicsManager() : §@'§
      {
         return new §@'§(this.§`6§.loaderInfo.parameters.assetsUrl || "",this.§`6§.loaderInfo.parameters.buildNumber || "",this.§'""§);
      }
      
      protected function initThemeSoundsManager() : §@'§
      {
         return new §@'§(this.§`6§.loaderInfo.parameters.assetsUrl || "",this.§`6§.loaderInfo.parameters.buildNumber || "",this.§'""§,false);
      }
      
      protected function initCutSceneManager() : §@'§
      {
         return new §@'§(this.§`6§.loaderInfo.parameters.assetsUrl || "",this.§`6§.loaderInfo.parameters.buildNumber || "",this.§'""§);
      }
      
      protected function §`H§(param1:§0!B§) : §?!3§
      {
         return new §?!3§(param1);
      }
      
      public function §`"V§(param1:Boolean) : void
      {
         if(§6!R§.§+!d§)
         {
            if(param1)
            {
               §6!R§.§+!d§.start();
            }
            else
            {
               §6!R§.§+!d§.stop();
               §6!R§.§+!d§.color = 0;
            }
         }
      }
      
      public function §#"6§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function §-k§(param1:§@A§) : void
      {
         if(this.§7§ != null)
         {
            this.§7§.removeEventListeners();
         }
         this.§7§ = param1;
         if(this.mReadyToRun)
         {
            this.§7§.addEventListeners();
         }
      }
      
      public function §"x§() : §>K§
      {
         return this.§"^§;
      }
      
      protected function getSpriteSheetGroup(param1:§<T§) : int
      {
         return 0;
      }
      
      public function §-" §(param1:§`"t§, param2:Function) : void
      {
         var _loc5_:§<T§ = null;
         var _loc6_:int = 0;
         this.§3"V§ = param1;
         var _loc3_:int = this.§3"V§.§<6§;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = this.§3"V§.§'!1§(_loc4_);
            _loc6_ = this.getSpriteSheetGroup(_loc5_);
            this.§9!G§.§;C§(_loc5_,_loc6_);
            _loc4_++;
         }
         if(param2 != null)
         {
            this.§`"=§.addEventListener(Event.INIT,param2);
            this.§6"+§.push(param2);
         }
         if(this.§9;§())
         {
            this.§1Q§();
         }
      }
      
      private function §9;§() : Boolean
      {
         this.§9!G§.removeEventListener(Event.INIT,this.§="+§);
         if(this.§9!G§.initializeTextures())
         {
            this.§5#0§();
            this.§<O§ = false;
            return true;
         }
         this.§9!G§.addEventListener(Event.INIT,this.§="+§);
         this.§<O§ = true;
         return false;
      }
      
      private function §="+§(param1:Event) : void
      {
         this.§9!G§.removeEventListener(Event.INIT,this.§="+§);
         this.§5#0§();
         this.§<O§ = false;
         this.§1Q§();
      }
      
      protected function §5#0§() : void
      {
         this.§9"v§.§5#0§();
         this.§7W§.initAnimations();
      }
      
      private function §&"O§(param1:Event) : void
      {
         if(!§6!R§.§^!j§())
         {
            return;
         }
         this.§9!G§.reInitializeTextures();
         if(this.§3!'§ && this.§3!'§.textureManager)
         {
            this.§3!'§.textureManager.reInitializeTextures();
         }
         if(this.§@!;§ && this.§@!;§.textureManager)
         {
            this.§@!;§.textureManager.reInitializeTextures();
         }
         if(this.§<O§)
         {
            if(this.§9;§())
            {
               this.§1Q§();
            }
         }
         if(this.§7§ != null && this.mReadyToRun)
         {
            this.§7§.addEventListeners();
         }
         if(this.§6!3§)
         {
            this.§6!3§.initializeTextures();
         }
         if(this.§13§)
         {
            if(this.§13§.textureManager)
            {
               this.§13§.initializeTextures();
            }
         }
      }
      
      private function §1Q§() : void
      {
         this.§`"=§.dispatchEvent(new Event(Event.INIT));
         this.§["H§();
      }
      
      private function §["H§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§6"+§)
         {
            this.§`"=§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§6"+§ = [];
      }
      
      public function init(param1:§>#-§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§"""§ = new §+#&§(this,param1);
         this.§?V§ = this.§6d§(param1);
         this.§`"p§ = 0;
         this.§-"o§ = 0;
         this.§5#1§ = false;
         this.mReadyToRun = false;
         this.§%!>§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         param1.theme = param1.theme || "background_blue_grass";
         §!!t§ = param1.theme;
         this.§88§ = param1;
         this.§8"+§ = this.§^"f§(param1.theme);
         this.§^"Q§ = this.§>w§(param1.theme);
         if(this.§8"+§ && this.§^"Q§)
         {
            this.initialize(param1);
         }
         else
         {
            this.§3"F§(param1.theme);
         }
         this.§7"!§(param1.name);
         §0!0§.init();
      }
      
      protected function §7"!§(param1:String) : void
      {
         this.§"^§ = new §>K§(param1);
      }
      
      protected function §^"f§(param1:String) : Boolean
      {
         if(this.§6!3§)
         {
            return false;
         }
         return true;
      }
      
      protected function §>w§(param1:String) : Boolean
      {
         var _loc2_:§8X§ = null;
         if(this.§>"%§)
         {
            _loc2_ = this.§+!X§.getBackground(param1);
            if(_loc2_)
            {
               if(_loc2_.§7"W§ && !this.§>"%§.§#"[§(_loc2_.§7"W§))
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
      
      protected function §3"F§(param1:String) : void
      {
         var _loc2_:Array = null;
         var _loc3_:§8X§ = null;
         if(this.§6!3§ && !this.§^"f§(param1))
         {
            this.§6!3§.removeEventListener(Event.COMPLETE,this.§`"7§);
            this.§6!3§.removeEventListener(Event.CANCEL,this.§0!§);
            this.§6!3§.addEventListener(Event.COMPLETE,this.§`"7§);
            this.§6!3§.addEventListener(Event.CANCEL,this.§0!§);
            _loc2_ = this.getThemeGraphicsLoadList(param1);
            this.§6!3§.§6`§(param1,_loc2_);
         }
         if(this.§>"%§ && !this.§>w§(param1))
         {
            this.§>"%§.removeEventListener(Event.COMPLETE,this.§,";§);
            this.§>"%§.removeEventListener(Event.CANCEL,this.§;L§);
            this.§>"%§.addEventListener(Event.COMPLETE,this.§,";§);
            this.§>"%§.addEventListener(Event.CANCEL,this.§;L§);
            _loc3_ = this.§+!X§.getBackground(param1);
            if(_loc3_)
            {
               this.§>"%§.§6`§(_loc3_.§7"W§);
            }
         }
      }
      
      private function §`"7§(param1:Event) : void
      {
         this.§6!3§.removeEventListener(Event.COMPLETE,this.§`"7§);
         this.§6!3§.removeEventListener(Event.CANCEL,this.§0!§);
         this.§8"+§ = true;
         if(this.§8"+§ && this.§^"Q§)
         {
            this.initialize(this.§88§);
         }
      }
      
      private function §0!§(param1:Event) : void
      {
         this.§6!3§.removeEventListener(Event.COMPLETE,this.§`"7§);
         this.§6!3§.removeEventListener(Event.CANCEL,this.§0!§);
         this.§%!>§ = true;
      }
      
      private function §,";§(param1:Event) : void
      {
         this.§6!3§.removeEventListener(Event.COMPLETE,this.§,";§);
         this.§6!3§.removeEventListener(Event.CANCEL,this.§;L§);
         this.§^"Q§ = true;
         if(this.§8"+§ && this.§^"Q§)
         {
            this.initialize(this.§88§);
         }
      }
      
      private function §;L§(param1:Event) : void
      {
         this.§6!3§.removeEventListener(Event.COMPLETE,this.§,";§);
         this.§6!3§.removeEventListener(Event.CANCEL,this.§;L§);
         this.§^"Q§ = true;
         if(this.§8"+§ && this.§^"Q§)
         {
            this.initialize(this.§88§);
         }
      }
      
      public function get backgroundTextureManager() : §0!B§
      {
         if(this.§3!'§)
         {
            return this.§3!'§.textureManager;
         }
         return null;
      }
      
      protected function initializePhysicsConstants(param1:§>#-§) : void
      {
         b2Settings.b2_linearSleepTolerance = b2Settings.§<!9§;
      }
      
      private function initialize(param1:§>#-§) : void
      {
         this.§>!i§ = null;
         this.§4!L§ = false;
         if(§6!R§.§6!V§)
         {
            §6!R§.§6!V§.speed = 1;
         }
         this.initializePhysicsConstants(param1);
         this.initLevelEngine(param1);
         this.§3"k§ = this.initializeLevelBackground(param1.theme,0 / §0"?§,this.backgroundTextureManager,this.§?V§.§1"M§());
         this.§3"k§.§]c§(§<!J§.§]""§());
         if(§6!R§.§+!d§)
         {
            §6!R§.§+!d§.color = this.§3"k§.skyColor;
         }
         this.§ +§ = this.initializeLevelObjectManager(param1);
         this.§ +§.§6"B§ = this.§8"M§(param1.name);
         this.§[N§ = this.initializeLevelSlingshot(param1);
         this.§'">§ = this.§"!1§(this.§9"v§,this.§9!G§);
         this.§?V§.init();
         this.§["[§();
         this.§while§();
         this.mReadyToRun = true;
         if(this.§7§)
         {
            this.§7§.addEventListeners();
         }
         if(param1.name == §=!@§)
         {
            this.§?V§.§!c§(§`9§);
            this.§4""§(0);
         }
         else
         {
            §=!@§ = param1.name;
         }
         this.levelInitialized();
      }
      
      protected function levelInitialized() : void
      {
         this.§ +§.levelInitialized();
      }
      
      protected function initLevelEngine(param1:§>#-§) : void
      {
         this.mLevelEngine = new §!x§(this);
      }
      
      protected function §while§() : void
      {
         if(this.§-"A§)
         {
            this.§3"l§ = §>K§.initialize(this.§-"A§);
            this.§3"l§.speed = 1;
            this.§3"l§.play();
            this.§[D§ = -1000;
            this.§-"A§ = null;
         }
      }
      
      public function §0"n§(param1:String) : void
      {
         this.§-"A§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§3"l§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§3"l§)
         {
            if(param1)
            {
               this.§3"l§.speed = Math.min(this.§3"l§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§3"l§.speed = Math.max(this.§3"l§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§3"l§)
         {
            this.§3"l§.speed = 1;
         }
      }
      
      protected function initializeLevelObjectManager(param1:§>#-§) : §9"f§
      {
         var _loc2_:String = §8X§.§ W§;
         return new §9"f§(this,param1,new Sprite(),_loc2_);
      }
      
      protected function §8"M§(param1:String) : §for§
      {
         if(!param1)
         {
            return null;
         }
         var _loc2_:Class = this.§-!'§[param1.toLowerCase()];
         if(!_loc2_)
         {
            return null;
         }
         return new _loc2_() as §for§;
      }
      
      public function §-"-§(param1:String, param2:Class) : void
      {
         this.§-!'§[param1.toLowerCase()] = param2;
      }
      
      protected function §6d§(param1:§>#-§) : §8[§
      {
         return new §8[§(this,param1);
      }
      
      protected function initializeLevelBackground(param1:String, param2:Number, param3:§0!B§, param4:Number) : §>"w§
      {
         var _loc5_:§8X§;
         if((_loc5_ = this.§+!X§.getBackground(param1)) == null)
         {
            §-"H§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §>#-§.§"!i§;
            _loc5_ = this.§+!X§.getBackground(param1);
         }
         return new §>"w§(_loc5_,param2,param3,param4,!§6!R§.§%!f§);
      }
      
      protected function initializeLevelSlingshot(param1:§>#-§) : §%#7§
      {
         return new §%#7§(this,param1,new Sprite());
      }
      
      protected function §"!1§(param1:§?!3§, param2:§0!B§) : §^#'§
      {
         return new §^#'§(param1,param2);
      }
      
      public function initializeEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§>#-§ = new §>#-§();
         _loc3_.slingshotY = -12;
         var _loc4_:§ case§;
         (_loc4_ = new § case§()).left = 0;
         _loc4_.top = -§8[§.§=b§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §8[§.§=b§;
         _loc4_.right = _loc4_.left + §8[§.§,"h§;
         _loc4_.y = -13.929;
         _loc4_.x = §8[§.§,"h§;
         _loc4_.id = §8[§.§>h§;
         _loc3_.§@0§(_loc4_);
         var _loc5_:§ case§;
         (_loc5_ = new § case§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §8[§.§,"h§;
         _loc5_.bottom = _loc5_.top + §8[§.§=b§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §8[§.§,"h§ / 2;
         _loc5_.id = §8[§.§"6§;
         _loc3_.§@0§(_loc5_);
         this.§;#%§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§!!t§ != null)
         {
            _loc3_.theme = §!!t§;
         }
         this.init(_loc3_);
      }
      
      protected function §;#%§(param1:§>#-§, param2:Boolean) : void
      {
         if(param2)
         {
            this.§4# §(param1);
         }
      }
      
      protected function §4!V§() : Number
      {
         this.§'"P§ ^= this.§'"P§ << 21;
         this.§'"P§ ^= this.§'"P§ >>> 35;
         this.§'"P§ ^= this.§'"P§ << 4;
         return this.§'"P§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §4# §(param1:§>#-§) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§9v§ = null;
         this.§'"P§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < 10)
         {
            _loc4_ = 0;
            while(_loc4_ < 5)
            {
               _loc5_ = this.§4!V§() * 5;
               (_loc6_ = new §9v§()).x = 30 + _loc4_ * 10 + this.§4!V§() * 9;
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
                  _loc6_.angle = 45 - this.§4!V§() * 90;
               }
               else
               {
                  _loc6_.y = -30 + _loc3_ * 6 - this.§4!V§() * 3 - _loc4_ * 8;
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
                  _loc6_.angle = this.§4!V§() * 360;
               }
               _loc6_.id = _loc2_;
               param1.addObject(_loc6_);
               _loc2_++;
               _loc4_++;
            }
            _loc3_++;
         }
      }
      
      private function §>"W§() : void
      {
      }
      
      protected function §%u§() : void
      {
         if(§>"w§.§2!U§)
         {
            this.§0">§(this.§3"k§.§"!M§);
         }
      }
      
      protected function §]!c§() : void
      {
         this.§0">§(this.§'">§.§9!z§(§^#'§.§0"^§));
         this.§0">§(this.§'">§.§9!z§(§^#'§.§set §));
      }
      
      protected function §6"'§() : void
      {
         this.§0">§(this.§'">§.§9!z§(§^#'§.§ "O§));
         this.§0">§(this.§ +§.§2F§);
         this.§0">§(this.§[N§.sprite);
         this.§0">§(this.§'">§.§9!z§(§^#'§.§&5§));
      }
      
      protected function §?"s§() : void
      {
         this.§0">§(this.§3"k§.§-Z§);
         if(§>"w§.§2!U§)
         {
            this.§0">§(this.§3"k§.§""V§);
         }
      }
      
      protected function §,?§() : void
      {
         this.§0">§(this.§ +§.§1!+§);
         this.§0">§(this.§'">§.§9!z§(§^#'§.§!!E§));
         this.§0">§(this.§'">§.§9!z§(§^#'§.§1!7§));
      }
      
      private function §["[§() : void
      {
         this.§%u§();
         this.§]!c§();
         this.§6"'§();
         this.§?"s§();
         this.§,?§();
      }
      
      protected function §0">§(param1:DisplayObject) : void
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
         if(§<!J§.§^K§ > §<!J§.§`1§)
         {
            param1 /= §<!J§.§^K§;
            param2 /= §<!J§.§^K§;
         }
         else
         {
            param1 /= §<!J§.§`1§;
            param2 /= §<!J§.§`1§;
         }
         param3.x = ((param1 - this.sprite.x) / §8[§.§#?§ + this.§?V§.§9![§) * §0"?§;
         param3.y = ((param2 - this.sprite.y) / §8[§.§#?§ + this.§?V§.§<V§) * §0"?§;
         return param3;
      }
      
      public function §@"U§(param1:Number, param2:Number, param3:Point = null) : Point
      {
         if(!param3)
         {
            param3 = new Point();
         }
         param3.x = (param1 / §0"?§ - this.§?V§.§9![§) * §8[§.§#?§ + this.sprite.x;
         param3.y = (param2 / §0"?§ - this.§?V§.§<V§) * §8[§.§#?§ + this.sprite.y;
         var _loc4_:Number = Math.max(§<!J§.§^K§,§<!J§.§`1§);
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
            this.background.setScreenOffset(param1,param2,this.§>!E§,this.§;"k§,param3,this.§3";§,this.§]"Q§);
         }
         if(this.objects)
         {
            this.objects.§7!G§(param1,param2);
         }
         if(this.mLevelEngine)
         {
            this.mLevelEngine.§7!G§(param1,param2);
         }
         if(this.slingshot)
         {
            this.slingshot.§7!G§(param1,param2);
         }
         if(this.particles)
         {
            this.particles.§7!G§(param1,param2);
         }
      }
      
      public function §-!!§(param1:String, param2:Number, param3:Number) : void
      {
         this.§ +§.addObject(param1,param2,param3,0,§9"f§.§["_§);
      }
      
      public function §[>§() : void
      {
         if(this.§]S§)
         {
            this.§]S§.visible = true;
            this.§]S§.alpha = 0;
         }
         this.§9"L§ = 0;
      }
      
      public function §6!m§(param1:Boolean, param2:Number = 0, param3:Number = 0, param4:Number = 0) : void
      {
         if(param1)
         {
            this.§#"]§ = new §8!8§(param2,param3,param4);
         }
         else
         {
            this.§#"]§ = null;
         }
      }
      
      public function clearLevel() : void
      {
         if(this.§3"k§)
         {
            this.§3"k§.dispose();
            this.§3"k§ = null;
         }
         if(this.§ +§)
         {
            this.§ +§.dispose();
            this.§ +§ = null;
         }
         if(this.mLevelEngine)
         {
            if(!this.mLevelEngine.§;"c§)
            {
            }
            this.mLevelEngine.clear();
            this.mLevelEngine = null;
         }
         if(this.§"""§)
         {
            this.§"""§.clear();
            this.§"""§ = null;
         }
         if(this.§[N§)
         {
            this.§[N§.dispose();
            this.§[N§ = null;
         }
         if(this.§?V§)
         {
            §`9§ = this.§?V§.§0"d§;
            this.§?V§.clear();
            this.§?V§ = null;
         }
         if(this.§'">§)
         {
            this.§'">§.dispose();
            this.§'">§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§`"p§ = 0;
         this.§-"o§ = 0;
         this.mReadyToRun = false;
         this.§5#1§ = false;
         this.§9"L§ = §96§.§#!_§;
         if(this.§+n§)
         {
            (this.§+n§ as §["b§).§"!o§.x = 0;
            (this.§+n§ as §["b§).§"!o§.y = 0;
         }
         if(this.§]S§)
         {
            this.§]S§.visible = false;
         }
         this.§3"l§ = null;
         this.§"^§ = null;
         if(this.§6!3§)
         {
            this.§6!3§.removeEventListener(Event.COMPLETE,this.§`"7§);
            this.§6!3§.removeEventListener(Event.CANCEL,this.§0!§);
         }
         if(this.§>"%§)
         {
            this.§>"%§.removeEventListener(Event.COMPLETE,this.§,";§);
            this.§>"%§.removeEventListener(Event.CANCEL,this.§;L§);
         }
         this.§["H§();
         if(§6!R§.§+!d§)
         {
            §6!R§.§+!d§.color = 0;
         }
         if(this.§7§)
         {
            this.§7§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver(param1:int) : void
      {
      }
      
      public function §#4§() : String
      {
         if(this.§"^§)
         {
            return this.§"^§.toString();
         }
         return null;
      }
      
      public function get timeSpeedMultiplier() : Number
      {
         if(this.§>!i§)
         {
            return this.§>!i§.speed;
         }
         return 1;
      }
      
      public function update(param1:Number, param2:Boolean) : Number
      {
         if(!this.mReadyToRun || !§6!R§.§^!j§())
         {
            return 0;
         }
         if(this.§3"l§ && this.§3"l§.§["z§)
         {
            return this.§+!R§(param1,param2);
         }
         return this.updateWithTime(param1,true,param2);
      }
      
      protected function updateWithTime(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc4_:Boolean = false;
         if(this.§>!i§)
         {
            _loc4_ = this.§>!i§.update(param1);
            param1 *= this.§>!i§.speed;
            if(§6!R§.§6!V§)
            {
               §6!R§.§6!V§.speed = this.§>!i§.speed;
            }
            if(!_loc4_)
            {
               this.§>!i§ = null;
            }
         }
         this.§-"o§ += param1;
         if(this.§<#0§)
         {
            this.§`"p§ += param1;
            this.§`"p§ = this.mLevelEngine.§28§(this.§`"p§);
         }
         else
         {
            this.§`"p§ = 0;
            this.handleEngineUpdateStep(param1);
         }
         this.§[N§.update(param1,param3);
         if(param2)
         {
            this.§4""§(param1);
         }
         return param1;
      }
      
      private function §+!R§(param1:Number, param2:Boolean) : Number
      {
         var _loc4_:Number = NaN;
         var _loc3_:Number = §!x§.§^"K§;
         if(this.§3"l§)
         {
            param1 *= this.§3"l§.speed;
            _loc4_ = this.§-"o§ + param1;
            while(this.§-"o§ + _loc3_ < _loc4_)
            {
               if(this.§-"o§ + _loc3_ > this.§[D§)
               {
                  this.§3"l§.step(this);
                  this.§[D§ += _loc3_;
               }
               this.updateWithTime(_loc3_,false,param2);
            }
            if(_loc4_ > this.§[D§ + _loc3_)
            {
               this.§3"l§.step(this);
               this.§[D§ += _loc3_;
            }
            if(this.§-"o§ < _loc4_)
            {
               this.updateWithTime(_loc4_ - this.§-"o§,true,param2);
            }
            return param1;
         }
         return param1;
      }
      
      private function §4""§(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         this.§3"k§.update(param1);
         this.§ +§.renderObjects(param1,this.mLevelEngine.§=!m§,this.§`"p§);
         this.§ "6§();
         if(this.§9"L§ < §96§.§#!_§)
         {
            this.§9"L§ += param1;
            _loc2_ = §96§.§#!_§ / 2;
            _loc3_ = (-Math.abs(this.§9"L§ - _loc2_) + _loc2_) * (§96§.§3b§ / _loc2_);
            if(this.§]S§)
            {
               this.§]S§.alpha = _loc3_;
            }
         }
         else if(this.§]S§)
         {
            this.§]S§.visible = false;
         }
         if(this.§#"]§)
         {
            if(!this.§#"]§.§`q§(this.§?V§,param1))
            {
               this.§6!m§(false);
            }
         }
         this.§?V§.§[f§(param1);
         this.mLevelEngine.§7j§();
         this.§'">§.update(param1);
      }
      
      public function handleEngineUpdateStep(param1:Number) : void
      {
         this.objects.updateObjects(param1);
         this.§4t§();
      }
      
      protected function § "6§() : void
      {
         var _loc1_:§0N§ = null;
         if(this.§9"8§ != null)
         {
            for each(_loc1_ in this.§9"8§)
            {
               if(!_loc1_.isLeavingTrail)
               {
                  this.§8E§(_loc1_);
               }
            }
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§4%§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            _loc2_ = this.§ +§.§9!§(true);
            if(_loc2_)
            {
               _loc2_.scream();
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§ +§.§1"?§());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            _loc2_ = this.§ +§.§9!§(true);
            if(_loc2_)
            {
               _loc2_.blink();
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§ +§.§1"?§());
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §?"E§.§?"x§;
         }
         §0!0§.addScore(param1,param2);
         this.§7§.addScore(param1);
         if(param3 && param1 > 0 && !this.§4!L§)
         {
            this.§@"H§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §@"H§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §?"E§.§"!Q§;
         }
         this.§'">§.§>#1§(§?"E§.§^"m§,§^#'§.§!!E§,§?"E§.§4v§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §]W§(param1:§?!x§) : void
      {
         if(this.§9"8§ == null)
         {
            this.§9"8§ = new Array();
         }
         this.§9"8§.push(param1);
      }
      
      public function useMightyEagle() : void
      {
         this.§[N§.useMightyEagle();
         this.§ +§.§8n§();
         this.§4!L§ = true;
      }
      
      public function §8E§(param1:§0N§) : void
      {
         this.§'">§.§%!-§(§^#'§.§0"^§);
         if(this.§9"8§.indexOf(param1) >= 0)
         {
            this.§9"8§.splice(this.§9"8§.indexOf(param1),1);
         }
         if(this.§9"8§.length == 0)
         {
            this.§9"8§ = null;
         }
      }
      
      public function shootBird(param1:§1!T§, param2:Number, param3:Number) : §;!T§
      {
         var _loc4_:§;!T§ = §;!T§(this.§ +§.addObject(param1.name,param1.x,param1.y,0,§9"f§.§["_§,true,true,true,param1.scale));
         var _loc5_:Number = param1.§5T§;
         if(param1.§<!T§ > 1)
         {
            _loc4_.§1+§(param1.§<!T§);
         }
         if(param1.§@"7§ != 0)
         {
            _loc5_ = param1.§@"7§;
         }
         var _loc6_:Number = -_loc5_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc7_:Number = _loc5_ * param2 * Math.sin(param3 / (180 / Math.PI));
         _loc4_.§]"i§(new b2Vec2(_loc6_,_loc7_),false,true);
         _loc4_.isLeavingTrail = true;
         this.camera.setAction(§8[§.§%!B§);
         if(this.§"^§)
         {
            this.§"^§.shootBird(this.mLevelEngine.§&[§,param1.x,param1.y,param2,param3);
         }
         return _loc4_;
      }
      
      public function activateSpecialPower(param1:Number, param2:Number) : void
      {
         this.§5#1§ = true;
         this.§ set§ = param1;
         this.§5!q§ = param2;
      }
      
      private function §4t§() : void
      {
         if(!this.§5#1§)
         {
            return;
         }
         this.§5#1§ = false;
         if(this.§ +§.activeObject is §;!T§)
         {
            this.§ +§.activateSpecialPower(this.§ set§,this.§5!q§);
         }
         if(this.§"^§)
         {
            this.§"^§.§!!0§(this.mLevelEngine.§&[§,this.§ set§,this.§5!q§);
         }
      }
      
      public function §%!L§() : void
      {
         this.§ +§.§%!L§();
      }
      
      public function §3",§() : void
      {
         this.§ +§.§1§();
      }
      
      public function §3!s§() : §>#-§
      {
         var _loc1_:§>#-§ = new §>#-§();
         _loc1_.scoreGold = this.§88§.scoreGold;
         _loc1_.scoreSilver = this.§88§.scoreSilver;
         this.§?V§.§#!V§(_loc1_);
         this.§ +§.§'!U§(_loc1_);
         this.§[N§.§?!&§(_loc1_);
         _loc1_.theme = this.§3"k§.§>"Y§();
         return _loc1_;
      }
      
      public function §9!2§() : int
      {
         return this.§88§.scoreSilver;
      }
      
      public function §5u§() : int
      {
         return this.§88§.scoreGold;
      }
      
      public function §%!`§(param1:int) : void
      {
         this.§88§.scoreSilver = param1;
      }
      
      public function §2f§(param1:int) : void
      {
         this.§88§.scoreGold = param1;
      }
      
      public function §1J§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§>!E§ = param1;
         this.§;"k§ = param2;
         this.§3";§ = param3;
         this.§]"Q§ = param4;
         if(this.§`"L§)
         {
            this.§`"L§.§6!i§(param1,param2);
         }
         if(this.§?V§)
         {
            this.§?V§.§[f§(0);
         }
      }
      
      public function isCollisionExcluded(param1:§?!x§, param2:§?!x§) : Boolean
      {
         return false;
      }
      
      public function get currentLevel() : §>#-§
      {
         return this.§88§;
      }
      
      public function get levelObjects() : §9"f§
      {
         return this.§ +§;
      }
      
      protected function get § 0§() : §6!R§
      {
         return this.§=>§;
      }
      
      public function get §38§() : int
      {
         return §;"s§;
      }
   }
}
