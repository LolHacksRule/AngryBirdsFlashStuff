package § 2§
{
   import §!m§.§'!P§;
   import §!m§.§2!k§;
   import §%Z§.§&!-§;
   import §%Z§.§+!!§;
   import §%Z§.§+!F§;
   import §%Z§.§7l§;
   import §%Z§.§=!V§;
   import §&!I§.§8!@§;
   import §'I§.b2Settings;
   import §-!V§.§9!<§;
   import §-'§.§ i§;
   import §-X§.§5!-§;
   import §0!_§.§!!G§;
   import §0!_§.§3S§;
   import §0!_§.§7!3§;
   import §0"1§.§%v§;
   import §0"1§.§`"-§;
   import §2!s§.§0l§;
   import §3!0§.§`i§;
   import §3-§.§#s§;
   import §3-§.§3!!§;
   import §5!+§.§%"&§;
   import §8!$§.§?p§;
   import §8+§.§5"-§;
   import §=!d§.§5!5§;
   import §>T§.§,"3§;
   import §?"'§.b2Vec2;
   import §`!B§.DisplayObject;
   import §`!B§.Sprite;
   import §`!s§.§4M§;
   import §`!s§.§9!i§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §=+§
   {
      
      private static const §]D§:int = 20;
      
      public static const §1!h§:Number = §`i§.§8#§;
      
      public static const §-G§:Number = §`i§.§1k§;
      
      public static const §5!w§:Number = 1 / 20;
      
      public static const § !#§:Number = §`i§.§1k§ * §5!w§;
      
      public static const §+""§:Number = §1!h§ * §5!w§;
      
      public static const §>"#§:§9!i§ = new §9!i§(13 - 3);
      
      protected static var §;W§:String;
      
      protected static var §++§:Number = 1;
      
      protected static var §9!U§:String = §[d§.§"7§;
       
      
      protected var §;j§:§7l§;
      
      private var §5!v§:Array = null;
      
      protected var §#S§:§5!-§;
      
      public var §4P§:§@0§;
      
      protected var §+!'§:§@H§;
      
      protected var §>!l§:§ i§;
      
      protected var §?!L§:§<!F§;
      
      protected var §&!`§:§2!k§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §7F§:Boolean = false;
      
      protected var §`!,§:Boolean = false;
      
      protected var §7!6§:Boolean = false;
      
      public var §!F§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §6"#§:Number;
      
      public var §3#§:Number;
      
      private var §]!>§:§0",§;
      
      private var §6!+§:Sprite;
      
      protected var §%!I§:§[d§;
      
      protected var §!! §:§,"3§ = null;
      
      private var §5!o§:EventDispatcher;
      
      private var § I§:Array;
      
      private var §+!e§:§5!5§;
      
      private var §!8§:§#s§;
      
      protected var §=!Q§:§!!G§;
      
      protected var §,W§:§7!3§;
      
      private var §@!o§:§3S§;
      
      private var §2!N§:§3S§;
      
      private var §6!k§:§3S§;
      
      private var §`!c§:Stage;
      
      private var §17§:§[!r§;
      
      protected var §%"5§:§9!<§;
      
      protected var §!K§:§9!<§;
      
      protected var §&C§:Number = 0.0;
      
      protected var §'O§:String;
      
      private var §6Y§:Boolean;
      
      private var §&t§:Number;
      
      private var §-4§:Number;
      
      protected var §[!$§:§@!=§;
      
      protected var §4!R§:§0l§;
      
      protected var §9%§:§%v§;
      
      protected var §#n§:§-g§;
      
      protected var §&!p§:uint = 1.417339207E9;
      
      public var §<M§:Boolean;
      
      private var §+"1§:Boolean = true;
      
      protected var §>N§:int = 0;
      
      protected var §%!w§:int = 0;
      
      protected var §]c§:Number = 1.0;
      
      protected var § !7§:Number = 1.0;
      
      protected var §@E§:Boolean;
      
      private var §@!R§:§4M§;
      
      public function §=+§(param1:Stage, param2:§0l§, param3:§%v§, param4:§-g§)
      {
         this.§ I§ = [];
         super();
         this.§5!o§ = new EventDispatcher();
         this.§`!c§ = param1;
         this.§4!R§ = param2;
         this.§9%§ = param3;
         this.§#n§ = param4;
         this.§=!Q§ = §!!G§.§&!;§;
         this.§,W§ = this.initAnimationManager(this.§=!Q§);
         this.§@!o§ = this.§2!y§();
         this.§2!N§ = this.initThemeSoundsManager();
         this.§6!k§ = this.initCutSceneManager();
         this.§@!R§ = new §4M§();
         var _loc5_:Stage3D = param1.stage3Ds[0];
         this.§+!e§ = new §5!5§(§0",§,param1,new Rectangle(0,0,§`i§.§8#§,§`i§.§1k§),_loc5_);
         §`i§.§+H§.addEventListener(§8!@§.§-!P§,this.§+!e§.onEnterFrame);
         _loc5_.addEventListener(Event.CONTEXT3D_CREATE,this.§5J§,false,0,true);
         this.§+!e§.§?!6§ = false;
         this.§+!e§.enableErrorChecking = false;
         this.§+!e§.§7@§ = 2;
         this.§+!e§.§4&§();
      }
      
      public static function §]!b§(param1:§+!F§, param2:§+!F§) : Number
      {
         var _loc3_:Number = param1.§;!=§ - param2.§;!=§;
         var _loc4_:Number = param1.§'!v§ - param2.§'!v§;
         return §"!Y§(_loc3_,_loc4_);
      }
      
      public static function §"!Y§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      protected function get sprite() : Sprite
      {
         if(!this.§6!+§ && this.§^I§)
         {
            this.§6!+§ = this.§]!>§.§<C§;
         }
         return this.§6!+§;
      }
      
      public function get §^I§() : Sprite
      {
         if(!this.§]!>§)
         {
            this.§]!>§ = this.§+!e§.§9G§ as §0",§;
            this.§]!>§.§!!z§ = false;
         }
         return this.§]!>§;
      }
      
      private function get §8!C§() : DisplayObject
      {
         if(this.§^I§)
         {
            return (this.§^I§ as §0",§).§8!C§;
         }
         return null;
      }
      
      public function get §%!E§() : §7!3§
      {
         return this.§,W§;
      }
      
      public function get §^!§() : §!!G§
      {
         return this.§=!Q§;
      }
      
      public function get camera() : § i§
      {
         return this.§>!l§;
      }
      
      public function get objects() : §7l§
      {
         return this.§;j§;
      }
      
      public function get particles() : §2!k§
      {
         return this.§&!`§;
      }
      
      public function get background() : §5!-§
      {
         return this.§#S§;
      }
      
      public function get slingshot() : §<!F§
      {
         return this.§?!L§;
      }
      
      public function get §#"3§() : §@H§
      {
         return this.§+!'§;
      }
      
      public function get stage() : Stage
      {
         return this.§`!c§;
      }
      
      public function get levelItemManager() : §0l§
      {
         return this.§4!R§;
      }
      
      public function get § try§() : §3S§
      {
         return this.§6!k§;
      }
      
      protected function get §+!4§() : §3S§
      {
         return this.§@!o§;
      }
      
      public function §'!L§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§[!$§ = new §@!=§(param1,param2,param3,param4);
      }
      
      public function get damageScoreMultiplier() : int
      {
         return §=+§.§>"#§.getValue();
      }
      
      public function get §6?§() : Boolean
      {
         return this.§+"1§;
      }
      
      public function set §6?§(param1:Boolean) : void
      {
         this.§+"1§ = param1;
      }
      
      public function clear() : void
      {
         if(this.§!8§)
         {
            this.§!8§.dispose();
         }
         if(this.§=!Q§)
         {
            this.§=!Q§.removeEventListener(Event.INIT,this.§`X§);
            this.§=!Q§.dispose();
         }
         if(this.§@!o§ && this.§@!o§.§^!§)
         {
            this.§@!o§.§^!§.dispose();
         }
         if(this.§6!k§ && this.§6!k§.§^!§)
         {
            this.§6!k§.§^!§.dispose();
         }
         if(this.§+!e§)
         {
            this.§+!e§.dispose();
         }
      }
      
      protected function §2!y§() : §3S§
      {
         return new §3S§(this.§`!c§.loaderInfo.parameters.assetsUrl || "",this.§`!c§.loaderInfo.parameters.buildNumber || "",this.§#n§);
      }
      
      protected function initThemeSoundsManager() : §3S§
      {
         return new §3S§(this.§`!c§.loaderInfo.parameters.assetsUrl || "",this.§`!c§.loaderInfo.parameters.buildNumber || "",this.§#n§,false);
      }
      
      protected function initCutSceneManager() : §3S§
      {
         return new §3S§(this.§`!c§.loaderInfo.parameters.assetsUrl || "",this.§`!c§.loaderInfo.parameters.buildNumber || "",this.§#n§);
      }
      
      protected function initAnimationManager(param1:§!!G§) : §7!3§
      {
         return new §7!3§(param1);
      }
      
      public function §2!J§(param1:Boolean) : void
      {
         if(§5!5§.§^'§)
         {
            if(param1)
            {
               §5!5§.§^'§.start();
            }
            else
            {
               §5!5§.§^'§.stop();
               §5!5§.§^'§.color = 0;
            }
         }
      }
      
      public function §@=§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function setController(param1:§,"3§) : void
      {
         if(this.§!! § != null)
         {
            this.§!! §.removeEventListeners();
         }
         this.§!! § = param1;
         if(this.mReadyToRun)
         {
            this.§!! §.addEventListeners();
         }
      }
      
      public function §@!v§() : §9!<§
      {
         return this.§%"5§;
      }
      
      protected function § $§(param1:§3!!§) : int
      {
         return 0;
      }
      
      public function §0C§(param1:§#s§, param2:Function) : void
      {
         var _loc5_:§3!!§ = null;
         var _loc6_:int = 0;
         this.§!8§ = param1;
         var _loc3_:int = this.§!8§.§ "#§;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = this.§!8§.§[!9§(_loc4_);
            _loc6_ = this.§ $§(_loc5_);
            this.§=!Q§.§'W§(_loc5_,_loc6_);
            _loc4_++;
         }
         if(param2 != null)
         {
            this.§5!o§.addEventListener(Event.INIT,param2);
            this.§ I§.push(param2);
         }
         if(this.§@B§())
         {
            this.§=!§();
         }
      }
      
      private function §@B§() : Boolean
      {
         this.§=!Q§.removeEventListener(Event.INIT,this.§`X§);
         if(this.§=!Q§.§9Q§())
         {
            this.initializeAnimations();
            this.§@E§ = false;
            return true;
         }
         this.§=!Q§.addEventListener(Event.INIT,this.§`X§);
         this.§@E§ = true;
         return false;
      }
      
      private function §`X§(param1:Event) : void
      {
         this.§=!Q§.removeEventListener(Event.INIT,this.§`X§);
         this.initializeAnimations();
         this.§@E§ = false;
         this.§=!§();
      }
      
      protected function initializeAnimations() : void
      {
         this.§,W§.initializeAnimations();
         this.§4!R§.§]-§();
      }
      
      private function §5J§(param1:Event) : void
      {
         if(!§5!5§.§<3§())
         {
            return;
         }
         this.§=!Q§.reInitializeTextures();
         if(this.§+!4§ && this.§+!4§.§^!§)
         {
            this.§+!4§.§^!§.reInitializeTextures();
         }
         if(this.§ try§ && this.§ try§.§^!§)
         {
            this.§ try§.§^!§.reInitializeTextures();
         }
         if(this.§@E§)
         {
            if(this.§@B§())
            {
               this.§=!§();
            }
         }
         if(this.§!! § != null && this.mReadyToRun)
         {
            this.§!! §.addEventListeners();
         }
         if(this.§@!o§)
         {
            this.§@!o§.§9Q§();
         }
         if(this.§6!k§)
         {
            if(this.§6!k§.§^!§)
            {
               this.§6!k§.§9Q§();
            }
         }
      }
      
      private function §=!§() : void
      {
         this.§5!o§.dispatchEvent(new Event(Event.INIT));
         this.§^J§();
      }
      
      private function §^J§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§ I§)
         {
            this.§5!o§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§ I§ = [];
      }
      
      public function init(param1:§[d§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§+!'§ = new §@H§(this,param1);
         this.§>!l§ = this.initializeLevelCamera(param1);
         this.§6"#§ = 0;
         this.§3#§ = 0;
         this.§6Y§ = false;
         this.mReadyToRun = false;
         this.§7F§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         param1.theme = param1.theme || "background_blue_grass";
         §9!U§ = param1.theme;
         this.§%!I§ = param1;
         this.§`!,§ = this.§3!b§(param1.theme);
         this.§7!6§ = this.§!!d§(param1.theme);
         if(this.§`!,§ && this.§7!6§)
         {
            this.initialize(param1);
         }
         else
         {
            this.§[!z§(param1.theme);
         }
         this.§&,§(param1.name);
         §&p§.init();
      }
      
      protected function §&,§(param1:String) : void
      {
         this.§%"5§ = new §9!<§(param1);
      }
      
      protected function §3!b§(param1:String) : Boolean
      {
         if(this.§@!o§)
         {
            return false;
         }
         return true;
      }
      
      protected function §!!d§(param1:String) : Boolean
      {
         var _loc2_:§`"-§ = null;
         if(this.§2!N§)
         {
            _loc2_ = this.§9%§.§%!H§(param1);
            if(_loc2_)
            {
               if(_loc2_.§]!i§ && !this.§2!N§.§%!r§(_loc2_.§]!i§))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function §4S§(param1:String) : Array
      {
         return null;
      }
      
      protected function §[!z§(param1:String) : void
      {
         var _loc2_:Array = null;
         var _loc3_:§`"-§ = null;
         if(this.§@!o§ && !this.§3!b§(param1))
         {
            this.§@!o§.removeEventListener(Event.COMPLETE,this.§<!r§);
            this.§@!o§.removeEventListener(Event.CANCEL,this.§4!`§);
            this.§@!o§.addEventListener(Event.COMPLETE,this.§<!r§);
            this.§@!o§.addEventListener(Event.CANCEL,this.§4!`§);
            _loc2_ = this.§4S§(param1);
            this.§@!o§.loadContent(param1,_loc2_);
         }
         if(this.§2!N§ && !this.§!!d§(param1))
         {
            this.§2!N§.removeEventListener(Event.COMPLETE,this.§5"+§);
            this.§2!N§.removeEventListener(Event.CANCEL,this.§3B§);
            this.§2!N§.addEventListener(Event.COMPLETE,this.§5"+§);
            this.§2!N§.addEventListener(Event.CANCEL,this.§3B§);
            _loc3_ = this.§9%§.§%!H§(param1);
            if(_loc3_)
            {
               this.§2!N§.loadContent(_loc3_.§]!i§);
            }
         }
      }
      
      private function §<!r§(param1:Event) : void
      {
         this.§@!o§.removeEventListener(Event.COMPLETE,this.§<!r§);
         this.§@!o§.removeEventListener(Event.CANCEL,this.§4!`§);
         this.§`!,§ = true;
         if(this.§`!,§ && this.§7!6§)
         {
            this.initialize(this.§%!I§);
         }
      }
      
      private function §4!`§(param1:Event) : void
      {
         this.§@!o§.removeEventListener(Event.COMPLETE,this.§<!r§);
         this.§@!o§.removeEventListener(Event.CANCEL,this.§4!`§);
         this.§7F§ = true;
      }
      
      private function §5"+§(param1:Event) : void
      {
         this.§@!o§.removeEventListener(Event.COMPLETE,this.§5"+§);
         this.§@!o§.removeEventListener(Event.CANCEL,this.§3B§);
         this.§7!6§ = true;
         if(this.§`!,§ && this.§7!6§)
         {
            this.initialize(this.§%!I§);
         }
      }
      
      private function §3B§(param1:Event) : void
      {
         this.§@!o§.removeEventListener(Event.COMPLETE,this.§5"+§);
         this.§@!o§.removeEventListener(Event.CANCEL,this.§3B§);
         this.§7!6§ = true;
         if(this.§`!,§ && this.§7!6§)
         {
            this.initialize(this.§%!I§);
         }
      }
      
      public function get §64§() : §!!G§
      {
         if(this.§+!4§)
         {
            return this.§+!4§.§^!§;
         }
         return null;
      }
      
      protected function §-!z§(param1:§[d§) : void
      {
         b2Settings.b2_linearSleepTolerance = b2Settings.§7!4§;
      }
      
      private function initialize(param1:§[d§) : void
      {
         this.§[!$§ = null;
         this.§<M§ = false;
         if(§5!5§.§>F§)
         {
            §5!5§.§>F§.speed = 1;
         }
         this.§-!z§(param1);
         this.§'!a§(param1);
         this.§#S§ = this.§=!>§(param1.theme,0 / §5!w§,this.§64§,this.§>!l§.§ v§());
         this.§#S§.§;![§(§`i§.§-!v§());
         if(§5!5§.§^'§)
         {
            §5!5§.§^'§.color = this.§#S§.§,R§;
         }
         this.§;j§ = this.initializeLevelObjectManager(param1);
         this.§;j§.§2!c§ = this.§&!Z§(param1.name);
         this.§?!L§ = this.initializeLevelSlingshot(param1);
         this.§&!`§ = this.§!D§(this.§,W§,this.§=!Q§);
         this.§>!l§.init();
         this.§!!5§();
         this.§[!W§();
         this.mReadyToRun = true;
         if(this.§!! §)
         {
            this.§!! §.addEventListeners();
         }
         if(param1.name == §;W§)
         {
            this.§>!l§.§?k§(§++§);
            this.§`$§(0);
         }
         else
         {
            §;W§ = param1.name;
         }
         this.§4]§();
      }
      
      protected function §4]§() : void
      {
         this.§;j§.§4]§();
      }
      
      protected function §'!a§(param1:§[d§) : void
      {
         this.§4P§ = new §@0§(this);
      }
      
      protected function §[!W§() : void
      {
         if(this.§'O§)
         {
            this.§!K§ = §9!<§.initialize(this.§'O§);
            this.§!K§.speed = 1;
            this.§!K§.play();
            this.§&C§ = -1000;
            this.§'O§ = null;
         }
      }
      
      public function § !T§(param1:String) : void
      {
         this.§'O§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§!K§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§!K§)
         {
            if(param1)
            {
               this.§!K§.speed = Math.min(this.§!K§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§!K§.speed = Math.max(this.§!K§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§!K§)
         {
            this.§!K§.speed = 1;
         }
      }
      
      protected function initializeLevelObjectManager(param1:§[d§) : §7l§
      {
         var _loc2_:String = §`"-§.§?!@§;
         return new §7l§(this,param1,new Sprite(),_loc2_);
      }
      
      protected function §&!Z§(param1:String) : §%"&§
      {
         if(!param1)
         {
            return null;
         }
         var _loc2_:Class = this.§@!R§[param1.toLowerCase()];
         if(!_loc2_)
         {
            return null;
         }
         return new _loc2_() as §%"&§;
      }
      
      public function §%!c§(param1:String, param2:Class) : void
      {
         this.§@!R§[param1.toLowerCase()] = param2;
      }
      
      protected function initializeLevelCamera(param1:§[d§) : § i§
      {
         return new § i§(this,param1);
      }
      
      protected function §=!>§(param1:String, param2:Number, param3:§!!G§, param4:Number) : §5!-§
      {
         var _loc5_:§`"-§;
         if((_loc5_ = this.§9%§.§%!H§(param1)) == null)
         {
            §?p§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §[d§.§"7§;
            _loc5_ = this.§9%§.§%!H§(param1);
         }
         return new §5!-§(_loc5_,param2,param3,param4,!§5!5§.§ 4§);
      }
      
      protected function initializeLevelSlingshot(param1:§[d§) : §<!F§
      {
         return new §<!F§(this,param1,new Sprite());
      }
      
      protected function §!D§(param1:§7!3§, param2:§!!G§) : §2!k§
      {
         return new §2!k§(param1,param2);
      }
      
      public function initializeEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§[d§ = new §[d§();
         _loc3_.slingshotY = -12;
         var _loc4_:§3!?§;
         (_loc4_ = new §3!?§()).left = 0;
         _loc4_.top = -§ i§.§%"3§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + § i§.§%"3§;
         _loc4_.right = _loc4_.left + § i§.§;0§;
         _loc4_.y = -13.929;
         _loc4_.x = § i§.§;0§;
         _loc4_.id = § i§.§`!4§;
         _loc3_.§`k§(_loc4_);
         var _loc5_:§3!?§;
         (_loc5_ = new §3!?§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + § i§.§;0§;
         _loc5_.bottom = _loc5_.top + § i§.§%"3§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + § i§.§;0§ / 2;
         _loc5_.id = § i§.§'`§;
         _loc3_.§`k§(_loc5_);
         this.§"I§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§9!U§ != null)
         {
            _loc3_.theme = §9!U§;
         }
         this.init(_loc3_);
      }
      
      protected function §"I§(param1:§[d§, param2:Boolean) : void
      {
         if(param2)
         {
            this.§'!B§(param1);
         }
      }
      
      protected function §2f§() : Number
      {
         this.§&!p§ ^= this.§&!p§ << 21;
         this.§&!p§ ^= this.§&!p§ >>> 35;
         this.§&!p§ ^= this.§&!p§ << 4;
         return this.§&!p§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §'!B§(param1:§[d§) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§5"-§ = null;
         this.§&!p§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < 10)
         {
            _loc4_ = 0;
            while(_loc4_ < 5)
            {
               _loc5_ = this.§2f§() * 5;
               (_loc6_ = new §5"-§()).x = 30 + _loc4_ * 10 + this.§2f§() * 9;
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
                  _loc6_.angle = 45 - this.§2f§() * 90;
               }
               else
               {
                  _loc6_.y = -30 + _loc3_ * 6 - this.§2f§() * 3 - _loc4_ * 8;
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
                  _loc6_.angle = this.§2f§() * 360;
               }
               _loc6_.id = _loc2_;
               param1.§'!%§(_loc6_);
               _loc2_++;
               _loc4_++;
            }
            _loc3_++;
         }
      }
      
      private function §4§() : void
      {
      }
      
      protected function §,l§() : void
      {
         if(§5!-§.§<!R§)
         {
            this.§7"$§(this.§#S§.§]]§);
         }
      }
      
      protected function §6O§() : void
      {
         this.§7"$§(this.§&!`§.§0#§(§2!k§.§-E§));
         this.§7"$§(this.§&!`§.§0#§(§2!k§.§`]§));
         this.§7"$§(this.§;j§.§,!&§);
      }
      
      protected function §=!X§() : void
      {
         this.§7"$§(this.§&!`§.§0#§(§2!k§.§5o§));
         this.§7"$§(this.§;j§.§1F§);
         this.§7"$§(this.§?!L§.sprite);
         this.§7"$§(this.§&!`§.§0#§(§2!k§.§ g§));
      }
      
      protected function §;=§() : void
      {
         this.§7"$§(this.§#S§.§3!e§);
         if(§5!-§.§<!R§)
         {
            this.§7"$§(this.§#S§.§4+§);
         }
      }
      
      protected function §]!B§() : void
      {
         this.§7"$§(this.§;j§.§&Y§);
         this.§7"$§(this.§&!`§.§0#§(§2!k§.§@a§));
         this.§7"$§(this.§&!`§.§0#§(§2!k§.§9V§));
      }
      
      private function §!!5§() : void
      {
         this.§,l§();
         this.§6O§();
         this.§=!X§();
         this.§;=§();
         this.§]!B§();
      }
      
      protected function §7"$§(param1:DisplayObject) : void
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
         if(§`i§.§=!I§ > §`i§.§%!a§)
         {
            param1 /= §`i§.§=!I§;
            param2 /= §`i§.§=!I§;
         }
         else
         {
            param1 /= §`i§.§%!a§;
            param2 /= §`i§.§%!a§;
         }
         param3.x = ((param1 - this.sprite.x) / § i§.§>!_§ + this.§>!l§.§;!#§) * §5!w§;
         param3.y = ((param2 - this.sprite.y) / § i§.§>!_§ + this.§>!l§.§]j§) * §5!w§;
         return param3;
      }
      
      public function §3?§(param1:Number, param2:Number, param3:Point = null) : Point
      {
         if(!param3)
         {
            param3 = new Point();
         }
         param3.x = (param1 / §5!w§ - this.§>!l§.§;!#§) * § i§.§>!_§ + this.sprite.x;
         param3.y = (param2 / §5!w§ - this.§>!l§.§]j§) * § i§.§>!_§ + this.sprite.y;
         var _loc4_:Number = Math.max(§`i§.§=!I§,§`i§.§%!a§);
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
            this.background.setScreenOffset(param1,param2,this.§>N§,this.§%!w§,param3,this.§]c§,this.§ !7§);
         }
         if(this.objects)
         {
            this.objects.§#X§(param1,param2);
         }
         if(this.§4P§)
         {
            this.§4P§.§#X§(param1,param2);
         }
         if(this.slingshot)
         {
            this.slingshot.§#X§(param1,param2);
         }
         if(this.particles)
         {
            this.particles.§#X§(param1,param2);
         }
      }
      
      public function §0!p§(param1:String, param2:Number, param3:Number) : void
      {
         this.§;j§.§'!%§(param1,param2,param3,0,§7l§.§-u§);
      }
      
      public function §1'§() : void
      {
         if(this.§8!C§)
         {
            this.§8!C§.visible = true;
            this.§8!C§.alpha = 0;
         }
         this.§!F§ = 0;
      }
      
      public function §<!;§(param1:Boolean, param2:Number = 0, param3:Number = 0, param4:Number = 0) : void
      {
         if(param1)
         {
            this.§17§ = new §[!r§(param2,param3,param4);
         }
         else
         {
            this.§17§ = null;
         }
      }
      
      public function clearLevel() : void
      {
         if(this.§#S§)
         {
            this.§#S§.dispose();
            this.§#S§ = null;
         }
         if(this.§;j§)
         {
            this.§;j§.dispose();
            this.§;j§ = null;
         }
         if(this.§4P§)
         {
            if(!this.§4P§.§+![§)
            {
            }
            this.§4P§.clear();
            this.§4P§ = null;
         }
         if(this.§+!'§)
         {
            this.§+!'§.clear();
            this.§+!'§ = null;
         }
         if(this.§?!L§)
         {
            this.§?!L§.dispose();
            this.§?!L§ = null;
         }
         if(this.§>!l§)
         {
            §++§ = this.§>!l§.§3!9§;
            this.§>!l§.clear();
            this.§>!l§ = null;
         }
         if(this.§&!`§)
         {
            this.§&!`§.dispose();
            this.§&!`§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§6"#§ = 0;
         this.§3#§ = 0;
         this.mReadyToRun = false;
         this.§6Y§ = false;
         this.§!F§ = §3t§.§7!j§;
         if(this.§^I§)
         {
            (this.§^I§ as §0",§).§8O§.x = 0;
            (this.§^I§ as §0",§).§8O§.y = 0;
         }
         if(this.§8!C§)
         {
            this.§8!C§.visible = false;
         }
         this.§!K§ = null;
         this.§%"5§ = null;
         if(this.§@!o§)
         {
            this.§@!o§.removeEventListener(Event.COMPLETE,this.§<!r§);
            this.§@!o§.removeEventListener(Event.CANCEL,this.§4!`§);
         }
         if(this.§2!N§)
         {
            this.§2!N§.removeEventListener(Event.COMPLETE,this.§5"+§);
            this.§2!N§.removeEventListener(Event.CANCEL,this.§3B§);
         }
         this.§^J§();
         if(§5!5§.§^'§)
         {
            §5!5§.§^'§.color = 0;
         }
         if(this.§!! §)
         {
            this.§!! §.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver(param1:int) : void
      {
      }
      
      public function §'!?§() : String
      {
         if(this.§%"5§)
         {
            return this.§%"5§.toString();
         }
         return null;
      }
      
      public function get §>y§() : Number
      {
         if(this.§[!$§)
         {
            return this.§[!$§.speed;
         }
         return 1;
      }
      
      public function update(param1:Number, param2:Boolean) : Number
      {
         if(!this.mReadyToRun || !§5!5§.§<3§())
         {
            return 0;
         }
         if(this.§!K§ && this.§!K§.§@t§)
         {
            return this.§<!Z§(param1,param2);
         }
         return this.§-"%§(param1,true,param2);
      }
      
      protected function §-"%§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc4_:Boolean = false;
         if(this.§[!$§)
         {
            _loc4_ = this.§[!$§.update(param1);
            param1 *= this.§[!$§.speed;
            if(§5!5§.§>F§)
            {
               §5!5§.§>F§.speed = this.§[!$§.speed;
            }
            if(!_loc4_)
            {
               this.§[!$§ = null;
            }
         }
         this.§3#§ += param1;
         if(this.§6?§)
         {
            this.§6"#§ += param1;
            this.§6"#§ = this.§4P§.§5!i§(this.§6"#§);
         }
         else
         {
            this.§6"#§ = 0;
            this.§?8§(param1);
         }
         this.§?!L§.update(param1,param3);
         if(param2)
         {
            this.§`$§(param1);
         }
         return param1;
      }
      
      private function §<!Z§(param1:Number, param2:Boolean) : Number
      {
         var _loc4_:Number = NaN;
         var _loc3_:Number = §@0§.§="3§;
         if(this.§!K§)
         {
            param1 *= this.§!K§.speed;
            _loc4_ = this.§3#§ + param1;
            while(this.§3#§ + _loc3_ < _loc4_)
            {
               if(this.§3#§ + _loc3_ > this.§&C§)
               {
                  this.§!K§.step(this);
                  this.§&C§ += _loc3_;
               }
               this.§-"%§(_loc3_,false,param2);
            }
            if(_loc4_ > this.§&C§ + _loc3_)
            {
               this.§!K§.step(this);
               this.§&C§ += _loc3_;
            }
            if(this.§3#§ < _loc4_)
            {
               this.§-"%§(_loc4_ - this.§3#§,true,param2);
            }
            return param1;
         }
         return param1;
      }
      
      private function §`$§(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         this.§#S§.update(param1);
         this.§;j§.§6!8§(param1,this.§4P§.§7!§,this.§6"#§);
         this.§4!t§();
         if(this.§!F§ < §3t§.§7!j§)
         {
            this.§!F§ += param1;
            _loc2_ = §3t§.§7!j§ / 2;
            _loc3_ = (-Math.abs(this.§!F§ - _loc2_) + _loc2_) * (§3t§.§,!D§ / _loc2_);
            if(this.§8!C§)
            {
               this.§8!C§.alpha = _loc3_;
            }
         }
         else if(this.§8!C§)
         {
            this.§8!C§.visible = false;
         }
         if(this.§17§)
         {
            if(!this.§17§.§9!e§(this.§>!l§,param1))
            {
               this.§<!;§(false);
            }
         }
         this.§>!l§.§00§(param1);
         this.§4P§.§3+§();
         this.§&!`§.update(param1);
      }
      
      public function §?8§(param1:Number) : void
      {
         this.objects.§2!X§(param1);
         this.§?K§();
      }
      
      protected function §4!t§() : void
      {
         var _loc1_:§&!-§ = null;
         if(this.§5!v§ != null)
         {
            for each(_loc1_ in this.§5!v§)
            {
               if(!_loc1_.isLeavingTrail)
               {
                  this.§%!k§(_loc1_);
               }
            }
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§+!!§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            _loc2_ = this.§;j§.§[z§(true);
            if(_loc2_)
            {
               _loc2_.scream();
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§;j§.§5&§());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            _loc2_ = this.§;j§.§[z§(true);
            if(_loc2_)
            {
               _loc2_.blink();
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§;j§.§5&§());
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §'!P§.§0!2§;
         }
         §&p§.addScore(param1,param2);
         this.§!! §.addScore(param1);
         if(param3 && param1 > 0 && !this.§<M§)
         {
            this.§'!o§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §'!o§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §'!P§.§@"6§;
         }
         this.§&!`§.§+<§(§'!P§.§+!;§,§2!k§.§@a§,§'!P§.§^x§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §,`§(param1:§+!F§) : void
      {
         if(this.§5!v§ == null)
         {
            this.§5!v§ = new Array();
         }
         this.§5!v§.push(param1);
      }
      
      public function §9!3§() : void
      {
         this.§?!L§.§9!3§();
         this.§;j§.§1![§();
         this.§<M§ = true;
      }
      
      public function §%!k§(param1:§&!-§) : void
      {
         this.§&!`§.§"n§(§2!k§.§-E§);
         if(this.§5!v§.indexOf(param1) >= 0)
         {
            this.§5!v§.splice(this.§5!v§.indexOf(param1),1);
         }
         if(this.§5!v§.length == 0)
         {
            this.§5!v§ = null;
         }
      }
      
      public function §!_§(param1:§`!d§, param2:Number, param3:Number) : §=!V§
      {
         var _loc4_:§=!V§ = §=!V§(this.§;j§.§'!%§(param1.name,param1.x,param1.y,0,§7l§.§-u§,true,true,true,param1.scale));
         var _loc5_:Number = param1.§+!%§;
         if(param1.§=",§ > 1)
         {
            _loc4_.§]l§(param1.§=",§);
         }
         if(param1.§+Z§ != 0)
         {
            _loc5_ = param1.§+Z§;
         }
         var _loc6_:Number = -_loc5_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc7_:Number = _loc5_ * param2 * Math.sin(param3 / (180 / Math.PI));
         _loc4_.§28§(new b2Vec2(_loc6_,_loc7_),false,true);
         _loc4_.isLeavingTrail = true;
         this.camera.§2!6§(§ i§.§1!W§);
         if(this.§%"5§)
         {
            this.§%"5§.§!_§(this.§4P§.§[p§,param1.x,param1.y,param2,param3);
         }
         return _loc4_;
      }
      
      public function activateSpecialPower(param1:Number, param2:Number) : void
      {
         this.§6Y§ = true;
         this.§&t§ = param1;
         this.§-4§ = param2;
      }
      
      private function §?K§() : void
      {
         if(!this.§6Y§)
         {
            return;
         }
         this.§6Y§ = false;
         if(this.§;j§.activeObject is §=!V§)
         {
            this.§;j§.activateSpecialPower(this.§&t§,this.§-4§);
         }
         if(this.§%"5§)
         {
            this.§%"5§.§<!T§(this.§4P§.§[p§,this.§&t§,this.§-4§);
         }
      }
      
      public function §!"$§() : void
      {
         this.§;j§.§!"$§();
      }
      
      public function §]!r§() : void
      {
         this.§;j§.§>I§();
      }
      
      public function §5#§() : §[d§
      {
         var _loc1_:§[d§ = new §[d§();
         _loc1_.scoreGold = this.§%!I§.scoreGold;
         _loc1_.scoreSilver = this.§%!I§.scoreSilver;
         this.§>!l§.§!"%§(_loc1_);
         this.§;j§.§,!d§(_loc1_);
         this.§?!L§.§&B§(_loc1_);
         _loc1_.theme = this.§#S§.§-!r§();
         return _loc1_;
      }
      
      public function §]!E§() : int
      {
         return this.§%!I§.scoreSilver;
      }
      
      public function §%O§() : int
      {
         return this.§%!I§.scoreGold;
      }
      
      public function §get §(param1:int) : void
      {
         this.§%!I§.scoreSilver = param1;
      }
      
      public function §9! §(param1:int) : void
      {
         this.§%!I§.scoreGold = param1;
      }
      
      public function §`!M§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§>N§ = param1;
         this.§%!w§ = param2;
         this.§]c§ = param3;
         this.§ !7§ = param4;
         if(this.§]!>§)
         {
            this.§]!>§.§,u§(param1,param2);
         }
         if(this.§>!l§)
         {
            this.§>!l§.§00§(0);
         }
      }
      
      public function §`!0§(param1:§+!F§, param2:§+!F§) : Boolean
      {
         return false;
      }
      
      public function get currentLevel() : §[d§
      {
         return this.§%!I§;
      }
      
      public function get levelObjects() : §7l§
      {
         return this.§;j§;
      }
      
      protected function get §43§() : §5!5§
      {
         return this.§+!e§;
      }
      
      public function get §"!M§() : int
      {
         return §]D§;
      }
   }
}
