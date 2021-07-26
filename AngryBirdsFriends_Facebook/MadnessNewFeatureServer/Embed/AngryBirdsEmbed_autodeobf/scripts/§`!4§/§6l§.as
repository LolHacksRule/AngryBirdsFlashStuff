package §`!4§
{
   import §#+§.§6!C§;
   import §#+§.§@!<§;
   import §#?§.§%!5§;
   import §#?§.§6!4§;
   import §#?§.§=E§;
   import §%!E§.§-§;
   import §'6§.§?!L§;
   import §+_§.§2!'§;
   import §,!,§.§2t§;
   import §1!K§.§'T§;
   import §1!K§.§==§;
   import §2!!§.§<6§;
   import §3y§.§"!G§;
   import §46§.§5!N§;
   import §90§.DisplayObject;
   import §90§.Sprite;
   import §=!&§.§3r§;
   import §>!O§.§[+§;
   import §>c§.§1!>§;
   import §?!8§.§#K§;
   import §?!8§.§-!1§;
   import §?!8§.§=0§;
   import §?!8§.§]f§;
   import §?j§.§ !#§;
   import §?j§.§9?§;
   import §?j§.§`R§;
   import §?j§.§`y§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §6l§
   {
      
      private static const §for §:int = 20;
      
      public static const §!!M§:Number = §[+§.§'q§;
      
      public static const §`>§:Number = §[+§.§0!-§;
      
      public static const §%!<§:Number = 1 / 20;
      
      public static const §?p§:Number = §[+§.§0!-§ * §%!<§;
      
      public static const §?[§:Number = §!!M§ * §%!<§;
      
      public static const §4!!§:§"!G§ = new §"!G§(13 - 3);
      
      public static var §&q§:Number = 1;
      
      protected static var §9!@§:String = §9?§.§-k§;
       
      
      protected var §>g§:§#K§;
      
      private var §7t§:§]f§;
      
      private var §8d§:Array = null;
      
      protected var §>_§:§1!>§;
      
      public var mLevelEngine:§&M§;
      
      protected var §3i§:§[O§;
      
      protected var §0P§:§-§;
      
      protected var §;;§:§^H§;
      
      protected var §7G§:§6!C§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §!!+§:Boolean = false;
      
      protected var §5[§:Boolean = false;
      
      protected var §,8§:Boolean = false;
      
      public var §4D§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §5;§:Number;
      
      public var § 6§:Number;
      
      private var §0<§:Number;
      
      public var §0G§:§ !#§;
      
      public var §2?§:Boolean = false;
      
      private var §#!8§:§-9§;
      
      private var §`!A§:Sprite;
      
      protected var §`&§:§9?§;
      
      protected var §&]§:§2!'§ = null;
      
      private var §-V§:EventDispatcher;
      
      private var §7!=§:Array;
      
      private var §!4§:Array;
      
      protected var §&1§:§2t§;
      
      private var §[W§:§<6§;
      
      protected var §[E§:§6!4§;
      
      protected var § 2§:§=E§;
      
      private var §?K§:§%!5§;
      
      private var §9m§:§%!5§;
      
      private var §!!D§:§%!5§;
      
      private var §!^§:Stage;
      
      private var §9`§:§2! §;
      
      protected var §-u§:§3r§;
      
      protected var §0Z§:§3r§;
      
      protected var §29§:Number = 0.0;
      
      protected var §?2§:String;
      
      private var §'0§:Boolean;
      
      protected var §+p§:Boolean;
      
      protected var §,T§:uint = 1.417339207E9;
      
      public var §0+§:Boolean;
      
      public function §6l§(param1:Stage)
      {
         this.§!4§ = [];
         super();
         this.§-V§ = new EventDispatcher();
         this.§0G§ = new § !#§();
         this.§!^§ = param1;
         this.§[E§ = §6!4§.§;R§;
         this.§ 2§ = this.initAnimationManager(this.§[E§);
         this.§?K§ = this.initThemeGraphicsManager();
         this.§9m§ = this.§3a§();
         this.§!!D§ = this.§+!H§();
         var _loc2_:Stage3D = param1.stage3Ds[0];
         this.§&1§ = new §2t§(§-9§,param1,new Rectangle(0,0,§[+§.§'q§,§[+§.§0!-§),_loc2_);
         §[+§.§&!"§.addEventListener(Event.ENTER_FRAME,this.§&1§.onEnterFrame);
         _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§>h§,false,0,true);
         this.§&1§.§!!4§ = false;
         this.§&1§.enableErrorChecking = false;
         this.§&1§.§;w§ = 2;
         this.§&1§.§5§();
      }
      
      public static function §>!L§(param1:§]f§, param2:§]f§) : Number
      {
         var _loc3_:Number = param1.§,!-§ - param2.§,!-§;
         var _loc4_:Number = param1.§]O§ - param2.§]O§;
         return §;!#§(_loc3_,_loc4_);
      }
      
      public static function §;!#§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         if(!this.§`!A§ && this.§^C§)
         {
            this.§`!A§ = this.§#!8§.§4q§;
         }
         return this.§`!A§;
      }
      
      public function get §^C§() : Sprite
      {
         if(!this.§#!8§)
         {
            this.§#!8§ = this.§&1§.§!!7§ as §-9§;
            this.§#!8§.§]u§ = false;
         }
         return this.§#!8§;
      }
      
      private function get §,U§() : DisplayObject
      {
         if(this.§^C§)
         {
            return (this.§^C§ as §-9§).§,U§;
         }
         return null;
      }
      
      public function get §7g§() : §=E§
      {
         return this.§ 2§;
      }
      
      public function get textureManager() : §6!4§
      {
         return this.§[E§;
      }
      
      public function get camera() : §-§
      {
         return this.§0P§;
      }
      
      public function get objects() : §#K§
      {
         return this.§>g§;
      }
      
      public function get particles() : §6!C§
      {
         return this.§7G§;
      }
      
      public function get background() : §1!>§
      {
         return this.§>_§;
      }
      
      public function get slingshot() : §^H§
      {
         return this.§;;§;
      }
      
      public function get activeObject() : §]f§
      {
         return this.§7t§;
      }
      
      public function get §;f§() : §[O§
      {
         return this.§3i§;
      }
      
      public function get stage() : Stage
      {
         return this.§!^§;
      }
      
      public function get §1-§() : §%!5§
      {
         return this.§!!D§;
      }
      
      protected function get §4!,§() : §%!5§
      {
         return this.§?K§;
      }
      
      public function set activeObject(param1:§]f§) : void
      {
         this.§7t§ = param1;
      }
      
      public function set §+x§(param1:Boolean) : void
      {
         this.§+p§ = param1;
      }
      
      public function clear() : void
      {
         if(this.§[W§)
         {
            this.§[W§.dispose();
         }
         if(this.§[E§)
         {
            this.§[E§.dispose();
         }
         if(this.§?K§ && this.§?K§.textureManager)
         {
            this.§?K§.textureManager.dispose();
         }
         if(this.§!!D§ && this.§!!D§.textureManager)
         {
            this.§!!D§.textureManager.dispose();
         }
         if(this.§&1§)
         {
            this.§&1§.dispose();
         }
      }
      
      protected function initThemeGraphicsManager() : §%!5§
      {
         return null;
      }
      
      protected function §3a§() : §%!5§
      {
         return null;
      }
      
      protected function §+!H§() : §%!5§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§6!4§) : §=E§
      {
         return new §=E§(param1);
      }
      
      public function §`9§(param1:Boolean) : void
      {
         if(§2t§.§,!E§)
         {
            if(param1)
            {
               §2t§.§,!E§.start();
            }
            else
            {
               §2t§.§,!E§.stop();
               §2t§.§,!E§.color = 0;
            }
         }
      }
      
      public function §7T§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function §^9§() : §2!'§
      {
         return this.§&]§;
      }
      
      public function §^!0§(param1:§2!'§) : void
      {
         if(this.§&]§ != null)
         {
            this.§&]§.removeEventListeners();
         }
         this.§&]§ = param1;
         if(this.mReadyToRun)
         {
            this.§&]§.addEventListeners();
         }
      }
      
      public function §8!E§() : §3r§
      {
         return this.§-u§;
      }
      
      public function §''§(param1:§<6§, param2:Array, param3:Function) : void
      {
         this.§[W§ = param1;
         var _loc4_:int = this.§[W§.§-!4§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§[E§.§<+§(this.§[W§.§6U§(_loc5_));
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§-V§.addEventListener(Event.INIT,param3);
            this.§!4§.push(param3);
         }
         if(this.§4,§(param2))
         {
            this.§8!C§();
         }
      }
      
      private function §4,§(param1:Array) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.§[E§.§use§())
         {
            _loc2_ = this.§[E§.§!-§ / 1000;
            _loc3_ = this.§[E§.§7J§ / 1000;
            §?!L§.log("\n\nMain texture manager memory usage:\n   textures " + _loc2_ + " kilobytes\n   bitmaps " + _loc3_ + " kilobytes\n\n");
            this.initializeAnimations(param1);
            return true;
         }
         this.§7!=§ = param1.concat();
         return false;
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         this.§ 2§.initializeAnimations(param1);
      }
      
      private function §>h§(param1:Event) : void
      {
         this.§[E§.§+O§();
         if(this.§4!,§ && this.§4!,§.textureManager)
         {
            this.§4!,§.textureManager.§+O§();
         }
         if(this.§1-§ && this.§1-§.textureManager)
         {
            this.§1-§.textureManager.§+O§();
         }
         if(this.§7!=§)
         {
            this.§4,§(this.§7!=§);
            this.§7!=§ = null;
            this.§8!C§();
         }
         if(this.§&]§ != null && this.mReadyToRun)
         {
            this.§&]§.addEventListeners();
         }
         if(this.§?K§)
         {
            this.§?K§.§use§();
         }
         if(this.§!!D§)
         {
            if(this.§!!D§.textureManager)
            {
               this.§!!D§.textureManager.§+O§();
               this.§!!D§.§use§();
            }
         }
      }
      
      private function §8!C§() : void
      {
         this.§-V§.dispatchEvent(new Event(Event.INIT));
         this.§,!J§();
      }
      
      private function §,!J§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§!4§)
         {
            this.§-V§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§!4§ = [];
      }
      
      public function init(param1:§9?§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§3i§ = new §[O§(this,param1);
         this.§0P§ = this.initLevelCamera(param1);
         this.§5;§ = 0;
         this.§ 6§ = 0;
         this.§0<§ = 0;
         this.§'0§ = false;
         this.mReadyToRun = false;
         this.§!!+§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         §9!@§ = param1.theme;
         this.§`&§ = param1;
         this.§5[§ = this.§[!J§(param1.theme);
         this.§,8§ = this.§>5§(param1.theme);
         if(this.§5[§ && this.§,8§)
         {
            this.initialize(param1);
         }
         else
         {
            this.§5s§(param1.theme);
         }
         this.§+6§();
         §[o§.init();
      }
      
      protected function §+6§() : void
      {
         this.§-u§ = new §3r§(§`R§.§7S§);
      }
      
      protected function §[!J§(param1:String) : Boolean
      {
         if(this.§?K§)
         {
            return false;
         }
         return true;
      }
      
      protected function §>5§(param1:String) : Boolean
      {
         var _loc2_:§'T§ = null;
         if(this.§9m§)
         {
            _loc2_ = §==§.§]R§(param1);
            if(_loc2_)
            {
               if(_loc2_.§#k§ && !this.§9m§.§#6§(_loc2_.§#k§))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function §5s§(param1:String) : void
      {
         var _loc2_:§'T§ = null;
         if(this.§?K§ && !this.§[!J§(param1))
         {
            this.§?K§.removeEventListener(Event.COMPLETE,this.§"!L§);
            this.§?K§.removeEventListener(Event.CANCEL,this.§5#§);
            this.§?K§.addEventListener(Event.COMPLETE,this.§"!L§);
            this.§?K§.addEventListener(Event.CANCEL,this.§5#§);
            this.§?K§.§=!4§(param1);
         }
         if(this.§9m§ && !this.§>5§(param1))
         {
            this.§9m§.removeEventListener(Event.COMPLETE,this.§]0§);
            this.§9m§.removeEventListener(Event.CANCEL,this.§9!B§);
            this.§9m§.addEventListener(Event.COMPLETE,this.§]0§);
            this.§9m§.addEventListener(Event.CANCEL,this.§9!B§);
            _loc2_ = §==§.§]R§(param1);
            if(_loc2_)
            {
               this.§9m§.§=!4§(_loc2_.§#k§);
            }
         }
      }
      
      private function §"!L§(param1:Event) : void
      {
         this.§?K§.removeEventListener(Event.COMPLETE,this.§"!L§);
         this.§?K§.removeEventListener(Event.CANCEL,this.§5#§);
         this.§5[§ = true;
         if(this.§5[§ && this.§,8§)
         {
            this.initialize(this.§`&§);
         }
      }
      
      private function §5#§(param1:Event) : void
      {
         this.§?K§.removeEventListener(Event.COMPLETE,this.§"!L§);
         this.§?K§.removeEventListener(Event.CANCEL,this.§5#§);
         this.§!!+§ = true;
      }
      
      private function §]0§(param1:Event) : void
      {
         this.§?K§.removeEventListener(Event.COMPLETE,this.§]0§);
         this.§?K§.removeEventListener(Event.CANCEL,this.§9!B§);
         this.§,8§ = true;
         if(this.§5[§ && this.§,8§)
         {
            this.initialize(this.§`&§);
         }
      }
      
      private function §9!B§(param1:Event) : void
      {
         this.§?K§.removeEventListener(Event.COMPLETE,this.§]0§);
         this.§?K§.removeEventListener(Event.CANCEL,this.§9!B§);
         this.§,8§ = true;
         if(this.§5[§ && this.§,8§)
         {
            this.initialize(this.§`&§);
         }
      }
      
      public function get backgroundTextureManager() : §6!4§
      {
         return this.§[E§;
      }
      
      protected function initialize(param1:§9?§) : void
      {
         this.§+p§ = false;
         this.§0+§ = false;
         if(§2t§.§^!!§)
         {
            §2t§.§^!!§.speed = 1;
         }
         this.mLevelEngine = new §&M§(this);
         this.§>_§ = this.initLevelBackground(param1.theme,this.§3i§.§%!1§ / §%!<§,this.backgroundTextureManager,this.§0P§.§?+§());
         this.§>_§.§?m§(§[+§.§1!8§());
         this.§>g§ = this.initLevelObjectManager(param1);
         this.§;;§ = this.initLevelSlingshot(param1);
         this.§7G§ = this.initParticleManager(this.§ 2§,this.§[E§);
         this.§0P§.init();
         this.§^h§();
         this.§6u§();
         this.mReadyToRun = true;
         if(this.§&]§)
         {
            this.§&]§.addEventListeners();
         }
      }
      
      protected function §6u§() : void
      {
         if(this.§?2§)
         {
            this.§0Z§ = §3r§.initialize(this.§?2§);
            this.§0Z§.speed = 1;
            this.§0Z§.play();
            this.§29§ = -1000;
            this.§?2§ = null;
         }
      }
      
      public function §34§(param1:String) : void
      {
         this.§?2§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§0Z§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§0Z§)
         {
            if(param1)
            {
               this.§0Z§.speed = Math.min(this.§0Z§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§0Z§.speed = Math.max(this.§0Z§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§0Z§)
         {
            this.§0Z§.speed = 1;
         }
      }
      
      protected function initLevelObjectManager(param1:§9?§) : §#K§
      {
         return new §#K§(this,param1,new Sprite());
      }
      
      protected function initLevelCamera(param1:§9?§) : §-§
      {
         return new §-§(this,param1);
      }
      
      protected function initLevelBackground(param1:String, param2:Number, param3:§6!4§, param4:Number) : §1!>§
      {
         return new §1!>§(param1,param2,param3,param4);
      }
      
      protected function initLevelSlingshot(param1:§9?§) : §^H§
      {
         return new §^H§(this,param1,new Sprite());
      }
      
      protected function initParticleManager(param1:§=E§, param2:§6!4§) : §6!C§
      {
         return new §6!C§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§9?§ = this.§2J§();
         var _loc4_:§`y§;
         (_loc4_ = new §`y§()).left = 0;
         _loc4_.top = -§-§.§8F§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §-§.§8F§;
         _loc4_.right = _loc4_.left + §-§.§&t§;
         _loc4_.y = -13.929;
         _loc4_.x = §-§.§&t§;
         _loc4_.id = §-§.§1y§;
         _loc3_.§?"§(_loc4_);
         var _loc5_:§`y§;
         (_loc5_ = new §`y§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §-§.§&t§;
         _loc5_.bottom = _loc5_.top + §-§.§8F§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §-§.§&t§ / 2;
         _loc5_.id = §-§.§^Q§;
         _loc3_.§?"§(_loc5_);
         this.§%'§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§9!@§ != null)
         {
            _loc3_.theme = §9!@§;
         }
         this.init(_loc3_);
      }
      
      protected function §%'§(param1:§9?§, param2:Boolean) : void
      {
         if(param2)
         {
            this.§1]§(param1);
         }
      }
      
      protected function §2J§() : §9?§
      {
         var _loc1_:§9?§ = new §9?§();
         _loc1_.§?!§ = -12;
         return new §9?§();
      }
      
      protected function §<#§() : Number
      {
         this.§,T§ ^= this.§,T§ << 21;
         this.§,T§ ^= this.§,T§ >>> 35;
         this.§,T§ ^= this.§,T§ << 4;
         return this.§,T§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §1]§(param1:§9?§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§5!N§ = null;
         this.§,T§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§<#§() * 5;
               (_loc5_ = new §5!N§()).x = 30 + _loc3_ * 10 + this.§<#§() * 9;
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
                  _loc5_.angle = 45 - this.§<#§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§<#§() * 3 - _loc3_ * 8;
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
                  _loc5_.angle = this.§<#§() * 360;
               }
               param1.addObject(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      public function §^h§() : void
      {
         if(§1!>§.§[=§)
         {
            this.§>!H§(this.§>_§.§ U§,false);
         }
         this.§>!H§(this.§7G§.§#!I§(§6!C§.§ ;§),false);
         this.§>!H§(this.§7G§.§#!I§(§6!C§.§ l§),true);
         this.§>!H§(this.§7G§.§#!I§(§6!C§.PARTICLE_GROUP_BACKGROUND_EFFECTS),true);
         this.§>!H§(this.§>g§.§-a§,true);
         this.§>!H§(this.§;;§.sprite,true);
         this.§>!H§(this.§7G§.§#!I§(§6!C§.PARTICLE_GROUP_GAME_EFFECTS),true);
         this.§>!H§(this.§>_§.§in§,false);
         if(§1!>§.§[=§)
         {
            this.§>!H§(this.§>_§.§%J§,false);
         }
         this.§>!H§(this.§7G§.§#!I§(§6!C§.§#!L§),true);
      }
      
      protected function §>!H§(param1:Sprite, param2:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(param1);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         param1 /= §[+§.§;!7§;
         param2 /= §[+§.§;!7§;
         _loc3_.x = (param1 / §-§.§1A§ + this.§0P§.§7d§ - §-§.§#w§ / §-§.§1A§) * §%!<§;
         _loc3_.y = (param2 / §-§.§1A§ + this.§0P§.§5$§ - §-§.§-!I§ / §-§.§1A§) * §%!<§;
         return _loc3_;
      }
      
      public function §@D§(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / §%!<§ + §-§.§#w§ / §-§.§1A§ - this.§0P§.§7d§) * §-§.§1A§;
         _loc3_.y = (param2 / §%!<§ + §-§.§-!I§ / §-§.§1A§ - this.§0P§.§5$§) * §-§.§1A§;
         var _loc4_:Number = Math.max(§[+§.§;!7§,§[+§.§!M§);
         _loc3_.x *= _loc4_;
         _loc3_.y *= _loc4_;
         return _loc3_;
      }
      
      public function §?!"§(param1:String, param2:Number, param3:Number) : void
      {
         this.§>g§.addObject(param1,param2,param3);
      }
      
      public function §>!D§() : void
      {
         if(this.§,U§)
         {
            this.§,U§.visible = true;
            this.§,U§.alpha = 0;
         }
         this.§4D§ = 0;
      }
      
      public function § !C§() : void
      {
         this.§9`§ = new §2! §(§=Z§.§ -§,§=Z§.§ each§);
      }
      
      public function §`!E§() : void
      {
         this.§9`§ = null;
      }
      
      public function clearLevel() : void
      {
         if(this.§>_§)
         {
            this.§>_§.dispose();
            this.§>_§ = null;
         }
         if(this.§>g§)
         {
            this.§>g§.dispose();
            this.§>g§ = null;
            this.§7t§ = null;
         }
         if(this.mLevelEngine)
         {
            if(!this.mLevelEngine.§1<§)
            {
            }
            this.mLevelEngine.clear();
            this.mLevelEngine = null;
         }
         if(this.§3i§)
         {
            this.§3i§.clear();
            this.§3i§ = null;
         }
         if(this.§;;§)
         {
            this.§;;§.dispose();
            this.§;;§ = null;
         }
         if(this.§0P§)
         {
            this.§0P§.clear();
            this.§0P§ = null;
         }
         if(this.§7G§)
         {
            this.§7G§.dispose();
            this.§7G§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§5;§ = 0;
         this.§ 6§ = 0;
         this.mReadyToRun = false;
         this.§'0§ = false;
         this.§4D§ = §=Z§.§#T§;
         if(this.§^C§)
         {
            (this.§^C§ as §-9§).§2^§.x = 0;
            (this.§^C§ as §-9§).§2^§.y = 0;
         }
         if(this.§,U§)
         {
            this.§,U§.visible = false;
         }
         this.§0Z§ = null;
         this.§-u§ = null;
         if(this.§?K§)
         {
            this.§?K§.removeEventListener(Event.COMPLETE,this.§"!L§);
            this.§?K§.removeEventListener(Event.CANCEL,this.§5#§);
         }
         if(this.§9m§)
         {
            this.§9m§.removeEventListener(Event.COMPLETE,this.§]0§);
            this.§9m§.removeEventListener(Event.CANCEL,this.§9!B§);
         }
         this.§,!J§();
         if(§2t§.§,!E§)
         {
            §2t§.§,!E§.color = 0;
         }
         if(this.§&]§)
         {
            this.§&]§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver() : void
      {
      }
      
      public function §1#§() : String
      {
         if(this.§-u§)
         {
            return this.§-u§.toString();
         }
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         if(!this.mReadyToRun || !§2t§.§[!K§())
         {
            return 0;
         }
         if(this.§0Z§ && this.§0Z§.§?d§)
         {
            return this.§[N§(param1,param2,param3);
         }
         return this.§#8§(param1,true,param2,param3);
      }
      
      protected function §#8§(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         if(this.§+p§)
         {
            param1 *= 0.2;
            if(§2t§.§^!!§)
            {
               §2t§.§^!!§.speed = 0.2;
            }
         }
         var _loc5_:Number = 0;
         this.§ 6§ += param1;
         if(param3)
         {
            this.§5;§ += param1;
            _loc5_ = this.mLevelEngine.§-!7§(this.§5;§);
            this.§;;§.update(param1,param4);
            this.§5;§ = _loc5_;
         }
         else
         {
            this.§>g§.§3^§(param1);
            this.§5;§ = 0;
         }
         if(param2)
         {
            this.§`!#§(param1,_loc5_);
         }
         return param1;
      }
      
      private function §[N§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc5_:Number = NaN;
         var _loc4_:Number = §&M§.§>j§ * 1000;
         if(this.§0Z§)
         {
            param1 *= this.§0Z§.speed;
            _loc5_ = this.§ 6§ + param1;
            while(this.§ 6§ + _loc4_ < _loc5_)
            {
               if(this.§ 6§ + _loc4_ > this.§29§)
               {
                  this.§0Z§.step(this);
                  this.§29§ += _loc4_;
               }
               this.§#8§(_loc4_,false,param2,param3);
            }
            if(_loc5_ > this.§29§ + _loc4_)
            {
               this.§0Z§.step(this);
               this.§29§ += _loc4_;
            }
            if(this.§ 6§ < _loc5_)
            {
               this.§#8§(_loc5_ - this.§ 6§,true,param2,param3);
            }
            return param1;
         }
         return this.§#8§(_loc4_,true,param2,param3);
      }
      
      private function §`!#§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.§>_§.update(param1);
         this.§>g§.§!!L§(param1,param2);
         this.§%!K§();
         if(this.§4D§ < §=Z§.§#T§)
         {
            this.§4D§ += param1;
            _loc3_ = §=Z§.§#T§ / 2;
            _loc4_ = (-Math.abs(this.§4D§ - _loc3_) + _loc3_) * (§=Z§.§-x§ / _loc3_);
            if(this.§,U§)
            {
               this.§,U§.alpha = _loc4_;
            }
         }
         else if(this.§,U§)
         {
            this.§,U§.visible = false;
         }
         if(this.§9`§)
         {
            if(!this.§9`§.§!!5§(this.§0P§,param1))
            {
               this.§`!E§();
            }
         }
         this.§0P§.§;!"§(param1);
         this.mLevelEngine.§&G§();
         this.§7G§.update(param1);
      }
      
      public function §]y§(param1:Number) : void
      {
         this.objects.§3^§(param1 * 1000);
         this.objects.§!p§(param1 * 1000);
         this.§,Z§();
      }
      
      public function §%!K§() : void
      {
         var _loc1_:§]f§ = null;
         if(this.§ 6§ > this.§0<§ + 1000 / 30)
         {
            if(this.§8d§ != null)
            {
               for each(_loc1_ in this.§8d§)
               {
                  _loc1_.addTrail();
               }
            }
            this.§0<§ = this.§ 6§;
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§]f§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.§>g§.isPigsAlive(true))
            {
               _loc2_ = this.§>g§.§=$§(true);
               if(_loc2_)
               {
                  _loc2_.§2W§.mTryToScream = §=0§.§<`§;
                  this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§>g§.§9$§());
               }
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            if(this.§>g§.isPigsAlive(true))
            {
               _loc2_ = this.§>g§.§=$§(true);
               if(_loc2_)
               {
                  _loc2_.§2W§.mTryToBlink = §=0§.§"-§;
                  this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§>g§.§9$§());
               }
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §@!<§.§=8§;
         }
         §[o§.addScore(param1,param2);
         this.§&]§.addScore(param1);
         if(param3 && param1 > 0 && !this.§0+§)
         {
            this.§%[§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §%[§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §@!<§.§-3§;
         }
         this.§7G§.§-!$§(§@!<§.§6]§,§6!C§.§#!L§,§@!<§.§#!§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §98§(param1:§]f§) : void
      {
         if(this.§8d§ == null)
         {
            this.§8d§ = new Array();
         }
         this.§8d§.push(param1);
      }
      
      public function §-!?§() : void
      {
         this.§;;§.§-!?§();
         this.§>g§.§6-§();
         this.§0+§ = true;
      }
      
      public function §5i§(param1:§]f§) : void
      {
         this.§7G§.§4!>§(§6!C§.§ ;§);
         if(this.§8d§.indexOf(param1) >= 0)
         {
            this.§8d§.splice(this.§8d§.indexOf(param1),1);
         }
         if(this.§8d§.length == 0)
         {
            this.§8d§ = null;
         }
      }
      
      public function §%5§(param1:§?!M§, param2:Number, param3:Number) : void
      {
         this.§7t§ = this.§>g§.addObject(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
         var _loc4_:Number = param1.name.toUpperCase() == "BIRD_GREEN" ? Number(§^H§.§=^§) : Number(§^H§.§6<§);
         if(param1.§3T§ > 1)
         {
            this.§7t§.§throw§(param1.§3T§);
            this.§7t§.§2W§.§package§();
         }
         if(param1.§1!3§ != 0)
         {
            _loc4_ = param1.§1!3§;
         }
         var _loc5_:Number = -_loc4_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc6_:Number = _loc4_ * param2 * Math.sin(param3 / (180 / Math.PI));
         this.§7t§.§&+§(new b2Vec2(_loc5_,_loc6_),false,true);
         this.camera.§[b§(§-§.§#7§);
         if(this.§-u§)
         {
            this.§-u§.§%5§(this.mLevelEngine.§!c§,param1.x,param1.y,param2,param3);
         }
      }
      
      public function activatePowerup() : void
      {
         this.§'0§ = true;
      }
      
      private function §,Z§() : void
      {
         if(!this.§'0§)
         {
            return;
         }
         this.§'0§ = false;
         if(this.activeObject is §-!1§ && !(this.activeObject as §-!1§).§8!2§)
         {
            if(this.activeObject.activateSpecialPower(this.§=w§))
            {
               this.§2?§ = true;
            }
         }
         else
         {
            this.§>g§.§^!M§();
         }
         if(this.§-u§)
         {
            this.§-u§.§3A§(this.mLevelEngine.§!c§);
         }
      }
      
      public function §^r§() : void
      {
         this.§>g§.§^r§();
      }
      
      public function §=h§() : void
      {
         this.§>g§.§7!9§();
      }
      
      public function §@c§() : §9?§
      {
         var _loc1_:§9?§ = new §9?§();
         _loc1_.§ get§ = this.§`&§.§ get§;
         _loc1_.§[p§ = this.§`&§.§[p§;
         this.§0P§.§-!D§(_loc1_);
         this.§>g§.§?o§(_loc1_);
         this.§;;§.§,!H§(_loc1_);
         _loc1_.theme = this.§>_§.§ Z§();
         return _loc1_;
      }
      
      public function §?^§() : int
      {
         return this.§`&§.§[p§;
      }
      
      public function §!@§() : int
      {
         return this.§`&§.§ get§;
      }
      
      public function §@!§(param1:int) : void
      {
         this.§`&§.§[p§ = param1;
      }
      
      public function §&[§(param1:int) : void
      {
         this.§`&§.§ get§ = param1;
      }
      
      public function §!6§(param1:Number, param2:Number) : void
      {
         if(this.§#!8§)
         {
            this.§#!8§.§[@§(param1,param2);
         }
         if(this.§0P§)
         {
            this.§0P§.§;!"§(0);
         }
      }
      
      public function get §else §() : §9?§
      {
         return this.§`&§;
      }
      
      public function get §=w§() : §#K§
      {
         return this.§>g§;
      }
      
      protected function get starling() : §2t§
      {
         return this.§&1§;
      }
      
      public function get §5!$§() : int
      {
         return §for §;
      }
   }
}
