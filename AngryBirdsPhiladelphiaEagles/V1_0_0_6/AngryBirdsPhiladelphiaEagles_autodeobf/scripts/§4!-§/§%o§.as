package §4!-§
{
   import §&K§.§&!A§;
   import §&b§.§[F§;
   import §1E§.§2h§;
   import §1E§.§5T§;
   import §1E§.§]!A§;
   import §1E§.§`_§;
   import §3!O§.§5q§;
   import §3?§.§+!9§;
   import §3B§.§;w§;
   import §4!0§.§+!,§;
   import §4!0§.§3§;
   import §4!0§.§]u§;
   import §6h§.§?!I§;
   import §86§.DisplayObject;
   import §86§.Sprite;
   import §8f§.§^A§;
   import §;!B§.§;f§;
   import §<4§.§ try§;
   import §<4§.§5!C§;
   import §>Y§.§#o§;
   import §>Y§.§2>§;
   import §>Y§.§5t§;
   import §>Y§.§^!,§;
   import §@g§.§4!@§;
   import §@k§.§ '§;
   import §^?§.§5Q§;
   import §^?§.§[9§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §%o§
   {
      
      private static const §+!K§:int = 20;
      
      public static const §3V§:Number = §[F§.§[!1§;
      
      public static const §,,§:Number = §[F§.§87§;
      
      public static const §]!?§:Number = 1 / 20;
      
      public static const §<p§:Number = §[F§.§87§ * §]!?§;
      
      public static const §`o§:Number = §3V§ * §]!?§;
      
      public static const §-m§:§;f§ = new §;f§(13 - 3);
      
      public static var §[L§:Number = 1;
      
      protected static var §[N§:String = §5T§.§>S§;
       
      
      protected var §#E§:§2>§;
      
      private var §8!&§:§#o§;
      
      private var §8!=§:Array = null;
      
      protected var §'!I§:§;w§;
      
      public var §,!%§:§[&§;
      
      protected var §!!E§:§4`§;
      
      protected var §+!@§:§?!I§;
      
      protected var §>-§:§2s§;
      
      protected var §2!E§:§ try§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §7!=§:Boolean = false;
      
      protected var §package§:Boolean = false;
      
      protected var §6x§:Boolean = false;
      
      public var §'e§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §,8§:Number;
      
      public var §#g§:Number;
      
      private var §'!J§:Number;
      
      public var §!D§:§]!A§;
      
      public var §?6§:Boolean = false;
      
      private var §-Z§:§&m§;
      
      private var §6%§:Sprite;
      
      protected var § 9§:§5T§;
      
      protected var §5G§:§+!9§ = null;
      
      private var §7e§:EventDispatcher;
      
      private var §1<§:Array;
      
      private var §7P§:Array;
      
      protected var § !#§:§4!@§;
      
      private var §"c§:§ '§;
      
      protected var §"P§:§3§;
      
      protected var §#!C§:§+!,§;
      
      private var §8M§:§]u§;
      
      private var §^!K§:§]u§;
      
      private var §`H§:§]u§;
      
      private var §,^§:Stage;
      
      private var §^!!§:§4%§;
      
      protected var §9N§:§^A§;
      
      protected var §6T§:§^A§;
      
      protected var §,!K§:Number = 0.0;
      
      protected var §4!#§:String;
      
      private var §8"§:Boolean;
      
      protected var §[;§:Boolean;
      
      protected var §8!K§:uint = 1.417339207E9;
      
      public var §7!4§:Boolean;
      
      public function §%o§(param1:Stage)
      {
         this.§7P§ = [];
         super();
         this.§7e§ = new EventDispatcher();
         this.§!D§ = new §]!A§();
         this.§,^§ = param1;
         this.§"P§ = §3§.§<"§;
         this.§#!C§ = this.initAnimationManager(this.§"P§);
         this.§8M§ = this.initThemeGraphicsManager();
         this.§^!K§ = this.§6Y§();
         this.§`H§ = this.§+!#§();
         var _loc2_:Stage3D = param1.stage3Ds[0];
         this.§ !#§ = new §4!@§(§&m§,param1,new Rectangle(0,0,§[F§.§[!1§,§[F§.§87§),_loc2_);
         §[F§.§-4§.addEventListener(Event.ENTER_FRAME,this.§ !#§.onEnterFrame);
         _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§#!?§,false,0,true);
         this.§ !#§.§1!7§ = false;
         this.§ !#§.enableErrorChecking = false;
         this.§ !#§.§ >§ = 2;
         this.§ !#§.§+w§();
      }
      
      public static function §0U§(param1:§#o§, param2:§#o§) : Number
      {
         var _loc3_:Number = param1.§^!2§ - param2.§^!2§;
         var _loc4_:Number = param1.§0a§ - param2.§0a§;
         return §4E§(_loc3_,_loc4_);
      }
      
      public static function §4E§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         if(!this.§6%§ && this.§43§)
         {
            this.§6%§ = this.§-Z§.§&!,§;
         }
         return this.§6%§;
      }
      
      public function get §43§() : Sprite
      {
         if(!this.§-Z§)
         {
            this.§-Z§ = this.§ !#§.§!J§ as §&m§;
            this.§-Z§.§+k§ = false;
         }
         return this.§-Z§;
      }
      
      private function get §^[§() : DisplayObject
      {
         if(this.§43§)
         {
            return (this.§43§ as §&m§).§^[§;
         }
         return null;
      }
      
      public function get §>"§() : §+!,§
      {
         return this.§#!C§;
      }
      
      public function get textureManager() : §3§
      {
         return this.§"P§;
      }
      
      public function get camera() : §?!I§
      {
         return this.§+!@§;
      }
      
      public function get objects() : §2>§
      {
         return this.§#E§;
      }
      
      public function get particles() : § try§
      {
         return this.§2!E§;
      }
      
      public function get background() : §;w§
      {
         return this.§'!I§;
      }
      
      public function get slingshot() : §2s§
      {
         return this.§>-§;
      }
      
      public function get activeObject() : §#o§
      {
         return this.§8!&§;
      }
      
      public function get §=!#§() : §4`§
      {
         return this.§!!E§;
      }
      
      public function get stage() : Stage
      {
         return this.§,^§;
      }
      
      public function get §@!%§() : §]u§
      {
         return this.§`H§;
      }
      
      protected function get §%'§() : §]u§
      {
         return this.§8M§;
      }
      
      public function set activeObject(param1:§#o§) : void
      {
         this.§8!&§ = param1;
      }
      
      public function set slowMotion(param1:Boolean) : void
      {
         this.§[;§ = param1;
      }
      
      public function clear() : void
      {
         if(this.§"c§)
         {
            this.§"c§.dispose();
         }
         if(this.§"P§)
         {
            this.§"P§.dispose();
         }
         if(this.§8M§ && this.§8M§.textureManager)
         {
            this.§8M§.textureManager.dispose();
         }
         if(this.§`H§ && this.§`H§.textureManager)
         {
            this.§`H§.textureManager.dispose();
         }
         if(this.§ !#§)
         {
            this.§ !#§.dispose();
         }
      }
      
      protected function initThemeGraphicsManager() : §]u§
      {
         return null;
      }
      
      protected function §6Y§() : §]u§
      {
         return null;
      }
      
      protected function §+!#§() : §]u§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§3§) : §+!,§
      {
         return new §+!,§(param1);
      }
      
      public function §#Q§(param1:Boolean) : void
      {
         if(§4!@§.§ C§)
         {
            if(param1)
            {
               §4!@§.§ C§.start();
            }
            else
            {
               §4!@§.§ C§.stop();
               §4!@§.§ C§.color = 0;
            }
         }
      }
      
      public function §@!4§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function §0D§(param1:§+!9§) : void
      {
         if(this.§5G§ != null)
         {
            this.§5G§.removeEventListeners();
         }
         this.§5G§ = param1;
         if(this.mReadyToRun)
         {
            this.§5G§.addEventListeners();
         }
      }
      
      public function §6,§() : §^A§
      {
         return this.§9N§;
      }
      
      public function §9D§(param1:§ '§, param2:Array, param3:Function) : void
      {
         this.§"c§ = param1;
         var _loc4_:int = this.§"c§.§@B§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§"P§.§-'§(this.§"c§.§=!4§(_loc5_));
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§7e§.addEventListener(Event.INIT,param3);
            this.§7P§.push(param3);
         }
         if(this.§-!8§(param2))
         {
            this.§]Z§();
         }
      }
      
      private function §-!8§(param1:Array) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.§"P§.§]+§())
         {
            _loc2_ = this.§"P§.§6d§ / 1000;
            _loc3_ = this.§"P§.§9]§ / 1000;
            §5q§.log("\n\nMain texture manager memory usage:\n   textures " + _loc2_ + " kilobytes\n   bitmaps " + _loc3_ + " kilobytes\n\n");
            this.initializeAnimations(param1);
            return true;
         }
         this.§1<§ = param1.concat();
         return false;
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         this.§#!C§.initializeAnimations(param1);
      }
      
      private function §#!?§(param1:Event) : void
      {
         this.§"P§.§!+§();
         if(this.§%'§ && this.§%'§.textureManager)
         {
            this.§%'§.textureManager.§!+§();
         }
         if(this.§@!%§ && this.§@!%§.textureManager)
         {
            this.§@!%§.textureManager.§!+§();
         }
         if(this.§1<§)
         {
            this.§-!8§(this.§1<§);
            this.§1<§ = null;
            this.§]Z§();
         }
         if(this.§5G§ != null && this.mReadyToRun)
         {
            this.§5G§.addEventListeners();
         }
         if(this.§8M§)
         {
            this.§8M§.§]+§();
         }
         if(this.§`H§)
         {
            if(this.§`H§.textureManager)
            {
               this.§`H§.textureManager.§!+§();
               this.§`H§.§]+§();
            }
         }
      }
      
      private function §]Z§() : void
      {
         this.§7e§.dispatchEvent(new Event(Event.INIT));
         this.include();
      }
      
      private function include() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§7P§)
         {
            this.§7e§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§7P§ = [];
      }
      
      public function init(param1:§5T§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§!!E§ = new §4`§(this,param1);
         this.§+!@§ = this.initLevelCamera(param1);
         this.§,8§ = 0;
         this.§#g§ = 0;
         this.§'!J§ = 0;
         this.§8"§ = false;
         this.mReadyToRun = false;
         this.§7!=§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         §[N§ = param1.theme;
         this.§ 9§ = param1;
         this.§package§ = this.§&E§(param1.theme);
         this.§6x§ = this.§"!B§(param1.theme);
         if(this.§package§ && this.§6x§)
         {
            this.initialize(param1);
         }
         else
         {
            this.§8!8§(param1.theme);
         }
         this.§"V§();
         §1F§.init();
      }
      
      protected function §"V§() : void
      {
         this.§9N§ = new §^A§(§2h§.§,!P§);
      }
      
      protected function §&E§(param1:String) : Boolean
      {
         if(this.§8M§)
         {
            return false;
         }
         return true;
      }
      
      protected function §"!B§(param1:String) : Boolean
      {
         var _loc2_:§5Q§ = null;
         if(this.§^!K§)
         {
            _loc2_ = §[9§.§ r§(param1);
            if(_loc2_)
            {
               if(_loc2_.§[!P§ && !this.§^!K§.§>!7§(_loc2_.§[!P§))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function §8!8§(param1:String) : void
      {
         var _loc2_:§5Q§ = null;
         if(this.§8M§ && !this.§&E§(param1))
         {
            this.§8M§.removeEventListener(Event.COMPLETE,this.§&r§);
            this.§8M§.removeEventListener(Event.CANCEL,this.§^!4§);
            this.§8M§.addEventListener(Event.COMPLETE,this.§&r§);
            this.§8M§.addEventListener(Event.CANCEL,this.§^!4§);
            this.§8M§.§;a§(param1);
         }
         if(this.§^!K§ && !this.§"!B§(param1))
         {
            this.§^!K§.removeEventListener(Event.COMPLETE,this.§]F§);
            this.§^!K§.removeEventListener(Event.CANCEL,this.§3c§);
            this.§^!K§.addEventListener(Event.COMPLETE,this.§]F§);
            this.§^!K§.addEventListener(Event.CANCEL,this.§3c§);
            _loc2_ = §[9§.§ r§(param1);
            if(_loc2_)
            {
               this.§^!K§.§;a§(_loc2_.§[!P§);
            }
         }
      }
      
      private function §&r§(param1:Event) : void
      {
         this.§8M§.removeEventListener(Event.COMPLETE,this.§&r§);
         this.§8M§.removeEventListener(Event.CANCEL,this.§^!4§);
         this.§package§ = true;
         if(this.§package§ && this.§6x§)
         {
            this.initialize(this.§ 9§);
         }
      }
      
      private function §^!4§(param1:Event) : void
      {
         this.§8M§.removeEventListener(Event.COMPLETE,this.§&r§);
         this.§8M§.removeEventListener(Event.CANCEL,this.§^!4§);
         this.§7!=§ = true;
      }
      
      private function §]F§(param1:Event) : void
      {
         this.§8M§.removeEventListener(Event.COMPLETE,this.§]F§);
         this.§8M§.removeEventListener(Event.CANCEL,this.§3c§);
         this.§6x§ = true;
         if(this.§package§ && this.§6x§)
         {
            this.initialize(this.§ 9§);
         }
      }
      
      private function §3c§(param1:Event) : void
      {
         this.§8M§.removeEventListener(Event.COMPLETE,this.§]F§);
         this.§8M§.removeEventListener(Event.CANCEL,this.§3c§);
         this.§6x§ = true;
         if(this.§package§ && this.§6x§)
         {
            this.initialize(this.§ 9§);
         }
      }
      
      public function get backgroundTextureManager() : §3§
      {
         return this.§"P§;
      }
      
      protected function initialize(param1:§5T§) : void
      {
         this.§[;§ = false;
         this.§7!4§ = false;
         if(§4!@§.§<!!§)
         {
            §4!@§.§<!!§.speed = 1;
         }
         this.§,!%§ = new §[&§(this);
         this.§'!I§ = this.initLevelBackground(param1.theme,this.§!!E§.§,!2§ / §]!?§,this.backgroundTextureManager,this.§+!@§.§[!;§());
         this.§'!I§.§'!%§(§[F§.§3!;§());
         this.§#E§ = this.initLevelObjectManager(param1);
         this.§>-§ = this.initLevelSlingshot(param1);
         this.§2!E§ = this.initParticleManager(this.§#!C§,this.§"P§);
         this.§+!@§.init();
         this.§@z§();
         this.§4x§();
         this.mReadyToRun = true;
         if(this.§5G§)
         {
            this.§5G§.addEventListeners();
         }
      }
      
      protected function §4x§() : void
      {
         if(this.§4!#§)
         {
            this.§6T§ = §^A§.initialize(this.§4!#§);
            this.§6T§.speed = 1;
            this.§6T§.play();
            this.§,!K§ = -1000;
            this.§4!#§ = null;
         }
      }
      
      public function §1=§(param1:String) : void
      {
         this.§4!#§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§6T§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§6T§)
         {
            if(param1)
            {
               this.§6T§.speed = Math.min(this.§6T§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§6T§.speed = Math.max(this.§6T§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§6T§)
         {
            this.§6T§.speed = 1;
         }
      }
      
      protected function initLevelObjectManager(param1:§5T§) : §2>§
      {
         return new §2>§(this,param1,new Sprite());
      }
      
      protected function initLevelCamera(param1:§5T§) : §?!I§
      {
         return new §?!I§(this,param1);
      }
      
      protected function initLevelBackground(param1:String, param2:Number, param3:§3§, param4:Number) : §;w§
      {
         return new §;w§(param1,param2,param3,param4);
      }
      
      protected function initLevelSlingshot(param1:§5T§) : §2s§
      {
         return new §2s§(this,param1,new Sprite());
      }
      
      protected function initParticleManager(param1:§+!,§, param2:§3§) : § try§
      {
         return new § try§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§5T§ = this.§8<§();
         var _loc4_:§`_§;
         (_loc4_ = new §`_§()).left = 0;
         _loc4_.top = -§?!I§.§@^§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §?!I§.§@^§;
         _loc4_.right = _loc4_.left + §?!I§.§-i§;
         _loc4_.y = -13.929;
         _loc4_.x = §?!I§.§-i§;
         _loc4_.id = §?!I§.§6!<§;
         _loc3_.§^c§(_loc4_);
         var _loc5_:§`_§;
         (_loc5_ = new §`_§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §?!I§.§-i§;
         _loc5_.bottom = _loc5_.top + §?!I§.§@^§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §?!I§.§-i§ / 2;
         _loc5_.id = §?!I§.§3!P§;
         _loc3_.§^c§(_loc5_);
         this.§3!1§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§[N§ != null)
         {
            _loc3_.theme = §[N§;
         }
         this.init(_loc3_);
      }
      
      protected function §3!1§(param1:§5T§, param2:Boolean) : void
      {
         if(param2)
         {
            this.§5`§(param1);
         }
      }
      
      protected function §8<§() : §5T§
      {
         var _loc1_:§5T§ = new §5T§();
         _loc1_.§^!H§ = -12;
         return new §5T§();
      }
      
      protected function §""§() : Number
      {
         this.§8!K§ ^= this.§8!K§ << 21;
         this.§8!K§ ^= this.§8!K§ >>> 35;
         this.§8!K§ ^= this.§8!K§ << 4;
         return this.§8!K§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §5`§(param1:§5T§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§&!A§ = null;
         this.§8!K§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§""§() * 5;
               (_loc5_ = new §&!A§()).x = 30 + _loc3_ * 10 + this.§""§() * 9;
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
                  _loc5_.angle = 45 - this.§""§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§""§() * 3 - _loc3_ * 8;
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
                  _loc5_.angle = this.§""§() * 360;
               }
               param1.addObject(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      private function §'J§() : void
      {
      }
      
      public function §@z§() : void
      {
         if(§;w§.§!<§)
         {
            this.§"i§(this.§'!I§.§8?§,false);
         }
         this.§"i§(this.§2!E§.§]>§(§ try§.§1P§),false);
         this.§"i§(this.§2!E§.§]>§(§ try§.§`!+§),true);
         this.§"i§(this.§2!E§.§]>§(§ try§.§]R§),true);
         this.§"i§(this.§#E§.§-J§,true);
         this.§"i§(this.§>-§.sprite,true);
         this.§"i§(this.§2!E§.§]>§(§ try§.§4!+§),true);
         this.§"i§(this.§'!I§.§'!N§,false);
         if(§;w§.§!<§)
         {
            this.§"i§(this.§'!I§.§`a§,false);
         }
         this.§"i§(this.§2!E§.§]>§(§ try§.§3!6§),true);
      }
      
      private function §"i§(param1:Sprite, param2:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(param1);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         param1 /= §[F§.§9h§;
         param2 /= §[F§.§9h§;
         _loc3_.x = (param1 / §?!I§.levelScale + this.§+!@§.§+!%§ - §?!I§.§3^§ / §?!I§.levelScale) * §]!?§;
         _loc3_.y = (param2 / §?!I§.levelScale + this.§+!@§.§9!L§ - §?!I§.§use § / §?!I§.levelScale) * §]!?§;
         return _loc3_;
      }
      
      public function box2DToScreen(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / §]!?§ + §?!I§.§3^§ / §?!I§.levelScale - this.§+!@§.§+!%§) * §?!I§.levelScale;
         _loc3_.y = (param2 / §]!?§ + §?!I§.§use § / §?!I§.levelScale - this.§+!@§.§9!L§) * §?!I§.levelScale;
         var _loc4_:Number = Math.max(§[F§.§9h§,§[F§.§9!M§);
         _loc3_.x *= _loc4_;
         _loc3_.y *= _loc4_;
         return _loc3_;
      }
      
      public function §8m§(param1:String, param2:Number, param3:Number) : void
      {
         this.§#E§.addObject(param1,param2,param3);
      }
      
      public function §^E§() : void
      {
         if(this.§^[§)
         {
            this.§^[§.visible = true;
            this.§^[§.alpha = 0;
         }
         this.§'e§ = 0;
      }
      
      public function §>6§() : void
      {
         this.§^!!§ = new §4%§(Tuner.§2!$§,Tuner.§=!6§);
      }
      
      public function §"A§() : void
      {
         this.§^!!§ = null;
      }
      
      public function clearLevel() : void
      {
         if(this.§'!I§)
         {
            this.§'!I§.dispose();
            this.§'!I§ = null;
         }
         if(this.§#E§)
         {
            this.§#E§.dispose();
            this.§#E§ = null;
            this.§8!&§ = null;
         }
         if(this.§,!%§)
         {
            if(!this.§,!%§.§8X§)
            {
            }
            this.§,!%§.clear();
            this.§,!%§ = null;
         }
         if(this.§!!E§)
         {
            this.§!!E§.clear();
            this.§!!E§ = null;
         }
         if(this.§>-§)
         {
            this.§>-§.dispose();
            this.§>-§ = null;
         }
         if(this.§+!@§)
         {
            this.§+!@§.clear();
            this.§+!@§ = null;
         }
         if(this.§2!E§)
         {
            this.§2!E§.dispose();
            this.§2!E§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§,8§ = 0;
         this.§#g§ = 0;
         this.mReadyToRun = false;
         this.§8"§ = false;
         this.§'e§ = Tuner.§=#§;
         if(this.§43§)
         {
            (this.§43§ as §&m§).§<!6§.x = 0;
            (this.§43§ as §&m§).§<!6§.y = 0;
         }
         if(this.§^[§)
         {
            this.§^[§.visible = false;
         }
         this.§6T§ = null;
         this.§9N§ = null;
         if(this.§8M§)
         {
            this.§8M§.removeEventListener(Event.COMPLETE,this.§&r§);
            this.§8M§.removeEventListener(Event.CANCEL,this.§^!4§);
         }
         if(this.§^!K§)
         {
            this.§^!K§.removeEventListener(Event.COMPLETE,this.§]F§);
            this.§^!K§.removeEventListener(Event.CANCEL,this.§3c§);
         }
         this.include();
         if(§4!@§.§ C§)
         {
            §4!@§.§ C§.color = 0;
         }
         if(this.§5G§)
         {
            this.§5G§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver() : void
      {
      }
      
      public function §;R§() : String
      {
         if(this.§9N§)
         {
            return this.§9N§.toString();
         }
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         if(!this.mReadyToRun || !§4!@§.§<<§())
         {
            return 0;
         }
         if(this.§6T§ && this.§6T§.§,J§)
         {
            return this.§9X§(param1,param2,param3);
         }
         return this.updateWithTime(param1,true,param2,param3);
      }
      
      protected function updateWithTime(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         if(this.§[;§)
         {
            param1 *= 0.2;
            if(§4!@§.§<!!§)
            {
               §4!@§.§<!!§.speed = 0.2;
            }
         }
         var _loc5_:Number = 0;
         this.§#g§ += param1;
         if(param3)
         {
            this.§,8§ += param1;
            _loc5_ = this.§,!%§.§+!4§(this.§,8§);
            this.§>-§.update(param1,param4);
            this.§,8§ = _loc5_;
         }
         else
         {
            this.§#E§.§^!G§(param1);
            this.§,8§ = 0;
         }
         if(param2)
         {
            this.§4Q§(param1,_loc5_);
         }
         return param1;
      }
      
      private function §9X§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc5_:Number = NaN;
         var _loc4_:Number = §[&§.§8Z§ * 1000;
         if(this.§6T§)
         {
            param1 *= this.§6T§.speed;
            _loc5_ = this.§#g§ + param1;
            while(this.§#g§ + _loc4_ < _loc5_)
            {
               if(this.§#g§ + _loc4_ > this.§,!K§)
               {
                  this.§6T§.step(this);
                  this.§,!K§ += _loc4_;
               }
               this.updateWithTime(_loc4_,false,param2,param3);
            }
            if(_loc5_ > this.§,!K§ + _loc4_)
            {
               this.§6T§.step(this);
               this.§,!K§ += _loc4_;
            }
            if(this.§#g§ < _loc5_)
            {
               this.updateWithTime(_loc5_ - this.§#g§,true,param2,param3);
            }
            return param1;
         }
         return this.updateWithTime(_loc4_,true,param2,param3);
      }
      
      private function §4Q§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.§'!I§.update(param1);
         this.§#E§.§2!!§(param1,param2);
         this.§7!6§();
         if(this.§'e§ < Tuner.§=#§)
         {
            this.§'e§ += param1;
            _loc3_ = Tuner.§=#§ / 2;
            _loc4_ = (-Math.abs(this.§'e§ - _loc3_) + _loc3_) * (Tuner.§3!?§ / _loc3_);
            if(this.§^[§)
            {
               this.§^[§.alpha = _loc4_;
            }
         }
         else if(this.§^[§)
         {
            this.§^[§.visible = false;
         }
         if(this.§^!!§)
         {
            if(!this.§^!!§.§5!2§(this.§+!@§,param1))
            {
               this.§"A§();
            }
         }
         this.§+!@§.§]!G§(param1);
         this.§,!%§.§=!>§();
         this.§2!E§.update(param1);
      }
      
      public function §[A§(param1:Number) : void
      {
         this.objects.§^!G§(param1 * 1000);
         this.objects.updateLevelObjectsComplete(param1 * 1000);
         this.§&J§();
      }
      
      public function §7!6§() : void
      {
         var _loc1_:§#o§ = null;
         if(this.§#g§ > this.§'!J§ + 1000 / 30)
         {
            if(this.§8!=§ != null)
            {
               for each(_loc1_ in this.§8!=§)
               {
                  _loc1_.addTrail();
               }
            }
            this.§'!J§ = this.§#g§;
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§#o§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.§#E§.isPigsAlive(true))
            {
               _loc2_ = this.§#E§.§10§(true);
               _loc2_.§%!B§.mTryToScream = §^!,§.§'!?§;
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§#E§.§]6§());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            if(this.§#E§.isPigsAlive(true))
            {
               _loc2_ = this.§#E§.§10§(true);
               _loc2_.§%!B§.mTryToBlink = §^!,§.§1s§;
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§#E§.§]6§());
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §5!C§.§-!7§;
         }
         §1F§.addScore(param1,param2);
         this.§5G§.addScore(param1);
         if(param3 && param1 > 0 && !this.§7!4§)
         {
            this.§=§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §=§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §5!C§.§2I§;
         }
         this.§2!E§.addParticle(§5!C§.§7!N§,§ try§.§3!6§,§5!C§.§8!H§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §]#§(param1:§#o§) : void
      {
         if(this.§8!=§ == null)
         {
            this.§8!=§ = new Array();
         }
         this.§8!=§.push(param1);
      }
      
      public function §4!§() : void
      {
         this.§>-§.§4!§();
         this.§#E§.mightyEagleUsed();
         this.§7!4§ = true;
      }
      
      public function §`!I§(param1:§#o§) : void
      {
         this.§2!E§.§@T§(§ try§.§1P§);
         if(this.§8!=§.indexOf(param1) >= 0)
         {
            this.§8!=§.splice(this.§8!=§.indexOf(param1),1);
         }
         if(this.§8!=§.length == 0)
         {
            this.§8!=§ = null;
         }
      }
      
      public function shootBird(param1:§;d§, param2:Number, param3:Number) : void
      {
         this.§8!&§ = this.§#E§.addObject(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
         var _loc4_:Number = param1.name.toUpperCase() == "BIRD_GREEN" ? Number(§2s§.§3G§) : Number(§2s§.§>L§);
         if(param1.§5k§ > 1)
         {
            this.§8!&§.§;!%§(param1.§5k§);
            this.§8!&§.§%!B§.§%f§();
         }
         if(param1.§'!F§ != 0)
         {
            _loc4_ = param1.§'!F§;
         }
         var _loc5_:Number = -_loc4_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc6_:Number = _loc4_ * param2 * Math.sin(param3 / (180 / Math.PI));
         this.§8!&§.static(new b2Vec2(_loc5_,_loc6_),false,true);
         this.camera.§!!1§(§?!I§.§+,§);
         if(this.§9N§)
         {
            this.§9N§.shootBird(this.§,!%§.§12§,param1.x,param1.y,param2,param3);
         }
      }
      
      public function activatePowerup() : void
      {
         this.§8"§ = true;
      }
      
      private function §&J§() : void
      {
         if(!this.§8"§)
         {
            return;
         }
         this.§8"§ = false;
         if(this.activeObject is §5t§ && !(this.activeObject as §5t§).§4!K§)
         {
            if(this.activeObject.activateSpecialPower(this.§ z§))
            {
               this.§?6§ = true;
            }
         }
         else
         {
            this.§#E§.§`!D§();
         }
         if(this.§9N§)
         {
            this.§9N§.§2;§(this.§,!%§.§12§);
         }
      }
      
      public function §?'§() : void
      {
         this.§#E§.§?'§();
      }
      
      public function §6P§() : void
      {
         this.§#E§.§1!%§();
      }
      
      public function §%q§() : §5T§
      {
         var _loc1_:§5T§ = new §5T§();
         _loc1_.§3!3§ = this.§ 9§.§3!3§;
         _loc1_.§-!#§ = this.§ 9§.§-!#§;
         this.§+!@§.§;4§(_loc1_);
         this.§#E§.§97§(_loc1_);
         this.§>-§.§!g§(_loc1_);
         _loc1_.theme = this.§'!I§.§6U§();
         return _loc1_;
      }
      
      public function §!X§() : int
      {
         return this.§ 9§.§-!#§;
      }
      
      public function §?!0§() : int
      {
         return this.§ 9§.§3!3§;
      }
      
      public function §]!@§(param1:int) : void
      {
         this.§ 9§.§-!#§ = param1;
      }
      
      public function §"o§(param1:int) : void
      {
         this.§ 9§.§3!3§ = param1;
      }
      
      public function §?!&§(param1:Number, param2:Number) : void
      {
         if(this.§-Z§)
         {
            this.§-Z§.§0!9§(param1,param2);
         }
         if(this.§+!@§)
         {
            this.§+!@§.§]!G§(0);
         }
      }
      
      public function get §+!$§() : §5T§
      {
         return this.§ 9§;
      }
      
      public function get § z§() : §2>§
      {
         return this.§#E§;
      }
      
      protected function get starling() : §4!@§
      {
         return this.§ !#§;
      }
      
      public function get damageParticleLimit() : int
      {
         return §+!K§;
      }
   }
}
