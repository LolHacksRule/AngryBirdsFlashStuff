package §<L§
{
   import § e§.§62§;
   import §"!g§.§2Z§;
   import §#!G§.§?k§;
   import §#M§.§+!Z§;
   import §&!!§.§2^§;
   import §&!!§.§5a§;
   import §&!!§.§<!'§;
   import §2![§.DisplayObject;
   import §2![§.Sprite;
   import §4%§.§+;§;
   import §5!L§.§+!+§;
   import §5!L§.§,!&§;
   import §5!L§.§1L§;
   import §5!L§.§?8§;
   import §7_§.§>6§;
   import §7_§.§?!R§;
   import §7_§.§]![§;
   import §7_§.§^d§;
   import §8!§.§'F§;
   import §8!§.§9!-§;
   import §8<§.§<!7§;
   import §9§.§`!"§;
   import §=!K§.§do§;
   import §?6§.§ 6§;
   import §@![§.b2Vec2;
   import §[!_§.§8U§;
   import §]k§.§'m§;
   import §]k§.§[!L§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §!!G§
   {
      
      private static const §,!G§:int = 20;
      
      public static const §6!c§:Number = §+!Z§.§]?§;
      
      public static const §3!L§:Number = §+!Z§.§@+§;
      
      public static const § !E§:Number = 1 / 20;
      
      public static const §9L§:Number = §+!Z§.§@+§ * § !E§;
      
      public static const §3B§:Number = §6!c§ * § !E§;
      
      public static const §-!b§:§62§ = new §62§(13 - 3);
      
      public static var §#;§:Number = 1;
      
      protected static var §#s§:String = §]![§.§>,§;
       
      
      protected var §79§:§?8§;
      
      private var §@-§:§,!&§;
      
      private var §`!G§:Array = null;
      
      protected var §-B§:§?k§;
      
      public var mLevelEngine:§95§;
      
      protected var §4!+§:§%t§;
      
      protected var §]!P§:§8U§;
      
      protected var §4!4§:§7!4§;
      
      protected var §7!0§:§'F§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §3R§:Boolean = false;
      
      protected var §6!n§:Boolean = false;
      
      protected var §'!l§:Boolean = false;
      
      public var §<!l§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §4!2§:Number;
      
      public var §=!N§:Number;
      
      private var §,+§:Number;
      
      public var §-!g§:§?!R§;
      
      public var §7]§:Boolean = false;
      
      private var §5!-§:§?,§;
      
      private var §@!`§:Sprite;
      
      protected var §&!=§:§]![§;
      
      protected var §&!N§:§2Z§ = null;
      
      private var §''§:EventDispatcher;
      
      private var §24§:Array;
      
      private var §1!§:Array;
      
      protected var §1l§:§do§;
      
      private var §>!"§:§ 6§;
      
      protected var §"!,§:§<!'§;
      
      protected var §"!H§:§2^§;
      
      private var §3!T§:§5a§;
      
      private var §'@§:§5a§;
      
      private var §+I§:§5a§;
      
      private var §]n§:Stage;
      
      private var §6x§:§+5§;
      
      protected var §3!§:§+;§;
      
      protected var §0X§:§+;§;
      
      protected var §'!H§:Number = 0.0;
      
      protected var §=!T§:String;
      
      private var §^U§:Boolean;
      
      protected var §"8§:Boolean;
      
      protected var §&8§:uint = 1.417339207E9;
      
      public var §?!!§:Boolean;
      
      public function §!!G§(param1:Stage)
      {
         this.§1!§ = [];
         super();
         this.§''§ = new EventDispatcher();
         this.§-!g§ = new §?!R§();
         this.§]n§ = param1;
         this.§"!,§ = §<!'§.§+j§;
         this.§"!H§ = this.initAnimationManager(this.§"!,§);
         this.§3!T§ = this.initThemeGraphicsManager();
         this.§'@§ = this.§03§();
         this.§+I§ = this.§!?§();
         var _loc2_:Stage3D = param1.stage3Ds[0];
         this.§1l§ = new §do§(§?,§,param1,new Rectangle(0,0,§+!Z§.§]?§,§+!Z§.§@+§),_loc2_);
         §+!Z§.§6"§.addEventListener(Event.ENTER_FRAME,this.§1l§.§1+§);
         _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§<g§,false,0,true);
         this.§1l§.simulateMultitouch = false;
         this.§1l§.enableErrorChecking = false;
         this.§1l§.§1!U§ = 2;
         this.§1l§.§!X§();
      }
      
      public static function §+!8§(param1:§,!&§, param2:§,!&§) : Number
      {
         var _loc3_:Number = param1.§0!4§ - param2.§0!4§;
         var _loc4_:Number = param1.§+!]§ - param2.§+!]§;
         return §[!=§(_loc3_,_loc4_);
      }
      
      public static function §[!=§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         if(!this.§@!`§ && this.§,O§)
         {
            this.§@!`§ = this.§5!-§.§+!o§;
         }
         return this.§@!`§;
      }
      
      public function get §,O§() : Sprite
      {
         if(!this.§5!-§)
         {
            this.§5!-§ = this.§1l§.§9!e§ as §?,§;
            this.§5!-§.§,!c§ = false;
         }
         return this.§5!-§;
      }
      
      private function get §&r§() : DisplayObject
      {
         if(this.§,O§)
         {
            return (this.§,O§ as §?,§).§&r§;
         }
         return null;
      }
      
      public function get animationManager() : §2^§
      {
         return this.§"!H§;
      }
      
      public function get textureManager() : §<!'§
      {
         return this.§"!,§;
      }
      
      public function get camera() : §8U§
      {
         return this.§]!P§;
      }
      
      public function get objects() : §?8§
      {
         return this.§79§;
      }
      
      public function get particles() : §'F§
      {
         return this.§7!0§;
      }
      
      public function get background() : §?k§
      {
         return this.§-B§;
      }
      
      public function get slingshot() : §7!4§
      {
         return this.§4!4§;
      }
      
      public function get activeObject() : §,!&§
      {
         return this.§@-§;
      }
      
      public function get §9!R§() : §%t§
      {
         return this.§4!+§;
      }
      
      public function get stage() : Stage
      {
         return this.§]n§;
      }
      
      public function get § get§() : §5a§
      {
         return this.§+I§;
      }
      
      protected function get §>!A§() : §5a§
      {
         return this.§3!T§;
      }
      
      public function set activeObject(param1:§,!&§) : void
      {
         this.§@-§ = param1;
      }
      
      public function set §2!4§(param1:Boolean) : void
      {
         this.§"8§ = param1;
      }
      
      public function clear() : void
      {
         if(this.§>!"§)
         {
            this.§>!"§.dispose();
         }
         if(this.§"!,§)
         {
            this.§"!,§.dispose();
         }
         if(this.§3!T§ && this.§3!T§.textureManager)
         {
            this.§3!T§.textureManager.dispose();
         }
         if(this.§+I§ && this.§+I§.textureManager)
         {
            this.§+I§.textureManager.dispose();
         }
         if(this.§1l§)
         {
            this.§1l§.dispose();
         }
      }
      
      protected function initThemeGraphicsManager() : §5a§
      {
         return null;
      }
      
      protected function §03§() : §5a§
      {
         return null;
      }
      
      protected function §!?§() : §5a§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§<!'§) : §2^§
      {
         return new §2^§(param1);
      }
      
      public function §,!7§(param1:Boolean) : void
      {
         if(§do§.§4!G§)
         {
            if(param1)
            {
               §do§.§4!G§.start();
            }
            else
            {
               §do§.§4!G§.stop();
               §do§.§4!G§.color = 0;
            }
         }
      }
      
      public function §#!Z§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function setController(param1:§2Z§) : void
      {
         if(this.§&!N§ != null)
         {
            this.§&!N§.removeEventListeners();
         }
         this.§&!N§ = param1;
         if(this.mReadyToRun)
         {
            this.§&!N§.addEventListeners();
         }
      }
      
      public function §]A§() : §+;§
      {
         return this.§3!§;
      }
      
      public function §9!i§(param1:§ 6§, param2:Array, param3:Function) : void
      {
         this.§>!"§ = param1;
         var _loc4_:int = this.§>!"§.§,!H§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§"!,§.§;t§(this.§>!"§.§-g§(_loc5_));
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§''§.addEventListener(Event.INIT,param3);
            this.§1!§.push(param3);
         }
         if(this.§4!a§(param2))
         {
            this.§^!S§();
         }
      }
      
      private function §4!a§(param1:Array) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.§"!,§.§-!#§())
         {
            _loc2_ = this.§"!,§.§"J§ / 1000;
            _loc3_ = this.§"!,§.§ p§ / 1000;
            §<!7§.log("\n\nMain texture manager memory usage:\n   textures " + _loc2_ + " kilobytes\n   bitmaps " + _loc3_ + " kilobytes\n\n");
            this.initializeAnimations(param1);
            return true;
         }
         this.§24§ = param1.concat();
         return false;
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         this.§"!H§.initializeAnimations(param1);
      }
      
      private function §<g§(param1:Event) : void
      {
         this.§"!,§.§ !;§();
         if(this.§>!A§ && this.§>!A§.textureManager)
         {
            this.§>!A§.textureManager.§ !;§();
         }
         if(this.§ get§ && this.§ get§.textureManager)
         {
            this.§ get§.textureManager.§ !;§();
         }
         if(this.§24§)
         {
            this.§4!a§(this.§24§);
            this.§24§ = null;
            this.§^!S§();
         }
         if(this.§&!N§ != null && this.mReadyToRun)
         {
            this.§&!N§.addEventListeners();
         }
         if(this.§3!T§)
         {
            this.§3!T§.§-!#§();
         }
         if(this.§+I§)
         {
            if(this.§+I§.textureManager)
            {
               this.§+I§.textureManager.§ !;§();
               this.§+I§.§-!#§();
            }
         }
      }
      
      private function §^!S§() : void
      {
         this.§''§.dispatchEvent(new Event(Event.INIT));
         this.§!!H§();
      }
      
      private function §!!H§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§1!§)
         {
            this.§''§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§1!§ = [];
      }
      
      public function init(param1:§]![§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§4!+§ = new §%t§(this,param1);
         this.§]!P§ = this.initLevelCamera(param1);
         this.§4!2§ = 0;
         this.§=!N§ = 0;
         this.§,+§ = 0;
         this.§^U§ = false;
         this.mReadyToRun = false;
         this.§3R§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         §#s§ = param1.theme;
         this.§&!=§ = param1;
         this.§6!n§ = this.§=!V§(param1.theme);
         this.§'!l§ = this.§0a§(param1.theme);
         if(this.§6!n§ && this.§'!l§)
         {
            this.initialize(param1);
         }
         else
         {
            this.§=!5§(param1.theme);
         }
         this.initReplay();
         §4S§.init();
      }
      
      protected function initReplay() : void
      {
         this.§3!§ = new §+;§(§^d§.§@P§);
      }
      
      protected function §=!V§(param1:String) : Boolean
      {
         if(this.§3!T§)
         {
            return false;
         }
         return true;
      }
      
      protected function §0a§(param1:String) : Boolean
      {
         var _loc2_:§'m§ = null;
         if(this.§'@§)
         {
            _loc2_ = §[!L§.§4!7§(param1);
            if(_loc2_)
            {
               if(_loc2_.§;!Q§ && !this.§'@§.§^[§(_loc2_.§;!Q§))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function §=!5§(param1:String) : void
      {
         var _loc2_:§'m§ = null;
         if(this.§3!T§ && !this.§=!V§(param1))
         {
            this.§3!T§.removeEventListener(Event.COMPLETE,this.§`!1§);
            this.§3!T§.removeEventListener(Event.CANCEL,this.§2K§);
            this.§3!T§.addEventListener(Event.COMPLETE,this.§`!1§);
            this.§3!T§.addEventListener(Event.CANCEL,this.§2K§);
            this.§3!T§.§[b§(param1);
         }
         if(this.§'@§ && !this.§0a§(param1))
         {
            this.§'@§.removeEventListener(Event.COMPLETE,this.§4!R§);
            this.§'@§.removeEventListener(Event.CANCEL,this.§^!=§);
            this.§'@§.addEventListener(Event.COMPLETE,this.§4!R§);
            this.§'@§.addEventListener(Event.CANCEL,this.§^!=§);
            _loc2_ = §[!L§.§4!7§(param1);
            if(_loc2_)
            {
               this.§'@§.§[b§(_loc2_.§;!Q§);
            }
         }
      }
      
      private function §`!1§(param1:Event) : void
      {
         this.§3!T§.removeEventListener(Event.COMPLETE,this.§`!1§);
         this.§3!T§.removeEventListener(Event.CANCEL,this.§2K§);
         this.§6!n§ = true;
         if(this.§6!n§ && this.§'!l§)
         {
            this.initialize(this.§&!=§);
         }
      }
      
      private function §2K§(param1:Event) : void
      {
         this.§3!T§.removeEventListener(Event.COMPLETE,this.§`!1§);
         this.§3!T§.removeEventListener(Event.CANCEL,this.§2K§);
         this.§3R§ = true;
      }
      
      private function §4!R§(param1:Event) : void
      {
         this.§3!T§.removeEventListener(Event.COMPLETE,this.§4!R§);
         this.§3!T§.removeEventListener(Event.CANCEL,this.§^!=§);
         this.§'!l§ = true;
         if(this.§6!n§ && this.§'!l§)
         {
            this.initialize(this.§&!=§);
         }
      }
      
      private function §^!=§(param1:Event) : void
      {
         this.§3!T§.removeEventListener(Event.COMPLETE,this.§4!R§);
         this.§3!T§.removeEventListener(Event.CANCEL,this.§^!=§);
         this.§'!l§ = true;
         if(this.§6!n§ && this.§'!l§)
         {
            this.initialize(this.§&!=§);
         }
      }
      
      public function get backgroundTextureManager() : §<!'§
      {
         return this.§"!,§;
      }
      
      protected function initialize(param1:§]![§) : void
      {
         this.§"8§ = false;
         this.§?!!§ = false;
         if(§do§.§]X§)
         {
            §do§.§]X§.speed = 1;
         }
         this.mLevelEngine = new §95§(this);
         this.§-B§ = this.initLevelBackground(param1.theme,this.§4!+§.§@Y§ / § !E§,this.backgroundTextureManager,this.§]!P§.§>!?§());
         this.§-B§.§%S§(§+!Z§.§@!U§());
         this.§79§ = this.initLevelObjectManager(param1);
         this.§4!4§ = this.initLevelSlingshot(param1);
         this.§7!0§ = this.initParticleManager(this.§"!H§,this.§"!,§);
         this.§]!P§.init();
         this.§=B§();
         this.loadPreviousReplayData();
         this.mReadyToRun = true;
         if(this.§&!N§)
         {
            this.§&!N§.addEventListeners();
         }
      }
      
      protected function loadPreviousReplayData() : void
      {
         if(this.§=!T§)
         {
            this.§0X§ = §+;§.initialize(this.§=!T§);
            this.§0X§.speed = 1;
            this.§0X§.play();
            this.§'!H§ = -1000;
            this.§=!T§ = null;
         }
      }
      
      public function §6a§(param1:String) : void
      {
         this.§=!T§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§0X§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§0X§)
         {
            if(param1)
            {
               this.§0X§.speed = Math.min(this.§0X§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§0X§.speed = Math.max(this.§0X§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§0X§)
         {
            this.§0X§.speed = 1;
         }
      }
      
      protected function initLevelObjectManager(param1:§]![§) : §?8§
      {
         return new §?8§(this,param1,new Sprite());
      }
      
      protected function initLevelCamera(param1:§]![§) : §8U§
      {
         return new §8U§(this,param1);
      }
      
      protected function initLevelBackground(param1:String, param2:Number, param3:§<!'§, param4:Number) : §?k§
      {
         return new §?k§(param1,param2,param3,param4);
      }
      
      protected function initLevelSlingshot(param1:§]![§) : §7!4§
      {
         return new §7!4§(this,param1,new Sprite());
      }
      
      protected function initParticleManager(param1:§2^§, param2:§<!'§) : §'F§
      {
         return new §'F§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§]![§ = this.preProcessLevel();
         var _loc4_:§>6§;
         (_loc4_ = new §>6§()).left = 0;
         _loc4_.top = -§8U§.§,T§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §8U§.§,T§;
         _loc4_.right = _loc4_.left + §8U§.§,!!§;
         _loc4_.y = -13.929;
         _loc4_.x = §8U§.§,!!§;
         _loc4_.id = §8U§.§`! §;
         _loc3_.§[!B§(_loc4_);
         var _loc5_:§>6§;
         (_loc5_ = new §>6§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §8U§.§,!!§;
         _loc5_.bottom = _loc5_.top + §8U§.§,T§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §8U§.§,!!§ / 2;
         _loc5_.id = §8U§.§^!3§;
         _loc3_.§[!B§(_loc5_);
         this.§>W§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§#s§ != null)
         {
            _loc3_.theme = §#s§;
         }
         this.init(_loc3_);
      }
      
      protected function §>W§(param1:§]![§, param2:Boolean) : void
      {
         if(param2)
         {
            this.§#!J§(param1);
         }
      }
      
      protected function preProcessLevel() : §]![§
      {
         var _loc1_:§]![§ = new §]![§();
         _loc1_.§'!S§ = -12;
         return new §]![§();
      }
      
      protected function § _§() : Number
      {
         this.§&8§ ^= this.§&8§ << 21;
         this.§&8§ ^= this.§&8§ >>> 35;
         this.§&8§ ^= this.§&8§ << 4;
         return this.§&8§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §#!J§(param1:§]![§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§`!"§ = null;
         this.§&8§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§ _§() * 5;
               (_loc5_ = new §`!"§()).x = 30 + _loc3_ * 10 + this.§ _§() * 9;
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
                  _loc5_.angle = 45 - this.§ _§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§ _§() * 3 - _loc3_ * 8;
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
                  _loc5_.angle = this.§ _§() * 360;
               }
               param1.§'e§(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      private function §-S§() : void
      {
      }
      
      public function §=B§() : void
      {
         if(§?k§.§^!#§)
         {
            this.§3! §(this.§-B§.§]!E§,false);
         }
         this.§3! §(this.§7!0§.§3!1§(§'F§.§[!,§),false);
         this.§3! §(this.§7!0§.§3!1§(§'F§.§"^§),true);
         this.§3! §(this.§7!0§.§3!1§(§'F§.§+2§),true);
         this.§3! §(this.§79§.§7!l§,true);
         this.§3! §(this.§4!4§.sprite,true);
         this.§3! §(this.§7!0§.§3!1§(§'F§.§8e§),true);
         this.§3! §(this.§-B§.§>k§,false);
         if(§?k§.§^!#§)
         {
            this.§3! §(this.§-B§.§=$§,false);
         }
         this.§3! §(this.§7!0§.§3!1§(§'F§.§#!+§),true);
      }
      
      private function §3! §(param1:Sprite, param2:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(param1);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         param1 /= §+!Z§.§9!E§;
         param2 /= §+!Z§.§9!E§;
         _loc3_.x = (param1 / §8U§.§[!E§ + this.§]!P§.§7!O§ - §8U§.§[]§ / §8U§.§[!E§) * § !E§;
         _loc3_.y = (param2 / §8U§.§[!E§ + this.§]!P§.§3_§ - §8U§.§;!e§ / §8U§.§[!E§) * § !E§;
         return _loc3_;
      }
      
      public function §"=§(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / § !E§ + §8U§.§[]§ / §8U§.§[!E§ - this.§]!P§.§7!O§) * §8U§.§[!E§;
         _loc3_.y = (param2 / § !E§ + §8U§.§;!e§ / §8U§.§[!E§ - this.§]!P§.§3_§) * §8U§.§[!E§;
         var _loc4_:Number = Math.max(§+!Z§.§9!E§,§+!Z§.§4!k§);
         _loc3_.x *= _loc4_;
         _loc3_.y *= _loc4_;
         return _loc3_;
      }
      
      public function §'t§(param1:String, param2:Number, param3:Number) : void
      {
         this.§79§.§'e§(param1,param2,param3);
      }
      
      public function §<I§() : void
      {
         if(this.§&r§)
         {
            this.§&r§.visible = true;
            this.§&r§.alpha = 0;
         }
         this.§<!l§ = 0;
      }
      
      public function §-U§() : void
      {
         this.§6x§ = new §+5§(§6H§.§&!H§,§6H§.§%!m§);
      }
      
      public function §!E§() : void
      {
         this.§6x§ = null;
      }
      
      public function clearLevel() : void
      {
         if(this.§-B§)
         {
            this.§-B§.dispose();
            this.§-B§ = null;
         }
         if(this.§79§)
         {
            this.§79§.dispose();
            this.§79§ = null;
            this.§@-§ = null;
         }
         if(this.mLevelEngine)
         {
            if(!this.mLevelEngine.§8!^§)
            {
            }
            this.mLevelEngine.clear();
            this.mLevelEngine = null;
         }
         if(this.§4!+§)
         {
            this.§4!+§.clear();
            this.§4!+§ = null;
         }
         if(this.§4!4§)
         {
            this.§4!4§.dispose();
            this.§4!4§ = null;
         }
         if(this.§]!P§)
         {
            this.§]!P§.clear();
            this.§]!P§ = null;
         }
         if(this.§7!0§)
         {
            this.§7!0§.dispose();
            this.§7!0§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§4!2§ = 0;
         this.§=!N§ = 0;
         this.mReadyToRun = false;
         this.§^U§ = false;
         this.§<!l§ = §6H§.§9X§;
         if(this.§,O§)
         {
            (this.§,O§ as §?,§).§%z§.x = 0;
            (this.§,O§ as §?,§).§%z§.y = 0;
         }
         if(this.§&r§)
         {
            this.§&r§.visible = false;
         }
         this.§0X§ = null;
         this.§3!§ = null;
         if(this.§3!T§)
         {
            this.§3!T§.removeEventListener(Event.COMPLETE,this.§`!1§);
            this.§3!T§.removeEventListener(Event.CANCEL,this.§2K§);
         }
         if(this.§'@§)
         {
            this.§'@§.removeEventListener(Event.COMPLETE,this.§4!R§);
            this.§'@§.removeEventListener(Event.CANCEL,this.§^!=§);
         }
         this.§!!H§();
         if(§do§.§4!G§)
         {
            §do§.§4!G§.color = 0;
         }
         if(this.§&!N§)
         {
            this.§&!N§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver() : void
      {
      }
      
      public function §&!?§() : String
      {
         if(this.§3!§)
         {
            return this.§3!§.toString();
         }
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         if(!this.mReadyToRun || !§do§.§7X§())
         {
            return 0;
         }
         if(this.§0X§ && this.§0X§.§9! §)
         {
            return this.§=J§(param1,param2,param3);
         }
         return this.updateWithTime(param1,true,param2,param3);
      }
      
      protected function updateWithTime(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         if(this.§"8§)
         {
            param1 *= 0.2;
            if(§do§.§]X§)
            {
               §do§.§]X§.speed = 0.2;
            }
         }
         var _loc5_:Number = 0;
         this.§=!N§ += param1;
         if(param3)
         {
            this.§4!2§ += param1;
            _loc5_ = this.mLevelEngine.§`y§(this.§4!2§);
            this.§4!4§.update(param1,param4);
            this.§4!2§ = _loc5_;
         }
         else
         {
            this.§79§.§#!T§(param1);
            this.§4!2§ = 0;
         }
         if(param2)
         {
            this.§96§(param1,_loc5_);
         }
         return param1;
      }
      
      private function §=J§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc5_:Number = NaN;
         var _loc4_:Number = §95§.§;E§ * 1000;
         if(this.§0X§)
         {
            param1 *= this.§0X§.speed;
            _loc5_ = this.§=!N§ + param1;
            while(this.§=!N§ + _loc4_ < _loc5_)
            {
               if(this.§=!N§ + _loc4_ > this.§'!H§)
               {
                  this.§0X§.step(this);
                  this.§'!H§ += _loc4_;
               }
               this.updateWithTime(_loc4_,false,param2,param3);
            }
            if(_loc5_ > this.§'!H§ + _loc4_)
            {
               this.§0X§.step(this);
               this.§'!H§ += _loc4_;
            }
            if(this.§=!N§ < _loc5_)
            {
               this.updateWithTime(_loc5_ - this.§=!N§,true,param2,param3);
            }
            return param1;
         }
         return this.updateWithTime(_loc4_,true,param2,param3);
      }
      
      private function §96§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.§-B§.update(param1);
         this.§79§.§4Q§(param1,param2);
         this.§1!@§();
         if(this.§<!l§ < §6H§.§9X§)
         {
            this.§<!l§ += param1;
            _loc3_ = §6H§.§9X§ / 2;
            _loc4_ = (-Math.abs(this.§<!l§ - _loc3_) + _loc3_) * (§6H§.§8C§ / _loc3_);
            if(this.§&r§)
            {
               this.§&r§.alpha = _loc4_;
            }
         }
         else if(this.§&r§)
         {
            this.§&r§.visible = false;
         }
         if(this.§6x§)
         {
            if(!this.§6x§.§+E§(this.§]!P§,param1))
            {
               this.§!E§();
            }
         }
         this.§]!P§.§>!6§(param1);
         this.mLevelEngine.§[h§();
         this.§7!0§.update(param1);
      }
      
      public function handleEngineUpdateStep(param1:Number) : void
      {
         this.objects.§#!T§(param1 * 1000);
         this.objects.updateLevelObjectsComplete(param1 * 1000);
         this.§<K§();
      }
      
      public function §1!@§() : void
      {
         var _loc1_:§,!&§ = null;
         if(this.§=!N§ > this.§,+§ + 1000 / 30)
         {
            if(this.§`!G§ != null)
            {
               for each(_loc1_ in this.§`!G§)
               {
                  _loc1_.addTrail();
               }
            }
            this.§,+§ = this.§=!N§;
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§,!&§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.§79§.isPigsAlive(true))
            {
               _loc2_ = this.§79§.§<!o§(true);
               _loc2_.§<i§.mTryToScream = §+!+§.§'!0§;
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§79§.§,S§());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            if(this.§79§.isPigsAlive(true))
            {
               _loc2_ = this.§79§.§<!o§(true);
               _loc2_.§<i§.mTryToBlink = §+!+§.§6!;§;
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§79§.§,S§());
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §9!-§.§ !7§;
         }
         §4S§.addScore(param1,param2);
         this.§&!N§.addScore(param1);
         if(param3 && param1 > 0 && !this.§?!!§)
         {
            this.§"Y§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §"Y§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §9!-§.§2!S§;
         }
         this.§7!0§.§]!5§(§9!-§.§]!3§,§'F§.§#!+§,§9!-§.§,!]§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §'!V§(param1:§,!&§) : void
      {
         if(this.§`!G§ == null)
         {
            this.§`!G§ = new Array();
         }
         this.§`!G§.push(param1);
      }
      
      public function §9!9§() : void
      {
         this.§4!4§.§9!9§();
         this.§79§.§var §();
         this.§?!!§ = true;
      }
      
      public function §7$§(param1:§,!&§) : void
      {
         this.§7!0§.§&6§(§'F§.§[!,§);
         if(this.§`!G§.indexOf(param1) >= 0)
         {
            this.§`!G§.splice(this.§`!G§.indexOf(param1),1);
         }
         if(this.§`!G§.length == 0)
         {
            this.§`!G§ = null;
         }
      }
      
      public function §<V§(param1:§&E§, param2:Number, param3:Number) : void
      {
         this.§@-§ = this.§79§.§'e§(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
         var _loc4_:Number = param1.name.toUpperCase() == "BIRD_GREEN" ? Number(§7!4§.BIRD_LAUNCH_FORCE_GREEN) : Number(§7!4§.BIRD_LAUNCH_FORCE);
         if(param1.§8!&§ > 1)
         {
            this.§@-§.§]i§(param1.§8!&§);
            this.§@-§.§<i§.§8!f§();
         }
         if(param1.§0!-§ != 0)
         {
            _loc4_ = param1.§0!-§;
         }
         var _loc5_:Number = -_loc4_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc6_:Number = _loc4_ * param2 * Math.sin(param3 / (180 / Math.PI));
         this.§@-§.§%!o§(new b2Vec2(_loc5_,_loc6_),false,true);
         this.camera.setAction(§8U§.§@!m§);
         if(this.§3!§)
         {
            this.§3!§.§<V§(this.mLevelEngine.§,!§,param1.x,param1.y,param2,param3);
         }
      }
      
      public function activatePowerup() : void
      {
         this.§^U§ = true;
      }
      
      private function §<K§() : void
      {
         if(!this.§^U§)
         {
            return;
         }
         this.§^U§ = false;
         if(this.activeObject is §1L§ && !(this.activeObject as §1L§).§=!h§)
         {
            if(this.activeObject.activateSpecialPower(this.§5G§))
            {
               this.§7]§ = true;
            }
         }
         else
         {
            this.§79§.§<f§();
         }
         if(this.§3!§)
         {
            this.§3!§.§&!$§(this.mLevelEngine.§,!§);
         }
      }
      
      public function §=T§() : void
      {
         this.§79§.§=T§();
      }
      
      public function §[!M§() : void
      {
         this.§79§.§'s§();
      }
      
      public function §]1§() : §]![§
      {
         var _loc1_:§]![§ = new §]![§();
         _loc1_.§&!W§ = this.§&!=§.§&!W§;
         _loc1_.§>!Y§ = this.§&!=§.§>!Y§;
         this.§]!P§.§=K§(_loc1_);
         this.§79§.§=!]§(_loc1_);
         this.§4!4§.§"!h§(_loc1_);
         _loc1_.theme = this.§-B§.§;X§();
         return _loc1_;
      }
      
      public function §6!A§() : int
      {
         return this.§&!=§.§>!Y§;
      }
      
      public function §#x§() : int
      {
         return this.§&!=§.§&!W§;
      }
      
      public function § !Q§(param1:int) : void
      {
         this.§&!=§.§>!Y§ = param1;
      }
      
      public function §9y§(param1:int) : void
      {
         this.§&!=§.§&!W§ = param1;
      }
      
      public function §8!6§(param1:Number, param2:Number) : void
      {
         if(this.§5!-§)
         {
            this.§5!-§.§2!h§(param1,param2);
         }
         if(this.§]!P§)
         {
            this.§]!P§.§>!6§(0);
         }
      }
      
      public function get §9!2§() : §]![§
      {
         return this.§&!=§;
      }
      
      public function get §5G§() : §?8§
      {
         return this.§79§;
      }
      
      protected function get §7!+§() : §do§
      {
         return this.§1l§;
      }
      
      public function get §#E§() : int
      {
         return §,!G§;
      }
   }
}
