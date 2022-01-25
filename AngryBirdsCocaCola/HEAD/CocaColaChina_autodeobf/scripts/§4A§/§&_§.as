package §4A§
{
   import § !K§.DisplayObject;
   import § !K§.Sprite;
   import §&!L§.b2Vec2;
   import §'!G§.§1C§;
   import §-S§.§`"§;
   import §-Y§.§5L§;
   import §-v§.§,!1§;
   import §1q§.§2W§;
   import §6l§.§79§;
   import §86§.§!!d§;
   import §86§.§%!<§;
   import §86§.§9]§;
   import §86§.§<!X§;
   import §9!Y§.§!![§;
   import §9!Y§.§!q§;
   import §9!Y§.§3!0§;
   import §9w§.§-0§;
   import §;+§.§"!R§;
   import §;+§.§+!?§;
   import §;+§.§5!P§;
   import §;+§.§[!3§;
   import §;G§.§1D§;
   import §;G§.§;Z§;
   import §;m§.§6!U§;
   import §`! §.§1!#§;
   import §`! §.§]!=§;
   import §`!+§.§]!"§;
   import §`!C§.§8!9§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §&_§
   {
      
      private static const §4!^§:int = 20;
      
      public static const § !>§:Number = §,!1§.§ e§;
      
      public static const §#u§:Number = §,!1§.§7e§;
      
      public static const §5-§:Number = 1 / 20;
      
      public static const §;I§:Number = §,!1§.§7e§ * §5-§;
      
      public static const §+!B§:Number = § !>§ * §5-§;
      
      public static const §<!'§:§6!U§ = new §6!U§(13 - 3);
      
      protected static var § D§:String = §9]§.§8m§;
       
      
      protected var § !'§:§+!?§;
      
      private var §>!N§:§[!3§;
      
      private var §-J§:Array = null;
      
      protected var §!!D§:§5L§;
      
      public var mLevelEngine:§'!;§;
      
      protected var §8!V§:§0![§;
      
      protected var §!V§:§2W§;
      
      protected var §<,§:§3m§;
      
      protected var §#!;§:§1D§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §]Q§:Boolean = false;
      
      protected var §&?§:Boolean = false;
      
      protected var §6!C§:Boolean = false;
      
      public var §4!I§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var each:Number;
      
      public var §@&§:Number;
      
      private var §#E§:Number;
      
      public var §?_§:§%!<§;
      
      public var §+2§:Boolean = false;
      
      private var §3!a§:§#g§;
      
      private var §3!<§:Sprite;
      
      protected var §40§:§9]§;
      
      protected var §5§:§]!"§ = null;
      
      private var §implements§:EventDispatcher;
      
      private var §[P§:Array;
      
      private var §7!N§:Array;
      
      protected var §"!H§:§79§;
      
      private var §;!+§:§`"§;
      
      protected var §!!@§:§!q§;
      
      protected var §]S§:§!![§;
      
      private var §4!B§:§3!0§;
      
      private var §5q§:§3!0§;
      
      private var §+E§:§3!0§;
      
      private var §@c§:Stage;
      
      private var §@m§:§ try§;
      
      protected var §"8§:§-0§;
      
      protected var §-$§:§-0§;
      
      protected var §@!$§:Number = 0.0;
      
      protected var §2C§:String;
      
      private var §+#§:Boolean;
      
      protected var §8x§:Boolean;
      
      protected var §9V§:uint = 1.417339207E9;
      
      public var §^!2§:Boolean;
      
      public function §&_§(param1:Stage)
      {
         this.§7!N§ = [];
         super();
         this.§implements§ = new EventDispatcher();
         this.§?_§ = new §%!<§();
         this.§@c§ = param1;
         this.§!!@§ = §!q§.§@!c§;
         this.§]S§ = this.initAnimationManager(this.§!!@§);
         this.§4!B§ = this.initThemeGraphicsManager();
         this.§5q§ = this.§";§();
         this.§+E§ = this.§%;§();
         var _loc2_:Stage3D = param1.stage3Ds[0];
         this.§"!H§ = new §79§(§#g§,param1,new Rectangle(0,0,§,!1§.§ e§,§,!1§.§7e§),_loc2_);
         §,!1§.§0!9§.addEventListener(Event.ENTER_FRAME,this.§"!H§.§^f§);
         _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§!6§,false,0,true);
         this.§"!H§.simulateMultitouch = false;
         this.§"!H§.enableErrorChecking = false;
         this.§"!H§.§!C§ = 2;
         this.§"!H§.§62§();
      }
      
      public static function §4!F§(param1:§[!3§, param2:§[!3§) : Number
      {
         var _loc3_:Number = param1.§-!4§ - param2.§-!4§;
         var _loc4_:Number = param1.§7@§ - param2.§7@§;
         return §#!>§(_loc3_,_loc4_);
      }
      
      public static function §#!>§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         if(!this.§3!<§ && this.§@<§)
         {
            this.§3!<§ = this.§3!a§.§&!I§;
         }
         return this.§3!<§;
      }
      
      public function get §@<§() : Sprite
      {
         if(!this.§3!a§)
         {
            this.§3!a§ = this.§"!H§.§&!=§ as §#g§;
            this.§3!a§.§^Y§ = false;
         }
         return this.§3!a§;
      }
      
      private function get §]!A§() : DisplayObject
      {
         if(this.§@<§)
         {
            return (this.§@<§ as §#g§).§]!A§;
         }
         return null;
      }
      
      public function get §0!+§() : §!![§
      {
         return this.§]S§;
      }
      
      public function get textureManager() : §!q§
      {
         return this.§!!@§;
      }
      
      public function get camera() : §2W§
      {
         return this.§!V§;
      }
      
      public function get objects() : §+!?§
      {
         return this.§ !'§;
      }
      
      public function get particles() : §1D§
      {
         return this.§#!;§;
      }
      
      public function get background() : §5L§
      {
         return this.§!!D§;
      }
      
      public function get slingshot() : §3m§
      {
         return this.§<,§;
      }
      
      public function get activeObject() : §[!3§
      {
         return this.§>!N§;
      }
      
      public function get §@I§() : §0![§
      {
         return this.§8!V§;
      }
      
      public function get stage() : Stage
      {
         return this.§@c§;
      }
      
      public function get §;`§() : §3!0§
      {
         return this.§+E§;
      }
      
      protected function get §@'§() : §3!0§
      {
         return this.§4!B§;
      }
      
      public function set activeObject(param1:§[!3§) : void
      {
         this.§>!N§ = param1;
      }
      
      public function set §!S§(param1:Boolean) : void
      {
         this.§8x§ = param1;
      }
      
      public function clear() : void
      {
         if(this.§;!+§)
         {
            this.§;!+§.dispose();
         }
         if(this.§!!@§)
         {
            this.§!!@§.dispose();
         }
         if(this.§4!B§ && this.§4!B§.textureManager)
         {
            this.§4!B§.textureManager.dispose();
         }
         if(this.§+E§ && this.§+E§.textureManager)
         {
            this.§+E§.textureManager.dispose();
         }
         if(this.§"!H§)
         {
            this.§"!H§.dispose();
         }
      }
      
      protected function initThemeGraphicsManager() : §3!0§
      {
         return null;
      }
      
      protected function §";§() : §3!0§
      {
         return null;
      }
      
      protected function §%;§() : §3!0§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§!q§) : §!![§
      {
         return new §!![§(param1);
      }
      
      public function §=!H§(param1:Boolean) : void
      {
         if(§79§.§#[§)
         {
            if(param1)
            {
               §79§.§#[§.start();
            }
            else
            {
               §79§.§#[§.stop();
               §79§.§#[§.color = 0;
            }
         }
      }
      
      public function §&c§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function §2!L§(param1:§]!"§) : void
      {
         if(this.§5§ != null)
         {
            this.§5§.removeEventListeners();
         }
         this.§5§ = param1;
         if(this.mReadyToRun)
         {
            this.§5§.addEventListeners();
         }
      }
      
      public function §-n§() : §-0§
      {
         return this.§"8§;
      }
      
      public function §&f§(param1:§`"§, param2:Array, param3:Function) : void
      {
         this.§;!+§ = param1;
         var _loc4_:int = this.§;!+§.§-!L§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§!!@§.§#!?§(this.§;!+§.§&!Z§(_loc5_));
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§implements§.addEventListener(Event.INIT,param3);
            this.§7!N§.push(param3);
         }
         if(this.§[Y§(param2))
         {
            this.§8!;§();
         }
      }
      
      private function §[Y§(param1:Array) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.§!!@§.§,&§())
         {
            _loc2_ = this.§!!@§.§-!P§ / 1000;
            _loc3_ = this.§!!@§.§[R§ / 1000;
            §1C§.log("\n\nMain texture manager memory usage:\n   textures " + _loc2_ + " kilobytes\n   bitmaps " + _loc3_ + " kilobytes\n\n");
            this.initializeAnimations(param1);
            return true;
         }
         this.§[P§ = param1.concat();
         return false;
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         this.§]S§.initializeAnimations(param1);
      }
      
      private function §!6§(param1:Event) : void
      {
         this.§!!@§.§+q§();
         if(this.§@'§ && this.§@'§.textureManager)
         {
            this.§@'§.textureManager.§+q§();
         }
         if(this.§;`§ && this.§;`§.textureManager)
         {
            this.§;`§.textureManager.§+q§();
         }
         if(this.§[P§)
         {
            this.§[Y§(this.§[P§);
            this.§[P§ = null;
            this.§8!;§();
         }
         if(this.§5§ != null && this.mReadyToRun)
         {
            this.§5§.addEventListeners();
         }
         if(this.§4!B§)
         {
            this.§4!B§.§,&§();
         }
         if(this.§+E§)
         {
            if(this.§+E§.textureManager)
            {
               this.§+E§.textureManager.§+q§();
               this.§+E§.§,&§();
            }
         }
      }
      
      private function §8!;§() : void
      {
         this.§implements§.dispatchEvent(new Event(Event.INIT));
         this.§?D§();
      }
      
      private function §?D§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§7!N§)
         {
            this.§implements§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§7!N§ = [];
      }
      
      public function init(param1:§9]§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§8!V§ = new §0![§(this,param1);
         this.§!V§ = this.§5!a§(param1);
         this.each = 0;
         this.§@&§ = 0;
         this.§#E§ = 0;
         this.§+#§ = false;
         this.mReadyToRun = false;
         this.§]Q§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         § D§ = param1.theme;
         this.§40§ = param1;
         this.§&?§ = this.§catch§(param1.theme);
         this.§6!C§ = this.§%5§(param1.theme);
         if(this.§&?§ && this.§6!C§)
         {
            this.§1!b§(param1);
         }
         else
         {
            this.§[!G§(param1.theme);
         }
         this.§,1§();
         §-!3§.init();
      }
      
      protected function §,1§() : void
      {
         this.§"8§ = new §-0§(§!!d§.§%1§);
      }
      
      protected function §catch§(param1:String) : Boolean
      {
         if(this.§4!B§)
         {
            return false;
         }
         return true;
      }
      
      protected function §%5§(param1:String) : Boolean
      {
         var _loc2_:§]!=§ = null;
         if(this.§5q§)
         {
            _loc2_ = §1!#§.§extends§(param1);
            if(_loc2_)
            {
               if(_loc2_.§"!0§ && !this.§5q§.§+!O§(_loc2_.§"!0§))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function §[!G§(param1:String) : void
      {
         var _loc2_:§]!=§ = null;
         if(this.§4!B§ && !this.§catch§(param1))
         {
            this.§4!B§.removeEventListener(Event.COMPLETE,this.§ j§);
            this.§4!B§.removeEventListener(Event.CANCEL,this.§]!`§);
            this.§4!B§.addEventListener(Event.COMPLETE,this.§ j§);
            this.§4!B§.addEventListener(Event.CANCEL,this.§]!`§);
            this.§4!B§.§;Q§(param1);
         }
         if(this.§5q§ && !this.§%5§(param1))
         {
            this.§5q§.removeEventListener(Event.COMPLETE,this.§4e§);
            this.§5q§.removeEventListener(Event.CANCEL,this.§"!>§);
            this.§5q§.addEventListener(Event.COMPLETE,this.§4e§);
            this.§5q§.addEventListener(Event.CANCEL,this.§"!>§);
            _loc2_ = §1!#§.§extends§(param1);
            if(_loc2_)
            {
               this.§5q§.§;Q§(_loc2_.§"!0§);
            }
         }
      }
      
      private function § j§(param1:Event) : void
      {
         this.§4!B§.removeEventListener(Event.COMPLETE,this.§ j§);
         this.§4!B§.removeEventListener(Event.CANCEL,this.§]!`§);
         this.§&?§ = true;
         if(this.§&?§ && this.§6!C§)
         {
            this.§1!b§(this.§40§);
         }
      }
      
      private function §]!`§(param1:Event) : void
      {
         this.§4!B§.removeEventListener(Event.COMPLETE,this.§ j§);
         this.§4!B§.removeEventListener(Event.CANCEL,this.§]!`§);
         this.§]Q§ = true;
      }
      
      private function §4e§(param1:Event) : void
      {
         this.§4!B§.removeEventListener(Event.COMPLETE,this.§4e§);
         this.§4!B§.removeEventListener(Event.CANCEL,this.§"!>§);
         this.§6!C§ = true;
         if(this.§&?§ && this.§6!C§)
         {
            this.§1!b§(this.§40§);
         }
      }
      
      private function §"!>§(param1:Event) : void
      {
         this.§4!B§.removeEventListener(Event.COMPLETE,this.§4e§);
         this.§4!B§.removeEventListener(Event.CANCEL,this.§"!>§);
         this.§6!C§ = true;
         if(this.§&?§ && this.§6!C§)
         {
            this.§1!b§(this.§40§);
         }
      }
      
      public function get backgroundTextureManager() : §!q§
      {
         return this.§!!@§;
      }
      
      protected function §1!b§(param1:§9]§) : void
      {
         this.§8x§ = false;
         this.§^!2§ = false;
         if(§79§.§%!H§)
         {
            §79§.§%!H§.speed = 1;
         }
         this.mLevelEngine = new §'!;§(this);
         this.§!!D§ = this.§;1§(param1.theme,this.§8!V§.§>R§ / §5-§,this.backgroundTextureManager,this.§!V§.§6!B§());
         this.§!!D§.§^T§(§,!1§.§[!T§());
         this.§ !'§ = this.initLevelObjectManager(param1);
         this.§<,§ = this.§^2§(param1);
         this.§#!;§ = this.initParticleManager(this.§]S§,this.§!!@§);
         this.§!V§.init();
         this.§7^§();
         this.§ E§();
         this.mReadyToRun = true;
         if(this.§5§)
         {
            this.§5§.addEventListeners();
         }
      }
      
      protected function § E§() : void
      {
         if(this.§2C§)
         {
            this.§-$§ = §-0§.§1!b§(this.§2C§);
            this.§-$§.speed = 1;
            this.§-$§.play();
            this.§@!$§ = -1000;
            this.§2C§ = null;
         }
      }
      
      public function §8!`§(param1:String) : void
      {
         this.§2C§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§-$§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§-$§)
         {
            if(param1)
            {
               this.§-$§.speed = Math.min(this.§-$§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§-$§.speed = Math.max(this.§-$§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§-$§)
         {
            this.§-$§.speed = 1;
         }
      }
      
      protected function initLevelObjectManager(param1:§9]§) : §+!?§
      {
         return new §+!?§(this,param1,new Sprite());
      }
      
      protected function §5!a§(param1:§9]§) : §2W§
      {
         return new §2W§(this,param1);
      }
      
      protected function §;1§(param1:String, param2:Number, param3:§!q§, param4:Number) : §5L§
      {
         return new §5L§(param1,param2,param3,param4);
      }
      
      protected function §^2§(param1:§9]§) : §3m§
      {
         return new §3m§(this,param1,new Sprite());
      }
      
      protected function initParticleManager(param1:§!![§, param2:§!q§) : §1D§
      {
         return new §1D§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§9]§ = this.§-M§();
         var _loc4_:§<!X§;
         (_loc4_ = new §<!X§()).left = 0;
         _loc4_.top = -§2W§.§1f§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §2W§.§1f§;
         _loc4_.right = _loc4_.left + §2W§.§;4§;
         _loc4_.y = -13.929;
         _loc4_.x = §2W§.§;4§;
         _loc4_.id = §2W§.§#'§;
         _loc3_.§#H§(_loc4_);
         var _loc5_:§<!X§;
         (_loc5_ = new §<!X§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §2W§.§;4§;
         _loc5_.bottom = _loc5_.top + §2W§.§1f§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §2W§.§;4§ / 2;
         _loc5_.id = §2W§.§&!4§;
         _loc3_.§#H§(_loc5_);
         this.postProcessEmptyEnvironment(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§ D§ != null)
         {
            _loc3_.theme = § D§;
         }
         this.init(_loc3_);
      }
      
      protected function postProcessEmptyEnvironment(param1:§9]§, param2:Boolean) : void
      {
         if(param2)
         {
            this.addFallingBirds(param1);
         }
      }
      
      protected function §-M§() : §9]§
      {
         var _loc1_:§9]§ = new §9]§();
         _loc1_.§1b§ = -12;
         return new §9]§();
      }
      
      protected function §;o§() : Number
      {
         this.§9V§ ^= this.§9V§ << 21;
         this.§9V§ ^= this.§9V§ >>> 35;
         this.§9V§ ^= this.§9V§ << 4;
         return this.§9V§ * (1 / uint.MAX_VALUE);
      }
      
      protected function addFallingBirds(param1:§9]§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§8!9§ = null;
         this.§9V§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§;o§() * 5;
               (_loc5_ = new §8!9§()).x = 30 + _loc3_ * 10 + this.§;o§() * 9;
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
                  _loc5_.angle = 45 - this.§;o§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§;o§() * 3 - _loc3_ * 8;
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
                  _loc5_.angle = this.§;o§() * 360;
               }
               param1.§,j§(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      private function §&;§() : void
      {
      }
      
      public function §7^§() : void
      {
         if(§5L§.§%+§)
         {
            this.§&Y§(this.§!!D§.§!!E§,false);
         }
         this.§&Y§(this.§#!;§.§9G§(§1D§.§8!S§),false);
         this.§&Y§(this.§#!;§.§9G§(§1D§.§`!F§),true);
         this.§&Y§(this.§#!;§.§9G§(§1D§.§<!L§),true);
         this.§&Y§(this.§ !'§.§]8§,true);
         this.§&Y§(this.§<,§.sprite,true);
         this.§&Y§(this.§#!;§.§9G§(§1D§.§%d§),true);
         this.§&Y§(this.§!!D§.§-!X§,false);
         if(§5L§.§%+§)
         {
            this.§&Y§(this.§!!D§.§],§,false);
         }
         this.§&Y§(this.§#!;§.§9G§(§1D§.§"!Q§),true);
         if(!§'!;§.§4I§)
         {
         }
      }
      
      private function §&Y§(param1:Sprite, param2:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(param1);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         param1 /= §,!1§.§@!7§;
         param2 /= §,!1§.§@!7§;
         _loc3_.x = (param1 / §2W§.§2!V§ + this.§!V§.§^7§ - §2W§.§%!;§ / §2W§.§2!V§) * §5-§;
         _loc3_.y = (param2 / §2W§.§2!V§ + this.§!V§.§=d§ - §2W§.§-b§ / §2W§.§2!V§) * §5-§;
         return _loc3_;
      }
      
      public function §]P§(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / §5-§ + §2W§.§%!;§ / §2W§.§2!V§ - this.§!V§.§^7§) * §2W§.§2!V§;
         _loc3_.y = (param2 / §5-§ + §2W§.§-b§ / §2W§.§2!V§ - this.§!V§.§=d§) * §2W§.§2!V§;
         var _loc4_:Number = Math.max(§,!1§.§@!7§,§,!1§.§"R§);
         _loc3_.x *= _loc4_;
         _loc3_.y *= _loc4_;
         return _loc3_;
      }
      
      public function §%F§(param1:String, param2:Number, param3:Number) : void
      {
         this.§ !'§.§,j§(param1,param2,param3);
      }
      
      public function § '§() : void
      {
         if(this.§]!A§)
         {
            this.§]!A§.visible = true;
            this.§]!A§.alpha = 0;
         }
         this.§4!I§ = 0;
      }
      
      public function §4!X§() : void
      {
         this.§@m§ = new § try§(§96§.§=L§,§96§.§+3§);
      }
      
      public function §&!0§() : void
      {
         this.§@m§ = null;
      }
      
      public function clearLevel() : void
      {
         if(this.§!!D§)
         {
            this.§!!D§.dispose();
            this.§!!D§ = null;
         }
         if(this.§ !'§)
         {
            this.§ !'§.dispose();
            this.§ !'§ = null;
            this.§>!N§ = null;
         }
         if(this.mLevelEngine)
         {
            if(!this.mLevelEngine.§ !=§)
            {
            }
            this.mLevelEngine.clear();
            this.mLevelEngine = null;
         }
         if(this.§8!V§)
         {
            this.§8!V§.clear();
            this.§8!V§ = null;
         }
         if(this.§<,§)
         {
            this.§<,§.dispose();
            this.§<,§ = null;
         }
         if(this.§!V§)
         {
            this.§!V§.clear();
            this.§!V§ = null;
         }
         if(this.§#!;§)
         {
            this.§#!;§.dispose();
            this.§#!;§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.each = 0;
         this.§@&§ = 0;
         this.mReadyToRun = false;
         this.§+#§ = false;
         this.§4!I§ = §96§.§2!9§;
         if(this.§@<§)
         {
            (this.§@<§ as §#g§).§8V§.x = 0;
            (this.§@<§ as §#g§).§8V§.y = 0;
         }
         if(this.§]!A§)
         {
            this.§]!A§.visible = false;
         }
         this.§-$§ = null;
         this.§"8§ = null;
         if(this.§4!B§)
         {
            this.§4!B§.removeEventListener(Event.COMPLETE,this.§ j§);
            this.§4!B§.removeEventListener(Event.CANCEL,this.§]!`§);
         }
         if(this.§5q§)
         {
            this.§5q§.removeEventListener(Event.COMPLETE,this.§4e§);
            this.§5q§.removeEventListener(Event.CANCEL,this.§"!>§);
         }
         this.§?D§();
         if(§79§.§#[§)
         {
            §79§.§#[§.color = 0;
         }
         if(this.§5§)
         {
            this.§5§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver() : void
      {
      }
      
      public function §+>§() : String
      {
         if(this.§"8§)
         {
            return this.§"8§.toString();
         }
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         if(!this.mReadyToRun || !§79§.§ do§())
         {
            return 0;
         }
         if(this.§-$§ && this.§-$§.§0M§)
         {
            return this.§5!Z§(param1,param2,param3);
         }
         return this.§1y§(param1,true,param2,param3);
      }
      
      protected function §1y§(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         if(this.§8x§)
         {
            param1 *= 0.2;
            if(§79§.§%!H§)
            {
               §79§.§%!H§.speed = 0.2;
            }
         }
         var _loc5_:Number = 0;
         this.§@&§ += param1;
         if(param3)
         {
            this.each += param1;
            _loc5_ = this.mLevelEngine.§%A§(this.each);
            this.§<,§.update(param1,param4);
            this.each = _loc5_;
         }
         else
         {
            this.§ !'§.§ !2§(param1);
            this.each = 0;
         }
         if(param2)
         {
            this.§-!Q§(param1,_loc5_);
         }
         return param1;
      }
      
      private function §5!Z§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc5_:Number = NaN;
         var _loc4_:Number = §'!;§.§'!J§ * 1000;
         if(this.§-$§)
         {
            param1 *= this.§-$§.speed;
            _loc5_ = this.§@&§ + param1;
            while(this.§@&§ + _loc4_ < _loc5_)
            {
               if(this.§@&§ + _loc4_ > this.§@!$§)
               {
                  this.§-$§.step(this);
                  this.§@!$§ += _loc4_;
               }
               this.§1y§(_loc4_,false,param2,param3);
            }
            if(_loc5_ > this.§@!$§ + _loc4_)
            {
               this.§-$§.step(this);
               this.§@!$§ += _loc4_;
            }
            if(this.§@&§ < _loc5_)
            {
               this.§1y§(_loc5_ - this.§@&§,true,param2,param3);
            }
            return param1;
         }
         return this.§1y§(_loc4_,true,param2,param3);
      }
      
      private function §-!Q§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.§!!D§.update(param1);
         this.§ !'§.§,t§(param1,param2);
         this.§7C§();
         if(this.§4!I§ < §96§.§2!9§)
         {
            this.§4!I§ += param1;
            _loc3_ = §96§.§2!9§ / 2;
            _loc4_ = (-Math.abs(this.§4!I§ - _loc3_) + _loc3_) * (§96§.§-j§ / _loc3_);
            if(this.§]!A§)
            {
               this.§]!A§.alpha = _loc4_;
            }
         }
         else if(this.§]!A§)
         {
            this.§]!A§.visible = false;
         }
         if(this.§@m§)
         {
            if(!this.§@m§.§2!6§(this.§!V§,param1))
            {
               this.§&!0§();
            }
         }
         this.§!V§.§9!#§(param1);
         this.mLevelEngine.§^w§();
         this.§#!;§.update(param1);
      }
      
      public function §;7§(param1:Number) : void
      {
         this.objects.§ !2§(param1 * 1000);
         this.objects.§-!C§(param1 * 1000);
         this.§"x§();
      }
      
      public function §7C§() : void
      {
         var _loc1_:§[!3§ = null;
         if(this.§@&§ > this.§#E§ + 1000 / 30)
         {
            if(this.§-J§ != null)
            {
               for each(_loc1_ in this.§-J§)
               {
                  _loc1_.addTrail();
               }
            }
            this.§#E§ = this.§@&§;
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§[!3§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.§ !'§.isPigsAlive(true))
            {
               _loc2_ = this.§ !'§.§]c§(true);
               _loc2_.§4!%§.mTryToScream = §5!P§.§]5§;
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§ !'§.§-,§());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            if(this.§ !'§.isPigsAlive(true))
            {
               _loc2_ = this.§ !'§.§]c§(true);
               _loc2_.§4!%§.mTryToBlink = §5!P§.§3!M§;
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§ !'§.§-,§());
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §;Z§.§%!$§;
         }
         §-!3§.addScore(param1,param2);
         this.§5§.addScore(param1);
         if(param3 && param1 > 0 && !this.§^!2§)
         {
            this.§%Z§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §%Z§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §;Z§.§<%§;
         }
         this.§#!;§.§#!Q§(§;Z§.§&p§,§1D§.§"!Q§,§;Z§.§+V§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §[A§(param1:§[!3§) : void
      {
         if(this.§-J§ == null)
         {
            this.§-J§ = new Array();
         }
         this.§-J§.push(param1);
      }
      
      public function §>H§() : void
      {
         this.§<,§.§>H§();
         this.§ !'§.§!b§();
         this.§^!2§ = true;
      }
      
      public function §5#§(param1:§[!3§) : void
      {
         this.§#!;§.§@_§(§1D§.§8!S§);
         if(this.§-J§.indexOf(param1) >= 0)
         {
            this.§-J§.splice(this.§-J§.indexOf(param1),1);
         }
         if(this.§-J§.length == 0)
         {
            this.§-J§ = null;
         }
      }
      
      public function §1!&§(param1:§>!=§, param2:Number, param3:Number) : void
      {
         this.§>!N§ = this.§ !'§.§,j§(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
         var _loc4_:Number = param1.name.toUpperCase() == "BIRD_GREEN" ? Number(§3m§.§`z§) : Number(§3m§.§?!K§);
         if(param1.§-;§ > 1)
         {
            this.§>!N§.§!i§(param1.§-;§);
            this.§>!N§.§4!%§.§?!]§();
         }
         if(param1.§<B§ != 0)
         {
            _loc4_ = param1.§<B§;
         }
         var _loc5_:Number = -_loc4_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc6_:Number = _loc4_ * param2 * Math.sin(param3 / (180 / Math.PI));
         this.§>!N§.§1z§(new b2Vec2(_loc5_,_loc6_),false,true);
         this.camera.§8D§(§2W§.§0s§);
         if(this.§"8§)
         {
            this.§"8§.§1!&§(this.mLevelEngine.§[X§,param1.x,param1.y,param2,param3);
         }
      }
      
      public function activatePowerup() : void
      {
         this.§+#§ = true;
      }
      
      private function §"x§() : void
      {
         if(!this.§+#§)
         {
            return;
         }
         this.§+#§ = false;
         if(this.activeObject is §"!R§ && !(this.activeObject as §"!R§).§>!X§)
         {
            if(this.activeObject.activateSpecialPower(this.§ !V§))
            {
               this.§+2§ = true;
            }
         }
         else
         {
            this.§ !'§.§,!V§();
         }
         if(this.§"8§)
         {
            this.§"8§.§<'§(this.mLevelEngine.§[X§);
         }
      }
      
      public function static() : void
      {
         this.§ !'§.static();
      }
      
      public function §3D§() : void
      {
         this.§ !'§.§?!U§();
      }
      
      public function §<<§() : §9]§
      {
         var _loc1_:§9]§ = new §9]§();
         _loc1_.§,2§ = this.§40§.§,2§;
         _loc1_.§ !`§ = this.§40§.§ !`§;
         this.§!V§.§#!X§(_loc1_);
         this.§ !'§.§ !T§(_loc1_);
         this.§<,§.§<!E§(_loc1_);
         _loc1_.theme = this.§!!D§.§2S§();
         return _loc1_;
      }
      
      public function §7'§() : int
      {
         return this.§40§.§ !`§;
      }
      
      public function §4F§() : int
      {
         return this.§40§.§,2§;
      }
      
      public function §^a§(param1:int) : void
      {
         this.§40§.§ !`§ = param1;
      }
      
      public function §#!9§(param1:int) : void
      {
         this.§40§.§,2§ = param1;
      }
      
      public function §]v§(param1:Number, param2:Number) : void
      {
         if(this.§3!a§)
         {
            this.§3!a§.§!7§(param1,param2);
         }
         if(this.§!V§)
         {
            this.§!V§.§9!#§(0);
         }
      }
      
      public function get §?3§() : §9]§
      {
         return this.§40§;
      }
      
      public function get § !V§() : §+!?§
      {
         return this.§ !'§;
      }
      
      protected function get §+&§() : §79§
      {
         return this.§"!H§;
      }
      
      public function get §-a§() : int
      {
         return §4!^§;
      }
   }
}
