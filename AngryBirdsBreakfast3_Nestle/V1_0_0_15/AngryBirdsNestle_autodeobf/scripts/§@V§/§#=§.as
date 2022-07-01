package §@V§
{
   import §!!!§.§6!l§;
   import §!!R§.§4#§;
   import §!""§.§1=§;
   import §#!I§.§0k§;
   import §#!`§.§1V§;
   import §%!B§.§0![§;
   import §%!B§.§5L§;
   import §%!B§.§9"2§;
   import §%8§.§4O§;
   import §%U§.§;"!§;
   import §'!_§.b2Settings;
   import §,![§.§7l§;
   import §0!m§.§@!S§;
   import §0N§.§,!A§;
   import §24§.;
   import §2`§.§%!!§;
   import §2`§.§+$§;
   import §2`§.§;!#§;
   import §3!J§.DisplayObject;
   import §3!J§.Sprite;
   import §4!i§.§0]§;
   import §4!i§.§@t§;
   import §8! §.§+C§;
   import §8! §.§9q§;
   import §>z§.§+E§;
   import §>z§.§5!d§;
   import §@!"§.§#!v§;
   import §@!"§.§7k§;
   import §@!"§.§<!l§;
   import §@!"§.§@_§;
   import §@!"§.§^"2§;
   import §@!E§.b2Vec2;
   import §`2§.§"w§;
   import §`2§.§`""§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §#=§
   {
      
      private static const §]<§:int = 20;
      
      public static const §5B§:Number = §@!S§.§3z§;
      
      public static const §1!J§:Number = §@!S§.§`!,§;
      
      public static const §^!2§:Number = 1 / 20;
      
      public static const §;t§:Number = §@!S§.§`!,§ * §^!2§;
      
      public static const §?s§:Number = §5B§ * §^!2§;
      
      public static const §="1§:§@t§ = new §@t§(13 - 3);
      
      protected static var §="!§:String;
      
      protected static var §1G§:Number = 1;
      
      protected static var §`I§:String = §5L§.§<!U§;
       
      
      protected var §"H§:§<!l§;
      
      private var §4!3§:Array = null;
      
      protected var §>Y§:§7l§;
      
      public var §>!&§:§<o§;
      
      protected var §implements§:§9h§;
      
      protected var §"`§:§0k§;
      
      protected var §`!L§:§0"§;
      
      protected var §!?§:§"w§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §3"-§:Boolean = false;
      
      protected var §^!f§:Boolean = false;
      
      protected var §-T§:Boolean = false;
      
      public var §?!'§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §#[§:Number;
      
      public var §'!n§:Number;
      
      private var §0$§:§ !]§;
      
      private var §?'§:Sprite;
      
      protected var §?n§:§5L§;
      
      protected var §-!"§:§1V§ = null;
      
      private var §=%§:EventDispatcher;
      
      private var §0X§:Array;
      
      private var §3#§:§6!l§;
      
      private var §6!9§:§+C§;
      
      protected var §,%§:§%!!§;
      
      protected var §'!'§:§+$§;
      
      private var §<!L§:§;!#§;
      
      private var §[8§:§;!#§;
      
      private var §=""§:§;!#§;
      
      private var §<!s§:Stage;
      
      private var §%D§:§<!I§;
      
      protected var §9>§:§;"!§;
      
      protected var § "!§:§;"!§;
      
      protected var § @§:Number = 0.0;
      
      protected var §5!&§:String;
      
      private var §-!Z§:Boolean;
      
      private var §=b§:Number;
      
      private var §!Q§:Number;
      
      protected var §[i§:§9!b§;
      
      protected var §@!]§:§4O§;
      
      protected var §2!v§:§5!d§;
      
      protected var §4a§:§0![§;
      
      protected var §9[§:uint = 1.417339207E9;
      
      public var §`f§:Boolean;
      
      private var §2!3§:Boolean = true;
      
      protected var §9"+§:int = 0;
      
      protected var §=Z§:int = 0;
      
      protected var § !e§:Number = 1.0;
      
      protected var §4J§:Number = 1.0;
      
      protected var §@!o§:Boolean;
      
      private var §87§:§0]§;
      
      public function §#=§(param1:Stage, param2:§4O§, param3:§5!d§, param4:§0![§)
      {
         this.§0X§ = [];
         super();
         this.§=%§ = new EventDispatcher();
         this.§<!s§ = param1;
         this.§@!]§ = param2;
         this.§2!v§ = param3;
         this.§4a§ = param4;
         this.§,%§ = §%!!§.§,2§;
         this.§'!'§ = this.initAnimationManager(this.§,%§);
         this.§<!L§ = this.§ !x§();
         this.§[8§ = this.initThemeSoundsManager();
         this.§=""§ = this.initCutSceneManager();
         this.§87§ = new §0]§();
         var _loc5_:Stage3D = param1.stage3Ds[0];
         this.§3#§ = new §6!l§(§ !]§,param1,new Rectangle(0,0,§@!S§.§3z§,§@!S§.§`!,§),_loc5_);
         §@!S§.§[!%§.addEventListener(§1=§.§]!l§,this.§3#§.onEnterFrame);
         _loc5_.addEventListener(Event.CONTEXT3D_CREATE,this.§'"1§,false,0,true);
         this.§3#§.§><§ = false;
         this.§3#§.enableErrorChecking = false;
         this.§3#§.§6!]§ = 2;
         this.§3#§.§ !J§();
      }
      
      public static function § !§(param1:§#!v§, param2:§#!v§) : Number
      {
         var _loc3_:Number = param1.§-"-§ - param2.§-"-§;
         var _loc4_:Number = param1.§;!1§ - param2.§;!1§;
         return §1!U§(_loc3_,_loc4_);
      }
      
      public static function §1!U§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      protected function get sprite() : Sprite
      {
         if(!this.§?'§ && this.§<G§)
         {
            this.§?'§ = this.§0$§.§,0§;
         }
         return this.§?'§;
      }
      
      public function get §<G§() : Sprite
      {
         if(!this.§0$§)
         {
            this.§0$§ = this.§3#§.§8U§ as § !]§;
            this.§0$§.§6!U§ = false;
         }
         return this.§0$§;
      }
      
      private function get §&!S§() : DisplayObject
      {
         if(this.§<G§)
         {
            return (this.§<G§ as § !]§).§&!S§;
         }
         return null;
      }
      
      public function get §13§() : §+$§
      {
         return this.§'!'§;
      }
      
      public function get §]!z§() : §%!!§
      {
         return this.§,%§;
      }
      
      public function get camera() : §0k§
      {
         return this.§"`§;
      }
      
      public function get objects() : §<!l§
      {
         return this.§"H§;
      }
      
      public function get particles() : §"w§
      {
         return this.§!?§;
      }
      
      public function get background() : §7l§
      {
         return this.§>Y§;
      }
      
      public function get slingshot() : §0"§
      {
         return this.§`!L§;
      }
      
      public function get §];§() : §9h§
      {
         return this.§implements§;
      }
      
      public function get stage() : Stage
      {
         return this.§<!s§;
      }
      
      public function get levelItemManager() : §4O§
      {
         return this.§@!]§;
      }
      
      public function get §6!q§() : §;!#§
      {
         return this.§=""§;
      }
      
      protected function get §`!7§() : §;!#§
      {
         return this.§<!L§;
      }
      
      public function §`&§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§[i§ = new §9!b§(param1,param2,param3,param4);
      }
      
      public function get damageScoreMultiplier() : int
      {
         return §#=§.§="1§.getValue();
      }
      
      public function get §4!Q§() : Boolean
      {
         return this.§2!3§;
      }
      
      public function set §4!Q§(param1:Boolean) : void
      {
         this.§2!3§ = param1;
      }
      
      public function clear() : void
      {
         if(this.§6!9§)
         {
            this.§6!9§.dispose();
         }
         if(this.§,%§)
         {
            this.§,%§.removeEventListener(Event.INIT,this.§<!6§);
            this.§,%§.dispose();
         }
         if(this.§<!L§ && this.§<!L§.§]!z§)
         {
            this.§<!L§.§]!z§.dispose();
         }
         if(this.§=""§ && this.§=""§.§]!z§)
         {
            this.§=""§.§]!z§.dispose();
         }
         if(this.§3#§)
         {
            this.§3#§.dispose();
         }
      }
      
      protected function § !x§() : §;!#§
      {
         return new §;!#§(this.§<!s§.loaderInfo.parameters.assetsUrl || "",this.§<!s§.loaderInfo.parameters.buildNumber || "",this.§4a§);
      }
      
      protected function initThemeSoundsManager() : §;!#§
      {
         return new §;!#§(this.§<!s§.loaderInfo.parameters.assetsUrl || "",this.§<!s§.loaderInfo.parameters.buildNumber || "",this.§4a§,false);
      }
      
      protected function initCutSceneManager() : §;!#§
      {
         return new §;!#§(this.§<!s§.loaderInfo.parameters.assetsUrl || "",this.§<!s§.loaderInfo.parameters.buildNumber || "",this.§4a§);
      }
      
      protected function initAnimationManager(param1:§%!!§) : §+$§
      {
         return new §+$§(param1);
      }
      
      public function §`!V§(param1:Boolean) : void
      {
         if(§6!l§.§+J§)
         {
            if(param1)
            {
               §6!l§.§+J§.start();
            }
            else
            {
               §6!l§.§+J§.stop();
               §6!l§.§+J§.color = 0;
            }
         }
      }
      
      public function §+"2§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function setController(param1:§1V§) : void
      {
         if(this.§-!"§ != null)
         {
            this.§-!"§.removeEventListeners();
         }
         this.§-!"§ = param1;
         if(this.mReadyToRun)
         {
            this.§-!"§.addEventListeners();
         }
      }
      
      public function §2C§() : §;"!§
      {
         return this.§9>§;
      }
      
      protected function §7!y§(param1:§9q§) : int
      {
         return 0;
      }
      
      public function §>!J§(param1:§+C§, param2:Function) : void
      {
         var _loc5_:§9q§ = null;
         var _loc6_:int = 0;
         this.§6!9§ = param1;
         var _loc3_:int = this.§6!9§.§8!h§;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = this.§6!9§.§!!-§(_loc4_);
            _loc6_ = this.§7!y§(_loc5_);
            this.§,%§.§^!0§(_loc5_,_loc6_);
            _loc4_++;
         }
         if(param2 != null)
         {
            this.§=%§.addEventListener(Event.INIT,param2);
            this.§0X§.push(param2);
         }
         if(this.§,!e§())
         {
            this.§2!U§();
         }
      }
      
      private function §,!e§() : Boolean
      {
         this.§,%§.removeEventListener(Event.INIT,this.§<!6§);
         if(this.§,%§.§,!X§())
         {
            this.initializeAnimations();
            this.§@!o§ = false;
            return true;
         }
         this.§,%§.addEventListener(Event.INIT,this.§<!6§);
         this.§@!o§ = true;
         return false;
      }
      
      private function §<!6§(param1:Event) : void
      {
         this.§,%§.removeEventListener(Event.INIT,this.§<!6§);
         this.initializeAnimations();
         this.§@!o§ = false;
         this.§2!U§();
      }
      
      protected function initializeAnimations() : void
      {
         this.§'!'§.initializeAnimations();
         this.§@!]§.§<]§();
      }
      
      private function §'"1§(param1:Event) : void
      {
         if(!§6!l§.§<E§())
         {
            return;
         }
         this.§,%§.reInitializeTextures();
         if(this.§`!7§ && this.§`!7§.§]!z§)
         {
            this.§`!7§.§]!z§.reInitializeTextures();
         }
         if(this.§6!q§ && this.§6!q§.§]!z§)
         {
            this.§6!q§.§]!z§.reInitializeTextures();
         }
         if(this.§@!o§)
         {
            if(this.§,!e§())
            {
               this.§2!U§();
            }
         }
         if(this.§-!"§ != null && this.mReadyToRun)
         {
            this.§-!"§.addEventListeners();
         }
         if(this.§<!L§)
         {
            this.§<!L§.§,!X§();
         }
         if(this.§=""§)
         {
            if(this.§=""§.§]!z§)
            {
               this.§=""§.§,!X§();
            }
         }
      }
      
      private function §2!U§() : void
      {
         this.§=%§.dispatchEvent(new Event(Event.INIT));
         this.§#"!§();
      }
      
      private function §#"!§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§0X§)
         {
            this.§=%§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§0X§ = [];
      }
      
      public function init(param1:§5L§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§implements§ = new §9h§(this,param1);
         this.§"`§ = this.initializeLevelCamera(param1);
         this.§#[§ = 0;
         this.§'!n§ = 0;
         this.§-!Z§ = false;
         this.mReadyToRun = false;
         this.§3"-§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         param1.theme = param1.theme || "background_blue_grass";
         §`I§ = param1.theme;
         this.§?n§ = param1;
         this.§^!f§ = this.§[w§(param1.theme);
         this.§-T§ = this.§ r§(param1.theme);
         if(this.§^!f§ && this.§-T§)
         {
            this.initialize(param1);
         }
         else
         {
            this.§'=§(param1.theme);
         }
         this.§;! §(param1.name);
         §52§.init();
      }
      
      protected function §;! §(param1:String) : void
      {
         this.§9>§ = new §;"!§(param1);
      }
      
      protected function §[w§(param1:String) : Boolean
      {
         if(this.§<!L§)
         {
            return false;
         }
         return true;
      }
      
      protected function § r§(param1:String) : Boolean
      {
         var _loc2_:§+E§ = null;
         if(this.§[8§)
         {
            _loc2_ = this.§2!v§.§9!'§(param1);
            if(_loc2_)
            {
               if(_loc2_.§!!i§ && !this.§[8§.§1!-§(_loc2_.§!!i§))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function §2!u§(param1:String) : Array
      {
         return null;
      }
      
      protected function §'=§(param1:String) : void
      {
         var _loc2_:Array = null;
         var _loc3_:§+E§ = null;
         if(this.§<!L§ && !this.§[w§(param1))
         {
            this.§<!L§.removeEventListener(Event.COMPLETE,this.§!u§);
            this.§<!L§.removeEventListener(Event.CANCEL,this.§?!6§);
            this.§<!L§.addEventListener(Event.COMPLETE,this.§!u§);
            this.§<!L§.addEventListener(Event.CANCEL,this.§?!6§);
            _loc2_ = this.§2!u§(param1);
            this.§<!L§.loadContent(param1,_loc2_);
         }
         if(this.§[8§ && !this.§ r§(param1))
         {
            this.§[8§.removeEventListener(Event.COMPLETE,this.§5I§);
            this.§[8§.removeEventListener(Event.CANCEL,this.§5"1§);
            this.§[8§.addEventListener(Event.COMPLETE,this.§5I§);
            this.§[8§.addEventListener(Event.CANCEL,this.§5"1§);
            _loc3_ = this.§2!v§.§9!'§(param1);
            if(_loc3_)
            {
               this.§[8§.loadContent(_loc3_.§!!i§);
            }
         }
      }
      
      private function §!u§(param1:Event) : void
      {
         this.§<!L§.removeEventListener(Event.COMPLETE,this.§!u§);
         this.§<!L§.removeEventListener(Event.CANCEL,this.§?!6§);
         this.§^!f§ = true;
         if(this.§^!f§ && this.§-T§)
         {
            this.initialize(this.§?n§);
         }
      }
      
      private function §?!6§(param1:Event) : void
      {
         this.§<!L§.removeEventListener(Event.COMPLETE,this.§!u§);
         this.§<!L§.removeEventListener(Event.CANCEL,this.§?!6§);
         this.§3"-§ = true;
      }
      
      private function §5I§(param1:Event) : void
      {
         this.§<!L§.removeEventListener(Event.COMPLETE,this.§5I§);
         this.§<!L§.removeEventListener(Event.CANCEL,this.§5"1§);
         this.§-T§ = true;
         if(this.§^!f§ && this.§-T§)
         {
            this.initialize(this.§?n§);
         }
      }
      
      private function §5"1§(param1:Event) : void
      {
         this.§<!L§.removeEventListener(Event.COMPLETE,this.§5I§);
         this.§<!L§.removeEventListener(Event.CANCEL,this.§5"1§);
         this.§-T§ = true;
         if(this.§^!f§ && this.§-T§)
         {
            this.initialize(this.§?n§);
         }
      }
      
      public function get §<x§() : §%!!§
      {
         if(this.§`!7§)
         {
            return this.§`!7§.§]!z§;
         }
         return null;
      }
      
      protected function §3!7§(param1:§5L§) : void
      {
         b2Settings.b2_linearSleepTolerance = b2Settings.§8"6§;
      }
      
      private function initialize(param1:§5L§) : void
      {
         this.§[i§ = null;
         this.§`f§ = false;
         if(§6!l§.§-f§)
         {
            §6!l§.§-f§.speed = 1;
         }
         this.§3!7§(param1);
         this.§>M§(param1);
         this.§>Y§ = this.§1F§(param1.theme,0 / §^!2§,this.§<x§,this.§"`§.§8u§());
         this.§>Y§.§'"%§(§@!S§.§^"&§());
         if(§6!l§.§+J§)
         {
            §6!l§.§+J§.color = this.§>Y§.§9!f§;
         }
         this.§"H§ = this.initializeLevelObjectManager(param1);
         this.§"H§.§8x§ = this.§+?§(param1.name);
         this.§`!L§ = this.initializeLevelSlingshot(param1);
         this.§!?§ = this.§3!I§(this.§'!'§,this.§,%§);
         this.§"`§.init();
         this.§[!E§();
         this.§3`§();
         this.mReadyToRun = true;
         if(this.§-!"§)
         {
            this.§-!"§.addEventListeners();
         }
         if(param1.name == §="!§)
         {
            this.§"`§.§#V§(§1G§);
            this.§>I§(0);
         }
         else
         {
            §="!§ = param1.name;
         }
         this.§"!Y§();
      }
      
      protected function §"!Y§() : void
      {
         this.§"H§.§"!Y§();
      }
      
      protected function §>M§(param1:§5L§) : void
      {
         this.§>!&§ = new §<o§(this);
      }
      
      protected function §3`§() : void
      {
         if(this.§5!&§)
         {
            this.§ "!§ = §;"!§.initialize(this.§5!&§);
            this.§ "!§.speed = 1;
            this.§ "!§.play();
            this.§ @§ = -1000;
            this.§5!&§ = null;
         }
      }
      
      public function §8!3§(param1:String) : void
      {
         this.§5!&§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§ "!§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§ "!§)
         {
            if(param1)
            {
               this.§ "!§.speed = Math.min(this.§ "!§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§ "!§.speed = Math.max(this.§ "!§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§ "!§)
         {
            this.§ "!§.speed = 1;
         }
      }
      
      protected function initializeLevelObjectManager(param1:§5L§) : §<!l§
      {
         var _loc2_:String = §+E§.§-V§;
         return new §<!l§(this,param1,new Sprite(),_loc2_);
      }
      
      protected function §+?§(param1:String) : §4#§
      {
         if(!param1)
         {
            return null;
         }
         var _loc2_:Class = this.§87§[param1.toLowerCase()];
         if(!_loc2_)
         {
            return null;
         }
         return new _loc2_() as §4#§;
      }
      
      public function §4""§(param1:String, param2:Class) : void
      {
         this.§87§[param1.toLowerCase()] = param2;
      }
      
      protected function initializeLevelCamera(param1:§5L§) : §0k§
      {
         return new §0k§(this,param1);
      }
      
      protected function §1F§(param1:String, param2:Number, param3:§%!!§, param4:Number) : §7l§
      {
         var _loc5_:§+E§;
         if((_loc5_ = this.§2!v§.§9!'§(param1)) == null)
         {
            §#7§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §5L§.§<!U§;
            _loc5_ = this.§2!v§.§9!'§(param1);
         }
         return new §7l§(_loc5_,param2,param3,param4,!§6!l§.§`k§);
      }
      
      protected function initializeLevelSlingshot(param1:§5L§) : §0"§
      {
         return new §0"§(this,param1,new Sprite());
      }
      
      protected function §3!I§(param1:§+$§, param2:§%!!§) : §"w§
      {
         return new §"w§(param1,param2);
      }
      
      public function initializeEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§5L§ = new §5L§();
         _loc3_.slingshotY = -12;
         var _loc4_:§9"2§;
         (_loc4_ = new §9"2§()).left = 0;
         _loc4_.top = -§0k§.§,s§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §0k§.§,s§;
         _loc4_.right = _loc4_.left + §0k§.§6!%§;
         _loc4_.y = -13.929;
         _loc4_.x = §0k§.§6!%§;
         _loc4_.id = §0k§.§41§;
         _loc3_.§ !O§(_loc4_);
         var _loc5_:§9"2§;
         (_loc5_ = new §9"2§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §0k§.§6!%§;
         _loc5_.bottom = _loc5_.top + §0k§.§,s§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §0k§.§6!%§ / 2;
         _loc5_.id = §0k§.§ "%§;
         _loc3_.§ !O§(_loc5_);
         this.§=" §(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§`I§ != null)
         {
            _loc3_.theme = §`I§;
         }
         this.init(_loc3_);
      }
      
      protected function §=" §(param1:§5L§, param2:Boolean) : void
      {
         if(param2)
         {
            this.§'P§(param1);
         }
      }
      
      protected function §>!l§() : Number
      {
         this.§9[§ ^= this.§9[§ << 21;
         this.§9[§ ^= this.§9[§ >>> 35;
         this.§9[§ ^= this.§9[§ << 4;
         return this.§9[§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §'P§(param1:§5L§) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§,!A§ = null;
         this.§9[§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < 10)
         {
            _loc4_ = 0;
            while(_loc4_ < 5)
            {
               _loc5_ = this.§>!l§() * 5;
               (_loc6_ = new §,!A§()).x = 30 + _loc4_ * 10 + this.§>!l§() * 9;
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
                  _loc6_.angle = 45 - this.§>!l§() * 90;
               }
               else
               {
                  _loc6_.y = -30 + _loc3_ * 6 - this.§>!l§() * 3 - _loc4_ * 8;
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
                  _loc6_.angle = this.§>!l§() * 360;
               }
               _loc6_.id = _loc2_;
               param1.§&w§(_loc6_);
               _loc2_++;
               _loc4_++;
            }
            _loc3_++;
         }
      }
      
      private function §<!P§() : void
      {
      }
      
      protected function §9!G§() : void
      {
         if(§7l§.§%!`§)
         {
            this.§1I§(this.§>Y§.§7z§);
         }
      }
      
      protected function §4;§() : void
      {
         this.§1I§(this.§!?§.§&!§(§"w§.§>!X§));
         this.§1I§(this.§!?§.§&!§(§"w§.§6$§));
         this.§1I§(this.§"H§.§]![§);
      }
      
      protected function §5!m§() : void
      {
         this.§1I§(this.§!?§.§&!§(§"w§.§9@§));
         this.§1I§(this.§"H§.§&!h§);
         this.§1I§(this.§`!L§.sprite);
         this.§1I§(this.§!?§.§&!§(§"w§.§,§));
      }
      
      protected function §-!r§() : void
      {
         this.§1I§(this.§>Y§.§?!h§);
         if(§7l§.§%!`§)
         {
            this.§1I§(this.§>Y§.§]9§);
         }
      }
      
      protected function §,>§() : void
      {
         this.§1I§(this.§"H§.§<!5§);
         this.§1I§(this.§!?§.§&!§(§"w§.§>h§));
         this.§1I§(this.§!?§.§&!§(§"w§.§!_§));
      }
      
      private function §[!E§() : void
      {
         this.§9!G§();
         this.§4;§();
         this.§5!m§();
         this.§-!r§();
         this.§,>§();
      }
      
      protected function §1I§(param1:DisplayObject) : void
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
         if(§@!S§.§5!e§ > §@!S§.§+!q§)
         {
            param1 /= §@!S§.§5!e§;
            param2 /= §@!S§.§5!e§;
         }
         else
         {
            param1 /= §@!S§.§+!q§;
            param2 /= §@!S§.§+!q§;
         }
         param3.x = ((param1 - this.sprite.x) / §0k§.§0!1§ + this.§"`§.§9y§) * §^!2§;
         param3.y = ((param2 - this.sprite.y) / §0k§.§0!1§ + this.§"`§.§-![§) * §^!2§;
         return param3;
      }
      
      public function §3!q§(param1:Number, param2:Number, param3:Point = null) : Point
      {
         if(!param3)
         {
            param3 = new Point();
         }
         param3.x = (param1 / §^!2§ - this.§"`§.§9y§) * §0k§.§0!1§ + this.sprite.x;
         param3.y = (param2 / §^!2§ - this.§"`§.§-![§) * §0k§.§0!1§ + this.sprite.y;
         var _loc4_:Number = Math.max(§@!S§.§5!e§,§@!S§.§+!q§);
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
            this.background.setScreenOffset(param1,param2,this.§9"+§,this.§=Z§,param3,this.§ !e§,this.§4J§);
         }
         if(this.objects)
         {
            this.objects.§4!J§(param1,param2);
         }
         if(this.§>!&§)
         {
            this.§>!&§.§4!J§(param1,param2);
         }
         if(this.slingshot)
         {
            this.slingshot.§4!J§(param1,param2);
         }
         if(this.particles)
         {
            this.particles.§4!J§(param1,param2);
         }
      }
      
      public function §;!j§(param1:String, param2:Number, param3:Number) : void
      {
         this.§"H§.§&w§(param1,param2,param3,0,§<!l§.§0"+§);
      }
      
      public function §""2§() : void
      {
         if(this.§&!S§)
         {
            this.§&!S§.visible = true;
            this.§&!S§.alpha = 0;
         }
         this.§?!'§ = 0;
      }
      
      public function §8%§(param1:Boolean, param2:Number = 0, param3:Number = 0, param4:Number = 0) : void
      {
         if(param1)
         {
            this.§%D§ = new §<!I§(param2,param3,param4);
         }
         else
         {
            this.§%D§ = null;
         }
      }
      
      public function clearLevel() : void
      {
         if(this.§>Y§)
         {
            this.§>Y§.dispose();
            this.§>Y§ = null;
         }
         if(this.§"H§)
         {
            this.§"H§.dispose();
            this.§"H§ = null;
         }
         if(this.§>!&§)
         {
            if(!this.§>!&§.§#F§)
            {
            }
            this.§>!&§.clear();
            this.§>!&§ = null;
         }
         if(this.§implements§)
         {
            this.§implements§.clear();
            this.§implements§ = null;
         }
         if(this.§`!L§)
         {
            this.§`!L§.dispose();
            this.§`!L§ = null;
         }
         if(this.§"`§)
         {
            §1G§ = this.§"`§.§=Q§;
            this.§"`§.clear();
            this.§"`§ = null;
         }
         if(this.§!?§)
         {
            this.§!?§.dispose();
            this.§!?§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§#[§ = 0;
         this.§'!n§ = 0;
         this.mReadyToRun = false;
         this.§-!Z§ = false;
         this.§?!'§ = §&z§.§#L§;
         if(this.§<G§)
         {
            (this.§<G§ as § !]§).§3x§.x = 0;
            (this.§<G§ as § !]§).§3x§.y = 0;
         }
         if(this.§&!S§)
         {
            this.§&!S§.visible = false;
         }
         this.§ "!§ = null;
         this.§9>§ = null;
         if(this.§<!L§)
         {
            this.§<!L§.removeEventListener(Event.COMPLETE,this.§!u§);
            this.§<!L§.removeEventListener(Event.CANCEL,this.§?!6§);
         }
         if(this.§[8§)
         {
            this.§[8§.removeEventListener(Event.COMPLETE,this.§5I§);
            this.§[8§.removeEventListener(Event.CANCEL,this.§5"1§);
         }
         this.§#"!§();
         if(§6!l§.§+J§)
         {
            §6!l§.§+J§.color = 0;
         }
         if(this.§-!"§)
         {
            this.§-!"§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver(param1:int) : void
      {
      }
      
      public function §?Z§() : String
      {
         if(this.§9>§)
         {
            return this.§9>§.toString();
         }
         return null;
      }
      
      public function get §4U§() : Number
      {
         if(this.§[i§)
         {
            return this.§[i§.speed;
         }
         return 1;
      }
      
      public function update(param1:Number, param2:Boolean) : Number
      {
         if(!this.mReadyToRun || !§6!l§.§<E§())
         {
            return 0;
         }
         if(this.§ "!§ && this.§ "!§.§2x§)
         {
            return this.§;S§(param1,param2);
         }
         return this.§>!H§(param1,true,param2);
      }
      
      protected function §>!H§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc4_:Boolean = false;
         if(this.§[i§)
         {
            _loc4_ = this.§[i§.update(param1);
            param1 *= this.§[i§.speed;
            if(§6!l§.§-f§)
            {
               §6!l§.§-f§.speed = this.§[i§.speed;
            }
            if(!_loc4_)
            {
               this.§[i§ = null;
            }
         }
         this.§'!n§ += param1;
         if(this.§4!Q§)
         {
            this.§#[§ += param1;
            this.§#[§ = this.§>!&§.§'T§(this.§#[§);
         }
         else
         {
            this.§#[§ = 0;
            this.§2!5§(param1);
         }
         this.§`!L§.update(param1,param3);
         if(param2)
         {
            this.§>I§(param1);
         }
         return param1;
      }
      
      private function §;S§(param1:Number, param2:Boolean) : Number
      {
         var _loc4_:Number = NaN;
         var _loc3_:Number = §<o§.§2e§;
         if(this.§ "!§)
         {
            param1 *= this.§ "!§.speed;
            _loc4_ = this.§'!n§ + param1;
            while(this.§'!n§ + _loc3_ < _loc4_)
            {
               if(this.§'!n§ + _loc3_ > this.§ @§)
               {
                  this.§ "!§.step(this);
                  this.§ @§ += _loc3_;
               }
               this.§>!H§(_loc3_,false,param2);
            }
            if(_loc4_ > this.§ @§ + _loc3_)
            {
               this.§ "!§.step(this);
               this.§ @§ += _loc3_;
            }
            if(this.§'!n§ < _loc4_)
            {
               this.§>!H§(_loc4_ - this.§'!n§,true,param2);
            }
            return param1;
         }
         return param1;
      }
      
      private function §>I§(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         this.§>Y§.update(param1);
         this.§"H§.§&!N§(param1,this.§>!&§.§%!w§,this.§#[§);
         this.§#z§();
         if(this.§?!'§ < §&z§.§#L§)
         {
            this.§?!'§ += param1;
            _loc2_ = §&z§.§#L§ / 2;
            _loc3_ = (-Math.abs(this.§?!'§ - _loc2_) + _loc2_) * (§&z§.§&"$§ / _loc2_);
            if(this.§&!S§)
            {
               this.§&!S§.alpha = _loc3_;
            }
         }
         else if(this.§&!S§)
         {
            this.§&!S§.visible = false;
         }
         if(this.§%D§)
         {
            if(!this.§%D§.§ !_§(this.§"`§,param1))
            {
               this.§8%§(false);
            }
         }
         this.§"`§.§#P§(param1);
         this.§>!&§.§5t§();
         this.§!?§.update(param1);
      }
      
      public function §2!5§(param1:Number) : void
      {
         this.objects.§8" §(param1);
         this.§#?§();
      }
      
      protected function §#z§() : void
      {
         var _loc1_:§@_§ = null;
         if(this.§4!3§ != null)
         {
            for each(_loc1_ in this.§4!3§)
            {
               if(!_loc1_.isLeavingTrail)
               {
                  this.§[U§(_loc1_);
               }
            }
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§7k§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            _loc2_ = this.§"H§.§>a§(true);
            if(_loc2_)
            {
               _loc2_.scream();
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§"H§.§&!D§());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            _loc2_ = this.§"H§.§>a§(true);
            if(_loc2_)
            {
               _loc2_.blink();
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§"H§.§&!D§());
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §`""§.§2"4§;
         }
         §52§.addScore(param1,param2);
         this.§-!"§.addScore(param1);
         if(param3 && param1 > 0 && !this.§`f§)
         {
            this.§%!h§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §%!h§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §`""§.§6U§;
         }
         this.§!?§.§9!@§(§`""§.§+!S§,§"w§.§>h§,§`""§.§7`§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §2!;§(param1:§#!v§) : void
      {
         if(this.§4!3§ == null)
         {
            this.§4!3§ = new Array();
         }
         this.§4!3§.push(param1);
      }
      
      public function §!j§() : void
      {
         this.§`!L§.§!j§();
         this.§"H§.§5H§();
         this.§`f§ = true;
      }
      
      public function §[U§(param1:§@_§) : void
      {
         this.§!?§.§`o§(§"w§.§>!X§);
         if(this.§4!3§.indexOf(param1) >= 0)
         {
            this.§4!3§.splice(this.§4!3§.indexOf(param1),1);
         }
         if(this.§4!3§.length == 0)
         {
            this.§4!3§ = null;
         }
      }
      
      public function §?!k§(param1:§&#§, param2:Number, param3:Number) : §^"2§
      {
         var _loc4_:§^"2§ = §^"2§(this.§"H§.§&w§(param1.name,param1.x,param1.y,0,§<!l§.§0"+§,true,true,true,param1.scale));
         var _loc5_:Number = param1.§+!4§;
         if(param1.§3!G§ > 1)
         {
            _loc4_.§4B§(param1.§3!G§);
         }
         if(param1.§,!P§ != 0)
         {
            _loc5_ = param1.§,!P§;
         }
         var _loc6_:Number = -_loc5_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc7_:Number = _loc5_ * param2 * Math.sin(param3 / (180 / Math.PI));
         _loc4_.§^y§(new b2Vec2(_loc6_,_loc7_),false,true);
         _loc4_.isLeavingTrail = true;
         this.camera.§-!M§(§0k§.§=!I§);
         if(this.§9>§)
         {
            this.§9>§.§?!k§(this.§>!&§.§-!G§,param1.x,param1.y,param2,param3);
         }
         return _loc4_;
      }
      
      public function activateSpecialPower(param1:Number, param2:Number) : void
      {
         this.§-!Z§ = true;
         this.§=b§ = param1;
         this.§!Q§ = param2;
      }
      
      private function §#?§() : void
      {
         if(!this.§-!Z§)
         {
            return;
         }
         this.§-!Z§ = false;
         if(this.§"H§.activeObject is §^"2§)
         {
            this.§"H§.activateSpecialPower(this.§=b§,this.§!Q§);
         }
         if(this.§9>§)
         {
            this.§9>§.§6%§(this.§>!&§.§-!G§,this.§=b§,this.§!Q§);
         }
      }
      
      public function §[!K§() : void
      {
         this.§"H§.§[!K§();
      }
      
      public function §9A§() : void
      {
         this.§"H§.§?"1§();
      }
      
      public function §-g§() : §5L§
      {
         var _loc1_:§5L§ = new §5L§();
         _loc1_.scoreGold = this.§?n§.scoreGold;
         _loc1_.scoreSilver = this.§?n§.scoreSilver;
         this.§"`§.§1-§(_loc1_);
         this.§"H§.§ !c§(_loc1_);
         this.§`!L§.§'!%§(_loc1_);
         _loc1_.theme = this.§>Y§.§<j§();
         return _loc1_;
      }
      
      public function §2!r§() : int
      {
         return this.§?n§.scoreSilver;
      }
      
      public function §`!§() : int
      {
         return this.§?n§.scoreGold;
      }
      
      public function §"&§(param1:int) : void
      {
         this.§?n§.scoreSilver = param1;
      }
      
      public function §6>§(param1:int) : void
      {
         this.§?n§.scoreGold = param1;
      }
      
      public function §7<§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§9"+§ = param1;
         this.§=Z§ = param2;
         this.§ !e§ = param3;
         this.§4J§ = param4;
         if(this.§0$§)
         {
            this.§0$§.§9l§(param1,param2);
         }
         if(this.§"`§)
         {
            this.§"`§.§#P§(0);
         }
      }
      
      public function §8^§(param1:§#!v§, param2:§#!v§) : Boolean
      {
         return false;
      }
      
      public function get currentLevel() : §5L§
      {
         return this.§?n§;
      }
      
      public function get levelObjects() : §<!l§
      {
         return this.§"H§;
      }
      
      protected function get §>!C§() : §6!l§
      {
         return this.§3#§;
      }
      
      public function get §7!X§() : int
      {
         return §]<§;
      }
   }
}
