package §9!?§
{
   import § "§.§8!3§;
   import § "§.§8H§;
   import § "§.§91§;
   import § "§.§;4§;
   import § I§.§,!?§;
   import § I§.§8-§;
   import §!!G§.§8!G§;
   import §"§.§3o§;
   import §-'§.§%!$§;
   import §-z§.§0!§;
   import §0!G§.§6V§;
   import §0H§.§-V§;
   import §0H§.§2x§;
   import §10§.§#!4§;
   import §9!2§.§7N§;
   import §9H§.§@M§;
   import §<k§.DisplayObject;
   import §<k§.Sprite;
   import §[+§.§'!6§;
   import §[n§.§%@§;
   import §[n§.§7!@§;
   import §[n§.§?+§;
   import §]7§.§#G§;
   import §`"§.§"e§;
   import §`"§.§&>§;
   import §`"§.§'q§;
   import §`"§.§?!;§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §^]§
   {
      
      public static const §true §:Number = §#!4§.§each §;
      
      public static const §4!!§:Number = §#!4§.§81§;
      
      public static const § u§:Number = 1 / 20;
      
      public static const §]8§:Number = §#!4§.§81§ * § u§;
      
      public static const §&W§:Number = §true § * § u§;
      
      public static const §><§:§%!$§ = new §%!$§(13 - 3);
      
      protected static var §^1§:String = §;4§.§ if§;
       
      
      protected var §+4§:§?!;§;
      
      private var §var §:§"e§;
      
      private var §;!,§:Array = null;
      
      private var §%9§:§3o§;
      
      public var §@R§:§'@§;
      
      private var §<H§:§&r§;
      
      private var §,!E§:§'!6§;
      
      private var §9i§:§%g§;
      
      private var §%!%§:§2x§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §0!,§:Boolean = false;
      
      private var §?3§:Boolean = false;
      
      private var §4!#§:Boolean = false;
      
      public var §#l§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §1f§:Number;
      
      public var §8!A§:Number;
      
      private var §8O§:Number;
      
      public var §]B§:§8H§;
      
      public var §4J§:Boolean = false;
      
      private var §9!>§:§]S§;
      
      private var §7!B§:Sprite;
      
      private var §?I§:§;4§;
      
      private var §5!7§:§8!G§ = null;
      
      private var §2$§:EventDispatcher;
      
      private var §2U§:Array;
      
      private var §[C§:Array;
      
      private var §'!%§:§7N§;
      
      private var § r§:§0!§;
      
      private var §^s§:§?+§;
      
      private var §6!-§:§7!@§;
      
      private var §-U§:§%@§;
      
      private var §14§:§%@§;
      
      private var §'&§:§%@§;
      
      private var § d§:Stage;
      
      private var §7P§:§,B§;
      
      protected var §'^§:§6V§;
      
      protected var §"!>§:§6V§;
      
      protected var §-w§:Number = 0.0;
      
      protected var § ;§:String;
      
      private var §0z§:Boolean;
      
      private var § [§:Boolean;
      
      public var §1S§:Boolean;
      
      protected var §?!"§:uint = 1.417339207E9;
      
      public function §^]§(param1:Stage)
      {
         this.§[C§ = [];
         super();
         this.§2$§ = new EventDispatcher();
         this.§]B§ = new §8H§();
         this.§ d§ = param1;
         this.§^s§ = §?+§.§+S§;
         this.§6!-§ = this.initAnimationManager(this.§^s§);
         this.§-U§ = this.initThemeGraphicsManager();
         this.§14§ = this.get();
         this.§'&§ = this.§[!D§();
         var _loc2_:Stage3D = param1.stage3Ds[0];
         this.§'!%§ = new §7N§(§]S§,param1,new Rectangle(0,0,§#!4§.§each §,§#!4§.§81§),_loc2_);
         §#!4§.§='§.addEventListener(Event.ENTER_FRAME,this.§'!%§.onEnterFrame);
         _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§=7§,false,0,true);
         this.§'!%§.§]l§ = false;
         this.§'!%§.enableErrorChecking = false;
         this.§'!%§.§^O§ = 2;
         this.§'!%§.§ !&§();
      }
      
      public static function §]+§(param1:§"e§, param2:§"e§) : Number
      {
         var _loc3_:Number = param1.§`!!§ - param2.§`!!§;
         var _loc4_:Number = param1.§8t§ - param2.§8t§;
         return §6q§(_loc3_,_loc4_);
      }
      
      public static function §6q§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         if(!this.§7!B§ && this.§9!@§)
         {
            this.§7!B§ = this.§9!>§.§`!D§;
         }
         return this.§7!B§;
      }
      
      public function get §9!@§() : Sprite
      {
         if(!this.§9!>§)
         {
            this.§9!>§ = this.§'!%§.§4!9§ as §]S§;
            this.§9!>§.§>!'§ = false;
         }
         return this.§9!>§;
      }
      
      private function get §!!F§() : DisplayObject
      {
         if(this.§9!@§)
         {
            return (this.§9!@§ as §]S§).§!!F§;
         }
         return null;
      }
      
      public function get §[y§() : §7!@§
      {
         return this.§6!-§;
      }
      
      public function get textureManager() : §?+§
      {
         return this.§^s§;
      }
      
      public function get camera() : §'!6§
      {
         return this.§,!E§;
      }
      
      public function get objects() : §?!;§
      {
         return this.§+4§;
      }
      
      public function get particles() : §2x§
      {
         return this.§%!%§;
      }
      
      public function get background() : §3o§
      {
         return this.§%9§;
      }
      
      public function get slingshot() : §%g§
      {
         return this.§9i§;
      }
      
      public function get activeObject() : §"e§
      {
         return this.§var §;
      }
      
      public function get §2X§() : §&r§
      {
         return this.§<H§;
      }
      
      public function get stage() : Stage
      {
         return this.§ d§;
      }
      
      public function get §7'§() : §%@§
      {
         return this.§'&§;
      }
      
      protected function get §0!4§() : §%@§
      {
         return this.§-U§;
      }
      
      public function set activeObject(param1:§"e§) : void
      {
         this.§var § = param1;
      }
      
      public function set §-!<§(param1:Boolean) : void
      {
         this.§ [§ = param1;
      }
      
      public function clear() : void
      {
         if(this.§ r§)
         {
            this.§ r§.dispose();
         }
         if(this.§^s§)
         {
            this.§^s§.dispose();
         }
         if(this.§-U§ && this.§-U§.textureManager)
         {
            this.§-U§.textureManager.dispose();
         }
         if(this.§'&§ && this.§'&§.textureManager)
         {
            this.§'&§.textureManager.dispose();
         }
         if(this.§'!%§)
         {
            this.§'!%§.dispose();
         }
      }
      
      protected function initThemeGraphicsManager() : §%@§
      {
         return null;
      }
      
      protected function get() : §%@§
      {
         return null;
      }
      
      protected function §[!D§() : §%@§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§?+§) : §7!@§
      {
         return new §7!@§(param1);
      }
      
      public function §<[§(param1:Boolean) : void
      {
         if(§7N§.§17§)
         {
            if(param1)
            {
               §7N§.§17§.start();
            }
            else
            {
               §7N§.§17§.stop();
               §7N§.§17§.color = 0;
            }
         }
      }
      
      public function § ,§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function §>=§(param1:§8!G§) : void
      {
         if(this.§5!7§ != null)
         {
            this.§5!7§.removeEventListeners();
         }
         this.§5!7§ = param1;
         if(this.mReadyToRun)
         {
            this.§5!7§.addEventListeners();
         }
      }
      
      public function §+!-§() : §6V§
      {
         return this.§'^§;
      }
      
      public function §@^§(param1:§0!§, param2:Array, param3:Function) : void
      {
         this.§ r§ = param1;
         var _loc4_:int = this.§ r§.§?!2§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§^s§.§,J§(this.§ r§.§46§(_loc5_));
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§2$§.addEventListener(Event.INIT,param3);
            this.§[C§.push(param3);
         }
         if(this.§9"§(param2))
         {
            this.§3X§();
         }
      }
      
      private function §9"§(param1:Array) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.§^s§.§6M§())
         {
            _loc2_ = this.§^s§.§-<§ / 1000;
            _loc3_ = this.§^s§.§#t§ / 1000;
            §@M§.log("\n\nMain texture manager memory usage:\n   textures " + _loc2_ + " kilobytes\n   bitmaps " + _loc3_ + " kilobytes\n\n");
            this.initializeAnimations(param1);
            return true;
         }
         this.§2U§ = param1.concat();
         return false;
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         this.§6!-§.initializeAnimations(param1);
      }
      
      private function §=7§(param1:Event) : void
      {
         this.§^s§.§-C§();
         if(this.§0!4§ && this.§0!4§.textureManager)
         {
            this.§0!4§.textureManager.§-C§();
         }
         if(this.§7'§ && this.§7'§.textureManager)
         {
            this.§7'§.textureManager.§-C§();
         }
         if(this.§2U§)
         {
            this.§9"§(this.§2U§);
            this.§2U§ = null;
            this.§3X§();
         }
         if(this.§5!7§ != null && this.mReadyToRun)
         {
            this.§5!7§.addEventListeners();
         }
         if(this.§-U§)
         {
            this.§-U§.§6M§();
         }
         if(this.§'&§)
         {
            if(this.§'&§.textureManager)
            {
               this.§'&§.textureManager.§-C§();
               this.§'&§.§6M§();
            }
         }
      }
      
      private function §3X§() : void
      {
         this.§2$§.dispatchEvent(new Event(Event.INIT));
         this.§;?§();
      }
      
      private function §;?§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§[C§)
         {
            this.§2$§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§[C§ = [];
      }
      
      public function init(param1:§;4§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§<H§ = new §&r§(this,param1);
         this.§,!E§ = this.initLevelCamera(param1);
         this.§1f§ = 0;
         this.§8!A§ = 0;
         this.§8O§ = 0;
         this.§0z§ = false;
         this.mReadyToRun = false;
         this.§0!,§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         §^1§ = param1.theme;
         this.§?I§ = param1;
         this.§?3§ = this.§5@§(param1.theme);
         this.§4!#§ = this.§!!C§(param1.theme);
         if(this.§?3§ && this.§4!#§)
         {
            this.initialize(param1);
         }
         else
         {
            this.§1!F§(param1.theme);
         }
         this.§!!D§();
         §%!+§.init();
      }
      
      protected function §!!D§() : void
      {
         this.§'^§ = new §6V§(§8!3§.§-[§);
      }
      
      protected function §5@§(param1:String) : Boolean
      {
         if(this.§-U§)
         {
            return false;
         }
         return true;
      }
      
      protected function §!!C§(param1:String) : Boolean
      {
         var _loc2_:§8-§ = null;
         if(this.§14§)
         {
            _loc2_ = §,!?§.§'t§(param1);
            if(_loc2_)
            {
               if(_loc2_.§<E§ && !this.§14§.§'!!§(_loc2_.§<E§))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function §1!F§(param1:String) : void
      {
         var _loc2_:§8-§ = null;
         if(this.§-U§ && !this.§5@§(param1))
         {
            this.§-U§.removeEventListener(Event.COMPLETE,this.§ !,§);
            this.§-U§.removeEventListener(Event.CANCEL,this.§6!1§);
            this.§-U§.addEventListener(Event.COMPLETE,this.§ !,§);
            this.§-U§.addEventListener(Event.CANCEL,this.§6!1§);
            this.§-U§.§3_§(param1);
         }
         if(this.§14§ && !this.§!!C§(param1))
         {
            this.§14§.removeEventListener(Event.COMPLETE,this.§#!?§);
            this.§14§.removeEventListener(Event.CANCEL,this.§2!G§);
            this.§14§.addEventListener(Event.COMPLETE,this.§#!?§);
            this.§14§.addEventListener(Event.CANCEL,this.§2!G§);
            _loc2_ = §,!?§.§'t§(param1);
            if(_loc2_)
            {
               this.§14§.§3_§(_loc2_.§<E§);
            }
         }
      }
      
      private function § !,§(param1:Event) : void
      {
         this.§-U§.removeEventListener(Event.COMPLETE,this.§ !,§);
         this.§-U§.removeEventListener(Event.CANCEL,this.§6!1§);
         this.§?3§ = true;
         if(this.§?3§ && this.§4!#§)
         {
            this.initialize(this.§?I§);
         }
      }
      
      private function §6!1§(param1:Event) : void
      {
         this.§-U§.removeEventListener(Event.COMPLETE,this.§ !,§);
         this.§-U§.removeEventListener(Event.CANCEL,this.§6!1§);
         this.§0!,§ = true;
      }
      
      private function §#!?§(param1:Event) : void
      {
         this.§-U§.removeEventListener(Event.COMPLETE,this.§#!?§);
         this.§-U§.removeEventListener(Event.CANCEL,this.§2!G§);
         this.§4!#§ = true;
         if(this.§?3§ && this.§4!#§)
         {
            this.initialize(this.§?I§);
         }
      }
      
      private function §2!G§(param1:Event) : void
      {
         this.§-U§.removeEventListener(Event.COMPLETE,this.§#!?§);
         this.§-U§.removeEventListener(Event.CANCEL,this.§2!G§);
         this.§4!#§ = true;
         if(this.§?3§ && this.§4!#§)
         {
            this.initialize(this.§?I§);
         }
      }
      
      public function get backgroundTextureManager() : §?+§
      {
         return this.§^s§;
      }
      
      private function initialize(param1:§;4§) : void
      {
         this.§ [§ = false;
         this.§1S§ = false;
         if(§7N§.§<Y§)
         {
            §7N§.§<Y§.speed = 1;
         }
         this.§@R§ = new §'@§(this);
         this.§%9§ = this.initLevelBackground(param1.theme,this.§<H§.§;!#§ / § u§,this.backgroundTextureManager,this.§,!E§.§7R§());
         this.§%9§.§>R§(§#!4§.§9!A§());
         this.§+4§ = this.initLevelObjectManager(param1);
         this.§9i§ = this.initLevelSlingshot(param1);
         this.§%!%§ = this.§"a§(this.§6!-§,this.§^s§);
         this.§,!E§.init();
         this.§"0§();
         this.§%"§();
         this.mReadyToRun = true;
         if(this.§5!7§)
         {
            this.§5!7§.addEventListeners();
         }
      }
      
      protected function §%"§() : void
      {
         if(this.§ ;§)
         {
            this.§"!>§ = §6V§.initialize(this.§ ;§);
            this.§"!>§.speed = 1;
            this.§"!>§.play();
            this.§-w§ = -1000;
            this.§ ;§ = null;
         }
      }
      
      public function §20§(param1:String) : void
      {
         this.§ ;§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§"!>§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§"!>§)
         {
            if(param1)
            {
               this.§"!>§.speed = Math.min(this.§"!>§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§"!>§.speed = Math.max(this.§"!>§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§"!>§)
         {
            this.§"!>§.speed = 1;
         }
      }
      
      protected function initLevelObjectManager(param1:§;4§) : §?!;§
      {
         return new §?!;§(this,param1,new Sprite());
      }
      
      protected function initLevelCamera(param1:§;4§) : §'!6§
      {
         return new §'!6§(this,param1);
      }
      
      protected function initLevelBackground(param1:String, param2:Number, param3:§?+§, param4:Number) : §3o§
      {
         return new §3o§(param1,param2,param3,param4);
      }
      
      protected function initLevelSlingshot(param1:§;4§) : §%g§
      {
         return new §%g§(this,param1,new Sprite());
      }
      
      protected function §"a§(param1:§7!@§, param2:§?+§) : §2x§
      {
         return new §2x§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§;4§ = new §;4§();
         _loc3_.§%q§ = -12;
         var _loc4_:§91§;
         (_loc4_ = new §91§()).left = 0;
         _loc4_.top = -§'!6§.§9J§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §'!6§.§9J§;
         _loc4_.right = _loc4_.left + §'!6§.§0B§;
         _loc4_.y = -13.929;
         _loc4_.x = §'!6§.§0B§;
         _loc4_.id = §'!6§.§use§;
         _loc3_.§&!@§(_loc4_);
         var _loc5_:§91§;
         (_loc5_ = new §91§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §'!6§.§0B§;
         _loc5_.bottom = _loc5_.top + §'!6§.§9J§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §'!6§.§0B§ / 2;
         _loc5_.id = §'!6§.§=!6§;
         _loc3_.§&!@§(_loc5_);
         if(param2)
         {
            this.§%!2§(_loc3_);
         }
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§^1§ != null)
         {
            _loc3_.theme = §^1§;
         }
         this.init(_loc3_);
      }
      
      protected function §!P§() : Number
      {
         this.§?!"§ ^= this.§?!"§ << 21;
         this.§?!"§ ^= this.§?!"§ >>> 35;
         this.§?!"§ ^= this.§?!"§ << 4;
         return this.§?!"§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §%!2§(param1:§;4§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§#G§ = null;
         this.§?!"§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§!P§() * 5;
               (_loc5_ = new §#G§()).x = 30 + _loc3_ * 10 + this.§!P§() * 9;
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
                  _loc5_.angle = 45 - this.§!P§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§!P§() * 3 - _loc3_ * 8;
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
                  _loc5_.angle = this.§!P§() * 360;
               }
               param1.addObject(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      private function §+!9§() : void
      {
      }
      
      public function §"0§() : void
      {
         if(§3o§.§'9§)
         {
            this.§>!9§(this.§%9§.§-x§,false);
         }
         this.§>!9§(this.§%!%§.§+?§(§2x§.§?!'§),false);
         this.§>!9§(this.§%!%§.§+?§(§2x§.§+u§),true);
         this.§>!9§(this.§%!%§.§+?§(§2x§.§"s§),true);
         this.§>!9§(this.§+4§.§@u§,true);
         this.§>!9§(this.§9i§.sprite,true);
         this.§>!9§(this.§%!%§.§+?§(§2x§.§3!6§),true);
         this.§>!9§(this.§%9§.§^!E§,false);
         if(§3o§.§'9§)
         {
            this.§>!9§(this.§%9§.§-L§,false);
         }
         this.§>!9§(this.§%!%§.§+?§(§2x§.§-!>§),true);
         if(!§'@§.§,M§)
         {
         }
      }
      
      private function §>!9§(param1:Sprite, param2:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(param1);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         param1 /= §#!4§.§+!8§;
         param2 /= §#!4§.§+!8§;
         _loc3_.x = (param1 / §'!6§.§#u§ + this.§,!E§.§#7§ - §'!6§.§9]§ / §'!6§.§#u§) * § u§;
         _loc3_.y = (param2 / §'!6§.§#u§ + this.§,!E§.§4>§ - §'!6§.§<u§ / §'!6§.§#u§) * § u§;
         return _loc3_;
      }
      
      public function §;X§(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / § u§ + §'!6§.§9]§ / §'!6§.§#u§ - this.§,!E§.§#7§) * §'!6§.§#u§;
         _loc3_.y = (param2 / § u§ + §'!6§.§<u§ / §'!6§.§#u§ - this.§,!E§.§4>§) * §'!6§.§#u§;
         var _loc4_:Number = Math.max(§#!4§.§+!8§,§#!4§.§51§);
         _loc3_.x *= _loc4_;
         _loc3_.y *= _loc4_;
         return _loc3_;
      }
      
      public function §1j§(param1:String, param2:Number, param3:Number) : void
      {
         this.§+4§.addObject(param1,param2,param3);
      }
      
      public function §@B§() : void
      {
         if(this.§!!F§)
         {
            this.§!!F§.visible = true;
            this.§!!F§.alpha = 0;
         }
         this.§#l§ = 0;
      }
      
      public function §get §() : void
      {
         this.§7P§ = new §,B§(§,a§.§%B§,§,a§.§,O§);
      }
      
      public function §<n§() : void
      {
         this.§7P§ = null;
      }
      
      public function clearLevel() : void
      {
         if(this.§%9§)
         {
            this.§%9§.dispose();
            this.§%9§ = null;
         }
         if(this.§+4§)
         {
            this.§+4§.dispose();
            this.§+4§ = null;
            this.§var § = null;
         }
         if(this.§@R§)
         {
            if(!this.§@R§.§[?§)
            {
            }
            this.§@R§.clear();
            this.§@R§ = null;
         }
         if(this.§<H§)
         {
            this.§<H§.clear();
            this.§<H§ = null;
         }
         if(this.§9i§)
         {
            this.§9i§.dispose();
            this.§9i§ = null;
         }
         if(this.§,!E§)
         {
            this.§,!E§.clear();
            this.§,!E§ = null;
         }
         if(this.§%!%§)
         {
            this.§%!%§.dispose();
            this.§%!%§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§1f§ = 0;
         this.§8!A§ = 0;
         this.mReadyToRun = false;
         this.§0z§ = false;
         this.§#l§ = §,a§.§5!1§;
         if(this.§9!@§)
         {
            (this.§9!@§ as §]S§).§0!3§.x = 0;
            (this.§9!@§ as §]S§).§0!3§.y = 0;
         }
         if(this.§!!F§)
         {
            this.§!!F§.visible = false;
         }
         this.§"!>§ = null;
         this.§'^§ = null;
         if(this.§-U§)
         {
            this.§-U§.removeEventListener(Event.COMPLETE,this.§ !,§);
            this.§-U§.removeEventListener(Event.CANCEL,this.§6!1§);
         }
         if(this.§14§)
         {
            this.§14§.removeEventListener(Event.COMPLETE,this.§#!?§);
            this.§14§.removeEventListener(Event.CANCEL,this.§2!G§);
         }
         this.§;?§();
         if(§7N§.§17§)
         {
            §7N§.§17§.color = 0;
         }
         if(this.§5!7§)
         {
            this.§5!7§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver() : void
      {
      }
      
      public function §>`§() : String
      {
         if(this.§'^§)
         {
            return this.§'^§.toString();
         }
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         if(!this.mReadyToRun || !§7N§.§&Z§())
         {
            return 0;
         }
         if(this.§"!>§ && this.§"!>§.§,N§)
         {
            return this.§7t§(param1,param2,param3);
         }
         return this.§;h§(param1,true,param2,param3);
      }
      
      protected function §;h§(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         if(this.§ [§)
         {
            param1 *= 0.2;
            if(§7N§.§<Y§)
            {
               §7N§.§<Y§.speed = 0.2;
            }
         }
         var _loc5_:Number = 0;
         this.§8!A§ += param1;
         if(param3)
         {
            this.§1f§ += param1;
            _loc5_ = this.§@R§.§4b§(this.§1f§);
            this.§9i§.update(param1,param4);
            this.§1f§ = _loc5_;
         }
         else
         {
            this.§+4§.§+t§();
            this.§1f§ = 0;
         }
         if(param2)
         {
            this.§'!§(param1,_loc5_);
         }
         return param1;
      }
      
      private function §7t§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc5_:Number = NaN;
         var _loc4_:Number = §'@§.§!`§ * 1000;
         if(this.§"!>§)
         {
            param1 *= this.§"!>§.speed;
            _loc5_ = this.§8!A§ + param1;
            while(this.§8!A§ + _loc4_ < _loc5_)
            {
               if(this.§8!A§ + _loc4_ > this.§-w§)
               {
                  this.§"!>§.step(this);
                  this.§-w§ += _loc4_;
               }
               this.§;h§(_loc4_,false,param2,param3);
            }
            if(_loc5_ > this.§-w§ + _loc4_)
            {
               this.§"!>§.step(this);
               this.§-w§ += _loc4_;
            }
            if(this.§8!A§ < _loc5_)
            {
               this.§;h§(_loc5_ - this.§8!A§,true,param2,param3);
            }
            return param1;
         }
         return this.§;h§(_loc4_,true,param2,param3);
      }
      
      private function §'!§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.§%9§.update(param1);
         this.§+4§.§,K§(param1,param2);
         this.§#!>§();
         if(this.§#l§ < §,a§.§5!1§)
         {
            this.§#l§ += param1;
            _loc3_ = §,a§.§5!1§ / 2;
            _loc4_ = (-Math.abs(this.§#l§ - _loc3_) + _loc3_) * (§,a§.§!J§ / _loc3_);
            if(this.§!!F§)
            {
               this.§!!F§.alpha = _loc4_;
            }
         }
         else if(this.§!!F§)
         {
            this.§!!F§.visible = false;
         }
         if(this.§7P§)
         {
            if(!this.§7P§.§`N§(this.§,!E§,param1))
            {
               this.§<n§();
            }
         }
         this.§,!E§.§`!?§(param1);
         this.§@R§.§8!"§();
         this.§%!%§.update(param1);
      }
      
      public function §0A§(param1:Number) : void
      {
         this.objects.§+t§();
         this.objects.§9!§(param1 * 1000);
         this.§2Q§();
      }
      
      public function §#!>§() : void
      {
         var _loc1_:§"e§ = null;
         if(this.§8!A§ > this.§8O§ + 1000 / 30)
         {
            if(this.§;!,§ != null)
            {
               for each(_loc1_ in this.§;!,§)
               {
                  _loc1_.addTrail();
               }
            }
            this.§8O§ = this.§8!A§;
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§"e§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.§+4§.isPigsAlive(true))
            {
               _loc2_ = this.§+4§.§1'§(true);
               _loc2_.§>b§.mTryToScream = §'q§.§3P§;
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§+4§.§@X§());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            if(this.§+4§.isPigsAlive(true))
            {
               _loc2_ = this.§+4§.§1'§(true);
               _loc2_.§>b§.mTryToBlink = §'q§.§5N§;
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§+4§.§@X§());
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §-V§.§&!9§;
         }
         §%!+§.addScore(param1,param2);
         this.§5!7§.addScore(param1);
         if(param3 && param1 > 0 && !this.§1S§)
         {
            this.§8b§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §8b§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §-V§.§-A§;
         }
         this.§%!%§.§]1§(§-V§.§ F§,§2x§.§-!>§,§-V§.§ T§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §[!F§(param1:§"e§) : void
      {
         if(this.§;!,§ == null)
         {
            this.§;!,§ = new Array();
         }
         this.§;!,§.push(param1);
      }
      
      public function §`!'§() : void
      {
         this.§9i§.§`!'§();
         this.§+4§.mSardineCanAdded = true;
         this.§1S§ = true;
      }
      
      public function §3!=§(param1:§"e§) : void
      {
         this.§%!%§.§@%§(§2x§.§?!'§);
         if(this.§;!,§.indexOf(param1) >= 0)
         {
            this.§;!,§.splice(this.§;!,§.indexOf(param1),1);
         }
         if(this.§;!,§.length == 0)
         {
            this.§;!,§ = null;
         }
      }
      
      public function §<p§(param1:§#1§, param2:Number, param3:Number) : void
      {
         this.§var § = this.§+4§.addObject(param1.name,param1.mX,param1.mY,0,true,false,true,param1.scale);
         var _loc4_:Number = param1.name.toUpperCase() == "BIRD_GREEN" ? Number(§%g§.§&h§) : Number(§%g§.§8#§);
         if(param1.§>F§ > 1)
         {
            this.§var §.§2S§(param1.§>F§);
            this.§var §.§>b§.§<o§();
         }
         if(param1.§,4§ != 0)
         {
            _loc4_ = param1.§,4§;
         }
         var _loc5_:Number = -_loc4_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc6_:Number = _loc4_ * param2 * Math.sin(param3 / (180 / Math.PI));
         this.§var §.§5!@§(new b2Vec2(_loc5_,_loc6_),false,true);
         this.camera.§ H§(§'!6§.§31§);
         if(this.§'^§)
         {
            this.§'^§.§<p§(this.§@R§.§5!?§,param1.mX,param1.mY,param2,param3);
         }
      }
      
      public function activatePowerup() : void
      {
         this.§0z§ = true;
      }
      
      private function §2Q§() : void
      {
         if(!this.§0z§)
         {
            return;
         }
         this.§0z§ = false;
         if(this.activeObject is §&>§ && !(this.activeObject as §&>§).§->§)
         {
            if(this.activeObject.activateSpecialPower(this.§ y§))
            {
               this.§4J§ = true;
            }
         }
         else
         {
            this.§+4§.§7r§();
         }
         if(this.§'^§)
         {
            this.§'^§.§9!<§(this.§@R§.§5!?§);
         }
      }
      
      public function §0!0§() : void
      {
         this.§+4§.§0!0§();
      }
      
      public function §3Q§() : void
      {
         this.§+4§.§^F§();
      }
      
      public function §finally§() : §;4§
      {
         var _loc1_:§;4§ = new §;4§();
         _loc1_.§%!!§ = this.§?I§.§%!!§;
         _loc1_.§]N§ = this.§?I§.§]N§;
         this.§,!E§.§`6§(_loc1_);
         this.§+4§.§!!&§(_loc1_);
         this.§9i§.§`E§(_loc1_);
         _loc1_.theme = this.§%9§.§>>§();
         return _loc1_;
      }
      
      public function §8K§() : int
      {
         return this.§?I§.§]N§;
      }
      
      public function §&$§() : int
      {
         return this.§?I§.§%!!§;
      }
      
      public function §0n§(param1:int) : void
      {
         this.§?I§.§]N§ = param1;
      }
      
      public function §2t§(param1:int) : void
      {
         this.§?I§.§%!!§ = param1;
      }
      
      public function §'m§(param1:Number, param2:Number) : void
      {
         if(this.§9!>§)
         {
            this.§9!>§.§`2§(param1,param2);
         }
         if(this.§,!E§)
         {
            this.§,!E§.§`!?§(0);
         }
      }
      
      public function get §66§() : §;4§
      {
         return this.§?I§;
      }
      
      public function get § y§() : §?!;§
      {
         return this.§+4§;
      }
      
      protected function get starling() : §7N§
      {
         return this.§'!%§;
      }
   }
}
