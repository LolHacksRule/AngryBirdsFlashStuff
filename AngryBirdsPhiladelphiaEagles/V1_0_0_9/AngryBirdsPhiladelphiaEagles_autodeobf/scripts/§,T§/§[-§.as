package §,T§
{
   import §"1§.§3'§;
   import §"g§.§@!!§;
   import §%T§.§"!-§;
   import §%T§.§>p§;
   import §&8§.§5P§;
   import §&8§.§5Z§;
   import §'!3§.§&!H§;
   import §-!'§.DisplayObject;
   import §-!'§.Sprite;
   import §0=§.§&!Q§;
   import §0=§.§2p§;
   import §0=§.§6!M§;
   import §0=§.§?!,§;
   import §5!6§.§&!!§;
   import §6!L§.§#!M§;
   import §6!L§.§&u§;
   import §6!L§.§4!5§;
   import §6!L§.§6!,§;
   import §7!A§.§>!<§;
   import §<A§.§'K§;
   import §<A§.§'n§;
   import §<A§.§8t§;
   import §=!1§.§[!<§;
   import §=z§.§0!E§;
   import §@!P§.§-b§;
   import §`!8§.§7!G§;
   import §`e§.§#Z§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §[-§
   {
      
      private static const §`N§:int = 20;
      
      public static const §?q§:Number = §0!E§.§6!I§;
      
      public static const §`=§:Number = §0!E§.§4U§;
      
      public static const §;5§:Number = 1 / 20;
      
      public static const §;b§:Number = §0!E§.§4U§ * §;5§;
      
      public static const §[t§:Number = §?q§ * §;5§;
      
      public static const §&!>§:§7!G§ = new §7!G§(13 - 3);
      
      public static var §+]§:Number = 1;
      
      protected static var §['§:String = §#!M§.§-T§;
       
      
      protected var §<!2§:§6!M§;
      
      private var §-!8§:§2p§;
      
      private var §,!&§:Array = null;
      
      protected var §^!C§:§@!!§;
      
      public var §[o§:§-7§;
      
      protected var §'^§:§9g§;
      
      protected var §@B§:§&!!§;
      
      protected var §-;§:§@6§;
      
      protected var §9!C§:§5P§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §@l§:Boolean = false;
      
      protected var §`v§:Boolean = false;
      
      protected var §5E§:Boolean = false;
      
      public var §^z§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §8!+§:Number;
      
      public var §`u§:Number;
      
      private var §"y§:Number;
      
      public var §+3§:§6!,§;
      
      public var §false§:Boolean = false;
      
      private var §`Y§:§default§;
      
      private var § N§:Sprite;
      
      protected var §<!#§:§#!M§;
      
      protected var §=X§:§[!<§ = null;
      
      private var §[5§:EventDispatcher;
      
      private var §%!J§:Array;
      
      private var §40§:Array;
      
      protected var §0!1§:§&!H§;
      
      private var §,Z§:§>!<§;
      
      protected var §@!8§:§'K§;
      
      protected var §7[§:§'n§;
      
      private var §#G§:§8t§;
      
      private var §1!8§:§8t§;
      
      private var §?w§:§8t§;
      
      private var §+<§:Stage;
      
      private var §4V§:§>!-§;
      
      protected var §"!B§:§#Z§;
      
      protected var §[e§:§#Z§;
      
      protected var §7!F§:Number = 0.0;
      
      protected var §,^§:String;
      
      private var §<m§:Boolean;
      
      protected var §[p§:Boolean;
      
      protected var §&7§:uint = 1.417339207E9;
      
      public var §%q§:Boolean;
      
      public function §[-§(param1:Stage)
      {
         this.§40§ = [];
         super();
         this.§[5§ = new EventDispatcher();
         this.§+3§ = new §6!,§();
         this.§+<§ = param1;
         this.§@!8§ = §'K§.§@!&§;
         this.§7[§ = this.initAnimationManager(this.§@!8§);
         this.§#G§ = this.initThemeGraphicsManager();
         this.§1!8§ = this.§,l§();
         this.§?w§ = this.§?+§();
         var _loc2_:Stage3D = param1.stage3Ds[0];
         this.§0!1§ = new §&!H§(§default§,param1,new Rectangle(0,0,§0!E§.§6!I§,§0!E§.§4U§),_loc2_);
         §0!E§.§`#§.addEventListener(Event.ENTER_FRAME,this.§0!1§.onEnterFrame);
         _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§8k§,false,0,true);
         this.§0!1§.§true § = false;
         this.§0!1§.enableErrorChecking = false;
         this.§0!1§.§ 6§ = 2;
         this.§0!1§.§1$§();
      }
      
      public static function §7!,§(param1:§2p§, param2:§2p§) : Number
      {
         var _loc3_:Number = param1.§>9§ - param2.§>9§;
         var _loc4_:Number = param1.§ Z§ - param2.§ Z§;
         return §!N§(_loc3_,_loc4_);
      }
      
      public static function §!N§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         if(!this.§ N§ && this.§?N§)
         {
            this.§ N§ = this.§`Y§.§]X§;
         }
         return this.§ N§;
      }
      
      public function get §?N§() : Sprite
      {
         if(!this.§`Y§)
         {
            this.§`Y§ = this.§0!1§.§"l§ as §default§;
            this.§`Y§.§=!5§ = false;
         }
         return this.§`Y§;
      }
      
      private function get §+j§() : DisplayObject
      {
         if(this.§?N§)
         {
            return (this.§?N§ as §default§).§+j§;
         }
         return null;
      }
      
      public function get §,F§() : §'n§
      {
         return this.§7[§;
      }
      
      public function get textureManager() : §'K§
      {
         return this.§@!8§;
      }
      
      public function get camera() : §&!!§
      {
         return this.§@B§;
      }
      
      public function get objects() : §6!M§
      {
         return this.§<!2§;
      }
      
      public function get particles() : §5P§
      {
         return this.§9!C§;
      }
      
      public function get background() : §@!!§
      {
         return this.§^!C§;
      }
      
      public function get slingshot() : §@6§
      {
         return this.§-;§;
      }
      
      public function get activeObject() : §2p§
      {
         return this.§-!8§;
      }
      
      public function get §,y§() : §9g§
      {
         return this.§'^§;
      }
      
      public function get stage() : Stage
      {
         return this.§+<§;
      }
      
      public function get §3H§() : §8t§
      {
         return this.§?w§;
      }
      
      protected function get §;8§() : §8t§
      {
         return this.§#G§;
      }
      
      public function set activeObject(param1:§2p§) : void
      {
         this.§-!8§ = param1;
      }
      
      public function set slowMotion(param1:Boolean) : void
      {
         this.§[p§ = param1;
      }
      
      public function clear() : void
      {
         if(this.§,Z§)
         {
            this.§,Z§.dispose();
         }
         if(this.§@!8§)
         {
            this.§@!8§.dispose();
         }
         if(this.§#G§ && this.§#G§.textureManager)
         {
            this.§#G§.textureManager.dispose();
         }
         if(this.§?w§ && this.§?w§.textureManager)
         {
            this.§?w§.textureManager.dispose();
         }
         if(this.§0!1§)
         {
            this.§0!1§.dispose();
         }
      }
      
      protected function initThemeGraphicsManager() : §8t§
      {
         return null;
      }
      
      protected function §,l§() : §8t§
      {
         return null;
      }
      
      protected function §?+§() : §8t§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§'K§) : §'n§
      {
         return new §'n§(param1);
      }
      
      public function §5!3§(param1:Boolean) : void
      {
         if(§&!H§.§+!H§)
         {
            if(param1)
            {
               §&!H§.§+!H§.start();
            }
            else
            {
               §&!H§.§+!H§.stop();
               §&!H§.§+!H§.color = 0;
            }
         }
      }
      
      public function §7U§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function §7!H§(param1:§[!<§) : void
      {
         if(this.§=X§ != null)
         {
            this.§=X§.removeEventListeners();
         }
         this.§=X§ = param1;
         if(this.mReadyToRun)
         {
            this.§=X§.addEventListeners();
         }
      }
      
      public function §%!,§() : §#Z§
      {
         return this.§"!B§;
      }
      
      public function §"!3§(param1:§>!<§, param2:Array, param3:Function) : void
      {
         this.§,Z§ = param1;
         var _loc4_:int = this.§,Z§.§'!;§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§@!8§.§^!?§(this.§,Z§.§83§(_loc5_));
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§[5§.addEventListener(Event.INIT,param3);
            this.§40§.push(param3);
         }
         if(this.§!?§(param2))
         {
            this.§`c§();
         }
      }
      
      private function §!?§(param1:Array) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.§@!8§.§7r§())
         {
            _loc2_ = this.§@!8§.§2=§ / 1000;
            _loc3_ = this.§@!8§.§@!E§ / 1000;
            §3'§.log("\n\nMain texture manager memory usage:\n   textures " + _loc2_ + " kilobytes\n   bitmaps " + _loc3_ + " kilobytes\n\n");
            this.initializeAnimations(param1);
            return true;
         }
         this.§%!J§ = param1.concat();
         return false;
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         this.§7[§.initializeAnimations(param1);
      }
      
      private function §8k§(param1:Event) : void
      {
         this.§@!8§.§9<§();
         if(this.§;8§ && this.§;8§.textureManager)
         {
            this.§;8§.textureManager.§9<§();
         }
         if(this.§3H§ && this.§3H§.textureManager)
         {
            this.§3H§.textureManager.§9<§();
         }
         if(this.§%!J§)
         {
            this.§!?§(this.§%!J§);
            this.§%!J§ = null;
            this.§`c§();
         }
         if(this.§=X§ != null && this.mReadyToRun)
         {
            this.§=X§.addEventListeners();
         }
         if(this.§#G§)
         {
            this.§#G§.§7r§();
         }
         if(this.§?w§)
         {
            if(this.§?w§.textureManager)
            {
               this.§?w§.textureManager.§9<§();
               this.§?w§.§7r§();
            }
         }
      }
      
      private function §`c§() : void
      {
         this.§[5§.dispatchEvent(new Event(Event.INIT));
         this.§"o§();
      }
      
      private function §"o§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§40§)
         {
            this.§[5§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§40§ = [];
      }
      
      public function init(param1:§#!M§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§'^§ = new §9g§(this,param1);
         this.§@B§ = this.initLevelCamera(param1);
         this.§8!+§ = 0;
         this.§`u§ = 0;
         this.§"y§ = 0;
         this.§<m§ = false;
         this.mReadyToRun = false;
         this.§@l§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         §['§ = param1.theme;
         this.§<!#§ = param1;
         this.§`v§ = this.§=5§(param1.theme);
         this.§5E§ = this.§^!,§(param1.theme);
         if(this.§`v§ && this.§5E§)
         {
            this.initialize(param1);
         }
         else
         {
            this.§[!&§(param1.theme);
         }
         this.§,`§();
         §9I§.init();
      }
      
      protected function §,`§() : void
      {
         this.§"!B§ = new §#Z§(§&u§.§ !+§);
      }
      
      protected function §=5§(param1:String) : Boolean
      {
         if(this.§#G§)
         {
            return false;
         }
         return true;
      }
      
      protected function §^!,§(param1:String) : Boolean
      {
         var _loc2_:§"!-§ = null;
         if(this.§1!8§)
         {
            _loc2_ = §>p§.§ w§(param1);
            if(_loc2_)
            {
               if(_loc2_.§9!$§ && !this.§1!8§.§[A§(_loc2_.§9!$§))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function §[!&§(param1:String) : void
      {
         var _loc2_:§"!-§ = null;
         if(this.§#G§ && !this.§=5§(param1))
         {
            this.§#G§.removeEventListener(Event.COMPLETE,this.§=$§);
            this.§#G§.removeEventListener(Event.CANCEL,this.§2D§);
            this.§#G§.addEventListener(Event.COMPLETE,this.§=$§);
            this.§#G§.addEventListener(Event.CANCEL,this.§2D§);
            this.§#G§.§!!5§(param1);
         }
         if(this.§1!8§ && !this.§^!,§(param1))
         {
            this.§1!8§.removeEventListener(Event.COMPLETE,this.§'!#§);
            this.§1!8§.removeEventListener(Event.CANCEL,this.§'!%§);
            this.§1!8§.addEventListener(Event.COMPLETE,this.§'!#§);
            this.§1!8§.addEventListener(Event.CANCEL,this.§'!%§);
            _loc2_ = §>p§.§ w§(param1);
            if(_loc2_)
            {
               this.§1!8§.§!!5§(_loc2_.§9!$§);
            }
         }
      }
      
      private function §=$§(param1:Event) : void
      {
         this.§#G§.removeEventListener(Event.COMPLETE,this.§=$§);
         this.§#G§.removeEventListener(Event.CANCEL,this.§2D§);
         this.§`v§ = true;
         if(this.§`v§ && this.§5E§)
         {
            this.initialize(this.§<!#§);
         }
      }
      
      private function §2D§(param1:Event) : void
      {
         this.§#G§.removeEventListener(Event.COMPLETE,this.§=$§);
         this.§#G§.removeEventListener(Event.CANCEL,this.§2D§);
         this.§@l§ = true;
      }
      
      private function §'!#§(param1:Event) : void
      {
         this.§#G§.removeEventListener(Event.COMPLETE,this.§'!#§);
         this.§#G§.removeEventListener(Event.CANCEL,this.§'!%§);
         this.§5E§ = true;
         if(this.§`v§ && this.§5E§)
         {
            this.initialize(this.§<!#§);
         }
      }
      
      private function §'!%§(param1:Event) : void
      {
         this.§#G§.removeEventListener(Event.COMPLETE,this.§'!#§);
         this.§#G§.removeEventListener(Event.CANCEL,this.§'!%§);
         this.§5E§ = true;
         if(this.§`v§ && this.§5E§)
         {
            this.initialize(this.§<!#§);
         }
      }
      
      public function get backgroundTextureManager() : §'K§
      {
         return this.§@!8§;
      }
      
      protected function initialize(param1:§#!M§) : void
      {
         this.§[p§ = false;
         this.§%q§ = false;
         if(§&!H§.§9o§)
         {
            §&!H§.§9o§.speed = 1;
         }
         this.§[o§ = new §-7§(this);
         this.§^!C§ = this.initLevelBackground(param1.theme,this.§'^§.§+D§ / §;5§,this.backgroundTextureManager,this.§@B§.§@q§());
         this.§^!C§.§!_§(§0!E§.§5H§());
         this.§<!2§ = this.initLevelObjectManager(param1);
         this.§-;§ = this.initLevelSlingshot(param1);
         this.§9!C§ = this.initParticleManager(this.§7[§,this.§@!8§);
         this.§@B§.init();
         this.§9y§();
         this.§+!4§();
         this.mReadyToRun = true;
         if(this.§=X§)
         {
            this.§=X§.addEventListeners();
         }
      }
      
      protected function §+!4§() : void
      {
         if(this.§,^§)
         {
            this.§[e§ = §#Z§.initialize(this.§,^§);
            this.§[e§.speed = 1;
            this.§[e§.play();
            this.§7!F§ = -1000;
            this.§,^§ = null;
         }
      }
      
      public function §"G§(param1:String) : void
      {
         this.§,^§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§[e§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§[e§)
         {
            if(param1)
            {
               this.§[e§.speed = Math.min(this.§[e§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§[e§.speed = Math.max(this.§[e§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§[e§)
         {
            this.§[e§.speed = 1;
         }
      }
      
      protected function initLevelObjectManager(param1:§#!M§) : §6!M§
      {
         return new §6!M§(this,param1,new Sprite());
      }
      
      protected function initLevelCamera(param1:§#!M§) : §&!!§
      {
         return new §&!!§(this,param1);
      }
      
      protected function initLevelBackground(param1:String, param2:Number, param3:§'K§, param4:Number) : §@!!§
      {
         return new §@!!§(param1,param2,param3,param4);
      }
      
      protected function initLevelSlingshot(param1:§#!M§) : §@6§
      {
         return new §@6§(this,param1,new Sprite());
      }
      
      protected function initParticleManager(param1:§'n§, param2:§'K§) : §5P§
      {
         return new §5P§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§#!M§ = this.§[!"§();
         var _loc4_:§4!5§;
         (_loc4_ = new §4!5§()).left = 0;
         _loc4_.top = -§&!!§.§+!P§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §&!!§.§+!P§;
         _loc4_.right = _loc4_.left + §&!!§.§0T§;
         _loc4_.y = -13.929;
         _loc4_.x = §&!!§.§0T§;
         _loc4_.id = §&!!§.§@K§;
         _loc3_.§9d§(_loc4_);
         var _loc5_:§4!5§;
         (_loc5_ = new §4!5§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §&!!§.§0T§;
         _loc5_.bottom = _loc5_.top + §&!!§.§+!P§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §&!!§.§0T§ / 2;
         _loc5_.id = §&!!§.§&a§;
         _loc3_.§9d§(_loc5_);
         this.§"+§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§['§ != null)
         {
            _loc3_.theme = §['§;
         }
         this.init(_loc3_);
      }
      
      protected function §"+§(param1:§#!M§, param2:Boolean) : void
      {
         if(param2)
         {
            this.§-u§(param1);
         }
      }
      
      protected function §[!"§() : §#!M§
      {
         var _loc1_:§#!M§ = new §#!M§();
         _loc1_.§@!-§ = -12;
         return new §#!M§();
      }
      
      protected function §,!K§() : Number
      {
         this.§&7§ ^= this.§&7§ << 21;
         this.§&7§ ^= this.§&7§ >>> 35;
         this.§&7§ ^= this.§&7§ << 4;
         return this.§&7§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §-u§(param1:§#!M§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§-b§ = null;
         this.§&7§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§,!K§() * 5;
               (_loc5_ = new §-b§()).x = 30 + _loc3_ * 10 + this.§,!K§() * 9;
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
                  _loc5_.angle = 45 - this.§,!K§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§,!K§() * 3 - _loc3_ * 8;
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
                  _loc5_.angle = this.§,!K§() * 360;
               }
               param1.addObject(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      private function §?#§() : void
      {
      }
      
      public function §9y§() : void
      {
         if(§@!!§.§+=§)
         {
            this.§5!5§(this.§^!C§.§`A§,false);
         }
         this.§5!5§(this.§9!C§.§7M§(§5P§.§-A§),false);
         this.§5!5§(this.§9!C§.§7M§(§5P§.§]!H§),true);
         this.§5!5§(this.§9!C§.§7M§(§5P§.§,C§),true);
         this.§5!5§(this.§<!2§.§<g§,true);
         this.§5!5§(this.§-;§.sprite,true);
         this.§5!5§(this.§9!C§.§7M§(§5P§.§=!L§),true);
         this.§5!5§(this.§^!C§.§0n§,false);
         if(§@!!§.§+=§)
         {
            this.§5!5§(this.§^!C§.§with§,false);
         }
         this.§5!5§(this.§9!C§.§7M§(§5P§.§^!7§),true);
      }
      
      private function §5!5§(param1:Sprite, param2:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(param1);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         param1 /= §0!E§.§@!,§;
         param2 /= §0!E§.§@!,§;
         _loc3_.x = (param1 / §&!!§.levelScale + this.§@B§.§<!6§ - §&!!§.§1!7§ / §&!!§.levelScale) * §;5§;
         _loc3_.y = (param2 / §&!!§.levelScale + this.§@B§.§7H§ - §&!!§.§&p§ / §&!!§.levelScale) * §;5§;
         return _loc3_;
      }
      
      public function box2DToScreen(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / §;5§ + §&!!§.§1!7§ / §&!!§.levelScale - this.§@B§.§<!6§) * §&!!§.levelScale;
         _loc3_.y = (param2 / §;5§ + §&!!§.§&p§ / §&!!§.levelScale - this.§@B§.§7H§) * §&!!§.levelScale;
         var _loc4_:Number = Math.max(§0!E§.§@!,§,§0!E§.§2!A§);
         _loc3_.x *= _loc4_;
         _loc3_.y *= _loc4_;
         return _loc3_;
      }
      
      public function §@g§(param1:String, param2:Number, param3:Number) : void
      {
         this.§<!2§.addObject(param1,param2,param3);
      }
      
      public function §@4§() : void
      {
         if(this.§+j§)
         {
            this.§+j§.visible = true;
            this.§+j§.alpha = 0;
         }
         this.§^z§ = 0;
      }
      
      public function §=<§() : void
      {
         this.§4V§ = new §>!-§(Tuner.§6D§,Tuner.§5!7§);
      }
      
      public function §+y§() : void
      {
         this.§4V§ = null;
      }
      
      public function clearLevel() : void
      {
         if(this.§^!C§)
         {
            this.§^!C§.dispose();
            this.§^!C§ = null;
         }
         if(this.§<!2§)
         {
            this.§<!2§.dispose();
            this.§<!2§ = null;
            this.§-!8§ = null;
         }
         if(this.§[o§)
         {
            if(!this.§[o§.§6!5§)
            {
            }
            this.§[o§.clear();
            this.§[o§ = null;
         }
         if(this.§'^§)
         {
            this.§'^§.clear();
            this.§'^§ = null;
         }
         if(this.§-;§)
         {
            this.§-;§.dispose();
            this.§-;§ = null;
         }
         if(this.§@B§)
         {
            this.§@B§.clear();
            this.§@B§ = null;
         }
         if(this.§9!C§)
         {
            this.§9!C§.dispose();
            this.§9!C§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§8!+§ = 0;
         this.§`u§ = 0;
         this.mReadyToRun = false;
         this.§<m§ = false;
         this.§^z§ = Tuner.§&@§;
         if(this.§?N§)
         {
            (this.§?N§ as §default§).§5'§.x = 0;
            (this.§?N§ as §default§).§5'§.y = 0;
         }
         if(this.§+j§)
         {
            this.§+j§.visible = false;
         }
         this.§[e§ = null;
         this.§"!B§ = null;
         if(this.§#G§)
         {
            this.§#G§.removeEventListener(Event.COMPLETE,this.§=$§);
            this.§#G§.removeEventListener(Event.CANCEL,this.§2D§);
         }
         if(this.§1!8§)
         {
            this.§1!8§.removeEventListener(Event.COMPLETE,this.§'!#§);
            this.§1!8§.removeEventListener(Event.CANCEL,this.§'!%§);
         }
         this.§"o§();
         if(§&!H§.§+!H§)
         {
            §&!H§.§+!H§.color = 0;
         }
         if(this.§=X§)
         {
            this.§=X§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver() : void
      {
      }
      
      public function §4"§() : String
      {
         if(this.§"!B§)
         {
            return this.§"!B§.toString();
         }
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         if(!this.mReadyToRun || !§&!H§.§%^§())
         {
            return 0;
         }
         if(this.§[e§ && this.§[e§.§;7§)
         {
            return this.§3§(param1,param2,param3);
         }
         return this.updateWithTime(param1,true,param2,param3);
      }
      
      protected function updateWithTime(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         if(this.§[p§)
         {
            param1 *= 0.2;
            if(§&!H§.§9o§)
            {
               §&!H§.§9o§.speed = 0.2;
            }
         }
         var _loc5_:Number = 0;
         this.§`u§ += param1;
         if(param3)
         {
            this.§8!+§ += param1;
            _loc5_ = this.§[o§.§@_§(this.§8!+§);
            this.§-;§.update(param1,param4);
            this.§8!+§ = _loc5_;
         }
         else
         {
            this.§<!2§.final(param1);
            this.§8!+§ = 0;
         }
         if(param2)
         {
            this.§70§(param1,_loc5_);
         }
         return param1;
      }
      
      private function §3§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc5_:Number = NaN;
         var _loc4_:Number = §-7§.§4O§ * 1000;
         if(this.§[e§)
         {
            param1 *= this.§[e§.speed;
            _loc5_ = this.§`u§ + param1;
            while(this.§`u§ + _loc4_ < _loc5_)
            {
               if(this.§`u§ + _loc4_ > this.§7!F§)
               {
                  this.§[e§.step(this);
                  this.§7!F§ += _loc4_;
               }
               this.updateWithTime(_loc4_,false,param2,param3);
            }
            if(_loc5_ > this.§7!F§ + _loc4_)
            {
               this.§[e§.step(this);
               this.§7!F§ += _loc4_;
            }
            if(this.§`u§ < _loc5_)
            {
               this.updateWithTime(_loc5_ - this.§`u§,true,param2,param3);
            }
            return param1;
         }
         return this.updateWithTime(_loc4_,true,param2,param3);
      }
      
      private function §70§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.§^!C§.update(param1);
         this.§<!2§.§[Q§(param1,param2);
         this.§+!I§();
         if(this.§^z§ < Tuner.§&@§)
         {
            this.§^z§ += param1;
            _loc3_ = Tuner.§&@§ / 2;
            _loc4_ = (-Math.abs(this.§^z§ - _loc3_) + _loc3_) * (Tuner.§%s§ / _loc3_);
            if(this.§+j§)
            {
               this.§+j§.alpha = _loc4_;
            }
         }
         else if(this.§+j§)
         {
            this.§+j§.visible = false;
         }
         if(this.§4V§)
         {
            if(!this.§4V§.§`2§(this.§@B§,param1))
            {
               this.§+y§();
            }
         }
         this.§@B§.§8!C§(param1);
         this.§[o§.§[!$§();
         this.§9!C§.update(param1);
      }
      
      public function §?B§(param1:Number) : void
      {
         this.objects.final(param1 * 1000);
         this.objects.updateLevelObjectsComplete(param1 * 1000);
         this.§ !'§();
      }
      
      public function §+!I§() : void
      {
         var _loc1_:§2p§ = null;
         if(this.§`u§ > this.§"y§ + 1000 / 30)
         {
            if(this.§,!&§ != null)
            {
               for each(_loc1_ in this.§,!&§)
               {
                  _loc1_.addTrail();
               }
            }
            this.§"y§ = this.§`u§;
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§2p§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.§<!2§.isPigsAlive(true))
            {
               _loc2_ = this.§<!2§.§?!M§(true);
               _loc2_.§^c§.mTryToScream = §?!,§.§=!B§;
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§<!2§.§?!-§());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            if(this.§<!2§.isPigsAlive(true))
            {
               _loc2_ = this.§<!2§.§?!M§(true);
               _loc2_.§^c§.mTryToBlink = §?!,§.§5!O§;
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§<!2§.§?!-§());
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §5Z§.§@?§;
         }
         §9I§.addScore(param1,param2);
         this.§=X§.addScore(param1);
         if(param3 && param1 > 0 && !this.§%q§)
         {
            this.§&n§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §&n§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §5Z§.§else§;
         }
         this.§9!C§.addParticle(§5Z§.§'!<§,§5P§.§^!7§,§5Z§.§#L§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §=1§(param1:§2p§) : void
      {
         if(this.§,!&§ == null)
         {
            this.§,!&§ = new Array();
         }
         this.§,!&§.push(param1);
      }
      
      public function §<!=§() : void
      {
         this.§-;§.§<!=§();
         this.§<!2§.mightyEagleUsed();
         this.§%q§ = true;
      }
      
      public function §!!§(param1:§2p§) : void
      {
         this.§9!C§.§%!§(§5P§.§-A§);
         if(this.§,!&§.indexOf(param1) >= 0)
         {
            this.§,!&§.splice(this.§,!&§.indexOf(param1),1);
         }
         if(this.§,!&§.length == 0)
         {
            this.§,!&§ = null;
         }
      }
      
      public function shootBird(param1:§4!<§, param2:Number, param3:Number) : void
      {
         this.§-!8§ = this.§<!2§.addObject(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
         var _loc4_:Number = param1.name.toUpperCase() == "BIRD_GREEN" ? Number(§@6§.§4H§) : Number(§@6§.§6!J§);
         if(param1.§!u§ > 1)
         {
            this.§-!8§.§]k§(param1.§!u§);
            this.§-!8§.§^c§.§;L§();
         }
         if(param1.§"A§ != 0)
         {
            _loc4_ = param1.§"A§;
         }
         var _loc5_:Number = -_loc4_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc6_:Number = _loc4_ * param2 * Math.sin(param3 / (180 / Math.PI));
         this.§-!8§.§ p§(new b2Vec2(_loc5_,_loc6_),false,true);
         this.camera.§6!0§(§&!!§.§[d§);
         if(this.§"!B§)
         {
            this.§"!B§.shootBird(this.§[o§.§73§,param1.x,param1.y,param2,param3);
         }
      }
      
      public function activatePowerup() : void
      {
         this.§<m§ = true;
      }
      
      private function § !'§() : void
      {
         if(!this.§<m§)
         {
            return;
         }
         this.§<m§ = false;
         if(this.activeObject is §&!Q§ && !(this.activeObject as §&!Q§).§%#§)
         {
            if(this.activeObject.activateSpecialPower(this.§ h§))
            {
               this.§false§ = true;
            }
         }
         else
         {
            this.§<!2§.§'!-§();
         }
         if(this.§"!B§)
         {
            this.§"!B§.§2P§(this.§[o§.§73§);
         }
      }
      
      public function §!!4§() : void
      {
         this.§<!2§.§!!4§();
      }
      
      public function §@!'§() : void
      {
         this.§<!2§.§2!E§();
      }
      
      public function §]!I§() : §#!M§
      {
         var _loc1_:§#!M§ = new §#!M§();
         _loc1_.§#6§ = this.§<!#§.§#6§;
         _loc1_.§!p§ = this.§<!#§.§!p§;
         this.§@B§.§-!@§(_loc1_);
         this.§<!2§.§^i§(_loc1_);
         this.§-;§.§>@§(_loc1_);
         _loc1_.theme = this.§^!C§.§'H§();
         return _loc1_;
      }
      
      public function §"D§() : int
      {
         return this.§<!#§.§!p§;
      }
      
      public function §7#§() : int
      {
         return this.§<!#§.§#6§;
      }
      
      public function §9p§(param1:int) : void
      {
         this.§<!#§.§!p§ = param1;
      }
      
      public function §=M§(param1:int) : void
      {
         this.§<!#§.§#6§ = param1;
      }
      
      public function §`^§(param1:Number, param2:Number) : void
      {
         if(this.§`Y§)
         {
            this.§`Y§.§#!G§(param1,param2);
         }
         if(this.§@B§)
         {
            this.§@B§.§8!C§(0);
         }
      }
      
      public function get § !M§() : §#!M§
      {
         return this.§<!#§;
      }
      
      public function get § h§() : §6!M§
      {
         return this.§<!2§;
      }
      
      protected function get starling() : §&!H§
      {
         return this.§0!1§;
      }
      
      public function get damageParticleLimit() : int
      {
         return §`N§;
      }
   }
}
