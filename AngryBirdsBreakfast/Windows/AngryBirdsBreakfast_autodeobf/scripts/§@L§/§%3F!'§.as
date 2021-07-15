package §@L§
{
   import § ! §.§5!x§;
   import § ! §.§=!>§;
   import § ! §.§?b§;
   import §"!&§.§3"!§;
   import §"n§.§<!Z§;
   import §"n§.§<!e§;
   import §&v§.§#!R§;
   import §'!l§.§5A§;
   import §'!l§.§9!#§;
   import §'F§.b2Settings;
   import §+!!§.§5"+§;
   import §,C§.§+§;
   import §,C§.§+"$§;
   import §,z§.§"_§;
   import §,z§.§&"§;
   import §,z§.§<!r§;
   import §,z§.§?!z§;
   import §,z§.§[!=§;
   import §-!;§.§^!!§;
   import §-n§.§=!S§;
   import §6![§.DisplayObject;
   import §6![§.Sprite;
   import §6Z§.b2Vec2;
   import §8!K§.§1!R§;
   import §8!K§.§5!0§;
   import §8!K§.§5!Y§;
   import §=!&§.§-!x§;
   import §>!Z§.§!u§;
   import §>!Z§.§2_§;
   import §?s§.§8K§;
   import §^!3§.§6!z§;
   import §`!a§.§1"&§;
   import com.angrybirds.§&!"§;
   import each.§!!'§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §?!'§
   {
      
      private static const §!@§:int = 20;
      
      public static const §]2§:Number = §&!"§.§8#§;
      
      public static const §4?§:Number = §&!"§.§'+§;
      
      public static const §'!i§:Number = 1 / 20;
      
      public static const §%+§:Number = §&!"§.§'+§ * §'!i§;
      
      public static const §"!l§:Number = §]2§ * §'!i§;
      
      public static const §#b§:§<!e§ = new §<!e§(13 - 3);
      
      protected static var §]!o§:String;
      
      protected static var §""+§:Number = 1;
      
      protected static var §89§:String = §5!0§.§`<§;
       
      
      protected var §""!§:§&"§;
      
      private var §-!i§:Array = null;
      
      protected var §=!#§:§-!x§;
      
      public var §5!u§:§@!G§;
      
      protected var §%e§:§ 7§;
      
      protected var §'!V§:§5"+§;
      
      protected var §#" §:§;!3§;
      
      protected var §^K§:§!u§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §@K§:Boolean = false;
      
      protected var §?!U§:Boolean = false;
      
      protected var §3;§:Boolean = false;
      
      public var §56§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var § try§:Number;
      
      public var §4@§:Number;
      
      private var §9w§:§2d§;
      
      private var §]F§:Sprite;
      
      protected var §^!6§:§5!0§;
      
      protected var §9$§:§6!z§ = null;
      
      private var §`!'§:EventDispatcher;
      
      private var §1"$§:Array;
      
      private var §[!9§:§1"&§;
      
      private var §@!+§:§5A§;
      
      protected var §`8§:§5!x§;
      
      protected var §^!f§:§?b§;
      
      private var §,"0§:§=!>§;
      
      private var §+!m§:§=!>§;
      
      private var §9k§:§=!>§;
      
      private var §7Y§:Stage;
      
      private var §3^§:§0a§;
      
      protected var §"R§:§=!S§;
      
      protected var §7! §:§=!S§;
      
      protected var §+n§:Number = 0.0;
      
      protected var §7!y§:String;
      
      private var §9!l§:Boolean;
      
      private var §;!N§:Number;
      
      private var § "+§:Number;
      
      protected var §,!g§:§'!+§;
      
      protected var §@!H§:§#!R§;
      
      protected var §9,§:§+§;
      
      protected var §&" §:§5!Y§;
      
      protected var §0!1§:uint = 1.417339207E9;
      
      public var §6!@§:Boolean;
      
      protected var §0r§:int = 0;
      
      protected var §@!E§:int = 0;
      
      protected var §?!%§:Number = 1.0;
      
      protected var §"!9§:Number = 1.0;
      
      protected var §&!J§:Boolean;
      
      private var §>b§:§<!Z§;
      
      public function §?!'§(param1:Stage, param2:§#!R§, param3:§+§, param4:§5!Y§)
      {
         this.§1"$§ = [];
         super();
         this.§`!'§ = new EventDispatcher();
         this.§7Y§ = param1;
         this.§@!H§ = param2;
         this.§9,§ = param3;
         this.§&" § = param4;
         this.§`8§ = §5!x§.§2Z§;
         this.§^!f§ = this.initAnimationManager(this.§`8§);
         this.§,"0§ = this.§=!s§();
         this.§+!m§ = this.initThemeSoundsManager();
         this.§9k§ = this.initCutSceneManager();
         this.§>b§ = new §<!Z§();
         var _loc5_:Stage3D = param1.stage3Ds[0];
         this.§[!9§ = new §1"&§(§2d§,param1,new Rectangle(0,0,§&!"§.§8#§,§&!"§.§'+§),_loc5_);
         §&!"§.§=!X§.addEventListener(§^!!§.§&o§,this.§[!9§.onEnterFrame);
         _loc5_.addEventListener(Event.CONTEXT3D_CREATE,this.§%;§,false,0,true);
         this.§[!9§.§+_§ = false;
         this.§[!9§.enableErrorChecking = false;
         this.§[!9§.§"'§ = 2;
         this.§[!9§.§4![§();
      }
      
      public static function §^M§(param1:§<!r§, param2:§<!r§) : Number
      {
         var _loc3_:Number = param1.§'m§ - param2.§'m§;
         var _loc4_:Number = param1.§^!P§ - param2.§^!P§;
         return §>!e§(_loc3_,_loc4_);
      }
      
      public static function §>!e§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      protected function get sprite() : Sprite
      {
         if(!this.§]F§ && this.§<x§)
         {
            this.§]F§ = this.§9w§.§1!g§;
         }
         return this.§]F§;
      }
      
      public function get §<x§() : Sprite
      {
         if(!this.§9w§)
         {
            this.§9w§ = this.§[!9§.§8U§ as §2d§;
            this.§9w§.§!!9§ = false;
         }
         return this.§9w§;
      }
      
      private function get §'D§() : DisplayObject
      {
         if(this.§<x§)
         {
            return (this.§<x§ as §2d§).§'D§;
         }
         return null;
      }
      
      public function get §5-§() : §?b§
      {
         return this.§^!f§;
      }
      
      public function get §58§() : §5!x§
      {
         return this.§`8§;
      }
      
      public function get camera() : §5"+§
      {
         return this.§'!V§;
      }
      
      public function get objects() : §&"§
      {
         return this.§""!§;
      }
      
      public function get particles() : §!u§
      {
         return this.§^K§;
      }
      
      public function get background() : §-!x§
      {
         return this.§=!#§;
      }
      
      public function get slingshot() : §;!3§
      {
         return this.§#" §;
      }
      
      public function get §57§() : § 7§
      {
         return this.§%e§;
      }
      
      public function get stage() : Stage
      {
         return this.§7Y§;
      }
      
      public function get levelItemManager() : §#!R§
      {
         return this.§@!H§;
      }
      
      public function get § ""§() : §=!>§
      {
         return this.§9k§;
      }
      
      protected function get §-%§() : §=!>§
      {
         return this.§,"0§;
      }
      
      public function §8e§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§,!g§ = new §'!+§(param1,param2,param3,param4);
      }
      
      public function get damageScoreMultiplier() : int
      {
         return §?!'§.§#b§.getValue();
      }
      
      public function clear() : void
      {
         if(this.§@!+§)
         {
            this.§@!+§.dispose();
         }
         if(this.§`8§)
         {
            this.§`8§.removeEventListener(Event.INIT,this.§;T§);
            this.§`8§.dispose();
         }
         if(this.§,"0§ && this.§,"0§.§58§)
         {
            this.§,"0§.§58§.dispose();
         }
         if(this.§9k§ && this.§9k§.§58§)
         {
            this.§9k§.§58§.dispose();
         }
         if(this.§[!9§)
         {
            this.§[!9§.dispose();
         }
      }
      
      protected function §=!s§() : §=!>§
      {
         return new §=!>§(this.§7Y§.loaderInfo.parameters.assetsUrl || "",this.§7Y§.loaderInfo.parameters.buildNumber || "",this.§&" §);
      }
      
      protected function initThemeSoundsManager() : §=!>§
      {
         return new §=!>§(this.§7Y§.loaderInfo.parameters.assetsUrl || "",this.§7Y§.loaderInfo.parameters.buildNumber || "",this.§&" §,false);
      }
      
      protected function initCutSceneManager() : §=!>§
      {
         return new §=!>§(this.§7Y§.loaderInfo.parameters.assetsUrl || "",this.§7Y§.loaderInfo.parameters.buildNumber || "",this.§&" §);
      }
      
      protected function initAnimationManager(param1:§5!x§) : §?b§
      {
         return new §?b§(param1);
      }
      
      public function §"!Q§(param1:Boolean) : void
      {
         if(§1"&§.§1i§)
         {
            if(param1)
            {
               §1"&§.§1i§.start();
            }
            else
            {
               §1"&§.§1i§.stop();
               §1"&§.§1i§.color = 0;
            }
         }
      }
      
      public function §2f§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function setController(param1:§6!z§) : void
      {
         if(this.§9$§ != null)
         {
            this.§9$§.removeEventListeners();
         }
         this.§9$§ = param1;
         if(this.mReadyToRun)
         {
            this.§9$§.addEventListeners();
         }
      }
      
      public function §@"!§() : §=!S§
      {
         return this.§"R§;
      }
      
      protected function §>!l§(param1:§9!#§) : int
      {
         return 0;
      }
      
      public function §1!y§(param1:§5A§, param2:Function) : void
      {
         var _loc5_:§9!#§ = null;
         var _loc6_:int = 0;
         this.§@!+§ = param1;
         var _loc3_:int = this.§@!+§.§]!M§;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = this.§@!+§.§-!d§(_loc4_);
            _loc6_ = this.§>!l§(_loc5_);
            this.§`8§.§5!"§(_loc5_,_loc6_);
            _loc4_++;
         }
         if(param2 != null)
         {
            this.§`!'§.addEventListener(Event.INIT,param2);
            this.§1"$§.push(param2);
         }
         if(this.§4h§())
         {
            this.§`g§();
         }
      }
      
      private function §4h§() : Boolean
      {
         this.§`8§.removeEventListener(Event.INIT,this.§;T§);
         if(this.§`8§.§0"&§())
         {
            this.initializeAnimations();
            this.§&!J§ = false;
            return true;
         }
         this.§`8§.addEventListener(Event.INIT,this.§;T§);
         this.§&!J§ = true;
         return false;
      }
      
      private function §;T§(param1:Event) : void
      {
         this.§`8§.removeEventListener(Event.INIT,this.§;T§);
         this.initializeAnimations();
         this.§&!J§ = false;
         this.§`g§();
      }
      
      protected function initializeAnimations() : void
      {
         this.§^!f§.initializeAnimations();
         this.§@!H§.§#j§();
      }
      
      private function §%;§(param1:Event) : void
      {
         if(!§1"&§.§ !R§())
         {
            return;
         }
         this.§`8§.reInitializeTextures();
         if(this.§-%§ && this.§-%§.§58§)
         {
            this.§-%§.§58§.reInitializeTextures();
         }
         if(this.§ ""§ && this.§ ""§.§58§)
         {
            this.§ ""§.§58§.reInitializeTextures();
         }
         if(this.§&!J§)
         {
            if(this.§4h§())
            {
               this.§`g§();
            }
         }
         if(this.§9$§ != null && this.mReadyToRun)
         {
            this.§9$§.addEventListeners();
         }
         if(this.§,"0§)
         {
            this.§,"0§.§0"&§();
         }
         if(this.§9k§)
         {
            if(this.§9k§.§58§)
            {
               this.§9k§.§0"&§();
            }
         }
      }
      
      private function §`g§() : void
      {
         this.§`!'§.dispatchEvent(new Event(Event.INIT));
         this.§!!4§();
      }
      
      private function §!!4§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§1"$§)
         {
            this.§`!'§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§1"$§ = [];
      }
      
      public function init(param1:§5!0§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§%e§ = new § 7§(this,param1);
         this.§'!V§ = this.initializeLevelCamera(param1);
         this.§ try§ = 0;
         this.§4@§ = 0;
         this.§9!l§ = false;
         this.mReadyToRun = false;
         this.§@K§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         param1.theme = param1.theme || "background_blue_grass";
         §89§ = param1.theme;
         this.§^!6§ = param1;
         this.§?!U§ = this.§2""§(param1.theme);
         this.§3;§ = this.§2!^§(param1.theme);
         if(this.§?!U§ && this.§3;§)
         {
            this.initialize(param1);
         }
         else
         {
            this.§43§(param1.theme);
         }
         this.§?X§(param1.name);
         §!]§.init();
      }
      
      protected function §?X§(param1:String) : void
      {
         this.§"R§ = new §=!S§(param1);
      }
      
      protected function §2""§(param1:String) : Boolean
      {
         if(this.§,"0§)
         {
            return false;
         }
         return true;
      }
      
      protected function §2!^§(param1:String) : Boolean
      {
         var _loc2_:§+"$§ = null;
         if(this.§+!m§)
         {
            _loc2_ = this.§9,§.§?-§(param1);
            if(_loc2_)
            {
               if(_loc2_.§"!1§ && !this.§+!m§.§&E§(_loc2_.§"!1§))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function §83§(param1:String) : Array
      {
         return null;
      }
      
      protected function §43§(param1:String) : void
      {
         var _loc2_:Array = null;
         var _loc3_:§+"$§ = null;
         if(this.§,"0§ && !this.§2""§(param1))
         {
            this.§,"0§.removeEventListener(Event.COMPLETE,this.§>P§);
            this.§,"0§.removeEventListener(Event.CANCEL,this.§="&§);
            this.§,"0§.addEventListener(Event.COMPLETE,this.§>P§);
            this.§,"0§.addEventListener(Event.CANCEL,this.§="&§);
            _loc2_ = this.§83§(param1);
            this.§,"0§.loadContent(param1,_loc2_);
         }
         if(this.§+!m§ && !this.§2!^§(param1))
         {
            this.§+!m§.removeEventListener(Event.COMPLETE,this.§ !E§);
            this.§+!m§.removeEventListener(Event.CANCEL,this.§'!R§);
            this.§+!m§.addEventListener(Event.COMPLETE,this.§ !E§);
            this.§+!m§.addEventListener(Event.CANCEL,this.§'!R§);
            _loc3_ = this.§9,§.§?-§(param1);
            if(_loc3_)
            {
               this.§+!m§.loadContent(_loc3_.§"!1§);
            }
         }
      }
      
      private function §>P§(param1:Event) : void
      {
         this.§,"0§.removeEventListener(Event.COMPLETE,this.§>P§);
         this.§,"0§.removeEventListener(Event.CANCEL,this.§="&§);
         this.§?!U§ = true;
         if(this.§?!U§ && this.§3;§)
         {
            this.initialize(this.§^!6§);
         }
      }
      
      private function §="&§(param1:Event) : void
      {
         this.§,"0§.removeEventListener(Event.COMPLETE,this.§>P§);
         this.§,"0§.removeEventListener(Event.CANCEL,this.§="&§);
         this.§@K§ = true;
      }
      
      private function § !E§(param1:Event) : void
      {
         this.§,"0§.removeEventListener(Event.COMPLETE,this.§ !E§);
         this.§,"0§.removeEventListener(Event.CANCEL,this.§'!R§);
         this.§3;§ = true;
         if(this.§?!U§ && this.§3;§)
         {
            this.initialize(this.§^!6§);
         }
      }
      
      private function §'!R§(param1:Event) : void
      {
         this.§,"0§.removeEventListener(Event.COMPLETE,this.§ !E§);
         this.§,"0§.removeEventListener(Event.CANCEL,this.§'!R§);
         this.§3;§ = true;
         if(this.§?!U§ && this.§3;§)
         {
            this.initialize(this.§^!6§);
         }
      }
      
      public function get §^N§() : §5!x§
      {
         if(this.§-%§)
         {
            return this.§-%§.§58§;
         }
         return null;
      }
      
      protected function §8T§(param1:§5!0§) : void
      {
         b2Settings.b2_linearSleepTolerance = b2Settings.§3B§;
      }
      
      private function initialize(param1:§5!0§) : void
      {
         this.§,!g§ = null;
         this.§6!@§ = false;
         if(§1"&§.§"!U§)
         {
            §1"&§.§"!U§.speed = 1;
         }
         this.§8T§(param1);
         this.§6B§(param1);
         this.§=!#§ = this.§5!^§(param1.theme,0 / §'!i§,this.§^N§,this.§'!V§.§]>§());
         this.§=!#§.§<8§(§&!"§.§?!v§());
         if(§1"&§.§1i§)
         {
            §1"&§.§1i§.color = this.§=!#§.§-o§;
         }
         this.§""!§ = this.initializeLevelObjectManager(param1);
         this.§""!§.§^v§ = this.§-b§(param1.name);
         this.§#" § = this.initializeLevelSlingshot(param1);
         this.§^K§ = this.§5!d§(this.§^!f§,this.§`8§);
         this.§'!V§.init();
         this.§0!R§();
         this.§2o§();
         this.mReadyToRun = true;
         if(this.§9$§)
         {
            this.§9$§.addEventListeners();
         }
         if(param1.name == §]!o§)
         {
            this.§'!V§.§6!v§(§""+§);
            this.§8![§(0);
         }
         else
         {
            §]!o§ = param1.name;
         }
         this.§;!J§();
      }
      
      protected function §;!J§() : void
      {
         this.§""!§.§;!J§();
      }
      
      protected function §6B§(param1:§5!0§) : void
      {
         this.§5!u§ = new §@!G§(this);
      }
      
      protected function §2o§() : void
      {
         if(this.§7!y§)
         {
            this.§7! § = §=!S§.initialize(this.§7!y§);
            this.§7! §.speed = 1;
            this.§7! §.play();
            this.§+n§ = -1000;
            this.§7!y§ = null;
         }
      }
      
      public function §@!Z§(param1:String) : void
      {
         this.§7!y§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§7! § != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§7! §)
         {
            if(param1)
            {
               this.§7! §.speed = Math.min(this.§7! §.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§7! §.speed = Math.max(this.§7! §.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§7! §)
         {
            this.§7! §.speed = 1;
         }
      }
      
      protected function initializeLevelObjectManager(param1:§5!0§) : §&"§
      {
         var _loc2_:String = §+"$§.§;!@§;
         return new §&"§(this,param1,new Sprite(),_loc2_);
      }
      
      protected function §-b§(param1:String) : §3"!§
      {
         if(!param1)
         {
            return null;
         }
         var _loc2_:Class = this.§>b§[param1.toLowerCase()];
         if(!_loc2_)
         {
            return null;
         }
         return new _loc2_() as §3"!§;
      }
      
      public function §=4§(param1:String, param2:Class) : void
      {
         this.§>b§[param1.toLowerCase()] = param2;
      }
      
      protected function initializeLevelCamera(param1:§5!0§) : §5"+§
      {
         return new §5"+§(this,param1);
      }
      
      protected function §5!^§(param1:String, param2:Number, param3:§5!x§, param4:Number) : §-!x§
      {
         var _loc5_:§+"$§;
         if((_loc5_ = this.§9,§.§?-§(param1)) == null)
         {
            §!!'§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §5!0§.§`<§;
            _loc5_ = this.§9,§.§?-§(param1);
         }
         return new §-!x§(_loc5_,param2,param3,param4,!§1"&§.§'!g§);
      }
      
      protected function initializeLevelSlingshot(param1:§5!0§) : §;!3§
      {
         return new §;!3§(this,param1,new Sprite());
      }
      
      protected function §5!d§(param1:§?b§, param2:§5!x§) : §!u§
      {
         return new §!u§(param1,param2);
      }
      
      public function initializeEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§5!0§ = new §5!0§();
         _loc3_.slingshotY = -12;
         var _loc4_:§1!R§;
         (_loc4_ = new §1!R§()).left = 0;
         _loc4_.top = -§5"+§.§<!V§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §5"+§.§<!V§;
         _loc4_.right = _loc4_.left + §5"+§.§8"#§;
         _loc4_.y = -13.929;
         _loc4_.x = §5"+§.§8"#§;
         _loc4_.id = §5"+§.§,!G§;
         _loc3_.§7!x§(_loc4_);
         var _loc5_:§1!R§;
         (_loc5_ = new §1!R§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §5"+§.§8"#§;
         _loc5_.bottom = _loc5_.top + §5"+§.§<!V§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §5"+§.§8"#§ / 2;
         _loc5_.id = §5"+§.§4!Y§;
         _loc3_.§7!x§(_loc5_);
         this.§7d§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§89§ != null)
         {
            _loc3_.theme = §89§;
         }
         this.init(_loc3_);
      }
      
      protected function §7d§(param1:§5!0§, param2:Boolean) : void
      {
         if(param2)
         {
            this.§-!s§(param1);
         }
      }
      
      protected function §5!;§() : Number
      {
         this.§0!1§ ^= this.§0!1§ << 21;
         this.§0!1§ ^= this.§0!1§ >>> 35;
         this.§0!1§ ^= this.§0!1§ << 4;
         return this.§0!1§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §-!s§(param1:§5!0§) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§8K§ = null;
         this.§0!1§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < 10)
         {
            _loc4_ = 0;
            while(_loc4_ < 5)
            {
               _loc5_ = this.§5!;§() * 5;
               (_loc6_ = new §8K§()).x = 30 + _loc4_ * 10 + this.§5!;§() * 9;
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
                  _loc6_.angle = 45 - this.§5!;§() * 90;
               }
               else
               {
                  _loc6_.y = -30 + _loc3_ * 6 - this.§5!;§() * 3 - _loc4_ * 8;
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
                  _loc6_.angle = this.§5!;§() * 360;
               }
               _loc6_.id = _loc2_;
               param1.§,]§(_loc6_);
               _loc2_++;
               _loc4_++;
            }
            _loc3_++;
         }
      }
      
      private function §@J§() : void
      {
      }
      
      protected function §1y§() : void
      {
         if(§-!x§.§5M§)
         {
            this.§#d§(this.§=!#§.§]!!§);
         }
      }
      
      protected function § '§() : void
      {
         this.§#d§(this.§^K§.§2]§(§!u§.§?d§));
         this.§#d§(this.§^K§.§2]§(§!u§.§%c§));
      }
      
      protected function §[!w§() : void
      {
         this.§#d§(this.§^K§.§2]§(§!u§.§;W§));
         this.§#d§(this.§""!§.§>5§);
         this.§#d§(this.§#" §.sprite);
         this.§#d§(this.§^K§.§2]§(§!u§.§54§));
      }
      
      protected function §^!X§() : void
      {
         this.§#d§(this.§=!#§.§3"+§);
         if(§-!x§.§5M§)
         {
            this.§#d§(this.§=!#§.§-"!§);
         }
      }
      
      protected function §"4§() : void
      {
         this.§#d§(this.§""!§.§1!§);
         this.§#d§(this.§^K§.§2]§(§!u§.§"!q§));
         this.§#d§(this.§^K§.§2]§(§!u§.§?!+§));
      }
      
      private function §0!R§() : void
      {
         this.§1y§();
         this.§ '§();
         this.§[!w§();
         this.§^!X§();
         this.§"4§();
         if(!§@!G§.§]!3§)
         {
         }
      }
      
      protected function §#d§(param1:DisplayObject) : void
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
         if(§&!"§.§,!C§ > §&!"§.§3H§)
         {
            param1 /= §&!"§.§,!C§;
            param2 /= §&!"§.§,!C§;
         }
         else
         {
            param1 /= §&!"§.§3H§;
            param2 /= §&!"§.§3H§;
         }
         param3.x = ((param1 - this.sprite.x) / §5"+§.§,H§ + this.§'!V§.§=f§) * §'!i§;
         param3.y = ((param2 - this.sprite.y) / §5"+§.§,H§ + this.§'!V§.§98§) * §'!i§;
         return param3;
      }
      
      public function §9J§(param1:Number, param2:Number, param3:Point = null) : Point
      {
         if(!param3)
         {
            param3 = new Point();
         }
         param3.x = (param1 / §'!i§ - this.§'!V§.§=f§) * §5"+§.§,H§ + this.sprite.x;
         param3.y = (param2 / §'!i§ - this.§'!V§.§98§) * §5"+§.§,H§ + this.sprite.y;
         var _loc4_:Number = Math.max(§&!"§.§,!C§,§&!"§.§3H§);
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
            this.background.setScreenOffset(param1,param2,this.§0r§,this.§@!E§,param3,this.§?!%§,this.§"!9§);
         }
         if(this.objects)
         {
            this.objects.§=!F§(param1,param2);
         }
         if(this.§5!u§)
         {
            this.§5!u§.§=!F§(param1,param2);
         }
         if(this.slingshot)
         {
            this.slingshot.§=!F§(param1,param2);
         }
         if(this.particles)
         {
            this.particles.§=!F§(param1,param2);
         }
      }
      
      public function §<!c§(param1:String, param2:Number, param3:Number) : void
      {
         this.§""!§.§,]§(param1,param2,param3,0,§&"§.§5!1§);
      }
      
      public function §;![§() : void
      {
         if(this.§'D§)
         {
            this.§'D§.visible = true;
            this.§'D§.alpha = 0;
         }
         this.§56§ = 0;
      }
      
      public function §0h§(param1:Boolean, param2:Number = 0, param3:Number = 0, param4:Number = 0) : void
      {
         if(param1)
         {
            this.§3^§ = new §0a§(param2,param3,param4);
         }
         else
         {
            this.§3^§ = null;
         }
      }
      
      public function clearLevel() : void
      {
         if(this.§=!#§)
         {
            this.§=!#§.dispose();
            this.§=!#§ = null;
         }
         if(this.§""!§)
         {
            this.§""!§.dispose();
            this.§""!§ = null;
         }
         if(this.§5!u§)
         {
            if(!this.§5!u§.§6V§)
            {
            }
            this.§5!u§.clear();
            this.§5!u§ = null;
         }
         if(this.§%e§)
         {
            this.§%e§.clear();
            this.§%e§ = null;
         }
         if(this.§#" §)
         {
            this.§#" §.dispose();
            this.§#" § = null;
         }
         if(this.§'!V§)
         {
            §""+§ = this.§'!V§.§7!g§;
            this.§'!V§.clear();
            this.§'!V§ = null;
         }
         if(this.§^K§)
         {
            this.§^K§.dispose();
            this.§^K§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§ try§ = 0;
         this.§4@§ = 0;
         this.mReadyToRun = false;
         this.§9!l§ = false;
         this.§56§ = §=b§.§=g§;
         if(this.§<x§)
         {
            (this.§<x§ as §2d§).§2V§.x = 0;
            (this.§<x§ as §2d§).§2V§.y = 0;
         }
         if(this.§'D§)
         {
            this.§'D§.visible = false;
         }
         this.§7! § = null;
         this.§"R§ = null;
         if(this.§,"0§)
         {
            this.§,"0§.removeEventListener(Event.COMPLETE,this.§>P§);
            this.§,"0§.removeEventListener(Event.CANCEL,this.§="&§);
         }
         if(this.§+!m§)
         {
            this.§+!m§.removeEventListener(Event.COMPLETE,this.§ !E§);
            this.§+!m§.removeEventListener(Event.CANCEL,this.§'!R§);
         }
         this.§!!4§();
         if(§1"&§.§1i§)
         {
            §1"&§.§1i§.color = 0;
         }
         if(this.§9$§)
         {
            this.§9$§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver(param1:int) : void
      {
      }
      
      public function §&!I§() : String
      {
         if(this.§"R§)
         {
            return this.§"R§.toString();
         }
         return null;
      }
      
      public function get §2!M§() : Number
      {
         if(this.§,!g§)
         {
            return this.§,!g§.speed;
         }
         return 1;
      }
      
      public function update(param1:Number, param2:Boolean) : Number
      {
         if(!this.mReadyToRun || !§1"&§.§ !R§())
         {
            return 0;
         }
         if(this.§7! § && this.§7! §.§,!V§)
         {
            return this.§@N§(param1,param2);
         }
         return this.§%i§(param1,true,param2);
      }
      
      protected function §%i§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc4_:Boolean = false;
         if(this.§,!g§)
         {
            _loc4_ = this.§,!g§.update(param1);
            param1 *= this.§,!g§.speed;
            if(§1"&§.§"!U§)
            {
               §1"&§.§"!U§.speed = this.§,!g§.speed;
            }
            if(!_loc4_)
            {
               this.§,!g§ = null;
            }
         }
         this.§4@§ += param1;
         this.§ try§ += param1;
         this.§ try§ = this.§5!u§.§3b§(this.§ try§);
         this.§#" §.update(param1,param3);
         if(param2)
         {
            this.§8![§(param1);
         }
         return param1;
      }
      
      private function §@N§(param1:Number, param2:Boolean) : Number
      {
         var _loc4_:Number = NaN;
         var _loc3_:Number = §@!G§.§=Z§;
         if(this.§7! §)
         {
            param1 *= this.§7! §.speed;
            _loc4_ = this.§4@§ + param1;
            while(this.§4@§ + _loc3_ < _loc4_)
            {
               if(this.§4@§ + _loc3_ > this.§+n§)
               {
                  this.§7! §.step(this);
                  this.§+n§ += _loc3_;
               }
               this.§%i§(_loc3_,false,param2);
            }
            if(_loc4_ > this.§+n§ + _loc3_)
            {
               this.§7! §.step(this);
               this.§+n§ += _loc3_;
            }
            if(this.§4@§ < _loc4_)
            {
               this.§%i§(_loc4_ - this.§4@§,true,param2);
            }
            return param1;
         }
         return param1;
      }
      
      private function §8![§(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         this.§=!#§.update(param1);
         this.§""!§.§6!n§(param1,this.§5!u§.§0§,this.§ try§);
         this.§[<§();
         if(this.§56§ < §=b§.§=g§)
         {
            this.§56§ += param1;
            _loc2_ = §=b§.§=g§ / 2;
            _loc3_ = (-Math.abs(this.§56§ - _loc2_) + _loc2_) * (§=b§.§8!-§ / _loc2_);
            if(this.§'D§)
            {
               this.§'D§.alpha = _loc3_;
            }
         }
         else if(this.§'D§)
         {
            this.§'D§.visible = false;
         }
         if(this.§3^§)
         {
            if(!this.§3^§.§]!U§(this.§'!V§,param1))
            {
               this.§0h§(false);
            }
         }
         this.§'!V§.§>"%§(param1);
         this.§5!u§.§ L§();
         this.§^K§.update(param1);
      }
      
      public function § $§(param1:Number) : void
      {
         this.objects.§`!w§(param1);
         this.§@!-§();
      }
      
      protected function §[<§() : void
      {
         var _loc1_:§"_§ = null;
         if(this.§-!i§ != null)
         {
            for each(_loc1_ in this.§-!i§)
            {
               if(!_loc1_.isLeavingTrail)
               {
                  this.§9!-§(_loc1_);
               }
            }
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§[!=§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            _loc2_ = this.§""!§.§3!"§(true);
            if(_loc2_)
            {
               _loc2_.scream();
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§""!§.§[R§());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            _loc2_ = this.§""!§.§3!"§(true);
            if(_loc2_)
            {
               _loc2_.blink();
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§""!§.§[R§());
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §2_§.§4!Q§;
         }
         §!]§.addScore(param1,param2);
         this.§9$§.addScore(param1);
         if(param3 && param1 > 0 && !this.§6!@§)
         {
            this.§[!'§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §[!'§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §2_§.§#F§;
         }
         this.§^K§.§-!,§(§2_§.§2!I§,§!u§.§"!q§,§2_§.§<"§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §9!+§(param1:§<!r§) : void
      {
         if(this.§-!i§ == null)
         {
            this.§-!i§ = new Array();
         }
         this.§-!i§.push(param1);
      }
      
      public function §1!G§() : void
      {
         this.§#" §.§1!G§();
         this.§""!§.§<h§();
         this.§6!@§ = true;
      }
      
      public function §9!-§(param1:§"_§) : void
      {
         this.§^K§.§0!;§(§!u§.§?d§);
         if(this.§-!i§.indexOf(param1) >= 0)
         {
            this.§-!i§.splice(this.§-!i§.indexOf(param1),1);
         }
         if(this.§-!i§.length == 0)
         {
            this.§-!i§ = null;
         }
      }
      
      public function §&H§(param1:§3!&§, param2:Number, param3:Number) : §?!z§
      {
         var _loc4_:§?!z§ = §?!z§(this.§""!§.§,]§(param1.name,param1.x,param1.y,0,§&"§.§5!1§,true,true,true,param1.scale));
         var _loc5_:Number = param1.§;!x§;
         if(param1.§["+§ > 1)
         {
            _loc4_.§@!Y§(param1.§["+§);
         }
         if(param1.§3! § != 0)
         {
            _loc5_ = param1.§3! §;
         }
         var _loc6_:Number = -_loc5_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc7_:Number = _loc5_ * param2 * Math.sin(param3 / (180 / Math.PI));
         _loc4_.§]!9§(new b2Vec2(_loc6_,_loc7_),false,true);
         _loc4_.isLeavingTrail = true;
         this.camera.§`"$§(§5"+§.§&!$§);
         if(this.§"R§)
         {
            this.§"R§.§&H§(this.§5!u§.§]!§,param1.x,param1.y,param2,param3);
         }
         return _loc4_;
      }
      
      public function activateSpecialPower(param1:Number, param2:Number) : void
      {
         this.§9!l§ = true;
         this.§;!N§ = param1;
         this.§ "+§ = param2;
      }
      
      private function §@!-§() : void
      {
         if(!this.§9!l§)
         {
            return;
         }
         this.§9!l§ = false;
         if(this.§""!§.activeObject is §?!z§)
         {
            this.§""!§.activateSpecialPower(this.§;!N§,this.§ "+§);
         }
         if(this.§"R§)
         {
            this.§"R§.§@3§(this.§5!u§.§]!§,this.§;!N§,this.§ "+§);
         }
      }
      
      public function §2I§() : void
      {
         this.§""!§.§2I§();
      }
      
      public function §=X§() : void
      {
         this.§""!§.§]!>§();
      }
      
      public function § !=§() : §5!0§
      {
         var _loc1_:§5!0§ = new §5!0§();
         _loc1_.scoreGold = this.§^!6§.scoreGold;
         _loc1_.scoreSilver = this.§^!6§.scoreSilver;
         this.§'!V§.§4T§(_loc1_);
         this.§""!§.§?F§(_loc1_);
         this.§#" §.§7<§(_loc1_);
         _loc1_.theme = this.§=!#§.§=s§();
         return _loc1_;
      }
      
      public function §+!f§() : int
      {
         return this.§^!6§.scoreSilver;
      }
      
      public function §"!;§() : int
      {
         return this.§^!6§.scoreGold;
      }
      
      public function §<!§(param1:int) : void
      {
         this.§^!6§.scoreSilver = param1;
      }
      
      public function §"!Z§(param1:int) : void
      {
         this.§^!6§.scoreGold = param1;
      }
      
      public function §+!`§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§0r§ = param1;
         this.§@!E§ = param2;
         this.§?!%§ = param3;
         this.§"!9§ = param4;
         if(this.§9w§)
         {
            this.§9w§.§,'§(param1,param2);
         }
         if(this.§'!V§)
         {
            this.§'!V§.§>"%§(0);
         }
      }
      
      public function §-M§(param1:§<!r§, param2:§<!r§) : Boolean
      {
         return false;
      }
      
      public function get currentLevel() : §5!0§
      {
         return this.§^!6§;
      }
      
      public function get levelObjects() : §&"§
      {
         return this.§""!§;
      }
      
      protected function get §+O§() : §1"&§
      {
         return this.§[!9§;
      }
      
      public function get § K§() : int
      {
         return §!@§;
      }
   }
}
