package §+D§
{
   import §"!G§.§^x§;
   import §+!R§.§8!0§;
   import §,!3§.b2Vec2;
   import §0!9§.§`!U§;
   import §1!K§.§>!<§;
   import §3-§.§1L§;
   import §9!T§.§5g§;
   import §9!T§.§;!"§;
   import §9!T§.§;!_§;
   import §9!T§.§@1§;
   import §<X§.§^%§;
   import §=!S§.§#!K§;
   import §=X§.§"!6§;
   import §=X§.§#!6§;
   import §=X§.§7!4§;
   import §=X§.§[!R§;
   import §>Q§.§5!5§;
   import §?!B§.§[,§;
   import §?!B§.§^!U§;
   import §@!%§.§+i§;
   import §@!%§.§2!]§;
   import §[$§.§=K§;
   import §[=§.DisplayObject;
   import §[=§.Sprite;
   import §[d§.§]<§;
   import §`!H§.§+3§;
   import §`!H§.§9;§;
   import §`!H§.§@!E§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §5!P§
   {
      
      private static const §^j§:int = 20;
      
      public static const §=!F§:Number = §1L§.§6w§;
      
      public static const §-7§:Number = §1L§.§[S§;
      
      public static const §>M§:Number = 1 / 20;
      
      public static const §,!V§:Number = §1L§.§[S§ * §>M§;
      
      public static const §+=§:Number = §=!F§ * §>M§;
      
      public static const §&!2§:§#!K§ = new §#!K§(13 - 3);
      
      protected static var §3!+§:String = §"!6§.§1O§;
       
      
      protected var §+"§:§;!_§;
      
      private var §00§:§;!"§;
      
      private var §5!U§:Array = null;
      
      protected var §>!K§:§`!U§;
      
      public var mLevelEngine:§5!6§;
      
      protected var §,D§:§8T§;
      
      protected var §!Z§:§=K§;
      
      protected var § 5§:§5@§;
      
      protected var §<!H§:§[,§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §>+§:Boolean = false;
      
      protected var §7I§:Boolean = false;
      
      protected var §<!7§:Boolean = false;
      
      public var §^&§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §8!D§:Number;
      
      public var §3!5§:Number;
      
      private var §^!G§:Number;
      
      public var §7#§:§[!R§;
      
      public var §`>§:Boolean = false;
      
      private var § !C§:§-!1§;
      
      private var §,H§:Sprite;
      
      protected var § !D§:§"!6§;
      
      protected var §<=§:§^x§ = null;
      
      private var §=!5§:EventDispatcher;
      
      private var §&! §:Array;
      
      private var §0!<§:Array;
      
      protected var §@A§:§5!5§;
      
      private var §<!9§:§8!0§;
      
      protected var §6!;§:§@!E§;
      
      protected var §#!I§:§9;§;
      
      private var §?h§:§+3§;
      
      private var §9! §:§+3§;
      
      private var §1v§:§+3§;
      
      private var §8I§:Stage;
      
      private var §>2§:§^!A§;
      
      protected var dynamic:§^%§;
      
      protected var §1%§:§^%§;
      
      protected var §=!K§:Number = 0.0;
      
      protected var §?!;§:String;
      
      private var §>>§:Boolean;
      
      protected var §&V§:Boolean;
      
      protected var §-"§:uint = 1.417339207E9;
      
      public var §@E§:Boolean;
      
      public function §5!P§(param1:Stage)
      {
         this.§0!<§ = [];
         super();
         this.§=!5§ = new EventDispatcher();
         this.§7#§ = new §[!R§();
         this.§8I§ = param1;
         this.§6!;§ = §@!E§.§;!F§;
         this.§#!I§ = this.initAnimationManager(this.§6!;§);
         this.§?h§ = this.initThemeGraphicsManager();
         this.§9! § = this.§;4§();
         this.§1v§ = this.§<>§();
         var _loc2_:Stage3D = param1.stage3Ds[0];
         this.§@A§ = new §5!5§(§-!1§,param1,new Rectangle(0,0,§1L§.§6w§,§1L§.§[S§),_loc2_);
         §1L§.§<!,§.addEventListener(Event.ENTER_FRAME,this.§@A§.§3Y§);
         _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§?!D§,false,0,true);
         this.§@A§.simulateMultitouch = false;
         this.§@A§.enableErrorChecking = false;
         this.§@A§.§4_§ = 2;
         this.§@A§.§[x§();
      }
      
      public static function §+!H§(param1:§;!"§, param2:§;!"§) : Number
      {
         var _loc3_:Number = param1.§@!S§ - param2.§@!S§;
         var _loc4_:Number = param1.§>R§ - param2.§>R§;
         return §=-§(_loc3_,_loc4_);
      }
      
      public static function §=-§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         if(!this.§,H§ && this.§+L§)
         {
            this.§,H§ = this.§ !C§.§!a§;
         }
         return this.§,H§;
      }
      
      public function get §+L§() : Sprite
      {
         if(!this.§ !C§)
         {
            this.§ !C§ = this.§@A§.§5C§ as §-!1§;
            this.§ !C§.§^!]§ = false;
         }
         return this.§ !C§;
      }
      
      private function get §<u§() : DisplayObject
      {
         if(this.§+L§)
         {
            return (this.§+L§ as §-!1§).§<u§;
         }
         return null;
      }
      
      public function get §]!%§() : §9;§
      {
         return this.§#!I§;
      }
      
      public function get textureManager() : §@!E§
      {
         return this.§6!;§;
      }
      
      public function get camera() : §=K§
      {
         return this.§!Z§;
      }
      
      public function get objects() : §;!_§
      {
         return this.§+"§;
      }
      
      public function get particles() : §[,§
      {
         return this.§<!H§;
      }
      
      public function get background() : §`!U§
      {
         return this.§>!K§;
      }
      
      public function get slingshot() : §5@§
      {
         return this.§ 5§;
      }
      
      public function get activeObject() : §;!"§
      {
         return this.§00§;
      }
      
      public function get §0r§() : §8T§
      {
         return this.§,D§;
      }
      
      public function get stage() : Stage
      {
         return this.§8I§;
      }
      
      public function get §#!§() : §+3§
      {
         return this.§1v§;
      }
      
      protected function get §^I§() : §+3§
      {
         return this.§?h§;
      }
      
      public function set activeObject(param1:§;!"§) : void
      {
         this.§00§ = param1;
      }
      
      public function set §8!2§(param1:Boolean) : void
      {
         this.§&V§ = param1;
      }
      
      public function clear() : void
      {
         if(this.§<!9§)
         {
            this.§<!9§.dispose();
         }
         if(this.§6!;§)
         {
            this.§6!;§.dispose();
         }
         if(this.§?h§ && this.§?h§.textureManager)
         {
            this.§?h§.textureManager.dispose();
         }
         if(this.§1v§ && this.§1v§.textureManager)
         {
            this.§1v§.textureManager.dispose();
         }
         if(this.§@A§)
         {
            this.§@A§.dispose();
         }
      }
      
      protected function initThemeGraphicsManager() : §+3§
      {
         return null;
      }
      
      protected function §;4§() : §+3§
      {
         return null;
      }
      
      protected function §<>§() : §+3§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§@!E§) : §9;§
      {
         return new §9;§(param1);
      }
      
      public function §2!A§(param1:Boolean) : void
      {
         if(§5!5§.§5F§)
         {
            if(param1)
            {
               §5!5§.§5F§.start();
            }
            else
            {
               §5!5§.§5F§.stop();
               §5!5§.§5F§.color = 0;
            }
         }
      }
      
      public function §`f§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function §=c§(param1:§^x§) : void
      {
         if(this.§<=§ != null)
         {
            this.§<=§.removeEventListeners();
         }
         this.§<=§ = param1;
         if(this.mReadyToRun)
         {
            this.§<=§.addEventListeners();
         }
      }
      
      public function §%!V§() : §^%§
      {
         return this.dynamic;
      }
      
      public function §!!,§(param1:§8!0§, param2:Array, param3:Function) : void
      {
         this.§<!9§ = param1;
         var _loc4_:int = this.§<!9§.§9+§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§6!;§.§,8§(this.§<!9§.§>y§(_loc5_));
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§=!5§.addEventListener(Event.INIT,param3);
            this.§0!<§.push(param3);
         }
         if(this.§@f§(param2))
         {
            this.§&r§();
         }
      }
      
      private function §@f§(param1:Array) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.§6!;§.§6D§())
         {
            _loc2_ = this.§6!;§.§<,§ / 1000;
            _loc3_ = this.§6!;§.§]Q§ / 1000;
            §>!<§.log("\n\nMain texture manager memory usage:\n   textures " + _loc2_ + " kilobytes\n   bitmaps " + _loc3_ + " kilobytes\n\n");
            this.initializeAnimations(param1);
            return true;
         }
         this.§&! § = param1.concat();
         return false;
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         this.§#!I§.initializeAnimations(param1);
      }
      
      private function §?!D§(param1:Event) : void
      {
         this.§6!;§.§ !]§();
         if(this.§^I§ && this.§^I§.textureManager)
         {
            this.§^I§.textureManager.§ !]§();
         }
         if(this.§#!§ && this.§#!§.textureManager)
         {
            this.§#!§.textureManager.§ !]§();
         }
         if(this.§&! §)
         {
            this.§@f§(this.§&! §);
            this.§&! § = null;
            this.§&r§();
         }
         if(this.§<=§ != null && this.mReadyToRun)
         {
            this.§<=§.addEventListeners();
         }
         if(this.§?h§)
         {
            this.§?h§.§6D§();
         }
         if(this.§1v§)
         {
            if(this.§1v§.textureManager)
            {
               this.§1v§.textureManager.§ !]§();
               this.§1v§.§6D§();
            }
         }
      }
      
      private function §&r§() : void
      {
         this.§=!5§.dispatchEvent(new Event(Event.INIT));
         this.§'2§();
      }
      
      private function §'2§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§0!<§)
         {
            this.§=!5§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§0!<§ = [];
      }
      
      public function init(param1:§"!6§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§,D§ = new §8T§(this,param1);
         this.§!Z§ = this.§<<§(param1);
         this.§8!D§ = 0;
         this.§3!5§ = 0;
         this.§^!G§ = 0;
         this.§>>§ = false;
         this.mReadyToRun = false;
         this.§>+§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         §3!+§ = param1.theme;
         this.§ !D§ = param1;
         this.§7I§ = this.§;!c§(param1.theme);
         this.§<!7§ = this.§[P§(param1.theme);
         if(this.§7I§ && this.§<!7§)
         {
            this.initialize(param1);
         }
         else
         {
            this.§&A§(param1.theme);
         }
         this.initReplay();
         §6+§.init();
      }
      
      protected function initReplay() : void
      {
         this.dynamic = new §^%§(§7!4§.§"P§);
      }
      
      protected function §;!c§(param1:String) : Boolean
      {
         if(this.§?h§)
         {
            return false;
         }
         return true;
      }
      
      protected function §[P§(param1:String) : Boolean
      {
         var _loc2_:§+i§ = null;
         if(this.§9! §)
         {
            _loc2_ = §2!]§.§+!4§(param1);
            if(_loc2_)
            {
               if(_loc2_.§;a§ && !this.§9! §.§]O§(_loc2_.§;a§))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function §&A§(param1:String) : void
      {
         var _loc2_:§+i§ = null;
         if(this.§?h§ && !this.§;!c§(param1))
         {
            this.§?h§.removeEventListener(Event.COMPLETE,this.§#S§);
            this.§?h§.removeEventListener(Event.CANCEL,this.§=!Q§);
            this.§?h§.addEventListener(Event.COMPLETE,this.§#S§);
            this.§?h§.addEventListener(Event.CANCEL,this.§=!Q§);
            this.§?h§.§=Z§(param1);
         }
         if(this.§9! § && !this.§[P§(param1))
         {
            this.§9! §.removeEventListener(Event.COMPLETE,this.§1r§);
            this.§9! §.removeEventListener(Event.CANCEL,this.§5!>§);
            this.§9! §.addEventListener(Event.COMPLETE,this.§1r§);
            this.§9! §.addEventListener(Event.CANCEL,this.§5!>§);
            _loc2_ = §2!]§.§+!4§(param1);
            if(_loc2_)
            {
               this.§9! §.§=Z§(_loc2_.§;a§);
            }
         }
      }
      
      private function §#S§(param1:Event) : void
      {
         this.§?h§.removeEventListener(Event.COMPLETE,this.§#S§);
         this.§?h§.removeEventListener(Event.CANCEL,this.§=!Q§);
         this.§7I§ = true;
         if(this.§7I§ && this.§<!7§)
         {
            this.initialize(this.§ !D§);
         }
      }
      
      private function §=!Q§(param1:Event) : void
      {
         this.§?h§.removeEventListener(Event.COMPLETE,this.§#S§);
         this.§?h§.removeEventListener(Event.CANCEL,this.§=!Q§);
         this.§>+§ = true;
      }
      
      private function §1r§(param1:Event) : void
      {
         this.§?h§.removeEventListener(Event.COMPLETE,this.§1r§);
         this.§?h§.removeEventListener(Event.CANCEL,this.§5!>§);
         this.§<!7§ = true;
         if(this.§7I§ && this.§<!7§)
         {
            this.initialize(this.§ !D§);
         }
      }
      
      private function §5!>§(param1:Event) : void
      {
         this.§?h§.removeEventListener(Event.COMPLETE,this.§1r§);
         this.§?h§.removeEventListener(Event.CANCEL,this.§5!>§);
         this.§<!7§ = true;
         if(this.§7I§ && this.§<!7§)
         {
            this.initialize(this.§ !D§);
         }
      }
      
      public function get backgroundTextureManager() : §@!E§
      {
         return this.§6!;§;
      }
      
      protected function initialize(param1:§"!6§) : void
      {
         this.§&V§ = false;
         this.§@E§ = false;
         if(§5!5§.§!J§)
         {
            §5!5§.§!J§.speed = 1;
         }
         this.mLevelEngine = new §5!6§(this);
         this.§>!K§ = this.§5#§(param1.theme,this.§,D§.§6E§ / §>M§,this.backgroundTextureManager,this.§!Z§.§3!D§());
         this.§>!K§.§#y§(§1L§.§"I§());
         this.§+"§ = this.initLevelObjectManager(param1);
         this.§ 5§ = this.initLevelSlingshot(param1);
         this.§<!H§ = this.initParticleManager(this.§#!I§,this.§6!;§);
         this.§!Z§.init();
         this.§;!3§();
         this.loadPreviousReplayData();
         this.mReadyToRun = true;
         if(this.§<=§)
         {
            this.§<=§.addEventListeners();
         }
      }
      
      protected function loadPreviousReplayData() : void
      {
         if(this.§?!;§)
         {
            this.§1%§ = §^%§.initialize(this.§?!;§);
            this.§1%§.speed = 1;
            this.§1%§.play();
            this.§=!K§ = -1000;
            this.§?!;§ = null;
         }
      }
      
      public function §#G§(param1:String) : void
      {
         this.§?!;§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§1%§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§1%§)
         {
            if(param1)
            {
               this.§1%§.speed = Math.min(this.§1%§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§1%§.speed = Math.max(this.§1%§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§1%§)
         {
            this.§1%§.speed = 1;
         }
      }
      
      protected function initLevelObjectManager(param1:§"!6§) : §;!_§
      {
         return new §;!_§(this,param1,new Sprite());
      }
      
      protected function §<<§(param1:§"!6§) : §=K§
      {
         return new §=K§(this,param1);
      }
      
      protected function §5#§(param1:String, param2:Number, param3:§@!E§, param4:Number) : §`!U§
      {
         return new §`!U§(param1,param2,param3,param4);
      }
      
      protected function initLevelSlingshot(param1:§"!6§) : §5@§
      {
         return new §5@§(this,param1,new Sprite());
      }
      
      protected function initParticleManager(param1:§9;§, param2:§@!E§) : §[,§
      {
         return new §[,§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§"!6§ = this.preProcessLevel();
         var _loc4_:§#!6§;
         (_loc4_ = new §#!6§()).left = 0;
         _loc4_.top = -§=K§.§=!O§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §=K§.§=!O§;
         _loc4_.right = _loc4_.left + §=K§.§<!Q§;
         _loc4_.y = -13.929;
         _loc4_.x = §=K§.§<!Q§;
         _loc4_.id = §=K§.§!V§;
         _loc3_.§"Y§(_loc4_);
         var _loc5_:§#!6§;
         (_loc5_ = new §#!6§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §=K§.§<!Q§;
         _loc5_.bottom = _loc5_.top + §=K§.§=!O§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §=K§.§<!Q§ / 2;
         _loc5_.id = §=K§.§[N§;
         _loc3_.§"Y§(_loc5_);
         this.§0d§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§3!+§ != null)
         {
            _loc3_.theme = §3!+§;
         }
         this.init(_loc3_);
      }
      
      protected function §0d§(param1:§"!6§, param2:Boolean) : void
      {
         if(param2)
         {
            this.§%!K§(param1);
         }
      }
      
      protected function preProcessLevel() : §"!6§
      {
         var _loc1_:§"!6§ = new §"!6§();
         _loc1_.§08§ = -12;
         return new §"!6§();
      }
      
      protected function §`!c§() : Number
      {
         this.§-"§ ^= this.§-"§ << 21;
         this.§-"§ ^= this.§-"§ >>> 35;
         this.§-"§ ^= this.§-"§ << 4;
         return this.§-"§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §%!K§(param1:§"!6§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§]<§ = null;
         this.§-"§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§`!c§() * 5;
               (_loc5_ = new §]<§()).x = 30 + _loc3_ * 10 + this.§`!c§() * 9;
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
                  _loc5_.angle = 45 - this.§`!c§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§`!c§() * 3 - _loc3_ * 8;
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
                  _loc5_.angle = this.§`!c§() * 360;
               }
               param1.§+!3§(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      private function §@@§() : void
      {
      }
      
      public function §;!3§() : void
      {
         if(§`!U§.§6!,§)
         {
            this.§5!b§(this.§>!K§.§,,§,false);
         }
         this.§5!b§(this.§<!H§.§1Y§(§[,§.§4N§),false);
         this.§5!b§(this.§<!H§.§1Y§(§[,§.§<z§),true);
         this.§5!b§(this.§<!H§.§1Y§(§[,§.§"N§),true);
         this.§5!b§(this.§+"§.§6t§,true);
         this.§5!b§(this.§ 5§.sprite,true);
         this.§5!b§(this.§<!H§.§1Y§(§[,§.§'k§),true);
         this.§5!b§(this.§>!K§.§ F§,false);
         if(§`!U§.§6!,§)
         {
            this.§5!b§(this.§>!K§.§ K§,false);
         }
         this.§5!b§(this.§<!H§.§1Y§(§[,§.§3b§),true);
         if(!§5!6§.§%!+§)
         {
         }
      }
      
      private function §5!b§(param1:Sprite, param2:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(param1);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         param1 /= §1L§.§%v§;
         param2 /= §1L§.§%v§;
         _loc3_.x = (param1 / §=K§.§%-§ + this.§!Z§.§^V§ - §=K§.§2>§ / §=K§.§%-§) * §>M§;
         _loc3_.y = (param2 / §=K§.§%-§ + this.§!Z§.§?!O§ - §=K§.§;2§ / §=K§.§%-§) * §>M§;
         return _loc3_;
      }
      
      public function §9!-§(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / §>M§ + §=K§.§2>§ / §=K§.§%-§ - this.§!Z§.§^V§) * §=K§.§%-§;
         _loc3_.y = (param2 / §>M§ + §=K§.§;2§ / §=K§.§%-§ - this.§!Z§.§?!O§) * §=K§.§%-§;
         var _loc4_:Number = Math.max(§1L§.§%v§,§1L§.§1t§);
         _loc3_.x *= _loc4_;
         _loc3_.y *= _loc4_;
         return _loc3_;
      }
      
      public function §,!`§(param1:String, param2:Number, param3:Number) : void
      {
         this.§+"§.§+!3§(param1,param2,param3);
      }
      
      public function §+I§() : void
      {
         if(this.§<u§)
         {
            this.§<u§.visible = true;
            this.§<u§.alpha = 0;
         }
         this.§^&§ = 0;
      }
      
      public function § !E§() : void
      {
         this.§>2§ = new §^!A§(§9!4§.§6!Z§,§9!4§.§4n§);
      }
      
      public function §6z§() : void
      {
         this.§>2§ = null;
      }
      
      public function clearLevel() : void
      {
         if(this.§>!K§)
         {
            this.§>!K§.dispose();
            this.§>!K§ = null;
         }
         if(this.§+"§)
         {
            this.§+"§.dispose();
            this.§+"§ = null;
            this.§00§ = null;
         }
         if(this.mLevelEngine)
         {
            if(!this.mLevelEngine.§7b§)
            {
            }
            this.mLevelEngine.clear();
            this.mLevelEngine = null;
         }
         if(this.§,D§)
         {
            this.§,D§.clear();
            this.§,D§ = null;
         }
         if(this.§ 5§)
         {
            this.§ 5§.dispose();
            this.§ 5§ = null;
         }
         if(this.§!Z§)
         {
            this.§!Z§.clear();
            this.§!Z§ = null;
         }
         if(this.§<!H§)
         {
            this.§<!H§.dispose();
            this.§<!H§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§8!D§ = 0;
         this.§3!5§ = 0;
         this.mReadyToRun = false;
         this.§>>§ = false;
         this.§^&§ = §9!4§.§>C§;
         if(this.§+L§)
         {
            (this.§+L§ as §-!1§).§>!7§.x = 0;
            (this.§+L§ as §-!1§).§>!7§.y = 0;
         }
         if(this.§<u§)
         {
            this.§<u§.visible = false;
         }
         this.§1%§ = null;
         this.dynamic = null;
         if(this.§?h§)
         {
            this.§?h§.removeEventListener(Event.COMPLETE,this.§#S§);
            this.§?h§.removeEventListener(Event.CANCEL,this.§=!Q§);
         }
         if(this.§9! §)
         {
            this.§9! §.removeEventListener(Event.COMPLETE,this.§1r§);
            this.§9! §.removeEventListener(Event.CANCEL,this.§5!>§);
         }
         this.§'2§();
         if(§5!5§.§5F§)
         {
            §5!5§.§5F§.color = 0;
         }
         if(this.§<=§)
         {
            this.§<=§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver() : void
      {
      }
      
      public function §&!A§() : String
      {
         if(this.dynamic)
         {
            return this.dynamic.toString();
         }
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         if(!this.mReadyToRun || !§5!5§.override())
         {
            return 0;
         }
         if(this.§1%§ && this.§1%§.§;!V§)
         {
            return this.§0![§(param1,param2,param3);
         }
         return this.§=!?§(param1,true,param2,param3);
      }
      
      protected function §=!?§(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         if(this.§&V§)
         {
            param1 *= 0.2;
            if(§5!5§.§!J§)
            {
               §5!5§.§!J§.speed = 0.2;
            }
         }
         var _loc5_:Number = 0;
         this.§3!5§ += param1;
         if(param3)
         {
            this.§8!D§ += param1;
            _loc5_ = this.mLevelEngine.§[#§(this.§8!D§);
            this.§ 5§.update(param1,param4);
            this.§8!D§ = _loc5_;
         }
         else
         {
            this.§+"§.§6!R§(param1);
            this.§8!D§ = 0;
         }
         if(param2)
         {
            this.§1!]§(param1,_loc5_);
         }
         return param1;
      }
      
      private function §0![§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc5_:Number = NaN;
         var _loc4_:Number = §5!6§.§+!M§ * 1000;
         if(this.§1%§)
         {
            param1 *= this.§1%§.speed;
            _loc5_ = this.§3!5§ + param1;
            while(this.§3!5§ + _loc4_ < _loc5_)
            {
               if(this.§3!5§ + _loc4_ > this.§=!K§)
               {
                  this.§1%§.step(this);
                  this.§=!K§ += _loc4_;
               }
               this.§=!?§(_loc4_,false,param2,param3);
            }
            if(_loc5_ > this.§=!K§ + _loc4_)
            {
               this.§1%§.step(this);
               this.§=!K§ += _loc4_;
            }
            if(this.§3!5§ < _loc5_)
            {
               this.§=!?§(_loc5_ - this.§3!5§,true,param2,param3);
            }
            return param1;
         }
         return this.§=!?§(_loc4_,true,param2,param3);
      }
      
      private function §1!]§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.§>!K§.update(param1);
         this.§+"§.§#<§(param1,param2);
         this.§+'§();
         if(this.§^&§ < §9!4§.§>C§)
         {
            this.§^&§ += param1;
            _loc3_ = §9!4§.§>C§ / 2;
            _loc4_ = (-Math.abs(this.§^&§ - _loc3_) + _loc3_) * (§9!4§.§[X§ / _loc3_);
            if(this.§<u§)
            {
               this.§<u§.alpha = _loc4_;
            }
         }
         else if(this.§<u§)
         {
            this.§<u§.visible = false;
         }
         if(this.§>2§)
         {
            if(!this.§>2§.§&&§(this.§!Z§,param1))
            {
               this.§6z§();
            }
         }
         this.§!Z§.§#!=§(param1);
         this.mLevelEngine.§1!`§();
         this.§<!H§.update(param1);
      }
      
      public function §6!0§(param1:Number) : void
      {
         this.objects.§6!R§(param1 * 1000);
         this.objects.§2e§(param1 * 1000);
         this.§7+§();
      }
      
      public function §+'§() : void
      {
         var _loc1_:§;!"§ = null;
         if(this.§3!5§ > this.§^!G§ + 1000 / 30)
         {
            if(this.§5!U§ != null)
            {
               for each(_loc1_ in this.§5!U§)
               {
                  _loc1_.addTrail();
               }
            }
            this.§^!G§ = this.§3!5§;
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§;!"§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.§+"§.isPigsAlive(true))
            {
               _loc2_ = this.§+"§.§^A§(true);
               _loc2_.§1I§.mTryToScream = §@1§.§2!W§;
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§+"§.§&!<§());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            if(this.§+"§.isPigsAlive(true))
            {
               _loc2_ = this.§+"§.§^A§(true);
               _loc2_.§1I§.mTryToBlink = §@1§.§&#§;
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§+"§.§&!<§());
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §^!U§.§=_§;
         }
         §6+§.addScore(param1,param2);
         this.§<=§.addScore(param1);
         if(param3 && param1 > 0 && !this.§@E§)
         {
            this.§0&§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §0&§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §^!U§.§++§;
         }
         this.§<!H§.addParticle(§^!U§.§-!9§,§[,§.§3b§,§^!U§.§^H§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §[Q§(param1:§;!"§) : void
      {
         if(this.§5!U§ == null)
         {
            this.§5!U§ = new Array();
         }
         this.§5!U§.push(param1);
      }
      
      public function §<2§() : void
      {
         this.§ 5§.§<2§();
         this.§+"§.§%!@§();
         this.§@E§ = true;
      }
      
      public function §0!#§(param1:§;!"§) : void
      {
         this.§<!H§.§<n§(§[,§.§4N§);
         if(this.§5!U§.indexOf(param1) >= 0)
         {
            this.§5!U§.splice(this.§5!U§.indexOf(param1),1);
         }
         if(this.§5!U§.length == 0)
         {
            this.§5!U§ = null;
         }
      }
      
      public function §1#§(param1:§">§, param2:Number, param3:Number) : void
      {
         this.§00§ = this.§+"§.§+!3§(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
         var _loc4_:Number = param1.name.toUpperCase() == "BIRD_GREEN" ? Number(§5@§.§2!$§) : Number(§5@§.BIRD_LAUNCH_FORCE);
         if(param1.§>F§ > 1)
         {
            this.§00§.§"K§(param1.§>F§);
            this.§00§.§1I§.§3!>§();
         }
         if(param1.§;Z§ != 0)
         {
            _loc4_ = param1.§;Z§;
         }
         var _loc5_:Number = -_loc4_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc6_:Number = _loc4_ * param2 * Math.sin(param3 / (180 / Math.PI));
         this.§00§.§^,§(new b2Vec2(_loc5_,_loc6_),false,true);
         this.camera.§ !Z§(§=K§.§#!Y§);
         if(this.dynamic)
         {
            this.dynamic.§1#§(this.mLevelEngine.currentStep,param1.x,param1.y,param2,param3);
         }
      }
      
      public function activatePowerup() : void
      {
         this.§>>§ = true;
      }
      
      private function §7+§() : void
      {
         if(!this.§>>§)
         {
            return;
         }
         this.§>>§ = false;
         if(this.activeObject is §5g§ && !(this.activeObject as §5g§).§,u§)
         {
            if(this.activeObject.activateSpecialPower(this.§]s§))
            {
               this.§`>§ = true;
            }
         }
         else
         {
            this.§+"§.§3!V§();
         }
         if(this.dynamic)
         {
            this.dynamic.§1h§(this.mLevelEngine.currentStep);
         }
      }
      
      public function §?!c§() : void
      {
         this.§+"§.§?!c§();
      }
      
      public function §]m§() : void
      {
         this.§+"§.§#r§();
      }
      
      public function §#!+§() : §"!6§
      {
         var _loc1_:§"!6§ = new §"!6§();
         _loc1_.§?9§ = this.§ !D§.§?9§;
         _loc1_.§ `§ = this.§ !D§.§ `§;
         this.§!Z§.§!!@§(_loc1_);
         this.§+"§.§8!F§(_loc1_);
         this.§ 5§.§,e§(_loc1_);
         _loc1_.theme = this.§>!K§.§]C§();
         return _loc1_;
      }
      
      public function §]F§() : int
      {
         return this.§ !D§.§ `§;
      }
      
      public function §'>§() : int
      {
         return this.§ !D§.§?9§;
      }
      
      public function §8!8§(param1:int) : void
      {
         this.§ !D§.§ `§ = param1;
      }
      
      public function §!]§(param1:int) : void
      {
         this.§ !D§.§?9§ = param1;
      }
      
      public function §?B§(param1:Number, param2:Number) : void
      {
         if(this.§ !C§)
         {
            this.§ !C§.§6!c§(param1,param2);
         }
         if(this.§!Z§)
         {
            this.§!Z§.§#!=§(0);
         }
      }
      
      public function get §6u§() : §"!6§
      {
         return this.§ !D§;
      }
      
      public function get §]s§() : §;!_§
      {
         return this.§+"§;
      }
      
      protected function get §28§() : §5!5§
      {
         return this.§@A§;
      }
      
      public function get §`6§() : int
      {
         return §^j§;
      }
   }
}
