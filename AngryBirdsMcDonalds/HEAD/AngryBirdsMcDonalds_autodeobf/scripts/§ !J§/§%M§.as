package § !J§
{
   import §!_§.§7!m§;
   import §!_§.§<C§;
   import §#!1§.§=?§;
   import §%%§.§3P§;
   import §'+§.§1u§;
   import §+S§.b2Vec2;
   import §,4§.§%!r§;
   import §,4§.§0B§;
   import §,4§.§;_§;
   import §,4§.§<f§;
   import §-R§.;
   import §-h§.§4!H§;
   import §4j§.§0K§;
   import §4j§.§9M§;
   import §4j§.§?!c§;
   import §4j§.§@!K§;
   import §7F§.§2M§;
   import §8]§.§^Q§;
   import §9`§.§"!5§;
   import §9`§.§#U§;
   import §9`§.§3f§;
   import §=!9§.§?4§;
   import §?!d§.§-E§;
   import §@l§.§6!3§;
   import §[!B§.§,]§;
   import §[!B§.§7!N§;
   import §`!n§.DisplayObject;
   import §`!n§.Sprite;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §%M§
   {
      
      private static const §2J§:int = 20;
      
      public static const §"t§:Number = §2M§.§&a§;
      
      public static const §;z§:Number = §2M§.§0Z§;
      
      public static const §'!Y§:Number = 1 / 20;
      
      public static const §^!R§:Number = §2M§.§0Z§ * §'!Y§;
      
      public static const §,^§:Number = §"t§ * §'!Y§;
      
      public static const §#!N§:§=?§ = new §=?§(13 - 3);
      
      public static var §0b§:Number = 1;
      
      protected static var §9N§:String = §0B§.§'Z§;
       
      
      protected var §5t§:§0K§;
      
      private var §7e§:§9M§;
      
      private var §1!F§:Array = null;
      
      protected var §5!]§:§#4§;
      
      public var mLevelEngine:§=a§;
      
      protected var §^r§:§0!!§;
      
      protected var §3!n§:§-E§;
      
      protected var §-!_§:§`+§;
      
      protected var §0!i§:§7!N§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §^9§:Boolean = false;
      
      protected var §>!o§:Boolean = false;
      
      protected var §9!q§:Boolean = false;
      
      public var §6B§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §2!^§:Number;
      
      public var §>b§:Number;
      
      private var §55§:Number;
      
      public var §&!A§:§%!r§;
      
      public var §5L§:Boolean = false;
      
      private var §"!3§:§7!p§;
      
      private var §[o§:Sprite;
      
      protected var §]s§:§0B§;
      
      protected var §@!C§:§4!H§ = null;
      
      private var §[p§:EventDispatcher;
      
      private var § !^§:Array;
      
      private var § O§:Array;
      
      protected var §7S§:§3P§;
      
      private var §?!l§:§^Q§;
      
      protected var §9k§:§#U§;
      
      protected var §;,§:§3f§;
      
      private var § do§:§"!5§;
      
      private var §34§:§"!5§;
      
      private var §[!a§:§"!5§;
      
      private var §]4§:Stage;
      
      private var §!!F§:§,_§;
      
      protected var §@!§:§6!3§;
      
      protected var §^!c§:§6!3§;
      
      protected var §%d§:Number = 0.0;
      
      protected var §^!8§:String;
      
      private var §"!F§:Boolean;
      
      protected var §finally§:Boolean;
      
      protected var §^!d§:uint = 1.417339207E9;
      
      public var §]!i§:Boolean;
      
      public function §%M§(param1:Stage)
      {
         this.§ O§ = [];
         super();
         this.§[p§ = new EventDispatcher();
         this.§&!A§ = new §%!r§();
         this.§]4§ = param1;
         this.§9k§ = §#U§.§5!!§;
         this.§;,§ = this.initAnimationManager(this.§9k§);
         this.§ do§ = this.initThemeGraphicsManager();
         this.§34§ = this.§&!5§();
         this.§[!a§ = this.§[r§();
         var _loc2_:Stage3D = param1.stage3Ds[0];
         this.§7S§ = new §3P§(§7!p§,param1,new Rectangle(0,0,§2M§.§&a§,§2M§.§0Z§),_loc2_);
         §2M§.§%!=§.addEventListener(Event.ENTER_FRAME,this.§7S§.§'V§);
         _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§3!i§,false,0,true);
         this.§7S§.simulateMultitouch = false;
         this.§7S§.enableErrorChecking = false;
         this.§7S§.§;Z§ = 2;
         this.§7S§.§7R§();
      }
      
      public static function §^!g§(param1:§9M§, param2:§9M§) : Number
      {
         var _loc3_:Number = param1.§%J§ - param2.§%J§;
         var _loc4_:Number = param1.§-!S§ - param2.§-!S§;
         return §?!U§(_loc3_,_loc4_);
      }
      
      public static function §?!U§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         if(!this.§[o§ && this.§+;§)
         {
            this.§[o§ = this.§"!3§.§"F§;
         }
         return this.§[o§;
      }
      
      public function get §+;§() : Sprite
      {
         if(!this.§"!3§)
         {
            this.§"!3§ = this.§7S§.§1Y§ as §7!p§;
            this.§"!3§.§77§ = false;
         }
         return this.§"!3§;
      }
      
      private function get §1v§() : DisplayObject
      {
         if(this.§+;§)
         {
            return (this.§+;§ as §7!p§).§1v§;
         }
         return null;
      }
      
      public function get animationManager() : §3f§
      {
         return this.§;,§;
      }
      
      public function get textureManager() : §#U§
      {
         return this.§9k§;
      }
      
      public function get camera() : §-E§
      {
         return this.§3!n§;
      }
      
      public function get objects() : §0K§
      {
         return this.§5t§;
      }
      
      public function get particles() : §7!N§
      {
         return this.§0!i§;
      }
      
      public function get background() : §#4§
      {
         return this.§5!]§;
      }
      
      public function get slingshot() : §`+§
      {
         return this.§-!_§;
      }
      
      public function get activeObject() : §9M§
      {
         return this.§7e§;
      }
      
      public function get §"6§() : §0!!§
      {
         return this.§^r§;
      }
      
      public function get stage() : Stage
      {
         return this.§]4§;
      }
      
      public function get §`0§() : §"!5§
      {
         return this.§[!a§;
      }
      
      protected function get §&!c§() : §"!5§
      {
         return this.§ do§;
      }
      
      public function set activeObject(param1:§9M§) : void
      {
         this.§7e§ = param1;
      }
      
      public function set §1#§(param1:Boolean) : void
      {
         this.§finally§ = param1;
      }
      
      public function clear() : void
      {
         if(this.§?!l§)
         {
            this.§?!l§.dispose();
         }
         if(this.§9k§)
         {
            this.§9k§.dispose();
         }
         if(this.§ do§ && this.§ do§.textureManager)
         {
            this.§ do§.textureManager.dispose();
         }
         if(this.§[!a§ && this.§[!a§.textureManager)
         {
            this.§[!a§.textureManager.dispose();
         }
         if(this.§7S§)
         {
            this.§7S§.dispose();
         }
      }
      
      protected function initThemeGraphicsManager() : §"!5§
      {
         return null;
      }
      
      protected function §&!5§() : §"!5§
      {
         return null;
      }
      
      protected function §[r§() : §"!5§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§#U§) : §3f§
      {
         return new §3f§(param1);
      }
      
      public function §9!=§(param1:Boolean) : void
      {
         if(§3P§.§6_§)
         {
            if(param1)
            {
               §3P§.§6_§.start();
            }
            else
            {
               §3P§.§6_§.stop();
               §3P§.§6_§.color = 0;
            }
         }
      }
      
      public function §4<§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function §!!>§() : §4!H§
      {
         return this.§@!C§;
      }
      
      public function setController(param1:§4!H§) : void
      {
         if(this.§@!C§ != null)
         {
            this.§@!C§.removeEventListeners();
         }
         this.§@!C§ = param1;
         if(this.mReadyToRun)
         {
            this.§@!C§.addEventListeners();
         }
      }
      
      public function §'!<§() : §6!3§
      {
         return this.§@!§;
      }
      
      public function §<!C§(param1:§^Q§, param2:Array, param3:Function) : void
      {
         this.§?!l§ = param1;
         var _loc4_:int = this.§?!l§.§=N§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§9k§.§7!2§(this.§?!l§.§,!5§(_loc5_));
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§[p§.addEventListener(Event.INIT,param3);
            this.§ O§.push(param3);
         }
         if(this.§4!0§(param2))
         {
            this.§%1§();
         }
      }
      
      private function §4!0§(param1:Array) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.§9k§.§;!K§())
         {
            _loc2_ = this.§9k§.§'h§ / 1000;
            _loc3_ = this.§9k§.§3`§ / 1000;
            §1u§.log("\n\nMain texture manager memory usage:\n   textures " + _loc2_ + " kilobytes\n   bitmaps " + _loc3_ + " kilobytes\n\n");
            this.initializeAnimations(param1);
            return true;
         }
         this.§ !^§ = param1.concat();
         return false;
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         this.§;,§.initializeAnimations(param1);
      }
      
      private function §3!i§(param1:Event) : void
      {
         this.§9k§.§,k§();
         if(this.§&!c§ && this.§&!c§.textureManager)
         {
            this.§&!c§.textureManager.§,k§();
         }
         if(this.§`0§ && this.§`0§.textureManager)
         {
            this.§`0§.textureManager.§,k§();
         }
         if(this.§ !^§)
         {
            this.§4!0§(this.§ !^§);
            this.§ !^§ = null;
            this.§%1§();
         }
         if(this.§@!C§ != null && this.mReadyToRun)
         {
            this.§@!C§.addEventListeners();
         }
         if(this.§ do§)
         {
            this.§ do§.§;!K§();
         }
         if(this.§[!a§)
         {
            if(this.§[!a§.textureManager)
            {
               this.§[!a§.textureManager.§,k§();
               this.§[!a§.§;!K§();
            }
         }
      }
      
      private function §%1§() : void
      {
         this.§[p§.dispatchEvent(new Event(Event.INIT));
         this.§3[§();
      }
      
      private function §3[§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§ O§)
         {
            this.§[p§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§ O§ = [];
      }
      
      public function init(param1:§0B§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§^r§ = new §0!!§(this,param1);
         this.§3!n§ = this.initLevelCamera(param1);
         this.§2!^§ = 0;
         this.§>b§ = 0;
         this.§55§ = 0;
         this.§"!F§ = false;
         this.mReadyToRun = false;
         this.§^9§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         §9N§ = param1.theme;
         this.§]s§ = param1;
         this.§>!o§ = this.§-t§(param1.theme);
         this.§9!q§ = this.§&`§(param1.theme);
         if(this.§>!o§ && this.§9!q§)
         {
            this.initialize(param1);
         }
         else
         {
            this.§-!I§(param1.theme);
         }
         this.initReplay();
         §[m§.init();
      }
      
      protected function initReplay() : void
      {
         this.§@!§ = new §6!3§(§;_§.§2!Q§);
      }
      
      protected function §-t§(param1:String) : Boolean
      {
         if(this.§ do§)
         {
            return false;
         }
         return true;
      }
      
      protected function §&`§(param1:String) : Boolean
      {
         var _loc2_:§<C§ = null;
         if(this.§34§)
         {
            _loc2_ = §7!m§.§;]§(param1);
            if(_loc2_)
            {
               if(_loc2_.§9!!§ && !this.§34§.§?!5§(_loc2_.§9!!§))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function §-!I§(param1:String) : void
      {
         var _loc2_:§<C§ = null;
         if(this.§ do§ && !this.§-t§(param1))
         {
            this.§ do§.removeEventListener(Event.COMPLETE,this.§7!"§);
            this.§ do§.removeEventListener(Event.CANCEL,this.§3+§);
            this.§ do§.addEventListener(Event.COMPLETE,this.§7!"§);
            this.§ do§.addEventListener(Event.CANCEL,this.§3+§);
            this.§ do§.§;! §(param1);
         }
         if(this.§34§ && !this.§&`§(param1))
         {
            this.§34§.removeEventListener(Event.COMPLETE,this.§7c§);
            this.§34§.removeEventListener(Event.CANCEL,this.§,I§);
            this.§34§.addEventListener(Event.COMPLETE,this.§7c§);
            this.§34§.addEventListener(Event.CANCEL,this.§,I§);
            _loc2_ = §7!m§.§;]§(param1);
            if(_loc2_)
            {
               this.§34§.§;! §(_loc2_.§9!!§);
            }
         }
      }
      
      private function §7!"§(param1:Event) : void
      {
         this.§ do§.removeEventListener(Event.COMPLETE,this.§7!"§);
         this.§ do§.removeEventListener(Event.CANCEL,this.§3+§);
         this.§>!o§ = true;
         if(this.§>!o§ && this.§9!q§)
         {
            this.initialize(this.§]s§);
         }
      }
      
      private function §3+§(param1:Event) : void
      {
         this.§ do§.removeEventListener(Event.COMPLETE,this.§7!"§);
         this.§ do§.removeEventListener(Event.CANCEL,this.§3+§);
         this.§^9§ = true;
      }
      
      private function §7c§(param1:Event) : void
      {
         this.§ do§.removeEventListener(Event.COMPLETE,this.§7c§);
         this.§ do§.removeEventListener(Event.CANCEL,this.§,I§);
         this.§9!q§ = true;
         if(this.§>!o§ && this.§9!q§)
         {
            this.initialize(this.§]s§);
         }
      }
      
      private function §,I§(param1:Event) : void
      {
         this.§ do§.removeEventListener(Event.COMPLETE,this.§7c§);
         this.§ do§.removeEventListener(Event.CANCEL,this.§,I§);
         this.§9!q§ = true;
         if(this.§>!o§ && this.§9!q§)
         {
            this.initialize(this.§]s§);
         }
      }
      
      public function get backgroundTextureManager() : §#U§
      {
         return this.§9k§;
      }
      
      protected function initialize(param1:§0B§) : void
      {
         this.§finally§ = false;
         this.§]!i§ = false;
         if(§3P§.§;m§)
         {
            §3P§.§;m§.speed = 1;
         }
         this.mLevelEngine = new §=a§(this);
         this.§5!]§ = this.initLevelBackground(param1.theme,this.§^r§.§[! § / §'!Y§,this.backgroundTextureManager,this.§3!n§.§#!T§());
         this.§5!]§.§95§(§2M§.§!=§());
         this.§5t§ = this.initLevelObjectManager(param1);
         this.§-!_§ = this.initLevelSlingshot(param1);
         this.§0!i§ = this.initParticleManager(this.§;,§,this.§9k§);
         this.§3!n§.init();
         this.§!!f§();
         this.loadPreviousReplayData();
         this.mReadyToRun = true;
         if(this.§@!C§)
         {
            this.§@!C§.addEventListeners();
         }
      }
      
      protected function loadPreviousReplayData() : void
      {
         if(this.§^!8§)
         {
            this.§^!c§ = §6!3§.initialize(this.§^!8§);
            this.§^!c§.speed = 1;
            this.§^!c§.play();
            this.§%d§ = -1000;
            this.§^!8§ = null;
         }
      }
      
      public function §-j§(param1:String) : void
      {
         this.§^!8§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§^!c§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§^!c§)
         {
            if(param1)
            {
               this.§^!c§.speed = Math.min(this.§^!c§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§^!c§.speed = Math.max(this.§^!c§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§^!c§)
         {
            this.§^!c§.speed = 1;
         }
      }
      
      protected function initLevelObjectManager(param1:§0B§) : §0K§
      {
         return new §0K§(this,param1,new Sprite());
      }
      
      protected function initLevelCamera(param1:§0B§) : §-E§
      {
         return new §-E§(this,param1);
      }
      
      protected function initLevelBackground(param1:String, param2:Number, param3:§#U§, param4:Number) : §#4§
      {
         return new §#4§(param1,param2,param3,param4);
      }
      
      protected function initLevelSlingshot(param1:§0B§) : §`+§
      {
         return new §`+§(this,param1,new Sprite());
      }
      
      protected function initParticleManager(param1:§3f§, param2:§#U§) : §7!N§
      {
         return new §7!N§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§0B§ = this.preProcessLevel();
         var _loc4_:§<f§;
         (_loc4_ = new §<f§()).left = 0;
         _loc4_.top = -§-E§.§4!f§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §-E§.§4!f§;
         _loc4_.right = _loc4_.left + §-E§.§[!=§;
         _loc4_.y = -13.929;
         _loc4_.x = §-E§.§[!=§;
         _loc4_.id = §-E§.§^!N§;
         _loc3_.§+4§(_loc4_);
         var _loc5_:§<f§;
         (_loc5_ = new §<f§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §-E§.§[!=§;
         _loc5_.bottom = _loc5_.top + §-E§.§4!f§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §-E§.§[!=§ / 2;
         _loc5_.id = §-E§.§#F§;
         _loc3_.§+4§(_loc5_);
         this.§+!L§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§9N§ != null)
         {
            _loc3_.theme = §9N§;
         }
         this.init(_loc3_);
      }
      
      protected function §+!L§(param1:§0B§, param2:Boolean) : void
      {
         if(param2)
         {
            this.§+!,§(param1);
         }
      }
      
      protected function preProcessLevel() : §0B§
      {
         var _loc1_:§0B§ = new §0B§();
         _loc1_.§0!L§ = -12;
         return new §0B§();
      }
      
      protected function §2!e§() : Number
      {
         this.§^!d§ ^= this.§^!d§ << 21;
         this.§^!d§ ^= this.§^!d§ >>> 35;
         this.§^!d§ ^= this.§^!d§ << 4;
         return this.§^!d§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §+!,§(param1:§0B§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§?4§ = null;
         this.§^!d§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§2!e§() * 5;
               (_loc5_ = new §?4§()).x = 30 + _loc3_ * 10 + this.§2!e§() * 9;
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
                  _loc5_.angle = 45 - this.§2!e§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§2!e§() * 3 - _loc3_ * 8;
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
                  _loc5_.angle = this.§2!e§() * 360;
               }
               param1.§+"§(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      public function §!!f§() : void
      {
         if(§#4§.§]!C§)
         {
            this.§!3§(this.§5!]§.§@F§,false);
         }
         this.§!3§(this.§0!i§.§"!_§(§7!N§.§5!`§),false);
         this.§!3§(this.§0!i§.§"!_§(§7!N§.§<E§),true);
         this.§!3§(this.§0!i§.§"!_§(§7!N§.§-L§),true);
         this.§!3§(this.§5t§.§,!;§,true);
         this.§!3§(this.§-!_§.sprite,true);
         this.§!3§(this.§0!i§.§"!_§(§7!N§.§<!Z§),true);
         this.§!3§(this.§5!]§.§?!E§,false);
         if(§#4§.§]!C§)
         {
            this.§!3§(this.§5!]§.§@!L§,false);
         }
         this.§!3§(this.§0!i§.§"!_§(§7!N§.§=!U§),true);
      }
      
      protected function §!3§(param1:Sprite, param2:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(param1);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         param1 /= §2M§.§4f§;
         param2 /= §2M§.§4f§;
         _loc3_.x = (param1 / §-E§.§-$§ + this.§3!n§.§<!2§ - §-E§.§`!8§ / §-E§.§-$§) * §'!Y§;
         _loc3_.y = (param2 / §-E§.§-$§ + this.§3!n§.§=!K§ - §-E§.§%G§ / §-E§.§-$§) * §'!Y§;
         return _loc3_;
      }
      
      public function §-!-§(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / §'!Y§ + §-E§.§`!8§ / §-E§.§-$§ - this.§3!n§.§<!2§) * §-E§.§-$§;
         _loc3_.y = (param2 / §'!Y§ + §-E§.§%G§ / §-E§.§-$§ - this.§3!n§.§=!K§) * §-E§.§-$§;
         var _loc4_:Number = Math.max(§2M§.§4f§,§2M§.§50§);
         _loc3_.x *= _loc4_;
         _loc3_.y *= _loc4_;
         return _loc3_;
      }
      
      public function §3F§(param1:String, param2:Number, param3:Number) : void
      {
         this.§5t§.§+"§(param1,param2,param3);
      }
      
      public function §'! §() : void
      {
         if(this.§1v§)
         {
            this.§1v§.visible = true;
            this.§1v§.alpha = 0;
         }
         this.§6B§ = 0;
      }
      
      public function §&B§() : void
      {
         this.§!!F§ = new §,_§(§,![§.§=!D§,§,![§.§@!n§);
      }
      
      public function § ]§() : void
      {
         this.§!!F§ = null;
      }
      
      public function clearLevel() : void
      {
         if(this.§5!]§)
         {
            this.§5!]§.dispose();
            this.§5!]§ = null;
         }
         if(this.§5t§)
         {
            this.§5t§.dispose();
            this.§5t§ = null;
            this.§7e§ = null;
         }
         if(this.mLevelEngine)
         {
            if(!this.mLevelEngine.§3r§)
            {
            }
            this.mLevelEngine.clear();
            this.mLevelEngine = null;
         }
         if(this.§^r§)
         {
            this.§^r§.clear();
            this.§^r§ = null;
         }
         if(this.§-!_§)
         {
            this.§-!_§.dispose();
            this.§-!_§ = null;
         }
         if(this.§3!n§)
         {
            this.§3!n§.clear();
            this.§3!n§ = null;
         }
         if(this.§0!i§)
         {
            this.§0!i§.dispose();
            this.§0!i§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§2!^§ = 0;
         this.§>b§ = 0;
         this.mReadyToRun = false;
         this.§"!F§ = false;
         this.§6B§ = §,![§.§`S§;
         if(this.§+;§)
         {
            (this.§+;§ as §7!p§).§7!H§.x = 0;
            (this.§+;§ as §7!p§).§7!H§.y = 0;
         }
         if(this.§1v§)
         {
            this.§1v§.visible = false;
         }
         this.§^!c§ = null;
         this.§@!§ = null;
         if(this.§ do§)
         {
            this.§ do§.removeEventListener(Event.COMPLETE,this.§7!"§);
            this.§ do§.removeEventListener(Event.CANCEL,this.§3+§);
         }
         if(this.§34§)
         {
            this.§34§.removeEventListener(Event.COMPLETE,this.§7c§);
            this.§34§.removeEventListener(Event.CANCEL,this.§,I§);
         }
         this.§3[§();
         if(§3P§.§6_§)
         {
            §3P§.§6_§.color = 0;
         }
         if(this.§@!C§)
         {
            this.§@!C§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver() : void
      {
      }
      
      public function §^!5§() : String
      {
         if(this.§@!§)
         {
            return this.§@!§.toString();
         }
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         if(!this.mReadyToRun || !§3P§.§'j§())
         {
            return 0;
         }
         if(this.§^!c§ && this.§^!c§.§&!H§)
         {
            return this.§;M§(param1,param2,param3);
         }
         return this.updateWithTime(param1,true,param2,param3);
      }
      
      protected function updateWithTime(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         if(this.§finally§)
         {
            param1 *= 0.2;
            if(§3P§.§;m§)
            {
               §3P§.§;m§.speed = 0.2;
            }
         }
         var _loc5_:Number = 0;
         this.§>b§ += param1;
         if(param3)
         {
            this.§2!^§ += param1;
            _loc5_ = this.mLevelEngine.§6a§(this.§2!^§);
            this.§-!_§.update(param1,param4);
            this.§2!^§ = _loc5_;
         }
         else
         {
            this.§5t§.§]h§(param1);
            this.§2!^§ = 0;
         }
         if(param2)
         {
            this.§'!A§(param1,_loc5_);
         }
         return param1;
      }
      
      private function §;M§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc5_:Number = NaN;
         var _loc4_:Number = §=a§.§4![§ * 1000;
         if(this.§^!c§)
         {
            param1 *= this.§^!c§.speed;
            _loc5_ = this.§>b§ + param1;
            while(this.§>b§ + _loc4_ < _loc5_)
            {
               if(this.§>b§ + _loc4_ > this.§%d§)
               {
                  this.§^!c§.step(this);
                  this.§%d§ += _loc4_;
               }
               this.updateWithTime(_loc4_,false,param2,param3);
            }
            if(_loc5_ > this.§%d§ + _loc4_)
            {
               this.§^!c§.step(this);
               this.§%d§ += _loc4_;
            }
            if(this.§>b§ < _loc5_)
            {
               this.updateWithTime(_loc5_ - this.§>b§,true,param2,param3);
            }
            return param1;
         }
         return this.updateWithTime(_loc4_,true,param2,param3);
      }
      
      private function §'!A§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.§5!]§.update(param1);
         this.§5t§.§3'§(param1,param2);
         this.§1I§();
         if(this.§6B§ < §,![§.§`S§)
         {
            this.§6B§ += param1;
            _loc3_ = §,![§.§`S§ / 2;
            _loc4_ = (-Math.abs(this.§6B§ - _loc3_) + _loc3_) * (§,![§.§<!Q§ / _loc3_);
            if(this.§1v§)
            {
               this.§1v§.alpha = _loc4_;
            }
         }
         else if(this.§1v§)
         {
            this.§1v§.visible = false;
         }
         if(this.§!!F§)
         {
            if(!this.§!!F§.§!#§(this.§3!n§,param1))
            {
               this.§ ]§();
            }
         }
         this.§3!n§.§0z§(param1);
         this.mLevelEngine.§0!b§();
         this.§0!i§.update(param1);
      }
      
      public function handleEngineUpdateStep(param1:Number) : void
      {
         this.objects.§]h§(param1 * 1000);
         this.objects.updateLevelObjectsComplete(param1 * 1000);
         this.§8!i§();
      }
      
      public function §1I§() : void
      {
         var _loc1_:§9M§ = null;
         if(this.§>b§ > this.§55§ + 1000 / 30)
         {
            if(this.§1!F§ != null)
            {
               for each(_loc1_ in this.§1!F§)
               {
                  _loc1_.addTrail();
               }
            }
            this.§55§ = this.§>b§;
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§9M§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.§5t§.isPigsAlive(true))
            {
               _loc2_ = this.§5t§.§@!2§(true);
               if(_loc2_)
               {
                  _loc2_.§%!$§.mTryToScream = §?!c§.§%R§;
                  this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§5t§.§4!E§());
               }
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            if(this.§5t§.isPigsAlive(true))
            {
               _loc2_ = this.§5t§.§@!2§(true);
               if(_loc2_)
               {
                  _loc2_.§%!$§.mTryToBlink = §?!c§.§=$§;
                  this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§5t§.§4!E§());
               }
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §,]§.§7![§;
         }
         §[m§.addScore(param1,param2);
         this.§@!C§.addScore(param1);
         if(param3 && param1 > 0 && !this.§]!i§)
         {
            this.§;a§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §;a§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §,]§.§&!E§;
         }
         this.§0!i§.§3X§(§,]§.§-!O§,§7!N§.§=!U§,§,]§.§[!§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §&!S§(param1:§9M§) : void
      {
         if(this.§1!F§ == null)
         {
            this.§1!F§ = new Array();
         }
         this.§1!F§.push(param1);
      }
      
      public function §4G§() : void
      {
         this.§-!_§.§4G§();
         this.§5t§.§"!W§();
         this.§]!i§ = true;
      }
      
      public function §7g§(param1:§9M§) : void
      {
         this.§0!i§.§1!n§(§7!N§.§5!`§);
         if(this.§1!F§.indexOf(param1) >= 0)
         {
            this.§1!F§.splice(this.§1!F§.indexOf(param1),1);
         }
         if(this.§1!F§.length == 0)
         {
            this.§1!F§ = null;
         }
      }
      
      public function §@!q§(param1:§5u§, param2:Number, param3:Number) : void
      {
         this.§7e§ = this.§5t§.§+"§(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
         var _loc4_:Number = param1.name.toUpperCase() == "BIRD_GREEN" ? Number(§`+§.BIRD_LAUNCH_FORCE_GREEN) : Number(§`+§.BIRD_LAUNCH_FORCE);
         if(param1.§,!p§ > 1)
         {
            this.§7e§.§5!V§(param1.§,!p§);
            this.§7e§.§%!$§.§7;§();
         }
         if(param1.§5h§ != 0)
         {
            _loc4_ = param1.§5h§;
         }
         var _loc5_:Number = -_loc4_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc6_:Number = _loc4_ * param2 * Math.sin(param3 / (180 / Math.PI));
         this.§7e§.§>4§(new b2Vec2(_loc5_,_loc6_),false,true);
         this.camera.setAction(§-E§.§;!D§);
         if(this.§@!§)
         {
            this.§@!§.§@!q§(this.mLevelEngine.§<p§,param1.x,param1.y,param2,param3);
         }
      }
      
      public function activatePowerup() : void
      {
         this.§"!F§ = true;
      }
      
      private function §8!i§() : void
      {
         if(!this.§"!F§)
         {
            return;
         }
         this.§"!F§ = false;
         if(this.activeObject is §@!K§ && !(this.activeObject as §@!K§).§8![§)
         {
            if(this.activeObject.activateSpecialPower(this.§5!_§))
            {
               this.§5L§ = true;
            }
         }
         else
         {
            this.§5t§.§,!$§();
         }
         if(this.§@!§)
         {
            this.§@!§.§-?§(this.mLevelEngine.§<p§);
         }
      }
      
      public function §%A§() : void
      {
         this.§5t§.§%A§();
      }
      
      public function §^N§() : void
      {
         this.§5t§.§>!&§();
      }
      
      public function §0=§() : §0B§
      {
         var _loc1_:§0B§ = new §0B§();
         _loc1_.§+!Z§ = this.§]s§.§+!Z§;
         _loc1_.§-b§ = this.§]s§.§-b§;
         this.§3!n§.§1!§(_loc1_);
         this.§5t§.§3!L§(_loc1_);
         this.§-!_§.§#! §(_loc1_);
         _loc1_.theme = this.§5!]§.§1!p§();
         return _loc1_;
      }
      
      public function §>!l§() : int
      {
         return this.§]s§.§-b§;
      }
      
      public function §9d§() : int
      {
         return this.§]s§.§+!Z§;
      }
      
      public function §2=§(param1:int) : void
      {
         this.§]s§.§-b§ = param1;
      }
      
      public function §?;§(param1:int) : void
      {
         this.§]s§.§+!Z§ = param1;
      }
      
      public function §^+§(param1:Number, param2:Number) : void
      {
         if(this.§"!3§)
         {
            this.§"!3§.§#!Q§(param1,param2);
         }
         if(this.§3!n§)
         {
            this.§3!n§.§0z§(0);
         }
      }
      
      public function get §-!W§() : §0B§
      {
         return this.§]s§;
      }
      
      public function get §5!_§() : §0K§
      {
         return this.§5t§;
      }
      
      protected function get §!!^§() : §3P§
      {
         return this.§7S§;
      }
      
      public function get §%!K§() : int
      {
         return §2J§;
      }
   }
}
