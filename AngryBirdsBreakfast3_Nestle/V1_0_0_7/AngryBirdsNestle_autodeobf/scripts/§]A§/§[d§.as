package §]A§
{
   import § !=§.DisplayObject;
   import § !=§.Sprite;
   import §!!&§.§0!_§;
   import §!P§.§2"4§;
   import §!P§.§5!1§;
   import §!P§.§?O§;
   import §!r§.b2Settings;
   import §"V§.§0"#§;
   import §-!2§.b2Vec2;
   import §-!E§.§9"-§;
   import §-6§.§%5§;
   import §0!`§.§-",§;
   import §0!`§.§0W§;
   import §2!k§.§,@§;
   import §2!k§.§6",§;
   import §2!k§.§;!1§;
   import §2!k§.§;;§;
   import §2!k§.§^O§;
   import §7!<§.§4r§;
   import §;L§.§"!X§;
   import §;L§.§8!&§;
   import §;L§.§;u§;
   import §;Z§.§3?§;
   import §;Z§.§@!`§;
   import §=g§.§-!q§;
   import §>!z§.§^y§;
   import §>!z§.set;
   import §[^§.§'g§;
   import §^x§.§="4§;
   import §`V§.§;6§;
   import com.angrybirds.§#Z§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §[d§
   {
      
      private static const §+!s§:int = 20;
      
      public static const §1!B§:Number = §#Z§.§ c§;
      
      public static const §,!n§:Number = §#Z§.§1<§;
      
      public static const §]!U§:Number = 1 / 20;
      
      public static const §5m§:Number = §#Z§.§1<§ * §]!U§;
      
      public static const §`6§:Number = §1!B§ * §]!U§;
      
      public static const §3!F§:§0!_§ = new §0!_§(13 - 3);
      
      protected static var §&!N§:String;
      
      protected static var §,"3§:Number = 1;
      
      protected static var §`W§:String = §2"4§.§^!j§;
       
      
      protected var §#p§:§^O§;
      
      private var §[!=§:Array = null;
      
      protected var §&A§:§-!q§;
      
      public var §%""§:§6!3§;
      
      protected var §!v§:§^!-§;
      
      protected var §5x§:§%5§;
      
      protected var §7P§:§]"!§;
      
      protected var §7w§:§@!`§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §7F§:Boolean = false;
      
      protected var §`9§:Boolean = false;
      
      protected var §`+§:Boolean = false;
      
      public var § 5§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §%!B§:Number;
      
      public var §7!Z§:Number;
      
      private var §,"-§:§^""§;
      
      private var §!!!§:Sprite;
      
      protected var §2!s§:§2"4§;
      
      protected var §]!j§:§="4§ = null;
      
      private var §!!"§:EventDispatcher;
      
      private var §]!"§:Array;
      
      private var §9!z§:§;6§;
      
      private var §%"2§:§-",§;
      
      protected var §'!2§:§"!X§;
      
      protected var §;#§:§8!&§;
      
      private var §#!w§:§;u§;
      
      private var §]"§:§;u§;
      
      private var §+!"§:§;u§;
      
      private var §=>§:Stage;
      
      private var §5=§:§[!f§;
      
      protected var §9F§:§9"-§;
      
      protected var § !&§:§9"-§;
      
      protected var §-![§:Number = 0.0;
      
      protected var §9+§:String;
      
      private var §3!?§:Boolean;
      
      private var §5D§:Number;
      
      private var §^!B§:Number;
      
      protected var §"!2§:§+f§;
      
      protected var §4!J§:§'g§;
      
      protected var §3!§:set;
      
      protected var §97§:§5!1§;
      
      protected var §"" §:uint = 1.417339207E9;
      
      public var §!!#§:Boolean;
      
      protected var §]!2§:int = 0;
      
      protected var §`G§:int = 0;
      
      protected var §8!A§:Number = 1.0;
      
      protected var §+C§:Number = 1.0;
      
      protected var §@l§:Boolean;
      
      public function §[d§(param1:Stage, param2:§'g§, param3:set, param4:§5!1§)
      {
         this.§]!"§ = [];
         super();
         this.§!!"§ = new EventDispatcher();
         this.§=>§ = param1;
         this.§4!J§ = param2;
         this.§3!§ = param3;
         this.§97§ = param4;
         this.§'!2§ = §"!X§.§>!P§;
         this.§;#§ = this.initAnimationManager(this.§'!2§);
         this.§#!w§ = this.§!!w§();
         this.§]"§ = this.initThemeSoundsManager();
         this.§+!"§ = this.initCutSceneManager();
         var _loc5_:Stage3D = param1.stage3Ds[0];
         this.§9!z§ = new §;6§(§^""§,param1,new Rectangle(0,0,§#Z§.§ c§,§#Z§.§1<§),_loc5_);
         §#Z§.§-!6§.addEventListener(§0"#§.§2;§,this.§9!z§.onEnterFrame);
         _loc5_.addEventListener(Event.CONTEXT3D_CREATE,this.§?! §,false,0,true);
         this.§9!z§.§-!&§ = false;
         this.§9!z§.enableErrorChecking = false;
         this.§9!z§.§>""§ = 2;
         this.§9!z§.§!!L§();
      }
      
      public static function §'"-§(param1:§,@§, param2:§,@§) : Number
      {
         var _loc3_:Number = param1.§7!4§ - param2.§7!4§;
         var _loc4_:Number = param1.§8! § - param2.§8! §;
         return §4U§(_loc3_,_loc4_);
      }
      
      public static function §4U§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      protected function get sprite() : Sprite
      {
         if(!this.§!!!§ && this.§6!v§)
         {
            this.§!!!§ = this.§,"-§.§9R§;
         }
         return this.§!!!§;
      }
      
      public function get §6!v§() : Sprite
      {
         if(!this.§,"-§)
         {
            this.§,"-§ = this.§9!z§.§4!_§ as §^""§;
            this.§,"-§.§8!Z§ = false;
         }
         return this.§,"-§;
      }
      
      private function get §@"3§() : DisplayObject
      {
         if(this.§6!v§)
         {
            return (this.§6!v§ as §^""§).§@"3§;
         }
         return null;
      }
      
      public function get §%B§() : §8!&§
      {
         return this.§;#§;
      }
      
      public function get §7!m§() : §"!X§
      {
         return this.§'!2§;
      }
      
      public function get camera() : §%5§
      {
         return this.§5x§;
      }
      
      public function get objects() : §^O§
      {
         return this.§#p§;
      }
      
      public function get particles() : §@!`§
      {
         return this.§7w§;
      }
      
      public function get background() : §-!q§
      {
         return this.§&A§;
      }
      
      public function get slingshot() : §]"!§
      {
         return this.§7P§;
      }
      
      public function get §+$§() : §^!-§
      {
         return this.§!v§;
      }
      
      public function get stage() : Stage
      {
         return this.§=>§;
      }
      
      public function get levelItemManager() : §'g§
      {
         return this.§4!J§;
      }
      
      public function get §8H§() : §;u§
      {
         return this.§+!"§;
      }
      
      protected function get §1v§() : §;u§
      {
         return this.§#!w§;
      }
      
      public function §>!3§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§"!2§ = new §+f§(param1,param2,param3,param4);
      }
      
      public function get damageScoreMultiplier() : int
      {
         return §[d§.§3!F§.getValue();
      }
      
      public function clear() : void
      {
         if(this.§%"2§)
         {
            this.§%"2§.dispose();
         }
         if(this.§'!2§)
         {
            this.§'!2§.removeEventListener(Event.INIT,this.§4!E§);
            this.§'!2§.dispose();
         }
         if(this.§#!w§ && this.§#!w§.§7!m§)
         {
            this.§#!w§.§7!m§.dispose();
         }
         if(this.§+!"§ && this.§+!"§.§7!m§)
         {
            this.§+!"§.§7!m§.dispose();
         }
         if(this.§9!z§)
         {
            this.§9!z§.dispose();
         }
      }
      
      protected function §!!w§() : §;u§
      {
         return new §;u§(this.§=>§.loaderInfo.parameters.assetsUrl || "",this.§=>§.loaderInfo.parameters.buildNumber || "",this.§97§);
      }
      
      protected function initThemeSoundsManager() : §;u§
      {
         return new §;u§(this.§=>§.loaderInfo.parameters.assetsUrl || "",this.§=>§.loaderInfo.parameters.buildNumber || "",this.§97§,false);
      }
      
      protected function initCutSceneManager() : §;u§
      {
         return new §;u§(this.§=>§.loaderInfo.parameters.assetsUrl || "",this.§=>§.loaderInfo.parameters.buildNumber || "",this.§97§);
      }
      
      protected function initAnimationManager(param1:§"!X§) : §8!&§
      {
         return new §8!&§(param1);
      }
      
      public function §#o§(param1:Boolean) : void
      {
         if(§;6§.§@X§)
         {
            if(param1)
            {
               §;6§.§@X§.start();
            }
            else
            {
               §;6§.§@X§.stop();
               §;6§.§@X§.color = 0;
            }
         }
      }
      
      public function §7"'§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function setController(param1:§="4§) : void
      {
         if(this.§]!j§ != null)
         {
            this.§]!j§.removeEventListeners();
         }
         this.§]!j§ = param1;
         if(this.mReadyToRun)
         {
            this.§]!j§.addEventListeners();
         }
      }
      
      public function §^",§() : §9"-§
      {
         return this.§9F§;
      }
      
      protected function §%!C§(param1:§0W§) : int
      {
         return 0;
      }
      
      public function §&!`§(param1:§-",§, param2:Function) : void
      {
         var _loc5_:§0W§ = null;
         var _loc6_:int = 0;
         this.§%"2§ = param1;
         var _loc3_:int = this.§%"2§.§8"&§;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = this.§%"2§.§>!Q§(_loc4_);
            _loc6_ = this.§%!C§(_loc5_);
            this.§'!2§.§^P§(_loc5_,_loc6_);
            _loc4_++;
         }
         if(param2 != null)
         {
            this.§!!"§.addEventListener(Event.INIT,param2);
            this.§]!"§.push(param2);
         }
         if(this.§<!5§())
         {
            this.§"l§();
         }
      }
      
      private function §<!5§() : Boolean
      {
         this.§'!2§.removeEventListener(Event.INIT,this.§4!E§);
         if(this.§'!2§.§+v§())
         {
            this.initializeAnimations();
            this.§@l§ = false;
            return true;
         }
         this.§'!2§.addEventListener(Event.INIT,this.§4!E§);
         this.§@l§ = true;
         return false;
      }
      
      private function §4!E§(param1:Event) : void
      {
         this.§'!2§.removeEventListener(Event.INIT,this.§4!E§);
         this.initializeAnimations();
         this.§@l§ = false;
         this.§"l§();
      }
      
      protected function initializeAnimations() : void
      {
         this.§;#§.initializeAnimations();
         this.§4!J§.§1T§();
      }
      
      private function §?! §(param1:Event) : void
      {
         if(!§;6§.§%1§())
         {
            return;
         }
         this.§'!2§.§`F§();
         if(this.§1v§ && this.§1v§.§7!m§)
         {
            this.§1v§.§7!m§.§`F§();
         }
         if(this.§8H§ && this.§8H§.§7!m§)
         {
            this.§8H§.§7!m§.§`F§();
         }
         if(this.§@l§)
         {
            if(this.§<!5§())
            {
               this.§"l§();
            }
         }
         if(this.§]!j§ != null && this.mReadyToRun)
         {
            this.§]!j§.addEventListeners();
         }
         if(this.§#!w§)
         {
            this.§#!w§.§+v§();
         }
         if(this.§+!"§)
         {
            if(this.§+!"§.§7!m§)
            {
               this.§+!"§.§+v§();
            }
         }
      }
      
      private function §"l§() : void
      {
         this.§!!"§.dispatchEvent(new Event(Event.INIT));
         this.§0&§();
      }
      
      private function §0&§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§]!"§)
         {
            this.§!!"§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§]!"§ = [];
      }
      
      public function init(param1:§2"4§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§!v§ = new §^!-§(this,param1);
         this.§5x§ = this.initializeLevelCamera(param1);
         this.§%!B§ = 0;
         this.§7!Z§ = 0;
         this.§3!?§ = false;
         this.mReadyToRun = false;
         this.§7F§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         param1.theme = param1.theme || "background_blue_grass";
         §`W§ = param1.theme;
         this.§2!s§ = param1;
         this.§`9§ = this.§^!p§(param1.theme);
         this.§`+§ = this.§=!O§(param1.theme);
         if(this.§`9§ && this.§`+§)
         {
            this.initialize(param1);
         }
         else
         {
            this.§+?§(param1.theme);
         }
         this.§`!G§(param1.name);
         §,!l§.init();
      }
      
      protected function §`!G§(param1:String) : void
      {
         this.§9F§ = new §9"-§(param1);
      }
      
      protected function §^!p§(param1:String) : Boolean
      {
         if(this.§#!w§)
         {
            return false;
         }
         return true;
      }
      
      protected function §=!O§(param1:String) : Boolean
      {
         var _loc2_:§^y§ = null;
         if(this.§]"§)
         {
            _loc2_ = this.§3!§.§>",§(param1);
            if(_loc2_)
            {
               if(_loc2_.§!!d§ && !this.§]"§.§?!>§(_loc2_.§!!d§))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function §3!I§(param1:String) : Array
      {
         return null;
      }
      
      protected function §+?§(param1:String) : void
      {
         var _loc2_:Array = null;
         var _loc3_:§^y§ = null;
         if(this.§#!w§ && !this.§^!p§(param1))
         {
            this.§#!w§.removeEventListener(Event.COMPLETE,this.§98§);
            this.§#!w§.removeEventListener(Event.CANCEL,this.§7]§);
            this.§#!w§.addEventListener(Event.COMPLETE,this.§98§);
            this.§#!w§.addEventListener(Event.CANCEL,this.§7]§);
            _loc2_ = this.§3!I§(param1);
            this.§#!w§.loadContent(param1,_loc2_);
         }
         if(this.§]"§ && !this.§=!O§(param1))
         {
            this.§]"§.removeEventListener(Event.COMPLETE,this.§;R§);
            this.§]"§.removeEventListener(Event.CANCEL,this.§]!M§);
            this.§]"§.addEventListener(Event.COMPLETE,this.§;R§);
            this.§]"§.addEventListener(Event.CANCEL,this.§]!M§);
            _loc3_ = this.§3!§.§>",§(param1);
            if(_loc3_)
            {
               this.§]"§.loadContent(_loc3_.§!!d§);
            }
         }
      }
      
      private function §98§(param1:Event) : void
      {
         this.§#!w§.removeEventListener(Event.COMPLETE,this.§98§);
         this.§#!w§.removeEventListener(Event.CANCEL,this.§7]§);
         this.§`9§ = true;
         if(this.§`9§ && this.§`+§)
         {
            this.initialize(this.§2!s§);
         }
      }
      
      private function §7]§(param1:Event) : void
      {
         this.§#!w§.removeEventListener(Event.COMPLETE,this.§98§);
         this.§#!w§.removeEventListener(Event.CANCEL,this.§7]§);
         this.§7F§ = true;
      }
      
      private function §;R§(param1:Event) : void
      {
         this.§#!w§.removeEventListener(Event.COMPLETE,this.§;R§);
         this.§#!w§.removeEventListener(Event.CANCEL,this.§]!M§);
         this.§`+§ = true;
         if(this.§`9§ && this.§`+§)
         {
            this.initialize(this.§2!s§);
         }
      }
      
      private function §]!M§(param1:Event) : void
      {
         this.§#!w§.removeEventListener(Event.COMPLETE,this.§;R§);
         this.§#!w§.removeEventListener(Event.CANCEL,this.§]!M§);
         this.§`+§ = true;
         if(this.§`9§ && this.§`+§)
         {
            this.initialize(this.§2!s§);
         }
      }
      
      public function get §'"3§() : §"!X§
      {
         if(this.§1v§)
         {
            return this.§1v§.§7!m§;
         }
         return null;
      }
      
      protected function §#"3§(param1:§2"4§) : void
      {
         b2Settings.b2_linearSleepTolerance = b2Settings.§^!6§;
      }
      
      private function initialize(param1:§2"4§) : void
      {
         this.§"!2§ = null;
         this.§!!#§ = false;
         if(§;6§.§`"!§)
         {
            §;6§.§`"!§.speed = 1;
         }
         this.§#"3§(param1);
         this.§!!V§(param1);
         this.§&A§ = this.§+""§(param1.theme,0 / §]!U§,this.§'"3§,this.§5x§.§9l§());
         this.§&A§.§?!m§(§#Z§.§-"5§());
         if(§;6§.§@X§)
         {
            §;6§.§@X§.color = this.§&A§.§!!Z§;
         }
         this.§#p§ = this.initializeLevelObjectManager(param1);
         this.§7P§ = this.initializeLevelSlingshot(param1);
         this.§7w§ = this.§6"%§(this.§;#§,this.§'!2§);
         this.§5x§.init();
         this.§>!B§();
         this.§2"-§();
         this.mReadyToRun = true;
         if(this.§]!j§)
         {
            this.§]!j§.addEventListeners();
         }
         if(param1.name == §&!N§)
         {
            this.§5x§.§@!;§(§,"3§);
            this.§2A§(0);
         }
         else
         {
            §&!N§ = param1.name;
         }
         this.§-!V§();
      }
      
      protected function §-!V§() : void
      {
      }
      
      protected function §!!V§(param1:§2"4§) : void
      {
         this.§%""§ = new §6!3§(this);
      }
      
      protected function §2"-§() : void
      {
         if(this.§9+§)
         {
            this.§ !&§ = §9"-§.initialize(this.§9+§);
            this.§ !&§.speed = 1;
            this.§ !&§.play();
            this.§-![§ = -1000;
            this.§9+§ = null;
         }
      }
      
      public function §0G§(param1:String) : void
      {
         this.§9+§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§ !&§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§ !&§)
         {
            if(param1)
            {
               this.§ !&§.speed = Math.min(this.§ !&§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§ !&§.speed = Math.max(this.§ !&§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§ !&§)
         {
            this.§ !&§.speed = 1;
         }
      }
      
      protected function initializeLevelObjectManager(param1:§2"4§) : §^O§
      {
         var _loc2_:String = §^y§.§<!u§;
         return new §^O§(this,param1,new Sprite(),_loc2_);
      }
      
      protected function initializeLevelCamera(param1:§2"4§) : §%5§
      {
         return new §%5§(this,param1);
      }
      
      protected function §+""§(param1:String, param2:Number, param3:§"!X§, param4:Number) : §-!q§
      {
         var _loc5_:§^y§;
         if((_loc5_ = this.§3!§.§>",§(param1)) == null)
         {
            param1 = §2"4§.§^!j§;
            _loc5_ = this.§3!§.§>",§(param1);
         }
         return new §-!q§(_loc5_,param2,param3,param4,!§;6§.§?!C§);
      }
      
      protected function initializeLevelSlingshot(param1:§2"4§) : §]"!§
      {
         return new §]"!§(this,param1,new Sprite());
      }
      
      protected function §6"%§(param1:§8!&§, param2:§"!X§) : §@!`§
      {
         return new §@!`§(param1,param2);
      }
      
      public function initializeEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§2"4§ = new §2"4§();
         _loc3_.slingshotY = -12;
         var _loc4_:§?O§;
         (_loc4_ = new §?O§()).left = 0;
         _loc4_.top = -§%5§.§[4§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §%5§.§[4§;
         _loc4_.right = _loc4_.left + §%5§.§5!N§;
         _loc4_.y = -13.929;
         _loc4_.x = §%5§.§5!N§;
         _loc4_.id = §%5§.§ ,§;
         _loc3_.§1!S§(_loc4_);
         var _loc5_:§?O§;
         (_loc5_ = new §?O§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §%5§.§5!N§;
         _loc5_.bottom = _loc5_.top + §%5§.§[4§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §%5§.§5!N§ / 2;
         _loc5_.id = §%5§.§9"#§;
         _loc3_.§1!S§(_loc5_);
         this.§`!f§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§`W§ != null)
         {
            _loc3_.theme = §`W§;
         }
         this.init(_loc3_);
      }
      
      protected function §`!f§(param1:§2"4§, param2:Boolean) : void
      {
         if(param2)
         {
            this.§%l§(param1);
         }
      }
      
      protected function §^!u§() : Number
      {
         this.§"" § ^= this.§"" § << 21;
         this.§"" § ^= this.§"" § >>> 35;
         this.§"" § ^= this.§"" § << 4;
         return this.§"" § * (1 / uint.MAX_VALUE);
      }
      
      protected function §%l§(param1:§2"4§) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§4r§ = null;
         this.§"" § = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < 10)
         {
            _loc4_ = 0;
            while(_loc4_ < 5)
            {
               _loc5_ = this.§^!u§() * 5;
               (_loc6_ = new §4r§()).x = 30 + _loc4_ * 10 + this.§^!u§() * 9;
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
                  _loc6_.angle = 45 - this.§^!u§() * 90;
               }
               else
               {
                  _loc6_.y = -30 + _loc3_ * 6 - this.§^!u§() * 3 - _loc4_ * 8;
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
                  _loc6_.angle = this.§^!u§() * 360;
               }
               _loc6_.id = _loc2_;
               param1.§1!w§(_loc6_);
               _loc2_++;
               _loc4_++;
            }
            _loc3_++;
         }
      }
      
      private function §6"2§() : void
      {
      }
      
      protected function §4h§() : void
      {
         if(§-!q§.§^!e§)
         {
            this.§'3§(this.§&A§.§ A§);
         }
      }
      
      protected function §#[§() : void
      {
         this.§'3§(this.§7w§.§2!v§(§@!`§.§>"&§));
         this.§'3§(this.§7w§.§2!v§(§@!`§.§?M§));
      }
      
      protected function §>!,§() : void
      {
         this.§'3§(this.§7w§.§2!v§(§@!`§.§+!o§));
         this.§'3§(this.§#p§.§3,§);
         this.§'3§(this.§7P§.sprite);
         this.§'3§(this.§7w§.§2!v§(§@!`§.§<<§));
      }
      
      protected function §?!'§() : void
      {
         this.§'3§(this.§&A§.§5!i§);
         if(§-!q§.§^!e§)
         {
            this.§'3§(this.§&A§.§8!]§);
         }
      }
      
      protected function §@!W§() : void
      {
         this.§'3§(this.§#p§.§,!S§);
         this.§'3§(this.§7w§.§2!v§(§@!`§.§6!!§));
         this.§'3§(this.§7w§.§2!v§(§@!`§.§5!y§));
      }
      
      private function §>!B§() : void
      {
         this.§4h§();
         this.§#[§();
         this.§>!,§();
         this.§?!'§();
         this.§@!W§();
         if(!§6!3§.§&m§)
         {
         }
      }
      
      protected function §'3§(param1:DisplayObject) : void
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
         if(§#Z§.§&"3§ > §#Z§.§]w§)
         {
            param1 /= §#Z§.§&"3§;
            param2 /= §#Z§.§&"3§;
         }
         else
         {
            param1 /= §#Z§.§]w§;
            param2 /= §#Z§.§]w§;
         }
         param3.x = ((param1 - this.sprite.x) / §%5§.§%!f§ + this.§5x§.§^w§) * §]!U§;
         param3.y = ((param2 - this.sprite.y) / §%5§.§%!f§ + this.§5x§.§[&§) * §]!U§;
         return param3;
      }
      
      public function §-!G§(param1:Number, param2:Number, param3:Point = null) : Point
      {
         if(!param3)
         {
            param3 = new Point();
         }
         param3.x = (param1 / §]!U§ - this.§5x§.§^w§) * §%5§.§%!f§ + this.sprite.x;
         param3.y = (param2 / §]!U§ - this.§5x§.§[&§) * §%5§.§%!f§ + this.sprite.y;
         var _loc4_:Number = Math.max(§#Z§.§&"3§,§#Z§.§]w§);
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
            this.background.setScreenOffset(param1,param2,this.§]!2§,this.§`G§,param3,this.§8!A§,this.§+C§);
         }
         if(this.objects)
         {
            this.objects.§2v§(param1,param2);
         }
         if(this.§%""§)
         {
            this.§%""§.§2v§(param1,param2);
         }
         if(this.slingshot)
         {
            this.slingshot.§2v§(param1,param2);
         }
         if(this.particles)
         {
            this.particles.§2v§(param1,param2);
         }
      }
      
      public function §9&§(param1:String, param2:Number, param3:Number) : void
      {
         this.§#p§.§1!w§(param1,param2,param3,0,§^O§.§@"+§);
      }
      
      public function §="%§() : void
      {
         if(this.§@"3§)
         {
            this.§@"3§.visible = true;
            this.§@"3§.alpha = 0;
         }
         this.§ 5§ = 0;
      }
      
      public function §!"§(param1:Boolean, param2:Number = 0, param3:Number = 0, param4:Number = 0) : void
      {
         if(param1)
         {
            this.§5=§ = new §[!f§(param2,param3,param4);
         }
         else
         {
            this.§5=§ = null;
         }
      }
      
      public function clearLevel() : void
      {
         if(this.§&A§)
         {
            this.§&A§.dispose();
            this.§&A§ = null;
         }
         if(this.§#p§)
         {
            this.§#p§.dispose();
            this.§#p§ = null;
         }
         if(this.§%""§)
         {
            if(!this.§%""§.§!!j§)
            {
            }
            this.§%""§.clear();
            this.§%""§ = null;
         }
         if(this.§!v§)
         {
            this.§!v§.clear();
            this.§!v§ = null;
         }
         if(this.§7P§)
         {
            this.§7P§.dispose();
            this.§7P§ = null;
         }
         if(this.§5x§)
         {
            §,"3§ = this.§5x§.§!a§;
            this.§5x§.clear();
            this.§5x§ = null;
         }
         if(this.§7w§)
         {
            this.§7w§.dispose();
            this.§7w§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§%!B§ = 0;
         this.§7!Z§ = 0;
         this.mReadyToRun = false;
         this.§3!?§ = false;
         this.§ 5§ = §7x§.§9!h§;
         if(this.§6!v§)
         {
            (this.§6!v§ as §^""§).§2!x§.x = 0;
            (this.§6!v§ as §^""§).§2!x§.y = 0;
         }
         if(this.§@"3§)
         {
            this.§@"3§.visible = false;
         }
         this.§ !&§ = null;
         this.§9F§ = null;
         if(this.§#!w§)
         {
            this.§#!w§.removeEventListener(Event.COMPLETE,this.§98§);
            this.§#!w§.removeEventListener(Event.CANCEL,this.§7]§);
         }
         if(this.§]"§)
         {
            this.§]"§.removeEventListener(Event.COMPLETE,this.§;R§);
            this.§]"§.removeEventListener(Event.CANCEL,this.§]!M§);
         }
         this.§0&§();
         if(§;6§.§@X§)
         {
            §;6§.§@X§.color = 0;
         }
         if(this.§]!j§)
         {
            this.§]!j§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver(param1:int) : void
      {
      }
      
      public function § 6§() : String
      {
         if(this.§9F§)
         {
            return this.§9F§.toString();
         }
         return null;
      }
      
      public function get §'!O§() : Number
      {
         if(this.§"!2§)
         {
            return this.§"!2§.speed;
         }
         return 1;
      }
      
      public function update(param1:Number, param2:Boolean) : Number
      {
         if(!this.mReadyToRun || !§;6§.§%1§())
         {
            return 0;
         }
         if(this.§ !&§ && this.§ !&§.§>K§)
         {
            return this.§[!i§(param1,param2);
         }
         return this.§^p§(param1,true,param2);
      }
      
      protected function §^p§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc4_:Boolean = false;
         if(this.§"!2§)
         {
            _loc4_ = this.§"!2§.update(param1);
            param1 *= this.§"!2§.speed;
            if(§;6§.§`"!§)
            {
               §;6§.§`"!§.speed = this.§"!2§.speed;
            }
            if(!_loc4_)
            {
               this.§"!2§ = null;
            }
         }
         this.§7!Z§ += param1;
         this.§%!B§ += param1;
         this.§%!B§ = this.§%""§.§'"§(this.§%!B§);
         this.§7P§.update(param1,param3);
         if(param2)
         {
            this.§2A§(param1);
         }
         return param1;
      }
      
      private function §[!i§(param1:Number, param2:Boolean) : Number
      {
         var _loc4_:Number = NaN;
         var _loc3_:Number = §6!3§.§`]§;
         if(this.§ !&§)
         {
            param1 *= this.§ !&§.speed;
            _loc4_ = this.§7!Z§ + param1;
            while(this.§7!Z§ + _loc3_ < _loc4_)
            {
               if(this.§7!Z§ + _loc3_ > this.§-![§)
               {
                  this.§ !&§.step(this);
                  this.§-![§ += _loc3_;
               }
               this.§^p§(_loc3_,false,param2);
            }
            if(_loc4_ > this.§-![§ + _loc3_)
            {
               this.§ !&§.step(this);
               this.§-![§ += _loc3_;
            }
            if(this.§7!Z§ < _loc4_)
            {
               this.§^p§(_loc4_ - this.§7!Z§,true,param2);
            }
            return param1;
         }
         return param1;
      }
      
      private function §2A§(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         this.§&A§.update(param1);
         this.§#p§.§4!R§(param1,this.§%""§.§2!Y§,this.§%!B§);
         this.§9!P§();
         if(this.§ 5§ < §7x§.§9!h§)
         {
            this.§ 5§ += param1;
            _loc2_ = §7x§.§9!h§ / 2;
            _loc3_ = (-Math.abs(this.§ 5§ - _loc2_) + _loc2_) * (§7x§.§^"&§ / _loc2_);
            if(this.§@"3§)
            {
               this.§@"3§.alpha = _loc3_;
            }
         }
         else if(this.§@"3§)
         {
            this.§@"3§.visible = false;
         }
         if(this.§5=§)
         {
            if(!this.§5=§.§5v§(this.§5x§,param1))
            {
               this.§!"§(false);
            }
         }
         this.§5x§.§<W§(param1);
         this.§%""§.§[!+§();
         this.§7w§.update(param1);
      }
      
      public function §-u§(param1:Number) : void
      {
         this.objects.§;Y§(param1);
         this.§[!q§();
      }
      
      protected function §9!P§() : void
      {
         var _loc1_:§;;§ = null;
         if(this.§[!=§ != null)
         {
            for each(_loc1_ in this.§[!=§)
            {
               if(!_loc1_.isLeavingTrail)
               {
                  this.§2d§(_loc1_);
               }
            }
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§;!1§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            _loc2_ = this.§#p§.§]H§(true);
            if(_loc2_)
            {
               _loc2_.scream();
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§#p§.§+e§());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            _loc2_ = this.§#p§.§]H§(true);
            if(_loc2_)
            {
               _loc2_.blink();
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§#p§.§+e§());
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §3?§.§8!p§;
         }
         §,!l§.addScore(param1,param2);
         this.§]!j§.addScore(param1);
         if(param3 && param1 > 0 && !this.§!!#§)
         {
            this.§>!p§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §>!p§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §3?§.§7V§;
         }
         this.§7w§.§;$§(§3?§.§2!E§,§@!`§.§6!!§,§3?§.§?!l§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §5!a§(param1:§,@§) : void
      {
         if(this.§[!=§ == null)
         {
            this.§[!=§ = new Array();
         }
         this.§[!=§.push(param1);
      }
      
      public function §<!t§() : void
      {
         this.§7P§.§<!t§();
         this.§#p§.§5E§();
         this.§!!#§ = true;
      }
      
      public function §2d§(param1:§;;§) : void
      {
         this.§7w§.§0,§(§@!`§.§>"&§);
         if(this.§[!=§.indexOf(param1) >= 0)
         {
            this.§[!=§.splice(this.§[!=§.indexOf(param1),1);
         }
         if(this.§[!=§.length == 0)
         {
            this.§[!=§ = null;
         }
      }
      
      public function §`!<§(param1:§0n§, param2:Number, param3:Number) : §6",§
      {
         var _loc4_:§6",§ = §6",§(this.§#p§.§1!w§(param1.name,param1.x,param1.y,0,§^O§.§@"+§,true,true,true,param1.scale));
         var _loc5_:Number = param1.§!9§;
         if(param1.§5" § > 1)
         {
            _loc4_.§0v§(param1.§5" §);
         }
         if(param1.§<P§ != 0)
         {
            _loc5_ = param1.§<P§;
         }
         var _loc6_:Number = -_loc5_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc7_:Number = _loc5_ * param2 * Math.sin(param3 / (180 / Math.PI));
         _loc4_.§"E§(new b2Vec2(_loc6_,_loc7_),false,true);
         this.camera.§?[§(§%5§.§3!n§);
         if(this.§9F§)
         {
            this.§9F§.§`!<§(this.§%""§.§7[§,param1.x,param1.y,param2,param3);
         }
         return _loc4_;
      }
      
      public function activateSpecialPower(param1:Number, param2:Number) : void
      {
         this.§3!?§ = true;
         this.§5D§ = param1;
         this.§^!B§ = param2;
      }
      
      private function §[!q§() : void
      {
         if(!this.§3!?§)
         {
            return;
         }
         this.§3!?§ = false;
         if(this.§#p§.activeObject is §6",§)
         {
            this.§#p§.activateSpecialPower(this.§5D§,this.§^!B§);
         }
         if(this.§9F§)
         {
            this.§9F§.§+!W§(this.§%""§.§7[§,this.§5D§,this.§^!B§);
         }
      }
      
      public function §#A§() : void
      {
         this.§#p§.§#A§();
      }
      
      public function §-!;§() : void
      {
         this.§#p§.§]c§();
      }
      
      public function §?8§() : §2"4§
      {
         var _loc1_:§2"4§ = new §2"4§();
         _loc1_.scoreGold = this.§2!s§.scoreGold;
         _loc1_.scoreSilver = this.§2!s§.scoreSilver;
         this.§5x§.§var§(_loc1_);
         this.§#p§.§71§(_loc1_);
         this.§7P§.§^4§(_loc1_);
         _loc1_.theme = this.§&A§.§3!x§();
         return _loc1_;
      }
      
      public function §`!g§() : int
      {
         return this.§2!s§.scoreSilver;
      }
      
      public function §]#§() : int
      {
         return this.§2!s§.scoreGold;
      }
      
      public function §#!V§(param1:int) : void
      {
         this.§2!s§.scoreSilver = param1;
      }
      
      public function §[j§(param1:int) : void
      {
         this.§2!s§.scoreGold = param1;
      }
      
      public function §0!r§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§]!2§ = param1;
         this.§`G§ = param2;
         this.§8!A§ = param3;
         this.§+C§ = param4;
         if(this.§,"-§)
         {
            this.§,"-§.§4!+§(param1,param2);
         }
         if(this.§5x§)
         {
            this.§5x§.§<W§(0);
         }
      }
      
      public function get currentLevel() : §2"4§
      {
         return this.§2!s§;
      }
      
      public function get levelObjects() : §^O§
      {
         return this.§#p§;
      }
      
      protected function get §'!!§() : §;6§
      {
         return this.§9!z§;
      }
      
      public function get §,!;§() : int
      {
         return §+!s§;
      }
   }
}
