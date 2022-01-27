package §'4§
{
   import § !Y§.§]!,§;
   import § M§.§`"B§;
   import §"!&§.§-!M§;
   import §+!a§.§@!_§;
   import §+!a§.§`b§;
   import §,"&§.§9q§;
   import §0N§.§2!@§;
   import §1"H§.§0"@§;
   import §1"H§.§2!V§;
   import §4"#§.§ O§;
   import §4&§.§ "E§;
   import §4&§.§'!,§;
   import §4&§.§,C§;
   import §5Q§.§^!e§;
   import §7!8§.DisplayObject;
   import §7!8§.Sprite;
   import §9!w§.§9!,§;
   import §9t§.b2Vec2;
   import §<!o§.§3!$§;
   import §<W§.§!!u§;
   import §@!'§.b2Settings;
   import §@w§.§`a§;
   import §]">§.§ 6§;
   import §]">§.§-%§;
   import §]">§.§1!0§;
   import §]">§.§50§;
   import §]">§.§<!=§;
   import §`!j§.§#b§;
   import §`!j§.§1U§;
   import §`!j§.§9"!§;
   import §`",§.§'8§;
   import §`",§.§?" §;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §^g§
   {
      
      private static const §?!?§:int = 20;
      
      public static const §6!9§:Number = §9q§.§?[§;
      
      public static const §4A§:Number = §9q§.§3!h§;
      
      public static const §5!-§:Number = 1 / 20;
      
      public static const § !G§:Number = §9q§.§3!h§ * §5!-§;
      
      public static const §?f§:Number = §6!9§ * §5!-§;
      
      public static const §`x§:§]!,§ = new §]!,§(13 - 3);
      
      protected static var §#a§:String;
      
      protected static var § !,§:Number = 1;
      
      protected static var §4!0§:String = §#b§.§`!0§;
       
      
      protected var §9u§:§-%§;
      
      private var §8"B§:Array = null;
      
      protected var §3"C§:§3!$§;
      
      public var mLevelEngine:§4q§;
      
      protected var §!!!§:§86§;
      
      protected var §+%§:§9!,§;
      
      protected var §-!t§:§3!n§;
      
      protected var §?S§:§0"@§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §=>§:Boolean = false;
      
      protected var §1m§:Boolean = false;
      
      protected var §7!-§:Boolean = false;
      
      public var §#d§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §3"1§:Number;
      
      public var §0!4§:Number;
      
      private var §[!Z§:§[h§;
      
      private var §+;§:Sprite;
      
      protected var §^`§:§#b§;
      
      protected var §?!T§:§`"B§ = null;
      
      private var §`!<§:EventDispatcher;
      
      private var §4!X§:Array;
      
      private var §^B§:§^!e§;
      
      private var §6+§:§'8§;
      
      protected var §7!T§:§,C§;
      
      protected var §8-§:§'!,§;
      
      private var §7_§:§ "E§;
      
      private var §`!z§:§ "E§;
      
      private var §,!g§:§ "E§;
      
      private var §#[§:Stage;
      
      private var §"!2§:§>"A§;
      
      protected var §%^§:§ O§;
      
      protected var §6!v§:§ O§;
      
      protected var §=J§:Number = 0.0;
      
      protected var §!"!§:String;
      
      private var §&^§:Boolean;
      
      private var §'H§:Number;
      
      private var §@"E§:Number;
      
      protected var §]3§:§2!;§;
      
      protected var §3"4§:§-!M§;
      
      protected var §+Q§:§`b§;
      
      protected var §6u§:§9"!§;
      
      protected var §%"6§:uint = 1.417339207E9;
      
      public var §;3§:Boolean;
      
      protected var § "4§:int = 0;
      
      protected var §]"%§:int = 0;
      
      protected var §?!x§:Number = 1.0;
      
      protected var §,!Q§:Number = 1.0;
      
      protected var §,&§:Boolean;
      
      public function §^g§(param1:Stage, param2:§-!M§, param3:§`b§, param4:§9"!§)
      {
         this.§4!X§ = [];
         super();
         this.§`!<§ = new EventDispatcher();
         this.§#[§ = param1;
         this.§3"4§ = param2;
         this.§+Q§ = param3;
         this.§6u§ = param4;
         this.§7!T§ = §,C§.§[!1§;
         this.§8-§ = this.initAnimationManager(this.§7!T§);
         this.§7_§ = this.initThemeGraphicsManager();
         this.§`!z§ = this.initThemeSoundsManager();
         this.§,!g§ = this.initCutSceneManager();
         var _loc5_:Stage3D = param1.stage3Ds[0];
         this.§^B§ = new §^!e§(§[h§,param1,new Rectangle(0,0,§9q§.§?[§,§9q§.§3!h§),_loc5_);
         §9q§.§=!!§.addEventListener(§!!u§.§8!Q§,this.§^B§.onEnterFrame);
         _loc5_.addEventListener(Event.CONTEXT3D_CREATE,this.§2"'§,false,0,true);
         this.§^B§.§-&§ = false;
         this.§^B§.enableErrorChecking = false;
         this.§^B§.§+E§ = 2;
         this.§^B§.§6!m§();
      }
      
      public static function §9D§(param1:§<!=§, param2:§<!=§) : Number
      {
         var _loc3_:Number = param1.§=!J§ - param2.§=!J§;
         var _loc4_:Number = param1.§;!U§ - param2.§;!U§;
         return §%"5§(_loc3_,_loc4_);
      }
      
      public static function §%"5§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      protected function get sprite() : Sprite
      {
         if(!this.§+;§ && this.§5!`§)
         {
            this.§+;§ = this.§[!Z§.§#c§;
         }
         return this.§+;§;
      }
      
      public function get §5!`§() : Sprite
      {
         if(!this.§[!Z§)
         {
            this.§[!Z§ = this.§^B§.§?"=§ as §[h§;
            this.§[!Z§.§]!D§ = false;
         }
         return this.§[!Z§;
      }
      
      private function get §=I§() : DisplayObject
      {
         if(this.§5!`§)
         {
            return (this.§5!`§ as §[h§).§=I§;
         }
         return null;
      }
      
      public function get animationManager() : §'!,§
      {
         return this.§8-§;
      }
      
      public function get textureManager() : §,C§
      {
         return this.§7!T§;
      }
      
      public function get camera() : §9!,§
      {
         return this.§+%§;
      }
      
      public function get objects() : §-%§
      {
         return this.§9u§;
      }
      
      public function get particles() : §0"@§
      {
         return this.§?S§;
      }
      
      public function get background() : §3!$§
      {
         return this.§3"C§;
      }
      
      public function get slingshot() : §3!n§
      {
         return this.§-!t§;
      }
      
      public function get §&+§() : §86§
      {
         return this.§!!!§;
      }
      
      public function get stage() : Stage
      {
         return this.§#[§;
      }
      
      public function get levelItemManager() : §-!M§
      {
         return this.§3"4§;
      }
      
      public function get §[!l§() : § "E§
      {
         return this.§,!g§;
      }
      
      protected function get §>!p§() : § "E§
      {
         return this.§7_§;
      }
      
      public function setSlowMotion(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§]3§ = new §2!;§(param1,param2,param3,param4);
      }
      
      public function get damageScoreMultiplier() : int
      {
         return §^g§.§`x§.getValue();
      }
      
      public function clear() : void
      {
         if(this.§6+§)
         {
            this.§6+§.dispose();
         }
         if(this.§7!T§)
         {
            this.§7!T§.dispose();
         }
         if(this.§7_§ && this.§7_§.textureManager)
         {
            this.§7_§.textureManager.dispose();
         }
         if(this.§,!g§ && this.§,!g§.textureManager)
         {
            this.§,!g§.textureManager.dispose();
         }
         if(this.§^B§)
         {
            this.§^B§.dispose();
         }
      }
      
      protected function initThemeGraphicsManager() : § "E§
      {
         return new § "E§(this.§#[§.loaderInfo.parameters.assetsUrl || "",this.§#[§.loaderInfo.parameters.buildNumber || "",this.§6u§);
      }
      
      protected function initThemeSoundsManager() : § "E§
      {
         return new § "E§(this.§#[§.loaderInfo.parameters.assetsUrl || "",this.§#[§.loaderInfo.parameters.buildNumber || "",this.§6u§,false);
      }
      
      protected function initCutSceneManager() : § "E§
      {
         return new § "E§(this.§#[§.loaderInfo.parameters.assetsUrl || "",this.§#[§.loaderInfo.parameters.buildNumber || "",this.§6u§);
      }
      
      protected function initAnimationManager(param1:§,C§) : §'!,§
      {
         return new §'!,§(param1);
      }
      
      public function §0!M§(param1:Boolean) : void
      {
         if(§^!e§.§`?§)
         {
            if(param1)
            {
               §^!e§.§`?§.start();
            }
            else
            {
               §^!e§.§`?§.stop();
               §^!e§.§`?§.color = 0;
            }
         }
      }
      
      public function §1!L§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function §15§(param1:§`"B§) : void
      {
         if(this.§?!T§ != null)
         {
            this.§?!T§.removeEventListeners();
         }
         this.§?!T§ = param1;
         if(this.mReadyToRun)
         {
            this.§?!T§.addEventListeners();
         }
      }
      
      public function §!!k§() : § O§
      {
         return this.§%^§;
      }
      
      protected function §5J§(param1:§?" §) : int
      {
         return 0;
      }
      
      public function §&!&§(param1:§'8§, param2:Function) : void
      {
         var _loc5_:§?" § = null;
         var _loc6_:int = 0;
         this.§6+§ = param1;
         var _loc3_:int = this.§6+§.§4T§;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = this.§6+§.§5!v§(_loc4_);
            _loc6_ = this.§5J§(_loc5_);
            this.§7!T§.§?";§(_loc5_,_loc6_);
            _loc4_++;
         }
         if(param2 != null)
         {
            this.§`!<§.addEventListener(Event.INIT,param2);
            this.§4!X§.push(param2);
         }
         if(this.§+!f§())
         {
            this.§["?§();
         }
      }
      
      private function §+!f§() : Boolean
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(this.§7!T§.§;!j§())
         {
            _loc1_ = this.§7!T§.§<!b§ / 1000;
            _loc2_ = this.§7!T§.§5"C§ / 1000;
            §2!@§.log("\n\nMain texture manager memory usage:\n   textures " + _loc1_ + " kilobytes\n   bitmaps " + _loc2_ + " kilobytes\n\n");
            this.initializeAnimations();
            this.§,&§ = false;
            return true;
         }
         this.§,&§ = true;
         return false;
      }
      
      protected function initializeAnimations() : void
      {
         this.§8-§.initializeAnimations();
         this.§3"4§.initAnimations();
      }
      
      private function §2"'§(param1:Event) : void
      {
         this.§7!T§.§7"$§();
         if(this.§>!p§ && this.§>!p§.textureManager)
         {
            this.§>!p§.textureManager.§7"$§();
         }
         if(this.§[!l§ && this.§[!l§.textureManager)
         {
            this.§[!l§.textureManager.§7"$§();
         }
         if(this.§,&§)
         {
            this.§+!f§();
            this.§["?§();
         }
         if(this.§?!T§ != null && this.mReadyToRun)
         {
            this.§?!T§.addEventListeners();
         }
         if(this.§7_§)
         {
            this.§7_§.§;!j§();
         }
         if(this.§,!g§)
         {
            if(this.§,!g§.textureManager)
            {
               this.§,!g§.textureManager.§7"$§();
               this.§,!g§.§;!j§();
            }
         }
      }
      
      private function §["?§() : void
      {
         this.§`!<§.dispatchEvent(new Event(Event.INIT));
         this.§5n§();
      }
      
      private function §5n§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§4!X§)
         {
            this.§`!<§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§4!X§ = [];
      }
      
      public function init(param1:§#b§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§!!!§ = new §86§(this,param1);
         this.§+%§ = this.initializeLevelCamera(param1);
         this.§3"1§ = 0;
         this.§0!4§ = 0;
         this.§&^§ = false;
         this.mReadyToRun = false;
         this.§=>§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         param1.theme = param1.theme || "background_blue_grass";
         §4!0§ = param1.theme;
         this.§^`§ = param1;
         this.§1m§ = this.§4!m§(param1.theme);
         this.§7!-§ = this.§5!'§(param1.theme);
         if(this.§1m§ && this.§7!-§)
         {
            this.initialize(param1);
         }
         else
         {
            this.§^!`§(param1.theme);
         }
         this.§-<§(param1.name);
         §!!t§.init();
      }
      
      protected function §-<§(param1:String) : void
      {
         this.§%^§ = new § O§(param1);
      }
      
      protected function §4!m§(param1:String) : Boolean
      {
         if(this.§7_§)
         {
            return false;
         }
         return true;
      }
      
      protected function §5!'§(param1:String) : Boolean
      {
         var _loc2_:§@!_§ = null;
         if(this.§`!z§)
         {
            _loc2_ = this.§+Q§.getBackground(param1);
            if(_loc2_)
            {
               if(_loc2_.§break§ && !this.§`!z§.§2!5§(_loc2_.§break§))
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
      
      protected function §^!`§(param1:String) : void
      {
         var _loc2_:Array = null;
         var _loc3_:§@!_§ = null;
         if(this.§7_§ && !this.§4!m§(param1))
         {
            this.§7_§.removeEventListener(Event.COMPLETE,this.§#E§);
            this.§7_§.removeEventListener(Event.CANCEL,this.§6!E§);
            this.§7_§.addEventListener(Event.COMPLETE,this.§#E§);
            this.§7_§.addEventListener(Event.CANCEL,this.§6!E§);
            _loc2_ = this.getThemeGraphicsLoadList(param1);
            this.§7_§.§@t§(param1,_loc2_);
         }
         if(this.§`!z§ && !this.§5!'§(param1))
         {
            this.§`!z§.removeEventListener(Event.COMPLETE,this.§]!Q§);
            this.§`!z§.removeEventListener(Event.CANCEL,this.§2!H§);
            this.§`!z§.addEventListener(Event.COMPLETE,this.§]!Q§);
            this.§`!z§.addEventListener(Event.CANCEL,this.§2!H§);
            _loc3_ = this.§+Q§.getBackground(param1);
            if(_loc3_)
            {
               this.§`!z§.§@t§(_loc3_.§break§);
            }
         }
      }
      
      private function §#E§(param1:Event) : void
      {
         this.§7_§.removeEventListener(Event.COMPLETE,this.§#E§);
         this.§7_§.removeEventListener(Event.CANCEL,this.§6!E§);
         this.§1m§ = true;
         if(this.§1m§ && this.§7!-§)
         {
            this.initialize(this.§^`§);
         }
      }
      
      private function §6!E§(param1:Event) : void
      {
         this.§7_§.removeEventListener(Event.COMPLETE,this.§#E§);
         this.§7_§.removeEventListener(Event.CANCEL,this.§6!E§);
         this.§=>§ = true;
      }
      
      private function §]!Q§(param1:Event) : void
      {
         this.§7_§.removeEventListener(Event.COMPLETE,this.§]!Q§);
         this.§7_§.removeEventListener(Event.CANCEL,this.§2!H§);
         this.§7!-§ = true;
         if(this.§1m§ && this.§7!-§)
         {
            this.initialize(this.§^`§);
         }
      }
      
      private function §2!H§(param1:Event) : void
      {
         this.§7_§.removeEventListener(Event.COMPLETE,this.§]!Q§);
         this.§7_§.removeEventListener(Event.CANCEL,this.§2!H§);
         this.§7!-§ = true;
         if(this.§1m§ && this.§7!-§)
         {
            this.initialize(this.§^`§);
         }
      }
      
      public function get backgroundTextureManager() : §,C§
      {
         if(this.§>!p§)
         {
            return this.§>!p§.textureManager;
         }
         return null;
      }
      
      protected function initializePhysicsConstants(param1:§#b§) : void
      {
         b2Settings.b2_linearSleepTolerance = b2Settings.§+!q§;
      }
      
      private function initialize(param1:§#b§) : void
      {
         this.§]3§ = null;
         this.§;3§ = false;
         if(§^!e§.§1!P§)
         {
            §^!e§.§1!P§.speed = 1;
         }
         this.initializePhysicsConstants(param1);
         this.initLevelEngine(param1);
         this.§3"C§ = this.initializeLevelBackground(param1.theme,0 / §5!-§,this.backgroundTextureManager,this.§+%§.§1!z§());
         this.§3"C§.§]i§(§9q§.§&T§());
         if(§^!e§.§`?§)
         {
            §^!e§.§`?§.color = this.§3"C§.skyColor;
         }
         this.§9u§ = this.initializeLevelObjectManager(param1);
         this.§-!t§ = this.initializeLevelSlingshot(param1);
         this.§?S§ = this.§!!?§(this.§8-§,this.§7!T§);
         this.§+%§.init();
         this.§4!W§();
         this.§+L§();
         this.mReadyToRun = true;
         if(this.§?!T§)
         {
            this.§?!T§.addEventListeners();
         }
         if(param1.name == §#a§)
         {
            this.§+%§.§0>§(§ !,§);
            this.§0!&§(0);
         }
         else
         {
            §#a§ = param1.name;
         }
         this.levelInitialized();
      }
      
      protected function levelInitialized() : void
      {
      }
      
      protected function initLevelEngine(param1:§#b§) : void
      {
         this.mLevelEngine = new §4q§(this);
      }
      
      protected function §+L§() : void
      {
         if(this.§!"!§)
         {
            this.§6!v§ = § O§.initialize(this.§!"!§);
            this.§6!v§.speed = 1;
            this.§6!v§.play();
            this.§=J§ = -1000;
            this.§!"!§ = null;
         }
      }
      
      public function §?""§(param1:String) : void
      {
         this.§!"!§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§6!v§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§6!v§)
         {
            if(param1)
            {
               this.§6!v§.speed = Math.min(this.§6!v§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§6!v§.speed = Math.max(this.§6!v§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§6!v§)
         {
            this.§6!v§.speed = 1;
         }
      }
      
      protected function initializeLevelObjectManager(param1:§#b§) : §-%§
      {
         var _loc2_:String = §@!_§.§!z§;
         return new §-%§(this,param1,new Sprite(),_loc2_);
      }
      
      protected function initializeLevelCamera(param1:§#b§) : §9!,§
      {
         return new §9!,§(this,param1);
      }
      
      protected function initializeLevelBackground(param1:String, param2:Number, param3:§,C§, param4:Number) : §3!$§
      {
         var _loc5_:§@!_§;
         if((_loc5_ = this.§+Q§.getBackground(param1)) == null)
         {
            §2!@§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §#b§.§`!0§;
            _loc5_ = this.§+Q§.getBackground(param1);
         }
         return new §3!$§(_loc5_,param2,param3,param4,!§^!e§.§use§);
      }
      
      protected function initializeLevelSlingshot(param1:§#b§) : §3!n§
      {
         return new §3!n§(this,param1,new Sprite());
      }
      
      protected function §!!?§(param1:§'!,§, param2:§,C§) : §0"@§
      {
         return new §0"@§(param1,param2);
      }
      
      public function initializeEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§#b§ = new §#b§();
         _loc3_.slingshotY = -12;
         var _loc4_:§1U§;
         (_loc4_ = new §1U§()).left = 0;
         _loc4_.top = -§9!,§.§-!?§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §9!,§.§-!?§;
         _loc4_.right = _loc4_.left + §9!,§.§5F§;
         _loc4_.y = -13.929;
         _loc4_.x = §9!,§.§5F§;
         _loc4_.id = §9!,§.§,]§;
         _loc3_.§,!Z§(_loc4_);
         var _loc5_:§1U§;
         (_loc5_ = new §1U§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §9!,§.§5F§;
         _loc5_.bottom = _loc5_.top + §9!,§.§-!?§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §9!,§.§5F§ / 2;
         _loc5_.id = §9!,§.§5!7§;
         _loc3_.§,!Z§(_loc5_);
         this.§^!x§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§4!0§ != null)
         {
            _loc3_.theme = §4!0§;
         }
         this.init(_loc3_);
      }
      
      protected function §^!x§(param1:§#b§, param2:Boolean) : void
      {
         if(param2)
         {
            this.§'"9§(param1);
         }
      }
      
      protected function §1"%§() : Number
      {
         this.§%"6§ ^= this.§%"6§ << 21;
         this.§%"6§ ^= this.§%"6§ >>> 35;
         this.§%"6§ ^= this.§%"6§ << 4;
         return this.§%"6§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §'"9§(param1:§#b§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§`a§ = null;
         this.§%"6§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§1"%§() * 5;
               (_loc5_ = new §`a§()).x = 30 + _loc3_ * 10 + this.§1"%§() * 9;
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
                  _loc5_.angle = 45 - this.§1"%§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§1"%§() * 3 - _loc3_ * 8;
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
                  _loc5_.angle = this.§1"%§() * 360;
               }
               param1.addObject(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      private function §"";§() : void
      {
      }
      
      protected function §4!W§() : void
      {
         if(§3!$§.§,"5§)
         {
            this.§]"5§(this.§3"C§.§3!_§);
         }
         this.§]"5§(this.§?S§.§ S§(§0"@§.§!![§));
         this.§]"5§(this.§?S§.§ S§(§0"@§.§8!%§));
         this.§]"5§(this.§9u§.§-"%§);
         this.§]"5§(this.§-!t§.sprite);
         this.§]"5§(this.§?S§.§ S§(§0"@§.§3!W§));
         this.§]"5§(this.§3"C§.§'^§);
         if(§3!$§.§,"5§)
         {
            this.§]"5§(this.§3"C§.§>!y§);
         }
         this.§]"5§(this.§9u§.overlaySprite);
         this.§]"5§(this.§?S§.§ S§(§0"@§.§5"#§));
         if(!§4q§.§default§)
         {
         }
      }
      
      protected function §]"5§(param1:DisplayObject) : void
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
         if(§9q§.§9!$§ > §9q§.§+w§)
         {
            param1 /= §9q§.§9!$§;
            param2 /= §9q§.§9!$§;
         }
         else
         {
            param1 /= §9q§.§+w§;
            param2 /= §9q§.§+w§;
         }
         param3.x = ((param1 - this.sprite.x) / §9!,§.§8"4§ + this.§+%§.§;=§) * §5!-§;
         param3.y = ((param2 - this.sprite.y) / §9!,§.§8"4§ + this.§+%§.§""!§) * §5!-§;
         return param3;
      }
      
      public function §;!A§(param1:Number, param2:Number, param3:Point = null) : Point
      {
         if(!param3)
         {
            param3 = new Point();
         }
         param3.x = (param1 / §5!-§ - this.§+%§.§;=§) * §9!,§.§8"4§ + this.sprite.x;
         param3.y = (param2 / §5!-§ - this.§+%§.§""!§) * §9!,§.§8"4§ + this.sprite.y;
         var _loc4_:Number = Math.max(§9q§.§9!$§,§9q§.§+w§);
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
            this.background.setScreenOffset(param1,param2,this.§ "4§,this.§]"%§,param3,this.§?!x§,this.§,!Q§);
         }
         if(this.objects)
         {
            this.objects.§2[§(param1,param2);
         }
         if(this.mLevelEngine)
         {
            this.mLevelEngine.§2[§(param1,param2);
         }
         if(this.slingshot)
         {
            this.slingshot.§2[§(param1,param2);
         }
         if(this.particles)
         {
            this.particles.§2[§(param1,param2);
         }
      }
      
      public function §4"6§(param1:String, param2:Number, param3:Number) : void
      {
         this.§9u§.addObject(param1,param2,param3,0,§-%§.§;!J§);
      }
      
      public function §&9§() : void
      {
         if(this.§=I§)
         {
            this.§=I§.visible = true;
            this.§=I§.alpha = 0;
         }
         this.§#d§ = 0;
      }
      
      public function §&c§(param1:Boolean, param2:Number = 0, param3:Number = 0, param4:Number = 0) : void
      {
         if(param1)
         {
            this.§"!2§ = new §>"A§(param2,param3,param4);
         }
         else
         {
            this.§"!2§ = null;
         }
      }
      
      public function clearLevel() : void
      {
         if(this.§3"C§)
         {
            this.§3"C§.dispose();
            this.§3"C§ = null;
         }
         if(this.§9u§)
         {
            this.§9u§.dispose();
            this.§9u§ = null;
         }
         if(this.mLevelEngine)
         {
            if(!this.mLevelEngine.§9!_§)
            {
            }
            this.mLevelEngine.clear();
            this.mLevelEngine = null;
         }
         if(this.§!!!§)
         {
            this.§!!!§.clear();
            this.§!!!§ = null;
         }
         if(this.§-!t§)
         {
            this.§-!t§.dispose();
            this.§-!t§ = null;
         }
         if(this.§+%§)
         {
            § !,§ = this.§+%§.§'!$§;
            this.§+%§.clear();
            this.§+%§ = null;
         }
         if(this.§?S§)
         {
            this.§?S§.dispose();
            this.§?S§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§3"1§ = 0;
         this.§0!4§ = 0;
         this.mReadyToRun = false;
         this.§&^§ = false;
         this.§#d§ = §4#§.§`"%§;
         if(this.§5!`§)
         {
            (this.§5!`§ as §[h§).§2!F§.x = 0;
            (this.§5!`§ as §[h§).§2!F§.y = 0;
         }
         if(this.§=I§)
         {
            this.§=I§.visible = false;
         }
         this.§6!v§ = null;
         this.§%^§ = null;
         if(this.§7_§)
         {
            this.§7_§.removeEventListener(Event.COMPLETE,this.§#E§);
            this.§7_§.removeEventListener(Event.CANCEL,this.§6!E§);
         }
         if(this.§`!z§)
         {
            this.§`!z§.removeEventListener(Event.COMPLETE,this.§]!Q§);
            this.§`!z§.removeEventListener(Event.CANCEL,this.§2!H§);
         }
         this.§5n§();
         if(§^!e§.§`?§)
         {
            §^!e§.§`?§.color = 0;
         }
         if(this.§?!T§)
         {
            this.§?!T§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver(param1:int) : void
      {
      }
      
      public function §-[§() : String
      {
         if(this.§%^§)
         {
            return this.§%^§.toString();
         }
         return null;
      }
      
      public function get §+"1§() : Number
      {
         if(this.§]3§)
         {
            return this.§]3§.speed;
         }
         return 1;
      }
      
      public function update(param1:Number, param2:Boolean) : Number
      {
         if(!this.mReadyToRun || !§^!e§.§>c§())
         {
            return 0;
         }
         if(this.§6!v§ && this.§6!v§.§9"%§)
         {
            return this.§?&§(param1,param2);
         }
         return this.§^!&§(param1,true,param2);
      }
      
      protected function §^!&§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc4_:Boolean = false;
         if(this.§]3§)
         {
            _loc4_ = this.§]3§.update(param1);
            param1 *= this.§]3§.speed;
            if(§^!e§.§1!P§)
            {
               §^!e§.§1!P§.speed = this.§]3§.speed;
            }
            if(!_loc4_)
            {
               this.§]3§ = null;
            }
         }
         this.§0!4§ += param1;
         this.§3"1§ += param1;
         this.§3"1§ = this.mLevelEngine.§9!4§(this.§3"1§);
         this.§-!t§.update(param1,param3);
         if(param2)
         {
            this.§0!&§(param1);
         }
         return param1;
      }
      
      private function §?&§(param1:Number, param2:Boolean) : Number
      {
         var _loc4_:Number = NaN;
         var _loc3_:Number = §4q§.§1""§;
         if(this.§6!v§)
         {
            param1 *= this.§6!v§.speed;
            _loc4_ = this.§0!4§ + param1;
            while(this.§0!4§ + _loc3_ < _loc4_)
            {
               if(this.§0!4§ + _loc3_ > this.§=J§)
               {
                  this.§6!v§.step(this);
                  this.§=J§ += _loc3_;
               }
               this.§^!&§(_loc3_,false,param2);
            }
            if(_loc4_ > this.§=J§ + _loc3_)
            {
               this.§6!v§.step(this);
               this.§=J§ += _loc3_;
            }
            if(this.§0!4§ < _loc4_)
            {
               this.§^!&§(_loc4_ - this.§0!4§,true,param2);
            }
            return param1;
         }
         return param1;
      }
      
      private function §0!&§(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         this.§3"C§.update(param1);
         this.§9u§.renderObjects(param1,this.mLevelEngine.§4z§,this.§3"1§);
         this.§9g§();
         if(this.§#d§ < §4#§.§`"%§)
         {
            this.§#d§ += param1;
            _loc2_ = §4#§.§`"%§ / 2;
            _loc3_ = (-Math.abs(this.§#d§ - _loc2_) + _loc2_) * (§4#§.§['§ / _loc2_);
            if(this.§=I§)
            {
               this.§=I§.alpha = _loc3_;
            }
         }
         else if(this.§=I§)
         {
            this.§=I§.visible = false;
         }
         if(this.§"!2§)
         {
            if(!this.§"!2§.§`!r§(this.§+%§,param1))
            {
               this.§&c§(false);
            }
         }
         this.§+%§.§4!d§(param1);
         this.mLevelEngine.§+0§();
         this.§?S§.update(param1);
      }
      
      public function §?"B§(param1:Number) : void
      {
         this.objects.updateObjects(param1);
         this.§%A§();
      }
      
      protected function §9g§() : void
      {
         var _loc1_:§1!0§ = null;
         if(this.§8"B§ != null)
         {
            for each(_loc1_ in this.§8"B§)
            {
               if(!_loc1_.isLeavingTrail)
               {
                  this.§0!,§(_loc1_);
               }
            }
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§50§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            _loc2_ = this.§9u§.§&6§(true);
            if(_loc2_)
            {
               _loc2_.scream();
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§9u§.§-"8§());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            _loc2_ = this.§9u§.§&6§(true);
            if(_loc2_)
            {
               _loc2_.blink();
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§9u§.§-"8§());
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §2!V§.§["8§;
         }
         §!!t§.addScore(param1,param2);
         this.§?!T§.addScore(param1);
         if(param3 && param1 > 0 && !this.§;3§)
         {
            this.§=!G§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §=!G§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §2!V§.§#!J§;
         }
         this.§?S§.§%!y§(§2!V§.§[r§,§0"@§.§5"#§,§2!V§.§@x§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §^!#§(param1:§<!=§) : void
      {
         if(this.§8"B§ == null)
         {
            this.§8"B§ = new Array();
         }
         this.§8"B§.push(param1);
      }
      
      public function §'b§() : void
      {
         this.§-!t§.§'b§();
         this.§9u§.§19§();
         this.§;3§ = true;
      }
      
      public function §0!,§(param1:§1!0§) : void
      {
         this.§?S§.§+@§(§0"@§.§!![§);
         if(this.§8"B§.indexOf(param1) >= 0)
         {
            this.§8"B§.splice(this.§8"B§.indexOf(param1),1);
         }
         if(this.§8"B§.length == 0)
         {
            this.§8"B§ = null;
         }
      }
      
      public function §3!<§(param1:§-T§, param2:Number, param3:Number) : § 6§
      {
         var _loc4_:§ 6§ = § 6§(this.§9u§.addObject(param1.name,param1.x,param1.y,0,§-%§.§;!J§,true,true,true,param1.scale));
         var _loc5_:Number = param1.§`!$§;
         if(param1.§ !K§ > 1)
         {
            _loc4_.§&!f§(param1.§ !K§);
         }
         if(param1.§@!Y§ != 0)
         {
            _loc5_ = param1.§@!Y§;
         }
         var _loc6_:Number = -_loc5_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc7_:Number = _loc5_ * param2 * Math.sin(param3 / (180 / Math.PI));
         _loc4_.§=9§(new b2Vec2(_loc6_,_loc7_),false,true);
         this.camera.§^!P§(§9!,§.§&!u§);
         if(this.§%^§)
         {
            this.§%^§.§3!<§(this.mLevelEngine.§`!8§,param1.x,param1.y,param2,param3);
         }
         return _loc4_;
      }
      
      public function activateSpecialPower(param1:Number, param2:Number) : void
      {
         this.§&^§ = true;
         this.§'H§ = param1;
         this.§@"E§ = param2;
      }
      
      private function §%A§() : void
      {
         if(!this.§&^§)
         {
            return;
         }
         this.§&^§ = false;
         if(this.§9u§.activeObject is § 6§)
         {
            this.§9u§.activateSpecialPower(this.§'H§,this.§@"E§);
         }
         if(this.§%^§)
         {
            this.§%^§.§;L§(this.mLevelEngine.§`!8§,this.§'H§,this.§@"E§);
         }
      }
      
      public function §[Q§() : void
      {
         this.§9u§.§[Q§();
      }
      
      public function §<!!§() : void
      {
         this.§9u§.§'e§();
      }
      
      public function getCurrentLevelData() : §#b§
      {
         var _loc1_:§#b§ = new §#b§();
         _loc1_.scoreGold = this.§^`§.scoreGold;
         _loc1_.scoreSilver = this.§^`§.scoreSilver;
         this.§+%§.writeCameraInformation(_loc1_);
         this.§9u§.writeObjectInformation(_loc1_);
         this.§-!t§.writeSlingshotInformation(_loc1_);
         _loc1_.theme = this.§3"C§.getCurrentThemeName();
         return _loc1_;
      }
      
      public function §[[§() : int
      {
         return this.§^`§.scoreSilver;
      }
      
      public function §;@§() : int
      {
         return this.§^`§.scoreGold;
      }
      
      public function §;"C§(param1:int) : void
      {
         this.§^`§.scoreSilver = param1;
      }
      
      public function §<";§(param1:int) : void
      {
         this.§^`§.scoreGold = param1;
      }
      
      public function §!q§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§ "4§ = param1;
         this.§]"%§ = param2;
         this.§?!x§ = param3;
         this.§,!Q§ = param4;
         if(this.§[!Z§)
         {
            this.§[!Z§.§&w§(param1,param2);
         }
         if(this.§+%§)
         {
            this.§+%§.§4!d§(0);
         }
      }
      
      public function get currentLevel() : §#b§
      {
         return this.§^`§;
      }
      
      public function get levelObjects() : §-%§
      {
         return this.§9u§;
      }
      
      protected function get §%z§() : §^!e§
      {
         return this.§^B§;
      }
      
      public function get §+r§() : int
      {
         return §?!?§;
      }
   }
}
