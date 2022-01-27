package §%"§
{
   import § "§.§5!E§;
   import §'D§.§3h§;
   import §'R§.§!m§;
   import §'R§.§&r§;
   import §'R§.§-$§;
   import §'R§.§7!0§;
   import §,!O§.§?9§;
   import §,!O§.§[!3§;
   import §-f§.§4&§;
   import §3M§.§;v§;
   import §9!0§.§3!2§;
   import §;;§.§"!E§;
   import §;;§.§9"§;
   import §<!F§.§5!+§;
   import §<!N§.DisplayObject;
   import §<!N§.Sprite;
   import §?!;§.§"V§;
   import §?!;§.§6H§;
   import §?!;§.§;!,§;
   import §?!;§.§>w§;
   import §@&§.§!!?§;
   import §@V§.§`!5§;
   import §]G§.§%@§;
   import §^'§.§ !C§;
   import §^'§.§?!@§;
   import §^'§.§[!4§;
   import §^h§.§2l§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class § do§
   {
      
      private static const §-9§:int = 20;
      
      public static const §39§:Number = §5!+§.§[!0§;
      
      public static const §0H§:Number = §5!+§.§>!8§;
      
      public static const §^!I§:Number = 1 / 20;
      
      public static const §%!5§:Number = §5!+§.§>!8§ * §^!I§;
      
      public static const §%K§:Number = §39§ * §^!I§;
      
      public static const §9b§:§3!2§ = new §3!2§(13 - 3);
      
      public static var §<8§:Number = 1;
      
      protected static var §>[§:String = §;!,§.§,&§;
       
      
      protected var §+h§:§!m§;
      
      private var §3!7§:§&r§;
      
      private var §5i§:Array = null;
      
      protected var §<!1§:§5!E§;
      
      public var §]u§:§<! §;
      
      protected var §;j§:§&h§;
      
      protected var §%v§:§3h§;
      
      protected var §1A§:§7?§;
      
      protected var §?!G§:§9"§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §-8§:Boolean = false;
      
      protected var §-A§:Boolean = false;
      
      protected var §9-§:Boolean = false;
      
      public var §!!!§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §=!?§:Number;
      
      public var §&!?§:Number;
      
      private var §=2§:Number;
      
      public var §+0§:§"V§;
      
      public var §`!A§:Boolean = false;
      
      private var §"! §:§3!+§;
      
      private var §^,§:Sprite;
      
      protected var §>!2§:§;!,§;
      
      protected var §+u§:§%@§ = null;
      
      private var §+%§:EventDispatcher;
      
      private var §[z§:Array;
      
      private var §2!&§:Array;
      
      protected var §48§:§2l§;
      
      private var §[!-§:§!!?§;
      
      protected var §1$§:§ !C§;
      
      protected var §4A§:§?!@§;
      
      private var §#!#§:§[!4§;
      
      private var §;!+§:§[!4§;
      
      private var §=h§:§[!4§;
      
      private var §3+§:Stage;
      
      private var §-c§:§4!P§;
      
      protected var §<!=§:§4&§;
      
      protected var §"l§:§4&§;
      
      protected var §4O§:Number = 0.0;
      
      protected var §[K§:String;
      
      private var §<!'§:Boolean;
      
      protected var §50§:Boolean;
      
      protected var §>!G§:uint = 1.417339207E9;
      
      public var §0§:Boolean;
      
      public function § do§(param1:Stage)
      {
         this.§2!&§ = [];
         super();
         this.§+%§ = new EventDispatcher();
         this.§+0§ = new §"V§();
         this.§3+§ = param1;
         this.§1$§ = § !C§.§&y§;
         this.§4A§ = this.initAnimationManager(this.§1$§);
         this.§#!#§ = this.initThemeGraphicsManager();
         this.§;!+§ = this.§;3§();
         this.§=h§ = this.§`!-§();
         var _loc2_:Stage3D = param1.stage3Ds[0];
         this.§48§ = new §2l§(§3!+§,param1,new Rectangle(0,0,§5!+§.§[!0§,§5!+§.§>!8§),_loc2_);
         §5!+§.§5!6§.addEventListener(Event.ENTER_FRAME,this.§48§.onEnterFrame);
         _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§-z§,false,0,true);
         this.§48§.§>C§ = false;
         this.§48§.enableErrorChecking = false;
         this.§48§.§?7§ = 2;
         this.§48§.§+G§();
      }
      
      public static function §=Q§(param1:§&r§, param2:§&r§) : Number
      {
         var _loc3_:Number = param1.§2;§ - param2.§2;§;
         var _loc4_:Number = param1.§4n§ - param2.§4n§;
         return §'!N§(_loc3_,_loc4_);
      }
      
      public static function §'!N§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         if(!this.§^,§ && this.§8!>§)
         {
            this.§^,§ = this.§"! §.§91§;
         }
         return this.§^,§;
      }
      
      public function get §8!>§() : Sprite
      {
         if(!this.§"! §)
         {
            this.§"! § = this.§48§.§ !@§ as §3!+§;
            this.§"! §.§0!-§ = false;
         }
         return this.§"! §;
      }
      
      private function get §!y§() : DisplayObject
      {
         if(this.§8!>§)
         {
            return (this.§8!>§ as §3!+§).§!y§;
         }
         return null;
      }
      
      public function get §4i§() : §?!@§
      {
         return this.§4A§;
      }
      
      public function get textureManager() : § !C§
      {
         return this.§1$§;
      }
      
      public function get camera() : §3h§
      {
         return this.§%v§;
      }
      
      public function get objects() : §!m§
      {
         return this.§+h§;
      }
      
      public function get particles() : §9"§
      {
         return this.§?!G§;
      }
      
      public function get background() : §5!E§
      {
         return this.§<!1§;
      }
      
      public function get slingshot() : §7?§
      {
         return this.§1A§;
      }
      
      public function get activeObject() : §&r§
      {
         return this.§3!7§;
      }
      
      public function get §#z§() : §&h§
      {
         return this.§;j§;
      }
      
      public function get stage() : Stage
      {
         return this.§3+§;
      }
      
      public function get §6"§() : §[!4§
      {
         return this.§=h§;
      }
      
      protected function get §9P§() : §[!4§
      {
         return this.§#!#§;
      }
      
      public function set activeObject(param1:§&r§) : void
      {
         this.§3!7§ = param1;
      }
      
      public function set slowMotion(param1:Boolean) : void
      {
         this.§50§ = param1;
      }
      
      public function clear() : void
      {
         if(this.§[!-§)
         {
            this.§[!-§.dispose();
         }
         if(this.§1$§)
         {
            this.§1$§.dispose();
         }
         if(this.§#!#§ && this.§#!#§.textureManager)
         {
            this.§#!#§.textureManager.dispose();
         }
         if(this.§=h§ && this.§=h§.textureManager)
         {
            this.§=h§.textureManager.dispose();
         }
         if(this.§48§)
         {
            this.§48§.dispose();
         }
      }
      
      protected function initThemeGraphicsManager() : §[!4§
      {
         return null;
      }
      
      protected function §;3§() : §[!4§
      {
         return null;
      }
      
      protected function §`!-§() : §[!4§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§ !C§) : §?!@§
      {
         return new §?!@§(param1);
      }
      
      public function §'!+§(param1:Boolean) : void
      {
         if(§2l§.§7K§)
         {
            if(param1)
            {
               §2l§.§7K§.start();
            }
            else
            {
               §2l§.§7K§.stop();
               §2l§.§7K§.color = 0;
            }
         }
      }
      
      public function §2!H§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function §;&§(param1:§%@§) : void
      {
         if(this.§+u§ != null)
         {
            this.§+u§.removeEventListeners();
         }
         this.§+u§ = param1;
         if(this.mReadyToRun)
         {
            this.§+u§.addEventListeners();
         }
      }
      
      public function §!!%§() : §4&§
      {
         return this.§<!=§;
      }
      
      public function §2!%§(param1:§!!?§, param2:Array, param3:Function) : void
      {
         this.§[!-§ = param1;
         var _loc4_:int = this.§[!-§.§[U§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§1$§.§+d§(this.§[!-§.§>`§(_loc5_));
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§+%§.addEventListener(Event.INIT,param3);
            this.§2!&§.push(param3);
         }
         if(this.§@P§(param2))
         {
            this.§8p§();
         }
      }
      
      private function §@P§(param1:Array) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.§1$§.§3!A§())
         {
            _loc2_ = this.§1$§.§>,§ / 1000;
            _loc3_ = this.§1$§.§@S§ / 1000;
            §`!5§.log("\n\nMain texture manager memory usage:\n   textures " + _loc2_ + " kilobytes\n   bitmaps " + _loc3_ + " kilobytes\n\n");
            this.initializeAnimations(param1);
            return true;
         }
         this.§[z§ = param1.concat();
         return false;
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         this.§4A§.initializeAnimations(param1);
      }
      
      private function §-z§(param1:Event) : void
      {
         this.§1$§.§8f§();
         if(this.§9P§ && this.§9P§.textureManager)
         {
            this.§9P§.textureManager.§8f§();
         }
         if(this.§6"§ && this.§6"§.textureManager)
         {
            this.§6"§.textureManager.§8f§();
         }
         if(this.§[z§)
         {
            this.§@P§(this.§[z§);
            this.§[z§ = null;
            this.§8p§();
         }
         if(this.§+u§ != null && this.mReadyToRun)
         {
            this.§+u§.addEventListeners();
         }
         if(this.§#!#§)
         {
            this.§#!#§.§3!A§();
         }
         if(this.§=h§)
         {
            if(this.§=h§.textureManager)
            {
               this.§=h§.textureManager.§8f§();
               this.§=h§.§3!A§();
            }
         }
      }
      
      private function §8p§() : void
      {
         this.§+%§.dispatchEvent(new Event(Event.INIT));
         this.§5c§();
      }
      
      private function §5c§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§2!&§)
         {
            this.§+%§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§2!&§ = [];
      }
      
      public function init(param1:§;!,§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§;j§ = new §&h§(this,param1);
         this.§%v§ = this.initLevelCamera(param1);
         this.§=!?§ = 0;
         this.§&!?§ = 0;
         this.§=2§ = 0;
         this.§<!'§ = false;
         this.mReadyToRun = false;
         this.§-8§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         §>[§ = param1.theme;
         this.§>!2§ = param1;
         this.§-A§ = this.§]!O§(param1.theme);
         this.§9-§ = this.§-!-§(param1.theme);
         if(this.§-A§ && this.§9-§)
         {
            this.initialize(param1);
         }
         else
         {
            this.§5F§(param1.theme);
         }
         this.§"!Q§();
         §^!J§.init();
      }
      
      protected function §"!Q§() : void
      {
         this.§<!=§ = new §4&§(§6H§.§"Q§);
      }
      
      protected function §]!O§(param1:String) : Boolean
      {
         if(this.§#!#§)
         {
            return false;
         }
         return true;
      }
      
      protected function §-!-§(param1:String) : Boolean
      {
         var _loc2_:§[!3§ = null;
         if(this.§;!+§)
         {
            _loc2_ = §?9§.§9!N§(param1);
            if(_loc2_)
            {
               if(_loc2_.§"e§ && !this.§;!+§.§2i§(_loc2_.§"e§))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function §5F§(param1:String) : void
      {
         var _loc2_:§[!3§ = null;
         if(this.§#!#§ && !this.§]!O§(param1))
         {
            this.§#!#§.removeEventListener(Event.COMPLETE,this.§]j§);
            this.§#!#§.removeEventListener(Event.CANCEL,this.§each §);
            this.§#!#§.addEventListener(Event.COMPLETE,this.§]j§);
            this.§#!#§.addEventListener(Event.CANCEL,this.§each §);
            this.§#!#§.§7'§(param1);
         }
         if(this.§;!+§ && !this.§-!-§(param1))
         {
            this.§;!+§.removeEventListener(Event.COMPLETE,this.§&4§);
            this.§;!+§.removeEventListener(Event.CANCEL,this.§=!,§);
            this.§;!+§.addEventListener(Event.COMPLETE,this.§&4§);
            this.§;!+§.addEventListener(Event.CANCEL,this.§=!,§);
            _loc2_ = §?9§.§9!N§(param1);
            if(_loc2_)
            {
               this.§;!+§.§7'§(_loc2_.§"e§);
            }
         }
      }
      
      private function §]j§(param1:Event) : void
      {
         this.§#!#§.removeEventListener(Event.COMPLETE,this.§]j§);
         this.§#!#§.removeEventListener(Event.CANCEL,this.§each §);
         this.§-A§ = true;
         if(this.§-A§ && this.§9-§)
         {
            this.initialize(this.§>!2§);
         }
      }
      
      private function §each §(param1:Event) : void
      {
         this.§#!#§.removeEventListener(Event.COMPLETE,this.§]j§);
         this.§#!#§.removeEventListener(Event.CANCEL,this.§each §);
         this.§-8§ = true;
      }
      
      private function §&4§(param1:Event) : void
      {
         this.§#!#§.removeEventListener(Event.COMPLETE,this.§&4§);
         this.§#!#§.removeEventListener(Event.CANCEL,this.§=!,§);
         this.§9-§ = true;
         if(this.§-A§ && this.§9-§)
         {
            this.initialize(this.§>!2§);
         }
      }
      
      private function §=!,§(param1:Event) : void
      {
         this.§#!#§.removeEventListener(Event.COMPLETE,this.§&4§);
         this.§#!#§.removeEventListener(Event.CANCEL,this.§=!,§);
         this.§9-§ = true;
         if(this.§-A§ && this.§9-§)
         {
            this.initialize(this.§>!2§);
         }
      }
      
      public function get backgroundTextureManager() : § !C§
      {
         return this.§1$§;
      }
      
      protected function initialize(param1:§;!,§) : void
      {
         this.§50§ = false;
         this.§0§ = false;
         if(§2l§.§9!'§)
         {
            §2l§.§9!'§.speed = 1;
         }
         this.§]u§ = new §<! §(this);
         this.§<!1§ = this.initLevelBackground(param1.theme,this.§;j§.§=a§ / §^!I§,this.backgroundTextureManager,this.§%v§.§-!"§());
         this.§<!1§.§#U§(§5!+§.§4!!§());
         this.§+h§ = this.initLevelObjectManager(param1);
         this.§1A§ = this.initLevelSlingshot(param1);
         this.§?!G§ = this.initParticleManager(this.§4A§,this.§1$§);
         this.§%v§.init();
         this.§"h§();
         this.§2C§();
         this.mReadyToRun = true;
         if(this.§+u§)
         {
            this.§+u§.addEventListeners();
         }
      }
      
      protected function §2C§() : void
      {
         if(this.§[K§)
         {
            this.§"l§ = §4&§.initialize(this.§[K§);
            this.§"l§.speed = 1;
            this.§"l§.play();
            this.§4O§ = -1000;
            this.§[K§ = null;
         }
      }
      
      public function §[H§(param1:String) : void
      {
         this.§[K§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§"l§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§"l§)
         {
            if(param1)
            {
               this.§"l§.speed = Math.min(this.§"l§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§"l§.speed = Math.max(this.§"l§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§"l§)
         {
            this.§"l§.speed = 1;
         }
      }
      
      protected function initLevelObjectManager(param1:§;!,§) : §!m§
      {
         return new §!m§(this,param1,new Sprite());
      }
      
      protected function initLevelCamera(param1:§;!,§) : §3h§
      {
         return new §3h§(this,param1);
      }
      
      protected function initLevelBackground(param1:String, param2:Number, param3:§ !C§, param4:Number) : §5!E§
      {
         return new §5!E§(param1,param2,param3,param4);
      }
      
      protected function initLevelSlingshot(param1:§;!,§) : §7?§
      {
         return new §7?§(this,param1,new Sprite());
      }
      
      protected function initParticleManager(param1:§?!@§, param2:§ !C§) : §9"§
      {
         return new §9"§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§;!,§ = this.§?;§();
         var _loc4_:§>w§;
         (_loc4_ = new §>w§()).left = 0;
         _loc4_.top = -§3h§.§`!'§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §3h§.§`!'§;
         _loc4_.right = _loc4_.left + §3h§.§6!B§;
         _loc4_.y = -13.929;
         _loc4_.x = §3h§.§6!B§;
         _loc4_.id = §3h§.§&!5§;
         _loc3_.§-!M§(_loc4_);
         var _loc5_:§>w§;
         (_loc5_ = new §>w§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §3h§.§6!B§;
         _loc5_.bottom = _loc5_.top + §3h§.§`!'§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §3h§.§6!B§ / 2;
         _loc5_.id = §3h§.§?4§;
         _loc3_.§-!M§(_loc5_);
         this.§<!%§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§>[§ != null)
         {
            _loc3_.theme = §>[§;
         }
         this.init(_loc3_);
      }
      
      protected function §<!%§(param1:§;!,§, param2:Boolean) : void
      {
         if(param2)
         {
            this.§53§(param1);
         }
      }
      
      protected function §?;§() : §;!,§
      {
         var _loc1_:§;!,§ = new §;!,§();
         _loc1_.§`K§ = -12;
         return new §;!,§();
      }
      
      protected function §%e§() : Number
      {
         this.§>!G§ ^= this.§>!G§ << 21;
         this.§>!G§ ^= this.§>!G§ >>> 35;
         this.§>!G§ ^= this.§>!G§ << 4;
         return this.§>!G§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §53§(param1:§;!,§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§;v§ = null;
         this.§>!G§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§%e§() * 5;
               (_loc5_ = new §;v§()).x = 30 + _loc3_ * 10 + this.§%e§() * 9;
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
                  _loc5_.angle = 45 - this.§%e§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§%e§() * 3 - _loc3_ * 8;
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
                  _loc5_.angle = this.§%e§() * 360;
               }
               param1.addObject(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      private function §4!3§() : void
      {
      }
      
      public function §"h§() : void
      {
         if(§5!E§.§9t§)
         {
            this.§?z§(this.§<!1§.§9!6§,false);
         }
         this.§?z§(this.§?!G§.§4I§(§9"§.§var§),false);
         this.§?z§(this.§?!G§.§4I§(§9"§.§8D§),true);
         this.§?z§(this.§?!G§.§4I§(§9"§.§[k§),true);
         this.§?z§(this.§+h§.§7!%§,true);
         this.§?z§(this.§1A§.sprite,true);
         this.§?z§(this.§?!G§.§4I§(§9"§.§`z§),true);
         this.§?z§(this.§<!1§.§7!'§,false);
         if(§5!E§.§9t§)
         {
            this.§?z§(this.§<!1§.§#n§,false);
         }
         this.§?z§(this.§?!G§.§4I§(§9"§.§[d§),true);
      }
      
      private function §?z§(param1:Sprite, param2:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(param1);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         param1 /= §5!+§.§!M§;
         param2 /= §5!+§.§!M§;
         _loc3_.x = (param1 / §3h§.levelScale + this.§%v§.§=?§ - §3h§.§?!=§ / §3h§.levelScale) * §^!I§;
         _loc3_.y = (param2 / §3h§.levelScale + this.§%v§.§9!8§ - §3h§.§[T§ / §3h§.levelScale) * §^!I§;
         return _loc3_;
      }
      
      public function box2DToScreen(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / §^!I§ + §3h§.§?!=§ / §3h§.levelScale - this.§%v§.§=?§) * §3h§.levelScale;
         _loc3_.y = (param2 / §^!I§ + §3h§.§[T§ / §3h§.levelScale - this.§%v§.§9!8§) * §3h§.levelScale;
         var _loc4_:Number = Math.max(§5!+§.§!M§,§5!+§.§?!#§);
         _loc3_.x *= _loc4_;
         _loc3_.y *= _loc4_;
         return _loc3_;
      }
      
      public function §5j§(param1:String, param2:Number, param3:Number) : void
      {
         this.§+h§.addObject(param1,param2,param3);
      }
      
      public function §"8§() : void
      {
         if(this.§!y§)
         {
            this.§!y§.visible = true;
            this.§!y§.alpha = 0;
         }
         this.§!!!§ = 0;
      }
      
      public function §[!M§() : void
      {
         this.§-c§ = new §4!P§(Tuner.§1! §,Tuner.§9!"§);
      }
      
      public function §5q§() : void
      {
         this.§-c§ = null;
      }
      
      public function clearLevel() : void
      {
         if(this.§<!1§)
         {
            this.§<!1§.dispose();
            this.§<!1§ = null;
         }
         if(this.§+h§)
         {
            this.§+h§.dispose();
            this.§+h§ = null;
            this.§3!7§ = null;
         }
         if(this.§]u§)
         {
            if(!this.§]u§.§]Z§)
            {
            }
            this.§]u§.clear();
            this.§]u§ = null;
         }
         if(this.§;j§)
         {
            this.§;j§.clear();
            this.§;j§ = null;
         }
         if(this.§1A§)
         {
            this.§1A§.dispose();
            this.§1A§ = null;
         }
         if(this.§%v§)
         {
            this.§%v§.clear();
            this.§%v§ = null;
         }
         if(this.§?!G§)
         {
            this.§?!G§.dispose();
            this.§?!G§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§=!?§ = 0;
         this.§&!?§ = 0;
         this.mReadyToRun = false;
         this.§<!'§ = false;
         this.§!!!§ = Tuner.§]b§;
         if(this.§8!>§)
         {
            (this.§8!>§ as §3!+§).§1=§.x = 0;
            (this.§8!>§ as §3!+§).§1=§.y = 0;
         }
         if(this.§!y§)
         {
            this.§!y§.visible = false;
         }
         this.§"l§ = null;
         this.§<!=§ = null;
         if(this.§#!#§)
         {
            this.§#!#§.removeEventListener(Event.COMPLETE,this.§]j§);
            this.§#!#§.removeEventListener(Event.CANCEL,this.§each §);
         }
         if(this.§;!+§)
         {
            this.§;!+§.removeEventListener(Event.COMPLETE,this.§&4§);
            this.§;!+§.removeEventListener(Event.CANCEL,this.§=!,§);
         }
         this.§5c§();
         if(§2l§.§7K§)
         {
            §2l§.§7K§.color = 0;
         }
         if(this.§+u§)
         {
            this.§+u§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver() : void
      {
      }
      
      public function §;!§() : String
      {
         if(this.§<!=§)
         {
            return this.§<!=§.toString();
         }
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         if(!this.mReadyToRun || !§2l§.§3!?§())
         {
            return 0;
         }
         if(this.§"l§ && this.§"l§.§6-§)
         {
            return this.§@%§(param1,param2,param3);
         }
         return this.updateWithTime(param1,true,param2,param3);
      }
      
      protected function updateWithTime(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         if(this.§50§)
         {
            param1 *= 0.2;
            if(§2l§.§9!'§)
            {
               §2l§.§9!'§.speed = 0.2;
            }
         }
         var _loc5_:Number = 0;
         this.§&!?§ += param1;
         if(param3)
         {
            this.§=!?§ += param1;
            _loc5_ = this.§]u§.§%Y§(this.§=!?§);
            this.§1A§.update(param1,param4);
            this.§=!?§ = _loc5_;
         }
         else
         {
            this.§+h§.§^!E§(param1);
            this.§=!?§ = 0;
         }
         if(param2)
         {
            this.§`R§(param1,_loc5_);
         }
         return param1;
      }
      
      private function §@%§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc5_:Number = NaN;
         var _loc4_:Number = §<! §.§8!N§ * 1000;
         if(this.§"l§)
         {
            param1 *= this.§"l§.speed;
            _loc5_ = this.§&!?§ + param1;
            while(this.§&!?§ + _loc4_ < _loc5_)
            {
               if(this.§&!?§ + _loc4_ > this.§4O§)
               {
                  this.§"l§.step(this);
                  this.§4O§ += _loc4_;
               }
               this.updateWithTime(_loc4_,false,param2,param3);
            }
            if(_loc5_ > this.§4O§ + _loc4_)
            {
               this.§"l§.step(this);
               this.§4O§ += _loc4_;
            }
            if(this.§&!?§ < _loc5_)
            {
               this.updateWithTime(_loc5_ - this.§&!?§,true,param2,param3);
            }
            return param1;
         }
         return this.updateWithTime(_loc4_,true,param2,param3);
      }
      
      private function §`R§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.§<!1§.update(param1);
         this.§+h§.§,A§(param1,param2);
         this.§>U§();
         if(this.§!!!§ < Tuner.§]b§)
         {
            this.§!!!§ += param1;
            _loc3_ = Tuner.§]b§ / 2;
            _loc4_ = (-Math.abs(this.§!!!§ - _loc3_) + _loc3_) * (Tuner.§`d§ / _loc3_);
            if(this.§!y§)
            {
               this.§!y§.alpha = _loc4_;
            }
         }
         else if(this.§!y§)
         {
            this.§!y§.visible = false;
         }
         if(this.§-c§)
         {
            if(!this.§-c§.§if §(this.§%v§,param1))
            {
               this.§5q§();
            }
         }
         this.§%v§.§3#§(param1);
         this.§]u§.§0h§();
         this.§?!G§.update(param1);
      }
      
      public function §3&§(param1:Number) : void
      {
         this.objects.§^!E§(param1 * 1000);
         this.objects.updateLevelObjectsComplete(param1 * 1000);
         this.§0=§();
      }
      
      public function §>U§() : void
      {
         var _loc1_:§&r§ = null;
         if(this.§&!?§ > this.§=2§ + 1000 / 30)
         {
            if(this.§5i§ != null)
            {
               for each(_loc1_ in this.§5i§)
               {
                  _loc1_.addTrail();
               }
            }
            this.§=2§ = this.§&!?§;
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§&r§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.§+h§.isPigsAlive(true))
            {
               _loc2_ = this.§+h§.§";§(true);
               _loc2_.§,q§.mTryToScream = §-$§.§`!,§;
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§+h§.§2!!§());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            if(this.§+h§.isPigsAlive(true))
            {
               _loc2_ = this.§+h§.§";§(true);
               _loc2_.§,q§.mTryToBlink = §-$§.§&&§;
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§+h§.§2!!§());
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §"!E§.§2[§;
         }
         §^!J§.addScore(param1,param2);
         this.§+u§.addScore(param1);
         if(param3 && param1 > 0 && !this.§0§)
         {
            this.§0!@§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §0!@§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §"!E§.§+'§;
         }
         this.§?!G§.addParticle(§"!E§.§#c§,§9"§.§[d§,§"!E§.§2M§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §3T§(param1:§&r§) : void
      {
         if(this.§5i§ == null)
         {
            this.§5i§ = new Array();
         }
         this.§5i§.push(param1);
      }
      
      public function §>_§() : void
      {
         this.§1A§.§>_§();
         this.§+h§.mightyEagleUsed();
         this.§0§ = true;
      }
      
      public function §[!@§(param1:§&r§) : void
      {
         this.§?!G§.§=B§(§9"§.§var§);
         if(this.§5i§.indexOf(param1) >= 0)
         {
            this.§5i§.splice(this.§5i§.indexOf(param1),1);
         }
         if(this.§5i§.length == 0)
         {
            this.§5i§ = null;
         }
      }
      
      public function shootBird(param1:§96§, param2:Number, param3:Number) : void
      {
         this.§3!7§ = this.§+h§.addObject(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
         var _loc4_:Number = param1.name.toUpperCase() == "BIRD_GREEN" ? Number(§7?§.§#k§) : Number(§7?§.§6!K§);
         if(param1.§%G§ > 1)
         {
            this.§3!7§.§-2§(param1.§%G§);
            this.§3!7§.§,q§.§'K§();
         }
         if(param1.§5&§ != 0)
         {
            _loc4_ = param1.§5&§;
         }
         var _loc5_:Number = -_loc4_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc6_:Number = _loc4_ * param2 * Math.sin(param3 / (180 / Math.PI));
         this.§3!7§.§#!%§(new b2Vec2(_loc5_,_loc6_),false,true);
         this.camera.§?!+§(§3h§.set);
         if(this.§<!=§)
         {
            this.§<!=§.shootBird(this.§]u§.§5-§,param1.x,param1.y,param2,param3);
         }
      }
      
      public function activatePowerup() : void
      {
         this.§<!'§ = true;
      }
      
      private function §0=§() : void
      {
         if(!this.§<!'§)
         {
            return;
         }
         this.§<!'§ = false;
         if(this.activeObject is §7!0§ && !(this.activeObject as §7!0§).§!z§)
         {
            if(this.activeObject.activateSpecialPower(this.§"!L§))
            {
               this.§`!A§ = true;
            }
         }
         else
         {
            this.§+h§.§-u§();
         }
         if(this.§<!=§)
         {
            this.§<!=§.§`D§(this.§]u§.§5-§);
         }
      }
      
      public function §'!&§() : void
      {
         this.§+h§.§'!&§();
      }
      
      public function §8<§() : void
      {
         this.§+h§.§'V§();
      }
      
      public function §8$§() : §;!,§
      {
         var _loc1_:§;!,§ = new §;!,§();
         _loc1_.§-!K§ = this.§>!2§.§-!K§;
         _loc1_.§<!,§ = this.§>!2§.§<!,§;
         this.§%v§.§ !Q§(_loc1_);
         this.§+h§.§=!N§(_loc1_);
         this.§1A§.§@!&§(_loc1_);
         _loc1_.theme = this.§<!1§.§%U§();
         return _loc1_;
      }
      
      public function §'@§() : int
      {
         return this.§>!2§.§<!,§;
      }
      
      public function §#A§() : int
      {
         return this.§>!2§.§-!K§;
      }
      
      public function §^t§(param1:int) : void
      {
         this.§>!2§.§<!,§ = param1;
      }
      
      public function §6;§(param1:int) : void
      {
         this.§>!2§.§-!K§ = param1;
      }
      
      public function §=+§(param1:Number, param2:Number) : void
      {
         if(this.§"! §)
         {
            this.§"! §.§3!N§(param1,param2);
         }
         if(this.§%v§)
         {
            this.§%v§.§3#§(0);
         }
      }
      
      public function get §&!L§() : §;!,§
      {
         return this.§>!2§;
      }
      
      public function get §"!L§() : §!m§
      {
         return this.§+h§;
      }
      
      protected function get starling() : §2l§
      {
         return this.§48§;
      }
      
      public function get damageParticleLimit() : int
      {
         return §-9§;
      }
   }
}
