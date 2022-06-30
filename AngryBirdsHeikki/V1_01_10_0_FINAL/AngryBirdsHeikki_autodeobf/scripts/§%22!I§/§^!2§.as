package §"!I§
{
   import § "§.§5!N§;
   import §!E§.§!U§;
   import §!E§.§?F§;
   import §"^§.§+!'§;
   import §+!8§.§&!_§;
   import §+!8§.§,_§;
   import §+!8§.§-!N§;
   import §+!8§.§`!O§;
   import §+"§.§'! §;
   import §+"§.§>w§;
   import §,-§.§3!f§;
   import §2Y§.DisplayObject;
   import §2Y§.Sprite;
   import §3!b§.§;!7§;
   import §6!B§.§8u§;
   import §6A§.b2Vec2;
   import §9!4§.§95§;
   import §9!9§.§'j§;
   import §9b§.§"!S§;
   import §=! §.§[2§;
   import §=!<§.§1!1§;
   import §=!<§.§>"§;
   import §=!<§.§>a§;
   import §@R§.§4,§;
   import §^!5§.§&!E§;
   import §^!5§.§&m§;
   import §^!5§.§,4§;
   import §^!5§.§5G§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §^!2§
   {
      
      private static const §8k§:int = 20;
      
      public static const §@!@§:Number = §"!S§.§3i§;
      
      public static const §"!E§:Number = §"!S§.§!!d§;
      
      public static const §3!S§:Number = 1 / 20;
      
      public static const §6o§:Number = §"!S§.§!!d§ * §3!S§;
      
      public static const § [§:Number = §@!@§ * §3!S§;
      
      public static const §&6§:§[2§ = new §[2§(13 - 3);
      
      public static var §<!1§:Number = 1;
      
      protected static var §[7§:String = §&!E§.§5!$§;
       
      
      protected var §"p§:§-!N§;
      
      private var §,!d§:§,_§;
      
      private var §7!W§:Array = null;
      
      protected var §9!0§:§'j§;
      
      public var mLevelEngine:§92§;
      
      protected var §;!0§:§`@§;
      
      protected var §4`§:§95§;
      
      protected var §,'§:§9§;
      
      protected var §'J§:§?F§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §?g§:Boolean = false;
      
      protected var §^n§:Boolean = false;
      
      protected var §=c§:Boolean = false;
      
      public var §%H§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var § for§:Number;
      
      public var §#!A§:Number;
      
      private var §<!@§:Number;
      
      public var §'!F§:§5G§;
      
      public var §?j§:Boolean = false;
      
      private var §'v§:§55§;
      
      private var §3b§:Sprite;
      
      protected var §9C§:§&!E§;
      
      protected var §5w§:§;!7§ = null;
      
      private var §'l§:EventDispatcher;
      
      private var §0!G§:Array;
      
      private var §'!5§:Array;
      
      protected var §#I§:§+!'§;
      
      private var §+W§:§3!f§;
      
      protected var §;u§:§>a§;
      
      protected var §>!7§:§>"§;
      
      private var §6!_§:§1!1§;
      
      private var § V§:§1!1§;
      
      private var §]X§:§1!1§;
      
      private var §18§:Stage;
      
      private var §0b§:§,?§;
      
      protected var §?i§:§8u§;
      
      protected var §;;§:§8u§;
      
      protected var §null §:Number = 0.0;
      
      protected var §;$§:String;
      
      private var §2!#§:Boolean;
      
      protected var §]L§:Boolean;
      
      protected var §=K§:uint = 1.417339207E9;
      
      public var §3!I§:Boolean;
      
      public function §^!2§(param1:Stage)
      {
         this.§'!5§ = [];
         super();
         this.§'l§ = new EventDispatcher();
         this.§'!F§ = new §5G§();
         this.§18§ = param1;
         this.§;u§ = §>a§.§ s§;
         this.§>!7§ = this.initAnimationManager(this.§;u§);
         this.§6!_§ = this.initThemeGraphicsManager();
         this.§ V§ = this.§>'§();
         this.§]X§ = this.§ C§();
         var _loc2_:Stage3D = param1.stage3Ds[0];
         this.§#I§ = new §+!'§(§55§,param1,new Rectangle(0,0,§"!S§.§3i§,§"!S§.§!!d§),_loc2_);
         §"!S§.§%!U§.addEventListener(Event.ENTER_FRAME,this.§#I§.§@8§);
         _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§3!c§,false,0,true);
         this.§#I§.simulateMultitouch = false;
         this.§#I§.enableErrorChecking = false;
         this.§#I§.§<!W§ = 2;
         this.§#I§.§+T§();
      }
      
      public static function §2X§(param1:§,_§, param2:§,_§) : Number
      {
         var _loc3_:Number = param1.§!!A§ - param2.§!!A§;
         var _loc4_:Number = param1.§"#§ - param2.§"#§;
         return §9!>§(_loc3_,_loc4_);
      }
      
      public static function §9!>§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         if(!this.§3b§ && this.§4s§)
         {
            this.§3b§ = this.§'v§.§2]§;
         }
         return this.§3b§;
      }
      
      public function get §4s§() : Sprite
      {
         if(!this.§'v§)
         {
            this.§'v§ = this.§#I§.§&i§ as §55§;
            this.§'v§.§0!3§ = false;
         }
         return this.§'v§;
      }
      
      private function get §!C§() : DisplayObject
      {
         if(this.§4s§)
         {
            return (this.§4s§ as §55§).§!C§;
         }
         return null;
      }
      
      public function get §?!O§() : §>"§
      {
         return this.§>!7§;
      }
      
      public function get textureManager() : §>a§
      {
         return this.§;u§;
      }
      
      public function get camera() : §95§
      {
         return this.§4`§;
      }
      
      public function get objects() : §-!N§
      {
         return this.§"p§;
      }
      
      public function get particles() : §?F§
      {
         return this.§'J§;
      }
      
      public function get background() : §'j§
      {
         return this.§9!0§;
      }
      
      public function get slingshot() : §9§
      {
         return this.§,'§;
      }
      
      public function get activeObject() : §,_§
      {
         return this.§,!d§;
      }
      
      public function get §8z§() : §`@§
      {
         return this.§;!0§;
      }
      
      public function get stage() : Stage
      {
         return this.§18§;
      }
      
      public function get §%! §() : §1!1§
      {
         return this.§]X§;
      }
      
      protected function get §2n§() : §1!1§
      {
         return this.§6!_§;
      }
      
      public function set activeObject(param1:§,_§) : void
      {
         this.§,!d§ = param1;
      }
      
      public function set §'I§(param1:Boolean) : void
      {
         this.§]L§ = param1;
      }
      
      public function clear() : void
      {
         if(this.§+W§)
         {
            this.§+W§.dispose();
         }
         if(this.§;u§)
         {
            this.§;u§.dispose();
         }
         if(this.§6!_§ && this.§6!_§.textureManager)
         {
            this.§6!_§.textureManager.dispose();
         }
         if(this.§]X§ && this.§]X§.textureManager)
         {
            this.§]X§.textureManager.dispose();
         }
         if(this.§#I§)
         {
            this.§#I§.dispose();
         }
      }
      
      protected function initThemeGraphicsManager() : §1!1§
      {
         return null;
      }
      
      protected function §>'§() : §1!1§
      {
         return null;
      }
      
      protected function § C§() : §1!1§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§>a§) : §>"§
      {
         return new §>"§(param1);
      }
      
      public function §%2§(param1:Boolean) : void
      {
         if(§+!'§.§2d§)
         {
            if(param1)
            {
               §+!'§.§2d§.start();
            }
            else
            {
               §+!'§.§2d§.stop();
               §+!'§.§2d§.color = 0;
            }
         }
      }
      
      public function §3g§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function §8m§(param1:§;!7§) : void
      {
         if(this.§5w§ != null)
         {
            this.§5w§.removeEventListeners();
         }
         this.§5w§ = param1;
         if(this.mReadyToRun)
         {
            this.§5w§.addEventListeners();
         }
      }
      
      public function §%!T§() : §8u§
      {
         return this.§?i§;
      }
      
      public function §2K§(param1:§3!f§, param2:Array, param3:Function) : void
      {
         this.§+W§ = param1;
         var _loc4_:int = this.§+W§.§[J§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§;u§.§?h§(this.§+W§.§^m§(_loc5_));
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§'l§.addEventListener(Event.INIT,param3);
            this.§'!5§.push(param3);
         }
         if(this.§`e§(param2))
         {
            this.§]!d§();
         }
      }
      
      private function §`e§(param1:Array) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.§;u§.§28§())
         {
            _loc2_ = this.§;u§.§^j§ / 1000;
            _loc3_ = this.§;u§.§4!J§ / 1000;
            §4,§.log("\n\nMain texture manager memory usage:\n   textures " + _loc2_ + " kilobytes\n   bitmaps " + _loc3_ + " kilobytes\n\n");
            this.initializeAnimations(param1);
            return true;
         }
         this.§0!G§ = param1.concat();
         return false;
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         this.§>!7§.initializeAnimations(param1);
      }
      
      private function §3!c§(param1:Event) : void
      {
         this.§;u§.§-!#§();
         if(this.§2n§ && this.§2n§.textureManager)
         {
            this.§2n§.textureManager.§-!#§();
         }
         if(this.§%! § && this.§%! §.textureManager)
         {
            this.§%! §.textureManager.§-!#§();
         }
         if(this.§0!G§)
         {
            this.§`e§(this.§0!G§);
            this.§0!G§ = null;
            this.§]!d§();
         }
         if(this.§5w§ != null && this.mReadyToRun)
         {
            this.§5w§.addEventListeners();
         }
         if(this.§6!_§)
         {
            this.§6!_§.§28§();
         }
         if(this.§]X§)
         {
            if(this.§]X§.textureManager)
            {
               this.§]X§.textureManager.§-!#§();
               this.§]X§.§28§();
            }
         }
      }
      
      private function §]!d§() : void
      {
         this.§'l§.dispatchEvent(new Event(Event.INIT));
         this.§"o§();
      }
      
      private function §"o§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§'!5§)
         {
            this.§'l§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§'!5§ = [];
      }
      
      public function init(param1:§&!E§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§;!0§ = new §`@§(this,param1);
         this.§4`§ = this.§0A§(param1);
         this.§ for§ = 0;
         this.§#!A§ = 0;
         this.§<!@§ = 0;
         this.§2!#§ = false;
         this.mReadyToRun = false;
         this.§?g§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         §[7§ = param1.theme;
         this.§9C§ = param1;
         this.§^n§ = this.§4!$§(param1.theme);
         this.§=c§ = this.§5E§(param1.theme);
         if(this.§^n§ && this.§=c§)
         {
            this.initialize(param1);
         }
         else
         {
            this.§`!?§(param1.theme);
         }
         this.initReplay();
         § !;§.init();
      }
      
      protected function initReplay() : void
      {
         this.§?i§ = new §8u§(§,4§.§0!$§);
      }
      
      protected function §4!$§(param1:String) : Boolean
      {
         if(this.§6!_§)
         {
            return false;
         }
         return true;
      }
      
      protected function §5E§(param1:String) : Boolean
      {
         var _loc2_:§>w§ = null;
         if(this.§ V§)
         {
            _loc2_ = §'! §.§#n§(param1);
            if(_loc2_)
            {
               if(_loc2_.§"!Z§ && !this.§ V§.§"T§(_loc2_.§"!Z§))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function §`!?§(param1:String) : void
      {
         var _loc2_:§>w§ = null;
         if(this.§6!_§ && !this.§4!$§(param1))
         {
            this.§6!_§.removeEventListener(Event.COMPLETE,this.§'!+§);
            this.§6!_§.removeEventListener(Event.CANCEL,this.§8!?§);
            this.§6!_§.addEventListener(Event.COMPLETE,this.§'!+§);
            this.§6!_§.addEventListener(Event.CANCEL,this.§8!?§);
            this.§6!_§.§9k§(param1);
         }
         if(this.§ V§ && !this.§5E§(param1))
         {
            this.§ V§.removeEventListener(Event.COMPLETE,this.§0r§);
            this.§ V§.removeEventListener(Event.CANCEL,this.§'!]§);
            this.§ V§.addEventListener(Event.COMPLETE,this.§0r§);
            this.§ V§.addEventListener(Event.CANCEL,this.§'!]§);
            _loc2_ = §'! §.§#n§(param1);
            if(_loc2_)
            {
               this.§ V§.§9k§(_loc2_.§"!Z§);
            }
         }
      }
      
      private function §'!+§(param1:Event) : void
      {
         this.§6!_§.removeEventListener(Event.COMPLETE,this.§'!+§);
         this.§6!_§.removeEventListener(Event.CANCEL,this.§8!?§);
         this.§^n§ = true;
         if(this.§^n§ && this.§=c§)
         {
            this.initialize(this.§9C§);
         }
      }
      
      private function §8!?§(param1:Event) : void
      {
         this.§6!_§.removeEventListener(Event.COMPLETE,this.§'!+§);
         this.§6!_§.removeEventListener(Event.CANCEL,this.§8!?§);
         this.§?g§ = true;
      }
      
      private function §0r§(param1:Event) : void
      {
         this.§6!_§.removeEventListener(Event.COMPLETE,this.§0r§);
         this.§6!_§.removeEventListener(Event.CANCEL,this.§'!]§);
         this.§=c§ = true;
         if(this.§^n§ && this.§=c§)
         {
            this.initialize(this.§9C§);
         }
      }
      
      private function §'!]§(param1:Event) : void
      {
         this.§6!_§.removeEventListener(Event.COMPLETE,this.§0r§);
         this.§6!_§.removeEventListener(Event.CANCEL,this.§'!]§);
         this.§=c§ = true;
         if(this.§^n§ && this.§=c§)
         {
            this.initialize(this.§9C§);
         }
      }
      
      public function get backgroundTextureManager() : §>a§
      {
         return this.§;u§;
      }
      
      protected function initialize(param1:§&!E§) : void
      {
         this.§]L§ = false;
         this.§3!I§ = false;
         if(§+!'§.§9!;§)
         {
            §+!'§.§9!;§.speed = 1;
         }
         this.mLevelEngine = new §92§(this);
         this.§9!0§ = this.§3!%§(param1.theme,this.§;!0§.§"N§ / §3!S§,this.backgroundTextureManager,this.§4`§.§8!#§());
         this.§9!0§.§=[§(§"!S§.§^l§());
         this.§"p§ = this.initLevelObjectManager(param1);
         this.§,'§ = this.initLevelSlingshot(param1);
         this.§'J§ = this.initParticleManager(this.§>!7§,this.§;u§);
         this.§4`§.init();
         this.§,^§();
         this.loadPreviousReplayData();
         this.mReadyToRun = true;
         if(this.§5w§)
         {
            this.§5w§.addEventListeners();
         }
      }
      
      protected function loadPreviousReplayData() : void
      {
         if(this.§;$§)
         {
            this.§;;§ = §8u§.initialize(this.§;$§);
            this.§;;§.speed = 1;
            this.§;;§.play();
            this.§null § = -1000;
            this.§;$§ = null;
         }
      }
      
      public function §1H§(param1:String) : void
      {
         this.§;$§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§;;§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§;;§)
         {
            if(param1)
            {
               this.§;;§.speed = Math.min(this.§;;§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§;;§.speed = Math.max(this.§;;§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§;;§)
         {
            this.§;;§.speed = 1;
         }
      }
      
      protected function initLevelObjectManager(param1:§&!E§) : §-!N§
      {
         return new §-!N§(this,param1,new Sprite());
      }
      
      protected function §0A§(param1:§&!E§) : §95§
      {
         return new §95§(this,param1);
      }
      
      protected function §3!%§(param1:String, param2:Number, param3:§>a§, param4:Number) : §'j§
      {
         return new §'j§(param1,param2,param3,param4);
      }
      
      protected function initLevelSlingshot(param1:§&!E§) : §9§
      {
         return new §9§(this,param1,new Sprite());
      }
      
      protected function initParticleManager(param1:§>"§, param2:§>a§) : §?F§
      {
         return new §?F§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§&!E§ = this.preProcessLevel();
         var _loc4_:§&m§;
         (_loc4_ = new §&m§()).left = 0;
         _loc4_.top = -§95§.§=r§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §95§.§=r§;
         _loc4_.right = _loc4_.left + §95§.§@,§;
         _loc4_.y = -13.929;
         _loc4_.x = §95§.§@,§;
         _loc4_.id = §95§.§>!5§;
         _loc3_.§1!L§(_loc4_);
         var _loc5_:§&m§;
         (_loc5_ = new §&m§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §95§.§@,§;
         _loc5_.bottom = _loc5_.top + §95§.§=r§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §95§.§@,§ / 2;
         _loc5_.id = §95§.§!!V§;
         _loc3_.§1!L§(_loc5_);
         this.§6!>§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§[7§ != null)
         {
            _loc3_.theme = §[7§;
         }
         this.init(_loc3_);
      }
      
      protected function §6!>§(param1:§&!E§, param2:Boolean) : void
      {
         if(param2)
         {
            this.§5!a§(param1);
         }
      }
      
      protected function preProcessLevel() : §&!E§
      {
         var _loc1_:§&!E§ = new §&!E§();
         _loc1_.§6!`§ = -12;
         return new §&!E§();
      }
      
      protected function §0!;§() : Number
      {
         this.§=K§ ^= this.§=K§ << 21;
         this.§=K§ ^= this.§=K§ >>> 35;
         this.§=K§ ^= this.§=K§ << 4;
         return this.§=K§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §5!a§(param1:§&!E§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§5!N§ = null;
         this.§=K§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§0!;§() * 5;
               (_loc5_ = new §5!N§()).x = 30 + _loc3_ * 10 + this.§0!;§() * 9;
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
                  _loc5_.angle = 45 - this.§0!;§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§0!;§() * 3 - _loc3_ * 8;
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
                  _loc5_.angle = this.§0!;§() * 360;
               }
               param1.§@!,§(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      private function §8!N§() : void
      {
      }
      
      public function §,^§() : void
      {
         if(§'j§.§=!!§)
         {
            this.§;!&§(this.§9!0§.§7E§,false);
         }
         this.§;!&§(this.§'J§.§]q§(§?F§.§?!;§),false);
         this.§;!&§(this.§'J§.§]q§(§?F§.§;!;§),true);
         this.§;!&§(this.§'J§.§]q§(§?F§.§[s§),true);
         this.§;!&§(this.§"p§.§'<§,true);
         this.§;!&§(this.§,'§.sprite,true);
         this.§;!&§(this.§'J§.§]q§(§?F§.§<G§),true);
         this.§;!&§(this.§9!0§.§1!`§,false);
         if(§'j§.§=!!§)
         {
            this.§;!&§(this.§9!0§.§5N§,false);
         }
         this.§;!&§(this.§'J§.§]q§(§?F§.§"!%§),true);
      }
      
      private function §;!&§(param1:Sprite, param2:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(param1);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         param1 /= §"!S§.§<!4§;
         param2 /= §"!S§.§<!4§;
         _loc3_.x = (param1 / §95§.§3d§ + this.§4`§.§7r§ - §95§.§02§ / §95§.§3d§) * §3!S§;
         _loc3_.y = (param2 / §95§.§3d§ + this.§4`§.§4k§ - §95§.§"M§ / §95§.§3d§) * §3!S§;
         return _loc3_;
      }
      
      public function §&1§(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / §3!S§ + §95§.§02§ / §95§.§3d§ - this.§4`§.§7r§) * §95§.§3d§;
         _loc3_.y = (param2 / §3!S§ + §95§.§"M§ / §95§.§3d§ - this.§4`§.§4k§) * §95§.§3d§;
         var _loc4_:Number = Math.max(§"!S§.§<!4§,§"!S§.§[=§);
         _loc3_.x *= _loc4_;
         _loc3_.y *= _loc4_;
         return _loc3_;
      }
      
      public function §'U§(param1:String, param2:Number, param3:Number) : void
      {
         this.§"p§.§@!,§(param1,param2,param3);
      }
      
      public function §"!C§() : void
      {
         if(this.§!C§)
         {
            this.§!C§.visible = true;
            this.§!C§.alpha = 0;
         }
         this.§%H§ = 0;
      }
      
      public function §4'§() : void
      {
         this.§0b§ = new §,?§(§<!$§.§^x§,§<!$§.§'!`§);
      }
      
      public function §"4§() : void
      {
         this.§0b§ = null;
      }
      
      public function clearLevel() : void
      {
         if(this.§9!0§)
         {
            this.§9!0§.dispose();
            this.§9!0§ = null;
         }
         if(this.§"p§)
         {
            this.§"p§.dispose();
            this.§"p§ = null;
            this.§,!d§ = null;
         }
         if(this.mLevelEngine)
         {
            if(!this.mLevelEngine.§2H§)
            {
            }
            this.mLevelEngine.clear();
            this.mLevelEngine = null;
         }
         if(this.§;!0§)
         {
            this.§;!0§.clear();
            this.§;!0§ = null;
         }
         if(this.§,'§)
         {
            this.§,'§.dispose();
            this.§,'§ = null;
         }
         if(this.§4`§)
         {
            this.§4`§.clear();
            this.§4`§ = null;
         }
         if(this.§'J§)
         {
            this.§'J§.dispose();
            this.§'J§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§ for§ = 0;
         this.§#!A§ = 0;
         this.mReadyToRun = false;
         this.§2!#§ = false;
         this.§%H§ = §<!$§.§4!7§;
         if(this.§4s§)
         {
            (this.§4s§ as §55§).§[$§.x = 0;
            (this.§4s§ as §55§).§[$§.y = 0;
         }
         if(this.§!C§)
         {
            this.§!C§.visible = false;
         }
         this.§;;§ = null;
         this.§?i§ = null;
         if(this.§6!_§)
         {
            this.§6!_§.removeEventListener(Event.COMPLETE,this.§'!+§);
            this.§6!_§.removeEventListener(Event.CANCEL,this.§8!?§);
         }
         if(this.§ V§)
         {
            this.§ V§.removeEventListener(Event.COMPLETE,this.§0r§);
            this.§ V§.removeEventListener(Event.CANCEL,this.§'!]§);
         }
         this.§"o§();
         if(§+!'§.§2d§)
         {
            §+!'§.§2d§.color = 0;
         }
         if(this.§5w§)
         {
            this.§5w§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver() : void
      {
      }
      
      public function §^z§() : String
      {
         if(this.§?i§)
         {
            return this.§?i§.toString();
         }
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         if(!this.mReadyToRun || !§+!'§.§`4§())
         {
            return 0;
         }
         if(this.§;;§ && this.§;;§.§&A§)
         {
            return this.§ x§(param1,param2,param3);
         }
         return this.§+![§(param1,true,param2,param3);
      }
      
      protected function §+![§(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         if(this.§]L§)
         {
            param1 *= 0.2;
            if(§+!'§.§9!;§)
            {
               §+!'§.§9!;§.speed = 0.2;
            }
         }
         var _loc5_:Number = 0;
         this.§#!A§ += param1;
         if(param3)
         {
            this.§ for§ += param1;
            _loc5_ = this.mLevelEngine.§0!0§(this.§ for§);
            this.§,'§.update(param1,param4);
            this.§ for§ = _loc5_;
         }
         else
         {
            this.§"p§.§'2§(param1);
            this.§ for§ = 0;
         }
         if(param2)
         {
            this.§#!2§(param1,_loc5_);
         }
         return param1;
      }
      
      private function § x§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc5_:Number = NaN;
         var _loc4_:Number = §92§.§!!&§ * 1000;
         if(this.§;;§)
         {
            param1 *= this.§;;§.speed;
            _loc5_ = this.§#!A§ + param1;
            while(this.§#!A§ + _loc4_ < _loc5_)
            {
               if(this.§#!A§ + _loc4_ > this.§null §)
               {
                  this.§;;§.step(this);
                  this.§null § += _loc4_;
               }
               this.§+![§(_loc4_,false,param2,param3);
            }
            if(_loc5_ > this.§null § + _loc4_)
            {
               this.§;;§.step(this);
               this.§null § += _loc4_;
            }
            if(this.§#!A§ < _loc5_)
            {
               this.§+![§(_loc5_ - this.§#!A§,true,param2,param3);
            }
            return param1;
         }
         return this.§+![§(_loc4_,true,param2,param3);
      }
      
      private function §#!2§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.§9!0§.update(param1);
         this.§"p§.§&!G§(param1,param2);
         this.§ !O§();
         if(this.§%H§ < §<!$§.§4!7§)
         {
            this.§%H§ += param1;
            _loc3_ = §<!$§.§4!7§ / 2;
            _loc4_ = (-Math.abs(this.§%H§ - _loc3_) + _loc3_) * (§<!$§.§@![§ / _loc3_);
            if(this.§!C§)
            {
               this.§!C§.alpha = _loc4_;
            }
         }
         else if(this.§!C§)
         {
            this.§!C§.visible = false;
         }
         if(this.§0b§)
         {
            if(!this.§0b§.§3!&§(this.§4`§,param1))
            {
               this.§"4§();
            }
         }
         this.§4`§.§4"§(param1);
         this.mLevelEngine.§;!A§();
         this.§'J§.update(param1);
      }
      
      public function §&r§(param1:Number) : void
      {
         this.objects.§'2§(param1 * 1000);
         this.objects.§>!>§(param1 * 1000);
         this.§2!E§();
      }
      
      public function § !O§() : void
      {
         var _loc1_:§,_§ = null;
         if(this.§#!A§ > this.§<!@§ + 1000 / 30)
         {
            if(this.§7!W§ != null)
            {
               for each(_loc1_ in this.§7!W§)
               {
                  _loc1_.addTrail();
               }
            }
            this.§<!@§ = this.§#!A§;
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§,_§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.§"p§.isPigsAlive(true))
            {
               _loc2_ = this.§"p§.§7h§(true);
               _loc2_.§[r§.mTryToScream = §&!_§.§6!c§;
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§"p§.§[E§());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            if(this.§"p§.isPigsAlive(true))
            {
               _loc2_ = this.§"p§.§7h§(true);
               _loc2_.§[r§.mTryToBlink = §&!_§.§`I§;
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§"p§.§[E§());
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §!U§.§]6§;
         }
         § !;§.addScore(param1,param2);
         this.§5w§.addScore(param1);
         if(param3 && param1 > 0 && !this.§3!I§)
         {
            this.§8!;§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §8!;§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §!U§.§5!9§;
         }
         this.§'J§.addParticle(§!U§.§-G§,§?F§.§"!%§,§!U§.§"i§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §@!4§(param1:§,_§) : void
      {
         if(this.§7!W§ == null)
         {
            this.§7!W§ = new Array();
         }
         this.§7!W§.push(param1);
      }
      
      public function §[![§() : void
      {
         this.§,'§.§[![§();
         this.§"p§.§-,§();
         this.§3!I§ = true;
      }
      
      public function §9?§(param1:§,_§) : void
      {
         this.§'J§.§5!S§(§?F§.§?!;§);
         if(this.§7!W§.indexOf(param1) >= 0)
         {
            this.§7!W§.splice(this.§7!W§.indexOf(param1),1);
         }
         if(this.§7!W§.length == 0)
         {
            this.§7!W§ = null;
         }
      }
      
      public function §+!b§(param1:§94§, param2:Number, param3:Number) : void
      {
         this.§,!d§ = this.§"p§.§@!,§(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
         var _loc4_:Number = param1.name.toUpperCase() == "BIRD_GREEN" ? Number(§9§.§;!]§) : Number(§9§.BIRD_LAUNCH_FORCE);
         if(param1.§+!^§ > 1)
         {
            this.§,!d§.§3=§(param1.§+!^§);
            this.§,!d§.§[r§.§ !d§();
         }
         if(param1.§;1§ != 0)
         {
            _loc4_ = param1.§;1§;
         }
         var _loc5_:Number = -_loc4_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc6_:Number = _loc4_ * param2 * Math.sin(param3 / (180 / Math.PI));
         this.§,!d§.§[!8§(new b2Vec2(_loc5_,_loc6_),false,true);
         this.camera.§#M§(§95§.§7B§);
         if(this.§?i§)
         {
            this.§?i§.§+!b§(this.mLevelEngine.currentStep,param1.x,param1.y,param2,param3);
         }
      }
      
      public function activatePowerup() : void
      {
         this.§2!#§ = true;
      }
      
      private function §2!E§() : void
      {
         if(!this.§2!#§)
         {
            return;
         }
         this.§2!#§ = false;
         if(this.activeObject is §`!O§ && !(this.activeObject as §`!O§).§!!M§)
         {
            if(this.activeObject.activateSpecialPower(this.§]p§))
            {
               this.§?j§ = true;
            }
         }
         else
         {
            this.§"p§.§>!F§();
         }
         if(this.§?i§)
         {
            this.§?i§.§ !_§(this.mLevelEngine.currentStep);
         }
      }
      
      public function §7!c§() : void
      {
         this.§"p§.§7!c§();
      }
      
      public function §2f§() : void
      {
         this.§"p§.§[!'§();
      }
      
      public function §&!0§() : §&!E§
      {
         var _loc1_:§&!E§ = new §&!E§();
         _loc1_.§=!F§ = this.§9C§.§=!F§;
         _loc1_.§@Y§ = this.§9C§.§@Y§;
         this.§4`§.§"E§(_loc1_);
         this.§"p§.§]!`§(_loc1_);
         this.§,'§.§,A§(_loc1_);
         _loc1_.theme = this.§9!0§.§?2§();
         return _loc1_;
      }
      
      public function §@!I§() : int
      {
         return this.§9C§.§@Y§;
      }
      
      public function §2R§() : int
      {
         return this.§9C§.§=!F§;
      }
      
      public function §@%§(param1:int) : void
      {
         this.§9C§.§@Y§ = param1;
      }
      
      public function §?!f§(param1:int) : void
      {
         this.§9C§.§=!F§ = param1;
      }
      
      public function §?!]§(param1:Number, param2:Number) : void
      {
         if(this.§'v§)
         {
            this.§'v§.§@B§(param1,param2);
         }
         if(this.§4`§)
         {
            this.§4`§.§4"§(0);
         }
      }
      
      public function get §@§() : §&!E§
      {
         return this.§9C§;
      }
      
      public function get §]p§() : §-!N§
      {
         return this.§"p§;
      }
      
      protected function get §-!C§() : §+!'§
      {
         return this.§#I§;
      }
      
      public function get §8!0§() : int
      {
         return §8k§;
      }
   }
}
