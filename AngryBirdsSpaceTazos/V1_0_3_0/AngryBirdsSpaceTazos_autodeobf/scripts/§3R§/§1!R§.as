package §3R§
{
   import §!u§.§'!X§;
   import §!u§.§8"#§;
   import §#!5§.§1e§;
   import §&!3§.§0!W§;
   import §'!n§.§??§;
   import §+=§.§5h§;
   import §1f§.§9H§;
   import §3>§.§8!6§;
   import §4",§.§,!j§;
   import §4",§.§3v§;
   import §4",§.§8"6§;
   import §4"@§.DisplayObject;
   import §4"@§.Sprite;
   import §5!<§.§5!l§;
   import §5"D§.§1"G§;
   import §5"D§.§3!3§;
   import §5"D§.§6!!§;
   import §5"D§.§9V§;
   import §5"D§.§>q§;
   import §5s§.§`!<§;
   import §6!C§.§6E§;
   import §6!M§.§8"3§;
   import §7!C§.§8!w§;
   import §8K§.b2Settings;
   import §<!<§.§0`§;
   import §<!<§.§1!q§;
   import §>"$§.§0!!§;
   import §>"$§.§7!v§;
   import §[!f§.b2Vec2;
   import §^e§.§0"1§;
   import §^e§.§1"B§;
   import §^e§.§?!D§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §1!R§
   {
      
      private static const §4!!§:int = 20;
      
      public static const §'!v§:Number = §8!w§.§6c§;
      
      public static const §!"8§:Number = §8!w§.§9"-§;
      
      public static const §00§:Number = 1 / 20;
      
      public static const §;0§:Number = §8!w§.§9"-§ * §00§;
      
      public static const §&!r§:Number = §'!v§ * §00§;
      
      public static const §9"@§:§??§ = new §??§(13 - 3);
      
      protected static var §-"7§:String;
      
      protected static var § "=§:Number = 1;
      
      protected static var §9q§:String = §3v§.§8",§;
       
      
      protected var §&"!§:§3!3§;
      
      private var §,!f§:Array = null;
      
      protected var §+^§:§1e§;
      
      public var mLevelEngine:§=y§;
      
      protected var §,J§:§8!>§;
      
      protected var §&F§:§0!W§;
      
      protected var §6"'§:§,@§;
      
      protected var §3Z§:§'!X§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §6q§:Boolean = false;
      
      protected var §6-§:Boolean = false;
      
      protected var §5!`§:Boolean = false;
      
      public var §,"=§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §7a§:Number;
      
      public var §7"1§:Number;
      
      private var §8!4§:§case§;
      
      private var §9+§:Sprite;
      
      protected var §6!`§:§3v§;
      
      protected var §5"!§:§`!<§ = null;
      
      private var §^!x§:EventDispatcher;
      
      private var §6X§:Array;
      
      private var §!l§:§9H§;
      
      private var §5!=§:§7!v§;
      
      protected var §#!v§:§0"1§;
      
      protected var §!!d§:§?!D§;
      
      private var §?A§:§1"B§;
      
      private var §5V§:§1"B§;
      
      private var §%"@§:§1"B§;
      
      private var §,"<§:Stage;
      
      private var §?y§:§3!`§;
      
      protected var §6"0§:§8!6§;
      
      protected var §3!%§:§8!6§;
      
      protected var §&!6§:Number = 0.0;
      
      protected var §<?§:String;
      
      private var §@s§:Boolean;
      
      private var §<!5§:Number;
      
      private var §+"$§:Number;
      
      protected var §]!?§:§2l§;
      
      protected var §2!?§:§8"3§;
      
      protected var §4!+§:§0`§;
      
      protected var §]m§:§,!j§;
      
      protected var §9m§:uint = 1.417339207E9;
      
      public var §8-§:Boolean;
      
      protected var §]";§:int = 0;
      
      protected var §^g§:int = 0;
      
      protected var § F§:Number = 1.0;
      
      protected var §"D§:Number = 1.0;
      
      protected var §2!b§:Boolean;
      
      public function §1!R§(param1:Stage, param2:§8"3§, param3:§0`§, param4:§,!j§)
      {
         this.§6X§ = [];
         super();
         this.§^!x§ = new EventDispatcher();
         this.§,"<§ = param1;
         this.§2!?§ = param2;
         this.§4!+§ = param3;
         this.§]m§ = param4;
         this.§#!v§ = §0"1§.§8!J§;
         this.§!!d§ = this.initAnimationManager(this.§#!v§);
         this.§?A§ = this.initThemeGraphicsManager();
         this.§5V§ = this.initThemeSoundsManager();
         this.§%"@§ = this.initCutSceneManager();
         var _loc5_:Stage3D = param1.stage3Ds[0];
         this.§!l§ = new §9H§(§case§,param1,new Rectangle(0,0,§8!w§.§6c§,§8!w§.§9"-§),_loc5_);
         §8!w§.§1"?§.addEventListener(§5h§.§ P§,this.§!l§.onEnterFrame);
         _loc5_.addEventListener(Event.CONTEXT3D_CREATE,this.§&Q§,false,0,true);
         this.§!l§.§6!"§ = false;
         this.§!l§.enableErrorChecking = false;
         this.§!l§.§4!#§ = 2;
         this.§!l§.§+n§();
      }
      
      public static function §`">§(param1:§>q§, param2:§>q§) : Number
      {
         var _loc3_:Number = param1.§5!z§ - param2.§5!z§;
         var _loc4_:Number = param1.§1[§ - param2.§1[§;
         return §3"&§(_loc3_,_loc4_);
      }
      
      public static function §3"&§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      protected function get sprite() : Sprite
      {
         if(!this.§9+§ && this.§-P§)
         {
            this.§9+§ = this.§8!4§.§"#§;
         }
         return this.§9+§;
      }
      
      public function get §-P§() : Sprite
      {
         if(!this.§8!4§)
         {
            this.§8!4§ = this.§!l§.§>7§ as §case§;
            this.§8!4§.§#,§ = false;
         }
         return this.§8!4§;
      }
      
      private function get §#!g§() : DisplayObject
      {
         if(this.§-P§)
         {
            return (this.§-P§ as §case§).§#!g§;
         }
         return null;
      }
      
      public function get animationManager() : §?!D§
      {
         return this.§!!d§;
      }
      
      public function get textureManager() : §0"1§
      {
         return this.§#!v§;
      }
      
      public function get camera() : §0!W§
      {
         return this.§&F§;
      }
      
      public function get objects() : §3!3§
      {
         return this.§&"!§;
      }
      
      public function get particles() : §'!X§
      {
         return this.§3Z§;
      }
      
      public function get background() : §1e§
      {
         return this.§+^§;
      }
      
      public function get slingshot() : §,@§
      {
         return this.§6"'§;
      }
      
      public function get §`!s§() : §8!>§
      {
         return this.§,J§;
      }
      
      public function get stage() : Stage
      {
         return this.§,"<§;
      }
      
      public function get levelItemManager() : §8"3§
      {
         return this.§2!?§;
      }
      
      public function get §2!z§() : §1"B§
      {
         return this.§%"@§;
      }
      
      protected function get §+L§() : §1"B§
      {
         return this.§?A§;
      }
      
      public function setSlowMotion(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§]!?§ = new §2l§(param1,param2,param3,param4);
      }
      
      public function get damageScoreMultiplier() : int
      {
         return §1!R§.§9"@§.getValue();
      }
      
      public function clear() : void
      {
         if(this.§5!=§)
         {
            this.§5!=§.dispose();
         }
         if(this.§#!v§)
         {
            this.§#!v§.removeEventListener(Event.INIT,this.§8d§);
            this.§#!v§.dispose();
         }
         if(this.§?A§ && this.§?A§.textureManager)
         {
            this.§?A§.textureManager.dispose();
         }
         if(this.§%"@§ && this.§%"@§.textureManager)
         {
            this.§%"@§.textureManager.dispose();
         }
         if(this.§!l§)
         {
            this.§!l§.dispose();
         }
      }
      
      protected function initThemeGraphicsManager() : §1"B§
      {
         return new §1"B§(this.§,"<§.loaderInfo.parameters.assetsUrl || "",this.§,"<§.loaderInfo.parameters.buildNumber || "",this.§]m§);
      }
      
      protected function initThemeSoundsManager() : §1"B§
      {
         return new §1"B§(this.§,"<§.loaderInfo.parameters.assetsUrl || "",this.§,"<§.loaderInfo.parameters.buildNumber || "",this.§]m§,false);
      }
      
      protected function initCutSceneManager() : §1"B§
      {
         return new §1"B§(this.§,"<§.loaderInfo.parameters.assetsUrl || "",this.§,"<§.loaderInfo.parameters.buildNumber || "",this.§]m§);
      }
      
      protected function initAnimationManager(param1:§0"1§) : §?!D§
      {
         return new §?!D§(param1);
      }
      
      public function §3r§(param1:Boolean) : void
      {
         if(§9H§.§0"'§)
         {
            if(param1)
            {
               §9H§.§0"'§.start();
            }
            else
            {
               §9H§.§0"'§.stop();
               §9H§.§0"'§.color = 0;
            }
         }
      }
      
      public function §+g§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function §?<§(param1:§`!<§) : void
      {
         if(this.§5"!§ != null)
         {
            this.§5"!§.removeEventListeners();
         }
         this.§5"!§ = param1;
         if(this.mReadyToRun)
         {
            this.§5"!§.addEventListeners();
         }
      }
      
      public function §<!U§() : §8!6§
      {
         return this.§6"0§;
      }
      
      protected function §]"+§(param1:§0!!§) : int
      {
         return 0;
      }
      
      public function §;!Q§(param1:§7!v§, param2:Function) : void
      {
         var _loc5_:§0!!§ = null;
         var _loc6_:int = 0;
         this.§5!=§ = param1;
         var _loc3_:int = this.§5!=§.§%z§;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = this.§5!=§.§`;§(_loc4_);
            _loc6_ = this.§]"+§(_loc5_);
            this.§#!v§.§-!$§(_loc5_,_loc6_);
            _loc4_++;
         }
         if(param2 != null)
         {
            this.§^!x§.addEventListener(Event.INIT,param2);
            this.§6X§.push(param2);
         }
         if(this.§+!X§())
         {
            this.§!!J§();
         }
      }
      
      private function §+!X§() : Boolean
      {
         this.§#!v§.removeEventListener(Event.INIT,this.§8d§);
         if(this.§#!v§.§[![§())
         {
            this.initializeAnimations();
            this.§2!b§ = false;
            return true;
         }
         this.§#!v§.addEventListener(Event.INIT,this.§8d§);
         this.§2!b§ = true;
         return false;
      }
      
      private function §8d§(param1:Event) : void
      {
         this.§#!v§.removeEventListener(Event.INIT,this.§8d§);
         this.initializeAnimations();
         this.§2!b§ = false;
         this.§!!J§();
      }
      
      protected function initializeAnimations() : void
      {
         this.§!!d§.initializeAnimations();
         this.§2!?§.initAnimations();
      }
      
      private function §&Q§(param1:Event) : void
      {
         this.§#!v§.§'z§();
         if(this.§+L§ && this.§+L§.textureManager)
         {
            this.§+L§.textureManager.§'z§();
         }
         if(this.§2!z§ && this.§2!z§.textureManager)
         {
            this.§2!z§.textureManager.§'z§();
         }
         if(this.§2!b§)
         {
            if(this.§+!X§())
            {
               this.§!!J§();
            }
         }
         if(this.§5"!§ != null && this.mReadyToRun)
         {
            this.§5"!§.addEventListeners();
         }
         if(this.§?A§)
         {
            this.§?A§.§[![§();
         }
         if(this.§%"@§)
         {
            if(this.§%"@§.textureManager)
            {
               this.§%"@§.§[![§();
            }
         }
      }
      
      private function §!!J§() : void
      {
         this.§^!x§.dispatchEvent(new Event(Event.INIT));
         this.§[!+§();
      }
      
      private function §[!+§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§6X§)
         {
            this.§^!x§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§6X§ = [];
      }
      
      public function init(param1:§3v§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§,J§ = new §8!>§(this,param1);
         this.§&F§ = this.initializeLevelCamera(param1);
         this.§7a§ = 0;
         this.§7"1§ = 0;
         this.§@s§ = false;
         this.mReadyToRun = false;
         this.§6q§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         param1.theme = param1.theme || "background_blue_grass";
         §9q§ = param1.theme;
         this.§6!`§ = param1;
         this.§6-§ = this.§8!V§(param1.theme);
         this.§5!`§ = this.§;P§(param1.theme);
         if(this.§6-§ && this.§5!`§)
         {
            this.initialize(param1);
         }
         else
         {
            this.§7!I§(param1.theme);
         }
         this.§!=§(param1.name);
         §+7§.init();
      }
      
      protected function §!=§(param1:String) : void
      {
         this.§6"0§ = new §8!6§(param1);
      }
      
      protected function §8!V§(param1:String) : Boolean
      {
         if(this.§?A§)
         {
            return false;
         }
         return true;
      }
      
      protected function §;P§(param1:String) : Boolean
      {
         var _loc2_:§1!q§ = null;
         if(this.§5V§)
         {
            _loc2_ = this.§4!+§.getBackground(param1);
            if(_loc2_)
            {
               if(_loc2_.§?!z§ && !this.§5V§.§&!J§(_loc2_.§?!z§))
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
      
      protected function §7!I§(param1:String) : void
      {
         var _loc2_:Array = null;
         var _loc3_:§1!q§ = null;
         if(this.§?A§ && !this.§8!V§(param1))
         {
            this.§?A§.removeEventListener(Event.COMPLETE,this.§"2§);
            this.§?A§.removeEventListener(Event.CANCEL,this.§0"G§);
            this.§?A§.addEventListener(Event.COMPLETE,this.§"2§);
            this.§?A§.addEventListener(Event.CANCEL,this.§0"G§);
            _loc2_ = this.getThemeGraphicsLoadList(param1);
            this.§?A§.§,'§(param1,_loc2_);
         }
         if(this.§5V§ && !this.§;P§(param1))
         {
            this.§5V§.removeEventListener(Event.COMPLETE,this.§,]§);
            this.§5V§.removeEventListener(Event.CANCEL,this.§]!o§);
            this.§5V§.addEventListener(Event.COMPLETE,this.§,]§);
            this.§5V§.addEventListener(Event.CANCEL,this.§]!o§);
            _loc3_ = this.§4!+§.getBackground(param1);
            if(_loc3_)
            {
               this.§5V§.§,'§(_loc3_.§?!z§);
            }
         }
      }
      
      private function §"2§(param1:Event) : void
      {
         this.§?A§.removeEventListener(Event.COMPLETE,this.§"2§);
         this.§?A§.removeEventListener(Event.CANCEL,this.§0"G§);
         this.§6-§ = true;
         if(this.§6-§ && this.§5!`§)
         {
            this.initialize(this.§6!`§);
         }
      }
      
      private function §0"G§(param1:Event) : void
      {
         this.§?A§.removeEventListener(Event.COMPLETE,this.§"2§);
         this.§?A§.removeEventListener(Event.CANCEL,this.§0"G§);
         this.§6q§ = true;
      }
      
      private function §,]§(param1:Event) : void
      {
         this.§?A§.removeEventListener(Event.COMPLETE,this.§,]§);
         this.§?A§.removeEventListener(Event.CANCEL,this.§]!o§);
         this.§5!`§ = true;
         if(this.§6-§ && this.§5!`§)
         {
            this.initialize(this.§6!`§);
         }
      }
      
      private function §]!o§(param1:Event) : void
      {
         this.§?A§.removeEventListener(Event.COMPLETE,this.§,]§);
         this.§?A§.removeEventListener(Event.CANCEL,this.§]!o§);
         this.§5!`§ = true;
         if(this.§6-§ && this.§5!`§)
         {
            this.initialize(this.§6!`§);
         }
      }
      
      public function get backgroundTextureManager() : §0"1§
      {
         if(this.§+L§)
         {
            return this.§+L§.textureManager;
         }
         return null;
      }
      
      protected function initializePhysicsConstants(param1:§3v§) : void
      {
         b2Settings.b2_linearSleepTolerance = b2Settings.§4-§;
      }
      
      private function initialize(param1:§3v§) : void
      {
         this.§]!?§ = null;
         this.§8-§ = false;
         if(§9H§.§6<§)
         {
            §9H§.§6<§.speed = 1;
         }
         this.initializePhysicsConstants(param1);
         this.initLevelEngine(param1);
         this.§+^§ = this.initializeLevelBackground(param1.theme,0 / §00§,this.backgroundTextureManager,this.§&F§.§2b§());
         this.§+^§.§%!6§(§8!w§.§7!#§());
         if(§9H§.§0"'§)
         {
            §9H§.§0"'§.color = this.§+^§.skyColor;
         }
         this.§&"!§ = this.initializeLevelObjectManager(param1);
         this.§6"'§ = this.initializeLevelSlingshot(param1);
         this.§3Z§ = this.§["A§(this.§!!d§,this.§#!v§);
         this.§&F§.init();
         this.§&U§();
         this.§3!J§();
         this.mReadyToRun = true;
         if(this.§5"!§)
         {
            this.§5"!§.addEventListeners();
         }
         if(param1.name == §-"7§)
         {
            this.§&F§.§!A§(§ "=§);
            this.§<!1§(0);
         }
         else
         {
            §-"7§ = param1.name;
         }
         this.levelInitialized();
      }
      
      protected function levelInitialized() : void
      {
      }
      
      protected function initLevelEngine(param1:§3v§) : void
      {
         this.mLevelEngine = new §=y§(this);
      }
      
      protected function §3!J§() : void
      {
         if(this.§<?§)
         {
            this.§3!%§ = §8!6§.initialize(this.§<?§);
            this.§3!%§.speed = 1;
            this.§3!%§.play();
            this.§&!6§ = -1000;
            this.§<?§ = null;
         }
      }
      
      public function §<Q§(param1:String) : void
      {
         this.§<?§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§3!%§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§3!%§)
         {
            if(param1)
            {
               this.§3!%§.speed = Math.min(this.§3!%§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§3!%§.speed = Math.max(this.§3!%§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§3!%§)
         {
            this.§3!%§.speed = 1;
         }
      }
      
      protected function initializeLevelObjectManager(param1:§3v§) : §3!3§
      {
         var _loc2_:String = §1!q§.§;$§;
         return new §3!3§(this,param1,new Sprite(),_loc2_);
      }
      
      protected function initializeLevelCamera(param1:§3v§) : §0!W§
      {
         return new §0!W§(this,param1);
      }
      
      protected function initializeLevelBackground(param1:String, param2:Number, param3:§0"1§, param4:Number) : §1e§
      {
         var _loc5_:§1!q§;
         if((_loc5_ = this.§4!+§.getBackground(param1)) == null)
         {
            §6E§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §3v§.§8",§;
            _loc5_ = this.§4!+§.getBackground(param1);
         }
         return new §1e§(_loc5_,param2,param3,param4,!§9H§.§&!V§);
      }
      
      protected function initializeLevelSlingshot(param1:§3v§) : §,@§
      {
         return new §,@§(this,param1,new Sprite());
      }
      
      protected function §["A§(param1:§?!D§, param2:§0"1§) : §'!X§
      {
         return new §'!X§(param1,param2);
      }
      
      public function initializeEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§3v§ = new §3v§();
         _loc3_.slingshotY = -12;
         var _loc4_:§8"6§;
         (_loc4_ = new §8"6§()).left = 0;
         _loc4_.top = -§0!W§.§,M§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §0!W§.§,M§;
         _loc4_.right = _loc4_.left + §0!W§.§8<§;
         _loc4_.y = -13.929;
         _loc4_.x = §0!W§.§8<§;
         _loc4_.id = §0!W§.§0!I§;
         _loc3_.§#!f§(_loc4_);
         var _loc5_:§8"6§;
         (_loc5_ = new §8"6§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §0!W§.§8<§;
         _loc5_.bottom = _loc5_.top + §0!W§.§,M§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §0!W§.§8<§ / 2;
         _loc5_.id = §0!W§.§&!U§;
         _loc3_.§#!f§(_loc5_);
         this.§&",§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§9q§ != null)
         {
            _loc3_.theme = §9q§;
         }
         this.init(_loc3_);
      }
      
      protected function §&",§(param1:§3v§, param2:Boolean) : void
      {
         if(param2)
         {
            this.§;"<§(param1);
         }
      }
      
      protected function §0!-§() : Number
      {
         this.§9m§ ^= this.§9m§ << 21;
         this.§9m§ ^= this.§9m§ >>> 35;
         this.§9m§ ^= this.§9m§ << 4;
         return this.§9m§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §;"<§(param1:§3v§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§5!l§ = null;
         this.§9m§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§0!-§() * 5;
               (_loc5_ = new §5!l§()).x = 30 + _loc3_ * 10 + this.§0!-§() * 9;
               if(_loc2_ == 0)
               {
                  _loc5_.y = 0;
                  if(_loc3_ == 1 || _loc3_ == 2 || _loc3_ == 4)
                  {
                     _loc5_.type = "PIG_MUSTACHE";
                  }
                  else
                  {
                     _loc5_.type = "PIG_HELMET";
                  }
                  _loc5_.angle = 45 - this.§0!-§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§0!-§() * 3 - _loc3_ * 8;
                  if((_loc4_ = (_loc3_ * _loc3_ + _loc2_ * _loc3_ + _loc2_) % 5) < 2)
                  {
                     _loc5_.type = "BIRD_RED";
                  }
                  else if(_loc4_ == 3)
                  {
                     _loc5_.type = "BIRD_YELLOW";
                  }
                  else
                  {
                     _loc5_.type = "BIRD_BLUE";
                  }
                  _loc5_.angle = this.§0!-§() * 360;
               }
               param1.addObject(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      private function §""!§() : void
      {
      }
      
      protected function §&U§() : void
      {
         if(§1e§.§>!,§)
         {
            this.§,Z§(this.§+^§.§=!a§);
         }
         this.§,Z§(this.§3Z§.§["&§(§'!X§.§#!,§));
         this.§,Z§(this.§3Z§.§["&§(§'!X§.§0!8§));
         this.§,Z§(this.§&"!§.§8&§);
         this.§,Z§(this.§6"'§.sprite);
         this.§,Z§(this.§3Z§.§["&§(§'!X§.§=!O§));
         this.§,Z§(this.§+^§.§3!x§);
         if(§1e§.§>!,§)
         {
            this.§,Z§(this.§+^§.§-!6§);
         }
         this.§,Z§(this.§&"!§.overlaySprite);
         this.§,Z§(this.§3Z§.§["&§(§'!X§.§-w§));
         if(!§=y§.§!&§)
         {
         }
      }
      
      protected function §,Z§(param1:DisplayObject) : void
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
         if(§8!w§.§70§ > §8!w§.§<"B§)
         {
            param1 /= §8!w§.§70§;
            param2 /= §8!w§.§70§;
         }
         else
         {
            param1 /= §8!w§.§<"B§;
            param2 /= §8!w§.§<"B§;
         }
         param3.x = ((param1 - this.sprite.x) / §0!W§.§,f§ + this.§&F§.§?!q§) * §00§;
         param3.y = ((param2 - this.sprite.y) / §0!W§.§,f§ + this.§&F§.§ c§) * §00§;
         return param3;
      }
      
      public function §,"3§(param1:Number, param2:Number, param3:Point = null) : Point
      {
         if(!param3)
         {
            param3 = new Point();
         }
         param3.x = (param1 / §00§ - this.§&F§.§?!q§) * §0!W§.§,f§ + this.sprite.x;
         param3.y = (param2 / §00§ - this.§&F§.§ c§) * §0!W§.§,f§ + this.sprite.y;
         var _loc4_:Number = Math.max(§8!w§.§70§,§8!w§.§<"B§);
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
            this.background.setScreenOffset(param1,param2,this.§]";§,this.§^g§,param3,this.§ F§,this.§"D§);
         }
         if(this.objects)
         {
            this.objects.§,">§(param1,param2);
         }
         if(this.mLevelEngine)
         {
            this.mLevelEngine.§,">§(param1,param2);
         }
         if(this.slingshot)
         {
            this.slingshot.§,">§(param1,param2);
         }
         if(this.particles)
         {
            this.particles.§,">§(param1,param2);
         }
      }
      
      public function §5"@§(param1:String, param2:Number, param3:Number) : void
      {
         this.§&"!§.addObject(param1,param2,param3,0,§3!3§.§'!y§);
      }
      
      public function §9!$§() : void
      {
         if(this.§#!g§)
         {
            this.§#!g§.visible = true;
            this.§#!g§.alpha = 0;
         }
         this.§,"=§ = 0;
      }
      
      public function §"!B§(param1:Boolean, param2:Number = 0, param3:Number = 0, param4:Number = 0) : void
      {
         if(param1)
         {
            this.§?y§ = new §3!`§(param2,param3,param4);
         }
         else
         {
            this.§?y§ = null;
         }
      }
      
      public function clearLevel() : void
      {
         if(this.§+^§)
         {
            this.§+^§.dispose();
            this.§+^§ = null;
         }
         if(this.§&"!§)
         {
            this.§&"!§.dispose();
            this.§&"!§ = null;
         }
         if(this.mLevelEngine)
         {
            if(!this.mLevelEngine.§="-§)
            {
            }
            this.mLevelEngine.clear();
            this.mLevelEngine = null;
         }
         if(this.§,J§)
         {
            this.§,J§.clear();
            this.§,J§ = null;
         }
         if(this.§6"'§)
         {
            this.§6"'§.dispose();
            this.§6"'§ = null;
         }
         if(this.§&F§)
         {
            § "=§ = this.§&F§.§;"7§;
            this.§&F§.clear();
            this.§&F§ = null;
         }
         if(this.§3Z§)
         {
            this.§3Z§.dispose();
            this.§3Z§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§7a§ = 0;
         this.§7"1§ = 0;
         this.mReadyToRun = false;
         this.§@s§ = false;
         this.§,"=§ = §<!]§.§?">§;
         if(this.§-P§)
         {
            (this.§-P§ as §case§).§'W§.x = 0;
            (this.§-P§ as §case§).§'W§.y = 0;
         }
         if(this.§#!g§)
         {
            this.§#!g§.visible = false;
         }
         this.§3!%§ = null;
         this.§6"0§ = null;
         if(this.§?A§)
         {
            this.§?A§.removeEventListener(Event.COMPLETE,this.§"2§);
            this.§?A§.removeEventListener(Event.CANCEL,this.§0"G§);
         }
         if(this.§5V§)
         {
            this.§5V§.removeEventListener(Event.COMPLETE,this.§,]§);
            this.§5V§.removeEventListener(Event.CANCEL,this.§]!o§);
         }
         this.§[!+§();
         if(§9H§.§0"'§)
         {
            §9H§.§0"'§.color = 0;
         }
         if(this.§5"!§)
         {
            this.§5"!§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver(param1:int) : void
      {
      }
      
      public function § !I§() : String
      {
         if(this.§6"0§)
         {
            return this.§6"0§.toString();
         }
         return null;
      }
      
      public function get §37§() : Number
      {
         if(this.§]!?§)
         {
            return this.§]!?§.speed;
         }
         return 1;
      }
      
      public function update(param1:Number, param2:Boolean) : Number
      {
         if(!this.mReadyToRun || !§9H§.§9o§())
         {
            return 0;
         }
         if(this.§3!%§ && this.§3!%§.§]X§)
         {
            return this.§&o§(param1,param2);
         }
         return this.§5"H§(param1,true,param2);
      }
      
      protected function §5"H§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc4_:Boolean = false;
         if(this.§]!?§)
         {
            _loc4_ = this.§]!?§.update(param1);
            param1 *= this.§]!?§.speed;
            if(§9H§.§6<§)
            {
               §9H§.§6<§.speed = this.§]!?§.speed;
            }
            if(!_loc4_)
            {
               this.§]!?§ = null;
            }
         }
         this.§7"1§ += param1;
         this.§7a§ += param1;
         this.§7a§ = this.mLevelEngine.§=!=§(this.§7a§);
         this.§6"'§.update(param1,param3);
         if(param2)
         {
            this.§<!1§(param1);
         }
         return param1;
      }
      
      private function §&o§(param1:Number, param2:Boolean) : Number
      {
         var _loc4_:Number = NaN;
         var _loc3_:Number = §=y§.§^!§;
         if(this.§3!%§)
         {
            param1 *= this.§3!%§.speed;
            _loc4_ = this.§7"1§ + param1;
            while(this.§7"1§ + _loc3_ < _loc4_)
            {
               if(this.§7"1§ + _loc3_ > this.§&!6§)
               {
                  this.§3!%§.step(this);
                  this.§&!6§ += _loc3_;
               }
               this.§5"H§(_loc3_,false,param2);
            }
            if(_loc4_ > this.§&!6§ + _loc3_)
            {
               this.§3!%§.step(this);
               this.§&!6§ += _loc3_;
            }
            if(this.§7"1§ < _loc4_)
            {
               this.§5"H§(_loc4_ - this.§7"1§,true,param2);
            }
            return param1;
         }
         return param1;
      }
      
      private function §<!1§(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         this.§+^§.update(param1);
         this.§&"!§.renderObjects(param1,this.mLevelEngine.§"!L§,this.§7a§);
         this.§<"+§();
         if(this.§,"=§ < §<!]§.§?">§)
         {
            this.§,"=§ += param1;
            _loc2_ = §<!]§.§?">§ / 2;
            _loc3_ = (-Math.abs(this.§,"=§ - _loc2_) + _loc2_) * (§<!]§.§`W§ / _loc2_);
            if(this.§#!g§)
            {
               this.§#!g§.alpha = _loc3_;
            }
         }
         else if(this.§#!g§)
         {
            this.§#!g§.visible = false;
         }
         if(this.§?y§)
         {
            if(!this.§?y§.§7!'§(this.§&F§,param1))
            {
               this.§"!B§(false);
            }
         }
         this.§&F§.§+1§(param1);
         this.mLevelEngine.§<u§();
         this.§3Z§.update(param1);
      }
      
      public function §="9§(param1:Number) : void
      {
         this.objects.updateObjects(param1);
         this.§!q§();
      }
      
      protected function §<"+§() : void
      {
         var _loc1_:§6!!§ = null;
         if(this.§,!f§ != null)
         {
            for each(_loc1_ in this.§,!f§)
            {
               if(!_loc1_.isLeavingTrail)
               {
                  this.§;!1§(_loc1_);
               }
            }
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§9V§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            _loc2_ = this.§&"!§.§<!y§(true);
            if(_loc2_)
            {
               _loc2_.scream();
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§&"!§.§;!D§());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            _loc2_ = this.§&"!§.§<!y§(true);
            if(_loc2_)
            {
               _loc2_.blink();
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§&"!§.§;!D§());
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §8"#§.§function§;
         }
         §+7§.addScore(param1,param2);
         this.§5"!§.addScore(param1);
         if(param3 && param1 > 0 && !this.§8-§)
         {
            this.§!g§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §!g§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §8"#§.§,R§;
         }
         this.§3Z§.§'!f§(§8"#§.§!R§,§'!X§.§-w§,§8"#§.§ 6§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §>u§(param1:§>q§) : void
      {
         if(this.§,!f§ == null)
         {
            this.§,!f§ = new Array();
         }
         this.§,!f§.push(param1);
      }
      
      public function §8!+§() : void
      {
         this.§6"'§.§8!+§();
         this.§&"!§.§@!5§();
         this.§8-§ = true;
      }
      
      public function §;!1§(param1:§6!!§) : void
      {
         this.§3Z§.§+!s§(§'!X§.§#!,§);
         if(this.§,!f§.indexOf(param1) >= 0)
         {
            this.§,!f§.splice(this.§,!f§.indexOf(param1),1);
         }
         if(this.§,!f§.length == 0)
         {
            this.§,!f§ = null;
         }
      }
      
      public function §`3§(param1:§;!h§, param2:Number, param3:Number) : §1"G§
      {
         var _loc4_:§1"G§ = §1"G§(this.§&"!§.addObject(param1.name,param1.x,param1.y,0,§3!3§.§'!y§,true,true,true,param1.scale));
         var _loc5_:Number = param1.§]"#§;
         if(param1.§ ",§ > 1)
         {
            _loc4_.§[!t§(param1.§ ",§);
         }
         if(param1.§="E§ != 0)
         {
            _loc5_ = param1.§="E§;
         }
         var _loc6_:Number = -_loc5_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc7_:Number = _loc5_ * param2 * Math.sin(param3 / (180 / Math.PI));
         _loc4_.§6!;§(new b2Vec2(_loc6_,_loc7_),false,true);
         this.camera.§-l§(§0!W§.§["+§);
         if(this.§6"0§)
         {
            this.§6"0§.§`3§(this.mLevelEngine.§4s§,param1.x,param1.y,param2,param3);
         }
         return _loc4_;
      }
      
      public function activateSpecialPower(param1:Number, param2:Number) : void
      {
         this.§@s§ = true;
         this.§<!5§ = param1;
         this.§+"$§ = param2;
      }
      
      private function §!q§() : void
      {
         if(!this.§@s§)
         {
            return;
         }
         this.§@s§ = false;
         if(this.§&"!§.activeObject is §1"G§)
         {
            this.§&"!§.activateSpecialPower(this.§<!5§,this.§+"$§);
         }
         if(this.§6"0§)
         {
            this.§6"0§.§<!2§(this.mLevelEngine.§4s§,this.§<!5§,this.§+"$§);
         }
      }
      
      public function §@z§() : void
      {
         this.§&"!§.§@z§();
      }
      
      public function §1!9§() : void
      {
         this.§&"!§.§"!V§();
      }
      
      public function getCurrentLevelData() : §3v§
      {
         var _loc1_:§3v§ = new §3v§();
         _loc1_.scoreGold = this.§6!`§.scoreGold;
         _loc1_.scoreSilver = this.§6!`§.scoreSilver;
         this.§&F§.writeCameraInformation(_loc1_);
         this.§&"!§.writeObjectInformation(_loc1_);
         this.§6"'§.writeSlingshotInformation(_loc1_);
         _loc1_.theme = this.§+^§.getCurrentThemeName();
         return _loc1_;
      }
      
      public function §8[§() : int
      {
         return this.§6!`§.scoreSilver;
      }
      
      public function §`!§() : int
      {
         return this.§6!`§.scoreGold;
      }
      
      public function §9!§(param1:int) : void
      {
         this.§6!`§.scoreSilver = param1;
      }
      
      public function §-Q§(param1:int) : void
      {
         this.§6!`§.scoreGold = param1;
      }
      
      public function §-!X§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§]";§ = param1;
         this.§^g§ = param2;
         this.§ F§ = param3;
         this.§"D§ = param4;
         if(this.§8!4§)
         {
            this.§8!4§.§&4§(param1,param2);
         }
         if(this.§&F§)
         {
            this.§&F§.§+1§(0);
         }
      }
      
      public function get currentLevel() : §3v§
      {
         return this.§6!`§;
      }
      
      public function get levelObjects() : §3!3§
      {
         return this.§&"!§;
      }
      
      protected function get §8'§() : §9H§
      {
         return this.§!l§;
      }
      
      public function get §7"D§() : int
      {
         return §4!!§;
      }
   }
}
