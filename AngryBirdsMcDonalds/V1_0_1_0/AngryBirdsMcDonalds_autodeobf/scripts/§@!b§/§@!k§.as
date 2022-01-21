package §@!b§
{
   import §!!g§.§8d§;
   import §!R§.b2Vec2;
   import §"v§.§5!T§;
   import §#N§.§-!J§;
   import §#N§.§3!,§;
   import §&!K§.§3b§;
   import §&!K§.§^!3§;
   import §&[§.§&!m§;
   import §&[§.§0!I§;
   import §&[§.§2K§;
   import §,!i§.§6k§;
   import §1!D§.§<!;§;
   import §2!g§.DisplayObject;
   import §2!g§.Sprite;
   import §2o§.§<H§;
   import §5!!§.§0@§;
   import §5!G§.§'!1§;
   import §5!G§.§6!Y§;
   import §5!G§.§8+§;
   import §5!G§.§]^§;
   import §<s§.§=;§;
   import §?;§.§?!]§;
   import §`!W§.§2v§;
   import §`!d§.§0%§;
   import §`!d§.§7!§;
   import §`!d§.§[!h§;
   import §`!d§.§`s§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import §for §.§-"§;
   
   public class §@!k§
   {
      
      private static const §-!j§:int = 20;
      
      public static const § p§:Number = §<H§.§]A§;
      
      public static const §01§:Number = §<H§.§<!T§;
      
      public static const §2!J§:Number = 1 / 20;
      
      public static const §9q§:Number = §<H§.§<!T§ * §2!J§;
      
      public static const §1g§:Number = § p§ * §2!J§;
      
      public static const §]!^§:§<!;§ = new §<!;§(13 - 3);
      
      public static var §`&§:Number = 1;
      
      protected static var §<^§:String = §0%§.§'M§;
       
      
      protected var §^B§:§8+§;
      
      private var §@,§:§6!Y§;
      
      private var §-!3§:Array = null;
      
      protected var §"x§:§0@§;
      
      public var mLevelEngine:§7!@§;
      
      protected var § var§:§#!5§;
      
      protected var §]B§:§8d§;
      
      protected var §![§:§%!'§;
      
      protected var §>!d§:§3b§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §3Y§:Boolean = false;
      
      protected var §<!8§:Boolean = false;
      
      protected var §%!9§:Boolean = false;
      
      public var §<<§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §%!!§:Number;
      
      public var §<"§:Number;
      
      private var §7!7§:Number;
      
      public var §[!e§:§`s§;
      
      public var §;U§:Boolean = false;
      
      private var §?s§:§^[§;
      
      private var §+N§:Sprite;
      
      protected var §[L§:§0%§;
      
      protected var § Q§:§?!]§ = null;
      
      private var §2]§:EventDispatcher;
      
      private var §^W§:Array;
      
      private var §^s§:Array;
      
      protected var §-t§:§5!T§;
      
      private var §6o§:§6k§;
      
      protected var §`k§:§&!m§;
      
      protected var §@]§:§0!I§;
      
      private var §;!N§:§2K§;
      
      private var §&!k§:§2K§;
      
      private var §=b§:§2K§;
      
      private var §&!M§:Stage;
      
      private var §6>§:§>f§;
      
      protected var §]&§:§=;§;
      
      protected var §#E§:§=;§;
      
      protected var §+D§:Number = 0.0;
      
      protected var §+!+§:String;
      
      private var §'!&§:Boolean;
      
      protected var §9E§:Boolean;
      
      protected var §%?§:uint = 1.417339207E9;
      
      public var §;!`§:Boolean;
      
      public function §@!k§(param1:Stage)
      {
         this.§^s§ = [];
         super();
         this.§2]§ = new EventDispatcher();
         this.§[!e§ = new §`s§();
         this.§&!M§ = param1;
         this.§`k§ = §&!m§.§>E§;
         this.§@]§ = this.initAnimationManager(this.§`k§);
         this.§;!N§ = this.initThemeGraphicsManager();
         this.§&!k§ = this.§<5§();
         this.§=b§ = this.§%g§();
         var _loc2_:Stage3D = param1.stage3Ds[0];
         this.§-t§ = new §5!T§(§^[§,param1,new Rectangle(0,0,§<H§.§]A§,§<H§.§<!T§),_loc2_);
         §<H§.§-!V§.addEventListener(Event.ENTER_FRAME,this.§-t§.§1%§);
         _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§0!^§,false,0,true);
         this.§-t§.simulateMultitouch = false;
         this.§-t§.enableErrorChecking = false;
         this.§-t§.§9!,§ = 2;
         this.§-t§.§3!g§();
      }
      
      public static function §>v§(param1:§6!Y§, param2:§6!Y§) : Number
      {
         var _loc3_:Number = param1.§ k§ - param2.§ k§;
         var _loc4_:Number = param1.§4!7§ - param2.§4!7§;
         return §;o§(_loc3_,_loc4_);
      }
      
      public static function §;o§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         if(!this.§+N§ && this.§18§)
         {
            this.§+N§ = this.§?s§.§#D§;
         }
         return this.§+N§;
      }
      
      public function get §18§() : Sprite
      {
         if(!this.§?s§)
         {
            this.§?s§ = this.§-t§.§]!>§ as §^[§;
            this.§?s§.§=e§ = false;
         }
         return this.§?s§;
      }
      
      private function get §[Y§() : DisplayObject
      {
         if(this.§18§)
         {
            return (this.§18§ as §^[§).§[Y§;
         }
         return null;
      }
      
      public function get animationManager() : §0!I§
      {
         return this.§@]§;
      }
      
      public function get textureManager() : §&!m§
      {
         return this.§`k§;
      }
      
      public function get camera() : §8d§
      {
         return this.§]B§;
      }
      
      public function get objects() : §8+§
      {
         return this.§^B§;
      }
      
      public function get particles() : §3b§
      {
         return this.§>!d§;
      }
      
      public function get background() : §0@§
      {
         return this.§"x§;
      }
      
      public function get slingshot() : §%!'§
      {
         return this.§![§;
      }
      
      public function get activeObject() : §6!Y§
      {
         return this.§@,§;
      }
      
      public function get §5H§() : §#!5§
      {
         return this.§ var§;
      }
      
      public function get stage() : Stage
      {
         return this.§&!M§;
      }
      
      public function get § !5§() : §2K§
      {
         return this.§=b§;
      }
      
      protected function get §4!l§() : §2K§
      {
         return this.§;!N§;
      }
      
      public function set activeObject(param1:§6!Y§) : void
      {
         this.§@,§ = param1;
      }
      
      public function set §5@§(param1:Boolean) : void
      {
         this.§9E§ = param1;
      }
      
      public function clear() : void
      {
         if(this.§6o§)
         {
            this.§6o§.dispose();
         }
         if(this.§`k§)
         {
            this.§`k§.dispose();
         }
         if(this.§;!N§ && this.§;!N§.textureManager)
         {
            this.§;!N§.textureManager.dispose();
         }
         if(this.§=b§ && this.§=b§.textureManager)
         {
            this.§=b§.textureManager.dispose();
         }
         if(this.§-t§)
         {
            this.§-t§.dispose();
         }
      }
      
      protected function initThemeGraphicsManager() : §2K§
      {
         return null;
      }
      
      protected function §<5§() : §2K§
      {
         return null;
      }
      
      protected function §%g§() : §2K§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§&!m§) : §0!I§
      {
         return new §0!I§(param1);
      }
      
      public function §&e§(param1:Boolean) : void
      {
         if(§5!T§.§!e§)
         {
            if(param1)
            {
               §5!T§.§!e§.start();
            }
            else
            {
               §5!T§.§!e§.stop();
               §5!T§.§!e§.color = 0;
            }
         }
      }
      
      public function §]!<§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function setController(param1:§?!]§) : void
      {
         if(this.§ Q§ != null)
         {
            this.§ Q§.removeEventListeners();
         }
         this.§ Q§ = param1;
         if(this.mReadyToRun)
         {
            this.§ Q§.addEventListeners();
         }
      }
      
      public function §?!,§() : §=;§
      {
         return this.§]&§;
      }
      
      public function §;!§(param1:§6k§, param2:Array, param3:Function) : void
      {
         this.§6o§ = param1;
         var _loc4_:int = this.§6o§.§@!`§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§`k§.§<w§(this.§6o§.§@&§(_loc5_));
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§2]§.addEventListener(Event.INIT,param3);
            this.§^s§.push(param3);
         }
         if(this.§5!A§(param2))
         {
            this.§3!L§();
         }
      }
      
      private function §5!A§(param1:Array) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.§`k§.§`!1§())
         {
            _loc2_ = this.§`k§.§]0§ / 1000;
            _loc3_ = this.§`k§.§^K§ / 1000;
            §2v§.log("\n\nMain texture manager memory usage:\n   textures " + _loc2_ + " kilobytes\n   bitmaps " + _loc3_ + " kilobytes\n\n");
            this.initializeAnimations(param1);
            return true;
         }
         this.§^W§ = param1.concat();
         return false;
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         this.§@]§.initializeAnimations(param1);
      }
      
      private function §0!^§(param1:Event) : void
      {
         this.§`k§.§3!R§();
         if(this.§4!l§ && this.§4!l§.textureManager)
         {
            this.§4!l§.textureManager.§3!R§();
         }
         if(this.§ !5§ && this.§ !5§.textureManager)
         {
            this.§ !5§.textureManager.§3!R§();
         }
         if(this.§^W§)
         {
            this.§5!A§(this.§^W§);
            this.§^W§ = null;
            this.§3!L§();
         }
         if(this.§ Q§ != null && this.mReadyToRun)
         {
            this.§ Q§.addEventListeners();
         }
         if(this.§;!N§)
         {
            this.§;!N§.§`!1§();
         }
         if(this.§=b§)
         {
            if(this.§=b§.textureManager)
            {
               this.§=b§.textureManager.§3!R§();
               this.§=b§.§`!1§();
            }
         }
      }
      
      private function §3!L§() : void
      {
         this.§2]§.dispatchEvent(new Event(Event.INIT));
         this.§&#§();
      }
      
      private function §&#§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§^s§)
         {
            this.§2]§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§^s§ = [];
      }
      
      public function init(param1:§0%§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§ var§ = new §#!5§(this,param1);
         this.§]B§ = this.initLevelCamera(param1);
         this.§%!!§ = 0;
         this.§<"§ = 0;
         this.§7!7§ = 0;
         this.§'!&§ = false;
         this.mReadyToRun = false;
         this.§3Y§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         §<^§ = param1.theme;
         this.§[L§ = param1;
         this.§<!8§ = this.§8i§(param1.theme);
         this.§%!9§ = this.§+M§(param1.theme);
         if(this.§<!8§ && this.§%!9§)
         {
            this.initialize(param1);
         }
         else
         {
            this.§@!W§(param1.theme);
         }
         this.initReplay();
         §66§.init();
      }
      
      protected function initReplay() : void
      {
         this.§]&§ = new §=;§(§7!§.§+e§);
      }
      
      protected function §8i§(param1:String) : Boolean
      {
         if(this.§;!N§)
         {
            return false;
         }
         return true;
      }
      
      protected function §+M§(param1:String) : Boolean
      {
         var _loc2_:§3!,§ = null;
         if(this.§&!k§)
         {
            _loc2_ = §-!J§.§case §(param1);
            if(_loc2_)
            {
               if(_loc2_.§&!6§ && !this.§&!k§.§>!j§(_loc2_.§&!6§))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function §@!W§(param1:String) : void
      {
         var _loc2_:§3!,§ = null;
         if(this.§;!N§ && !this.§8i§(param1))
         {
            this.§;!N§.removeEventListener(Event.COMPLETE,this.§&_§);
            this.§;!N§.removeEventListener(Event.CANCEL,this.§9!+§);
            this.§;!N§.addEventListener(Event.COMPLETE,this.§&_§);
            this.§;!N§.addEventListener(Event.CANCEL,this.§9!+§);
            this.§;!N§.§]!L§(param1);
         }
         if(this.§&!k§ && !this.§+M§(param1))
         {
            this.§&!k§.removeEventListener(Event.COMPLETE,this.§[=§);
            this.§&!k§.removeEventListener(Event.CANCEL,this.§'O§);
            this.§&!k§.addEventListener(Event.COMPLETE,this.§[=§);
            this.§&!k§.addEventListener(Event.CANCEL,this.§'O§);
            _loc2_ = §-!J§.§case §(param1);
            if(_loc2_)
            {
               this.§&!k§.§]!L§(_loc2_.§&!6§);
            }
         }
      }
      
      private function §&_§(param1:Event) : void
      {
         this.§;!N§.removeEventListener(Event.COMPLETE,this.§&_§);
         this.§;!N§.removeEventListener(Event.CANCEL,this.§9!+§);
         this.§<!8§ = true;
         if(this.§<!8§ && this.§%!9§)
         {
            this.initialize(this.§[L§);
         }
      }
      
      private function §9!+§(param1:Event) : void
      {
         this.§;!N§.removeEventListener(Event.COMPLETE,this.§&_§);
         this.§;!N§.removeEventListener(Event.CANCEL,this.§9!+§);
         this.§3Y§ = true;
      }
      
      private function §[=§(param1:Event) : void
      {
         this.§;!N§.removeEventListener(Event.COMPLETE,this.§[=§);
         this.§;!N§.removeEventListener(Event.CANCEL,this.§'O§);
         this.§%!9§ = true;
         if(this.§<!8§ && this.§%!9§)
         {
            this.initialize(this.§[L§);
         }
      }
      
      private function §'O§(param1:Event) : void
      {
         this.§;!N§.removeEventListener(Event.COMPLETE,this.§[=§);
         this.§;!N§.removeEventListener(Event.CANCEL,this.§'O§);
         this.§%!9§ = true;
         if(this.§<!8§ && this.§%!9§)
         {
            this.initialize(this.§[L§);
         }
      }
      
      public function get backgroundTextureManager() : §&!m§
      {
         return this.§`k§;
      }
      
      protected function initialize(param1:§0%§) : void
      {
         this.§9E§ = false;
         this.§;!`§ = false;
         if(§5!T§.§7U§)
         {
            §5!T§.§7U§.speed = 1;
         }
         this.mLevelEngine = new §7!@§(this);
         this.§"x§ = this.initLevelBackground(param1.theme,this.§ var§.§4R§ / §2!J§,this.backgroundTextureManager,this.§]B§.§##§());
         this.§"x§.§#!X§(§<H§.§8!$§());
         this.§^B§ = this.initLevelObjectManager(param1);
         this.§![§ = this.initLevelSlingshot(param1);
         this.§>!d§ = this.initParticleManager(this.§@]§,this.§`k§);
         this.§]B§.init();
         this.§#!d§();
         this.loadPreviousReplayData();
         this.mReadyToRun = true;
         if(this.§ Q§)
         {
            this.§ Q§.addEventListeners();
         }
      }
      
      protected function loadPreviousReplayData() : void
      {
         if(this.§+!+§)
         {
            this.§#E§ = §=;§.initialize(this.§+!+§);
            this.§#E§.speed = 1;
            this.§#E§.play();
            this.§+D§ = -1000;
            this.§+!+§ = null;
         }
      }
      
      public function §2N§(param1:String) : void
      {
         this.§+!+§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§#E§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§#E§)
         {
            if(param1)
            {
               this.§#E§.speed = Math.min(this.§#E§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§#E§.speed = Math.max(this.§#E§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§#E§)
         {
            this.§#E§.speed = 1;
         }
      }
      
      protected function initLevelObjectManager(param1:§0%§) : §8+§
      {
         return new §8+§(this,param1,new Sprite());
      }
      
      protected function initLevelCamera(param1:§0%§) : §8d§
      {
         return new §8d§(this,param1);
      }
      
      protected function initLevelBackground(param1:String, param2:Number, param3:§&!m§, param4:Number) : §0@§
      {
         return new §0@§(param1,param2,param3,param4);
      }
      
      protected function initLevelSlingshot(param1:§0%§) : §%!'§
      {
         return new §%!'§(this,param1,new Sprite());
      }
      
      protected function initParticleManager(param1:§0!I§, param2:§&!m§) : §3b§
      {
         return new §3b§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§0%§ = this.preProcessLevel();
         var _loc4_:§[!h§;
         (_loc4_ = new §[!h§()).left = 0;
         _loc4_.top = -§8d§.§2!f§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §8d§.§2!f§;
         _loc4_.right = _loc4_.left + §8d§.§!!I§;
         _loc4_.y = -13.929;
         _loc4_.x = §8d§.§!!I§;
         _loc4_.id = §8d§.§<!`§;
         _loc3_.§<!W§(_loc4_);
         var _loc5_:§[!h§;
         (_loc5_ = new §[!h§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §8d§.§!!I§;
         _loc5_.bottom = _loc5_.top + §8d§.§2!f§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §8d§.§!!I§ / 2;
         _loc5_.id = §8d§.§;A§;
         _loc3_.§<!W§(_loc5_);
         this.§#1§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§<^§ != null)
         {
            _loc3_.theme = §<^§;
         }
         this.init(_loc3_);
      }
      
      protected function §#1§(param1:§0%§, param2:Boolean) : void
      {
         if(param2)
         {
            this.§%F§(param1);
         }
      }
      
      protected function preProcessLevel() : §0%§
      {
         var _loc1_:§0%§ = new §0%§();
         _loc1_.§@Y§ = -12;
         return new §0%§();
      }
      
      protected function §5[§() : Number
      {
         this.§%?§ ^= this.§%?§ << 21;
         this.§%?§ ^= this.§%?§ >>> 35;
         this.§%?§ ^= this.§%?§ << 4;
         return this.§%?§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §%F§(param1:§0%§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§-"§ = null;
         this.§%?§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§5[§() * 5;
               (_loc5_ = new §-"§()).x = 30 + _loc3_ * 10 + this.§5[§() * 9;
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
                  _loc5_.angle = 45 - this.§5[§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§5[§() * 3 - _loc3_ * 8;
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
                  _loc5_.angle = this.§5[§() * 360;
               }
               param1.§[E§(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      private function §1!C§() : void
      {
      }
      
      public function §#!d§() : void
      {
         if(§0@§.§?!+§)
         {
            this.§0#§(this.§"x§.§<!]§,false);
         }
         this.§0#§(this.§>!d§.§^!"§(§3b§.§[!g§),false);
         this.§0#§(this.§>!d§.§^!"§(§3b§.§8]§),true);
         this.§0#§(this.§>!d§.§^!"§(§3b§.§^!§),true);
         this.§0#§(this.§^B§.§92§,true);
         this.§0#§(this.§![§.sprite,true);
         this.§0#§(this.§>!d§.§^!"§(§3b§.§;-§),true);
         this.§0#§(this.§"x§.§+F§,false);
         if(§0@§.§?!+§)
         {
            this.§0#§(this.§"x§.§8G§,false);
         }
         this.§0#§(this.§>!d§.§^!"§(§3b§.§1!e§),true);
      }
      
      private function §0#§(param1:Sprite, param2:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(param1);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         param1 /= §<H§.§6C§;
         param2 /= §<H§.§6C§;
         _loc3_.x = (param1 / §8d§.§=d§ + this.§]B§.§9'§ - §8d§.§0x§ / §8d§.§=d§) * §2!J§;
         _loc3_.y = (param2 / §8d§.§=d§ + this.§]B§.§9![§ - §8d§.each / §8d§.§=d§) * §2!J§;
         return _loc3_;
      }
      
      public function §8,§(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / §2!J§ + §8d§.§0x§ / §8d§.§=d§ - this.§]B§.§9'§) * §8d§.§=d§;
         _loc3_.y = (param2 / §2!J§ + §8d§.each / §8d§.§=d§ - this.§]B§.§9![§) * §8d§.§=d§;
         var _loc4_:Number = Math.max(§<H§.§6C§,§<H§.§^d§);
         _loc3_.x *= _loc4_;
         _loc3_.y *= _loc4_;
         return _loc3_;
      }
      
      public function §5v§(param1:String, param2:Number, param3:Number) : void
      {
         this.§^B§.§[E§(param1,param2,param3);
      }
      
      public function §=!-§() : void
      {
         if(this.§[Y§)
         {
            this.§[Y§.visible = true;
            this.§[Y§.alpha = 0;
         }
         this.§<<§ = 0;
      }
      
      public function §`$§() : void
      {
         this.§6>§ = new §>f§(§0]§.§3I§,§0]§.§@!]§);
      }
      
      public function §2!h§() : void
      {
         this.§6>§ = null;
      }
      
      public function clearLevel() : void
      {
         if(this.§"x§)
         {
            this.§"x§.dispose();
            this.§"x§ = null;
         }
         if(this.§^B§)
         {
            this.§^B§.dispose();
            this.§^B§ = null;
            this.§@,§ = null;
         }
         if(this.mLevelEngine)
         {
            if(!this.mLevelEngine.§72§)
            {
            }
            this.mLevelEngine.clear();
            this.mLevelEngine = null;
         }
         if(this.§ var§)
         {
            this.§ var§.clear();
            this.§ var§ = null;
         }
         if(this.§![§)
         {
            this.§![§.dispose();
            this.§![§ = null;
         }
         if(this.§]B§)
         {
            this.§]B§.clear();
            this.§]B§ = null;
         }
         if(this.§>!d§)
         {
            this.§>!d§.dispose();
            this.§>!d§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§%!!§ = 0;
         this.§<"§ = 0;
         this.mReadyToRun = false;
         this.§'!&§ = false;
         this.§<<§ = §0]§.§]!$§;
         if(this.§18§)
         {
            (this.§18§ as §^[§).§>9§.x = 0;
            (this.§18§ as §^[§).§>9§.y = 0;
         }
         if(this.§[Y§)
         {
            this.§[Y§.visible = false;
         }
         this.§#E§ = null;
         this.§]&§ = null;
         if(this.§;!N§)
         {
            this.§;!N§.removeEventListener(Event.COMPLETE,this.§&_§);
            this.§;!N§.removeEventListener(Event.CANCEL,this.§9!+§);
         }
         if(this.§&!k§)
         {
            this.§&!k§.removeEventListener(Event.COMPLETE,this.§[=§);
            this.§&!k§.removeEventListener(Event.CANCEL,this.§'O§);
         }
         this.§&#§();
         if(§5!T§.§!e§)
         {
            §5!T§.§!e§.color = 0;
         }
         if(this.§ Q§)
         {
            this.§ Q§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver() : void
      {
      }
      
      public function §]![§() : String
      {
         if(this.§]&§)
         {
            return this.§]&§.toString();
         }
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         if(!this.mReadyToRun || !§5!T§.§<f§())
         {
            return 0;
         }
         if(this.§#E§ && this.§#E§.§=!n§)
         {
            return this.§&!n§(param1,param2,param3);
         }
         return this.updateWithTime(param1,true,param2,param3);
      }
      
      protected function updateWithTime(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         if(this.§9E§)
         {
            param1 *= 0.2;
            if(§5!T§.§7U§)
            {
               §5!T§.§7U§.speed = 0.2;
            }
         }
         var _loc5_:Number = 0;
         this.§<"§ += param1;
         if(param3)
         {
            this.§%!!§ += param1;
            _loc5_ = this.mLevelEngine.§?!5§(this.§%!!§);
            this.§![§.update(param1,param4);
            this.§%!!§ = _loc5_;
         }
         else
         {
            this.§^B§.§#w§(param1);
            this.§%!!§ = 0;
         }
         if(param2)
         {
            this.§;P§(param1,_loc5_);
         }
         return param1;
      }
      
      private function §&!n§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc5_:Number = NaN;
         var _loc4_:Number = §7!@§.§15§ * 1000;
         if(this.§#E§)
         {
            param1 *= this.§#E§.speed;
            _loc5_ = this.§<"§ + param1;
            while(this.§<"§ + _loc4_ < _loc5_)
            {
               if(this.§<"§ + _loc4_ > this.§+D§)
               {
                  this.§#E§.step(this);
                  this.§+D§ += _loc4_;
               }
               this.updateWithTime(_loc4_,false,param2,param3);
            }
            if(_loc5_ > this.§+D§ + _loc4_)
            {
               this.§#E§.step(this);
               this.§+D§ += _loc4_;
            }
            if(this.§<"§ < _loc5_)
            {
               this.updateWithTime(_loc5_ - this.§<"§,true,param2,param3);
            }
            return param1;
         }
         return this.updateWithTime(_loc4_,true,param2,param3);
      }
      
      private function §;P§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.§"x§.update(param1);
         this.§^B§.§]!!§(param1,param2);
         this.§4c§();
         if(this.§<<§ < §0]§.§]!$§)
         {
            this.§<<§ += param1;
            _loc3_ = §0]§.§]!$§ / 2;
            _loc4_ = (-Math.abs(this.§<<§ - _loc3_) + _loc3_) * (§0]§.§3J§ / _loc3_);
            if(this.§[Y§)
            {
               this.§[Y§.alpha = _loc4_;
            }
         }
         else if(this.§[Y§)
         {
            this.§[Y§.visible = false;
         }
         if(this.§6>§)
         {
            if(!this.§6>§.§7;§(this.§]B§,param1))
            {
               this.§2!h§();
            }
         }
         this.§]B§.§^P§(param1);
         this.mLevelEngine.§?!S§();
         this.§>!d§.update(param1);
      }
      
      public function handleEngineUpdateStep(param1:Number) : void
      {
         this.objects.§#w§(param1 * 1000);
         this.objects.updateLevelObjectsComplete(param1 * 1000);
         this.§@b§();
      }
      
      public function §4c§() : void
      {
         var _loc1_:§6!Y§ = null;
         if(this.§<"§ > this.§7!7§ + 1000 / 30)
         {
            if(this.§-!3§ != null)
            {
               for each(_loc1_ in this.§-!3§)
               {
                  _loc1_.addTrail();
               }
            }
            this.§7!7§ = this.§<"§;
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§6!Y§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.§^B§.isPigsAlive(true))
            {
               _loc2_ = this.§^B§.§2G§(true);
               _loc2_.§8!J§.mTryToScream = §]^§.§@X§;
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§^B§.§"y§());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            if(this.§^B§.isPigsAlive(true))
            {
               _loc2_ = this.§^B§.§2G§(true);
               _loc2_.§8!J§.mTryToBlink = §]^§.§?!`§;
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§^B§.§"y§());
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §^!3§.§!l§;
         }
         §66§.addScore(param1,param2);
         this.§ Q§.addScore(param1);
         if(param3 && param1 > 0 && !this.§;!`§)
         {
            this.§5!,§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §5!,§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §^!3§.§3[§;
         }
         this.§>!d§.§"!S§(§^!3§.§]S§,§3b§.§1!e§,§^!3§.§86§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §[?§(param1:§6!Y§) : void
      {
         if(this.§-!3§ == null)
         {
            this.§-!3§ = new Array();
         }
         this.§-!3§.push(param1);
      }
      
      public function §^!O§() : void
      {
         this.§![§.§^!O§();
         this.§^B§.§[!!§();
         this.§;!`§ = true;
      }
      
      public function §8!0§(param1:§6!Y§) : void
      {
         this.§>!d§.§9R§(§3b§.§[!g§);
         if(this.§-!3§.indexOf(param1) >= 0)
         {
            this.§-!3§.splice(this.§-!3§.indexOf(param1),1);
         }
         if(this.§-!3§.length == 0)
         {
            this.§-!3§ = null;
         }
      }
      
      public function §+Y§(param1:§^j§, param2:Number, param3:Number) : void
      {
         this.§@,§ = this.§^B§.§[E§(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
         var _loc4_:Number = param1.name.toUpperCase() == "BIRD_GREEN" ? Number(§%!'§.BIRD_LAUNCH_FORCE_GREEN) : Number(§%!'§.BIRD_LAUNCH_FORCE);
         if(param1.§6x§ > 1)
         {
            this.§@,§.§@!>§(param1.§6x§);
            this.§@,§.§8!J§.§%k§();
         }
         if(param1.§+O§ != 0)
         {
            _loc4_ = param1.§+O§;
         }
         var _loc5_:Number = -_loc4_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc6_:Number = _loc4_ * param2 * Math.sin(param3 / (180 / Math.PI));
         this.§@,§.§>P§(new b2Vec2(_loc5_,_loc6_),false,true);
         this.camera.setAction(§8d§.§!!Z§);
         if(this.§]&§)
         {
            this.§]&§.§+Y§(this.mLevelEngine.§#!C§,param1.x,param1.y,param2,param3);
         }
      }
      
      public function activatePowerup() : void
      {
         this.§'!&§ = true;
      }
      
      private function §@b§() : void
      {
         if(!this.§'!&§)
         {
            return;
         }
         this.§'!&§ = false;
         if(this.activeObject is §'!1§ && !(this.activeObject as §'!1§).§=!F§)
         {
            if(this.activeObject.activateSpecialPower(this.§`q§))
            {
               this.§;U§ = true;
            }
         }
         else
         {
            this.§^B§.§;x§();
         }
         if(this.§]&§)
         {
            this.§]&§.§>s§(this.mLevelEngine.§#!C§);
         }
      }
      
      public function §7!R§() : void
      {
         this.§^B§.§7!R§();
      }
      
      public function §[I§() : void
      {
         this.§^B§.§1$§();
      }
      
      public function §,!S§() : §0%§
      {
         var _loc1_:§0%§ = new §0%§();
         _loc1_.§-X§ = this.§[L§.§-X§;
         _loc1_.§,z§ = this.§[L§.§,z§;
         this.§]B§.§">§(_loc1_);
         this.§^B§.§ Y§(_loc1_);
         this.§![§.§8e§(_loc1_);
         _loc1_.theme = this.§"x§.§return§();
         return _loc1_;
      }
      
      public function §"!n§() : int
      {
         return this.§[L§.§,z§;
      }
      
      public function §0!C§() : int
      {
         return this.§[L§.§-X§;
      }
      
      public function §^#§(param1:int) : void
      {
         this.§[L§.§,z§ = param1;
      }
      
      public function §@!X§(param1:int) : void
      {
         this.§[L§.§-X§ = param1;
      }
      
      public function §`!i§(param1:Number, param2:Number) : void
      {
         if(this.§?s§)
         {
            this.§?s§.§3P§(param1,param2);
         }
         if(this.§]B§)
         {
            this.§]B§.§^P§(0);
         }
      }
      
      public function get §=!j§() : §0%§
      {
         return this.§[L§;
      }
      
      public function get §`q§() : §8+§
      {
         return this.§^B§;
      }
      
      protected function get §><§() : §5!T§
      {
         return this.§-t§;
      }
      
      public function get §[6§() : int
      {
         return §-!j§;
      }
   }
}
