package §+&§
{
   import § N§.§!n§;
   import §!!§.§'!$§;
   import §!!§.§->§;
   import §!!§.§>4§;
   import §!!§.LevelManager;
   import §!!X§.§&!E§;
   import §&!h§.§?!K§;
   import §+!r§.§%l§;
   import §+!r§.§@!a§;
   import §,6§.§!o§;
   import §,6§.§>N§;
   import §,6§.§]!f§;
   import §2!!§.§[!A§;
   import §3v§.§,n§;
   import §3v§.§6Q§;
   import §4p§.§#Q§;
   import §5i§.§4!]§;
   import §6z§.§[g§;
   import §8>§.b2Vec2;
   import §9E§.DisplayObject;
   import §9E§.Sprite;
   import §=!7§.§,F§;
   import §?2§.§3N§;
   import §@4§.§,!]§;
   import §]![§.§+s§;
   import §]![§.§4!H§;
   import §]![§.§4J§;
   import §]![§.§[?§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §-!7§
   {
      
      private static const §`!H§:int = 20;
      
      public static const §!l§:Number = §4!]§.§]m§;
      
      public static const §[!V§:Number = §4!]§.§0N§;
      
      public static const §8!r§:Number = 1 / 20;
      
      public static const §-%§:Number = §4!]§.§0N§ * §8!r§;
      
      public static const §'!d§:Number = §!l§ * §8!r§;
      
      public static const §>!%§:§?!K§ = new §?!K§(13 - 3);
      
      protected static var §`>§:String = §>4§.§7H§;
       
      
      protected var §`!O§:§[?§;
      
      private var §4_§:§4!H§;
      
      private var §!e§:Array = null;
      
      protected var §[@§:§#Q§;
      
      public var mLevelEngine:§8Y§;
      
      protected var §=G§:§<T§;
      
      protected var §-<§:§&!E§;
      
      protected var §>c§:§ R§;
      
      protected var §5K§:§,n§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §-!!§:Boolean = false;
      
      protected var §%!V§:Boolean = false;
      
      protected var §+a§:Boolean = false;
      
      public var §&!%§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §@!H§:Number;
      
      public var §0!F§:Number;
      
      private var §]3§:Number;
      
      public var §4!e§:§'!$§;
      
      public var §4!$§:Boolean = false;
      
      private var §]y§:§0!E§;
      
      private var §4!Z§:Sprite;
      
      protected var §^a§:§>4§;
      
      protected var §?!4§:§[!A§ = null;
      
      private var §1$§:EventDispatcher;
      
      private var §8h§:Array;
      
      private var §7w§:Array;
      
      protected var §"!J§:§,!]§;
      
      private var §!!;§:§3N§;
      
      protected var §3!L§:§!o§;
      
      protected var §'@§:§>N§;
      
      private var §<!+§:§]!f§;
      
      private var §4O§:§]!f§;
      
      private var §[T§:§]!f§;
      
      private var §24§:Stage;
      
      private var §!!6§:§^J§;
      
      protected var §;i§:§!n§;
      
      protected var §3E§:§!n§;
      
      protected var §%!B§:Number = 0.0;
      
      protected var §-!m§:String;
      
      private var §'!W§:Boolean;
      
      protected var §?!J§:Boolean;
      
      protected var § if§:uint = 1.417339207E9;
      
      public var §[!a§:Boolean;
      
      public function §-!7§(param1:Stage)
      {
         this.§7w§ = [];
         super();
         this.§1$§ = new EventDispatcher();
         this.§4!e§ = new §'!$§();
         this.§24§ = param1;
         this.§3!L§ = §!o§.§^Z§;
         this.§'@§ = this.initAnimationManager(this.§3!L§);
         this.§<!+§ = this.initThemeGraphicsManager();
         this.§4O§ = this.initThemeSoundsManager();
         this.§[T§ = this.initCutSceneManager();
         var _loc2_:Stage3D = param1.stage3Ds[0];
         this.§"!J§ = new §,!]§(§0!E§,param1,new Rectangle(0,0,§4!]§.§]m§,§4!]§.§0N§),_loc2_);
         §4!]§.§7!G§.addEventListener(Event.ENTER_FRAME,this.§"!J§.onEnterFrame);
         _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§,!f§,false,0,true);
         this.§"!J§.§`!1§ = false;
         this.§"!J§.enableErrorChecking = false;
         this.§"!J§.§5n§ = 2;
         this.§"!J§.§[!x§();
      }
      
      public static function §<!U§(param1:§4!H§, param2:§4!H§) : Number
      {
         var _loc3_:Number = param1.§^K§ - param2.§^K§;
         var _loc4_:Number = param1.§!!L§ - param2.§!!L§;
         return §1a§(_loc3_,_loc4_);
      }
      
      public static function §1a§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         if(!this.§4!Z§ && this.§]"§)
         {
            this.§4!Z§ = this.§]y§.§,!+§;
         }
         return this.§4!Z§;
      }
      
      public function get §]"§() : Sprite
      {
         if(!this.§]y§)
         {
            this.§]y§ = this.§"!J§.§;j§ as §0!E§;
            this.§]y§.§<V§ = false;
         }
         return this.§]y§;
      }
      
      private function get §6"§() : DisplayObject
      {
         if(this.§]"§)
         {
            return (this.§]"§ as §0!E§).§6"§;
         }
         return null;
      }
      
      public function get animationManager() : §>N§
      {
         return this.§'@§;
      }
      
      public function get textureManager() : §!o§
      {
         return this.§3!L§;
      }
      
      public function get camera() : §&!E§
      {
         return this.§-<§;
      }
      
      public function get objects() : §[?§
      {
         return this.§`!O§;
      }
      
      public function get particles() : §,n§
      {
         return this.§5K§;
      }
      
      public function get background() : §#Q§
      {
         return this.§[@§;
      }
      
      public function get slingshot() : § R§
      {
         return this.§>c§;
      }
      
      public function get activeObject() : §4!H§
      {
         return this.§4_§;
      }
      
      public function get §<!x§() : §<T§
      {
         return this.§=G§;
      }
      
      public function get stage() : Stage
      {
         return this.§24§;
      }
      
      public function get §9<§() : §]!f§
      {
         return this.§[T§;
      }
      
      protected function get §]!J§() : §]!f§
      {
         return this.§<!+§;
      }
      
      public function set activeObject(param1:§4!H§) : void
      {
         this.§4_§ = param1;
      }
      
      public function set §'#§(param1:Boolean) : void
      {
         this.§?!J§ = param1;
      }
      
      public function clear() : void
      {
         if(this.§!!;§)
         {
            this.§!!;§.dispose();
         }
         if(this.§3!L§)
         {
            this.§3!L§.dispose();
         }
         if(this.§<!+§ && this.§<!+§.textureManager)
         {
            this.§<!+§.textureManager.dispose();
         }
         if(this.§[T§ && this.§[T§.textureManager)
         {
            this.§[T§.textureManager.dispose();
         }
         if(this.§"!J§)
         {
            this.§"!J§.dispose();
         }
      }
      
      protected function initThemeGraphicsManager() : §]!f§
      {
         return null;
      }
      
      protected function initThemeSoundsManager() : §]!f§
      {
         return null;
      }
      
      protected function initCutSceneManager() : §]!f§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§!o§) : §>N§
      {
         return new §>N§(param1);
      }
      
      public function §1B§(param1:Boolean) : void
      {
         if(§,!]§.§!9§)
         {
            if(param1)
            {
               §,!]§.§!9§.start();
            }
            else
            {
               §,!]§.§!9§.stop();
               §,!]§.§!9§.color = 0;
            }
         }
      }
      
      public function §+!b§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function setController(param1:§[!A§) : void
      {
         if(this.§?!4§ != null)
         {
            this.§?!4§.removeEventListeners();
         }
         this.§?!4§ = param1;
         if(this.mReadyToRun)
         {
            this.§?!4§.addEventListeners();
         }
      }
      
      public function §9!k§() : §!n§
      {
         return this.§;i§;
      }
      
      public function §%'§(param1:§3N§, param2:Array, param3:Function) : void
      {
         this.§!!;§ = param1;
         var _loc4_:int = this.§!!;§.§?%§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§3!L§.§4!c§(this.§!!;§.§6!q§(_loc5_));
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§1$§.addEventListener(Event.INIT,param3);
            this.§7w§.push(param3);
         }
         if(this.§^!V§(param2))
         {
            this.§%!7§();
         }
      }
      
      private function §^!V§(param1:Array) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.§3!L§.§"!A§())
         {
            _loc2_ = this.§3!L§.§,G§ / 1000;
            _loc3_ = this.§3!L§.§9$§ / 1000;
            §[g§.log("\n\nMain texture manager memory usage:\n   textures " + _loc2_ + " kilobytes\n   bitmaps " + _loc3_ + " kilobytes\n\n");
            this.initializeAnimations(param1);
            return true;
         }
         this.§8h§ = param1.concat();
         return false;
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         this.§'@§.initializeAnimations(param1);
      }
      
      private function §,!f§(param1:Event) : void
      {
         this.§3!L§.§#!Y§();
         if(this.§]!J§ && this.§]!J§.textureManager)
         {
            this.§]!J§.textureManager.§#!Y§();
         }
         if(this.§9<§ && this.§9<§.textureManager)
         {
            this.§9<§.textureManager.§#!Y§();
         }
         if(this.§8h§)
         {
            this.§^!V§(this.§8h§);
            this.§8h§ = null;
            this.§%!7§();
         }
         if(this.§?!4§ != null && this.mReadyToRun)
         {
            this.§?!4§.addEventListeners();
         }
         if(this.§<!+§)
         {
            this.§<!+§.§"!A§();
         }
         if(this.§[T§)
         {
            if(this.§[T§.textureManager)
            {
               this.§[T§.textureManager.§#!Y§();
               this.§[T§.§"!A§();
            }
         }
      }
      
      private function §%!7§() : void
      {
         this.§1$§.dispatchEvent(new Event(Event.INIT));
         this.§@!M§();
      }
      
      private function §@!M§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§7w§)
         {
            this.§1$§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§7w§ = [];
      }
      
      public function init(param1:§>4§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§=G§ = new §<T§(this,param1);
         this.§-<§ = this.§8!R§(param1);
         this.§@!H§ = 0;
         this.§0!F§ = 0;
         this.§]3§ = 0;
         this.§'!W§ = false;
         this.mReadyToRun = false;
         this.§-!!§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         §`>§ = param1.theme;
         this.§^a§ = param1;
         this.§%!V§ = this.§,!`§(param1.theme);
         this.§+a§ = this.§^m§(param1.theme);
         if(this.§%!V§ && this.§+a§)
         {
            this.initialize(param1);
         }
         else
         {
            this.§;!$§(param1.theme);
         }
         this.§"'§();
         §;!8§.init();
      }
      
      protected function §"'§() : void
      {
         this.§;i§ = new §!n§(LevelManager.§^!F§);
      }
      
      protected function §,!`§(param1:String) : Boolean
      {
         if(this.§<!+§)
         {
            return false;
         }
         return true;
      }
      
      protected function §^m§(param1:String) : Boolean
      {
         var _loc2_:§%l§ = null;
         if(this.§4O§)
         {
            _loc2_ = §@!a§.§^!o§(param1);
            if(_loc2_)
            {
               if(_loc2_.§5!e§ && !this.§4O§.§0!$§(_loc2_.§5!e§))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function §;!$§(param1:String) : void
      {
         var _loc2_:§%l§ = null;
         if(this.§<!+§ && !this.§,!`§(param1))
         {
            this.§<!+§.removeEventListener(Event.COMPLETE,this.§?R§);
            this.§<!+§.removeEventListener(Event.CANCEL,this.§[!]§);
            this.§<!+§.addEventListener(Event.COMPLETE,this.§?R§);
            this.§<!+§.addEventListener(Event.CANCEL,this.§[!]§);
            this.§<!+§.§1m§(param1);
         }
         if(this.§4O§ && !this.§^m§(param1))
         {
            this.§4O§.removeEventListener(Event.COMPLETE,this.§-!]§);
            this.§4O§.removeEventListener(Event.CANCEL,this.§[x§);
            this.§4O§.addEventListener(Event.COMPLETE,this.§-!]§);
            this.§4O§.addEventListener(Event.CANCEL,this.§[x§);
            _loc2_ = §@!a§.§^!o§(param1);
            if(_loc2_)
            {
               this.§4O§.§1m§(_loc2_.§5!e§);
            }
         }
      }
      
      private function §?R§(param1:Event) : void
      {
         this.§<!+§.removeEventListener(Event.COMPLETE,this.§?R§);
         this.§<!+§.removeEventListener(Event.CANCEL,this.§[!]§);
         this.§%!V§ = true;
         if(this.§%!V§ && this.§+a§)
         {
            this.initialize(this.§^a§);
         }
      }
      
      private function §[!]§(param1:Event) : void
      {
         this.§<!+§.removeEventListener(Event.COMPLETE,this.§?R§);
         this.§<!+§.removeEventListener(Event.CANCEL,this.§[!]§);
         this.§-!!§ = true;
      }
      
      private function §-!]§(param1:Event) : void
      {
         this.§<!+§.removeEventListener(Event.COMPLETE,this.§-!]§);
         this.§<!+§.removeEventListener(Event.CANCEL,this.§[x§);
         this.§+a§ = true;
         if(this.§%!V§ && this.§+a§)
         {
            this.initialize(this.§^a§);
         }
      }
      
      private function §[x§(param1:Event) : void
      {
         this.§<!+§.removeEventListener(Event.COMPLETE,this.§-!]§);
         this.§<!+§.removeEventListener(Event.CANCEL,this.§[x§);
         this.§+a§ = true;
         if(this.§%!V§ && this.§+a§)
         {
            this.initialize(this.§^a§);
         }
      }
      
      public function get backgroundTextureManager() : §!o§
      {
         return this.§3!L§;
      }
      
      protected function initialize(param1:§>4§) : void
      {
         this.§?!J§ = false;
         this.§[!a§ = false;
         if(§,!]§.§+!Z§)
         {
            §,!]§.§+!Z§.speed = 1;
         }
         this.mLevelEngine = new §8Y§(this);
         this.§[@§ = this.initLevelBackground(param1.theme,this.§=G§.§;2§ / §8!r§,this.backgroundTextureManager,this.§-<§.§%!y§());
         this.§[@§.§0g§(§4!]§.§;!;§());
         this.§`!O§ = this.initLevelObjectManager(param1);
         this.§>c§ = this.initLevelSlingshot(param1);
         this.§5K§ = this.§8!^§(this.§'@§,this.§3!L§);
         this.§-<§.init();
         this.§]G§();
         this.§5!V§();
         this.mReadyToRun = true;
         if(this.§?!4§)
         {
            this.§?!4§.addEventListeners();
         }
      }
      
      protected function §5!V§() : void
      {
         if(this.§-!m§)
         {
            this.§3E§ = §!n§.initialize(this.§-!m§);
            this.§3E§.speed = 1;
            this.§3E§.play();
            this.§%!B§ = -1000;
            this.§-!m§ = null;
         }
      }
      
      public function §9%§(param1:String) : void
      {
         this.§-!m§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§3E§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§3E§)
         {
            if(param1)
            {
               this.§3E§.speed = Math.min(this.§3E§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§3E§.speed = Math.max(this.§3E§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§3E§)
         {
            this.§3E§.speed = 1;
         }
      }
      
      protected function initLevelObjectManager(param1:§>4§) : §[?§
      {
         return new §[?§(this,param1,new Sprite());
      }
      
      protected function §8!R§(param1:§>4§) : §&!E§
      {
         return new §&!E§(this,param1);
      }
      
      protected function initLevelBackground(param1:String, param2:Number, param3:§!o§, param4:Number) : §#Q§
      {
         return new §#Q§(param1,param2,param3,param4);
      }
      
      protected function initLevelSlingshot(param1:§>4§) : § R§
      {
         return new § R§(this,param1,new Sprite());
      }
      
      protected function §8!^§(param1:§>N§, param2:§!o§) : §,n§
      {
         return new §,n§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§>4§ = this.§@d§();
         var _loc4_:§->§;
         (_loc4_ = new §->§()).left = 0;
         _loc4_.top = -§&!E§.§#!b§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §&!E§.§#!b§;
         _loc4_.right = _loc4_.left + §&!E§.§]F§;
         _loc4_.y = -13.929;
         _loc4_.x = §&!E§.§]F§;
         _loc4_.id = §&!E§.§-!D§;
         _loc3_.§0h§(_loc4_);
         var _loc5_:§->§;
         (_loc5_ = new §->§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §&!E§.§]F§;
         _loc5_.bottom = _loc5_.top + §&!E§.§#!b§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §&!E§.§]F§ / 2;
         _loc5_.id = §&!E§.§"e§;
         _loc3_.§0h§(_loc5_);
         this.§[!-§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§`>§ != null)
         {
            _loc3_.theme = §`>§;
         }
         this.init(_loc3_);
      }
      
      protected function §[!-§(param1:§>4§, param2:Boolean) : void
      {
         if(param2)
         {
            this.§6!J§(param1);
         }
      }
      
      protected function §@d§() : §>4§
      {
         var _loc1_:§>4§ = new §>4§();
         _loc1_.§;!>§ = -12;
         return new §>4§();
      }
      
      protected function §8M§() : Number
      {
         this.§ if§ ^= this.§ if§ << 21;
         this.§ if§ ^= this.§ if§ >>> 35;
         this.§ if§ ^= this.§ if§ << 4;
         return this.§ if§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §6!J§(param1:§>4§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§,F§ = null;
         this.§ if§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§8M§() * 5;
               (_loc5_ = new §,F§()).x = 30 + _loc3_ * 10 + this.§8M§() * 9;
               if(_loc2_ == 0)
               {
                  _loc5_.y = 0;
                  if(_loc3_ == 1 || _loc3_ == 2 || _loc3_ == 4)
                  {
                     _loc5_.id = "PIG_MUSTACHE";
                  }
                  else
                  {
                     _loc5_.id = "PIG_HELMET";
                  }
                  _loc5_.angle = 45 - this.§8M§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§8M§() * 3 - _loc3_ * 8;
                  if((_loc4_ = (_loc3_ * _loc3_ + _loc2_ * _loc3_ + _loc2_) % 5) < 2)
                  {
                     _loc5_.id = "BIRD_RED";
                  }
                  else if(_loc4_ == 3)
                  {
                     _loc5_.id = "BIRD_YELLOW";
                  }
                  else
                  {
                     _loc5_.id = "BIRD_BLUE";
                  }
                  _loc5_.angle = this.§8M§() * 360;
               }
               param1.addObject(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      private function § !c§() : void
      {
      }
      
      public function §]G§() : void
      {
         if(§#Q§.§2I§)
         {
            this.§2D§(this.§[@§.§[o§,false);
         }
         this.§2D§(this.§5K§.§`!%§(§,n§.§'!n§),false);
         this.§2D§(this.§5K§.§`!%§(§,n§.§implements§),true);
         this.§2D§(this.§5K§.§`!%§(§,n§.§?J§),true);
         this.§2D§(this.§`!O§.§47§,true);
         this.§2D§(this.§>c§.sprite,true);
         this.§2D§(this.§5K§.§`!%§(§,n§.§9!&§),true);
         this.§2D§(this.§[@§.§"V§,false);
         if(§#Q§.§2I§)
         {
            this.§2D§(this.§[@§.§]!=§,false);
         }
         this.§2D§(this.§5K§.§`!%§(§,n§.§0,§),true);
         if(!§8Y§.§`!2§)
         {
         }
      }
      
      private function §2D§(param1:Sprite, param2:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(param1);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         param1 /= §4!]§.§4?§;
         param2 /= §4!]§.§4?§;
         _loc3_.x = (param1 / §&!E§.§+!a§ + this.§-<§.§9!S§ - §&!E§.§1!t§ / §&!E§.§+!a§) * §8!r§;
         _loc3_.y = (param2 / §&!E§.§+!a§ + this.§-<§.§@!j§ - §&!E§.§>!m§ / §&!E§.§+!a§) * §8!r§;
         return _loc3_;
      }
      
      public function §;!_§(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / §8!r§ + §&!E§.§1!t§ / §&!E§.§+!a§ - this.§-<§.§9!S§) * §&!E§.§+!a§;
         _loc3_.y = (param2 / §8!r§ + §&!E§.§>!m§ / §&!E§.§+!a§ - this.§-<§.§@!j§) * §&!E§.§+!a§;
         var _loc4_:Number = Math.max(§4!]§.§4?§,§4!]§.§%!'§);
         _loc3_.x *= _loc4_;
         _loc3_.y *= _loc4_;
         return _loc3_;
      }
      
      public function §-!E§(param1:String, param2:Number, param3:Number) : void
      {
         this.§`!O§.addObject(param1,param2,param3);
      }
      
      public function §!m§() : void
      {
         if(this.§6"§)
         {
            this.§6"§.visible = true;
            this.§6"§.alpha = 0;
         }
         this.§&!%§ = 0;
      }
      
      public function §!![§() : void
      {
         this.§!!6§ = new §^J§(§3D§.§;,§,§3D§.§0k§);
      }
      
      public function §[1§() : void
      {
         this.§!!6§ = null;
      }
      
      public function clearLevel() : void
      {
         if(this.§[@§)
         {
            this.§[@§.dispose();
            this.§[@§ = null;
         }
         if(this.§`!O§)
         {
            this.§`!O§.dispose();
            this.§`!O§ = null;
            this.§4_§ = null;
         }
         if(this.mLevelEngine)
         {
            if(!this.mLevelEngine.§=!?§)
            {
            }
            this.mLevelEngine.clear();
            this.mLevelEngine = null;
         }
         if(this.§=G§)
         {
            this.§=G§.clear();
            this.§=G§ = null;
         }
         if(this.§>c§)
         {
            this.§>c§.dispose();
            this.§>c§ = null;
         }
         if(this.§-<§)
         {
            this.§-<§.clear();
            this.§-<§ = null;
         }
         if(this.§5K§)
         {
            this.§5K§.dispose();
            this.§5K§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§@!H§ = 0;
         this.§0!F§ = 0;
         this.mReadyToRun = false;
         this.§'!W§ = false;
         this.§&!%§ = §3D§.§0!q§;
         if(this.§]"§)
         {
            (this.§]"§ as §0!E§).§>!6§.x = 0;
            (this.§]"§ as §0!E§).§>!6§.y = 0;
         }
         if(this.§6"§)
         {
            this.§6"§.visible = false;
         }
         this.§3E§ = null;
         this.§;i§ = null;
         if(this.§<!+§)
         {
            this.§<!+§.removeEventListener(Event.COMPLETE,this.§?R§);
            this.§<!+§.removeEventListener(Event.CANCEL,this.§[!]§);
         }
         if(this.§4O§)
         {
            this.§4O§.removeEventListener(Event.COMPLETE,this.§-!]§);
            this.§4O§.removeEventListener(Event.CANCEL,this.§[x§);
         }
         this.§@!M§();
         if(§,!]§.§!9§)
         {
            §,!]§.§!9§.color = 0;
         }
         if(this.§?!4§)
         {
            this.§?!4§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver() : void
      {
      }
      
      public function §"!u§() : String
      {
         if(this.§;i§)
         {
            return this.§;i§.toString();
         }
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         if(!this.mReadyToRun || !§,!]§.§1!8§())
         {
            return 0;
         }
         if(this.§3E§ && this.§3E§.§<!P§)
         {
            return this.§^!@§(param1,param2,param3);
         }
         return this.updateWithTime(param1,true,param2,param3);
      }
      
      protected function updateWithTime(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         if(this.§?!J§)
         {
            param1 *= 0.2;
            if(§,!]§.§+!Z§)
            {
               §,!]§.§+!Z§.speed = 0.2;
            }
         }
         var _loc5_:Number = 0;
         this.§0!F§ += param1;
         if(param3)
         {
            this.§@!H§ += param1;
            _loc5_ = this.mLevelEngine.§7!@§(this.§@!H§);
            this.§>c§.update(param1,param4);
            this.§@!H§ = _loc5_;
         }
         else
         {
            this.§`!O§.§@c§(param1);
            this.§@!H§ = 0;
         }
         if(param2)
         {
            this.§9!=§(param1,_loc5_);
         }
         return param1;
      }
      
      private function §^!@§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc5_:Number = NaN;
         var _loc4_:Number = §8Y§.§?!"§ * 1000;
         if(this.§3E§)
         {
            param1 *= this.§3E§.speed;
            _loc5_ = this.§0!F§ + param1;
            while(this.§0!F§ + _loc4_ < _loc5_)
            {
               if(this.§0!F§ + _loc4_ > this.§%!B§)
               {
                  this.§3E§.step(this);
                  this.§%!B§ += _loc4_;
               }
               this.updateWithTime(_loc4_,false,param2,param3);
            }
            if(_loc5_ > this.§%!B§ + _loc4_)
            {
               this.§3E§.step(this);
               this.§%!B§ += _loc4_;
            }
            if(this.§0!F§ < _loc5_)
            {
               this.updateWithTime(_loc5_ - this.§0!F§,true,param2,param3);
            }
            return param1;
         }
         return this.updateWithTime(_loc4_,true,param2,param3);
      }
      
      private function §9!=§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.§[@§.update(param1);
         this.§`!O§.§4W§(param1,param2);
         this.§3!"§();
         if(this.§&!%§ < §3D§.§0!q§)
         {
            this.§&!%§ += param1;
            _loc3_ = §3D§.§0!q§ / 2;
            _loc4_ = (-Math.abs(this.§&!%§ - _loc3_) + _loc3_) * (§3D§.§'!h§ / _loc3_);
            if(this.§6"§)
            {
               this.§6"§.alpha = _loc4_;
            }
         }
         else if(this.§6"§)
         {
            this.§6"§.visible = false;
         }
         if(this.§!!6§)
         {
            if(!this.§!!6§.§6!a§(this.§-<§,param1))
            {
               this.§[1§();
            }
         }
         this.§-<§.§,!K§(param1);
         this.mLevelEngine.§^!c§();
         this.§5K§.update(param1);
      }
      
      public function handleEngineUpdateStep(param1:Number) : void
      {
         this.objects.§@c§(param1 * 1000);
         this.objects.§2O§(param1 * 1000);
         this.§^C§();
      }
      
      public function §3!"§() : void
      {
         var _loc1_:§4!H§ = null;
         if(this.§0!F§ > this.§]3§ + 1000 / 30)
         {
            if(this.§!e§ != null)
            {
               for each(_loc1_ in this.§!e§)
               {
                  _loc1_.addTrail();
               }
            }
            this.§]3§ = this.§0!F§;
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§4!H§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.§`!O§.isPigsAlive(true))
            {
               _loc2_ = this.§`!O§.§<W§(true);
               _loc2_.§[!"§.mTryToScream = §+s§.§'!m§;
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§`!O§.§const§());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            if(this.§`!O§.isPigsAlive(true))
            {
               _loc2_ = this.§`!O§.§<W§(true);
               _loc2_.§[!"§.mTryToBlink = §+s§.§1!W§;
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§`!O§.§const§());
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §6Q§.§&!$§;
         }
         §;!8§.addScore(param1,param2);
         this.§?!4§.addScore(param1);
         if(param3 && param1 > 0 && !this.§[!a§)
         {
            this.§%<§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §%<§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §6Q§.§9Z§;
         }
         this.§5K§.§=!K§(§6Q§.§ ^§,§,n§.§0,§,§6Q§.§#@§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §75§(param1:§4!H§) : void
      {
         if(this.§!e§ == null)
         {
            this.§!e§ = new Array();
         }
         this.§!e§.push(param1);
      }
      
      public function useMightyEagle() : void
      {
         this.§>c§.useMightyEagle();
         this.§`!O§.§>h§();
         this.§[!a§ = true;
      }
      
      public function §3!+§(param1:§4!H§) : void
      {
         this.§5K§.§=!+§(§,n§.§'!n§);
         if(this.§!e§.indexOf(param1) >= 0)
         {
            this.§!e§.splice(this.§!e§.indexOf(param1),1);
         }
         if(this.§!e§.length == 0)
         {
            this.§!e§ = null;
         }
      }
      
      public function §9!,§(param1:§`o§, param2:Number, param3:Number) : void
      {
         this.§4_§ = this.§`!O§.addObject(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
         var _loc4_:Number = param1.name.toUpperCase() == "BIRD_GREEN" ? Number(§ R§.BIRD_LAUNCH_FORCE_GREEN) : Number(§ R§.BIRD_LAUNCH_FORCE);
         if(param1.§1'§ > 1)
         {
            this.§4_§.§6!Z§(param1.§1'§);
            this.§4_§.§[!"§.§!!D§();
         }
         if(param1.§-[§ != 0)
         {
            _loc4_ = param1.§-[§;
         }
         var _loc5_:Number = -_loc4_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc6_:Number = _loc4_ * param2 * Math.sin(param3 / (180 / Math.PI));
         this.§4_§.§%!=§(new b2Vec2(_loc5_,_loc6_),false,true);
         this.camera.§#e§(§&!E§.§^+§);
         if(this.§;i§)
         {
            this.§;i§.§9!,§(this.mLevelEngine.§]!@§,param1.x,param1.y,param2,param3);
         }
      }
      
      public function activatePowerup() : void
      {
         this.§'!W§ = true;
      }
      
      private function §^C§() : void
      {
         if(!this.§'!W§)
         {
            return;
         }
         this.§'!W§ = false;
         if(this.activeObject is §4J§ && !(this.activeObject as §4J§).§6V§)
         {
            if(this.activeObject.activateSpecialPower(this.§;D§))
            {
               this.§4!$§ = true;
            }
         }
         else
         {
            this.§`!O§.§%!F§();
         }
         if(this.§;i§)
         {
            this.§;i§.§>!v§(this.mLevelEngine.§]!@§);
         }
      }
      
      public function §%Q§() : void
      {
         this.§`!O§.§%Q§();
      }
      
      public function §2!4§() : void
      {
         this.§`!O§.§5!"§();
      }
      
      public function §]§() : §>4§
      {
         var _loc1_:§>4§ = new §>4§();
         _loc1_.§6t§ = this.§^a§.§6t§;
         _loc1_.§^T§ = this.§^a§.§^T§;
         this.§-<§.§]!N§(_loc1_);
         this.§`!O§.§@m§(_loc1_);
         this.§>c§.§9k§(_loc1_);
         _loc1_.theme = this.§[@§.§7Z§();
         return _loc1_;
      }
      
      public function §@1§() : int
      {
         return this.§^a§.§^T§;
      }
      
      public function §5!N§() : int
      {
         return this.§^a§.§6t§;
      }
      
      public function §;!"§(param1:int) : void
      {
         this.§^a§.§^T§ = param1;
      }
      
      public function §"!^§(param1:int) : void
      {
         this.§^a§.§6t§ = param1;
      }
      
      public function §8m§(param1:Number, param2:Number) : void
      {
         if(this.§]y§)
         {
            this.§]y§.§'C§(param1,param2);
         }
         if(this.§-<§)
         {
            this.§-<§.§,!K§(0);
         }
      }
      
      public function get §7u§() : §>4§
      {
         return this.§^a§;
      }
      
      public function get §;D§() : §[?§
      {
         return this.§`!O§;
      }
      
      protected function get starling() : §,!]§
      {
         return this.§"!J§;
      }
      
      public function get §=!E§() : int
      {
         return §`!H§;
      }
   }
}
