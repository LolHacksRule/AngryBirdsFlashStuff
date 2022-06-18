package §9s§
{
   import § !'§.§>v§;
   import § q§.§"w§;
   import §!!,§.§0!E§;
   import §!!,§.§?q§;
   import §!!,§.§^!0§;
   import §!!,§.§`Q§;
   import §!D§.§5O§;
   import §!D§.§7D§;
   import §#!@§.DisplayObject;
   import §#!@§.Sprite;
   import §2u§.§1@§;
   import §3V§.§9p§;
   import §3u§.§<r§;
   import §5Y§.§+!C§;
   import §5Y§.§=V§;
   import §6Z§.§"!;§;
   import §6Z§.§%i§;
   import §6Z§.§'?§;
   import §6Z§.§9!E§;
   import §6h§.§[!4§;
   import §7!§.§,L§;
   import §<1§.§=!H§;
   import §@!+§.§+_§;
   import §@!;§.§!!=§;
   import §[v§.§&U§;
   import §[v§.§0&§;
   import §[v§.§7e§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §^9§
   {
      
      private static const §6D§:int = 20;
      
      public static const §@o§:Number = §[!4§.§71§;
      
      public static const §&!B§:Number = §[!4§.§=6§;
      
      public static const §5T§:Number = 1 / 20;
      
      public static const §@!D§:Number = §[!4§.§=6§ * §5T§;
      
      public static const §"2§:Number = §@o§ * §5T§;
      
      public static const §2!-§:§9p§ = new §9p§(13 - 3);
      
      public static var §,^§:Number = 1;
      
      protected static var §&!6§:String = §"!;§.§9t§;
       
      
      protected var §6!8§:§^!0§;
      
      private var §=!5§:§`Q§;
      
      private var §<$§:Array = null;
      
      protected var §3^§:§1@§;
      
      public var mLevelEngine:§=i§;
      
      protected var §!O§:§;0§;
      
      protected var §1+§:§+_§;
      
      protected var §[^§:§[!?§;
      
      protected var §0!-§:§5O§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §17§:Boolean = false;
      
      protected var §6_§:Boolean = false;
      
      protected var §57§:Boolean = false;
      
      public var §8>§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §,!O§:Number;
      
      public var §#S§:Number;
      
      private var §5!,§:Number;
      
      public var §=L§:§9!E§;
      
      public var §;m§:Boolean = false;
      
      private var §``§:§54§;
      
      private var §`!'§:Sprite;
      
      protected var §9>§:§"!;§;
      
      protected var §8!F§:§<r§ = null;
      
      private var §'3§:EventDispatcher;
      
      private var §!A§:Array;
      
      private var §+K§:Array;
      
      protected var §]!6§:§,L§;
      
      private var §>N§:§=!H§;
      
      protected var §4d§:§0&§;
      
      protected var §>&§:§7e§;
      
      private var §5!8§:§&U§;
      
      private var §29§:§&U§;
      
      private var §@T§:§&U§;
      
      private var §`!"§:Stage;
      
      private var §@!6§:§'! §;
      
      protected var §9!G§:§"w§;
      
      protected var §?V§:§"w§;
      
      protected var §+k§:Number = 0.0;
      
      protected var §@!%§:String;
      
      private var §9o§:Boolean;
      
      protected var § !5§:Boolean;
      
      protected var §,!G§:uint = 1.417339207E9;
      
      public var §6u§:Boolean;
      
      public function §^9§(param1:Stage)
      {
         this.§+K§ = [];
         super();
         this.§'3§ = new EventDispatcher();
         this.§=L§ = new §9!E§();
         this.§`!"§ = param1;
         this.§4d§ = §0&§.§5+§;
         this.§>&§ = this.initAnimationManager(this.§4d§);
         this.§5!8§ = this.initThemeGraphicsManager();
         this.§29§ = this.§3!$§();
         this.§@T§ = this.each();
         var _loc2_:Stage3D = param1.stage3Ds[0];
         this.§]!6§ = new §,L§(§54§,param1,new Rectangle(0,0,§[!4§.§71§,§[!4§.§=6§),_loc2_);
         §[!4§.§@b§.addEventListener(Event.ENTER_FRAME,this.§]!6§.onEnterFrame);
         _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§6l§,false,0,true);
         this.§]!6§.§&O§ = false;
         this.§]!6§.enableErrorChecking = false;
         this.§]!6§.§<!3§ = 2;
         this.§]!6§.§else§();
      }
      
      public static function §[;§(param1:§`Q§, param2:§`Q§) : Number
      {
         var _loc3_:Number = param1.§ s§ - param2.§ s§;
         var _loc4_:Number = param1.§'X§ - param2.§'X§;
         return §=!4§(_loc3_,_loc4_);
      }
      
      public static function §=!4§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         if(!this.§`!'§ && this.§13§)
         {
            this.§`!'§ = this.§``§.§0!4§;
         }
         return this.§`!'§;
      }
      
      public function get §13§() : Sprite
      {
         if(!this.§``§)
         {
            this.§``§ = this.§]!6§.§`!>§ as §54§;
            this.§``§.§2@§ = false;
         }
         return this.§``§;
      }
      
      private function get §"x§() : DisplayObject
      {
         if(this.§13§)
         {
            return (this.§13§ as §54§).§"x§;
         }
         return null;
      }
      
      public function get §%F§() : §7e§
      {
         return this.§>&§;
      }
      
      public function get textureManager() : §0&§
      {
         return this.§4d§;
      }
      
      public function get camera() : §+_§
      {
         return this.§1+§;
      }
      
      public function get objects() : §^!0§
      {
         return this.§6!8§;
      }
      
      public function get particles() : §5O§
      {
         return this.§0!-§;
      }
      
      public function get background() : §1@§
      {
         return this.§3^§;
      }
      
      public function get slingshot() : §[!?§
      {
         return this.§[^§;
      }
      
      public function get activeObject() : §`Q§
      {
         return this.§=!5§;
      }
      
      public function get §5!=§() : §;0§
      {
         return this.§!O§;
      }
      
      public function get stage() : Stage
      {
         return this.§`!"§;
      }
      
      public function get §5!N§() : §&U§
      {
         return this.§@T§;
      }
      
      protected function get §"'§() : §&U§
      {
         return this.§5!8§;
      }
      
      public function set activeObject(param1:§`Q§) : void
      {
         this.§=!5§ = param1;
      }
      
      public function set §7!<§(param1:Boolean) : void
      {
         this.§ !5§ = param1;
      }
      
      public function clear() : void
      {
         if(this.§>N§)
         {
            this.§>N§.dispose();
         }
         if(this.§4d§)
         {
            this.§4d§.dispose();
         }
         if(this.§5!8§ && this.§5!8§.textureManager)
         {
            this.§5!8§.textureManager.dispose();
         }
         if(this.§@T§ && this.§@T§.textureManager)
         {
            this.§@T§.textureManager.dispose();
         }
         if(this.§]!6§)
         {
            this.§]!6§.dispose();
         }
      }
      
      protected function initThemeGraphicsManager() : §&U§
      {
         return null;
      }
      
      protected function §3!$§() : §&U§
      {
         return null;
      }
      
      protected function each() : §&U§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§0&§) : §7e§
      {
         return new §7e§(param1);
      }
      
      public function §3!;§(param1:Boolean) : void
      {
         if(§,L§.§3v§)
         {
            if(param1)
            {
               §,L§.§3v§.start();
            }
            else
            {
               §,L§.§3v§.stop();
               §,L§.§3v§.color = 0;
            }
         }
      }
      
      public function §=!G§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function §;!C§() : §<r§
      {
         return this.§8!F§;
      }
      
      public function §>L§(param1:§<r§) : void
      {
         if(this.§8!F§ != null)
         {
            this.§8!F§.removeEventListeners();
         }
         this.§8!F§ = param1;
         if(this.mReadyToRun)
         {
            this.§8!F§.addEventListeners();
         }
      }
      
      public function §]!O§() : §"w§
      {
         return this.§9!G§;
      }
      
      public function §+Q§(param1:§=!H§, param2:Array, param3:Function) : void
      {
         this.§>N§ = param1;
         var _loc4_:int = this.§>N§.§;!%§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§4d§.§!J§(this.§>N§.§>O§(_loc5_));
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§'3§.addEventListener(Event.INIT,param3);
            this.§+K§.push(param3);
         }
         if(this.§^?§(param2))
         {
            this.§3;§();
         }
      }
      
      private function §^?§(param1:Array) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.§4d§.§;! §())
         {
            _loc2_ = this.§4d§.§6!<§ / 1000;
            _loc3_ = this.§4d§.§5j§ / 1000;
            §!!=§.log("\n\nMain texture manager memory usage:\n   textures " + _loc2_ + " kilobytes\n   bitmaps " + _loc3_ + " kilobytes\n\n");
            this.initializeAnimations(param1);
            return true;
         }
         this.§!A§ = param1.concat();
         return false;
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         this.§>&§.initializeAnimations(param1);
      }
      
      private function §6l§(param1:Event) : void
      {
         this.§4d§.§`r§();
         if(this.§"'§ && this.§"'§.textureManager)
         {
            this.§"'§.textureManager.§`r§();
         }
         if(this.§5!N§ && this.§5!N§.textureManager)
         {
            this.§5!N§.textureManager.§`r§();
         }
         if(this.§!A§)
         {
            this.§^?§(this.§!A§);
            this.§!A§ = null;
            this.§3;§();
         }
         if(this.§8!F§ != null && this.mReadyToRun)
         {
            this.§8!F§.addEventListeners();
         }
         if(this.§5!8§)
         {
            this.§5!8§.§;! §();
         }
         if(this.§@T§)
         {
            if(this.§@T§.textureManager)
            {
               this.§@T§.textureManager.§`r§();
               this.§@T§.§;! §();
            }
         }
      }
      
      private function §3;§() : void
      {
         this.§'3§.dispatchEvent(new Event(Event.INIT));
         this.§9[§();
      }
      
      private function §9[§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§+K§)
         {
            this.§'3§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§+K§ = [];
      }
      
      public function init(param1:§"!;§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§!O§ = new §;0§(this,param1);
         this.§1+§ = this.initLevelCamera(param1);
         this.§,!O§ = 0;
         this.§#S§ = 0;
         this.§5!,§ = 0;
         this.§9o§ = false;
         this.mReadyToRun = false;
         this.§17§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         §&!6§ = param1.theme;
         this.§9>§ = param1;
         this.§6_§ = this.§7U§(param1.theme);
         this.§57§ = this.§1u§(param1.theme);
         if(this.§6_§ && this.§57§)
         {
            this.initialize(param1);
         }
         else
         {
            this.§=! §(param1.theme);
         }
         this.§0z§();
         §%!L§.init();
      }
      
      protected function §0z§() : void
      {
         this.§9!G§ = new §"w§(§'?§.§"t§);
      }
      
      protected function §7U§(param1:String) : Boolean
      {
         if(this.§5!8§)
         {
            return false;
         }
         return true;
      }
      
      protected function §1u§(param1:String) : Boolean
      {
         var _loc2_:§+!C§ = null;
         if(this.§29§)
         {
            _loc2_ = §=V§.§59§(param1);
            if(_loc2_)
            {
               if(_loc2_.§!6§ && !this.§29§.§,!0§(_loc2_.§!6§))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function §=! §(param1:String) : void
      {
         var _loc2_:§+!C§ = null;
         if(this.§5!8§ && !this.§7U§(param1))
         {
            this.§5!8§.removeEventListener(Event.COMPLETE,this.§98§);
            this.§5!8§.removeEventListener(Event.CANCEL,this.§2!J§);
            this.§5!8§.addEventListener(Event.COMPLETE,this.§98§);
            this.§5!8§.addEventListener(Event.CANCEL,this.§2!J§);
            this.§5!8§.§,l§(param1);
         }
         if(this.§29§ && !this.§1u§(param1))
         {
            this.§29§.removeEventListener(Event.COMPLETE,this.§5!M§);
            this.§29§.removeEventListener(Event.CANCEL,this.§for §);
            this.§29§.addEventListener(Event.COMPLETE,this.§5!M§);
            this.§29§.addEventListener(Event.CANCEL,this.§for §);
            _loc2_ = §=V§.§59§(param1);
            if(_loc2_)
            {
               this.§29§.§,l§(_loc2_.§!6§);
            }
         }
      }
      
      private function §98§(param1:Event) : void
      {
         this.§5!8§.removeEventListener(Event.COMPLETE,this.§98§);
         this.§5!8§.removeEventListener(Event.CANCEL,this.§2!J§);
         this.§6_§ = true;
         if(this.§6_§ && this.§57§)
         {
            this.initialize(this.§9>§);
         }
      }
      
      private function §2!J§(param1:Event) : void
      {
         this.§5!8§.removeEventListener(Event.COMPLETE,this.§98§);
         this.§5!8§.removeEventListener(Event.CANCEL,this.§2!J§);
         this.§17§ = true;
      }
      
      private function §5!M§(param1:Event) : void
      {
         this.§5!8§.removeEventListener(Event.COMPLETE,this.§5!M§);
         this.§5!8§.removeEventListener(Event.CANCEL,this.§for §);
         this.§57§ = true;
         if(this.§6_§ && this.§57§)
         {
            this.initialize(this.§9>§);
         }
      }
      
      private function §for §(param1:Event) : void
      {
         this.§5!8§.removeEventListener(Event.COMPLETE,this.§5!M§);
         this.§5!8§.removeEventListener(Event.CANCEL,this.§for §);
         this.§57§ = true;
         if(this.§6_§ && this.§57§)
         {
            this.initialize(this.§9>§);
         }
      }
      
      public function get backgroundTextureManager() : §0&§
      {
         return this.§4d§;
      }
      
      protected function initialize(param1:§"!;§) : void
      {
         this.§ !5§ = false;
         this.§6u§ = false;
         if(§,L§.§5I§)
         {
            §,L§.§5I§.speed = 1;
         }
         this.mLevelEngine = new §=i§(this);
         this.§3^§ = this.initLevelBackground(param1.theme,this.§!O§.§]!7§ / §5T§,this.backgroundTextureManager,this.§1+§.§6k§());
         this.§3^§.§=!F§(§[!4§.§-u§());
         this.§6!8§ = this.initLevelObjectManager(param1);
         this.§[^§ = this.initLevelSlingshot(param1);
         this.§0!-§ = this.initParticleManager(this.§>&§,this.§4d§);
         this.§1+§.init();
         this.§[$§();
         this.§"!+§();
         this.mReadyToRun = true;
         if(this.§8!F§)
         {
            this.§8!F§.addEventListeners();
         }
      }
      
      protected function §"!+§() : void
      {
         if(this.§@!%§)
         {
            this.§?V§ = §"w§.initialize(this.§@!%§);
            this.§?V§.speed = 1;
            this.§?V§.play();
            this.§+k§ = -1000;
            this.§@!%§ = null;
         }
      }
      
      public function §+a§(param1:String) : void
      {
         this.§@!%§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§?V§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§?V§)
         {
            if(param1)
            {
               this.§?V§.speed = Math.min(this.§?V§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§?V§.speed = Math.max(this.§?V§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§?V§)
         {
            this.§?V§.speed = 1;
         }
      }
      
      protected function initLevelObjectManager(param1:§"!;§) : §^!0§
      {
         return new §^!0§(this,param1,new Sprite());
      }
      
      protected function initLevelCamera(param1:§"!;§) : §+_§
      {
         return new §+_§(this,param1);
      }
      
      protected function initLevelBackground(param1:String, param2:Number, param3:§0&§, param4:Number) : §1@§
      {
         return new §1@§(param1,param2,param3,param4);
      }
      
      protected function initLevelSlingshot(param1:§"!;§) : §[!?§
      {
         return new §[!?§(this,param1,new Sprite());
      }
      
      protected function initParticleManager(param1:§7e§, param2:§0&§) : §5O§
      {
         return new §5O§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§"!;§ = this.§8W§();
         var _loc4_:§%i§;
         (_loc4_ = new §%i§()).left = 0;
         _loc4_.top = -§+_§.§-!0§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §+_§.§-!0§;
         _loc4_.right = _loc4_.left + §+_§.§+!%§;
         _loc4_.y = -13.929;
         _loc4_.x = §+_§.§+!%§;
         _loc4_.id = §+_§.§&6§;
         _loc3_.§^B§(_loc4_);
         var _loc5_:§%i§;
         (_loc5_ = new §%i§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §+_§.§+!%§;
         _loc5_.bottom = _loc5_.top + §+_§.§-!0§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §+_§.§+!%§ / 2;
         _loc5_.id = §+_§.§1?§;
         _loc3_.§^B§(_loc5_);
         this.§5_§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§&!6§ != null)
         {
            _loc3_.theme = §&!6§;
         }
         this.init(_loc3_);
      }
      
      protected function §5_§(param1:§"!;§, param2:Boolean) : void
      {
         if(param2)
         {
            this.§>8§(param1);
         }
      }
      
      protected function §8W§() : §"!;§
      {
         var _loc1_:§"!;§ = new §"!;§();
         _loc1_.§#&§ = -12;
         return new §"!;§();
      }
      
      protected function § J§() : Number
      {
         this.§,!G§ ^= this.§,!G§ << 21;
         this.§,!G§ ^= this.§,!G§ >>> 35;
         this.§,!G§ ^= this.§,!G§ << 4;
         return this.§,!G§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §>8§(param1:§"!;§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§>v§ = null;
         this.§,!G§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§ J§() * 5;
               (_loc5_ = new §>v§()).x = 30 + _loc3_ * 10 + this.§ J§() * 9;
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
                  _loc5_.angle = 45 - this.§ J§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§ J§() * 3 - _loc3_ * 8;
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
                  _loc5_.angle = this.§ J§() * 360;
               }
               param1.addObject(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      public function §[$§() : void
      {
         if(§1@§.§%@§)
         {
            this.§,V§(this.§3^§.§7,§,false);
         }
         this.§,V§(this.§0!-§.§'!K§(§5O§.§3J§),false);
         this.§,V§(this.§0!-§.§'!K§(§5O§.§#!K§),true);
         this.§,V§(this.§0!-§.§'!K§(§5O§.PARTICLE_GROUP_BACKGROUND_EFFECTS),true);
         this.§,V§(this.§6!8§.§,_§,true);
         this.§,V§(this.§[^§.sprite,true);
         this.§,V§(this.§0!-§.§'!K§(§5O§.PARTICLE_GROUP_GAME_EFFECTS),true);
         this.§,V§(this.§3^§.§-!4§,false);
         if(§1@§.§%@§)
         {
            this.§,V§(this.§3^§.§]!D§,false);
         }
         this.§,V§(this.§0!-§.§'!K§(§5O§.§?3§),true);
      }
      
      protected function §,V§(param1:Sprite, param2:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(param1);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         param1 /= §[!4§.§4p§;
         param2 /= §[!4§.§4p§;
         _loc3_.x = (param1 / §+_§.§=]§ + this.§1+§.§-!B§ - §+_§.§-!%§ / §+_§.§=]§) * §5T§;
         _loc3_.y = (param2 / §+_§.§=]§ + this.§1+§.§%!0§ - §+_§.§<!K§ / §+_§.§=]§) * §5T§;
         return _loc3_;
      }
      
      public function §"!6§(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / §5T§ + §+_§.§-!%§ / §+_§.§=]§ - this.§1+§.§-!B§) * §+_§.§=]§;
         _loc3_.y = (param2 / §5T§ + §+_§.§<!K§ / §+_§.§=]§ - this.§1+§.§%!0§) * §+_§.§=]§;
         var _loc4_:Number = Math.max(§[!4§.§4p§,§[!4§.§<^§);
         _loc3_.x *= _loc4_;
         _loc3_.y *= _loc4_;
         return _loc3_;
      }
      
      public function §]U§(param1:String, param2:Number, param3:Number) : void
      {
         this.§6!8§.addObject(param1,param2,param3);
      }
      
      public function §#!J§() : void
      {
         if(this.§"x§)
         {
            this.§"x§.visible = true;
            this.§"x§.alpha = 0;
         }
         this.§8>§ = 0;
      }
      
      public function §[]§() : void
      {
         this.§@!6§ = new §'! §(§^u§.§@F§,§^u§.§switch§);
      }
      
      public function §;[§() : void
      {
         this.§@!6§ = null;
      }
      
      public function clearLevel() : void
      {
         if(this.§3^§)
         {
            this.§3^§.dispose();
            this.§3^§ = null;
         }
         if(this.§6!8§)
         {
            this.§6!8§.dispose();
            this.§6!8§ = null;
            this.§=!5§ = null;
         }
         if(this.mLevelEngine)
         {
            if(!this.mLevelEngine.§case§)
            {
            }
            this.mLevelEngine.clear();
            this.mLevelEngine = null;
         }
         if(this.§!O§)
         {
            this.§!O§.clear();
            this.§!O§ = null;
         }
         if(this.§[^§)
         {
            this.§[^§.dispose();
            this.§[^§ = null;
         }
         if(this.§1+§)
         {
            this.§1+§.clear();
            this.§1+§ = null;
         }
         if(this.§0!-§)
         {
            this.§0!-§.dispose();
            this.§0!-§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§,!O§ = 0;
         this.§#S§ = 0;
         this.mReadyToRun = false;
         this.§9o§ = false;
         this.§8>§ = §^u§.§#f§;
         if(this.§13§)
         {
            (this.§13§ as §54§).§7C§.x = 0;
            (this.§13§ as §54§).§7C§.y = 0;
         }
         if(this.§"x§)
         {
            this.§"x§.visible = false;
         }
         this.§?V§ = null;
         this.§9!G§ = null;
         if(this.§5!8§)
         {
            this.§5!8§.removeEventListener(Event.COMPLETE,this.§98§);
            this.§5!8§.removeEventListener(Event.CANCEL,this.§2!J§);
         }
         if(this.§29§)
         {
            this.§29§.removeEventListener(Event.COMPLETE,this.§5!M§);
            this.§29§.removeEventListener(Event.CANCEL,this.§for §);
         }
         this.§9[§();
         if(§,L§.§3v§)
         {
            §,L§.§3v§.color = 0;
         }
         if(this.§8!F§)
         {
            this.§8!F§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver() : void
      {
      }
      
      public function § !§() : String
      {
         if(this.§9!G§)
         {
            return this.§9!G§.toString();
         }
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         if(!this.mReadyToRun || !§,L§.§,"§())
         {
            return 0;
         }
         if(this.§?V§ && this.§?V§.§50§)
         {
            return this.§;a§(param1,param2,param3);
         }
         return this.§-Z§(param1,true,param2,param3);
      }
      
      protected function §-Z§(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         if(this.§ !5§)
         {
            param1 *= 0.2;
            if(§,L§.§5I§)
            {
               §,L§.§5I§.speed = 0.2;
            }
         }
         var _loc5_:Number = 0;
         this.§#S§ += param1;
         if(param3)
         {
            this.§,!O§ += param1;
            _loc5_ = this.mLevelEngine.§'F§(this.§,!O§);
            this.§[^§.update(param1,param4);
            this.§,!O§ = _loc5_;
         }
         else
         {
            this.§6!8§.§"!5§(param1);
            this.§,!O§ = 0;
         }
         if(param2)
         {
            this.§]#§(param1,_loc5_);
         }
         return param1;
      }
      
      private function §;a§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc5_:Number = NaN;
         var _loc4_:Number = §=i§.§]1§ * 1000;
         if(this.§?V§)
         {
            param1 *= this.§?V§.speed;
            _loc5_ = this.§#S§ + param1;
            while(this.§#S§ + _loc4_ < _loc5_)
            {
               if(this.§#S§ + _loc4_ > this.§+k§)
               {
                  this.§?V§.step(this);
                  this.§+k§ += _loc4_;
               }
               this.§-Z§(_loc4_,false,param2,param3);
            }
            if(_loc5_ > this.§+k§ + _loc4_)
            {
               this.§?V§.step(this);
               this.§+k§ += _loc4_;
            }
            if(this.§#S§ < _loc5_)
            {
               this.§-Z§(_loc5_ - this.§#S§,true,param2,param3);
            }
            return param1;
         }
         return this.§-Z§(_loc4_,true,param2,param3);
      }
      
      private function §]#§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.§3^§.update(param1);
         this.§6!8§.§2K§(param1,param2);
         this.§9^§();
         if(this.§8>§ < §^u§.§#f§)
         {
            this.§8>§ += param1;
            _loc3_ = §^u§.§#f§ / 2;
            _loc4_ = (-Math.abs(this.§8>§ - _loc3_) + _loc3_) * (§^u§.§8!B§ / _loc3_);
            if(this.§"x§)
            {
               this.§"x§.alpha = _loc4_;
            }
         }
         else if(this.§"x§)
         {
            this.§"x§.visible = false;
         }
         if(this.§@!6§)
         {
            if(!this.§@!6§.§^0§(this.§1+§,param1))
            {
               this.§;[§();
            }
         }
         this.§1+§.§>Y§(param1);
         this.mLevelEngine.§ !7§();
         this.§0!-§.update(param1);
      }
      
      public function §3!A§(param1:Number) : void
      {
         this.objects.§"!5§(param1 * 1000);
         this.objects.§]E§(param1 * 1000);
         this.§2i§();
      }
      
      public function §9^§() : void
      {
         var _loc1_:§`Q§ = null;
         if(this.§#S§ > this.§5!,§ + 1000 / 30)
         {
            if(this.§<$§ != null)
            {
               for each(_loc1_ in this.§<$§)
               {
                  _loc1_.addTrail();
               }
            }
            this.§5!,§ = this.§#S§;
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§`Q§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.§6!8§.isPigsAlive(true))
            {
               _loc2_ = this.§6!8§.§<!!§(true);
               if(_loc2_)
               {
                  _loc2_.§!t§.mTryToScream = §?q§.§26§;
                  this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§6!8§.§[!-§());
               }
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            if(this.§6!8§.isPigsAlive(true))
            {
               _loc2_ = this.§6!8§.§<!!§(true);
               if(_loc2_)
               {
                  _loc2_.§!t§.mTryToBlink = §?q§.§"!B§;
                  this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§6!8§.§[!-§());
               }
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §7D§.§ G§;
         }
         §%!L§.addScore(param1,param2);
         this.§8!F§.addScore(param1);
         if(param3 && param1 > 0 && !this.§6u§)
         {
            this.§6!0§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §6!0§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §7D§.§8z§;
         }
         this.§0!-§.§3S§(§7D§.§?a§,§5O§.§?3§,§7D§.§4x§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §5!§(param1:§`Q§) : void
      {
         if(this.§<$§ == null)
         {
            this.§<$§ = new Array();
         }
         this.§<$§.push(param1);
      }
      
      public function §;R§() : void
      {
         this.§[^§.§;R§();
         this.§6!8§.§;P§();
         this.§6u§ = true;
      }
      
      public function §-$§(param1:§`Q§) : void
      {
         this.§0!-§.§1,§(§5O§.§3J§);
         if(this.§<$§.indexOf(param1) >= 0)
         {
            this.§<$§.splice(this.§<$§.indexOf(param1),1);
         }
         if(this.§<$§.length == 0)
         {
            this.§<$§ = null;
         }
      }
      
      public function §5,§(param1:§1!6§, param2:Number, param3:Number) : void
      {
         this.§=!5§ = this.§6!8§.addObject(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
         var _loc4_:Number = param1.name.toUpperCase() == "BIRD_GREEN" ? Number(§[!?§.§-i§) : Number(§[!?§.§1!4§);
         if(param1.§^!%§ > 1)
         {
            this.§=!5§.§[!L§(param1.§^!%§);
            this.§=!5§.§!t§.§[e§();
         }
         if(param1.§48§ != 0)
         {
            _loc4_ = param1.§48§;
         }
         var _loc5_:Number = -_loc4_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc6_:Number = _loc4_ * param2 * Math.sin(param3 / (180 / Math.PI));
         this.§=!5§.§&0§(new b2Vec2(_loc5_,_loc6_),false,true);
         this.camera.§@W§(§+_§.§&!D§);
         if(this.§9!G§)
         {
            this.§9!G§.§5,§(this.mLevelEngine.§82§,param1.x,param1.y,param2,param3);
         }
      }
      
      public function activatePowerup() : void
      {
         this.§9o§ = true;
      }
      
      private function §2i§() : void
      {
         if(!this.§9o§)
         {
            return;
         }
         this.§9o§ = false;
         if(this.activeObject is §0!E§ && !(this.activeObject as §0!E§).§-!A§)
         {
            if(this.activeObject.activateSpecialPower(this.§;s§))
            {
               this.§;m§ = true;
            }
         }
         else
         {
            this.§6!8§.§3d§();
         }
         if(this.§9!G§)
         {
            this.§9!G§.§0Y§(this.mLevelEngine.§82§);
         }
      }
      
      public function §%m§() : void
      {
         this.§6!8§.§%m§();
      }
      
      public function §%#§() : void
      {
         this.§6!8§.§,[§();
      }
      
      public function §;p§() : §"!;§
      {
         var _loc1_:§"!;§ = new §"!;§();
         _loc1_.§%!=§ = this.§9>§.§%!=§;
         _loc1_.§]C§ = this.§9>§.§]C§;
         this.§1+§.§^w§(_loc1_);
         this.§6!8§.§";§(_loc1_);
         this.§[^§.§;^§(_loc1_);
         _loc1_.theme = this.§3^§.§^!3§();
         return _loc1_;
      }
      
      public function §`!,§() : int
      {
         return this.§9>§.§]C§;
      }
      
      public function §"!J§() : int
      {
         return this.§9>§.§%!=§;
      }
      
      public function §#!B§(param1:int) : void
      {
         this.§9>§.§]C§ = param1;
      }
      
      public function §"M§(param1:int) : void
      {
         this.§9>§.§%!=§ = param1;
      }
      
      public function §true§(param1:Number, param2:Number) : void
      {
         if(this.§``§)
         {
            this.§``§.§>^§(param1,param2);
         }
         if(this.§1+§)
         {
            this.§1+§.§>Y§(0);
         }
      }
      
      public function get §`]§() : §"!;§
      {
         return this.§9>§;
      }
      
      public function get §;s§() : §^!0§
      {
         return this.§6!8§;
      }
      
      protected function get starling() : §,L§
      {
         return this.§]!6§;
      }
      
      public function get §#!#§() : int
      {
         return §6D§;
      }
   }
}
