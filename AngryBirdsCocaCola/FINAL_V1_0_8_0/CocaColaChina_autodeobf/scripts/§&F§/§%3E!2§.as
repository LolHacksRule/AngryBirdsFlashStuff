package §&F§
{
   import §"m§.§^B§;
   import §%!^§.§ if§;
   import §%!^§.§"!7§;
   import §%!^§.§"=§;
   import §%!^§.§0!L§;
   import §%i§.§%!_§;
   import §&!'§.§'!f§;
   import §&!9§.DisplayObject;
   import §&!9§.Sprite;
   import §&$§.§!!R§;
   import §+&§.§?y§;
   import §0!b§.§#!=§;
   import §1!9§.§!9§;
   import §1!9§.§<f§;
   import §48§.§#i§;
   import §48§.§4a§;
   import §48§.§^!!§;
   import §5!5§.§%k§;
   import §6V§.b2Vec2;
   import §7!?§.§6[§;
   import §;L§.§,>§;
   import §?=§.§&j§;
   import §?=§.§8S§;
   import §^!$§.§4<§;
   import §^!$§.§6y§;
   import §^!$§.§;!D§;
   import §^!$§.§?![§;
   import §^=§.§8!6§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §>!2§
   {
      
      private static const §[b§:int = 20;
      
      public static const §1M§:Number = §#!=§.§[!]§;
      
      public static const §'n§:Number = §#!=§.§?!E§;
      
      public static const §9d§:Number = 1 / 20;
      
      public static const § 7§:Number = §#!=§.§?!E§ * §9d§;
      
      public static const §`!6§:Number = §1M§ * §9d§;
      
      public static const §,!I§:§!!R§ = new §!!R§(13 - 3);
      
      public static var §?!N§:Number = 1;
      
      protected static var §,'§:String = §"!7§.§,!V§;
       
      
      protected var §"H§:§;!D§;
      
      private var §'!N§:§?![§;
      
      private var §^O§:Array = null;
      
      protected var §=R§:§6[§;
      
      public var mLevelEngine:§=@§;
      
      protected var §21§:§4]§;
      
      protected var §;!K§:§'!f§;
      
      protected var §4!<§:§2!4§;
      
      protected var §'D§:§&j§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §;"§:Boolean = false;
      
      protected var §1]§:Boolean = false;
      
      protected var §0!$§:Boolean = false;
      
      public var §<!X§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §#G§:Number;
      
      public var §;!&§:Number;
      
      private var §8!I§:Number;
      
      public var §[!?§:§ if§;
      
      public var § P§:Boolean = false;
      
      private var §-! §:§!?§;
      
      private var §2`§:Sprite;
      
      protected var §3T§:§"!7§;
      
      protected var §;j§:§^B§ = null;
      
      private var §;$§:EventDispatcher;
      
      private var §7!5§:Array;
      
      private var §!! §:Array;
      
      protected var §@D§:§?y§;
      
      private var §]D§:§%k§;
      
      protected var §<d§:§4a§;
      
      protected var §5v§:§#i§;
      
      private var §-B§:§^!!§;
      
      private var §2!e§:§^!!§;
      
      private var §?G§:§^!!§;
      
      private var §@!c§:Stage;
      
      private var §^!P§:§ !"§;
      
      protected var §'!-§:§,>§;
      
      protected var §<U§:§,>§;
      
      protected var §88§:Number = 0.0;
      
      protected var §&!1§:String;
      
      private var §?!A§:Boolean;
      
      protected var §"W§:Boolean;
      
      protected var §=!Z§:uint = 1.417339207E9;
      
      public var §??§:Boolean;
      
      public function §>!2§(param1:Stage)
      {
         this.§!! § = [];
         super();
         this.§;$§ = new EventDispatcher();
         this.§[!?§ = new § if§();
         this.§@!c§ = param1;
         this.§<d§ = §4a§.§]!D§;
         this.§5v§ = this.initAnimationManager(this.§<d§);
         this.§-B§ = this.initThemeGraphicsManager();
         this.§2!e§ = this.§=A§();
         this.§?G§ = this.§!l§();
         var _loc2_:Stage3D = param1.stage3Ds[0];
         this.§@D§ = new §?y§(§!?§,param1,new Rectangle(0,0,§#!=§.§[!]§,§#!=§.§?!E§),_loc2_);
         §#!=§.§3!@§.addEventListener(Event.ENTER_FRAME,this.§@D§.§3!I§);
         _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§>l§,false,0,true);
         this.§@D§.simulateMultitouch = false;
         this.§@D§.enableErrorChecking = false;
         this.§@D§.§->§ = 2;
         this.§@D§.§4e§();
      }
      
      public static function §-!3§(param1:§?![§, param2:§?![§) : Number
      {
         var _loc3_:Number = param1.§=M§ - param2.§=M§;
         var _loc4_:Number = param1.§[h§ - param2.§[h§;
         return §6E§(_loc3_,_loc4_);
      }
      
      public static function §6E§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         if(!this.§2`§ && this.§^!b§)
         {
            this.§2`§ = this.§-! §.§8!7§;
         }
         return this.§2`§;
      }
      
      public function get §^!b§() : Sprite
      {
         if(!this.§-! §)
         {
            this.§-! § = this.§@D§.§<!,§ as §!?§;
            this.§-! §.§2!2§ = false;
         }
         return this.§-! §;
      }
      
      private function get §@!§() : DisplayObject
      {
         if(this.§^!b§)
         {
            return (this.§^!b§ as §!?§).§@!§;
         }
         return null;
      }
      
      public function get §59§() : §#i§
      {
         return this.§5v§;
      }
      
      public function get textureManager() : §4a§
      {
         return this.§<d§;
      }
      
      public function get camera() : §'!f§
      {
         return this.§;!K§;
      }
      
      public function get objects() : §;!D§
      {
         return this.§"H§;
      }
      
      public function get particles() : §&j§
      {
         return this.§'D§;
      }
      
      public function get background() : §6[§
      {
         return this.§=R§;
      }
      
      public function get slingshot() : §2!4§
      {
         return this.§4!<§;
      }
      
      public function get activeObject() : §?![§
      {
         return this.§'!N§;
      }
      
      public function get §&!D§() : §4]§
      {
         return this.§21§;
      }
      
      public function get stage() : Stage
      {
         return this.§@!c§;
      }
      
      public function get §3!_§() : §^!!§
      {
         return this.§?G§;
      }
      
      protected function get §7i§() : §^!!§
      {
         return this.§-B§;
      }
      
      public function set activeObject(param1:§?![§) : void
      {
         this.§'!N§ = param1;
      }
      
      public function set §^!<§(param1:Boolean) : void
      {
         this.§"W§ = param1;
      }
      
      public function clear() : void
      {
         if(this.§]D§)
         {
            this.§]D§.dispose();
         }
         if(this.§<d§)
         {
            this.§<d§.dispose();
         }
         if(this.§-B§ && this.§-B§.textureManager)
         {
            this.§-B§.textureManager.dispose();
         }
         if(this.§?G§ && this.§?G§.textureManager)
         {
            this.§?G§.textureManager.dispose();
         }
         if(this.§@D§)
         {
            this.§@D§.dispose();
         }
      }
      
      protected function initThemeGraphicsManager() : §^!!§
      {
         return null;
      }
      
      protected function §=A§() : §^!!§
      {
         return null;
      }
      
      protected function §!l§() : §^!!§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§4a§) : §#i§
      {
         return new §#i§(param1);
      }
      
      public function §[!&§(param1:Boolean) : void
      {
         if(§?y§.§,u§)
         {
            if(param1)
            {
               §?y§.§,u§.start();
            }
            else
            {
               §?y§.§,u§.stop();
               §?y§.§,u§.color = 0;
            }
         }
      }
      
      public function §0!D§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function §5!7§(param1:§^B§) : void
      {
         if(this.§;j§ != null)
         {
            this.§;j§.removeEventListeners();
         }
         this.§;j§ = param1;
         if(this.mReadyToRun)
         {
            this.§;j§.addEventListeners();
         }
      }
      
      public function §-!H§() : §,>§
      {
         return this.§'!-§;
      }
      
      public function §'!X§(param1:§%k§, param2:Array, param3:Function) : void
      {
         this.§]D§ = param1;
         var _loc4_:int = this.§]D§.§7!T§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§<d§.§&!Z§(this.§]D§.§]!1§(_loc5_));
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§;$§.addEventListener(Event.INIT,param3);
            this.§!! §.push(param3);
         }
         if(this.§8H§(param2))
         {
            this.§;!A§();
         }
      }
      
      private function §8H§(param1:Array) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.§<d§.§;C§())
         {
            _loc2_ = this.§<d§.§<6§ / 1000;
            _loc3_ = this.§<d§.§-I§ / 1000;
            §8!6§.log("\n\nMain texture manager memory usage:\n   textures " + _loc2_ + " kilobytes\n   bitmaps " + _loc3_ + " kilobytes\n\n");
            this.initializeAnimations(param1);
            return true;
         }
         this.§7!5§ = param1.concat();
         return false;
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         this.§5v§.initializeAnimations(param1);
      }
      
      private function §>l§(param1:Event) : void
      {
         this.§<d§.§4!=§();
         if(this.§7i§ && this.§7i§.textureManager)
         {
            this.§7i§.textureManager.§4!=§();
         }
         if(this.§3!_§ && this.§3!_§.textureManager)
         {
            this.§3!_§.textureManager.§4!=§();
         }
         if(this.§7!5§)
         {
            this.§8H§(this.§7!5§);
            this.§7!5§ = null;
            this.§;!A§();
         }
         if(this.§;j§ != null && this.mReadyToRun)
         {
            this.§;j§.addEventListeners();
         }
         if(this.§-B§)
         {
            this.§-B§.§;C§();
         }
         if(this.§?G§)
         {
            if(this.§?G§.textureManager)
            {
               this.§?G§.textureManager.§4!=§();
               this.§?G§.§;C§();
            }
         }
      }
      
      private function §;!A§() : void
      {
         this.§;$§.dispatchEvent(new Event(Event.INIT));
         this.§&;§();
      }
      
      private function §&;§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§!! §)
         {
            this.§;$§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§!! § = [];
      }
      
      public function init(param1:§"!7§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§21§ = new §4]§(this,param1);
         this.§;!K§ = this.§8i§(param1);
         this.§#G§ = 0;
         this.§;!&§ = 0;
         this.§8!I§ = 0;
         this.§?!A§ = false;
         this.mReadyToRun = false;
         this.§;"§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         §,'§ = param1.theme;
         this.§3T§ = param1;
         this.§1]§ = this.§"!D§(param1.theme);
         this.§0!$§ = this.§<!R§(param1.theme);
         if(this.§1]§ && this.§0!$§)
         {
            this.§=D§(param1);
         }
         else
         {
            this.§]-§(param1.theme);
         }
         this.§3!Y§();
         §6K§.init();
      }
      
      protected function §3!Y§() : void
      {
         this.§'!-§ = new §,>§(§"=§.§?x§);
      }
      
      protected function §"!D§(param1:String) : Boolean
      {
         if(this.§-B§)
         {
            return false;
         }
         return true;
      }
      
      protected function §<!R§(param1:String) : Boolean
      {
         var _loc2_:§<f§ = null;
         if(this.§2!e§)
         {
            _loc2_ = §!9§.§-Q§(param1);
            if(_loc2_)
            {
               if(_loc2_.§`!8§ && !this.§2!e§.§'r§(_loc2_.§`!8§))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function §]-§(param1:String) : void
      {
         var _loc2_:§<f§ = null;
         if(this.§-B§ && !this.§"!D§(param1))
         {
            this.§-B§.removeEventListener(Event.COMPLETE,this.§ !?§);
            this.§-B§.removeEventListener(Event.CANCEL,this.§+Z§);
            this.§-B§.addEventListener(Event.COMPLETE,this.§ !?§);
            this.§-B§.addEventListener(Event.CANCEL,this.§+Z§);
            this.§-B§.§>F§(param1);
         }
         if(this.§2!e§ && !this.§<!R§(param1))
         {
            this.§2!e§.removeEventListener(Event.COMPLETE,this.§>?§);
            this.§2!e§.removeEventListener(Event.CANCEL,this.§;!;§);
            this.§2!e§.addEventListener(Event.COMPLETE,this.§>?§);
            this.§2!e§.addEventListener(Event.CANCEL,this.§;!;§);
            _loc2_ = §!9§.§-Q§(param1);
            if(_loc2_)
            {
               this.§2!e§.§>F§(_loc2_.§`!8§);
            }
         }
      }
      
      private function § !?§(param1:Event) : void
      {
         this.§-B§.removeEventListener(Event.COMPLETE,this.§ !?§);
         this.§-B§.removeEventListener(Event.CANCEL,this.§+Z§);
         this.§1]§ = true;
         if(this.§1]§ && this.§0!$§)
         {
            this.§=D§(this.§3T§);
         }
      }
      
      private function §+Z§(param1:Event) : void
      {
         this.§-B§.removeEventListener(Event.COMPLETE,this.§ !?§);
         this.§-B§.removeEventListener(Event.CANCEL,this.§+Z§);
         this.§;"§ = true;
      }
      
      private function §>?§(param1:Event) : void
      {
         this.§-B§.removeEventListener(Event.COMPLETE,this.§>?§);
         this.§-B§.removeEventListener(Event.CANCEL,this.§;!;§);
         this.§0!$§ = true;
         if(this.§1]§ && this.§0!$§)
         {
            this.§=D§(this.§3T§);
         }
      }
      
      private function §;!;§(param1:Event) : void
      {
         this.§-B§.removeEventListener(Event.COMPLETE,this.§>?§);
         this.§-B§.removeEventListener(Event.CANCEL,this.§;!;§);
         this.§0!$§ = true;
         if(this.§1]§ && this.§0!$§)
         {
            this.§=D§(this.§3T§);
         }
      }
      
      public function get backgroundTextureManager() : §4a§
      {
         return this.§<d§;
      }
      
      protected function §=D§(param1:§"!7§) : void
      {
         this.§"W§ = false;
         this.§??§ = false;
         if(§?y§.§0&§)
         {
            §?y§.§0&§.speed = 1;
         }
         this.mLevelEngine = new §=@§(this);
         this.§=R§ = this.§[!a§(param1.theme,this.§21§.§]![§ / §9d§,this.backgroundTextureManager,this.§;!K§.§<]§());
         this.§=R§.§,!!§(§#!=§.§>X§());
         this.§"H§ = this.initLevelObjectManager(param1);
         this.§4!<§ = this.§&!W§(param1);
         this.§'D§ = this.initParticleManager(this.§5v§,this.§<d§);
         this.§;!K§.init();
         this.§5!W§();
         this.§5+§();
         this.mReadyToRun = true;
         if(this.§;j§)
         {
            this.§;j§.addEventListeners();
         }
      }
      
      protected function §5+§() : void
      {
         if(this.§&!1§)
         {
            this.§<U§ = §,>§.§=D§(this.§&!1§);
            this.§<U§.speed = 1;
            this.§<U§.play();
            this.§88§ = -1000;
            this.§&!1§ = null;
         }
      }
      
      public function §@J§(param1:String) : void
      {
         this.§&!1§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§<U§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§<U§)
         {
            if(param1)
            {
               this.§<U§.speed = Math.min(this.§<U§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§<U§.speed = Math.max(this.§<U§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§<U§)
         {
            this.§<U§.speed = 1;
         }
      }
      
      protected function initLevelObjectManager(param1:§"!7§) : §;!D§
      {
         return new §;!D§(this,param1,new Sprite());
      }
      
      protected function §8i§(param1:§"!7§) : §'!f§
      {
         return new §'!f§(this,param1);
      }
      
      protected function §[!a§(param1:String, param2:Number, param3:§4a§, param4:Number) : §6[§
      {
         return new §6[§(param1,param2,param3,param4);
      }
      
      protected function §&!W§(param1:§"!7§) : §2!4§
      {
         return new §2!4§(this,param1,new Sprite());
      }
      
      protected function initParticleManager(param1:§#i§, param2:§4a§) : §&j§
      {
         return new §&j§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§"!7§ = this.§]!#§();
         var _loc4_:§0!L§;
         (_loc4_ = new §0!L§()).left = 0;
         _loc4_.top = -§'!f§.§,I§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §'!f§.§,I§;
         _loc4_.right = _loc4_.left + §'!f§.§function§;
         _loc4_.y = -13.929;
         _loc4_.x = §'!f§.§function§;
         _loc4_.id = §'!f§.§,!F§;
         _loc3_.§%!<§(_loc4_);
         var _loc5_:§0!L§;
         (_loc5_ = new §0!L§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §'!f§.§function§;
         _loc5_.bottom = _loc5_.top + §'!f§.§,I§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §'!f§.§function§ / 2;
         _loc5_.id = §'!f§.§!!6§;
         _loc3_.§%!<§(_loc5_);
         this.postProcessEmptyEnvironment(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§,'§ != null)
         {
            _loc3_.theme = §,'§;
         }
         this.init(_loc3_);
      }
      
      protected function postProcessEmptyEnvironment(param1:§"!7§, param2:Boolean) : void
      {
         if(param2)
         {
            this.addFallingBirds(param1);
         }
      }
      
      protected function §]!#§() : §"!7§
      {
         var _loc1_:§"!7§ = new §"!7§();
         _loc1_.§'Y§ = -12;
         return new §"!7§();
      }
      
      protected function §>R§() : Number
      {
         this.§=!Z§ ^= this.§=!Z§ << 21;
         this.§=!Z§ ^= this.§=!Z§ >>> 35;
         this.§=!Z§ ^= this.§=!Z§ << 4;
         return this.§=!Z§ * (1 / uint.MAX_VALUE);
      }
      
      protected function addFallingBirds(param1:§"!7§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§%!_§ = null;
         this.§=!Z§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§>R§() * 5;
               (_loc5_ = new §%!_§()).x = 30 + _loc3_ * 10 + this.§>R§() * 9;
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
                  _loc5_.angle = 45 - this.§>R§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§>R§() * 3 - _loc3_ * 8;
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
                  _loc5_.angle = this.§>R§() * 360;
               }
               param1.§^!3§(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      private function §`!L§() : void
      {
      }
      
      public function §5!W§() : void
      {
         if(§6[§.§6!!§)
         {
            this.§ !E§(this.§=R§.§'!5§,false);
         }
         this.§ !E§(this.§'D§.§'L§(§&j§.§+f§),false);
         this.§ !E§(this.§'D§.§'L§(§&j§.§^K§),true);
         this.§ !E§(this.§'D§.§'L§(§&j§.§"!5§),true);
         this.§ !E§(this.§"H§.§8!e§,true);
         this.§ !E§(this.§4!<§.sprite,true);
         this.§ !E§(this.§'D§.§'L§(§&j§.§`W§),true);
         this.§ !E§(this.§=R§.§6q§,false);
         if(§6[§.§6!!§)
         {
            this.§ !E§(this.§=R§.§'S§,false);
         }
         this.§ !E§(this.§'D§.§'L§(§&j§.§ !D§),true);
      }
      
      private function § !E§(param1:Sprite, param2:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(param1);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         param1 /= §#!=§.§,@§;
         param2 /= §#!=§.§,@§;
         _loc3_.x = (param1 / §'!f§.§,!`§ + this.§;!K§.§+a§ - §'!f§.§]<§ / §'!f§.§,!`§) * §9d§;
         _loc3_.y = (param2 / §'!f§.§,!`§ + this.§;!K§.§6!>§ - §'!f§.§8!C§ / §'!f§.§,!`§) * §9d§;
         return _loc3_;
      }
      
      public function §!%§(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / §9d§ + §'!f§.§]<§ / §'!f§.§,!`§ - this.§;!K§.§+a§) * §'!f§.§,!`§;
         _loc3_.y = (param2 / §9d§ + §'!f§.§8!C§ / §'!f§.§,!`§ - this.§;!K§.§6!>§) * §'!f§.§,!`§;
         var _loc4_:Number = Math.max(§#!=§.§,@§,§#!=§.§>0§);
         _loc3_.x *= _loc4_;
         _loc3_.y *= _loc4_;
         return _loc3_;
      }
      
      public function §%'§(param1:String, param2:Number, param3:Number) : void
      {
         this.§"H§.§^!3§(param1,param2,param3);
      }
      
      public function §1!N§() : void
      {
         if(this.§@!§)
         {
            this.§@!§.visible = true;
            this.§@!§.alpha = 0;
         }
         this.§<!X§ = 0;
      }
      
      public function § d§() : void
      {
         this.§^!P§ = new § !"§(§-w§.§=!>§,§-w§.§6s§);
      }
      
      public function §9?§() : void
      {
         this.§^!P§ = null;
      }
      
      public function clearLevel() : void
      {
         if(this.§=R§)
         {
            this.§=R§.dispose();
            this.§=R§ = null;
         }
         if(this.§"H§)
         {
            this.§"H§.dispose();
            this.§"H§ = null;
            this.§'!N§ = null;
         }
         if(this.mLevelEngine)
         {
            if(!this.mLevelEngine.§<!A§)
            {
            }
            this.mLevelEngine.clear();
            this.mLevelEngine = null;
         }
         if(this.§21§)
         {
            this.§21§.clear();
            this.§21§ = null;
         }
         if(this.§4!<§)
         {
            this.§4!<§.dispose();
            this.§4!<§ = null;
         }
         if(this.§;!K§)
         {
            this.§;!K§.clear();
            this.§;!K§ = null;
         }
         if(this.§'D§)
         {
            this.§'D§.dispose();
            this.§'D§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§#G§ = 0;
         this.§;!&§ = 0;
         this.mReadyToRun = false;
         this.§?!A§ = false;
         this.§<!X§ = §-w§.§7I§;
         if(this.§^!b§)
         {
            (this.§^!b§ as §!?§).set.x = 0;
            (this.§^!b§ as §!?§).set.y = 0;
         }
         if(this.§@!§)
         {
            this.§@!§.visible = false;
         }
         this.§<U§ = null;
         this.§'!-§ = null;
         if(this.§-B§)
         {
            this.§-B§.removeEventListener(Event.COMPLETE,this.§ !?§);
            this.§-B§.removeEventListener(Event.CANCEL,this.§+Z§);
         }
         if(this.§2!e§)
         {
            this.§2!e§.removeEventListener(Event.COMPLETE,this.§>?§);
            this.§2!e§.removeEventListener(Event.CANCEL,this.§;!;§);
         }
         this.§&;§();
         if(§?y§.§,u§)
         {
            §?y§.§,u§.color = 0;
         }
         if(this.§;j§)
         {
            this.§;j§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver() : void
      {
      }
      
      public function §;`§() : String
      {
         if(this.§'!-§)
         {
            return this.§'!-§.toString();
         }
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         if(!this.mReadyToRun || !§?y§.§1L§())
         {
            return 0;
         }
         if(this.§<U§ && this.§<U§.§?!]§)
         {
            return this.§,+§(param1,param2,param3);
         }
         return this.§4-§(param1,true,param2,param3);
      }
      
      protected function §4-§(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         if(this.§"W§)
         {
            param1 *= 0.2;
            if(§?y§.§0&§)
            {
               §?y§.§0&§.speed = 0.2;
            }
         }
         var _loc5_:Number = 0;
         this.§;!&§ += param1;
         if(param3)
         {
            this.§#G§ += param1;
            _loc5_ = this.mLevelEngine.§ !`§(this.§#G§);
            this.§4!<§.update(param1,param4);
            this.§#G§ = _loc5_;
         }
         else
         {
            this.§"H§.§;=§(param1);
            this.§#G§ = 0;
         }
         if(param2)
         {
            this.§&_§(param1,_loc5_);
         }
         return param1;
      }
      
      private function §,+§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc5_:Number = NaN;
         var _loc4_:Number = §=@§.§#!K§ * 1000;
         if(this.§<U§)
         {
            param1 *= this.§<U§.speed;
            _loc5_ = this.§;!&§ + param1;
            while(this.§;!&§ + _loc4_ < _loc5_)
            {
               if(this.§;!&§ + _loc4_ > this.§88§)
               {
                  this.§<U§.step(this);
                  this.§88§ += _loc4_;
               }
               this.§4-§(_loc4_,false,param2,param3);
            }
            if(_loc5_ > this.§88§ + _loc4_)
            {
               this.§<U§.step(this);
               this.§88§ += _loc4_;
            }
            if(this.§;!&§ < _loc5_)
            {
               this.§4-§(_loc5_ - this.§;!&§,true,param2,param3);
            }
            return param1;
         }
         return this.§4-§(_loc4_,true,param2,param3);
      }
      
      private function §&_§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.§=R§.update(param1);
         this.§"H§.§0!?§(param1,param2);
         this.§3O§();
         if(this.§<!X§ < §-w§.§7I§)
         {
            this.§<!X§ += param1;
            _loc3_ = §-w§.§7I§ / 2;
            _loc4_ = (-Math.abs(this.§<!X§ - _loc3_) + _loc3_) * (§-w§.§use § / _loc3_);
            if(this.§@!§)
            {
               this.§@!§.alpha = _loc4_;
            }
         }
         else if(this.§@!§)
         {
            this.§@!§.visible = false;
         }
         if(this.§^!P§)
         {
            if(!this.§^!P§.§3i§(this.§;!K§,param1))
            {
               this.§9?§();
            }
         }
         this.§;!K§.§4!B§(param1);
         this.mLevelEngine.§"!]§();
         this.§'D§.update(param1);
      }
      
      public function §2;§(param1:Number) : void
      {
         this.objects.§;=§(param1 * 1000);
         this.objects.§`!9§(param1 * 1000);
         this.§>!e§();
      }
      
      public function §3O§() : void
      {
         var _loc1_:§?![§ = null;
         if(this.§;!&§ > this.§8!I§ + 1000 / 30)
         {
            if(this.§^O§ != null)
            {
               for each(_loc1_ in this.§^O§)
               {
                  _loc1_.addTrail();
               }
            }
            this.§8!I§ = this.§;!&§;
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§?![§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.§"H§.isPigsAlive(true))
            {
               _loc2_ = this.§"H§.§<!I§(true);
               _loc2_.§^!9§.mTryToScream = §4<§.§]7§;
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§"H§.§ !c§());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            if(this.§"H§.isPigsAlive(true))
            {
               _loc2_ = this.§"H§.§<!I§(true);
               _loc2_.§^!9§.mTryToBlink = §4<§.§7!V§;
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§"H§.§ !c§());
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §8S§.§=!E§;
         }
         §6K§.addScore(param1,param2);
         this.§;j§.addScore(param1);
         if(param3 && param1 > 0 && !this.§??§)
         {
            this.§7;§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §7;§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §8S§.§9!C§;
         }
         this.§'D§.§<§(§8S§.§58§,§&j§.§ !D§,§8S§.§9!E§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §4!%§(param1:§?![§) : void
      {
         if(this.§^O§ == null)
         {
            this.§^O§ = new Array();
         }
         this.§^O§.push(param1);
      }
      
      public function §#!b§() : void
      {
         this.§4!<§.§#!b§();
         this.§"H§.§"Z§();
         this.§??§ = true;
      }
      
      public function § V§(param1:§?![§) : void
      {
         this.§'D§.§;!6§(§&j§.§+f§);
         if(this.§^O§.indexOf(param1) >= 0)
         {
            this.§^O§.splice(this.§^O§.indexOf(param1),1);
         }
         if(this.§^O§.length == 0)
         {
            this.§^O§ = null;
         }
      }
      
      public function §;H§(param1:§8W§, param2:Number, param3:Number) : void
      {
         this.§'!N§ = this.§"H§.§^!3§(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
         var _loc4_:Number = param1.name.toUpperCase() == "BIRD_GREEN" ? Number(§2!4§.§[!O§) : Number(§2!4§.§`g§);
         if(param1.§[v§ > 1)
         {
            this.§'!N§.§#!`§(param1.§[v§);
            this.§'!N§.§^!9§.§;S§();
         }
         if(param1.§"3§ != 0)
         {
            _loc4_ = param1.§"3§;
         }
         var _loc5_:Number = -_loc4_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc6_:Number = _loc4_ * param2 * Math.sin(param3 / (180 / Math.PI));
         this.§'!N§.§9<§(new b2Vec2(_loc5_,_loc6_),false,true);
         this.camera.§[Y§(§'!f§.§+!#§);
         if(this.§'!-§)
         {
            this.§'!-§.§;H§(this.mLevelEngine.§1!_§,param1.x,param1.y,param2,param3);
         }
      }
      
      public function activatePowerup() : void
      {
         this.§?!A§ = true;
      }
      
      private function §>!e§() : void
      {
         if(!this.§?!A§)
         {
            return;
         }
         this.§?!A§ = false;
         if(this.activeObject is §6y§ && !(this.activeObject as §6y§).§4c§)
         {
            if(this.activeObject.activateSpecialPower(this.§7V§))
            {
               this.§ P§ = true;
            }
         }
         else
         {
            this.§"H§.§ h§();
         }
         if(this.§'!-§)
         {
            this.§'!-§.§`F§(this.mLevelEngine.§1!_§);
         }
      }
      
      public function §<,§() : void
      {
         this.§"H§.§<,§();
      }
      
      public function §!"§() : void
      {
         this.§"H§.§2!8§();
      }
      
      public function §&!%§() : §"!7§
      {
         var _loc1_:§"!7§ = new §"!7§();
         _loc1_.§?!<§ = this.§3T§.§?!<§;
         _loc1_.§!N§ = this.§3T§.§!N§;
         this.§;!K§.§#Q§(_loc1_);
         this.§"H§.§+H§(_loc1_);
         this.§4!<§.§=z§(_loc1_);
         _loc1_.theme = this.§=R§.§=!?§();
         return _loc1_;
      }
      
      public function §0s§() : int
      {
         return this.§3T§.§!N§;
      }
      
      public function §?H§() : int
      {
         return this.§3T§.§?!<§;
      }
      
      public function §7m§(param1:int) : void
      {
         this.§3T§.§!N§ = param1;
      }
      
      public function §4>§(param1:int) : void
      {
         this.§3T§.§?!<§ = param1;
      }
      
      public function §%!'§(param1:Number, param2:Number) : void
      {
         if(this.§-! §)
         {
            this.§-! §.§&Y§(param1,param2);
         }
         if(this.§;!K§)
         {
            this.§;!K§.§4!B§(0);
         }
      }
      
      public function get §^!Q§() : §"!7§
      {
         return this.§3T§;
      }
      
      public function get §7V§() : §;!D§
      {
         return this.§"H§;
      }
      
      protected function get §&R§() : §?y§
      {
         return this.§@D§;
      }
      
      public function get §[!%§() : int
      {
         return §[b§;
      }
   }
}
