package §9G§
{
   import § U§.§5Q§;
   import §!"+§.§2!H§;
   import §!f§.§>!s§;
   import §!f§.§@"§;
   import §"P§.§&"0§;
   import §"P§.§,Y§;
   import §"P§.§=!E§;
   import §"P§.§?!§;
   import §"P§.§^!x§;
   import §#"-§.§5!a§;
   import §%f§.§ n§;
   import §%f§.§[o§;
   import §-![§.DisplayObject;
   import §-![§.Sprite;
   import §0"1§.§#,§;
   import §1Q§.§?!Y§;
   import §5;§.§?"7§;
   import §5;§.§]!y§;
   import §6`§.§!!H§;
   import §6`§.§2a§;
   import §6`§.§`!&§;
   import §7!F§.b2Settings;
   import §8!e§.§ !z§;
   import §8!e§.§!!E§;
   import §8!e§.§3"&§;
   import §;4§.§]!%§;
   import §<" §.§@!H§;
   import §=!6§.§+8§;
   import §>D§.§ k§;
   import §>D§.§!R§;
   import §@U§.§;!3§;
   import §[K§.b2Vec2;
   import §^!<§.§#t§;
   import com.angrybirds.§4"6§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §2F§
   {
      
      private static const §@!t§:int = 20;
      
      public static const §&",§:Number = §4"6§.§,_§;
      
      public static const §%!=§:Number = §4"6§.§-v§;
      
      public static const §6+§:Number = 1 / 20;
      
      public static const §,§:Number = §4"6§.§-v§ * §6+§;
      
      public static const §[L§:Number = §&",§ * §6+§;
      
      public static const §`!J§:§[o§ = new §[o§(13 - 3);
      
      protected static var §catch§:String;
      
      protected static var §4Y§:Number = 1;
      
      protected static var §1!I§:String = §!!E§.§5!u§;
       
      
      protected var §^$§:§&"0§;
      
      private var §,7§:Array = null;
      
      protected var §%L§:§;!3§;
      
      public var § "$§:§8!h§;
      
      protected var §5X§:§94§;
      
      protected var §7p§:§#t§;
      
      protected var §-M§:§9!G§;
      
      protected var §2]§:§>!s§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §5!K§:Boolean = false;
      
      protected var §@!a§:Boolean = false;
      
      protected var §,+§:Boolean = false;
      
      public var §,h§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §5!I§:Number;
      
      public var §-p§:Number;
      
      private var §@!c§:§%!U§;
      
      private var §,!Q§:Sprite;
      
      protected var §^]§:§!!E§;
      
      protected var §;&§:§?!Y§ = null;
      
      private var §^!@§:EventDispatcher;
      
      private var §%%§:Array;
      
      private var §>!%§:§+8§;
      
      private var §["+§:§?"7§;
      
      protected var §1!5§:§2a§;
      
      protected var §!!l§:§`!&§;
      
      private var §^!h§:§!!H§;
      
      private var §@!"§:§!!H§;
      
      private var §5n§:§!!H§;
      
      private var §;s§:Stage;
      
      private var §%!>§:§1!u§;
      
      protected var §8$§:§5!a§;
      
      protected var §3#§:§5!a§;
      
      protected var §<k§:Number = 0.0;
      
      protected var §8!6§:String;
      
      private var §<3§:Boolean;
      
      private var §]2§:Number;
      
      private var §@6§:Number;
      
      protected var §7[§:§"6§;
      
      protected var §<"3§:§2!H§;
      
      protected var §!P§:§!R§;
      
      protected var §!3§:§3"&§;
      
      protected var §;!=§:uint = 1.417339207E9;
      
      public var §=!J§:Boolean;
      
      protected var §+!d§:int = 0;
      
      protected var §>"$§:int = 0;
      
      protected var §5Z§:Number = 1.0;
      
      protected var §5,§:Number = 1.0;
      
      protected var §,T§:Boolean;
      
      private var §=O§:§ n§;
      
      public function §2F§(param1:Stage, param2:§2!H§, param3:§!R§, param4:§3"&§)
      {
         this.§%%§ = [];
         super();
         this.§^!@§ = new EventDispatcher();
         this.§;s§ = param1;
         this.§<"3§ = param2;
         this.§!P§ = param3;
         this.§!3§ = param4;
         this.§1!5§ = §2a§.§"e§;
         this.§!!l§ = this.initAnimationManager(this.§1!5§);
         this.§^!h§ = this.§+&§();
         this.§@!"§ = this.initThemeSoundsManager();
         this.§5n§ = this.initCutSceneManager();
         this.§=O§ = new § n§();
         var _loc5_:Stage3D = param1.stage3Ds[0];
         this.§>!%§ = new §+8§(§%!U§,param1,new Rectangle(0,0,§4"6§.§,_§,§4"6§.§-v§),_loc5_);
         §4"6§.§<_§.addEventListener(§@!H§.§;I§,this.§>!%§.onEnterFrame);
         _loc5_.addEventListener(Event.CONTEXT3D_CREATE,this.§1"5§,false,0,true);
         this.§>!%§.§#"%§ = false;
         this.§>!%§.enableErrorChecking = false;
         this.§>!%§.§`Q§ = 2;
         this.§>!%§.§ V§();
      }
      
      public static function §<!'§(param1:§,Y§, param2:§,Y§) : Number
      {
         var _loc3_:Number = param1.§'!b§ - param2.§'!b§;
         var _loc4_:Number = param1.§1"%§ - param2.§1"%§;
         return §!!r§(_loc3_,_loc4_);
      }
      
      public static function §!!r§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      protected function get sprite() : Sprite
      {
         if(!this.§,!Q§ && this.§-"5§)
         {
            this.§,!Q§ = this.§@!c§.§?!R§;
         }
         return this.§,!Q§;
      }
      
      public function get §-"5§() : Sprite
      {
         if(!this.§@!c§)
         {
            this.§@!c§ = this.§>!%§.§5!T§ as §%!U§;
            this.§@!c§.§%!<§ = false;
         }
         return this.§@!c§;
      }
      
      private function get §8!S§() : DisplayObject
      {
         if(this.§-"5§)
         {
            return (this.§-"5§ as §%!U§).§8!S§;
         }
         return null;
      }
      
      public function get §<a§() : §`!&§
      {
         return this.§!!l§;
      }
      
      public function get § X§() : §2a§
      {
         return this.§1!5§;
      }
      
      public function get camera() : §#t§
      {
         return this.§7p§;
      }
      
      public function get objects() : §&"0§
      {
         return this.§^$§;
      }
      
      public function get particles() : §>!s§
      {
         return this.§2]§;
      }
      
      public function get background() : §;!3§
      {
         return this.§%L§;
      }
      
      public function get slingshot() : §9!G§
      {
         return this.§-M§;
      }
      
      public function get §&"§() : §94§
      {
         return this.§5X§;
      }
      
      public function get stage() : Stage
      {
         return this.§;s§;
      }
      
      public function get levelItemManager() : §2!H§
      {
         return this.§<"3§;
      }
      
      public function get §6G§() : §!!H§
      {
         return this.§5n§;
      }
      
      protected function get §<D§() : §!!H§
      {
         return this.§^!h§;
      }
      
      public function §@D§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§7[§ = new §"6§(param1,param2,param3,param4);
      }
      
      public function get damageScoreMultiplier() : int
      {
         return §2F§.§`!J§.getValue();
      }
      
      public function clear() : void
      {
         if(this.§["+§)
         {
            this.§["+§.dispose();
         }
         if(this.§1!5§)
         {
            this.§1!5§.removeEventListener(Event.INIT,this.§"!"§);
            this.§1!5§.dispose();
         }
         if(this.§^!h§ && this.§^!h§.§ X§)
         {
            this.§^!h§.§ X§.dispose();
         }
         if(this.§5n§ && this.§5n§.§ X§)
         {
            this.§5n§.§ X§.dispose();
         }
         if(this.§>!%§)
         {
            this.§>!%§.dispose();
         }
      }
      
      protected function §+&§() : §!!H§
      {
         return new §!!H§(this.§;s§.loaderInfo.parameters.assetsUrl || "",this.§;s§.loaderInfo.parameters.buildNumber || "",this.§!3§);
      }
      
      protected function initThemeSoundsManager() : §!!H§
      {
         return new §!!H§(this.§;s§.loaderInfo.parameters.assetsUrl || "",this.§;s§.loaderInfo.parameters.buildNumber || "",this.§!3§,false);
      }
      
      protected function initCutSceneManager() : §!!H§
      {
         return new §!!H§(this.§;s§.loaderInfo.parameters.assetsUrl || "",this.§;s§.loaderInfo.parameters.buildNumber || "",this.§!3§);
      }
      
      protected function initAnimationManager(param1:§2a§) : §`!&§
      {
         return new §`!&§(param1);
      }
      
      public function §7!X§(param1:Boolean) : void
      {
         if(§+8§.§0j§)
         {
            if(param1)
            {
               §+8§.§0j§.start();
            }
            else
            {
               §+8§.§0j§.stop();
               §+8§.§0j§.color = 0;
            }
         }
      }
      
      public function §?>§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function setController(param1:§?!Y§) : void
      {
         if(this.§;&§ != null)
         {
            this.§;&§.removeEventListeners();
         }
         this.§;&§ = param1;
         if(this.mReadyToRun)
         {
            this.§;&§.addEventListeners();
         }
      }
      
      public function §"a§() : §5!a§
      {
         return this.§8$§;
      }
      
      protected function §^"1§(param1:§]!y§) : int
      {
         return 0;
      }
      
      public function §&$§(param1:§?"7§, param2:Function) : void
      {
         var _loc5_:§]!y§ = null;
         var _loc6_:int = 0;
         this.§["+§ = param1;
         var _loc3_:int = this.§["+§.§;-§;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = this.§["+§.§%3§(_loc4_);
            _loc6_ = this.§^"1§(_loc5_);
            this.§1!5§.§0!6§(_loc5_,_loc6_);
            _loc4_++;
         }
         if(param2 != null)
         {
            this.§^!@§.addEventListener(Event.INIT,param2);
            this.§%%§.push(param2);
         }
         if(this.§;d§())
         {
            this.§8!<§();
         }
      }
      
      private function §;d§() : Boolean
      {
         this.§1!5§.removeEventListener(Event.INIT,this.§"!"§);
         if(this.§1!5§.§,!'§())
         {
            this.initializeAnimations();
            this.§,T§ = false;
            return true;
         }
         this.§1!5§.addEventListener(Event.INIT,this.§"!"§);
         this.§,T§ = true;
         return false;
      }
      
      private function §"!"§(param1:Event) : void
      {
         this.§1!5§.removeEventListener(Event.INIT,this.§"!"§);
         this.initializeAnimations();
         this.§,T§ = false;
         this.§8!<§();
      }
      
      protected function initializeAnimations() : void
      {
         this.§!!l§.initializeAnimations();
         this.§<"3§.§>z§();
      }
      
      private function §1"5§(param1:Event) : void
      {
         if(!§+8§.§,<§())
         {
            return;
         }
         this.§1!5§.reInitializeTextures();
         if(this.§<D§ && this.§<D§.§ X§)
         {
            this.§<D§.§ X§.reInitializeTextures();
         }
         if(this.§6G§ && this.§6G§.§ X§)
         {
            this.§6G§.§ X§.reInitializeTextures();
         }
         if(this.§,T§)
         {
            if(this.§;d§())
            {
               this.§8!<§();
            }
         }
         if(this.§;&§ != null && this.mReadyToRun)
         {
            this.§;&§.addEventListeners();
         }
         if(this.§^!h§)
         {
            this.§^!h§.§,!'§();
         }
         if(this.§5n§)
         {
            if(this.§5n§.§ X§)
            {
               this.§5n§.§,!'§();
            }
         }
      }
      
      private function §8!<§() : void
      {
         this.§^!@§.dispatchEvent(new Event(Event.INIT));
         this.§;!q§();
      }
      
      private function §;!q§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§%%§)
         {
            this.§^!@§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§%%§ = [];
      }
      
      public function init(param1:§!!E§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§5X§ = new §94§(this,param1);
         this.§7p§ = this.initializeLevelCamera(param1);
         this.§5!I§ = 0;
         this.§-p§ = 0;
         this.§<3§ = false;
         this.mReadyToRun = false;
         this.§5!K§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         param1.theme = param1.theme || "background_blue_grass";
         §1!I§ = param1.theme;
         this.§^]§ = param1;
         this.§@!a§ = this.§9N§(param1.theme);
         this.§,+§ = this.§7"7§(param1.theme);
         if(this.§@!a§ && this.§,+§)
         {
            this.initialize(param1);
         }
         else
         {
            this.§,!W§(param1.theme);
         }
         this.§0!v§(param1.name);
         §7!y§.init();
      }
      
      protected function §0!v§(param1:String) : void
      {
         this.§8$§ = new §5!a§(param1);
      }
      
      protected function §9N§(param1:String) : Boolean
      {
         if(this.§^!h§)
         {
            return false;
         }
         return true;
      }
      
      protected function §7"7§(param1:String) : Boolean
      {
         var _loc2_:§ k§ = null;
         if(this.§@!"§)
         {
            _loc2_ = this.§!P§.§[!M§(param1);
            if(_loc2_)
            {
               if(_loc2_.§+!=§ && !this.§@!"§.§!h§(_loc2_.§+!=§))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function §9!_§(param1:String) : Array
      {
         return null;
      }
      
      protected function §,!W§(param1:String) : void
      {
         var _loc2_:Array = null;
         var _loc3_:§ k§ = null;
         if(this.§^!h§ && !this.§9N§(param1))
         {
            this.§^!h§.removeEventListener(Event.COMPLETE,this.§-o§);
            this.§^!h§.removeEventListener(Event.CANCEL,this.§6!z§);
            this.§^!h§.addEventListener(Event.COMPLETE,this.§-o§);
            this.§^!h§.addEventListener(Event.CANCEL,this.§6!z§);
            _loc2_ = this.§9!_§(param1);
            this.§^!h§.loadContent(param1,_loc2_);
         }
         if(this.§@!"§ && !this.§7"7§(param1))
         {
            this.§@!"§.removeEventListener(Event.COMPLETE,this.§2!E§);
            this.§@!"§.removeEventListener(Event.CANCEL,this.§,G§);
            this.§@!"§.addEventListener(Event.COMPLETE,this.§2!E§);
            this.§@!"§.addEventListener(Event.CANCEL,this.§,G§);
            _loc3_ = this.§!P§.§[!M§(param1);
            if(_loc3_)
            {
               this.§@!"§.loadContent(_loc3_.§+!=§);
            }
         }
      }
      
      private function §-o§(param1:Event) : void
      {
         this.§^!h§.removeEventListener(Event.COMPLETE,this.§-o§);
         this.§^!h§.removeEventListener(Event.CANCEL,this.§6!z§);
         this.§@!a§ = true;
         if(this.§@!a§ && this.§,+§)
         {
            this.initialize(this.§^]§);
         }
      }
      
      private function §6!z§(param1:Event) : void
      {
         this.§^!h§.removeEventListener(Event.COMPLETE,this.§-o§);
         this.§^!h§.removeEventListener(Event.CANCEL,this.§6!z§);
         this.§5!K§ = true;
      }
      
      private function §2!E§(param1:Event) : void
      {
         this.§^!h§.removeEventListener(Event.COMPLETE,this.§2!E§);
         this.§^!h§.removeEventListener(Event.CANCEL,this.§,G§);
         this.§,+§ = true;
         if(this.§@!a§ && this.§,+§)
         {
            this.initialize(this.§^]§);
         }
      }
      
      private function §,G§(param1:Event) : void
      {
         this.§^!h§.removeEventListener(Event.COMPLETE,this.§2!E§);
         this.§^!h§.removeEventListener(Event.CANCEL,this.§,G§);
         this.§,+§ = true;
         if(this.§@!a§ && this.§,+§)
         {
            this.initialize(this.§^]§);
         }
      }
      
      public function get §`"%§() : §2a§
      {
         if(this.§<D§)
         {
            return this.§<D§.§ X§;
         }
         return null;
      }
      
      protected function §1!q§(param1:§!!E§) : void
      {
         b2Settings.b2_linearSleepTolerance = b2Settings.§``§;
      }
      
      private function initialize(param1:§!!E§) : void
      {
         this.§7[§ = null;
         this.§=!J§ = false;
         if(§+8§.§@%§)
         {
            §+8§.§@%§.speed = 1;
         }
         this.§1!q§(param1);
         this.§2"0§(param1);
         this.§%L§ = this.§ 0§(param1.theme,0 / §6+§,this.§`"%§,this.§7p§.§[v§());
         this.§%L§.§;!7§(§4"6§.§4!f§());
         if(§+8§.§0j§)
         {
            §+8§.§0j§.color = this.§%L§.§[!G§;
         }
         this.§^$§ = this.initializeLevelObjectManager(param1);
         this.§^$§.§9!p§ = this.§]P§(param1.name);
         this.§-M§ = this.initializeLevelSlingshot(param1);
         this.§2]§ = this.§3!S§(this.§!!l§,this.§1!5§);
         this.§7p§.init();
         this.§'z§();
         this.§<!K§();
         this.mReadyToRun = true;
         if(this.§;&§)
         {
            this.§;&§.addEventListeners();
         }
         if(param1.name == §catch§)
         {
            this.§7p§.§#!b§(§4Y§);
            this.§>+§(0);
         }
         else
         {
            §catch§ = param1.name;
         }
         this.§`!"§();
      }
      
      protected function §`!"§() : void
      {
         this.§^$§.§`!"§();
      }
      
      protected function §2"0§(param1:§!!E§) : void
      {
         this.§ "$§ = new §8!h§(this);
      }
      
      protected function §<!K§() : void
      {
         if(this.§8!6§)
         {
            this.§3#§ = §5!a§.initialize(this.§8!6§);
            this.§3#§.speed = 1;
            this.§3#§.play();
            this.§<k§ = -1000;
            this.§8!6§ = null;
         }
      }
      
      public function §2A§(param1:String) : void
      {
         this.§8!6§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§3#§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§3#§)
         {
            if(param1)
            {
               this.§3#§.speed = Math.min(this.§3#§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§3#§.speed = Math.max(this.§3#§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§3#§)
         {
            this.§3#§.speed = 1;
         }
      }
      
      protected function initializeLevelObjectManager(param1:§!!E§) : §&"0§
      {
         var _loc2_:String = § k§.§+l§;
         return new §&"0§(this,param1,new Sprite(),_loc2_);
      }
      
      protected function §]P§(param1:String) : §5Q§
      {
         if(!param1)
         {
            return null;
         }
         var _loc2_:Class = this.§=O§[param1.toLowerCase()];
         if(!_loc2_)
         {
            return null;
         }
         return new _loc2_() as §5Q§;
      }
      
      public function §%!k§(param1:String, param2:Class) : void
      {
         this.§=O§[param1.toLowerCase()] = param2;
      }
      
      protected function initializeLevelCamera(param1:§!!E§) : §#t§
      {
         return new §#t§(this,param1);
      }
      
      protected function § 0§(param1:String, param2:Number, param3:§2a§, param4:Number) : §;!3§
      {
         var _loc5_:§ k§;
         if((_loc5_ = this.§!P§.§[!M§(param1)) == null)
         {
            §]!%§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §!!E§.§5!u§;
            _loc5_ = this.§!P§.§[!M§(param1);
         }
         return new §;!3§(_loc5_,param2,param3,param4,!§+8§.§0"$§);
      }
      
      protected function initializeLevelSlingshot(param1:§!!E§) : §9!G§
      {
         return new §9!G§(this,param1,new Sprite());
      }
      
      protected function §3!S§(param1:§`!&§, param2:§2a§) : §>!s§
      {
         return new §>!s§(param1,param2);
      }
      
      public function initializeEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§!!E§ = new §!!E§();
         _loc3_.slingshotY = -12;
         var _loc4_:§ !z§;
         (_loc4_ = new § !z§()).left = 0;
         _loc4_.top = -§#t§.§[W§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §#t§.§[W§;
         _loc4_.right = _loc4_.left + §#t§.§1!t§;
         _loc4_.y = -13.929;
         _loc4_.x = §#t§.§1!t§;
         _loc4_.id = §#t§.§+"+§;
         _loc3_.§""%§(_loc4_);
         var _loc5_:§ !z§;
         (_loc5_ = new § !z§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §#t§.§1!t§;
         _loc5_.bottom = _loc5_.top + §#t§.§[W§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §#t§.§1!t§ / 2;
         _loc5_.id = §#t§.§]!4§;
         _loc3_.§""%§(_loc5_);
         this.§%!w§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§1!I§ != null)
         {
            _loc3_.theme = §1!I§;
         }
         this.init(_loc3_);
      }
      
      protected function §%!w§(param1:§!!E§, param2:Boolean) : void
      {
         if(param2)
         {
            this.§>!B§(param1);
         }
      }
      
      protected function §%"3§() : Number
      {
         this.§;!=§ ^= this.§;!=§ << 21;
         this.§;!=§ ^= this.§;!=§ >>> 35;
         this.§;!=§ ^= this.§;!=§ << 4;
         return this.§;!=§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §>!B§(param1:§!!E§) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§#,§ = null;
         this.§;!=§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < 10)
         {
            _loc4_ = 0;
            while(_loc4_ < 5)
            {
               _loc5_ = this.§%"3§() * 5;
               (_loc6_ = new §#,§()).x = 30 + _loc4_ * 10 + this.§%"3§() * 9;
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
                  _loc6_.angle = 45 - this.§%"3§() * 90;
               }
               else
               {
                  _loc6_.y = -30 + _loc3_ * 6 - this.§%"3§() * 3 - _loc4_ * 8;
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
                  _loc6_.angle = this.§%"3§() * 360;
               }
               _loc6_.id = _loc2_;
               param1.§5!t§(_loc6_);
               _loc2_++;
               _loc4_++;
            }
            _loc3_++;
         }
      }
      
      private function §?Z§() : void
      {
      }
      
      protected function §=p§() : void
      {
         if(§;!3§.§2?§)
         {
            this.§]!o§(this.§%L§.§1i§);
         }
      }
      
      protected function §^Y§() : void
      {
         this.§]!o§(this.§2]§.§8!z§(§>!s§.§ !3§));
         this.§]!o§(this.§2]§.§8!z§(§>!s§.§3e§));
      }
      
      protected function §9y§() : void
      {
         this.§]!o§(this.§2]§.§8!z§(§>!s§.§,"$§));
         this.§]!o§(this.§^$§.§"1§);
         this.§]!o§(this.§-M§.sprite);
         this.§]!o§(this.§2]§.§8!z§(§>!s§.§>M§));
      }
      
      protected function §!!`§() : void
      {
         this.§]!o§(this.§%L§.§<"2§);
         if(§;!3§.§2?§)
         {
            this.§]!o§(this.§%L§.§@!<§);
         }
      }
      
      protected function §'!1§() : void
      {
         this.§]!o§(this.§^$§.§ ""§);
         this.§]!o§(this.§2]§.§8!z§(§>!s§.§+![§));
         this.§]!o§(this.§2]§.§8!z§(§>!s§.§]!a§));
      }
      
      private function §'z§() : void
      {
         this.§=p§();
         this.§^Y§();
         this.§9y§();
         this.§!!`§();
         this.§'!1§();
         if(!§8!h§.§5"$§)
         {
         }
      }
      
      protected function §]!o§(param1:DisplayObject) : void
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
         if(§4"6§.§8!N§ > §4"6§.§&!D§)
         {
            param1 /= §4"6§.§8!N§;
            param2 /= §4"6§.§8!N§;
         }
         else
         {
            param1 /= §4"6§.§&!D§;
            param2 /= §4"6§.§&!D§;
         }
         param3.x = ((param1 - this.sprite.x) / §#t§.§9!3§ + this.§7p§.§?f§) * §6+§;
         param3.y = ((param2 - this.sprite.y) / §#t§.§9!3§ + this.§7p§.§8"§) * §6+§;
         return param3;
      }
      
      public function §4f§(param1:Number, param2:Number, param3:Point = null) : Point
      {
         if(!param3)
         {
            param3 = new Point();
         }
         param3.x = (param1 / §6+§ - this.§7p§.§?f§) * §#t§.§9!3§ + this.sprite.x;
         param3.y = (param2 / §6+§ - this.§7p§.§8"§) * §#t§.§9!3§ + this.sprite.y;
         var _loc4_:Number = Math.max(§4"6§.§8!N§,§4"6§.§&!D§);
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
            this.background.setScreenOffset(param1,param2,this.§+!d§,this.§>"$§,param3,this.§5Z§,this.§5,§);
         }
         if(this.objects)
         {
            this.objects.§`!Z§(param1,param2);
         }
         if(this.§ "$§)
         {
            this.§ "$§.§`!Z§(param1,param2);
         }
         if(this.slingshot)
         {
            this.slingshot.§`!Z§(param1,param2);
         }
         if(this.particles)
         {
            this.particles.§`!Z§(param1,param2);
         }
      }
      
      public function §+!X§(param1:String, param2:Number, param3:Number) : void
      {
         this.§^$§.§5!t§(param1,param2,param3,0,§&"0§.§&g§);
      }
      
      public function §2S§() : void
      {
         if(this.§8!S§)
         {
            this.§8!S§.visible = true;
            this.§8!S§.alpha = 0;
         }
         this.§,h§ = 0;
      }
      
      public function §+!W§(param1:Boolean, param2:Number = 0, param3:Number = 0, param4:Number = 0) : void
      {
         if(param1)
         {
            this.§%!>§ = new §1!u§(param2,param3,param4);
         }
         else
         {
            this.§%!>§ = null;
         }
      }
      
      public function clearLevel() : void
      {
         if(this.§%L§)
         {
            this.§%L§.dispose();
            this.§%L§ = null;
         }
         if(this.§^$§)
         {
            this.§^$§.dispose();
            this.§^$§ = null;
         }
         if(this.§ "$§)
         {
            if(!this.§ "$§.§=!3§)
            {
            }
            this.§ "$§.clear();
            this.§ "$§ = null;
         }
         if(this.§5X§)
         {
            this.§5X§.clear();
            this.§5X§ = null;
         }
         if(this.§-M§)
         {
            this.§-M§.dispose();
            this.§-M§ = null;
         }
         if(this.§7p§)
         {
            §4Y§ = this.§7p§.§8!B§;
            this.§7p§.clear();
            this.§7p§ = null;
         }
         if(this.§2]§)
         {
            this.§2]§.dispose();
            this.§2]§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§5!I§ = 0;
         this.§-p§ = 0;
         this.mReadyToRun = false;
         this.§<3§ = false;
         this.§,h§ = §0i§.§`!Q§;
         if(this.§-"5§)
         {
            (this.§-"5§ as §%!U§).§++§.x = 0;
            (this.§-"5§ as §%!U§).§++§.y = 0;
         }
         if(this.§8!S§)
         {
            this.§8!S§.visible = false;
         }
         this.§3#§ = null;
         this.§8$§ = null;
         if(this.§^!h§)
         {
            this.§^!h§.removeEventListener(Event.COMPLETE,this.§-o§);
            this.§^!h§.removeEventListener(Event.CANCEL,this.§6!z§);
         }
         if(this.§@!"§)
         {
            this.§@!"§.removeEventListener(Event.COMPLETE,this.§2!E§);
            this.§@!"§.removeEventListener(Event.CANCEL,this.§,G§);
         }
         this.§;!q§();
         if(§+8§.§0j§)
         {
            §+8§.§0j§.color = 0;
         }
         if(this.§;&§)
         {
            this.§;&§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver(param1:int) : void
      {
      }
      
      public function §,r§() : String
      {
         if(this.§8$§)
         {
            return this.§8$§.toString();
         }
         return null;
      }
      
      public function get §;2§() : Number
      {
         if(this.§7[§)
         {
            return this.§7[§.speed;
         }
         return 1;
      }
      
      public function update(param1:Number, param2:Boolean) : Number
      {
         if(!this.mReadyToRun || !§+8§.§,<§())
         {
            return 0;
         }
         if(this.§3#§ && this.§3#§.§'_§)
         {
            return this.§+K§(param1,param2);
         }
         return this.§-_§(param1,true,param2);
      }
      
      protected function §-_§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc4_:Boolean = false;
         if(this.§7[§)
         {
            _loc4_ = this.§7[§.update(param1);
            param1 *= this.§7[§.speed;
            if(§+8§.§@%§)
            {
               §+8§.§@%§.speed = this.§7[§.speed;
            }
            if(!_loc4_)
            {
               this.§7[§ = null;
            }
         }
         this.§-p§ += param1;
         this.§5!I§ += param1;
         this.§5!I§ = this.§ "$§.§>Y§(this.§5!I§);
         this.§-M§.update(param1,param3);
         if(param2)
         {
            this.§>+§(param1);
         }
         return param1;
      }
      
      private function §+K§(param1:Number, param2:Boolean) : Number
      {
         var _loc4_:Number = NaN;
         var _loc3_:Number = §8!h§.§0a§;
         if(this.§3#§)
         {
            param1 *= this.§3#§.speed;
            _loc4_ = this.§-p§ + param1;
            while(this.§-p§ + _loc3_ < _loc4_)
            {
               if(this.§-p§ + _loc3_ > this.§<k§)
               {
                  this.§3#§.step(this);
                  this.§<k§ += _loc3_;
               }
               this.§-_§(_loc3_,false,param2);
            }
            if(_loc4_ > this.§<k§ + _loc3_)
            {
               this.§3#§.step(this);
               this.§<k§ += _loc3_;
            }
            if(this.§-p§ < _loc4_)
            {
               this.§-_§(_loc4_ - this.§-p§,true,param2);
            }
            return param1;
         }
         return param1;
      }
      
      private function §>+§(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         this.§%L§.update(param1);
         this.§^$§.§&C§(param1,this.§ "$§.§=!q§,this.§5!I§);
         this.§?"%§();
         if(this.§,h§ < §0i§.§`!Q§)
         {
            this.§,h§ += param1;
            _loc2_ = §0i§.§`!Q§ / 2;
            _loc3_ = (-Math.abs(this.§,h§ - _loc2_) + _loc2_) * (§0i§.§37§ / _loc2_);
            if(this.§8!S§)
            {
               this.§8!S§.alpha = _loc3_;
            }
         }
         else if(this.§8!S§)
         {
            this.§8!S§.visible = false;
         }
         if(this.§%!>§)
         {
            if(!this.§%!>§.§@`§(this.§7p§,param1))
            {
               this.§+!W§(false);
            }
         }
         this.§7p§.§#!O§(param1);
         this.§ "$§.§+V§();
         this.§2]§.update(param1);
      }
      
      public function §0-§(param1:Number) : void
      {
         this.objects.§9$§(param1);
         this.§6N§();
      }
      
      protected function §?"%§() : void
      {
         var _loc1_:§^!x§ = null;
         if(this.§,7§ != null)
         {
            for each(_loc1_ in this.§,7§)
            {
               if(!_loc1_.isLeavingTrail)
               {
                  this.§=o§(_loc1_);
               }
            }
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§=!E§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            _loc2_ = this.§^$§.§&!'§(true);
            if(_loc2_)
            {
               _loc2_.scream();
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§^$§.§;,§());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            _loc2_ = this.§^$§.§&!'§(true);
            if(_loc2_)
            {
               _loc2_.blink();
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§^$§.§;,§());
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §@"§.§>H§;
         }
         §7!y§.addScore(param1,param2);
         this.§;&§.addScore(param1);
         if(param3 && param1 > 0 && !this.§=!J§)
         {
            this.§?]§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §?]§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §@"§.§7_§;
         }
         this.§2]§.§8" §(§@"§.§ y§,§>!s§.§+![§,§@"§.§=X§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §[P§(param1:§,Y§) : void
      {
         if(this.§,7§ == null)
         {
            this.§,7§ = new Array();
         }
         this.§,7§.push(param1);
      }
      
      public function §6!n§() : void
      {
         this.§-M§.§6!n§();
         this.§^$§.§7!#§();
         this.§=!J§ = true;
      }
      
      public function §=o§(param1:§^!x§) : void
      {
         this.§2]§.§?h§(§>!s§.§ !3§);
         if(this.§,7§.indexOf(param1) >= 0)
         {
            this.§,7§.splice(this.§,7§.indexOf(param1),1);
         }
         if(this.§,7§.length == 0)
         {
            this.§,7§ = null;
         }
      }
      
      public function §2c§(param1:§1!a§, param2:Number, param3:Number) : §?!§
      {
         var _loc4_:§?!§ = §?!§(this.§^$§.§5!t§(param1.name,param1.x,param1.y,0,§&"0§.§&g§,true,true,true,param1.scale));
         var _loc5_:Number = param1.§-1§;
         if(param1.§ !L§ > 1)
         {
            _loc4_.§!!Z§(param1.§ !L§);
         }
         if(param1.§0"%§ != 0)
         {
            _loc5_ = param1.§0"%§;
         }
         var _loc6_:Number = -_loc5_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc7_:Number = _loc5_ * param2 * Math.sin(param3 / (180 / Math.PI));
         _loc4_.§]j§(new b2Vec2(_loc6_,_loc7_),false,true);
         _loc4_.isLeavingTrail = true;
         this.camera.§ $§(§#t§.§ !K§);
         if(this.§8$§)
         {
            this.§8$§.§2c§(this.§ "$§.§&P§,param1.x,param1.y,param2,param3);
         }
         return _loc4_;
      }
      
      public function activateSpecialPower(param1:Number, param2:Number) : void
      {
         this.§<3§ = true;
         this.§]2§ = param1;
         this.§@6§ = param2;
      }
      
      private function §6N§() : void
      {
         if(!this.§<3§)
         {
            return;
         }
         this.§<3§ = false;
         if(this.§^$§.activeObject is §?!§)
         {
            this.§^$§.activateSpecialPower(this.§]2§,this.§@6§);
         }
         if(this.§8$§)
         {
            this.§8$§.§0!S§(this.§ "$§.§&P§,this.§]2§,this.§@6§);
         }
      }
      
      public function §+!Q§() : void
      {
         this.§^$§.§+!Q§();
      }
      
      public function §1!<§() : void
      {
         this.§^$§.§^U§();
      }
      
      public function §[!_§() : §!!E§
      {
         var _loc1_:§!!E§ = new §!!E§();
         _loc1_.scoreGold = this.§^]§.scoreGold;
         _loc1_.scoreSilver = this.§^]§.scoreSilver;
         this.§7p§.§[u§(_loc1_);
         this.§^$§.§7"§(_loc1_);
         this.§-M§.§4=§(_loc1_);
         _loc1_.theme = this.§%L§.§ 7§();
         return _loc1_;
      }
      
      public function §<'§() : int
      {
         return this.§^]§.scoreSilver;
      }
      
      public function §,]§() : int
      {
         return this.§^]§.scoreGold;
      }
      
      public function § each§(param1:int) : void
      {
         this.§^]§.scoreSilver = param1;
      }
      
      public function §[!!§(param1:int) : void
      {
         this.§^]§.scoreGold = param1;
      }
      
      public function §0v§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§+!d§ = param1;
         this.§>"$§ = param2;
         this.§5Z§ = param3;
         this.§5,§ = param4;
         if(this.§@!c§)
         {
            this.§@!c§.§1o§(param1,param2);
         }
         if(this.§7p§)
         {
            this.§7p§.§#!O§(0);
         }
      }
      
      public function §<8§(param1:§,Y§, param2:§,Y§) : Boolean
      {
         return false;
      }
      
      public function get currentLevel() : §!!E§
      {
         return this.§^]§;
      }
      
      public function get levelObjects() : §&"0§
      {
         return this.§^$§;
      }
      
      protected function get § Z§() : §+8§
      {
         return this.§>!%§;
      }
      
      public function get §?!5§() : int
      {
         return §@!t§;
      }
   }
}
