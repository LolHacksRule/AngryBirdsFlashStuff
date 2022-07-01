package §0I§
{
   import §#!O§.§]!y§;
   import §%^§.§'!%§;
   import §%^§.§@!n§;
   import §'<§.§;r§;
   import §'<§.§=!o§;
   import §'<§.§@!R§;
   import §,"%§.§?r§;
   import §-!X§.§;!V§;
   import §-!f§.DisplayObject;
   import §-!f§.Sprite;
   import §-%§.b2Vec2;
   import §2?§.§1"§;
   import §2?§.§4!5§;
   import §3g§.§?!d§;
   import §3g§.§`O§;
   import §5!7§.§<"2§;
   import §6!4§.§<!D§;
   import §6_§.§,!>§;
   import §6_§.§,^§;
   import §6_§.§=!"§;
   import §9!o§.§<"§;
   import §>!R§.b2Settings;
   import §>j§.§`y§;
   import §?!4§.§6"&§;
   import §]!q§.§ "'§;
   import §]!q§.§!i§;
   import §]!q§.§,6§;
   import §]!q§.§,[§;
   import §]!q§.§;!4§;
   import §`6§.§-!j§;
   import com.angrybirds.§6U§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §!!p§
   {
      
      private static const §?I§:int = 20;
      
      public static const §+'§:Number = §6U§.§[6§;
      
      public static const §!X§:Number = §6U§.§1a§;
      
      public static const §6L§:Number = 1 / 20;
      
      public static const §"K§:Number = §6U§.§1a§ * §6L§;
      
      public static const §<g§:Number = §+'§ * §6L§;
      
      public static const §;s§:§-!j§ = new §-!j§(13 - 3);
      
      protected static var §-;§:String;
      
      protected static var §64§:Number = 1;
      
      protected static var §6"§:String = §;r§.§&^§;
       
      
      protected var §&!#§:§!i§;
      
      private var §&!3§:Array = null;
      
      protected var § 7§:§]!y§;
      
      public var §&%§:§+!5§;
      
      protected var §",§:§0"1§;
      
      protected var §=!9§:§`y§;
      
      protected var § j§:§;"0§;
      
      protected var §]Q§:§`O§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §^!a§:Boolean = false;
      
      protected var §'@§:Boolean = false;
      
      protected var §<R§:Boolean = false;
      
      public var §2;§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §`2§:Number;
      
      public var §31§:Number;
      
      private var §,!J§:§3#§;
      
      private var §=!0§:Sprite;
      
      protected var §-z§:§;r§;
      
      protected var §>a§:§<"§ = null;
      
      private var §6!X§:EventDispatcher;
      
      private var §0P§:Array;
      
      private var §0<§:§<!D§;
      
      private var §7Q§:§@!n§;
      
      protected var §'+§:§,!>§;
      
      protected var §8!G§:§,^§;
      
      private var §7!Z§:§=!"§;
      
      private var §;!,§:§=!"§;
      
      private var §`!q§:§=!"§;
      
      private var §`!"§:Stage;
      
      private var §@!$§:§6B§;
      
      protected var §+!n§:§;!V§;
      
      protected var §%!A§:§;!V§;
      
      protected var §=v§:Number = 0.0;
      
      protected var §'!v§:String;
      
      private var §>U§:Boolean;
      
      private var §`"+§:Number;
      
      private var §9!&§:Number;
      
      protected var §&"2§:§2%§;
      
      protected var §with§:§<"2§;
      
      protected var §'5§:§4!5§;
      
      protected var §+o§:§=!o§;
      
      protected var §2!Q§:uint = 1.417339207E9;
      
      public var §3"#§:Boolean;
      
      protected var §"a§:int = 0;
      
      protected var §+!T§:int = 0;
      
      protected var §0!W§:Number = 1.0;
      
      protected var §0a§:Number = 1.0;
      
      protected var §9!7§:Boolean;
      
      public function §!!p§(param1:Stage, param2:§<"2§, param3:§4!5§, param4:§=!o§)
      {
         this.§0P§ = [];
         super();
         this.§6!X§ = new EventDispatcher();
         this.§`!"§ = param1;
         this.§with§ = param2;
         this.§'5§ = param3;
         this.§+o§ = param4;
         this.§'+§ = §,!>§.§?!+§;
         this.§8!G§ = this.initAnimationManager(this.§'+§);
         this.§7!Z§ = this.§8T§();
         this.§;!,§ = this.initThemeSoundsManager();
         this.§`!q§ = this.initCutSceneManager();
         var _loc5_:Stage3D = param1.stage3Ds[0];
         this.§0<§ = new §<!D§(§3#§,param1,new Rectangle(0,0,§6U§.§[6§,§6U§.§1a§),_loc5_);
         §6U§.§&k§.addEventListener(§6"&§.§"!w§,this.§0<§.onEnterFrame);
         _loc5_.addEventListener(Event.CONTEXT3D_CREATE,this.§-!P§,false,0,true);
         this.§0<§.§=C§ = false;
         this.§0<§.enableErrorChecking = false;
         this.§0<§.§'!]§ = 2;
         this.§0<§.§+k§();
      }
      
      public static function §7K§(param1:§;!4§, param2:§;!4§) : Number
      {
         var _loc3_:Number = param1.§4"-§ - param2.§4"-§;
         var _loc4_:Number = param1.§7!"§ - param2.§7!"§;
         return §5!;§(_loc3_,_loc4_);
      }
      
      public static function §5!;§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      protected function get sprite() : Sprite
      {
         if(!this.§=!0§ && this.§5"2§)
         {
            this.§=!0§ = this.§,!J§.§#!a§;
         }
         return this.§=!0§;
      }
      
      public function get §5"2§() : Sprite
      {
         if(!this.§,!J§)
         {
            this.§,!J§ = this.§0<§.§6!>§ as §3#§;
            this.§,!J§.§`;§ = false;
         }
         return this.§,!J§;
      }
      
      private function get §'!M§() : DisplayObject
      {
         if(this.§5"2§)
         {
            return (this.§5"2§ as §3#§).§'!M§;
         }
         return null;
      }
      
      public function get §8!3§() : §,^§
      {
         return this.§8!G§;
      }
      
      public function get §`!`§() : §,!>§
      {
         return this.§'+§;
      }
      
      public function get camera() : §`y§
      {
         return this.§=!9§;
      }
      
      public function get objects() : §!i§
      {
         return this.§&!#§;
      }
      
      public function get particles() : §`O§
      {
         return this.§]Q§;
      }
      
      public function get background() : §]!y§
      {
         return this.§ 7§;
      }
      
      public function get slingshot() : §;"0§
      {
         return this.§ j§;
      }
      
      public function get §#! §() : §0"1§
      {
         return this.§",§;
      }
      
      public function get stage() : Stage
      {
         return this.§`!"§;
      }
      
      public function get levelItemManager() : §<"2§
      {
         return this.§with§;
      }
      
      public function get §0M§() : §=!"§
      {
         return this.§`!q§;
      }
      
      protected function get §91§() : §=!"§
      {
         return this.§7!Z§;
      }
      
      public function §"!"§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§&"2§ = new §2%§(param1,param2,param3,param4);
      }
      
      public function get damageScoreMultiplier() : int
      {
         return §!!p§.§;s§.getValue();
      }
      
      public function clear() : void
      {
         if(this.§7Q§)
         {
            this.§7Q§.dispose();
         }
         if(this.§'+§)
         {
            this.§'+§.removeEventListener(Event.INIT,this.§%!#§);
            this.§'+§.dispose();
         }
         if(this.§7!Z§ && this.§7!Z§.§`!`§)
         {
            this.§7!Z§.§`!`§.dispose();
         }
         if(this.§`!q§ && this.§`!q§.§`!`§)
         {
            this.§`!q§.§`!`§.dispose();
         }
         if(this.§0<§)
         {
            this.§0<§.dispose();
         }
      }
      
      protected function §8T§() : §=!"§
      {
         return new §=!"§(this.§`!"§.loaderInfo.parameters.assetsUrl || "",this.§`!"§.loaderInfo.parameters.buildNumber || "",this.§+o§);
      }
      
      protected function initThemeSoundsManager() : §=!"§
      {
         return new §=!"§(this.§`!"§.loaderInfo.parameters.assetsUrl || "",this.§`!"§.loaderInfo.parameters.buildNumber || "",this.§+o§,false);
      }
      
      protected function initCutSceneManager() : §=!"§
      {
         return new §=!"§(this.§`!"§.loaderInfo.parameters.assetsUrl || "",this.§`!"§.loaderInfo.parameters.buildNumber || "",this.§+o§);
      }
      
      protected function initAnimationManager(param1:§,!>§) : §,^§
      {
         return new §,^§(param1);
      }
      
      public function § W§(param1:Boolean) : void
      {
         if(§<!D§.§?!_§)
         {
            if(param1)
            {
               §<!D§.§?!_§.start();
            }
            else
            {
               §<!D§.§?!_§.stop();
               §<!D§.§?!_§.color = 0;
            }
         }
      }
      
      public function §>b§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function setController(param1:§<"§) : void
      {
         if(this.§>a§ != null)
         {
            this.§>a§.removeEventListeners();
         }
         this.§>a§ = param1;
         if(this.mReadyToRun)
         {
            this.§>a§.addEventListeners();
         }
      }
      
      public function §1!W§() : §;!V§
      {
         return this.§+!n§;
      }
      
      protected function §!!8§(param1:§'!%§) : int
      {
         return 0;
      }
      
      public function §<d§(param1:§@!n§, param2:Function) : void
      {
         var _loc5_:§'!%§ = null;
         var _loc6_:int = 0;
         this.§7Q§ = param1;
         var _loc3_:int = this.§7Q§.§+"§;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = this.§7Q§.§>4§(_loc4_);
            _loc6_ = this.§!!8§(_loc5_);
            this.§'+§.§0A§(_loc5_,_loc6_);
            _loc4_++;
         }
         if(param2 != null)
         {
            this.§6!X§.addEventListener(Event.INIT,param2);
            this.§0P§.push(param2);
         }
         if(this.§>6§())
         {
            this.§3!§();
         }
      }
      
      private function §>6§() : Boolean
      {
         this.§'+§.removeEventListener(Event.INIT,this.§%!#§);
         if(this.§'+§.§`c§())
         {
            this.initializeAnimations();
            this.§9!7§ = false;
            return true;
         }
         this.§'+§.addEventListener(Event.INIT,this.§%!#§);
         this.§9!7§ = true;
         return false;
      }
      
      private function §%!#§(param1:Event) : void
      {
         this.§'+§.removeEventListener(Event.INIT,this.§%!#§);
         this.initializeAnimations();
         this.§9!7§ = false;
         this.§3!§();
      }
      
      protected function initializeAnimations() : void
      {
         this.§8!G§.initializeAnimations();
         this.§with§.§1d§();
      }
      
      private function §-!P§(param1:Event) : void
      {
         this.§'+§.§&s§();
         if(this.§91§ && this.§91§.§`!`§)
         {
            this.§91§.§`!`§.§&s§();
         }
         if(this.§0M§ && this.§0M§.§`!`§)
         {
            this.§0M§.§`!`§.§&s§();
         }
         if(this.§9!7§)
         {
            if(this.§>6§())
            {
               this.§3!§();
            }
         }
         if(this.§>a§ != null && this.mReadyToRun)
         {
            this.§>a§.addEventListeners();
         }
         if(this.§7!Z§)
         {
            this.§7!Z§.§`c§();
         }
         if(this.§`!q§)
         {
            if(this.§`!q§.§`!`§)
            {
               this.§`!q§.§`c§();
            }
         }
      }
      
      private function §3!§() : void
      {
         this.§6!X§.dispatchEvent(new Event(Event.INIT));
         this.§%3§();
      }
      
      private function §%3§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§0P§)
         {
            this.§6!X§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§0P§ = [];
      }
      
      public function init(param1:§;r§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§",§ = new §0"1§(this,param1);
         this.§=!9§ = this.initializeLevelCamera(param1);
         this.§`2§ = 0;
         this.§31§ = 0;
         this.§>U§ = false;
         this.mReadyToRun = false;
         this.§^!a§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         param1.theme = param1.theme || "background_blue_grass";
         §6"§ = param1.theme;
         this.§-z§ = param1;
         this.§'@§ = this.§5"4§(param1.theme);
         this.§<R§ = this.§finally§(param1.theme);
         if(this.§'@§ && this.§<R§)
         {
            this.initialize(param1);
         }
         else
         {
            this.§-"$§(param1.theme);
         }
         this.§@!K§(param1.name);
         §2"3§.init();
      }
      
      protected function §@!K§(param1:String) : void
      {
         this.§+!n§ = new §;!V§(param1);
      }
      
      protected function §5"4§(param1:String) : Boolean
      {
         if(this.§7!Z§)
         {
            return false;
         }
         return true;
      }
      
      protected function §finally§(param1:String) : Boolean
      {
         var _loc2_:§1"§ = null;
         if(this.§;!,§)
         {
            _loc2_ = this.§'5§.§6h§(param1);
            if(_loc2_)
            {
               if(_loc2_.§!x§ && !this.§;!,§.§7!b§(_loc2_.§!x§))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function §#!2§(param1:String) : Array
      {
         return null;
      }
      
      protected function §-"$§(param1:String) : void
      {
         var _loc2_:Array = null;
         var _loc3_:§1"§ = null;
         if(this.§7!Z§ && !this.§5"4§(param1))
         {
            this.§7!Z§.removeEventListener(Event.COMPLETE,this.§9D§);
            this.§7!Z§.removeEventListener(Event.CANCEL,this.§=X§);
            this.§7!Z§.addEventListener(Event.COMPLETE,this.§9D§);
            this.§7!Z§.addEventListener(Event.CANCEL,this.§=X§);
            _loc2_ = this.§#!2§(param1);
            this.§7!Z§.loadContent(param1,_loc2_);
         }
         if(this.§;!,§ && !this.§finally§(param1))
         {
            this.§;!,§.removeEventListener(Event.COMPLETE,this.§-!'§);
            this.§;!,§.removeEventListener(Event.CANCEL,this.§!;§);
            this.§;!,§.addEventListener(Event.COMPLETE,this.§-!'§);
            this.§;!,§.addEventListener(Event.CANCEL,this.§!;§);
            _loc3_ = this.§'5§.§6h§(param1);
            if(_loc3_)
            {
               this.§;!,§.loadContent(_loc3_.§!x§);
            }
         }
      }
      
      private function §9D§(param1:Event) : void
      {
         this.§7!Z§.removeEventListener(Event.COMPLETE,this.§9D§);
         this.§7!Z§.removeEventListener(Event.CANCEL,this.§=X§);
         this.§'@§ = true;
         if(this.§'@§ && this.§<R§)
         {
            this.initialize(this.§-z§);
         }
      }
      
      private function §=X§(param1:Event) : void
      {
         this.§7!Z§.removeEventListener(Event.COMPLETE,this.§9D§);
         this.§7!Z§.removeEventListener(Event.CANCEL,this.§=X§);
         this.§^!a§ = true;
      }
      
      private function §-!'§(param1:Event) : void
      {
         this.§7!Z§.removeEventListener(Event.COMPLETE,this.§-!'§);
         this.§7!Z§.removeEventListener(Event.CANCEL,this.§!;§);
         this.§<R§ = true;
         if(this.§'@§ && this.§<R§)
         {
            this.initialize(this.§-z§);
         }
      }
      
      private function §!;§(param1:Event) : void
      {
         this.§7!Z§.removeEventListener(Event.COMPLETE,this.§-!'§);
         this.§7!Z§.removeEventListener(Event.CANCEL,this.§!;§);
         this.§<R§ = true;
         if(this.§'@§ && this.§<R§)
         {
            this.initialize(this.§-z§);
         }
      }
      
      public function get §,T§() : §,!>§
      {
         if(this.§91§)
         {
            return this.§91§.§`!`§;
         }
         return null;
      }
      
      protected function §#!g§(param1:§;r§) : void
      {
         b2Settings.b2_linearSleepTolerance = b2Settings.§#",§;
      }
      
      private function initialize(param1:§;r§) : void
      {
         this.§&"2§ = null;
         this.§3"#§ = false;
         if(§<!D§.§?P§)
         {
            §<!D§.§?P§.speed = 1;
         }
         this.§#!g§(param1);
         this.§&!E§(param1);
         this.§ 7§ = this.§"!'§(param1.theme,0 / §6L§,this.§,T§,this.§=!9§.§9!b§());
         this.§ 7§.§^!9§(§6U§.§2!,§());
         if(§<!D§.§?!_§)
         {
            §<!D§.§?!_§.color = this.§ 7§.§[!z§;
         }
         this.§&!#§ = this.initializeLevelObjectManager(param1);
         this.§ j§ = this.initializeLevelSlingshot(param1);
         this.§]Q§ = this.§%!S§(this.§8!G§,this.§'+§);
         this.§=!9§.init();
         this.§="3§();
         this.§,!7§();
         this.mReadyToRun = true;
         if(this.§>a§)
         {
            this.§>a§.addEventListeners();
         }
         if(param1.name == §-;§)
         {
            this.§=!9§.§7!d§(§64§);
            this.§5"!§(0);
         }
         else
         {
            §-;§ = param1.name;
         }
         this.§?!l§();
      }
      
      protected function §?!l§() : void
      {
      }
      
      protected function §&!E§(param1:§;r§) : void
      {
         this.§&%§ = new §+!5§(this);
      }
      
      protected function §,!7§() : void
      {
         if(this.§'!v§)
         {
            this.§%!A§ = §;!V§.initialize(this.§'!v§);
            this.§%!A§.speed = 1;
            this.§%!A§.play();
            this.§=v§ = -1000;
            this.§'!v§ = null;
         }
      }
      
      public function §?$§(param1:String) : void
      {
         this.§'!v§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§%!A§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§%!A§)
         {
            if(param1)
            {
               this.§%!A§.speed = Math.min(this.§%!A§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§%!A§.speed = Math.max(this.§%!A§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§%!A§)
         {
            this.§%!A§.speed = 1;
         }
      }
      
      protected function initializeLevelObjectManager(param1:§;r§) : §!i§
      {
         var _loc2_:String = §1"§.§%D§;
         return new §!i§(this,param1,new Sprite(),_loc2_);
      }
      
      protected function initializeLevelCamera(param1:§;r§) : §`y§
      {
         return new §`y§(this,param1);
      }
      
      protected function §"!'§(param1:String, param2:Number, param3:§,!>§, param4:Number) : §]!y§
      {
         var _loc5_:§1"§;
         if((_loc5_ = this.§'5§.§6h§(param1)) == null)
         {
            param1 = §;r§.§&^§;
            _loc5_ = this.§'5§.§6h§(param1);
         }
         return new §]!y§(_loc5_,param2,param3,param4,!§<!D§.§,"§);
      }
      
      protected function initializeLevelSlingshot(param1:§;r§) : §;"0§
      {
         return new §;"0§(this,param1,new Sprite());
      }
      
      protected function §%!S§(param1:§,^§, param2:§,!>§) : §`O§
      {
         return new §`O§(param1,param2);
      }
      
      public function initializeEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§;r§ = new §;r§();
         _loc3_.slingshotY = -12;
         var _loc4_:§@!R§;
         (_loc4_ = new §@!R§()).left = 0;
         _loc4_.top = -§`y§.§%"&§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §`y§.§%"&§;
         _loc4_.right = _loc4_.left + §`y§.§&n§;
         _loc4_.y = -13.929;
         _loc4_.x = §`y§.§&n§;
         _loc4_.id = §`y§.§26§;
         _loc3_.§%![§(_loc4_);
         var _loc5_:§@!R§;
         (_loc5_ = new §@!R§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §`y§.§&n§;
         _loc5_.bottom = _loc5_.top + §`y§.§%"&§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §`y§.§&n§ / 2;
         _loc5_.id = §`y§.§^n§;
         _loc3_.§%![§(_loc5_);
         this.§0!d§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§6"§ != null)
         {
            _loc3_.theme = §6"§;
         }
         this.init(_loc3_);
      }
      
      protected function §0!d§(param1:§;r§, param2:Boolean) : void
      {
         if(param2)
         {
            this.§1!-§(param1);
         }
      }
      
      protected function §6!A§() : Number
      {
         this.§2!Q§ ^= this.§2!Q§ << 21;
         this.§2!Q§ ^= this.§2!Q§ >>> 35;
         this.§2!Q§ ^= this.§2!Q§ << 4;
         return this.§2!Q§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §1!-§(param1:§;r§) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§?r§ = null;
         this.§2!Q§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < 10)
         {
            _loc4_ = 0;
            while(_loc4_ < 5)
            {
               _loc5_ = this.§6!A§() * 5;
               (_loc6_ = new §?r§()).x = 30 + _loc4_ * 10 + this.§6!A§() * 9;
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
                  _loc6_.angle = 45 - this.§6!A§() * 90;
               }
               else
               {
                  _loc6_.y = -30 + _loc3_ * 6 - this.§6!A§() * 3 - _loc4_ * 8;
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
                  _loc6_.angle = this.§6!A§() * 360;
               }
               _loc6_.id = _loc2_;
               param1.§!t§(_loc6_);
               _loc2_++;
               _loc4_++;
            }
            _loc3_++;
         }
      }
      
      private function §>Y§() : void
      {
      }
      
      protected function §?2§() : void
      {
         if(§]!y§.§6!c§)
         {
            this.§^Y§(this.§ 7§.§+!Z§);
         }
      }
      
      protected function §#+§() : void
      {
         this.§^Y§(this.§]Q§.§9!2§(§`O§.§0X§));
         this.§^Y§(this.§]Q§.§9!2§(§`O§.§<s§));
      }
      
      protected function §7!`§() : void
      {
         this.§^Y§(this.§]Q§.§9!2§(§`O§.§0i§));
         this.§^Y§(this.§&!#§.§#o§);
         this.§^Y§(this.§ j§.sprite);
         this.§^Y§(this.§]Q§.§9!2§(§`O§.§#!`§));
      }
      
      protected function §2U§() : void
      {
         this.§^Y§(this.§ 7§.§2N§);
         if(§]!y§.§6!c§)
         {
            this.§^Y§(this.§ 7§.§,!Q§);
         }
      }
      
      protected function §@&§() : void
      {
         this.§^Y§(this.§&!#§.§;!g§);
         this.§^Y§(this.§]Q§.§9!2§(§`O§.§ i§));
         this.§^Y§(this.§]Q§.§9!2§(§`O§.§,"3§));
      }
      
      private function §="3§() : void
      {
         this.§?2§();
         this.§#+§();
         this.§7!`§();
         this.§2U§();
         this.§@&§();
         if(!§+!5§.§'w§)
         {
         }
      }
      
      protected function §^Y§(param1:DisplayObject) : void
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
         if(§6U§.§7!K§ > §6U§.§7Z§)
         {
            param1 /= §6U§.§7!K§;
            param2 /= §6U§.§7!K§;
         }
         else
         {
            param1 /= §6U§.§7Z§;
            param2 /= §6U§.§7Z§;
         }
         param3.x = ((param1 - this.sprite.x) / §`y§.§-n§ + this.§=!9§.§!"5§) * §6L§;
         param3.y = ((param2 - this.sprite.y) / §`y§.§-n§ + this.§=!9§.§,?§) * §6L§;
         return param3;
      }
      
      public function §3"1§(param1:Number, param2:Number, param3:Point = null) : Point
      {
         if(!param3)
         {
            param3 = new Point();
         }
         param3.x = (param1 / §6L§ - this.§=!9§.§!"5§) * §`y§.§-n§ + this.sprite.x;
         param3.y = (param2 / §6L§ - this.§=!9§.§,?§) * §`y§.§-n§ + this.sprite.y;
         var _loc4_:Number = Math.max(§6U§.§7!K§,§6U§.§7Z§);
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
            this.background.setScreenOffset(param1,param2,this.§"a§,this.§+!T§,param3,this.§0!W§,this.§0a§);
         }
         if(this.objects)
         {
            this.objects.§ ",§(param1,param2);
         }
         if(this.§&%§)
         {
            this.§&%§.§ ",§(param1,param2);
         }
         if(this.slingshot)
         {
            this.slingshot.§ ",§(param1,param2);
         }
         if(this.particles)
         {
            this.particles.§ ",§(param1,param2);
         }
      }
      
      public function §7!t§(param1:String, param2:Number, param3:Number) : void
      {
         this.§&!#§.§!t§(param1,param2,param3,0,§!i§.§-1§);
      }
      
      public function §"D§() : void
      {
         if(this.§'!M§)
         {
            this.§'!M§.visible = true;
            this.§'!M§.alpha = 0;
         }
         this.§2;§ = 0;
      }
      
      public function §5!D§(param1:Boolean, param2:Number = 0, param3:Number = 0, param4:Number = 0) : void
      {
         if(param1)
         {
            this.§@!$§ = new §6B§(param2,param3,param4);
         }
         else
         {
            this.§@!$§ = null;
         }
      }
      
      public function clearLevel() : void
      {
         if(this.§ 7§)
         {
            this.§ 7§.dispose();
            this.§ 7§ = null;
         }
         if(this.§&!#§)
         {
            this.§&!#§.dispose();
            this.§&!#§ = null;
         }
         if(this.§&%§)
         {
            if(!this.§&%§.§"c§)
            {
            }
            this.§&%§.clear();
            this.§&%§ = null;
         }
         if(this.§",§)
         {
            this.§",§.clear();
            this.§",§ = null;
         }
         if(this.§ j§)
         {
            this.§ j§.dispose();
            this.§ j§ = null;
         }
         if(this.§=!9§)
         {
            §64§ = this.§=!9§.§9!X§;
            this.§=!9§.clear();
            this.§=!9§ = null;
         }
         if(this.§]Q§)
         {
            this.§]Q§.dispose();
            this.§]Q§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§`2§ = 0;
         this.§31§ = 0;
         this.mReadyToRun = false;
         this.§>U§ = false;
         this.§2;§ = §1!N§.§<!Y§;
         if(this.§5"2§)
         {
            (this.§5"2§ as §3#§).§[+§.x = 0;
            (this.§5"2§ as §3#§).§[+§.y = 0;
         }
         if(this.§'!M§)
         {
            this.§'!M§.visible = false;
         }
         this.§%!A§ = null;
         this.§+!n§ = null;
         if(this.§7!Z§)
         {
            this.§7!Z§.removeEventListener(Event.COMPLETE,this.§9D§);
            this.§7!Z§.removeEventListener(Event.CANCEL,this.§=X§);
         }
         if(this.§;!,§)
         {
            this.§;!,§.removeEventListener(Event.COMPLETE,this.§-!'§);
            this.§;!,§.removeEventListener(Event.CANCEL,this.§!;§);
         }
         this.§%3§();
         if(§<!D§.§?!_§)
         {
            §<!D§.§?!_§.color = 0;
         }
         if(this.§>a§)
         {
            this.§>a§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver(param1:int) : void
      {
      }
      
      public function §+!g§() : String
      {
         if(this.§+!n§)
         {
            return this.§+!n§.toString();
         }
         return null;
      }
      
      public function get §">§() : Number
      {
         if(this.§&"2§)
         {
            return this.§&"2§.speed;
         }
         return 1;
      }
      
      public function update(param1:Number, param2:Boolean) : Number
      {
         if(!this.mReadyToRun || !§<!D§.§7i§())
         {
            return 0;
         }
         if(this.§%!A§ && this.§%!A§.§="§)
         {
            return this.§2"1§(param1,param2);
         }
         return this.§#f§(param1,true,param2);
      }
      
      protected function §#f§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc4_:Boolean = false;
         if(this.§&"2§)
         {
            _loc4_ = this.§&"2§.update(param1);
            param1 *= this.§&"2§.speed;
            if(§<!D§.§?P§)
            {
               §<!D§.§?P§.speed = this.§&"2§.speed;
            }
            if(!_loc4_)
            {
               this.§&"2§ = null;
            }
         }
         this.§31§ += param1;
         this.§`2§ += param1;
         this.§`2§ = this.§&%§.§>"'§(this.§`2§);
         this.§ j§.update(param1,param3);
         if(param2)
         {
            this.§5"!§(param1);
         }
         return param1;
      }
      
      private function §2"1§(param1:Number, param2:Boolean) : Number
      {
         var _loc4_:Number = NaN;
         var _loc3_:Number = §+!5§.§61§;
         if(this.§%!A§)
         {
            param1 *= this.§%!A§.speed;
            _loc4_ = this.§31§ + param1;
            while(this.§31§ + _loc3_ < _loc4_)
            {
               if(this.§31§ + _loc3_ > this.§=v§)
               {
                  this.§%!A§.step(this);
                  this.§=v§ += _loc3_;
               }
               this.§#f§(_loc3_,false,param2);
            }
            if(_loc4_ > this.§=v§ + _loc3_)
            {
               this.§%!A§.step(this);
               this.§=v§ += _loc3_;
            }
            if(this.§31§ < _loc4_)
            {
               this.§#f§(_loc4_ - this.§31§,true,param2);
            }
            return param1;
         }
         return param1;
      }
      
      private function §5"!§(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         this.§ 7§.update(param1);
         this.§&!#§.§=+§(param1,this.§&%§.§1!b§,this.§`2§);
         this.§+!Y§();
         if(this.§2;§ < §1!N§.§<!Y§)
         {
            this.§2;§ += param1;
            _loc2_ = §1!N§.§<!Y§ / 2;
            _loc3_ = (-Math.abs(this.§2;§ - _loc2_) + _loc2_) * (§1!N§.§[!O§ / _loc2_);
            if(this.§'!M§)
            {
               this.§'!M§.alpha = _loc3_;
            }
         }
         else if(this.§'!M§)
         {
            this.§'!M§.visible = false;
         }
         if(this.§@!$§)
         {
            if(!this.§@!$§.§0!4§(this.§=!9§,param1))
            {
               this.§5!D§(false);
            }
         }
         this.§=!9§.§+g§(param1);
         this.§&%§.§3!&§();
         this.§]Q§.update(param1);
      }
      
      public function §`",§(param1:Number) : void
      {
         this.objects.§"!%§(param1);
         this.§>!_§();
      }
      
      protected function §+!Y§() : void
      {
         var _loc1_:§,[§ = null;
         if(this.§&!3§ != null)
         {
            for each(_loc1_ in this.§&!3§)
            {
               if(!_loc1_.isLeavingTrail)
               {
                  this.§`s§(_loc1_);
               }
            }
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§ "'§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            _loc2_ = this.§&!#§.§+!d§(true);
            if(_loc2_)
            {
               _loc2_.scream();
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§&!#§.§`v§());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            _loc2_ = this.§&!#§.§+!d§(true);
            if(_loc2_)
            {
               _loc2_.blink();
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§&!#§.§`v§());
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §?!d§.§@!4§;
         }
         §2"3§.addScore(param1,param2);
         this.§>a§.addScore(param1);
         if(param3 && param1 > 0 && !this.§3"#§)
         {
            this.§,!M§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §,!M§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §?!d§.§!s§;
         }
         this.§]Q§.§`q§(§?!d§.§"W§,§`O§.§ i§,§?!d§.§,,§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §'z§(param1:§;!4§) : void
      {
         if(this.§&!3§ == null)
         {
            this.§&!3§ = new Array();
         }
         this.§&!3§.push(param1);
      }
      
      public function §;!v§() : void
      {
         this.§ j§.§;!v§();
         this.§&!#§.§]!8§();
         this.§3"#§ = true;
      }
      
      public function §`s§(param1:§,[§) : void
      {
         this.§]Q§.§ +§(§`O§.§0X§);
         if(this.§&!3§.indexOf(param1) >= 0)
         {
            this.§&!3§.splice(this.§&!3§.indexOf(param1),1);
         }
         if(this.§&!3§.length == 0)
         {
            this.§&!3§ = null;
         }
      }
      
      public function §4!@§(param1:§3]§, param2:Number, param3:Number) : §,6§
      {
         var _loc4_:§,6§ = §,6§(this.§&!#§.§!t§(param1.name,param1.x,param1.y,0,§!i§.§-1§,true,true,true,param1.scale));
         var _loc5_:Number = param1.§9!v§;
         if(param1.§#b§ > 1)
         {
            _loc4_.§>!`§(param1.§#b§);
         }
         if(param1.§#A§ != 0)
         {
            _loc5_ = param1.§#A§;
         }
         var _loc6_:Number = -_loc5_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc7_:Number = _loc5_ * param2 * Math.sin(param3 / (180 / Math.PI));
         _loc4_.§@"%§(new b2Vec2(_loc6_,_loc7_),false,true);
         this.camera.§,!&§(§`y§.§#!h§);
         if(this.§+!n§)
         {
            this.§+!n§.§4!@§(this.§&%§.§0&§,param1.x,param1.y,param2,param3);
         }
         return _loc4_;
      }
      
      public function activateSpecialPower(param1:Number, param2:Number) : void
      {
         this.§>U§ = true;
         this.§`"+§ = param1;
         this.§9!&§ = param2;
      }
      
      private function §>!_§() : void
      {
         if(!this.§>U§)
         {
            return;
         }
         this.§>U§ = false;
         if(this.§&!#§.activeObject is §,6§)
         {
            this.§&!#§.activateSpecialPower(this.§`"+§,this.§9!&§);
         }
         if(this.§+!n§)
         {
            this.§+!n§.§[!B§(this.§&%§.§0&§,this.§`"+§,this.§9!&§);
         }
      }
      
      public function §;!8§() : void
      {
         this.§&!#§.§;!8§();
      }
      
      public function §4Q§() : void
      {
         this.§&!#§.§&!6§();
      }
      
      public function §!!d§() : §;r§
      {
         var _loc1_:§;r§ = new §;r§();
         _loc1_.scoreGold = this.§-z§.scoreGold;
         _loc1_.scoreSilver = this.§-z§.scoreSilver;
         this.§=!9§.§^!%§(_loc1_);
         this.§&!#§.§'Z§(_loc1_);
         this.§ j§.§=!u§(_loc1_);
         _loc1_.theme = this.§ 7§.§5#§();
         return _loc1_;
      }
      
      public function §"'§() : int
      {
         return this.§-z§.scoreSilver;
      }
      
      public function §@!J§() : int
      {
         return this.§-z§.scoreGold;
      }
      
      public function §=4§(param1:int) : void
      {
         this.§-z§.scoreSilver = param1;
      }
      
      public function §'X§(param1:int) : void
      {
         this.§-z§.scoreGold = param1;
      }
      
      public function §&!0§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§"a§ = param1;
         this.§+!T§ = param2;
         this.§0!W§ = param3;
         this.§0a§ = param4;
         if(this.§,!J§)
         {
            this.§,!J§.§<-§(param1,param2);
         }
         if(this.§=!9§)
         {
            this.§=!9§.§+g§(0);
         }
      }
      
      public function get currentLevel() : §;r§
      {
         return this.§-z§;
      }
      
      public function get levelObjects() : §!i§
      {
         return this.§&!#§;
      }
      
      protected function get §]!7§() : §<!D§
      {
         return this.§0<§;
      }
      
      public function get §-!t§() : int
      {
         return §?I§;
      }
   }
}
