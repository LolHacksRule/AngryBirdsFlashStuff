package §3"#§
{
   import §#R§.§0<§;
   import §&!]§.DisplayObject;
   import §&!]§.Sprite;
   import §&f§.§%!x§;
   import §'!B§.§8T§;
   import §'!a§.b2Settings;
   import §1"?§.§4R§;
   import §1"?§.§switch§;
   import §1z§.§2#§;
   import §1z§.§5!R§;
   import §1z§.§^!@§;
   import §3>§.§]!N§;
   import §3h§.§'`§;
   import §4u§.§1!C§;
   import §6!n§.b2Vec2;
   import §9!v§.§-!^§;
   import §9!v§.§6a§;
   import §9!v§.static;
   import §9"!§.§!!H§;
   import §9"!§.§"" §;
   import §9"!§.§,%§;
   import §9"!§.§,r§;
   import §9"!§.§^"3§;
   import §;!^§.§"7§;
   import §;!^§.§;!f§;
   import §;"0§.§-q§;
   import §;"0§.§@$§;
   import §<t§.§2"4§;
   import §="+§.§&!i§;
   import §>"2§.§8k§;
   import §?"@§.§]1§;
   import §`!w§.§^!$§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §`"8§
   {
      
      private static const §08§:int = 20;
      
      public static const §3q§:Number = §8k§.§<A§;
      
      public static const §@h§:Number = §8k§.§[s§;
      
      public static const §3!=§:Number = 1 / 20;
      
      public static const § for§:Number = §8k§.§[s§ * §3!=§;
      
      public static const §,!+§:Number = §3q§ * §3!=§;
      
      public static const §^+§:§1!C§ = new §1!C§(13 - 3);
      
      protected static var §#^§:String;
      
      protected static var §5H§:Number = 1;
      
      protected static var §"!^§:String = §2#§.§89§;
       
      
      protected var §9!-§:§"" §;
      
      private var §?!-§:Array = null;
      
      protected var §""4§:§]1§;
      
      public var mLevelEngine:§@!2§;
      
      protected var §,!_§:§?!L§;
      
      protected var §&j§:§'`§;
      
      protected var §2!j§:§0k§;
      
      protected var § L§:§switch§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §0w§:Boolean = false;
      
      protected var §!^§:Boolean = false;
      
      protected var §1!y§:Boolean = false;
      
      public var §4!!§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §;Y§:Number;
      
      public var §#!s§:Number;
      
      private var §+!,§:§7X§;
      
      private var §;o§:Sprite;
      
      protected var §[!!§:§2#§;
      
      protected var §[a§:§%!x§ = null;
      
      private var §'W§:EventDispatcher;
      
      private var §>`§:Array;
      
      private var §`n§:§8T§;
      
      private var §`!K§:§"7§;
      
      protected var §@k§:§6a§;
      
      protected var §7"9§:static;
      
      private var §`f§:§-!^§;
      
      private var §8!9§:§-!^§;
      
      private var § "2§:§-!^§;
      
      private var §6N§:Stage;
      
      private var §`"C§:§'f§;
      
      protected var §'!7§:§2"4§;
      
      protected var §#V§:§2"4§;
      
      protected var §5!3§:Number = 0.0;
      
      protected var §%v§:String;
      
      private var §&r§:Boolean;
      
      private var §[[§:Number;
      
      private var §3[§:Number;
      
      protected var §1v§:§#!w§;
      
      protected var §!d§:§]!N§;
      
      protected var §"!N§:§-q§;
      
      protected var §#"=§:§^!@§;
      
      protected var §#1§:uint = 1.417339207E9;
      
      public var § b§:Boolean;
      
      protected var §4$§:int = 0;
      
      protected var §=Z§:int = 0;
      
      protected var §6g§:Number = 1.0;
      
      protected var §[A§:Number = 1.0;
      
      protected var §"!"§:Boolean;
      
      public function §`"8§(param1:Stage, param2:§]!N§, param3:§-q§, param4:§^!@§)
      {
         this.§>`§ = [];
         super();
         this.§'W§ = new EventDispatcher();
         this.§6N§ = param1;
         this.§!d§ = param2;
         this.§"!N§ = param3;
         this.§#"=§ = param4;
         this.§@k§ = §6a§.§3R§;
         this.§7"9§ = this.initAnimationManager(this.§@k§);
         this.§`f§ = this.initThemeGraphicsManager();
         this.§8!9§ = this.initThemeSoundsManager();
         this.§ "2§ = this.initCutSceneManager();
         var _loc5_:Stage3D = param1.stage3Ds[0];
         this.§`n§ = new §8T§(§7X§,param1,new Rectangle(0,0,§8k§.§<A§,§8k§.§[s§),_loc5_);
         §8k§.§^"+§.addEventListener(§0<§.§?"8§,this.§`n§.onEnterFrame);
         _loc5_.addEventListener(Event.CONTEXT3D_CREATE,this.§"!=§,false,0,true);
         this.§`n§.§5,§ = false;
         this.§`n§.enableErrorChecking = false;
         this.§`n§.§5!4§ = 2;
         this.§`n§.§@! §();
      }
      
      public static function §]!3§(param1:§,%§, param2:§,%§) : Number
      {
         var _loc3_:Number = param1.§5!p§ - param2.§5!p§;
         var _loc4_:Number = param1.§52§ - param2.§52§;
         return §-#§(_loc3_,_loc4_);
      }
      
      public static function §-#§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      protected function get sprite() : Sprite
      {
         if(!this.§;o§ && this.§@!-§)
         {
            this.§;o§ = this.§+!,§.§%!Q§;
         }
         return this.§;o§;
      }
      
      public function get §@!-§() : Sprite
      {
         if(!this.§+!,§)
         {
            this.§+!,§ = this.§`n§.§1! § as §7X§;
            this.§+!,§.§="C§ = false;
         }
         return this.§+!,§;
      }
      
      private function get §5!#§() : DisplayObject
      {
         if(this.§@!-§)
         {
            return (this.§@!-§ as §7X§).§5!#§;
         }
         return null;
      }
      
      public function get animationManager() : static
      {
         return this.§7"9§;
      }
      
      public function get textureManager() : §6a§
      {
         return this.§@k§;
      }
      
      public function get camera() : §'`§
      {
         return this.§&j§;
      }
      
      public function get objects() : §"" §
      {
         return this.§9!-§;
      }
      
      public function get particles() : §switch§
      {
         return this.§ L§;
      }
      
      public function get background() : §]1§
      {
         return this.§""4§;
      }
      
      public function get slingshot() : §0k§
      {
         return this.§2!j§;
      }
      
      public function get §?u§() : §?!L§
      {
         return this.§,!_§;
      }
      
      public function get stage() : Stage
      {
         return this.§6N§;
      }
      
      public function get levelItemManager() : §]!N§
      {
         return this.§!d§;
      }
      
      public function get § !Y§() : §-!^§
      {
         return this.§ "2§;
      }
      
      protected function get §+#§() : §-!^§
      {
         return this.§`f§;
      }
      
      public function setSlowMotion(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§1v§ = new §#!w§(param1,param2,param3,param4);
      }
      
      public function get damageScoreMultiplier() : int
      {
         return §`"8§.§^+§.getValue();
      }
      
      public function clear() : void
      {
         if(this.§`!K§)
         {
            this.§`!K§.dispose();
         }
         if(this.§@k§)
         {
            this.§@k§.removeEventListener(Event.INIT,this.§["1§);
            this.§@k§.dispose();
         }
         if(this.§`f§ && this.§`f§.textureManager)
         {
            this.§`f§.textureManager.dispose();
         }
         if(this.§ "2§ && this.§ "2§.textureManager)
         {
            this.§ "2§.textureManager.dispose();
         }
         if(this.§`n§)
         {
            this.§`n§.dispose();
         }
      }
      
      protected function initThemeGraphicsManager() : §-!^§
      {
         return new §-!^§(this.§6N§.loaderInfo.parameters.assetsUrl || "",this.§6N§.loaderInfo.parameters.buildNumber || "",this.§#"=§);
      }
      
      protected function initThemeSoundsManager() : §-!^§
      {
         return new §-!^§(this.§6N§.loaderInfo.parameters.assetsUrl || "",this.§6N§.loaderInfo.parameters.buildNumber || "",this.§#"=§,false);
      }
      
      protected function initCutSceneManager() : §-!^§
      {
         return new §-!^§(this.§6N§.loaderInfo.parameters.assetsUrl || "",this.§6N§.loaderInfo.parameters.buildNumber || "",this.§#"=§);
      }
      
      protected function initAnimationManager(param1:§6a§) : static
      {
         return new static(param1);
      }
      
      public function §#5§(param1:Boolean) : void
      {
         if(§8T§.§5!Y§)
         {
            if(param1)
            {
               §8T§.§5!Y§.start();
            }
            else
            {
               §8T§.§5!Y§.stop();
               §8T§.§5!Y§.color = 0;
            }
         }
      }
      
      public function §6n§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function §&x§(param1:§%!x§) : void
      {
         if(this.§[a§ != null)
         {
            this.§[a§.removeEventListeners();
         }
         this.§[a§ = param1;
         if(this.mReadyToRun)
         {
            this.§[a§.addEventListeners();
         }
      }
      
      public function §^!q§() : §2"4§
      {
         return this.§'!7§;
      }
      
      protected function § !T§(param1:§;!f§) : int
      {
         return 0;
      }
      
      public function §^"7§(param1:§"7§, param2:Function) : void
      {
         var _loc5_:§;!f§ = null;
         var _loc6_:int = 0;
         this.§`!K§ = param1;
         var _loc3_:int = this.§`!K§.§&",§;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = this.§`!K§.§7#§(_loc4_);
            _loc6_ = this.§ !T§(_loc5_);
            this.§@k§.§<%§(_loc5_,_loc6_);
            _loc4_++;
         }
         if(param2 != null)
         {
            this.§'W§.addEventListener(Event.INIT,param2);
            this.§>`§.push(param2);
         }
         if(this.§[!0§())
         {
            this.§02§();
         }
      }
      
      private function §[!0§() : Boolean
      {
         this.§@k§.removeEventListener(Event.INIT,this.§["1§);
         if(this.§@k§.§!m§())
         {
            this.initializeAnimations();
            this.§"!"§ = false;
            return true;
         }
         this.§@k§.addEventListener(Event.INIT,this.§["1§);
         this.§"!"§ = true;
         return false;
      }
      
      private function §["1§(param1:Event) : void
      {
         this.§@k§.removeEventListener(Event.INIT,this.§["1§);
         this.initializeAnimations();
         this.§"!"§ = false;
         this.§02§();
      }
      
      protected function initializeAnimations() : void
      {
         this.§7"9§.initializeAnimations();
         this.§!d§.initAnimations();
      }
      
      private function §"!=§(param1:Event) : void
      {
         this.§@k§.§5!q§();
         if(this.§+#§ && this.§+#§.textureManager)
         {
            this.§+#§.textureManager.§5!q§();
         }
         if(this.§ !Y§ && this.§ !Y§.textureManager)
         {
            this.§ !Y§.textureManager.§5!q§();
         }
         if(this.§"!"§)
         {
            if(this.§[!0§())
            {
               this.§02§();
            }
         }
         if(this.§[a§ != null && this.mReadyToRun)
         {
            this.§[a§.addEventListeners();
         }
         if(this.§`f§)
         {
            this.§`f§.§!m§();
         }
         if(this.§ "2§)
         {
            if(this.§ "2§.textureManager)
            {
               this.§ "2§.§!m§();
            }
         }
      }
      
      private function §02§() : void
      {
         this.§'W§.dispatchEvent(new Event(Event.INIT));
         this.§!"5§();
      }
      
      private function §!"5§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§>`§)
         {
            this.§'W§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§>`§ = [];
      }
      
      public function init(param1:§2#§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§,!_§ = new §?!L§(this,param1);
         this.§&j§ = this.initializeLevelCamera(param1);
         this.§;Y§ = 0;
         this.§#!s§ = 0;
         this.§&r§ = false;
         this.mReadyToRun = false;
         this.§0w§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         param1.theme = param1.theme || "background_blue_grass";
         §"!^§ = param1.theme;
         this.§[!!§ = param1;
         this.§!^§ = this.§8O§(param1.theme);
         this.§1!y§ = this.§2!C§(param1.theme);
         if(this.§!^§ && this.§1!y§)
         {
            this.initialize(param1);
         }
         else
         {
            this.§<Q§(param1.theme);
         }
         this.§<!P§(param1.name);
         § 7§.init();
      }
      
      protected function §<!P§(param1:String) : void
      {
         this.§'!7§ = new §2"4§(param1);
      }
      
      protected function §8O§(param1:String) : Boolean
      {
         if(this.§`f§)
         {
            return false;
         }
         return true;
      }
      
      protected function §2!C§(param1:String) : Boolean
      {
         var _loc2_:§@$§ = null;
         if(this.§8!9§)
         {
            _loc2_ = this.§"!N§.getBackground(param1);
            if(_loc2_)
            {
               if(_loc2_.§8"&§ && !this.§8!9§.§#!H§(_loc2_.§8"&§))
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
      
      protected function §<Q§(param1:String) : void
      {
         var _loc2_:Array = null;
         var _loc3_:§@$§ = null;
         if(this.§`f§ && !this.§8O§(param1))
         {
            this.§`f§.removeEventListener(Event.COMPLETE,this.§["+§);
            this.§`f§.removeEventListener(Event.CANCEL,this.§;!i§);
            this.§`f§.addEventListener(Event.COMPLETE,this.§["+§);
            this.§`f§.addEventListener(Event.CANCEL,this.§;!i§);
            _loc2_ = this.getThemeGraphicsLoadList(param1);
            this.§`f§.§?">§(param1,_loc2_);
         }
         if(this.§8!9§ && !this.§2!C§(param1))
         {
            this.§8!9§.removeEventListener(Event.COMPLETE,this.§&!8§);
            this.§8!9§.removeEventListener(Event.CANCEL,this.§?"+§);
            this.§8!9§.addEventListener(Event.COMPLETE,this.§&!8§);
            this.§8!9§.addEventListener(Event.CANCEL,this.§?"+§);
            _loc3_ = this.§"!N§.getBackground(param1);
            if(_loc3_)
            {
               this.§8!9§.§?">§(_loc3_.§8"&§);
            }
         }
      }
      
      private function §["+§(param1:Event) : void
      {
         this.§`f§.removeEventListener(Event.COMPLETE,this.§["+§);
         this.§`f§.removeEventListener(Event.CANCEL,this.§;!i§);
         this.§!^§ = true;
         if(this.§!^§ && this.§1!y§)
         {
            this.initialize(this.§[!!§);
         }
      }
      
      private function §;!i§(param1:Event) : void
      {
         this.§`f§.removeEventListener(Event.COMPLETE,this.§["+§);
         this.§`f§.removeEventListener(Event.CANCEL,this.§;!i§);
         this.§0w§ = true;
      }
      
      private function §&!8§(param1:Event) : void
      {
         this.§`f§.removeEventListener(Event.COMPLETE,this.§&!8§);
         this.§`f§.removeEventListener(Event.CANCEL,this.§?"+§);
         this.§1!y§ = true;
         if(this.§!^§ && this.§1!y§)
         {
            this.initialize(this.§[!!§);
         }
      }
      
      private function §?"+§(param1:Event) : void
      {
         this.§`f§.removeEventListener(Event.COMPLETE,this.§&!8§);
         this.§`f§.removeEventListener(Event.CANCEL,this.§?"+§);
         this.§1!y§ = true;
         if(this.§!^§ && this.§1!y§)
         {
            this.initialize(this.§[!!§);
         }
      }
      
      public function get backgroundTextureManager() : §6a§
      {
         if(this.§+#§)
         {
            return this.§+#§.textureManager;
         }
         return null;
      }
      
      protected function initializePhysicsConstants(param1:§2#§) : void
      {
         b2Settings.b2_linearSleepTolerance = b2Settings.§8t§;
      }
      
      private function initialize(param1:§2#§) : void
      {
         this.§1v§ = null;
         this.§ b§ = false;
         if(§8T§.§?!c§)
         {
            §8T§.§?!c§.speed = 1;
         }
         this.initializePhysicsConstants(param1);
         this.initLevelEngine(param1);
         this.§""4§ = this.initializeLevelBackground(param1.theme,0 / §3!=§,this.backgroundTextureManager,this.§&j§.§&w§());
         this.§""4§.§7!+§(§8k§.§-D§());
         if(§8T§.§5!Y§)
         {
            §8T§.§5!Y§.color = this.§""4§.skyColor;
         }
         this.§9!-§ = this.initializeLevelObjectManager(param1);
         this.§2!j§ = this.initializeLevelSlingshot(param1);
         this.§ L§ = this.§,"+§(this.§7"9§,this.§@k§);
         this.§&j§.init();
         this.§8!L§();
         this.§4+§();
         this.mReadyToRun = true;
         if(this.§[a§)
         {
            this.§[a§.addEventListeners();
         }
         if(param1.name == §#^§)
         {
            this.§&j§.§4d§(§5H§);
            this.§5!v§(0);
         }
         else
         {
            §#^§ = param1.name;
         }
         this.levelInitialized();
      }
      
      protected function levelInitialized() : void
      {
      }
      
      protected function initLevelEngine(param1:§2#§) : void
      {
         this.mLevelEngine = new §@!2§(this);
      }
      
      protected function §4+§() : void
      {
         if(this.§%v§)
         {
            this.§#V§ = §2"4§.initialize(this.§%v§);
            this.§#V§.speed = 1;
            this.§#V§.play();
            this.§5!3§ = -1000;
            this.§%v§ = null;
         }
      }
      
      public function §-]§(param1:String) : void
      {
         this.§%v§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§#V§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§#V§)
         {
            if(param1)
            {
               this.§#V§.speed = Math.min(this.§#V§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§#V§.speed = Math.max(this.§#V§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§#V§)
         {
            this.§#V§.speed = 1;
         }
      }
      
      protected function initializeLevelObjectManager(param1:§2#§) : §"" §
      {
         var _loc2_:String = §@$§.§`! §;
         return new §"" §(this,param1,new Sprite(),_loc2_);
      }
      
      protected function initializeLevelCamera(param1:§2#§) : §'`§
      {
         return new §'`§(this,param1);
      }
      
      protected function initializeLevelBackground(param1:String, param2:Number, param3:§6a§, param4:Number) : §]1§
      {
         var _loc5_:§@$§;
         if((_loc5_ = this.§"!N§.getBackground(param1)) == null)
         {
            §^!$§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §2#§.§89§;
            _loc5_ = this.§"!N§.getBackground(param1);
         }
         return new §]1§(_loc5_,param2,param3,param4,!§8T§.§`!q§);
      }
      
      protected function initializeLevelSlingshot(param1:§2#§) : §0k§
      {
         return new §0k§(this,param1,new Sprite());
      }
      
      protected function §,"+§(param1:static, param2:§6a§) : §switch§
      {
         return new §switch§(param1,param2);
      }
      
      public function initializeEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§2#§ = new §2#§();
         _loc3_.slingshotY = -12;
         var _loc4_:§5!R§;
         (_loc4_ = new §5!R§()).left = 0;
         _loc4_.top = -§'`§.§return§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §'`§.§return§;
         _loc4_.right = _loc4_.left + §'`§.§-§;
         _loc4_.y = -13.929;
         _loc4_.x = §'`§.§-§;
         _loc4_.id = §'`§.§9!>§;
         _loc3_.§case§(_loc4_);
         var _loc5_:§5!R§;
         (_loc5_ = new §5!R§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §'`§.§-§;
         _loc5_.bottom = _loc5_.top + §'`§.§return§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §'`§.§-§ / 2;
         _loc5_.id = §'`§.§5!<§;
         _loc3_.§case§(_loc5_);
         this.§"!m§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§"!^§ != null)
         {
            _loc3_.theme = §"!^§;
         }
         this.init(_loc3_);
      }
      
      protected function §"!m§(param1:§2#§, param2:Boolean) : void
      {
         if(param2)
         {
            this.§-!k§(param1);
         }
      }
      
      protected function §4"G§() : Number
      {
         this.§#1§ ^= this.§#1§ << 21;
         this.§#1§ ^= this.§#1§ >>> 35;
         this.§#1§ ^= this.§#1§ << 4;
         return this.§#1§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §-!k§(param1:§2#§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§&!i§ = null;
         this.§#1§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§4"G§() * 5;
               (_loc5_ = new §&!i§()).x = 30 + _loc3_ * 10 + this.§4"G§() * 9;
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
                  _loc5_.angle = 45 - this.§4"G§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§4"G§() * 3 - _loc3_ * 8;
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
                  _loc5_.angle = this.§4"G§() * 360;
               }
               param1.addObject(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      private function §6!0§() : void
      {
      }
      
      protected function §8!L§() : void
      {
         if(§]1§.§"!,§)
         {
            this.§%"&§(this.§""4§.§@!+§);
         }
         this.§%"&§(this.§ L§.§-!A§(§switch§.§&"F§));
         this.§%"&§(this.§ L§.§-!A§(§switch§.§^"&§));
         this.§%"&§(this.§9!-§.§2!%§);
         this.§%"&§(this.§2!j§.sprite);
         this.§%"&§(this.§ L§.§-!A§(§switch§.§%!y§));
         this.§%"&§(this.§""4§.§ !o§);
         if(§]1§.§"!,§)
         {
            this.§%"&§(this.§""4§.§3F§);
         }
         this.§%"&§(this.§9!-§.overlaySprite);
         this.§%"&§(this.§ L§.§-!A§(§switch§.§,!%§));
         if(!§@!2§.§]!<§)
         {
         }
      }
      
      protected function §%"&§(param1:DisplayObject) : void
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
         if(§8k§.§`"5§ > §8k§.§&i§)
         {
            param1 /= §8k§.§`"5§;
            param2 /= §8k§.§`"5§;
         }
         else
         {
            param1 /= §8k§.§&i§;
            param2 /= §8k§.§&i§;
         }
         param3.x = ((param1 - this.sprite.x) / §'`§.§=6§ + this.§&j§.§6#§) * §3!=§;
         param3.y = ((param2 - this.sprite.y) / §'`§.§=6§ + this.§&j§.§`[§) * §3!=§;
         return param3;
      }
      
      public function §]!2§(param1:Number, param2:Number, param3:Point = null) : Point
      {
         if(!param3)
         {
            param3 = new Point();
         }
         param3.x = (param1 / §3!=§ - this.§&j§.§6#§) * §'`§.§=6§ + this.sprite.x;
         param3.y = (param2 / §3!=§ - this.§&j§.§`[§) * §'`§.§=6§ + this.sprite.y;
         var _loc4_:Number = Math.max(§8k§.§`"5§,§8k§.§&i§);
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
            this.background.setScreenOffset(param1,param2,this.§4$§,this.§=Z§,param3,this.§6g§,this.§[A§);
         }
         if(this.objects)
         {
            this.objects.§5x§(param1,param2);
         }
         if(this.mLevelEngine)
         {
            this.mLevelEngine.§5x§(param1,param2);
         }
         if(this.slingshot)
         {
            this.slingshot.§5x§(param1,param2);
         }
         if(this.particles)
         {
            this.particles.§5x§(param1,param2);
         }
      }
      
      public function §-k§(param1:String, param2:Number, param3:Number) : void
      {
         this.§9!-§.addObject(param1,param2,param3,0,§"" §.§%A§);
      }
      
      public function §2!d§() : void
      {
         if(this.§5!#§)
         {
            this.§5!#§.visible = true;
            this.§5!#§.alpha = 0;
         }
         this.§4!!§ = 0;
      }
      
      public function §#!h§(param1:Boolean, param2:Number = 0, param3:Number = 0, param4:Number = 0) : void
      {
         if(param1)
         {
            this.§`"C§ = new §'f§(param2,param3,param4);
         }
         else
         {
            this.§`"C§ = null;
         }
      }
      
      public function clearLevel() : void
      {
         if(this.§""4§)
         {
            this.§""4§.dispose();
            this.§""4§ = null;
         }
         if(this.§9!-§)
         {
            this.§9!-§.dispose();
            this.§9!-§ = null;
         }
         if(this.mLevelEngine)
         {
            if(!this.mLevelEngine.§#"0§)
            {
            }
            this.mLevelEngine.clear();
            this.mLevelEngine = null;
         }
         if(this.§,!_§)
         {
            this.§,!_§.clear();
            this.§,!_§ = null;
         }
         if(this.§2!j§)
         {
            this.§2!j§.dispose();
            this.§2!j§ = null;
         }
         if(this.§&j§)
         {
            §5H§ = this.§&j§.§^o§;
            this.§&j§.clear();
            this.§&j§ = null;
         }
         if(this.§ L§)
         {
            this.§ L§.dispose();
            this.§ L§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§;Y§ = 0;
         this.§#!s§ = 0;
         this.mReadyToRun = false;
         this.§&r§ = false;
         this.§4!!§ = §#2§.§6!h§;
         if(this.§@!-§)
         {
            (this.§@!-§ as §7X§).§7"?§.x = 0;
            (this.§@!-§ as §7X§).§7"?§.y = 0;
         }
         if(this.§5!#§)
         {
            this.§5!#§.visible = false;
         }
         this.§#V§ = null;
         this.§'!7§ = null;
         if(this.§`f§)
         {
            this.§`f§.removeEventListener(Event.COMPLETE,this.§["+§);
            this.§`f§.removeEventListener(Event.CANCEL,this.§;!i§);
         }
         if(this.§8!9§)
         {
            this.§8!9§.removeEventListener(Event.COMPLETE,this.§&!8§);
            this.§8!9§.removeEventListener(Event.CANCEL,this.§?"+§);
         }
         this.§!"5§();
         if(§8T§.§5!Y§)
         {
            §8T§.§5!Y§.color = 0;
         }
         if(this.§[a§)
         {
            this.§[a§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver(param1:int) : void
      {
      }
      
      public function §-0§() : String
      {
         if(this.§'!7§)
         {
            return this.§'!7§.toString();
         }
         return null;
      }
      
      public function get §]"$§() : Number
      {
         if(this.§1v§)
         {
            return this.§1v§.speed;
         }
         return 1;
      }
      
      public function update(param1:Number, param2:Boolean) : Number
      {
         if(!this.mReadyToRun || !§8T§.§=M§())
         {
            return 0;
         }
         if(this.§#V§ && this.§#V§.§6!L§)
         {
            return this.§3!$§(param1,param2);
         }
         return this.§9"&§(param1,true,param2);
      }
      
      protected function §9"&§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc4_:Boolean = false;
         if(this.§1v§)
         {
            _loc4_ = this.§1v§.update(param1);
            param1 *= this.§1v§.speed;
            if(§8T§.§?!c§)
            {
               §8T§.§?!c§.speed = this.§1v§.speed;
            }
            if(!_loc4_)
            {
               this.§1v§ = null;
            }
         }
         this.§#!s§ += param1;
         this.§;Y§ += param1;
         this.§;Y§ = this.mLevelEngine.§]"7§(this.§;Y§);
         this.§2!j§.update(param1,param3);
         if(param2)
         {
            this.§5!v§(param1);
         }
         return param1;
      }
      
      private function §3!$§(param1:Number, param2:Boolean) : Number
      {
         var _loc4_:Number = NaN;
         var _loc3_:Number = §@!2§.§4";§;
         if(this.§#V§)
         {
            param1 *= this.§#V§.speed;
            _loc4_ = this.§#!s§ + param1;
            while(this.§#!s§ + _loc3_ < _loc4_)
            {
               if(this.§#!s§ + _loc3_ > this.§5!3§)
               {
                  this.§#V§.step(this);
                  this.§5!3§ += _loc3_;
               }
               this.§9"&§(_loc3_,false,param2);
            }
            if(_loc4_ > this.§5!3§ + _loc3_)
            {
               this.§#V§.step(this);
               this.§5!3§ += _loc3_;
            }
            if(this.§#!s§ < _loc4_)
            {
               this.§9"&§(_loc4_ - this.§#!s§,true,param2);
            }
            return param1;
         }
         return param1;
      }
      
      private function §5!v§(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         this.§""4§.update(param1);
         this.§9!-§.renderObjects(param1,this.mLevelEngine.§`!r§,this.§;Y§);
         this.§#!M§();
         if(this.§4!!§ < §#2§.§6!h§)
         {
            this.§4!!§ += param1;
            _loc2_ = §#2§.§6!h§ / 2;
            _loc3_ = (-Math.abs(this.§4!!§ - _loc2_) + _loc2_) * (§#2§.§;!W§ / _loc2_);
            if(this.§5!#§)
            {
               this.§5!#§.alpha = _loc3_;
            }
         }
         else if(this.§5!#§)
         {
            this.§5!#§.visible = false;
         }
         if(this.§`"C§)
         {
            if(!this.§`"C§.§^X§(this.§&j§,param1))
            {
               this.§#!h§(false);
            }
         }
         this.§&j§.§%O§(param1);
         this.mLevelEngine.§,!4§();
         this.§ L§.update(param1);
      }
      
      public function §@!E§(param1:Number) : void
      {
         this.objects.updateObjects(param1);
         this.§]""§();
      }
      
      protected function §#!M§() : void
      {
         var _loc1_:§^"3§ = null;
         if(this.§?!-§ != null)
         {
            for each(_loc1_ in this.§?!-§)
            {
               if(!_loc1_.isLeavingTrail)
               {
                  this.§+"4§(_loc1_);
               }
            }
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§,r§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            _loc2_ = this.§9!-§.§%V§(true);
            if(_loc2_)
            {
               _loc2_.scream();
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§9!-§.§[">§());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            _loc2_ = this.§9!-§.§%V§(true);
            if(_loc2_)
            {
               _loc2_.blink();
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§9!-§.§[">§());
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §4R§.§<B§;
         }
         § 7§.addScore(param1,param2);
         this.§[a§.addScore(param1);
         if(param3 && param1 > 0 && !this.§ b§)
         {
            this.§9W§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §9W§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §4R§.§+!;§;
         }
         this.§ L§.§'"-§(§4R§.§1!H§,§switch§.§,!%§,§4R§.§9! §,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §5" §(param1:§,%§) : void
      {
         if(this.§?!-§ == null)
         {
            this.§?!-§ = new Array();
         }
         this.§?!-§.push(param1);
      }
      
      public function §2!c§() : void
      {
         this.§2!j§.§2!c§();
         this.§9!-§.§4!#§();
         this.§ b§ = true;
      }
      
      public function §+"4§(param1:§^"3§) : void
      {
         this.§ L§.§3!3§(§switch§.§&"F§);
         if(this.§?!-§.indexOf(param1) >= 0)
         {
            this.§?!-§.splice(this.§?!-§.indexOf(param1),1);
         }
         if(this.§?!-§.length == 0)
         {
            this.§?!-§ = null;
         }
      }
      
      public function §3!V§(param1:§'"&§, param2:Number, param3:Number) : §!!H§
      {
         var _loc4_:§!!H§ = §!!H§(this.§9!-§.addObject(param1.name,param1.x,param1.y,0,§"" §.§%A§,true,true,true,param1.scale));
         var _loc5_:Number = param1.§9-§;
         if(param1.§'_§ > 1)
         {
            _loc4_.§]!w§(param1.§'_§);
         }
         if(param1.§3!+§ != 0)
         {
            _loc5_ = param1.§3!+§;
         }
         var _loc6_:Number = -_loc5_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc7_:Number = _loc5_ * param2 * Math.sin(param3 / (180 / Math.PI));
         _loc4_.§?!m§(new b2Vec2(_loc6_,_loc7_),false,true);
         this.camera.§[!n§(§'`§.§6k§);
         if(this.§'!7§)
         {
            this.§'!7§.§3!V§(this.mLevelEngine.§<",§,param1.x,param1.y,param2,param3);
         }
         return _loc4_;
      }
      
      public function activateSpecialPower(param1:Number, param2:Number) : void
      {
         this.§&r§ = true;
         this.§[[§ = param1;
         this.§3[§ = param2;
      }
      
      private function §]""§() : void
      {
         if(!this.§&r§)
         {
            return;
         }
         this.§&r§ = false;
         if(this.§9!-§.activeObject is §!!H§)
         {
            this.§9!-§.activateSpecialPower(this.§[[§,this.§3[§);
         }
         if(this.§'!7§)
         {
            this.§'!7§.§9o§(this.mLevelEngine.§<",§,this.§[[§,this.§3[§);
         }
      }
      
      public function §^u§() : void
      {
         this.§9!-§.§^u§();
      }
      
      public function §&!<§() : void
      {
         this.§9!-§.§5-§();
      }
      
      public function getCurrentLevelData() : §2#§
      {
         var _loc1_:§2#§ = new §2#§();
         _loc1_.scoreGold = this.§[!!§.scoreGold;
         _loc1_.scoreSilver = this.§[!!§.scoreSilver;
         this.§&j§.writeCameraInformation(_loc1_);
         this.§9!-§.writeObjectInformation(_loc1_);
         this.§2!j§.writeSlingshotInformation(_loc1_);
         _loc1_.theme = this.§""4§.getCurrentThemeName();
         return _loc1_;
      }
      
      public function §6!$§() : int
      {
         return this.§[!!§.scoreSilver;
      }
      
      public function §6"6§() : int
      {
         return this.§[!!§.scoreGold;
      }
      
      public function §!!-§(param1:int) : void
      {
         this.§[!!§.scoreSilver = param1;
      }
      
      public function §+F§(param1:int) : void
      {
         this.§[!!§.scoreGold = param1;
      }
      
      public function §4!t§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§4$§ = param1;
         this.§=Z§ = param2;
         this.§6g§ = param3;
         this.§[A§ = param4;
         if(this.§+!,§)
         {
            this.§+!,§.§]!f§(param1,param2);
         }
         if(this.§&j§)
         {
            this.§&j§.§%O§(0);
         }
      }
      
      public function get currentLevel() : §2#§
      {
         return this.§[!!§;
      }
      
      public function get levelObjects() : §"" §
      {
         return this.§9!-§;
      }
      
      protected function get §-6§() : §8T§
      {
         return this.§`n§;
      }
      
      public function get §'m§() : int
      {
         return §08§;
      }
   }
}
