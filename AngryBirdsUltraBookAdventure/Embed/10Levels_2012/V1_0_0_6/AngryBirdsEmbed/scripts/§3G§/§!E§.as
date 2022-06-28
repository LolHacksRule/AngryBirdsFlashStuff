package §3G§
{
   import §%!6§.§'[§;
   import §%!;§.§ else§;
   import §+!?§.§"h§;
   import §,_§.DisplayObject;
   import §,_§.Sprite;
   import §3c§.§^z§;
   import §5`§.§+q§;
   import §5`§.§?y§;
   import §5`§.§@B§;
   import §8!>§.§ !4§;
   import §8!>§.§@;§;
   import §8u§.§0r§;
   import §8u§.§44§;
   import §8u§.§6a§;
   import §8u§.§8j§;
   import §<=§.§9x§;
   import §=!B§.§%!2§;
   import §=!B§.§59§;
   import §=!B§.§<!-§;
   import §=!B§.§^!9§;
   import §=E§.§"!5§;
   import §>K§.§9X§;
   import §?t§.§,i§;
   import §?t§.§;x§;
   import §@§.§5r§;
   import §`6§.§7=§;
   import §catch§.§4@§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §!E§
   {
      
      private static const §@d§:int = 20;
      
      public static const §2C§:Number = §"h§.§4T§;
      
      public static const § &§:Number = §"h§.§0!$§;
      
      public static const §#N§:Number = 1 / 20;
      
      public static const §?r§:Number = §"h§.§0!$§ * §#N§;
      
      public static const § each§:Number = §2C§ * §#N§;
      
      public static const §<!#§:§'[§ = new §'[§(13 - 3);
      
      protected static var §]t§:String = §^!9§.§%[§;
       
      
      protected var §87§:§6a§;
      
      private var §5!I§:§0r§;
      
      private var §&!&§:Array = null;
      
      protected var §%!#§:§5r§;
      
      public var §=!D§:§'F§;
      
      protected var §&!8§:§-s§;
      
      protected var §!B§:§^z§;
      
      protected var §'!§:§3X§;
      
      protected var §&4§:§;x§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §each §:Boolean = false;
      
      protected var §,!!§:Boolean = false;
      
      protected var §9w§:Boolean = false;
      
      public var §0!8§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §;+§:Number;
      
      public var §["§:Number;
      
      private var §86§:Number;
      
      public var §]§:§%!2§;
      
      public var §?5§:Boolean = false;
      
      private var §?!C§:§6!>§;
      
      private var §[!@§:Sprite;
      
      protected var §,t§:§^!9§;
      
      protected var §,!J§:§"!5§ = null;
      
      private var §5!#§:EventDispatcher;
      
      private var §?F§:Array;
      
      private var § !6§:Array;
      
      protected var §5!'§:§4@§;
      
      private var §#§:§9x§;
      
      protected var §^S§:§?y§;
      
      protected var §#L§:§+q§;
      
      private var §,!$§:§@B§;
      
      private var §]I§:§@B§;
      
      private var §++§:§@B§;
      
      private var §?$§:Stage;
      
      private var §0!5§:§'!$§;
      
      protected var §2!<§:§ else§;
      
      protected var §-W§:§ else§;
      
      protected var §56§:Number = 0.0;
      
      protected var §&`§:String;
      
      private var §'1§:Boolean;
      
      protected var §^V§:Boolean;
      
      protected var §@!I§:uint = 1.417339207E9;
      
      public var §%=§:Boolean;
      
      public function §!E§(param1:Stage)
      {
         this.§ !6§ = [];
         super();
         this.§5!#§ = new EventDispatcher();
         this.§]§ = new §%!2§();
         this.§?$§ = param1;
         this.§^S§ = §?y§.§@j§;
         this.§#L§ = this.initAnimationManager(this.§^S§);
         this.§,!$§ = this.initThemeGraphicsManager();
         this.§]I§ = this.§ 3§();
         this.§++§ = this.§@T§();
         var _loc2_:Stage3D = param1.stage3Ds[0];
         this.§5!'§ = new §4@§(§6!>§,param1,new Rectangle(0,0,§"h§.§4T§,§"h§.§0!$§),_loc2_);
         §"h§.§'7§.addEventListener(Event.ENTER_FRAME,this.§5!'§.onEnterFrame);
         _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§]B§,false,0,true);
         this.§5!'§.§1=§ = false;
         this.§5!'§.enableErrorChecking = false;
         this.§5!'§.§@!9§ = 2;
         this.§5!'§.§=H§();
      }
      
      public static function §">§(param1:§0r§, param2:§0r§) : Number
      {
         var _loc3_:Number = param1.§#!0§ - param2.§#!0§;
         var _loc4_:Number = param1.§ c§ - param2.§ c§;
         return §2!F§(_loc3_,_loc4_);
      }
      
      public static function §2!F§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         if(!this.§[!@§ && this.§35§)
         {
            this.§[!@§ = this.§?!C§.§4L§;
         }
         return this.§[!@§;
      }
      
      public function get §35§() : Sprite
      {
         if(!this.§?!C§)
         {
            this.§?!C§ = this.§5!'§.§9!E§ as §6!>§;
            this.§?!C§.§!!%§ = false;
         }
         return this.§?!C§;
      }
      
      private function get §?!=§() : DisplayObject
      {
         if(this.§35§)
         {
            return (this.§35§ as §6!>§).§?!=§;
         }
         return null;
      }
      
      public function get § use§() : §+q§
      {
         return this.§#L§;
      }
      
      public function get textureManager() : §?y§
      {
         return this.§^S§;
      }
      
      public function get camera() : §^z§
      {
         return this.§!B§;
      }
      
      public function get objects() : §6a§
      {
         return this.§87§;
      }
      
      public function get particles() : §;x§
      {
         return this.§&4§;
      }
      
      public function get background() : §5r§
      {
         return this.§%!#§;
      }
      
      public function get slingshot() : §3X§
      {
         return this.§'!§;
      }
      
      public function get activeObject() : §0r§
      {
         return this.§5!I§;
      }
      
      public function get §0>§() : §-s§
      {
         return this.§&!8§;
      }
      
      public function get stage() : Stage
      {
         return this.§?$§;
      }
      
      public function get §^!#§() : §@B§
      {
         return this.§++§;
      }
      
      protected function get §<!?§() : §@B§
      {
         return this.§,!$§;
      }
      
      public function set activeObject(param1:§0r§) : void
      {
         this.§5!I§ = param1;
      }
      
      public function set §@y§(param1:Boolean) : void
      {
         this.§^V§ = param1;
      }
      
      public function clear() : void
      {
         if(this.§#§)
         {
            this.§#§.dispose();
         }
         if(this.§^S§)
         {
            this.§^S§.dispose();
         }
         if(this.§,!$§ && this.§,!$§.textureManager)
         {
            this.§,!$§.textureManager.dispose();
         }
         if(this.§++§ && this.§++§.textureManager)
         {
            this.§++§.textureManager.dispose();
         }
         if(this.§5!'§)
         {
            this.§5!'§.dispose();
         }
      }
      
      protected function initThemeGraphicsManager() : §@B§
      {
         return null;
      }
      
      protected function § 3§() : §@B§
      {
         return null;
      }
      
      protected function §@T§() : §@B§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§?y§) : §+q§
      {
         return new §+q§(param1);
      }
      
      public function §]!!§(param1:Boolean) : void
      {
         if(§4@§.§0W§)
         {
            if(param1)
            {
               §4@§.§0W§.start();
            }
            else
            {
               §4@§.§0W§.stop();
               §4@§.§0W§.color = 0;
            }
         }
      }
      
      public function §`M§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function §;j§(param1:§"!5§) : void
      {
         if(this.§,!J§ != null)
         {
            this.§,!J§.removeEventListeners();
         }
         this.§,!J§ = param1;
         if(this.mReadyToRun)
         {
            this.§,!J§.addEventListeners();
         }
      }
      
      public function §@7§() : § else§
      {
         return this.§2!<§;
      }
      
      public function §#y§(param1:§9x§, param2:Array, param3:Function) : void
      {
         this.§#§ = param1;
         var _loc4_:int = this.§#§.§[F§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§^S§.§6v§(this.§#§.§"!=§(_loc5_));
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§5!#§.addEventListener(Event.INIT,param3);
            this.§ !6§.push(param3);
         }
         if(this.§@!!§(param2))
         {
            this.§[w§();
         }
      }
      
      private function §@!!§(param1:Array) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.§^S§.§4+§())
         {
            _loc2_ = this.§^S§.§=N§ / 1000;
            _loc3_ = this.§^S§.§?^§ / 1000;
            §9X§.log("\n\nMain texture manager memory usage:\n   textures " + _loc2_ + " kilobytes\n   bitmaps " + _loc3_ + " kilobytes\n\n");
            this.initializeAnimations(param1);
            return true;
         }
         this.§?F§ = param1.concat();
         return false;
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         this.§#L§.initializeAnimations(param1);
      }
      
      private function §]B§(param1:Event) : void
      {
         this.§^S§.§0<§();
         if(this.§<!?§ && this.§<!?§.textureManager)
         {
            this.§<!?§.textureManager.§0<§();
         }
         if(this.§^!#§ && this.§^!#§.textureManager)
         {
            this.§^!#§.textureManager.§0<§();
         }
         if(this.§?F§)
         {
            this.§@!!§(this.§?F§);
            this.§?F§ = null;
            this.§[w§();
         }
         if(this.§,!J§ != null && this.mReadyToRun)
         {
            this.§,!J§.addEventListeners();
         }
         if(this.§,!$§)
         {
            this.§,!$§.§4+§();
         }
         if(this.§++§)
         {
            if(this.§++§.textureManager)
            {
               this.§++§.textureManager.§0<§();
               this.§++§.§4+§();
            }
         }
      }
      
      private function §[w§() : void
      {
         this.§5!#§.dispatchEvent(new Event(Event.INIT));
         this.§-!F§();
      }
      
      private function §-!F§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§ !6§)
         {
            this.§5!#§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§ !6§ = [];
      }
      
      public function init(param1:§^!9§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§&!8§ = new §-s§(this,param1);
         this.§!B§ = this.initLevelCamera(param1);
         this.§;+§ = 0;
         this.§["§ = 0;
         this.§86§ = 0;
         this.§'1§ = false;
         this.mReadyToRun = false;
         this.§each § = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         §]t§ = param1.theme;
         this.§,t§ = param1;
         this.§,!!§ = this.§`1§(param1.theme);
         this.§9w§ = this.§1!?§(param1.theme);
         if(this.§,!!§ && this.§9w§)
         {
            this.initialize(param1);
         }
         else
         {
            this.§6!I§(param1.theme);
         }
         this.§"o§();
         §4f§.init();
      }
      
      protected function §"o§() : void
      {
         this.§2!<§ = new § else§(§59§.§%j§);
      }
      
      protected function §`1§(param1:String) : Boolean
      {
         if(this.§,!$§)
         {
            return false;
         }
         return true;
      }
      
      protected function §1!?§(param1:String) : Boolean
      {
         var _loc2_:§@;§ = null;
         if(this.§]I§)
         {
            _loc2_ = § !4§.§;h§(param1);
            if(_loc2_)
            {
               if(_loc2_.§6!@§ && !this.§]I§.§ b§(_loc2_.§6!@§))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function §6!I§(param1:String) : void
      {
         var _loc2_:§@;§ = null;
         if(this.§,!$§ && !this.§`1§(param1))
         {
            this.§,!$§.removeEventListener(Event.COMPLETE,this.§"q§);
            this.§,!$§.removeEventListener(Event.CANCEL,this.§>!F§);
            this.§,!$§.addEventListener(Event.COMPLETE,this.§"q§);
            this.§,!$§.addEventListener(Event.CANCEL,this.§>!F§);
            this.§,!$§.§[!2§(param1);
         }
         if(this.§]I§ && !this.§1!?§(param1))
         {
            this.§]I§.removeEventListener(Event.COMPLETE,this.§[!§);
            this.§]I§.removeEventListener(Event.CANCEL,this.§,[§);
            this.§]I§.addEventListener(Event.COMPLETE,this.§[!§);
            this.§]I§.addEventListener(Event.CANCEL,this.§,[§);
            _loc2_ = § !4§.§;h§(param1);
            if(_loc2_)
            {
               this.§]I§.§[!2§(_loc2_.§6!@§);
            }
         }
      }
      
      private function §"q§(param1:Event) : void
      {
         this.§,!$§.removeEventListener(Event.COMPLETE,this.§"q§);
         this.§,!$§.removeEventListener(Event.CANCEL,this.§>!F§);
         this.§,!!§ = true;
         if(this.§,!!§ && this.§9w§)
         {
            this.initialize(this.§,t§);
         }
      }
      
      private function §>!F§(param1:Event) : void
      {
         this.§,!$§.removeEventListener(Event.COMPLETE,this.§"q§);
         this.§,!$§.removeEventListener(Event.CANCEL,this.§>!F§);
         this.§each § = true;
      }
      
      private function §[!§(param1:Event) : void
      {
         this.§,!$§.removeEventListener(Event.COMPLETE,this.§[!§);
         this.§,!$§.removeEventListener(Event.CANCEL,this.§,[§);
         this.§9w§ = true;
         if(this.§,!!§ && this.§9w§)
         {
            this.initialize(this.§,t§);
         }
      }
      
      private function §,[§(param1:Event) : void
      {
         this.§,!$§.removeEventListener(Event.COMPLETE,this.§[!§);
         this.§,!$§.removeEventListener(Event.CANCEL,this.§,[§);
         this.§9w§ = true;
         if(this.§,!!§ && this.§9w§)
         {
            this.initialize(this.§,t§);
         }
      }
      
      public function get backgroundTextureManager() : §?y§
      {
         return this.§^S§;
      }
      
      protected function initialize(param1:§^!9§) : void
      {
         this.§^V§ = false;
         this.§%=§ = false;
         if(§4@§.§&R§)
         {
            §4@§.§&R§.speed = 1;
         }
         this.§=!D§ = new §'F§(this);
         this.§%!#§ = this.initLevelBackground(param1.theme,this.§&!8§.§-F§ / §#N§,this.backgroundTextureManager,this.§!B§.§'e§());
         this.§%!#§.§=K§(§"h§.§"+§());
         this.§87§ = this.initLevelObjectManager(param1);
         this.§'!§ = this.initLevelSlingshot(param1);
         this.§&4§ = this.§>!&§(this.§#L§,this.§^S§);
         this.§!B§.init();
         this.§!W§();
         this.§;J§();
         this.mReadyToRun = true;
         if(this.§,!J§)
         {
            this.§,!J§.addEventListeners();
         }
      }
      
      protected function §;J§() : void
      {
         if(this.§&`§)
         {
            this.§-W§ = § else§.initialize(this.§&`§);
            this.§-W§.speed = 1;
            this.§-W§.play();
            this.§56§ = -1000;
            this.§&`§ = null;
         }
      }
      
      public function §-!B§(param1:String) : void
      {
         this.§&`§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§-W§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§-W§)
         {
            if(param1)
            {
               this.§-W§.speed = Math.min(this.§-W§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§-W§.speed = Math.max(this.§-W§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§-W§)
         {
            this.§-W§.speed = 1;
         }
      }
      
      protected function initLevelObjectManager(param1:§^!9§) : §6a§
      {
         return new §6a§(this,param1,new Sprite());
      }
      
      protected function initLevelCamera(param1:§^!9§) : §^z§
      {
         return new §^z§(this,param1);
      }
      
      protected function initLevelBackground(param1:String, param2:Number, param3:§?y§, param4:Number) : §5r§
      {
         return new §5r§(param1,param2,param3,param4);
      }
      
      protected function initLevelSlingshot(param1:§^!9§) : §3X§
      {
         return new §3X§(this,param1,new Sprite());
      }
      
      protected function §>!&§(param1:§+q§, param2:§?y§) : §;x§
      {
         return new §;x§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§^!9§ = this.§8#§();
         var _loc4_:§<!-§;
         (_loc4_ = new §<!-§()).left = 0;
         _loc4_.top = -§^z§.§'f§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §^z§.§'f§;
         _loc4_.right = _loc4_.left + §^z§.§=u§;
         _loc4_.y = -13.929;
         _loc4_.x = §^z§.§=u§;
         _loc4_.id = §^z§.§,!4§;
         _loc3_.§<!B§(_loc4_);
         var _loc5_:§<!-§;
         (_loc5_ = new §<!-§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §^z§.§=u§;
         _loc5_.bottom = _loc5_.top + §^z§.§'f§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §^z§.§=u§ / 2;
         _loc5_.id = §^z§.§,z§;
         _loc3_.§<!B§(_loc5_);
         this.§&!2§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§]t§ != null)
         {
            _loc3_.theme = §]t§;
         }
         this.init(_loc3_);
      }
      
      protected function §&!2§(param1:§^!9§, param2:Boolean) : void
      {
         if(param2)
         {
            this.§+!;§(param1);
         }
      }
      
      protected function §8#§() : §^!9§
      {
         var _loc1_:§^!9§ = new §^!9§();
         _loc1_.§11§ = -12;
         return new §^!9§();
      }
      
      protected function §9!4§() : Number
      {
         this.§@!I§ ^= this.§@!I§ << 21;
         this.§@!I§ ^= this.§@!I§ >>> 35;
         this.§@!I§ ^= this.§@!I§ << 4;
         return this.§@!I§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §+!;§(param1:§^!9§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§7=§ = null;
         this.§@!I§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§9!4§() * 5;
               (_loc5_ = new §7=§()).x = 30 + _loc3_ * 10 + this.§9!4§() * 9;
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
                  _loc5_.angle = 45 - this.§9!4§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§9!4§() * 3 - _loc3_ * 8;
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
                  _loc5_.angle = this.§9!4§() * 360;
               }
               param1.addObject(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      private function §<!5§() : void
      {
      }
      
      public function §!W§() : void
      {
         if(§5r§.§0!G§)
         {
            this.§3D§(this.§%!#§.§7s§,false);
         }
         this.§3D§(this.§&4§.§[$§(§;x§.§,!5§),false);
         this.§3D§(this.§&4§.§[$§(§;x§.§4!D§),true);
         this.§3D§(this.§&4§.§[$§(§;x§.§;K§),true);
         this.§3D§(this.§87§.§4i§,true);
         this.§3D§(this.§'!§.sprite,true);
         this.§3D§(this.§&4§.§[$§(§;x§.§]+§),true);
         this.§3D§(this.§%!#§.§7!0§,false);
         if(§5r§.§0!G§)
         {
            this.§3D§(this.§%!#§.§%>§,false);
         }
         this.§3D§(this.§&4§.§[$§(§;x§.§-4§),true);
      }
      
      private function §3D§(param1:Sprite, param2:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(param1);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         param1 /= §"h§.§'!I§;
         param2 /= §"h§.§'!I§;
         _loc3_.x = (param1 / §^z§.§%!8§ + this.§!B§.§,!&§ - §^z§.§<H§ / §^z§.§%!8§) * §#N§;
         _loc3_.y = (param2 / §^z§.§%!8§ + this.§!B§.§',§ - §^z§.§#&§ / §^z§.§%!8§) * §#N§;
         return _loc3_;
      }
      
      public function §>9§(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / §#N§ + §^z§.§<H§ / §^z§.§%!8§ - this.§!B§.§,!&§) * §^z§.§%!8§;
         _loc3_.y = (param2 / §#N§ + §^z§.§#&§ / §^z§.§%!8§ - this.§!B§.§',§) * §^z§.§%!8§;
         var _loc4_:Number = Math.max(§"h§.§'!I§,§"h§.§for§);
         _loc3_.x *= _loc4_;
         _loc3_.y *= _loc4_;
         return _loc3_;
      }
      
      public function §8!2§(param1:String, param2:Number, param3:Number) : void
      {
         this.§87§.addObject(param1,param2,param3);
      }
      
      public function §07§() : void
      {
         if(this.§?!=§)
         {
            this.§?!=§.visible = true;
            this.§?!=§.alpha = 0;
         }
         this.§0!8§ = 0;
      }
      
      public function §;1§() : void
      {
         this.§0!5§ = new §'!$§(§&!"§.§]!6§,§&!"§.§^=§);
      }
      
      public function §7V§() : void
      {
         this.§0!5§ = null;
      }
      
      public function clearLevel() : void
      {
         if(this.§%!#§)
         {
            this.§%!#§.dispose();
            this.§%!#§ = null;
         }
         if(this.§87§)
         {
            this.§87§.dispose();
            this.§87§ = null;
            this.§5!I§ = null;
         }
         if(this.§=!D§)
         {
            if(!this.§=!D§.§=!5§)
            {
            }
            this.§=!D§.clear();
            this.§=!D§ = null;
         }
         if(this.§&!8§)
         {
            this.§&!8§.clear();
            this.§&!8§ = null;
         }
         if(this.§'!§)
         {
            this.§'!§.dispose();
            this.§'!§ = null;
         }
         if(this.§!B§)
         {
            this.§!B§.clear();
            this.§!B§ = null;
         }
         if(this.§&4§)
         {
            this.§&4§.dispose();
            this.§&4§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§;+§ = 0;
         this.§["§ = 0;
         this.mReadyToRun = false;
         this.§'1§ = false;
         this.§0!8§ = §&!"§.§case §;
         if(this.§35§)
         {
            (this.§35§ as §6!>§).§&8§.x = 0;
            (this.§35§ as §6!>§).§&8§.y = 0;
         }
         if(this.§?!=§)
         {
            this.§?!=§.visible = false;
         }
         this.§-W§ = null;
         this.§2!<§ = null;
         if(this.§,!$§)
         {
            this.§,!$§.removeEventListener(Event.COMPLETE,this.§"q§);
            this.§,!$§.removeEventListener(Event.CANCEL,this.§>!F§);
         }
         if(this.§]I§)
         {
            this.§]I§.removeEventListener(Event.COMPLETE,this.§[!§);
            this.§]I§.removeEventListener(Event.CANCEL,this.§,[§);
         }
         this.§-!F§();
         if(§4@§.§0W§)
         {
            §4@§.§0W§.color = 0;
         }
         if(this.§,!J§)
         {
            this.§,!J§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver() : void
      {
      }
      
      public function §2=§() : String
      {
         if(this.§2!<§)
         {
            return this.§2!<§.toString();
         }
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         if(!this.mReadyToRun || !§4@§.§!!7§())
         {
            return 0;
         }
         if(this.§-W§ && this.§-W§.§'I§)
         {
            return this.§[8§(param1,param2,param3);
         }
         return this.§3V§(param1,true,param2,param3);
      }
      
      protected function §3V§(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         if(this.§^V§)
         {
            param1 *= 0.2;
            if(§4@§.§&R§)
            {
               §4@§.§&R§.speed = 0.2;
            }
         }
         var _loc5_:Number = 0;
         this.§["§ += param1;
         if(param3)
         {
            this.§;+§ += param1;
            _loc5_ = this.§=!D§.§5N§(this.§;+§);
            this.§'!§.update(param1,param4);
            this.§;+§ = _loc5_;
         }
         else
         {
            this.§87§.§^!C§(param1);
            this.§;+§ = 0;
         }
         if(param2)
         {
            this.§6;§(param1,_loc5_);
         }
         return param1;
      }
      
      private function §[8§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc5_:Number = NaN;
         var _loc4_:Number = §'F§.§=!+§ * 1000;
         if(this.§-W§)
         {
            param1 *= this.§-W§.speed;
            _loc5_ = this.§["§ + param1;
            while(this.§["§ + _loc4_ < _loc5_)
            {
               if(this.§["§ + _loc4_ > this.§56§)
               {
                  this.§-W§.step(this);
                  this.§56§ += _loc4_;
               }
               this.§3V§(_loc4_,false,param2,param3);
            }
            if(_loc5_ > this.§56§ + _loc4_)
            {
               this.§-W§.step(this);
               this.§56§ += _loc4_;
            }
            if(this.§["§ < _loc5_)
            {
               this.§3V§(_loc5_ - this.§["§,true,param2,param3);
            }
            return param1;
         }
         return this.§3V§(_loc4_,true,param2,param3);
      }
      
      private function §6;§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.§%!#§.update(param1);
         this.§87§.§;C§(param1,param2);
         this.§9!%§();
         if(this.§0!8§ < §&!"§.§case §)
         {
            this.§0!8§ += param1;
            _loc3_ = §&!"§.§case § / 2;
            _loc4_ = (-Math.abs(this.§0!8§ - _loc3_) + _loc3_) * (§&!"§.§82§ / _loc3_);
            if(this.§?!=§)
            {
               this.§?!=§.alpha = _loc4_;
            }
         }
         else if(this.§?!=§)
         {
            this.§?!=§.visible = false;
         }
         if(this.§0!5§)
         {
            if(!this.§0!5§.§"<§(this.§!B§,param1))
            {
               this.§7V§();
            }
         }
         this.§!B§.§,d§(param1);
         this.§=!D§.§'L§();
         this.§&4§.update(param1);
      }
      
      public function §&'§(param1:Number) : void
      {
         this.objects.§^!C§(param1 * 1000);
         this.objects.§>!#§(param1 * 1000);
         this.§%o§();
      }
      
      public function §9!%§() : void
      {
         var _loc1_:§0r§ = null;
         if(this.§["§ > this.§86§ + 1000 / 30)
         {
            if(this.§&!&§ != null)
            {
               for each(_loc1_ in this.§&!&§)
               {
                  _loc1_.addTrail();
               }
            }
            this.§86§ = this.§["§;
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§0r§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.§87§.isPigsAlive(true))
            {
               _loc2_ = this.§87§.§;_§(true);
               _loc2_.§7!;§.mTryToScream = §44§.§;<§;
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§87§.§@a§());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            if(this.§87§.isPigsAlive(true))
            {
               _loc2_ = this.§87§.§;_§(true);
               _loc2_.§7!;§.mTryToBlink = §44§.§8g§;
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§87§.§@a§());
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §,i§.§4!A§;
         }
         §4f§.addScore(param1,param2);
         this.§,!J§.addScore(param1);
         if(param3 && param1 > 0 && !this.§%=§)
         {
            this.§ g§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function § g§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §,i§.§>>§;
         }
         this.§&4§.§8"§(§,i§.§9Q§,§;x§.§-4§,§,i§.§`!7§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §=F§(param1:§0r§) : void
      {
         if(this.§&!&§ == null)
         {
            this.§&!&§ = new Array();
         }
         this.§&!&§.push(param1);
      }
      
      public function §4A§() : void
      {
         this.§'!§.§4A§();
         this.§87§.§"g§();
         this.§%=§ = true;
      }
      
      public function §%a§(param1:§0r§) : void
      {
         this.§&4§.§]?§(§;x§.§,!5§);
         if(this.§&!&§.indexOf(param1) >= 0)
         {
            this.§&!&§.splice(this.§&!&§.indexOf(param1),1);
         }
         if(this.§&!&§.length == 0)
         {
            this.§&!&§ = null;
         }
      }
      
      public function §0F§(param1:§6A§, param2:Number, param3:Number) : void
      {
         this.§5!I§ = this.§87§.addObject(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
         var _loc4_:Number = param1.name.toUpperCase() == "BIRD_GREEN" ? Number(§3X§.§,#§) : Number(§3X§.§-'§);
         if(param1.§0!=§ > 1)
         {
            this.§5!I§.§=!-§(param1.§0!=§);
            this.§5!I§.§7!;§.§,9§();
         }
         if(param1.§"@§ != 0)
         {
            _loc4_ = param1.§"@§;
         }
         var _loc5_:Number = -_loc4_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc6_:Number = _loc4_ * param2 * Math.sin(param3 / (180 / Math.PI));
         this.§5!I§.§96§(new b2Vec2(_loc5_,_loc6_),false,true);
         this.camera.§&k§(§^z§.§6!G§);
         if(this.§2!<§)
         {
            this.§2!<§.§0F§(this.§=!D§.§>! §,param1.x,param1.y,param2,param3);
         }
      }
      
      public function activatePowerup() : void
      {
         this.§'1§ = true;
      }
      
      private function §%o§() : void
      {
         if(!this.§'1§)
         {
            return;
         }
         this.§'1§ = false;
         if(this.activeObject is §8j§ && !(this.activeObject as §8j§).§=t§)
         {
            if(this.activeObject.activateSpecialPower(this.§`N§))
            {
               this.§?5§ = true;
            }
         }
         else
         {
            this.§87§.§1u§();
         }
         if(this.§2!<§)
         {
            this.§2!<§.§4!3§(this.§=!D§.§>! §);
         }
      }
      
      public function §%!1§() : void
      {
         this.§87§.§%!1§();
      }
      
      public function §&T§() : void
      {
         this.§87§.§9C§();
      }
      
      public function §6&§() : §^!9§
      {
         var _loc1_:§^!9§ = new §^!9§();
         _loc1_.§`0§ = this.§,t§.§`0§;
         _loc1_.§7G§ = this.§,t§.§7G§;
         this.§!B§.§,!-§(_loc1_);
         this.§87§.§"z§(_loc1_);
         this.§'!§.§,K§(_loc1_);
         _loc1_.theme = this.§%!#§.§5U§();
         return _loc1_;
      }
      
      public function §]S§() : int
      {
         return this.§,t§.§7G§;
      }
      
      public function §7Y§() : int
      {
         return this.§,t§.§`0§;
      }
      
      public function §1A§(param1:int) : void
      {
         this.§,t§.§7G§ = param1;
      }
      
      public function §#W§(param1:int) : void
      {
         this.§,t§.§`0§ = param1;
      }
      
      public function §`!I§(param1:Number, param2:Number) : void
      {
         if(this.§?!C§)
         {
            this.§?!C§.§=!&§(param1,param2);
         }
         if(this.§!B§)
         {
            this.§!B§.§,d§(0);
         }
      }
      
      public function get §89§() : §^!9§
      {
         return this.§,t§;
      }
      
      public function get §`N§() : §6a§
      {
         return this.§87§;
      }
      
      protected function get starling() : §4@§
      {
         return this.§5!'§;
      }
      
      public function get §#!#§() : int
      {
         return §@d§;
      }
   }
}
