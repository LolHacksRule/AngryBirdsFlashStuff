package §?b§
{
   import §!!>§.§!8§;
   import §!!>§.§#C§;
   import §!+§.§#-§;
   import §!+§.§=H§;
   import §!+§.§>G§;
   import §!+§.override;
   import §#!;§.§;T§;
   import §'!E§.§]g§;
   import §'k§.§ >§;
   import §'k§.§#k§;
   import §'k§.§;[§;
   import §+!"§.§5!<§;
   import §+n§.§2_§;
   import §0!5§.include;
   import §4!H§.§?_§;
   import §5!%§.§%p§;
   import §5!%§.§`Z§;
   import §5H§.§[k§;
   import §6!'§.§2!<§;
   import §6J§.§&!;§;
   import §6J§.§5j§;
   import §6J§.§]<§;
   import §6J§.§^0§;
   import §9W§.DisplayObject;
   import §9W§.Sprite;
   import §@!!§.§=_§;
   import §@!H§.§!!1§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §7!,§
   {
      
      private static const §0a§:int = 20;
      
      public static const §[>§:Number = §[k§.§>§;
      
      public static const §14§:Number = §[k§.§%i§;
      
      public static const § '§:Number = 1 / 20;
      
      public static const §-4§:Number = §[k§.§%i§ * § '§;
      
      public static const §]f§:Number = §[>§ * § '§;
      
      public static const §6s§:§?_§ = new §?_§(13 - 3);
      
      protected static var §`A§:String = §&!;§.§7D§;
       
      
      protected var §]K§:§#-§;
      
      private var § !6§:§>G§;
      
      private var §@E§:Array = null;
      
      protected var §+'§:§2!<§;
      
      public var §^<§:§[A§;
      
      protected var §3w§:§9H§;
      
      protected var §%U§:§=_§;
      
      protected var §3l§:§4K§;
      
      protected var §7!4§:§#C§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §+!'§:Boolean = false;
      
      protected var §?&§:Boolean = false;
      
      protected var §]!F§:Boolean = false;
      
      public var §%+§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §2R§:Number;
      
      public var §2!,§:Number;
      
      private var §'Y§:Number;
      
      public var §"U§:§^0§;
      
      public var §]L§:Boolean = false;
      
      private var §26§:§32§;
      
      private var §%9§:Sprite;
      
      protected var §!!5§:§&!;§;
      
      protected var §!0§:§!!1§ = null;
      
      private var §[#§:EventDispatcher;
      
      private var §4!§:Array;
      
      private var §?!<§:Array;
      
      protected var §'=§:§;T§;
      
      private var §%!§:include;
      
      protected var §`!8§:§ >§;
      
      protected var §!m§:§#k§;
      
      private var §!!§:§;[§;
      
      private var §8q§:§;[§;
      
      private var §6v§:§;[§;
      
      private var §%E§:Stage;
      
      private var §1T§:§%T§;
      
      protected var §;!A§:§2_§;
      
      protected var §0W§:§2_§;
      
      protected var §0J§:Number = 0.0;
      
      protected var §&5§:String;
      
      private var §"p§:Boolean;
      
      protected var §`!1§:Boolean;
      
      protected var §]R§:uint = 1.417339207E9;
      
      public var § §:Boolean;
      
      public function §7!,§(param1:Stage)
      {
         this.§?!<§ = [];
         super();
         this.§[#§ = new EventDispatcher();
         this.§"U§ = new §^0§();
         this.§%E§ = param1;
         this.§`!8§ = § >§.§^n§;
         this.§!m§ = this.initAnimationManager(this.§`!8§);
         this.§!!§ = this.initThemeGraphicsManager();
         this.§8q§ = this.§2y§();
         this.§6v§ = this.§ var§();
         var _loc2_:Stage3D = param1.stage3Ds[0];
         this.§'=§ = new §;T§(§32§,param1,new Rectangle(0,0,§[k§.§>§,§[k§.§%i§),_loc2_);
         §[k§.§;!+§.addEventListener(Event.ENTER_FRAME,this.§'=§.onEnterFrame);
         _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§'!0§,false,0,true);
         this.§'=§.§ 4§ = false;
         this.§'=§.enableErrorChecking = false;
         this.§'=§.§&2§ = 2;
         this.§'=§.§3k§();
      }
      
      public static function §1-§(param1:§>G§, param2:§>G§) : Number
      {
         var _loc3_:Number = param1.§>t§ - param2.§>t§;
         var _loc4_:Number = param1.§0!4§ - param2.§0!4§;
         return §!!C§(_loc3_,_loc4_);
      }
      
      public static function §!!C§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         if(!this.§%9§ && this.§;1§)
         {
            this.§%9§ = this.§26§.§>s§;
         }
         return this.§%9§;
      }
      
      public function get §;1§() : Sprite
      {
         if(!this.§26§)
         {
            this.§26§ = this.§'=§.§ !D§ as §32§;
            this.§26§.§=O§ = false;
         }
         return this.§26§;
      }
      
      private function get §"`§() : DisplayObject
      {
         if(this.§;1§)
         {
            return (this.§;1§ as §32§).§"`§;
         }
         return null;
      }
      
      public function get §!`§() : §#k§
      {
         return this.§!m§;
      }
      
      public function get textureManager() : § >§
      {
         return this.§`!8§;
      }
      
      public function get camera() : §=_§
      {
         return this.§%U§;
      }
      
      public function get objects() : §#-§
      {
         return this.§]K§;
      }
      
      public function get particles() : §#C§
      {
         return this.§7!4§;
      }
      
      public function get background() : §2!<§
      {
         return this.§+'§;
      }
      
      public function get slingshot() : §4K§
      {
         return this.§3l§;
      }
      
      public function get activeObject() : §>G§
      {
         return this.§ !6§;
      }
      
      public function get §+4§() : §9H§
      {
         return this.§3w§;
      }
      
      public function get stage() : Stage
      {
         return this.§%E§;
      }
      
      public function get §6_§() : §;[§
      {
         return this.§6v§;
      }
      
      protected function get §1!B§() : §;[§
      {
         return this.§!!§;
      }
      
      public function set activeObject(param1:§>G§) : void
      {
         this.§ !6§ = param1;
      }
      
      public function set §`u§(param1:Boolean) : void
      {
         this.§`!1§ = param1;
      }
      
      public function clear() : void
      {
         if(this.§%!§)
         {
            this.§%!§.dispose();
         }
         if(this.§`!8§)
         {
            this.§`!8§.dispose();
         }
         if(this.§!!§ && this.§!!§.textureManager)
         {
            this.§!!§.textureManager.dispose();
         }
         if(this.§6v§ && this.§6v§.textureManager)
         {
            this.§6v§.textureManager.dispose();
         }
         if(this.§'=§)
         {
            this.§'=§.dispose();
         }
      }
      
      protected function initThemeGraphicsManager() : §;[§
      {
         return null;
      }
      
      protected function §2y§() : §;[§
      {
         return null;
      }
      
      protected function § var§() : §;[§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§ >§) : §#k§
      {
         return new §#k§(param1);
      }
      
      public function §`!G§(param1:Boolean) : void
      {
         if(§;T§.§,H§)
         {
            if(param1)
            {
               §;T§.§,H§.start();
            }
            else
            {
               §;T§.§,H§.stop();
               §;T§.§,H§.color = 0;
            }
         }
      }
      
      public function §%7§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function §^L§(param1:§!!1§) : void
      {
         if(this.§!0§ != null)
         {
            this.§!0§.removeEventListeners();
         }
         this.§!0§ = param1;
         if(this.mReadyToRun)
         {
            this.§!0§.addEventListeners();
         }
      }
      
      public function §#E§() : §2_§
      {
         return this.§;!A§;
      }
      
      public function § <§(param1:include, param2:Array, param3:Function) : void
      {
         this.§%!§ = param1;
         var _loc4_:int = this.§%!§.§5<§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§`!8§.§3q§(this.§%!§.§@!"§(_loc5_));
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§[#§.addEventListener(Event.INIT,param3);
            this.§?!<§.push(param3);
         }
         if(this.§<H§(param2))
         {
            this.§;D§();
         }
      }
      
      private function §<H§(param1:Array) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.§`!8§.§]!A§())
         {
            _loc2_ = this.§`!8§.§!!+§ / 1000;
            _loc3_ = this.§`!8§.§??§ / 1000;
            §5!<§.log("\n\nMain texture manager memory usage:\n   textures " + _loc2_ + " kilobytes\n   bitmaps " + _loc3_ + " kilobytes\n\n");
            this.initializeAnimations(param1);
            return true;
         }
         this.§4!§ = param1.concat();
         return false;
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         this.§!m§.initializeAnimations(param1);
      }
      
      private function §'!0§(param1:Event) : void
      {
         this.§`!8§.§!! §();
         if(this.§1!B§ && this.§1!B§.textureManager)
         {
            this.§1!B§.textureManager.§!! §();
         }
         if(this.§6_§ && this.§6_§.textureManager)
         {
            this.§6_§.textureManager.§!! §();
         }
         if(this.§4!§)
         {
            this.§<H§(this.§4!§);
            this.§4!§ = null;
            this.§;D§();
         }
         if(this.§!0§ != null && this.mReadyToRun)
         {
            this.§!0§.addEventListeners();
         }
         if(this.§!!§)
         {
            this.§!!§.§]!A§();
         }
         if(this.§6v§)
         {
            if(this.§6v§.textureManager)
            {
               this.§6v§.textureManager.§!! §();
               this.§6v§.§]!A§();
            }
         }
      }
      
      private function §;D§() : void
      {
         this.§[#§.dispatchEvent(new Event(Event.INIT));
         this.§>d§();
      }
      
      private function §>d§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§?!<§)
         {
            this.§[#§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§?!<§ = [];
      }
      
      public function init(param1:§&!;§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§3w§ = new §9H§(this,param1);
         this.§%U§ = this.initLevelCamera(param1);
         this.§2R§ = 0;
         this.§2!,§ = 0;
         this.§'Y§ = 0;
         this.§"p§ = false;
         this.mReadyToRun = false;
         this.§+!'§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         §`A§ = param1.theme;
         this.§!!5§ = param1;
         this.§?&§ = this.§@"§(param1.theme);
         this.§]!F§ = this.§35§(param1.theme);
         if(this.§?&§ && this.§]!F§)
         {
            this.initialize(param1);
         }
         else
         {
            this.§4%§(param1.theme);
         }
         this.§@!-§();
         §3$§.init();
      }
      
      protected function §@!-§() : void
      {
         this.§;!A§ = new §2_§(§5j§.§%V§);
      }
      
      protected function §@"§(param1:String) : Boolean
      {
         if(this.§!!§)
         {
            return false;
         }
         return true;
      }
      
      protected function §35§(param1:String) : Boolean
      {
         var _loc2_:§`Z§ = null;
         if(this.§8q§)
         {
            _loc2_ = §%p§.§9F§(param1);
            if(_loc2_)
            {
               if(_loc2_.§1q§ && !this.§8q§.§-!,§(_loc2_.§1q§))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function §4%§(param1:String) : void
      {
         var _loc2_:§`Z§ = null;
         if(this.§!!§ && !this.§@"§(param1))
         {
            this.§!!§.removeEventListener(Event.COMPLETE,this.§ try§);
            this.§!!§.removeEventListener(Event.CANCEL,this.§>h§);
            this.§!!§.addEventListener(Event.COMPLETE,this.§ try§);
            this.§!!§.addEventListener(Event.CANCEL,this.§>h§);
            this.§!!§.§5&§(param1);
         }
         if(this.§8q§ && !this.§35§(param1))
         {
            this.§8q§.removeEventListener(Event.COMPLETE,this.§,%§);
            this.§8q§.removeEventListener(Event.CANCEL,this.§9m§);
            this.§8q§.addEventListener(Event.COMPLETE,this.§,%§);
            this.§8q§.addEventListener(Event.CANCEL,this.§9m§);
            _loc2_ = §%p§.§9F§(param1);
            if(_loc2_)
            {
               this.§8q§.§5&§(_loc2_.§1q§);
            }
         }
      }
      
      private function § try§(param1:Event) : void
      {
         this.§!!§.removeEventListener(Event.COMPLETE,this.§ try§);
         this.§!!§.removeEventListener(Event.CANCEL,this.§>h§);
         this.§?&§ = true;
         if(this.§?&§ && this.§]!F§)
         {
            this.initialize(this.§!!5§);
         }
      }
      
      private function §>h§(param1:Event) : void
      {
         this.§!!§.removeEventListener(Event.COMPLETE,this.§ try§);
         this.§!!§.removeEventListener(Event.CANCEL,this.§>h§);
         this.§+!'§ = true;
      }
      
      private function §,%§(param1:Event) : void
      {
         this.§!!§.removeEventListener(Event.COMPLETE,this.§,%§);
         this.§!!§.removeEventListener(Event.CANCEL,this.§9m§);
         this.§]!F§ = true;
         if(this.§?&§ && this.§]!F§)
         {
            this.initialize(this.§!!5§);
         }
      }
      
      private function §9m§(param1:Event) : void
      {
         this.§!!§.removeEventListener(Event.COMPLETE,this.§,%§);
         this.§!!§.removeEventListener(Event.CANCEL,this.§9m§);
         this.§]!F§ = true;
         if(this.§?&§ && this.§]!F§)
         {
            this.initialize(this.§!!5§);
         }
      }
      
      public function get backgroundTextureManager() : § >§
      {
         return this.§`!8§;
      }
      
      protected function initialize(param1:§&!;§) : void
      {
         this.§`!1§ = false;
         this.§ § = false;
         if(§;T§.§1I§)
         {
            §;T§.§1I§.speed = 1;
         }
         this.§^<§ = new §[A§(this);
         this.§+'§ = this.initLevelBackground(param1.theme,this.§3w§.§6o§ / § '§,this.backgroundTextureManager,this.§%U§.§'!8§());
         this.§+'§.§^v§(§[k§.§,V§());
         this.§]K§ = this.initLevelObjectManager(param1);
         this.§3l§ = this.initLevelSlingshot(param1);
         this.§7!4§ = this.§@!7§(this.§!m§,this.§`!8§);
         this.§%U§.init();
         this.§'F§();
         this.§9u§();
         this.mReadyToRun = true;
         if(this.§!0§)
         {
            this.§!0§.addEventListeners();
         }
      }
      
      protected function §9u§() : void
      {
         if(this.§&5§)
         {
            this.§0W§ = §2_§.initialize(this.§&5§);
            this.§0W§.speed = 1;
            this.§0W§.play();
            this.§0J§ = -1000;
            this.§&5§ = null;
         }
      }
      
      public function §?!B§(param1:String) : void
      {
         this.§&5§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§0W§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§0W§)
         {
            if(param1)
            {
               this.§0W§.speed = Math.min(this.§0W§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§0W§.speed = Math.max(this.§0W§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§0W§)
         {
            this.§0W§.speed = 1;
         }
      }
      
      protected function initLevelObjectManager(param1:§&!;§) : §#-§
      {
         return new §#-§(this,param1,new Sprite());
      }
      
      protected function initLevelCamera(param1:§&!;§) : §=_§
      {
         return new §=_§(this,param1);
      }
      
      protected function initLevelBackground(param1:String, param2:Number, param3:§ >§, param4:Number) : §2!<§
      {
         return new §2!<§(param1,param2,param3,param4);
      }
      
      protected function initLevelSlingshot(param1:§&!;§) : §4K§
      {
         return new §4K§(this,param1,new Sprite());
      }
      
      protected function §@!7§(param1:§#k§, param2:§ >§) : §#C§
      {
         return new §#C§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§&!;§ = this.§>f§();
         var _loc4_:§]<§;
         (_loc4_ = new §]<§()).left = 0;
         _loc4_.top = -§=_§.§6!?§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §=_§.§6!?§;
         _loc4_.right = _loc4_.left + §=_§.§^J§;
         _loc4_.y = -13.929;
         _loc4_.x = §=_§.§^J§;
         _loc4_.id = §=_§.§0!D§;
         _loc3_.§<!1§(_loc4_);
         var _loc5_:§]<§;
         (_loc5_ = new §]<§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §=_§.§^J§;
         _loc5_.bottom = _loc5_.top + §=_§.§6!?§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §=_§.§^J§ / 2;
         _loc5_.id = §=_§.§43§;
         _loc3_.§<!1§(_loc5_);
         this.§7W§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§`A§ != null)
         {
            _loc3_.theme = §`A§;
         }
         this.init(_loc3_);
      }
      
      protected function §7W§(param1:§&!;§, param2:Boolean) : void
      {
         if(param2)
         {
            this.§1>§(param1);
         }
      }
      
      protected function §>f§() : §&!;§
      {
         var _loc1_:§&!;§ = new §&!;§();
         _loc1_.§0_§ = -12;
         return new §&!;§();
      }
      
      protected function §]'§() : Number
      {
         this.§]R§ ^= this.§]R§ << 21;
         this.§]R§ ^= this.§]R§ >>> 35;
         this.§]R§ ^= this.§]R§ << 4;
         return this.§]R§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §1>§(param1:§&!;§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§]g§ = null;
         this.§]R§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§]'§() * 5;
               (_loc5_ = new §]g§()).x = 30 + _loc3_ * 10 + this.§]'§() * 9;
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
                  _loc5_.angle = 45 - this.§]'§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§]'§() * 3 - _loc3_ * 8;
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
                  _loc5_.angle = this.§]'§() * 360;
               }
               param1.addObject(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      private function §2!@§() : void
      {
      }
      
      public function §'F§() : void
      {
         if(§2!<§.§?V§)
         {
            this.§"!A§(this.§+'§.§=d§,false);
         }
         this.§"!A§(this.§7!4§.§`U§(§#C§.§5C§),false);
         this.§"!A§(this.§7!4§.§`U§(§#C§.§=!7§),true);
         this.§"!A§(this.§7!4§.§`U§(§#C§.§3!0§),true);
         this.§"!A§(this.§]K§.§[t§,true);
         this.§"!A§(this.§3l§.sprite,true);
         this.§"!A§(this.§7!4§.§`U§(§#C§.§#!'§),true);
         this.§"!A§(this.§+'§.§?1§,false);
         if(§2!<§.§?V§)
         {
            this.§"!A§(this.§+'§.§4$§,false);
         }
         this.§"!A§(this.§7!4§.§`U§(§#C§.§3"§),true);
         if(!§[A§.§4!!§)
         {
         }
      }
      
      private function §"!A§(param1:Sprite, param2:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(param1);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         param1 /= §[k§.§3!5§;
         param2 /= §[k§.§3!5§;
         _loc3_.x = (param1 / §=_§.§&!?§ + this.§%U§.§3!3§ - §=_§.§[!#§ / §=_§.§&!?§) * § '§;
         _loc3_.y = (param2 / §=_§.§&!?§ + this.§%U§.§@A§ - §=_§.§<9§ / §=_§.§&!?§) * § '§;
         return _loc3_;
      }
      
      public function §>!0§(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / § '§ + §=_§.§[!#§ / §=_§.§&!?§ - this.§%U§.§3!3§) * §=_§.§&!?§;
         _loc3_.y = (param2 / § '§ + §=_§.§<9§ / §=_§.§&!?§ - this.§%U§.§@A§) * §=_§.§&!?§;
         var _loc4_:Number = Math.max(§[k§.§3!5§,§[k§.§@$§);
         _loc3_.x *= _loc4_;
         _loc3_.y *= _loc4_;
         return _loc3_;
      }
      
      public function §6$§(param1:String, param2:Number, param3:Number) : void
      {
         this.§]K§.addObject(param1,param2,param3);
      }
      
      public function §1!,§() : void
      {
         if(this.§"`§)
         {
            this.§"`§.visible = true;
            this.§"`§.alpha = 0;
         }
         this.§%+§ = 0;
      }
      
      public function §-z§() : void
      {
         this.§1T§ = new §%T§(§&z§.§=G§,§&z§.§<q§);
      }
      
      public function §@;§() : void
      {
         this.§1T§ = null;
      }
      
      public function clearLevel() : void
      {
         if(this.§+'§)
         {
            this.§+'§.dispose();
            this.§+'§ = null;
         }
         if(this.§]K§)
         {
            this.§]K§.dispose();
            this.§]K§ = null;
            this.§ !6§ = null;
         }
         if(this.§^<§)
         {
            if(!this.§^<§.§]E§)
            {
            }
            this.§^<§.clear();
            this.§^<§ = null;
         }
         if(this.§3w§)
         {
            this.§3w§.clear();
            this.§3w§ = null;
         }
         if(this.§3l§)
         {
            this.§3l§.dispose();
            this.§3l§ = null;
         }
         if(this.§%U§)
         {
            this.§%U§.clear();
            this.§%U§ = null;
         }
         if(this.§7!4§)
         {
            this.§7!4§.dispose();
            this.§7!4§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§2R§ = 0;
         this.§2!,§ = 0;
         this.mReadyToRun = false;
         this.§"p§ = false;
         this.§%+§ = §&z§.§`-§;
         if(this.§;1§)
         {
            (this.§;1§ as §32§).§5!;§.x = 0;
            (this.§;1§ as §32§).§5!;§.y = 0;
         }
         if(this.§"`§)
         {
            this.§"`§.visible = false;
         }
         this.§0W§ = null;
         this.§;!A§ = null;
         if(this.§!!§)
         {
            this.§!!§.removeEventListener(Event.COMPLETE,this.§ try§);
            this.§!!§.removeEventListener(Event.CANCEL,this.§>h§);
         }
         if(this.§8q§)
         {
            this.§8q§.removeEventListener(Event.COMPLETE,this.§,%§);
            this.§8q§.removeEventListener(Event.CANCEL,this.§9m§);
         }
         this.§>d§();
         if(§;T§.§,H§)
         {
            §;T§.§,H§.color = 0;
         }
         if(this.§!0§)
         {
            this.§!0§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver() : void
      {
      }
      
      public function §+s§() : String
      {
         if(this.§;!A§)
         {
            return this.§;!A§.toString();
         }
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         if(!this.mReadyToRun || !§;T§.§>!@§())
         {
            return 0;
         }
         if(this.§0W§ && this.§0W§.§^[§)
         {
            return this.§ z§(param1,param2,param3);
         }
         return this.§^K§(param1,true,param2,param3);
      }
      
      protected function §^K§(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         if(this.§`!1§)
         {
            param1 *= 0.2;
            if(§;T§.§1I§)
            {
               §;T§.§1I§.speed = 0.2;
            }
         }
         var _loc5_:Number = 0;
         this.§2!,§ += param1;
         if(param3)
         {
            this.§2R§ += param1;
            _loc5_ = this.§^<§.§3!=§(this.§2R§);
            this.§3l§.update(param1,param4);
            this.§2R§ = _loc5_;
         }
         else
         {
            this.§]K§.§69§(param1);
            this.§2R§ = 0;
         }
         if(param2)
         {
            this.§>9§(param1,_loc5_);
         }
         return param1;
      }
      
      private function § z§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc5_:Number = NaN;
         var _loc4_:Number = §[A§.§7I§ * 1000;
         if(this.§0W§)
         {
            param1 *= this.§0W§.speed;
            _loc5_ = this.§2!,§ + param1;
            while(this.§2!,§ + _loc4_ < _loc5_)
            {
               if(this.§2!,§ + _loc4_ > this.§0J§)
               {
                  this.§0W§.step(this);
                  this.§0J§ += _loc4_;
               }
               this.§^K§(_loc4_,false,param2,param3);
            }
            if(_loc5_ > this.§0J§ + _loc4_)
            {
               this.§0W§.step(this);
               this.§0J§ += _loc4_;
            }
            if(this.§2!,§ < _loc5_)
            {
               this.§^K§(_loc5_ - this.§2!,§,true,param2,param3);
            }
            return param1;
         }
         return this.§^K§(_loc4_,true,param2,param3);
      }
      
      private function §>9§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.§+'§.update(param1);
         this.§]K§.§=u§(param1,param2);
         this.§&!3§();
         if(this.§%+§ < §&z§.§`-§)
         {
            this.§%+§ += param1;
            _loc3_ = §&z§.§`-§ / 2;
            _loc4_ = (-Math.abs(this.§%+§ - _loc3_) + _loc3_) * (§&z§.§0<§ / _loc3_);
            if(this.§"`§)
            {
               this.§"`§.alpha = _loc4_;
            }
         }
         else if(this.§"`§)
         {
            this.§"`§.visible = false;
         }
         if(this.§1T§)
         {
            if(!this.§1T§.§[D§(this.§%U§,param1))
            {
               this.§@;§();
            }
         }
         this.§%U§.§6e§(param1);
         this.§^<§.§8>§();
         this.§7!4§.update(param1);
      }
      
      public function §default§(param1:Number) : void
      {
         this.objects.§69§(param1 * 1000);
         this.objects.§#+§(param1 * 1000);
         this.§<^§();
      }
      
      public function §&!3§() : void
      {
         var _loc1_:§>G§ = null;
         if(this.§2!,§ > this.§'Y§ + 1000 / 30)
         {
            if(this.§@E§ != null)
            {
               for each(_loc1_ in this.§@E§)
               {
                  _loc1_.addTrail();
               }
            }
            this.§'Y§ = this.§2!,§;
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§>G§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.§]K§.isPigsAlive(true))
            {
               _loc2_ = this.§]K§.§;#§(true);
               _loc2_.§'j§.mTryToScream = override.§`=§;
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§]K§.§3G§());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            if(this.§]K§.isPigsAlive(true))
            {
               _loc2_ = this.§]K§.§;#§(true);
               _loc2_.§'j§.mTryToBlink = override.§for §;
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§]K§.§3G§());
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §!8§.§true §;
         }
         §3$§.addScore(param1,param2);
         this.§!0§.addScore(param1);
         if(param3 && param1 > 0 && !this.§ §)
         {
            this.§ #§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function § #§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §!8§.§%6§;
         }
         this.§7!4§.§'!;§(§!8§.§=>§,§#C§.§3"§,§!8§.§'!B§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §+r§(param1:§>G§) : void
      {
         if(this.§@E§ == null)
         {
            this.§@E§ = new Array();
         }
         this.§@E§.push(param1);
      }
      
      public function §7!;§() : void
      {
         this.§3l§.§7!;§();
         this.§]K§.§][§();
         this.§ § = true;
      }
      
      public function §+!?§(param1:§>G§) : void
      {
         this.§7!4§.§!a§(§#C§.§5C§);
         if(this.§@E§.indexOf(param1) >= 0)
         {
            this.§@E§.splice(this.§@E§.indexOf(param1),1);
         }
         if(this.§@E§.length == 0)
         {
            this.§@E§ = null;
         }
      }
      
      public function §6U§(param1:§+$§, param2:Number, param3:Number) : void
      {
         this.§ !6§ = this.§]K§.addObject(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
         var _loc4_:Number = param1.name.toUpperCase() == "BIRD_GREEN" ? Number(§4K§.§ m§) : Number(§4K§.§9=§);
         if(param1.§4@§ > 1)
         {
            this.§ !6§.§2B§(param1.§4@§);
            this.§ !6§.§'j§.§<!8§();
         }
         if(param1.§#!9§ != 0)
         {
            _loc4_ = param1.§#!9§;
         }
         var _loc5_:Number = -_loc4_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc6_:Number = _loc4_ * param2 * Math.sin(param3 / (180 / Math.PI));
         this.§ !6§.§4<§(new b2Vec2(_loc5_,_loc6_),false,true);
         this.camera.§=!1§(§=_§.§7Y§);
         if(this.§;!A§)
         {
            this.§;!A§.§6U§(this.§^<§.§'U§,param1.x,param1.y,param2,param3);
         }
      }
      
      public function activatePowerup() : void
      {
         this.§"p§ = true;
      }
      
      private function §<^§() : void
      {
         if(!this.§"p§)
         {
            return;
         }
         this.§"p§ = false;
         if(this.activeObject is §=H§ && !(this.activeObject as §=H§).§^`§)
         {
            if(this.activeObject.activateSpecialPower(this.§='§))
            {
               this.§]L§ = true;
            }
         }
         else
         {
            this.§]K§.§93§();
         }
         if(this.§;!A§)
         {
            this.§;!A§.§]o§(this.§^<§.§'U§);
         }
      }
      
      public function §1_§() : void
      {
         this.§]K§.§1_§();
      }
      
      public function §45§() : void
      {
         this.§]K§.§^U§();
      }
      
      public function §20§() : §&!;§
      {
         var _loc1_:§&!;§ = new §&!;§();
         _loc1_.§'T§ = this.§!!5§.§'T§;
         _loc1_.§=N§ = this.§!!5§.§=N§;
         this.§%U§.§[s§(_loc1_);
         this.§]K§.§"!!§(_loc1_);
         this.§3l§.§]Z§(_loc1_);
         _loc1_.theme = this.§+'§.§]m§();
         return _loc1_;
      }
      
      public function §0!#§() : int
      {
         return this.§!!5§.§=N§;
      }
      
      public function § G§() : int
      {
         return this.§!!5§.§'T§;
      }
      
      public function §6"§(param1:int) : void
      {
         this.§!!5§.§=N§ = param1;
      }
      
      public function §`!9§(param1:int) : void
      {
         this.§!!5§.§'T§ = param1;
      }
      
      public function §"&§(param1:Number, param2:Number) : void
      {
         if(this.§26§)
         {
            this.§26§.§;s§(param1,param2);
         }
         if(this.§%U§)
         {
            this.§%U§.§6e§(0);
         }
      }
      
      public function get §7!C§() : §&!;§
      {
         return this.§!!5§;
      }
      
      public function get §='§() : §#-§
      {
         return this.§]K§;
      }
      
      protected function get starling() : §;T§
      {
         return this.§'=§;
      }
      
      public function get §%t§() : int
      {
         return §0a§;
      }
   }
}
