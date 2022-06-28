package §%x§
{
   import § !;§.§`! §;
   import §"!5§.§,!!§;
   import §#k§.§"!D§;
   import §%$§.§3V§;
   import §%$§.§<]§;
   import §&p§.§'_§;
   import §-!0§.§'!3§;
   import §-!0§.§2h§;
   import §-!0§.§`Q§;
   import §0!<§.§#y§;
   import §14§.§0E§;
   import §6!@§.§5l§;
   import §<!B§.§<O§;
   import §>!C§.§'H§;
   import §>!C§.§5!&§;
   import §>!C§.§6M§;
   import §>!C§.§9R§;
   import §>F§.§2S§;
   import §>F§.§5b§;
   import §?!D§.§@!$§;
   import §?^§.DisplayObject;
   import §?^§.Sprite;
   import §[F§.§`m§;
   import §]!9§.§&v§;
   import §]!9§.§1c§;
   import §]!9§.§>2§;
   import §]!9§.§]!H§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §#;§
   {
      
      private static const §"!3§:int = 20;
      
      public static const §9!7§:Number = §,!!§.§;]§;
      
      public static const §<!'§:Number = §,!!§.§3L§;
      
      public static const §`!2§:Number = 1 / 20;
      
      public static const §0!B§:Number = §,!!§.§3L§ * §`!2§;
      
      public static const §7!2§:Number = §9!7§ * §`!2§;
      
      public static const §?!B§:§`! § = new §`! §(13 - 3);
      
      protected static var §0n§:String = §9R§.§ !4§;
       
      
      protected var §1!+§:§]!H§;
      
      private var §6G§:§>2§;
      
      private var §"g§:Array = null;
      
      protected var §throw§:§5l§;
      
      public var §-K§:§2N§;
      
      protected var §continue§:§;C§;
      
      protected var §^l§:§`m§;
      
      protected var § <§:§3=§;
      
      protected var §3!'§:§5b§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §5=§:Boolean = false;
      
      protected var §,!C§:Boolean = false;
      
      protected var §4t§:Boolean = false;
      
      public var §>E§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §<i§:Number;
      
      public var §3!F§:Number;
      
      private var §-!2§:Number;
      
      public var §5!'§:§5!&§;
      
      public var §^!?§:Boolean = false;
      
      private var §@-§:§[G§;
      
      private var § X§:Sprite;
      
      protected var §!S§:§9R§;
      
      protected var §%!&§:§@!$§ = null;
      
      private var §`F§:EventDispatcher;
      
      private var §!X§:Array;
      
      private var §]Q§:Array;
      
      protected var §>Y§:§'_§;
      
      private var §@!§:§<O§;
      
      protected var § 7§:§'!3§;
      
      protected var § 3§:§`Q§;
      
      private var §=#§:§2h§;
      
      private var §[%§:§2h§;
      
      private var §?!0§:§2h§;
      
      private var §<!1§:Stage;
      
      private var §"Y§:§8I§;
      
      protected var § 8§:§0E§;
      
      protected var §#Q§:§0E§;
      
      protected var §=U§:Number = 0.0;
      
      protected var §>!&§:String;
      
      private var §5!6§:Boolean;
      
      protected var §^Z§:Boolean;
      
      protected var §+[§:uint = 1.417339207E9;
      
      public var § ,§:Boolean;
      
      public function §#;§(param1:Stage)
      {
         this.§]Q§ = [];
         super();
         this.§`F§ = new EventDispatcher();
         this.§5!'§ = new §5!&§();
         this.§<!1§ = param1;
         this.§ 7§ = §'!3§.§-]§;
         this.§ 3§ = this.initAnimationManager(this.§ 7§);
         this.§=#§ = this.initThemeGraphicsManager();
         this.§[%§ = this.§'M§();
         this.§?!0§ = this.§?H§();
         var _loc2_:Stage3D = param1.stage3Ds[0];
         this.§>Y§ = new §'_§(§[G§,param1,new Rectangle(0,0,§,!!§.§;]§,§,!!§.§3L§),_loc2_);
         §,!!§.§-k§.addEventListener(Event.ENTER_FRAME,this.§>Y§.onEnterFrame);
         _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§-%§,false,0,true);
         this.§>Y§.§^e§ = false;
         this.§>Y§.enableErrorChecking = false;
         this.§>Y§.§switch§ = 2;
         this.§>Y§.§"v§();
      }
      
      public static function §=D§(param1:§>2§, param2:§>2§) : Number
      {
         var _loc3_:Number = param1.§]G§ - param2.§]G§;
         var _loc4_:Number = param1.§<?§ - param2.§<?§;
         return §]!;§(_loc3_,_loc4_);
      }
      
      public static function §]!;§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         if(!this.§ X§ && this.§7!8§)
         {
            this.§ X§ = this.§@-§.§5P§;
         }
         return this.§ X§;
      }
      
      public function get §7!8§() : Sprite
      {
         if(!this.§@-§)
         {
            this.§@-§ = this.§>Y§.§8!B§ as §[G§;
            this.§@-§.§-j§ = false;
         }
         return this.§@-§;
      }
      
      private function get §`3§() : DisplayObject
      {
         if(this.§7!8§)
         {
            return (this.§7!8§ as §[G§).§`3§;
         }
         return null;
      }
      
      public function get §+!!§() : §`Q§
      {
         return this.§ 3§;
      }
      
      public function get textureManager() : §'!3§
      {
         return this.§ 7§;
      }
      
      public function get camera() : §`m§
      {
         return this.§^l§;
      }
      
      public function get objects() : §]!H§
      {
         return this.§1!+§;
      }
      
      public function get particles() : §5b§
      {
         return this.§3!'§;
      }
      
      public function get background() : §5l§
      {
         return this.§throw§;
      }
      
      public function get slingshot() : §3=§
      {
         return this.§ <§;
      }
      
      public function get activeObject() : §>2§
      {
         return this.§6G§;
      }
      
      public function get §`,§() : §;C§
      {
         return this.§continue§;
      }
      
      public function get stage() : Stage
      {
         return this.§<!1§;
      }
      
      public function get §^k§() : §2h§
      {
         return this.§?!0§;
      }
      
      protected function get §-!"§() : §2h§
      {
         return this.§=#§;
      }
      
      public function set activeObject(param1:§>2§) : void
      {
         this.§6G§ = param1;
      }
      
      public function set §=9§(param1:Boolean) : void
      {
         this.§^Z§ = param1;
      }
      
      public function clear() : void
      {
         if(this.§@!§)
         {
            this.§@!§.dispose();
         }
         if(this.§ 7§)
         {
            this.§ 7§.dispose();
         }
         if(this.§=#§ && this.§=#§.textureManager)
         {
            this.§=#§.textureManager.dispose();
         }
         if(this.§?!0§ && this.§?!0§.textureManager)
         {
            this.§?!0§.textureManager.dispose();
         }
         if(this.§>Y§)
         {
            this.§>Y§.dispose();
         }
      }
      
      protected function initThemeGraphicsManager() : §2h§
      {
         return null;
      }
      
      protected function §'M§() : §2h§
      {
         return null;
      }
      
      protected function §?H§() : §2h§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§'!3§) : §`Q§
      {
         return new §`Q§(param1);
      }
      
      public function §69§(param1:Boolean) : void
      {
         if(§'_§.§17§)
         {
            if(param1)
            {
               §'_§.§17§.start();
            }
            else
            {
               §'_§.§17§.stop();
               §'_§.§17§.color = 0;
            }
         }
      }
      
      public function §#O§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function § ]§(param1:§@!$§) : void
      {
         if(this.§%!&§ != null)
         {
            this.§%!&§.removeEventListeners();
         }
         this.§%!&§ = param1;
         if(this.mReadyToRun)
         {
            this.§%!&§.addEventListeners();
         }
      }
      
      public function §27§() : §0E§
      {
         return this.§ 8§;
      }
      
      public function §^!2§(param1:§<O§, param2:Array, param3:Function) : void
      {
         this.§@!§ = param1;
         var _loc4_:int = this.§@!§.§8h§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§ 7§.§4!2§(this.§@!§.§!4§(_loc5_));
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§`F§.addEventListener(Event.INIT,param3);
            this.§]Q§.push(param3);
         }
         if(this.§<!4§(param2))
         {
            this.§8!;§();
         }
      }
      
      private function §<!4§(param1:Array) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.§ 7§.§,_§())
         {
            _loc2_ = this.§ 7§.§=M§ / 1000;
            _loc3_ = this.§ 7§.§&i§ / 1000;
            §#y§.log("\n\nMain texture manager memory usage:\n   textures " + _loc2_ + " kilobytes\n   bitmaps " + _loc3_ + " kilobytes\n\n");
            this.initializeAnimations(param1);
            return true;
         }
         this.§!X§ = param1.concat();
         return false;
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         this.§ 3§.initializeAnimations(param1);
      }
      
      private function §-%§(param1:Event) : void
      {
         this.§ 7§.§-+§();
         if(this.§-!"§ && this.§-!"§.textureManager)
         {
            this.§-!"§.textureManager.§-+§();
         }
         if(this.§^k§ && this.§^k§.textureManager)
         {
            this.§^k§.textureManager.§-+§();
         }
         if(this.§!X§)
         {
            this.§<!4§(this.§!X§);
            this.§!X§ = null;
            this.§8!;§();
         }
         if(this.§%!&§ != null && this.mReadyToRun)
         {
            this.§%!&§.addEventListeners();
         }
         if(this.§=#§)
         {
            this.§=#§.§,_§();
         }
         if(this.§?!0§)
         {
            if(this.§?!0§.textureManager)
            {
               this.§?!0§.textureManager.§-+§();
               this.§?!0§.§,_§();
            }
         }
      }
      
      private function §8!;§() : void
      {
         this.§`F§.dispatchEvent(new Event(Event.INIT));
         this.§?!2§();
      }
      
      private function §?!2§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§]Q§)
         {
            this.§`F§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§]Q§ = [];
      }
      
      public function init(param1:§9R§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§continue§ = new §;C§(this,param1);
         this.§^l§ = this.initLevelCamera(param1);
         this.§<i§ = 0;
         this.§3!F§ = 0;
         this.§-!2§ = 0;
         this.§5!6§ = false;
         this.mReadyToRun = false;
         this.§5=§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         §0n§ = param1.theme;
         this.§!S§ = param1;
         this.§,!C§ = this.§`!#§(param1.theme);
         this.§4t§ = this.§5w§(param1.theme);
         if(this.§,!C§ && this.§4t§)
         {
            this.initialize(param1);
         }
         else
         {
            this.§2G§(param1.theme);
         }
         this.§`i§();
         §0]§.init();
      }
      
      protected function §`i§() : void
      {
         this.§ 8§ = new §0E§(§6M§.§[z§);
      }
      
      protected function §`!#§(param1:String) : Boolean
      {
         if(this.§=#§)
         {
            return false;
         }
         return true;
      }
      
      protected function §5w§(param1:String) : Boolean
      {
         var _loc2_:§<]§ = null;
         if(this.§[%§)
         {
            _loc2_ = §3V§.§9S§(param1);
            if(_loc2_)
            {
               if(_loc2_.§%b§ && !this.§[%§.§[W§(_loc2_.§%b§))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function §2G§(param1:String) : void
      {
         var _loc2_:§<]§ = null;
         if(this.§=#§ && !this.§`!#§(param1))
         {
            this.§=#§.removeEventListener(Event.COMPLETE,this.§&!E§);
            this.§=#§.removeEventListener(Event.CANCEL,this.§7'§);
            this.§=#§.addEventListener(Event.COMPLETE,this.§&!E§);
            this.§=#§.addEventListener(Event.CANCEL,this.§7'§);
            this.§=#§.§ null§(param1);
         }
         if(this.§[%§ && !this.§5w§(param1))
         {
            this.§[%§.removeEventListener(Event.COMPLETE,this.§>,§);
            this.§[%§.removeEventListener(Event.CANCEL,this.§;L§);
            this.§[%§.addEventListener(Event.COMPLETE,this.§>,§);
            this.§[%§.addEventListener(Event.CANCEL,this.§;L§);
            _loc2_ = §3V§.§9S§(param1);
            if(_loc2_)
            {
               this.§[%§.§ null§(_loc2_.§%b§);
            }
         }
      }
      
      private function §&!E§(param1:Event) : void
      {
         this.§=#§.removeEventListener(Event.COMPLETE,this.§&!E§);
         this.§=#§.removeEventListener(Event.CANCEL,this.§7'§);
         this.§,!C§ = true;
         if(this.§,!C§ && this.§4t§)
         {
            this.initialize(this.§!S§);
         }
      }
      
      private function §7'§(param1:Event) : void
      {
         this.§=#§.removeEventListener(Event.COMPLETE,this.§&!E§);
         this.§=#§.removeEventListener(Event.CANCEL,this.§7'§);
         this.§5=§ = true;
      }
      
      private function §>,§(param1:Event) : void
      {
         this.§=#§.removeEventListener(Event.COMPLETE,this.§>,§);
         this.§=#§.removeEventListener(Event.CANCEL,this.§;L§);
         this.§4t§ = true;
         if(this.§,!C§ && this.§4t§)
         {
            this.initialize(this.§!S§);
         }
      }
      
      private function §;L§(param1:Event) : void
      {
         this.§=#§.removeEventListener(Event.COMPLETE,this.§>,§);
         this.§=#§.removeEventListener(Event.CANCEL,this.§;L§);
         this.§4t§ = true;
         if(this.§,!C§ && this.§4t§)
         {
            this.initialize(this.§!S§);
         }
      }
      
      public function get backgroundTextureManager() : §'!3§
      {
         return this.§ 7§;
      }
      
      protected function initialize(param1:§9R§) : void
      {
         this.§^Z§ = false;
         this.§ ,§ = false;
         if(§'_§.§6!"§)
         {
            §'_§.§6!"§.speed = 1;
         }
         this.§-K§ = new §2N§(this);
         this.§throw§ = this.initLevelBackground(param1.theme,this.§continue§.§=s§ / §`!2§,this.backgroundTextureManager,this.§^l§.§>!<§());
         this.§throw§.§#,§(§,!!§.§1q§());
         this.§1!+§ = this.initLevelObjectManager(param1);
         this.§ <§ = this.initLevelSlingshot(param1);
         this.§3!'§ = this.§8W§(this.§ 3§,this.§ 7§);
         this.§^l§.init();
         this.§%§();
         this.§[]§();
         this.mReadyToRun = true;
         if(this.§%!&§)
         {
            this.§%!&§.addEventListeners();
         }
      }
      
      protected function §[]§() : void
      {
         if(this.§>!&§)
         {
            this.§#Q§ = §0E§.initialize(this.§>!&§);
            this.§#Q§.speed = 1;
            this.§#Q§.play();
            this.§=U§ = -1000;
            this.§>!&§ = null;
         }
      }
      
      public function §7!F§(param1:String) : void
      {
         this.§>!&§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§#Q§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§#Q§)
         {
            if(param1)
            {
               this.§#Q§.speed = Math.min(this.§#Q§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§#Q§.speed = Math.max(this.§#Q§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§#Q§)
         {
            this.§#Q§.speed = 1;
         }
      }
      
      protected function initLevelObjectManager(param1:§9R§) : §]!H§
      {
         return new §]!H§(this,param1,new Sprite());
      }
      
      protected function initLevelCamera(param1:§9R§) : §`m§
      {
         return new §`m§(this,param1);
      }
      
      protected function initLevelBackground(param1:String, param2:Number, param3:§'!3§, param4:Number) : §5l§
      {
         return new §5l§(param1,param2,param3,param4);
      }
      
      protected function initLevelSlingshot(param1:§9R§) : §3=§
      {
         return new §3=§(this,param1,new Sprite());
      }
      
      protected function §8W§(param1:§`Q§, param2:§'!3§) : §5b§
      {
         return new §5b§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§9R§ = this.§3D§();
         var _loc4_:§'H§;
         (_loc4_ = new §'H§()).left = 0;
         _loc4_.top = -§`m§.§]@§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §`m§.§]@§;
         _loc4_.right = _loc4_.left + §`m§.§5t§;
         _loc4_.y = -13.929;
         _loc4_.x = §`m§.§5t§;
         _loc4_.id = §`m§.§;!,§;
         _loc3_.§''§(_loc4_);
         var _loc5_:§'H§;
         (_loc5_ = new §'H§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §`m§.§5t§;
         _loc5_.bottom = _loc5_.top + §`m§.§]@§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §`m§.§5t§ / 2;
         _loc5_.id = §`m§.§%T§;
         _loc3_.§''§(_loc5_);
         this.§ ?§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§0n§ != null)
         {
            _loc3_.theme = §0n§;
         }
         this.init(_loc3_);
      }
      
      protected function § ?§(param1:§9R§, param2:Boolean) : void
      {
         if(param2)
         {
            this.§"S§(param1);
         }
      }
      
      protected function §3D§() : §9R§
      {
         var _loc1_:§9R§ = new §9R§();
         _loc1_.§7!H§ = -12;
         return new §9R§();
      }
      
      protected function §"8§() : Number
      {
         this.§+[§ ^= this.§+[§ << 21;
         this.§+[§ ^= this.§+[§ >>> 35;
         this.§+[§ ^= this.§+[§ << 4;
         return this.§+[§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §"S§(param1:§9R§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§"!D§ = null;
         this.§+[§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§"8§() * 5;
               (_loc5_ = new §"!D§()).x = 30 + _loc3_ * 10 + this.§"8§() * 9;
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
                  _loc5_.angle = 45 - this.§"8§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§"8§() * 3 - _loc3_ * 8;
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
                  _loc5_.angle = this.§"8§() * 360;
               }
               param1.addObject(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      private function §=j§() : void
      {
      }
      
      public function §%§() : void
      {
         if(§5l§.§37§)
         {
            this.§61§(this.§throw§.§`6§,false);
         }
         this.§61§(this.§3!'§.§;!6§(§5b§.§do§),false);
         this.§61§(this.§3!'§.§;!6§(§5b§.§[M§),true);
         this.§61§(this.§3!'§.§;!6§(§5b§.§3!!§),true);
         this.§61§(this.§1!+§.§6,§,true);
         this.§61§(this.§ <§.sprite,true);
         this.§61§(this.§3!'§.§;!6§(§5b§.§?D§),true);
         this.§61§(this.§throw§.§9q§,false);
         if(§5l§.§37§)
         {
            this.§61§(this.§throw§.§^;§,false);
         }
         this.§61§(this.§3!'§.§;!6§(§5b§.§%Z§),true);
         if(!§2N§.§5r§)
         {
         }
      }
      
      private function §61§(param1:Sprite, param2:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(param1);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         param1 /= §,!!§.§0!3§;
         param2 /= §,!!§.§0!3§;
         _loc3_.x = (param1 / §`m§.§;`§ + this.§^l§.§6`§ - §`m§.§0!6§ / §`m§.§;`§) * §`!2§;
         _loc3_.y = (param2 / §`m§.§;`§ + this.§^l§.§,!E§ - §`m§.§15§ / §`m§.§;`§) * §`!2§;
         return _loc3_;
      }
      
      public function §#u§(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / §`!2§ + §`m§.§0!6§ / §`m§.§;`§ - this.§^l§.§6`§) * §`m§.§;`§;
         _loc3_.y = (param2 / §`!2§ + §`m§.§15§ / §`m§.§;`§ - this.§^l§.§,!E§) * §`m§.§;`§;
         var _loc4_:Number = Math.max(§,!!§.§0!3§,§,!!§.§,`§);
         _loc3_.x *= _loc4_;
         _loc3_.y *= _loc4_;
         return _loc3_;
      }
      
      public function §<!-§(param1:String, param2:Number, param3:Number) : void
      {
         this.§1!+§.addObject(param1,param2,param3);
      }
      
      public function §8G§() : void
      {
         if(this.§`3§)
         {
            this.§`3§.visible = true;
            this.§`3§.alpha = 0;
         }
         this.§>E§ = 0;
      }
      
      public function §&`§() : void
      {
         this.§"Y§ = new §8I§(§#!;§.§+!"§,§#!;§.§[!?§);
      }
      
      public function §=]§() : void
      {
         this.§"Y§ = null;
      }
      
      public function clearLevel() : void
      {
         if(this.§throw§)
         {
            this.§throw§.dispose();
            this.§throw§ = null;
         }
         if(this.§1!+§)
         {
            this.§1!+§.dispose();
            this.§1!+§ = null;
            this.§6G§ = null;
         }
         if(this.§-K§)
         {
            if(!this.§-K§.§8l§)
            {
            }
            this.§-K§.clear();
            this.§-K§ = null;
         }
         if(this.§continue§)
         {
            this.§continue§.clear();
            this.§continue§ = null;
         }
         if(this.§ <§)
         {
            this.§ <§.dispose();
            this.§ <§ = null;
         }
         if(this.§^l§)
         {
            this.§^l§.clear();
            this.§^l§ = null;
         }
         if(this.§3!'§)
         {
            this.§3!'§.dispose();
            this.§3!'§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§<i§ = 0;
         this.§3!F§ = 0;
         this.mReadyToRun = false;
         this.§5!6§ = false;
         this.§>E§ = §#!;§.§>A§;
         if(this.§7!8§)
         {
            (this.§7!8§ as §[G§).§96§.x = 0;
            (this.§7!8§ as §[G§).§96§.y = 0;
         }
         if(this.§`3§)
         {
            this.§`3§.visible = false;
         }
         this.§#Q§ = null;
         this.§ 8§ = null;
         if(this.§=#§)
         {
            this.§=#§.removeEventListener(Event.COMPLETE,this.§&!E§);
            this.§=#§.removeEventListener(Event.CANCEL,this.§7'§);
         }
         if(this.§[%§)
         {
            this.§[%§.removeEventListener(Event.COMPLETE,this.§>,§);
            this.§[%§.removeEventListener(Event.CANCEL,this.§;L§);
         }
         this.§?!2§();
         if(§'_§.§17§)
         {
            §'_§.§17§.color = 0;
         }
         if(this.§%!&§)
         {
            this.§%!&§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver() : void
      {
      }
      
      public function §`!+§() : String
      {
         if(this.§ 8§)
         {
            return this.§ 8§.toString();
         }
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         if(!this.mReadyToRun || !§'_§.§+! §())
         {
            return 0;
         }
         if(this.§#Q§ && this.§#Q§.§!q§)
         {
            return this.§@[§(param1,param2,param3);
         }
         return this.§'q§(param1,true,param2,param3);
      }
      
      protected function §'q§(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         if(this.§^Z§)
         {
            param1 *= 0.2;
            if(§'_§.§6!"§)
            {
               §'_§.§6!"§.speed = 0.2;
            }
         }
         var _loc5_:Number = 0;
         this.§3!F§ += param1;
         if(param3)
         {
            this.§<i§ += param1;
            _loc5_ = this.§-K§.§!K§(this.§<i§);
            this.§ <§.update(param1,param4);
            this.§<i§ = _loc5_;
         }
         else
         {
            this.§1!+§.§&'§(param1);
            this.§<i§ = 0;
         }
         if(param2)
         {
            this.§4P§(param1,_loc5_);
         }
         return param1;
      }
      
      private function §@[§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc5_:Number = NaN;
         var _loc4_:Number = §2N§.§=!H§ * 1000;
         if(this.§#Q§)
         {
            param1 *= this.§#Q§.speed;
            _loc5_ = this.§3!F§ + param1;
            while(this.§3!F§ + _loc4_ < _loc5_)
            {
               if(this.§3!F§ + _loc4_ > this.§=U§)
               {
                  this.§#Q§.step(this);
                  this.§=U§ += _loc4_;
               }
               this.§'q§(_loc4_,false,param2,param3);
            }
            if(_loc5_ > this.§=U§ + _loc4_)
            {
               this.§#Q§.step(this);
               this.§=U§ += _loc4_;
            }
            if(this.§3!F§ < _loc5_)
            {
               this.§'q§(_loc5_ - this.§3!F§,true,param2,param3);
            }
            return param1;
         }
         return this.§'q§(_loc4_,true,param2,param3);
      }
      
      private function §4P§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.§throw§.update(param1);
         this.§1!+§.§&;§(param1,param2);
         this.§4B§();
         if(this.§>E§ < §#!;§.§>A§)
         {
            this.§>E§ += param1;
            _loc3_ = §#!;§.§>A§ / 2;
            _loc4_ = (-Math.abs(this.§>E§ - _loc3_) + _loc3_) * (§#!;§.§[,§ / _loc3_);
            if(this.§`3§)
            {
               this.§`3§.alpha = _loc4_;
            }
         }
         else if(this.§`3§)
         {
            this.§`3§.visible = false;
         }
         if(this.§"Y§)
         {
            if(!this.§"Y§.§@X§(this.§^l§,param1))
            {
               this.§=]§();
            }
         }
         this.§^l§.§^!&§(param1);
         this.§-K§.§0d§();
         this.§3!'§.update(param1);
      }
      
      public function §#5§(param1:Number) : void
      {
         this.objects.§&'§(param1 * 1000);
         this.objects.§3W§(param1 * 1000);
         this.§-?§();
      }
      
      public function §4B§() : void
      {
         var _loc1_:§>2§ = null;
         if(this.§3!F§ > this.§-!2§ + 1000 / 30)
         {
            if(this.§"g§ != null)
            {
               for each(_loc1_ in this.§"g§)
               {
                  _loc1_.addTrail();
               }
            }
            this.§-!2§ = this.§3!F§;
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§>2§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.§1!+§.isPigsAlive(true))
            {
               _loc2_ = this.§1!+§.§import§(true);
               _loc2_.§2!@§.mTryToScream = §1c§.§1!6§;
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§1!+§.§0N§());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            if(this.§1!+§.isPigsAlive(true))
            {
               _loc2_ = this.§1!+§.§import§(true);
               _loc2_.§2!@§.mTryToBlink = §1c§.§&!'§;
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§1!+§.§0N§());
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §2S§.§%f§;
         }
         §0]§.addScore(param1,param2);
         this.§%!&§.addScore(param1);
         if(param3 && param1 > 0 && !this.§ ,§)
         {
            this.§;!F§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §;!F§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §2S§.§"B§;
         }
         this.§3!'§.§ t§(§2S§.§+!B§,§5b§.§%Z§,§2S§.§<p§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function § N§(param1:§>2§) : void
      {
         if(this.§"g§ == null)
         {
            this.§"g§ = new Array();
         }
         this.§"g§.push(param1);
      }
      
      public function §6L§() : void
      {
         this.§ <§.§6L§();
         this.§1!+§.§?=§();
         this.§ ,§ = true;
      }
      
      public function §=r§(param1:§>2§) : void
      {
         this.§3!'§.§9!=§(§5b§.§do§);
         if(this.§"g§.indexOf(param1) >= 0)
         {
            this.§"g§.splice(this.§"g§.indexOf(param1),1);
         }
         if(this.§"g§.length == 0)
         {
            this.§"g§ = null;
         }
      }
      
      public function §[!7§(param1:§0Y§, param2:Number, param3:Number) : void
      {
         this.§6G§ = this.§1!+§.addObject(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
         var _loc4_:Number = param1.name.toUpperCase() == "BIRD_GREEN" ? Number(§3=§.§7[§) : Number(§3=§.§=!,§);
         if(param1.§^7§ > 1)
         {
            this.§6G§.§^'§(param1.§^7§);
            this.§6G§.§2!@§.§-#§();
         }
         if(param1.§&!"§ != 0)
         {
            _loc4_ = param1.§&!"§;
         }
         var _loc5_:Number = -_loc4_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc6_:Number = _loc4_ * param2 * Math.sin(param3 / (180 / Math.PI));
         this.§6G§.§>c§(new b2Vec2(_loc5_,_loc6_),false,true);
         this.camera.§8!6§(§`m§.§@M§);
         if(this.§ 8§)
         {
            this.§ 8§.§[!7§(this.§-K§.§4!&§,param1.x,param1.y,param2,param3);
         }
      }
      
      public function activatePowerup() : void
      {
         this.§5!6§ = true;
      }
      
      private function §-?§() : void
      {
         if(!this.§5!6§)
         {
            return;
         }
         this.§5!6§ = false;
         if(this.activeObject is §&v§ && !(this.activeObject as §&v§).§?-§)
         {
            if(this.activeObject.activateSpecialPower(this.§@A§))
            {
               this.§^!?§ = true;
            }
         }
         else
         {
            this.§1!+§.§ l§();
         }
         if(this.§ 8§)
         {
            this.§ 8§.§6=§(this.§-K§.§4!&§);
         }
      }
      
      public function § L§() : void
      {
         this.§1!+§.§ L§();
      }
      
      public function §`C§() : void
      {
         this.§1!+§.§6b§();
      }
      
      public function §#!&§() : §9R§
      {
         var _loc1_:§9R§ = new §9R§();
         _loc1_.§4$§ = this.§!S§.§4$§;
         _loc1_.§!!9§ = this.§!S§.§!!9§;
         this.§^l§.§=a§(_loc1_);
         this.§1!+§.§4%§(_loc1_);
         this.§ <§.§[0§(_loc1_);
         _loc1_.theme = this.§throw§.§,C§();
         return _loc1_;
      }
      
      public function §'&§() : int
      {
         return this.§!S§.§!!9§;
      }
      
      public function §0&§() : int
      {
         return this.§!S§.§4$§;
      }
      
      public function §3!1§(param1:int) : void
      {
         this.§!S§.§!!9§ = param1;
      }
      
      public function §%[§(param1:int) : void
      {
         this.§!S§.§4$§ = param1;
      }
      
      public function §0"§(param1:Number, param2:Number) : void
      {
         if(this.§@-§)
         {
            this.§@-§.§ true§(param1,param2);
         }
         if(this.§^l§)
         {
            this.§^l§.§^!&§(0);
         }
      }
      
      public function get §<z§() : §9R§
      {
         return this.§!S§;
      }
      
      public function get §@A§() : §]!H§
      {
         return this.§1!+§;
      }
      
      protected function get starling() : §'_§
      {
         return this.§>Y§;
      }
      
      public function get §'V§() : int
      {
         return §"!3§;
      }
   }
}
