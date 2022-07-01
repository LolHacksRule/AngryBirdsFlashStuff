package §@"1§
{
   import § !%§.b2Settings;
   import §!!<§.§-"4§;
   import §"!-§.§ !§;
   import §"!-§.§"x§;
   import §"!-§.§1i§;
   import §"!-§.§@!4§;
   import §"!-§.§[-§;
   import §'w§.§ !7§;
   import §+c§.§5!6§;
   import §+c§.§;L§;
   import §,!k§.b2Vec2;
   import §-!F§.§?!k§;
   import §0!Y§.DisplayObject;
   import §0!Y§.Sprite;
   import §5!W§.§>P§;
   import §6!?§.§&"§;
   import §6!?§.§;u§;
   import §6!?§.§`!O§;
   import §82§.§%v§;
   import §82§.§8W§;
   import §9`§.§&>§;
   import §9`§.§<!§;
   import §;f§.§&r§;
   import §;n§.§?L§;
   import §<!A§.§false§;
   import §>!L§.§-"#§;
   import §>!a§.§-?§;
   import §>!a§.§0!t§;
   import §>!a§.§5l§;
   import com.angrybirds.§4!l§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §"h§
   {
      
      private static const §%!h§:int = 20;
      
      public static const §[!C§:Number = §4!l§.§^!z§;
      
      public static const §0=§:Number = §4!l§.§^!y§;
      
      public static const §4<§:Number = 1 / 20;
      
      public static const §!%§:Number = §4!l§.§^!y§ * §4<§;
      
      public static const §^!V§:Number = §[!C§ * §4<§;
      
      public static const §2c§:§?!k§ = new §?!k§(13 - 3);
      
      protected static var §6!§:String;
      
      protected static var §;!z§:Number = 1;
      
      protected static var §4P§:String = §-?§.§5!L§;
       
      
      protected var §#P§:§1i§;
      
      private var §^!F§:Array = null;
      
      protected var §+k§:§[!7§;
      
      public var §-!R§:§@!y§;
      
      protected var §>!W§:§6n§;
      
      protected var §+H§:§ !7§;
      
      protected var §%f§:§`!j§;
      
      protected var §^X§:§8W§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §&M§:Boolean = false;
      
      protected var §`!B§:Boolean = false;
      
      protected var §"=§:Boolean = false;
      
      public var §1!"§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §2i§:Number;
      
      public var §]7§:Number;
      
      private var §9!p§:§&m§;
      
      private var §%h§:Sprite;
      
      protected var §4!I§:§-?§;
      
      protected var §0!C§:§&r§ = null;
      
      private var §>Z§:EventDispatcher;
      
      private var §7s§:Array;
      
      private var §4!G§:§>P§;
      
      private var §+1§:§&>§;
      
      protected var §#=§:§`!O§;
      
      protected var §="&§:§;u§;
      
      private var §>"3§:§&"§;
      
      private var §'"!§:§&"§;
      
      private var §,!W§:§&"§;
      
      private var §9!I§:Stage;
      
      private var §@!#§:§!<§;
      
      protected var §9!l§:§?L§;
      
      protected var §2!?§:§?L§;
      
      protected var §`",§:Number = 0.0;
      
      protected var §[""§:String;
      
      private var §,>§:Boolean;
      
      private var §!!p§:Number;
      
      private var §;X§:Number;
      
      protected var §=!^§:§0" §;
      
      protected var §'!f§:§-"4§;
      
      protected var § if§:§5!6§;
      
      protected var §^!§:§5l§;
      
      protected var §[!%§:uint = 1.417339207E9;
      
      public var §46§:Boolean;
      
      protected var §^!B§:int = 0;
      
      protected var §2!w§:int = 0;
      
      protected var §>",§:Number = 1.0;
      
      protected var §;!T§:Number = 1.0;
      
      protected var §8;§:Boolean;
      
      public function §"h§(param1:Stage, param2:§-"4§, param3:§5!6§, param4:§5l§)
      {
         this.§7s§ = [];
         super();
         this.§>Z§ = new EventDispatcher();
         this.§9!I§ = param1;
         this.§'!f§ = param2;
         this.§ if§ = param3;
         this.§^!§ = param4;
         this.§#=§ = §`!O§.§=J§;
         this.§="&§ = this.initAnimationManager(this.§#=§);
         this.§>"3§ = this.§7o§();
         this.§'"!§ = this.initThemeSoundsManager();
         this.§,!W§ = this.initCutSceneManager();
         var _loc5_:Stage3D = param1.stage3Ds[0];
         this.§4!G§ = new §>P§(§&m§,param1,new Rectangle(0,0,§4!l§.§^!z§,§4!l§.§^!y§),_loc5_);
         §4!l§.§6>§.addEventListener(§-"#§.§@!t§,this.§4!G§.onEnterFrame);
         _loc5_.addEventListener(Event.CONTEXT3D_CREATE,this.§ !<§,false,0,true);
         this.§4!G§.§9m§ = false;
         this.§4!G§.enableErrorChecking = false;
         this.§4!G§.§2!C§ = 2;
         this.§4!G§.§ else§();
      }
      
      public static function §^2§(param1:§@!4§, param2:§@!4§) : Number
      {
         var _loc3_:Number = param1.§?_§ - param2.§?_§;
         var _loc4_:Number = param1.§1![§ - param2.§1![§;
         return §6!L§(_loc3_,_loc4_);
      }
      
      public static function §6!L§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      protected function get sprite() : Sprite
      {
         if(!this.§%h§ && this.§1!f§)
         {
            this.§%h§ = this.§9!p§.§5!Z§;
         }
         return this.§%h§;
      }
      
      public function get §1!f§() : Sprite
      {
         if(!this.§9!p§)
         {
            this.§9!p§ = this.§4!G§.§5!3§ as §&m§;
            this.§9!p§.§9"$§ = false;
         }
         return this.§9!p§;
      }
      
      private function get §5!p§() : DisplayObject
      {
         if(this.§1!f§)
         {
            return (this.§1!f§ as §&m§).§5!p§;
         }
         return null;
      }
      
      public function get §[!c§() : §;u§
      {
         return this.§="&§;
      }
      
      public function get §&p§() : §`!O§
      {
         return this.§#=§;
      }
      
      public function get camera() : § !7§
      {
         return this.§+H§;
      }
      
      public function get objects() : §1i§
      {
         return this.§#P§;
      }
      
      public function get particles() : §8W§
      {
         return this.§^X§;
      }
      
      public function get background() : §[!7§
      {
         return this.§+k§;
      }
      
      public function get slingshot() : §`!j§
      {
         return this.§%f§;
      }
      
      public function get §7!p§() : §6n§
      {
         return this.§>!W§;
      }
      
      public function get stage() : Stage
      {
         return this.§9!I§;
      }
      
      public function get levelItemManager() : §-"4§
      {
         return this.§'!f§;
      }
      
      public function get §2!!§() : §&"§
      {
         return this.§,!W§;
      }
      
      protected function get §6!_§() : §&"§
      {
         return this.§>"3§;
      }
      
      public function §^!!§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§=!^§ = new §0" §(param1,param2,param3,param4);
      }
      
      public function get damageScoreMultiplier() : int
      {
         return §"h§.§2c§.getValue();
      }
      
      public function clear() : void
      {
         if(this.§+1§)
         {
            this.§+1§.dispose();
         }
         if(this.§#=§)
         {
            this.§#=§.removeEventListener(Event.INIT,this.§,!>§);
            this.§#=§.dispose();
         }
         if(this.§>"3§ && this.§>"3§.§&p§)
         {
            this.§>"3§.§&p§.dispose();
         }
         if(this.§,!W§ && this.§,!W§.§&p§)
         {
            this.§,!W§.§&p§.dispose();
         }
         if(this.§4!G§)
         {
            this.§4!G§.dispose();
         }
      }
      
      protected function §7o§() : §&"§
      {
         return new §&"§(this.§9!I§.loaderInfo.parameters.assetsUrl || "",this.§9!I§.loaderInfo.parameters.buildNumber || "",this.§^!§);
      }
      
      protected function initThemeSoundsManager() : §&"§
      {
         return new §&"§(this.§9!I§.loaderInfo.parameters.assetsUrl || "",this.§9!I§.loaderInfo.parameters.buildNumber || "",this.§^!§,false);
      }
      
      protected function initCutSceneManager() : §&"§
      {
         return new §&"§(this.§9!I§.loaderInfo.parameters.assetsUrl || "",this.§9!I§.loaderInfo.parameters.buildNumber || "",this.§^!§);
      }
      
      protected function initAnimationManager(param1:§`!O§) : §;u§
      {
         return new §;u§(param1);
      }
      
      public function §&!L§(param1:Boolean) : void
      {
         if(§>P§.§;_§)
         {
            if(param1)
            {
               §>P§.§;_§.start();
            }
            else
            {
               §>P§.§;_§.stop();
               §>P§.§;_§.color = 0;
            }
         }
      }
      
      public function §-!Y§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function setController(param1:§&r§) : void
      {
         if(this.§0!C§ != null)
         {
            this.§0!C§.removeEventListeners();
         }
         this.§0!C§ = param1;
         if(this.mReadyToRun)
         {
            this.§0!C§.addEventListeners();
         }
      }
      
      public function §9!c§() : §?L§
      {
         return this.§9!l§;
      }
      
      protected function §+!-§(param1:§<!§) : int
      {
         return 0;
      }
      
      public function §6!j§(param1:§&>§, param2:Function) : void
      {
         var _loc5_:§<!§ = null;
         var _loc6_:int = 0;
         this.§+1§ = param1;
         var _loc3_:int = this.§+1§.§ #§;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = this.§+1§.§<;§(_loc4_);
            _loc6_ = this.§+!-§(_loc5_);
            this.§#=§.§'!e§(_loc5_,_loc6_);
            _loc4_++;
         }
         if(param2 != null)
         {
            this.§>Z§.addEventListener(Event.INIT,param2);
            this.§7s§.push(param2);
         }
         if(this.§^U§())
         {
            this.§!!!§();
         }
      }
      
      private function §^U§() : Boolean
      {
         this.§#=§.removeEventListener(Event.INIT,this.§,!>§);
         if(this.§#=§.§3r§())
         {
            this.initializeAnimations();
            this.§8;§ = false;
            return true;
         }
         this.§#=§.addEventListener(Event.INIT,this.§,!>§);
         this.§8;§ = true;
         return false;
      }
      
      private function §,!>§(param1:Event) : void
      {
         this.§#=§.removeEventListener(Event.INIT,this.§,!>§);
         this.initializeAnimations();
         this.§8;§ = false;
         this.§!!!§();
      }
      
      protected function initializeAnimations() : void
      {
         this.§="&§.initializeAnimations();
         this.§'!f§.§>[§();
      }
      
      private function § !<§(param1:Event) : void
      {
         this.§#=§.§""§();
         if(this.§6!_§ && this.§6!_§.§&p§)
         {
            this.§6!_§.§&p§.§""§();
         }
         if(this.§2!!§ && this.§2!!§.§&p§)
         {
            this.§2!!§.§&p§.§""§();
         }
         if(this.§8;§)
         {
            if(this.§^U§())
            {
               this.§!!!§();
            }
         }
         if(this.§0!C§ != null && this.mReadyToRun)
         {
            this.§0!C§.addEventListeners();
         }
         if(this.§>"3§)
         {
            this.§>"3§.§3r§();
         }
         if(this.§,!W§)
         {
            if(this.§,!W§.§&p§)
            {
               this.§,!W§.§3r§();
            }
         }
      }
      
      private function §!!!§() : void
      {
         this.§>Z§.dispatchEvent(new Event(Event.INIT));
         this.§7!o§();
      }
      
      private function §7!o§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§7s§)
         {
            this.§>Z§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§7s§ = [];
      }
      
      public function init(param1:§-?§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§>!W§ = new §6n§(this,param1);
         this.§+H§ = this.initializeLevelCamera(param1);
         this.§2i§ = 0;
         this.§]7§ = 0;
         this.§,>§ = false;
         this.mReadyToRun = false;
         this.§&M§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         param1.theme = param1.theme || "background_blue_grass";
         §4P§ = param1.theme;
         this.§4!I§ = param1;
         this.§`!B§ = this.§2n§(param1.theme);
         this.§"=§ = this.§+-§(param1.theme);
         if(this.§`!B§ && this.§"=§)
         {
            this.initialize(param1);
         }
         else
         {
            this.§6!E§(param1.theme);
         }
         this.§;!r§(param1.name);
         §"1§.init();
      }
      
      protected function §;!r§(param1:String) : void
      {
         this.§9!l§ = new §?L§(param1);
      }
      
      protected function §2n§(param1:String) : Boolean
      {
         if(this.§>"3§)
         {
            return false;
         }
         return true;
      }
      
      protected function §+-§(param1:String) : Boolean
      {
         var _loc2_:§;L§ = null;
         if(this.§'"!§)
         {
            _loc2_ = this.§ if§.§"!?§(param1);
            if(_loc2_)
            {
               if(_loc2_.§+!C§ && !this.§'"!§.§9!^§(_loc2_.§+!C§))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function §9I§(param1:String) : Array
      {
         return null;
      }
      
      protected function §6!E§(param1:String) : void
      {
         var _loc2_:Array = null;
         var _loc3_:§;L§ = null;
         if(this.§>"3§ && !this.§2n§(param1))
         {
            this.§>"3§.removeEventListener(Event.COMPLETE,this.§7r§);
            this.§>"3§.removeEventListener(Event.CANCEL,this.§'!L§);
            this.§>"3§.addEventListener(Event.COMPLETE,this.§7r§);
            this.§>"3§.addEventListener(Event.CANCEL,this.§'!L§);
            _loc2_ = this.§9I§(param1);
            this.§>"3§.loadContent(param1,_loc2_);
         }
         if(this.§'"!§ && !this.§+-§(param1))
         {
            this.§'"!§.removeEventListener(Event.COMPLETE,this.§?0§);
            this.§'"!§.removeEventListener(Event.CANCEL,this.§%!S§);
            this.§'"!§.addEventListener(Event.COMPLETE,this.§?0§);
            this.§'"!§.addEventListener(Event.CANCEL,this.§%!S§);
            _loc3_ = this.§ if§.§"!?§(param1);
            if(_loc3_)
            {
               this.§'"!§.loadContent(_loc3_.§+!C§);
            }
         }
      }
      
      private function §7r§(param1:Event) : void
      {
         this.§>"3§.removeEventListener(Event.COMPLETE,this.§7r§);
         this.§>"3§.removeEventListener(Event.CANCEL,this.§'!L§);
         this.§`!B§ = true;
         if(this.§`!B§ && this.§"=§)
         {
            this.initialize(this.§4!I§);
         }
      }
      
      private function §'!L§(param1:Event) : void
      {
         this.§>"3§.removeEventListener(Event.COMPLETE,this.§7r§);
         this.§>"3§.removeEventListener(Event.CANCEL,this.§'!L§);
         this.§&M§ = true;
      }
      
      private function §?0§(param1:Event) : void
      {
         this.§>"3§.removeEventListener(Event.COMPLETE,this.§?0§);
         this.§>"3§.removeEventListener(Event.CANCEL,this.§%!S§);
         this.§"=§ = true;
         if(this.§`!B§ && this.§"=§)
         {
            this.initialize(this.§4!I§);
         }
      }
      
      private function §%!S§(param1:Event) : void
      {
         this.§>"3§.removeEventListener(Event.COMPLETE,this.§?0§);
         this.§>"3§.removeEventListener(Event.CANCEL,this.§%!S§);
         this.§"=§ = true;
         if(this.§`!B§ && this.§"=§)
         {
            this.initialize(this.§4!I§);
         }
      }
      
      public function get §1"&§() : §`!O§
      {
         if(this.§6!_§)
         {
            return this.§6!_§.§&p§;
         }
         return null;
      }
      
      protected function §&e§(param1:§-?§) : void
      {
         b2Settings.b2_linearSleepTolerance = b2Settings.§&!5§;
      }
      
      private function initialize(param1:§-?§) : void
      {
         this.§=!^§ = null;
         this.§46§ = false;
         if(§>P§.§'8§)
         {
            §>P§.§'8§.speed = 1;
         }
         this.§&e§(param1);
         this.§9r§(param1);
         this.§+k§ = this.§^i§(param1.theme,0 / §4<§,this.§1"&§,this.§+H§.§-!N§());
         this.§+k§.§>"§(§4!l§.§0!J§());
         if(§>P§.§;_§)
         {
            §>P§.§;_§.color = this.§+k§.§while§;
         }
         this.§#P§ = this.initializeLevelObjectManager(param1);
         this.§%f§ = this.initializeLevelSlingshot(param1);
         this.§^X§ = this.§1!!§(this.§="&§,this.§#=§);
         this.§+H§.init();
         this.§9P§();
         this.§3g§();
         this.mReadyToRun = true;
         if(this.§0!C§)
         {
            this.§0!C§.addEventListeners();
         }
         if(param1.name == §6!§)
         {
            this.§+H§.§@!-§(§;!z§);
            this.§2!e§(0);
         }
         else
         {
            §6!§ = param1.name;
         }
         this.§"!D§();
      }
      
      protected function §"!D§() : void
      {
      }
      
      protected function §9r§(param1:§-?§) : void
      {
         this.§-!R§ = new §@!y§(this);
      }
      
      protected function §3g§() : void
      {
         if(this.§[""§)
         {
            this.§2!?§ = §?L§.initialize(this.§[""§);
            this.§2!?§.speed = 1;
            this.§2!?§.play();
            this.§`",§ = -1000;
            this.§[""§ = null;
         }
      }
      
      public function §<!I§(param1:String) : void
      {
         this.§[""§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§2!?§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§2!?§)
         {
            if(param1)
            {
               this.§2!?§.speed = Math.min(this.§2!?§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§2!?§.speed = Math.max(this.§2!?§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§2!?§)
         {
            this.§2!?§.speed = 1;
         }
      }
      
      protected function initializeLevelObjectManager(param1:§-?§) : §1i§
      {
         var _loc2_:String = §;L§.§%!4§;
         return new §1i§(this,param1,new Sprite(),_loc2_);
      }
      
      protected function initializeLevelCamera(param1:§-?§) : § !7§
      {
         return new § !7§(this,param1);
      }
      
      protected function §^i§(param1:String, param2:Number, param3:§`!O§, param4:Number) : §[!7§
      {
         var _loc5_:§;L§;
         if((_loc5_ = this.§ if§.§"!?§(param1)) == null)
         {
            param1 = §-?§.§5!L§;
            _loc5_ = this.§ if§.§"!?§(param1);
         }
         return new §[!7§(_loc5_,param2,param3,param4,!§>P§.§case §);
      }
      
      protected function initializeLevelSlingshot(param1:§-?§) : §`!j§
      {
         return new §`!j§(this,param1,new Sprite());
      }
      
      protected function §1!!§(param1:§;u§, param2:§`!O§) : §8W§
      {
         return new §8W§(param1,param2);
      }
      
      public function initializeEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§-?§ = new §-?§();
         _loc3_.slingshotY = -12;
         var _loc4_:§0!t§;
         (_loc4_ = new §0!t§()).left = 0;
         _loc4_.top = -§ !7§.§3P§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + § !7§.§3P§;
         _loc4_.right = _loc4_.left + § !7§.§%y§;
         _loc4_.y = -13.929;
         _loc4_.x = § !7§.§%y§;
         _loc4_.id = § !7§.§`!f§;
         _loc3_.§=!1§(_loc4_);
         var _loc5_:§0!t§;
         (_loc5_ = new §0!t§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + § !7§.§%y§;
         _loc5_.bottom = _loc5_.top + § !7§.§3P§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + § !7§.§%y§ / 2;
         _loc5_.id = § !7§.§?M§;
         _loc3_.§=!1§(_loc5_);
         this.§7"!§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§4P§ != null)
         {
            _loc3_.theme = §4P§;
         }
         this.init(_loc3_);
      }
      
      protected function §7"!§(param1:§-?§, param2:Boolean) : void
      {
         if(param2)
         {
            this.§`!;§(param1);
         }
      }
      
      protected function § "3§() : Number
      {
         this.§[!%§ ^= this.§[!%§ << 21;
         this.§[!%§ ^= this.§[!%§ >>> 35;
         this.§[!%§ ^= this.§[!%§ << 4;
         return this.§[!%§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §`!;§(param1:§-?§) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§false§ = null;
         this.§[!%§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < 10)
         {
            _loc4_ = 0;
            while(_loc4_ < 5)
            {
               _loc5_ = this.§ "3§() * 5;
               (_loc6_ = new §false§()).x = 30 + _loc4_ * 10 + this.§ "3§() * 9;
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
                  _loc6_.angle = 45 - this.§ "3§() * 90;
               }
               else
               {
                  _loc6_.y = -30 + _loc3_ * 6 - this.§ "3§() * 3 - _loc4_ * 8;
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
                  _loc6_.angle = this.§ "3§() * 360;
               }
               _loc6_.id = _loc2_;
               param1.§&0§(_loc6_);
               _loc2_++;
               _loc4_++;
            }
            _loc3_++;
         }
      }
      
      private function §2a§() : void
      {
      }
      
      protected function §"!B§() : void
      {
         if(§[!7§.§6!S§)
         {
            this.§-""§(this.§+k§.§^T§);
         }
      }
      
      protected function §["'§() : void
      {
         this.§-""§(this.§^X§.§0,§(§8W§.§#!S§));
         this.§-""§(this.§^X§.§0,§(§8W§.§,!A§));
      }
      
      protected function §!X§() : void
      {
         this.§-""§(this.§^X§.§0,§(§8W§.§6!g§));
         this.§-""§(this.§#P§.§61§);
         this.§-""§(this.§%f§.sprite);
         this.§-""§(this.§^X§.§0,§(§8W§.§8!C§));
      }
      
      protected function §'Y§() : void
      {
         this.§-""§(this.§+k§.§?#§);
         if(§[!7§.§6!S§)
         {
            this.§-""§(this.§+k§.§ e§);
         }
      }
      
      protected function §!!2§() : void
      {
         this.§-""§(this.§#P§.§1j§);
         this.§-""§(this.§^X§.§0,§(§8W§.§]!H§));
         this.§-""§(this.§^X§.§0,§(§8W§.§]!'§));
      }
      
      private function §9P§() : void
      {
         this.§"!B§();
         this.§["'§();
         this.§!X§();
         this.§'Y§();
         this.§!!2§();
         if(!§@!y§.§class§)
         {
         }
      }
      
      protected function §-""§(param1:DisplayObject) : void
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
         if(§4!l§.§[j§ > §4!l§.§@!9§)
         {
            param1 /= §4!l§.§[j§;
            param2 /= §4!l§.§[j§;
         }
         else
         {
            param1 /= §4!l§.§@!9§;
            param2 /= §4!l§.§@!9§;
         }
         param3.x = ((param1 - this.sprite.x) / § !7§.§'!?§ + this.§+H§.§?"-§) * §4<§;
         param3.y = ((param2 - this.sprite.y) / § !7§.§'!?§ + this.§+H§.§9M§) * §4<§;
         return param3;
      }
      
      public function §>!]§(param1:Number, param2:Number, param3:Point = null) : Point
      {
         if(!param3)
         {
            param3 = new Point();
         }
         param3.x = (param1 / §4<§ - this.§+H§.§?"-§) * § !7§.§'!?§ + this.sprite.x;
         param3.y = (param2 / §4<§ - this.§+H§.§9M§) * § !7§.§'!?§ + this.sprite.y;
         var _loc4_:Number = Math.max(§4!l§.§[j§,§4!l§.§@!9§);
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
            this.background.setScreenOffset(param1,param2,this.§^!B§,this.§2!w§,param3,this.§>",§,this.§;!T§);
         }
         if(this.objects)
         {
            this.objects.§;"0§(param1,param2);
         }
         if(this.§-!R§)
         {
            this.§-!R§.§;"0§(param1,param2);
         }
         if(this.slingshot)
         {
            this.slingshot.§;"0§(param1,param2);
         }
         if(this.particles)
         {
            this.particles.§;"0§(param1,param2);
         }
      }
      
      public function §!!F§(param1:String, param2:Number, param3:Number) : void
      {
         this.§#P§.§&0§(param1,param2,param3,0,§1i§.§^!;§);
      }
      
      public function § !4§() : void
      {
         if(this.§5!p§)
         {
            this.§5!p§.visible = true;
            this.§5!p§.alpha = 0;
         }
         this.§1!"§ = 0;
      }
      
      public function §3!a§(param1:Boolean, param2:Number = 0, param3:Number = 0, param4:Number = 0) : void
      {
         if(param1)
         {
            this.§@!#§ = new §!<§(param2,param3,param4);
         }
         else
         {
            this.§@!#§ = null;
         }
      }
      
      public function clearLevel() : void
      {
         if(this.§+k§)
         {
            this.§+k§.dispose();
            this.§+k§ = null;
         }
         if(this.§#P§)
         {
            this.§#P§.dispose();
            this.§#P§ = null;
         }
         if(this.§-!R§)
         {
            if(!this.§-!R§.§,Y§)
            {
            }
            this.§-!R§.clear();
            this.§-!R§ = null;
         }
         if(this.§>!W§)
         {
            this.§>!W§.clear();
            this.§>!W§ = null;
         }
         if(this.§%f§)
         {
            this.§%f§.dispose();
            this.§%f§ = null;
         }
         if(this.§+H§)
         {
            §;!z§ = this.§+H§.§+Y§;
            this.§+H§.clear();
            this.§+H§ = null;
         }
         if(this.§^X§)
         {
            this.§^X§.dispose();
            this.§^X§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§2i§ = 0;
         this.§]7§ = 0;
         this.mReadyToRun = false;
         this.§,>§ = false;
         this.§1!"§ = §<!<§.§#o§;
         if(this.§1!f§)
         {
            (this.§1!f§ as §&m§).§-'§.x = 0;
            (this.§1!f§ as §&m§).§-'§.y = 0;
         }
         if(this.§5!p§)
         {
            this.§5!p§.visible = false;
         }
         this.§2!?§ = null;
         this.§9!l§ = null;
         if(this.§>"3§)
         {
            this.§>"3§.removeEventListener(Event.COMPLETE,this.§7r§);
            this.§>"3§.removeEventListener(Event.CANCEL,this.§'!L§);
         }
         if(this.§'"!§)
         {
            this.§'"!§.removeEventListener(Event.COMPLETE,this.§?0§);
            this.§'"!§.removeEventListener(Event.CANCEL,this.§%!S§);
         }
         this.§7!o§();
         if(§>P§.§;_§)
         {
            §>P§.§;_§.color = 0;
         }
         if(this.§0!C§)
         {
            this.§0!C§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver(param1:int) : void
      {
      }
      
      public function §!!T§() : String
      {
         if(this.§9!l§)
         {
            return this.§9!l§.toString();
         }
         return null;
      }
      
      public function get §,U§() : Number
      {
         if(this.§=!^§)
         {
            return this.§=!^§.speed;
         }
         return 1;
      }
      
      public function update(param1:Number, param2:Boolean) : Number
      {
         if(!this.mReadyToRun || !§>P§.§1Y§())
         {
            return 0;
         }
         if(this.§2!?§ && this.§2!?§.§?G§)
         {
            return this.§^!%§(param1,param2);
         }
         return this.§#!V§(param1,true,param2);
      }
      
      protected function §#!V§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc4_:Boolean = false;
         if(this.§=!^§)
         {
            _loc4_ = this.§=!^§.update(param1);
            param1 *= this.§=!^§.speed;
            if(§>P§.§'8§)
            {
               §>P§.§'8§.speed = this.§=!^§.speed;
            }
            if(!_loc4_)
            {
               this.§=!^§ = null;
            }
         }
         this.§]7§ += param1;
         this.§2i§ += param1;
         this.§2i§ = this.§-!R§.§8!]§(this.§2i§);
         this.§%f§.update(param1,param3);
         if(param2)
         {
            this.§2!e§(param1);
         }
         return param1;
      }
      
      private function §^!%§(param1:Number, param2:Boolean) : Number
      {
         var _loc4_:Number = NaN;
         var _loc3_:Number = §@!y§.§#4§;
         if(this.§2!?§)
         {
            param1 *= this.§2!?§.speed;
            _loc4_ = this.§]7§ + param1;
            while(this.§]7§ + _loc3_ < _loc4_)
            {
               if(this.§]7§ + _loc3_ > this.§`",§)
               {
                  this.§2!?§.step(this);
                  this.§`",§ += _loc3_;
               }
               this.§#!V§(_loc3_,false,param2);
            }
            if(_loc4_ > this.§`",§ + _loc3_)
            {
               this.§2!?§.step(this);
               this.§`",§ += _loc3_;
            }
            if(this.§]7§ < _loc4_)
            {
               this.§#!V§(_loc4_ - this.§]7§,true,param2);
            }
            return param1;
         }
         return param1;
      }
      
      private function §2!e§(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         this.§+k§.update(param1);
         this.§#P§.§0R§(param1,this.§-!R§.§=!D§,this.§2i§);
         this.§^k§();
         if(this.§1!"§ < §<!<§.§#o§)
         {
            this.§1!"§ += param1;
            _loc2_ = §<!<§.§#o§ / 2;
            _loc3_ = (-Math.abs(this.§1!"§ - _loc2_) + _loc2_) * (§<!<§.§`^§ / _loc2_);
            if(this.§5!p§)
            {
               this.§5!p§.alpha = _loc3_;
            }
         }
         else if(this.§5!p§)
         {
            this.§5!p§.visible = false;
         }
         if(this.§@!#§)
         {
            if(!this.§@!#§.§3d§(this.§+H§,param1))
            {
               this.§3!a§(false);
            }
         }
         this.§+H§.§-!&§(param1);
         this.§-!R§.§1E§();
         this.§^X§.update(param1);
      }
      
      public function §8!'§(param1:Number) : void
      {
         this.objects.§<!W§(param1);
         this.§!"5§();
      }
      
      protected function §^k§() : void
      {
         var _loc1_:§[-§ = null;
         if(this.§^!F§ != null)
         {
            for each(_loc1_ in this.§^!F§)
            {
               if(!_loc1_.isLeavingTrail)
               {
                  this.§3"-§(_loc1_);
               }
            }
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§"x§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            _loc2_ = this.§#P§.§3O§(true);
            if(_loc2_)
            {
               _loc2_.scream();
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§#P§.§,"#§());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            _loc2_ = this.§#P§.§3O§(true);
            if(_loc2_)
            {
               _loc2_.blink();
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§#P§.§,"#§());
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §%v§.§+!<§;
         }
         §"1§.addScore(param1,param2);
         this.§0!C§.addScore(param1);
         if(param3 && param1 > 0 && !this.§46§)
         {
            this.§7!w§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §7!w§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §%v§.§&!_§;
         }
         this.§^X§.§;!9§(§%v§.§-!x§,§8W§.§]!H§,§%v§.§[Q§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §=!u§(param1:§@!4§) : void
      {
         if(this.§^!F§ == null)
         {
            this.§^!F§ = new Array();
         }
         this.§^!F§.push(param1);
      }
      
      public function §&"0§() : void
      {
         this.§%f§.§&"0§();
         this.§#P§.§#!e§();
         this.§46§ = true;
      }
      
      public function §3"-§(param1:§[-§) : void
      {
         this.§^X§.§&I§(§8W§.§#!S§);
         if(this.§^!F§.indexOf(param1) >= 0)
         {
            this.§^!F§.splice(this.§^!F§.indexOf(param1),1);
         }
         if(this.§^!F§.length == 0)
         {
            this.§^!F§ = null;
         }
      }
      
      public function §4!Q§(param1:§8L§, param2:Number, param3:Number) : § !§
      {
         var _loc4_:§ !§ = § !§(this.§#P§.§&0§(param1.name,param1.x,param1.y,0,§1i§.§^!;§,true,true,true,param1.scale));
         var _loc5_:Number = param1.§9[§;
         if(param1.§?!A§ > 1)
         {
            _loc4_.§;N§(param1.§?!A§);
         }
         if(param1.§ !n§ != 0)
         {
            _loc5_ = param1.§ !n§;
         }
         var _loc6_:Number = -_loc5_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc7_:Number = _loc5_ * param2 * Math.sin(param3 / (180 / Math.PI));
         _loc4_.§'M§(new b2Vec2(_loc6_,_loc7_),false,true);
         this.camera.§4D§(§ !7§.§@#§);
         if(this.§9!l§)
         {
            this.§9!l§.§4!Q§(this.§-!R§.§3!"§,param1.x,param1.y,param2,param3);
         }
         return _loc4_;
      }
      
      public function activateSpecialPower(param1:Number, param2:Number) : void
      {
         this.§,>§ = true;
         this.§!!p§ = param1;
         this.§;X§ = param2;
      }
      
      private function §!"5§() : void
      {
         if(!this.§,>§)
         {
            return;
         }
         this.§,>§ = false;
         if(this.§#P§.activeObject is § !§)
         {
            this.§#P§.activateSpecialPower(this.§!!p§,this.§;X§);
         }
         if(this.§9!l§)
         {
            this.§9!l§.§;"!§(this.§-!R§.§3!"§,this.§!!p§,this.§;X§);
         }
      }
      
      public function §<"§() : void
      {
         this.§#P§.§<"§();
      }
      
      public function §]j§() : void
      {
         this.§#P§.§[a§();
      }
      
      public function §5!`§() : §-?§
      {
         var _loc1_:§-?§ = new §-?§();
         _loc1_.scoreGold = this.§4!I§.scoreGold;
         _loc1_.scoreSilver = this.§4!I§.scoreSilver;
         this.§+H§.§?%§(_loc1_);
         this.§#P§.§7!u§(_loc1_);
         this.§%f§.§`!d§(_loc1_);
         _loc1_.theme = this.§+k§.§'!R§();
         return _loc1_;
      }
      
      public function §#!'§() : int
      {
         return this.§4!I§.scoreSilver;
      }
      
      public function §>!j§() : int
      {
         return this.§4!I§.scoreGold;
      }
      
      public function §&!?§(param1:int) : void
      {
         this.§4!I§.scoreSilver = param1;
      }
      
      public function §]c§(param1:int) : void
      {
         this.§4!I§.scoreGold = param1;
      }
      
      public function §+!6§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§^!B§ = param1;
         this.§2!w§ = param2;
         this.§>",§ = param3;
         this.§;!T§ = param4;
         if(this.§9!p§)
         {
            this.§9!p§.§`L§(param1,param2);
         }
         if(this.§+H§)
         {
            this.§+H§.§-!&§(0);
         }
      }
      
      public function get currentLevel() : §-?§
      {
         return this.§4!I§;
      }
      
      public function get levelObjects() : §1i§
      {
         return this.§#P§;
      }
      
      protected function get §[v§() : §>P§
      {
         return this.§4!G§;
      }
      
      public function get §!§() : int
      {
         return §%!h§;
      }
   }
}
