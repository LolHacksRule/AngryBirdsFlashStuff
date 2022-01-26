package §"o§
{
   import §%Q§.§%#§;
   import §&V§.§,w§;
   import §&V§.§^!8§;
   import §&V§.§`V§;
   import §'m§.§^S§;
   import §2W§.§4!$§;
   import §7!4§.§-!$§;
   import §;!2§.§6!D§;
   import §;f§.§&#§;
   import §;f§.§-!=§;
   import §;f§.§<!@§;
   import §;f§.§^o§;
   import §;j§.§8[§;
   import §@!%§.§+8§;
   import §@!=§.DisplayObject;
   import §@!=§.Sprite;
   import §]2§.§<u§;
   import §]2§.§`b§;
   import §^!1§.§6v§;
   import §^!1§.§`!1§;
   import §`6§.§9!-§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import §finally§.§%!7§;
   import §finally§.§3X§;
   import §finally§.§5!$§;
   import §finally§.§`u§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import §try§.§8!;§;
   import §while§.§+!;§;
   
   public class § M§
   {
      
      private static const §2k§:int = 20;
      
      public static const §^!?§:Number = §8[§.§!!"§;
      
      public static const §+!C§:Number = §8[§.§2G§;
      
      public static const §%v§:Number = 1 / 20;
      
      public static const §%T§:Number = §8[§.§2G§ * §%v§;
      
      public static const §?M§:Number = §^!?§ * §%v§;
      
      public static const §0!1§:§8!;§ = new §8!;§(13 - 3);
      
      protected static var §3`§:String = §^o§.§'M§;
       
      
      protected var §5c§:§3X§;
      
      private var §+'§:§%!7§;
      
      private var §7C§:Array = null;
      
      protected var §0R§:§+!;§;
      
      public var §'!?§:§;! §;
      
      protected var §4B§:§#U§;
      
      protected var §=L§:§4!$§;
      
      protected var §9!A§:§<+§;
      
      protected var §%!F§:§<u§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §4!!§:Boolean = false;
      
      protected var §`#§:Boolean = false;
      
      protected var §>!0§:Boolean = false;
      
      public var §>`§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §[<§:Number;
      
      public var §"!D§:Number;
      
      private var §9!8§:Number;
      
      public var §switch§:§<!@§;
      
      public var § 4§:Boolean = false;
      
      private var §3!'§:§5u§;
      
      private var §'!A§:Sprite;
      
      protected var §^>§:§^o§;
      
      protected var §>O§:§-!$§ = null;
      
      private var §8&§:EventDispatcher;
      
      private var §@;§:Array;
      
      private var §]@§:Array;
      
      private var §+!5§:§+8§;
      
      private var §[0§:§9!-§;
      
      protected var §^!&§:§,w§;
      
      protected var §7?§:§^!8§;
      
      private var §6i§:§`V§;
      
      private var §0'§:§`V§;
      
      private var §7!7§:§`V§;
      
      private var §>t§:Stage;
      
      private var §@P§:§%m§;
      
      protected var §#!>§:§%#§;
      
      protected var §&-§:§%#§;
      
      protected var §44§:Number = 0.0;
      
      protected var §<M§:String;
      
      private var §5!C§:Boolean;
      
      protected var §>x§:Boolean;
      
      protected var §?n§:uint = 1.417339207E9;
      
      public var §5"§:Boolean;
      
      public function § M§(param1:Stage)
      {
         this.§]@§ = [];
         super();
         this.§8&§ = new EventDispatcher();
         this.§switch§ = new §<!@§();
         this.§>t§ = param1;
         this.§^!&§ = §,w§.§5!B§;
         this.§7?§ = this.initAnimationManager(this.§^!&§);
         this.§6i§ = this.initThemeGraphicsManager();
         this.§0'§ = this.§4=§();
         this.§7!7§ = this.§>!+§();
         var _loc2_:Stage3D = param1.stage3Ds[0];
         this.§+!5§ = new §+8§(§5u§,param1,new Rectangle(0,0,§8[§.§!!"§,§8[§.§2G§),_loc2_);
         §8[§.§?v§.addEventListener(Event.ENTER_FRAME,this.§+!5§.onEnterFrame);
         _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§`4§,false,0,true);
         this.§+!5§.§=!$§ = false;
         this.§+!5§.enableErrorChecking = false;
         this.§+!5§.§;!D§ = 2;
         this.§+!5§.§-M§();
      }
      
      public static function §-d§(param1:§%!7§, param2:§%!7§) : Number
      {
         var _loc3_:Number = param1.§0x§ - param2.§0x§;
         var _loc4_:Number = param1.§9F§ - param2.§9F§;
         return §"§(_loc3_,_loc4_);
      }
      
      public static function §"§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         if(!this.§'!A§ && this.§`i§)
         {
            this.§'!A§ = this.§3!'§.§^y§;
         }
         return this.§'!A§;
      }
      
      public function get §`i§() : Sprite
      {
         if(!this.§3!'§)
         {
            this.§3!'§ = this.§+!5§.§[!2§ as §5u§;
            this.§3!'§.§0D§ = false;
         }
         return this.§3!'§;
      }
      
      private function get §`8§() : DisplayObject
      {
         if(this.§`i§)
         {
            return (this.§`i§ as §5u§).§`8§;
         }
         return null;
      }
      
      public function get §]P§() : §^!8§
      {
         return this.§7?§;
      }
      
      public function get textureManager() : §,w§
      {
         return this.§^!&§;
      }
      
      public function get camera() : §4!$§
      {
         return this.§=L§;
      }
      
      public function get objects() : §3X§
      {
         return this.§5c§;
      }
      
      public function get particles() : §<u§
      {
         return this.§%!F§;
      }
      
      public function get background() : §+!;§
      {
         return this.§0R§;
      }
      
      public function get slingshot() : §<+§
      {
         return this.§9!A§;
      }
      
      public function get activeObject() : §%!7§
      {
         return this.§+'§;
      }
      
      public function get §2!§() : §#U§
      {
         return this.§4B§;
      }
      
      public function get stage() : Stage
      {
         return this.§>t§;
      }
      
      public function get §@!A§() : §`V§
      {
         return this.§7!7§;
      }
      
      protected function get §var§() : §`V§
      {
         return this.§6i§;
      }
      
      public function set activeObject(param1:§%!7§) : void
      {
         this.§+'§ = param1;
      }
      
      public function set §?6§(param1:Boolean) : void
      {
         this.§>x§ = param1;
      }
      
      public function clear() : void
      {
         if(this.§[0§)
         {
            this.§[0§.dispose();
         }
         if(this.§^!&§)
         {
            this.§^!&§.dispose();
         }
         if(this.§6i§ && this.§6i§.textureManager)
         {
            this.§6i§.textureManager.dispose();
         }
         if(this.§7!7§ && this.§7!7§.textureManager)
         {
            this.§7!7§.textureManager.dispose();
         }
         if(this.§+!5§)
         {
            this.§+!5§.dispose();
         }
      }
      
      protected function initThemeGraphicsManager() : §`V§
      {
         return null;
      }
      
      protected function §4=§() : §`V§
      {
         return null;
      }
      
      protected function §>!+§() : §`V§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§,w§) : §^!8§
      {
         return new §^!8§(param1);
      }
      
      public function §5q§(param1:Boolean) : void
      {
         if(§+8§.§-2§)
         {
            if(param1)
            {
               §+8§.§-2§.start();
            }
            else
            {
               §+8§.§-2§.stop();
               §+8§.§-2§.color = 0;
            }
         }
      }
      
      public function §0<§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function §[r§(param1:§-!$§) : void
      {
         if(this.§>O§ != null)
         {
            this.§>O§.removeEventListeners();
         }
         this.§>O§ = param1;
         if(this.mReadyToRun)
         {
            this.§>O§.addEventListeners();
         }
      }
      
      public function §%M§() : §%#§
      {
         return this.§#!>§;
      }
      
      public function § e§(param1:§9!-§, param2:Array, param3:Function) : void
      {
         this.§[0§ = param1;
         var _loc4_:int = this.§[0§.§]0§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§^!&§.§[K§(this.§[0§.§'2§(_loc5_));
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§8&§.addEventListener(Event.INIT,param3);
            this.§]@§.push(param3);
         }
         if(this.§!4§(param2))
         {
            this.§<<§();
         }
      }
      
      private function §!4§(param1:Array) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.§^!&§.§const§())
         {
            _loc2_ = this.§^!&§.§&!$§ / 1000;
            _loc3_ = this.§^!&§.§@^§ / 1000;
            §^S§.log("\n\nMain texture manager memory usage:\n   textures " + _loc2_ + " kilobytes\n   bitmaps " + _loc3_ + " kilobytes\n\n");
            this.initializeAnimations(param1);
            return true;
         }
         this.§@;§ = param1.concat();
         return false;
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         this.§7?§.initializeAnimations(param1);
      }
      
      private function §`4§(param1:Event) : void
      {
         this.§^!&§.§!!7§();
         if(this.§var§ && this.§var§.textureManager)
         {
            this.§var§.textureManager.§!!7§();
         }
         if(this.§@!A§ && this.§@!A§.textureManager)
         {
            this.§@!A§.textureManager.§!!7§();
         }
         if(this.§@;§)
         {
            this.§!4§(this.§@;§);
            this.§@;§ = null;
            this.§<<§();
         }
         if(this.§>O§ != null && this.mReadyToRun)
         {
            this.§>O§.addEventListeners();
         }
         if(this.§6i§)
         {
            this.§6i§.§const§();
         }
         if(this.§7!7§)
         {
            if(this.§7!7§.textureManager)
            {
               this.§7!7§.textureManager.§!!7§();
               this.§7!7§.§const§();
            }
         }
      }
      
      private function §<<§() : void
      {
         this.§8&§.dispatchEvent(new Event(Event.INIT));
         this.§"V§();
      }
      
      private function §"V§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§]@§)
         {
            this.§8&§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§]@§ = [];
      }
      
      public function init(param1:§^o§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§4B§ = new §#U§(this,param1);
         this.§=L§ = this.initLevelCamera(param1);
         this.§[<§ = 0;
         this.§"!D§ = 0;
         this.§9!8§ = 0;
         this.§5!C§ = false;
         this.mReadyToRun = false;
         this.§4!!§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         §3`§ = param1.theme;
         this.§^>§ = param1;
         this.§`#§ = this.§==§(param1.theme);
         this.§>!0§ = this.§?!&§(param1.theme);
         if(this.§`#§ && this.§>!0§)
         {
            this.initialize(param1);
         }
         else
         {
            this.§@U§(param1.theme);
         }
         this.§[j§();
         §6y§.init();
      }
      
      protected function §[j§() : void
      {
         this.§#!>§ = new §%#§(§&#§.§<Y§);
      }
      
      protected function §==§(param1:String) : Boolean
      {
         if(this.§6i§)
         {
            return false;
         }
         return true;
      }
      
      protected function §?!&§(param1:String) : Boolean
      {
         var _loc2_:§`!1§ = null;
         if(this.§0'§)
         {
            _loc2_ = §6v§.§7i§(param1);
            if(_loc2_)
            {
               if(_loc2_.§#n§ && !this.§0'§.§8`§(_loc2_.§#n§))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function §@U§(param1:String) : void
      {
         var _loc2_:§`!1§ = null;
         if(this.§6i§ && !this.§==§(param1))
         {
            this.§6i§.removeEventListener(Event.COMPLETE,this.§1!-§);
            this.§6i§.removeEventListener(Event.CANCEL,this.§`z§);
            this.§6i§.addEventListener(Event.COMPLETE,this.§1!-§);
            this.§6i§.addEventListener(Event.CANCEL,this.§`z§);
            this.§6i§.§"! §(param1);
         }
         if(this.§0'§ && !this.§?!&§(param1))
         {
            this.§0'§.removeEventListener(Event.COMPLETE,this.§6!;§);
            this.§0'§.removeEventListener(Event.CANCEL,this.§throw§);
            this.§0'§.addEventListener(Event.COMPLETE,this.§6!;§);
            this.§0'§.addEventListener(Event.CANCEL,this.§throw§);
            _loc2_ = §6v§.§7i§(param1);
            if(_loc2_)
            {
               this.§0'§.§"! §(_loc2_.§#n§);
            }
         }
      }
      
      private function §1!-§(param1:Event) : void
      {
         this.§6i§.removeEventListener(Event.COMPLETE,this.§1!-§);
         this.§6i§.removeEventListener(Event.CANCEL,this.§`z§);
         this.§`#§ = true;
         if(this.§`#§ && this.§>!0§)
         {
            this.initialize(this.§^>§);
         }
      }
      
      private function §`z§(param1:Event) : void
      {
         this.§6i§.removeEventListener(Event.COMPLETE,this.§1!-§);
         this.§6i§.removeEventListener(Event.CANCEL,this.§`z§);
         this.§4!!§ = true;
      }
      
      private function §6!;§(param1:Event) : void
      {
         this.§6i§.removeEventListener(Event.COMPLETE,this.§6!;§);
         this.§6i§.removeEventListener(Event.CANCEL,this.§throw§);
         this.§>!0§ = true;
         if(this.§`#§ && this.§>!0§)
         {
            this.initialize(this.§^>§);
         }
      }
      
      private function §throw§(param1:Event) : void
      {
         this.§6i§.removeEventListener(Event.COMPLETE,this.§6!;§);
         this.§6i§.removeEventListener(Event.CANCEL,this.§throw§);
         this.§>!0§ = true;
         if(this.§`#§ && this.§>!0§)
         {
            this.initialize(this.§^>§);
         }
      }
      
      public function get backgroundTextureManager() : §,w§
      {
         return this.§^!&§;
      }
      
      protected function initialize(param1:§^o§) : void
      {
         this.§>x§ = false;
         this.§5"§ = false;
         if(§+8§.§`!;§)
         {
            §+8§.§`!;§.speed = 1;
         }
         this.§'!?§ = new §;! §(this);
         this.§0R§ = this.initLevelBackground(param1.theme,this.§4B§.§1n§ / §%v§,this.backgroundTextureManager,this.§=L§.§3<§());
         this.§0R§.§"3§(§8[§.§ set§());
         this.§5c§ = this.initLevelObjectManager(param1);
         this.§9!A§ = this.initLevelSlingshot(param1);
         this.§%!F§ = this.§8O§(this.§7?§,this.§^!&§);
         this.§=L§.init();
         this.§&!§();
         this.§<K§();
         this.mReadyToRun = true;
         if(this.§>O§)
         {
            this.§>O§.addEventListeners();
         }
      }
      
      protected function §<K§() : void
      {
         if(this.§<M§)
         {
            this.§&-§ = §%#§.initialize(this.§<M§);
            this.§&-§.speed = 1;
            this.§&-§.play();
            this.§44§ = -1000;
            this.§<M§ = null;
         }
      }
      
      public function §[6§(param1:String) : void
      {
         this.§<M§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§&-§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§&-§)
         {
            if(param1)
            {
               this.§&-§.speed = Math.min(this.§&-§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§&-§.speed = Math.max(this.§&-§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§&-§)
         {
            this.§&-§.speed = 1;
         }
      }
      
      protected function initLevelObjectManager(param1:§^o§) : §3X§
      {
         return new §3X§(this,param1,new Sprite());
      }
      
      protected function initLevelCamera(param1:§^o§) : §4!$§
      {
         return new §4!$§(this,param1);
      }
      
      protected function initLevelBackground(param1:String, param2:Number, param3:§,w§, param4:Number) : §+!;§
      {
         return new §+!;§(param1,param2,param3,param4);
      }
      
      protected function initLevelSlingshot(param1:§^o§) : §<+§
      {
         return new §<+§(this,param1,new Sprite());
      }
      
      protected function §8O§(param1:§^!8§, param2:§,w§) : §<u§
      {
         return new §<u§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§^o§ = new §^o§();
         _loc3_.§@!>§ = -12;
         var _loc4_:§-!=§;
         (_loc4_ = new §-!=§()).left = 0;
         _loc4_.top = -§4!$§.§6Q§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §4!$§.§6Q§;
         _loc4_.right = _loc4_.left + §4!$§.§6&§;
         _loc4_.y = -13.929;
         _loc4_.x = §4!$§.§6&§;
         _loc4_.id = §4!$§.§^u§;
         _loc3_.§0w§(_loc4_);
         var _loc5_:§-!=§;
         (_loc5_ = new §-!=§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §4!$§.§6&§;
         _loc5_.bottom = _loc5_.top + §4!$§.§6Q§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §4!$§.§6&§ / 2;
         _loc5_.id = §4!$§.§5y§;
         _loc3_.§0w§(_loc5_);
         if(param2)
         {
            this.§[-§(_loc3_);
         }
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§3`§ != null)
         {
            _loc3_.theme = §3`§;
         }
         this.init(_loc3_);
      }
      
      protected function § v§() : Number
      {
         this.§?n§ ^= this.§?n§ << 21;
         this.§?n§ ^= this.§?n§ >>> 35;
         this.§?n§ ^= this.§?n§ << 4;
         return this.§?n§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §[-§(param1:§^o§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§6!D§ = null;
         this.§?n§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§ v§() * 5;
               (_loc5_ = new §6!D§()).x = 30 + _loc3_ * 10 + this.§ v§() * 9;
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
                  _loc5_.angle = 45 - this.§ v§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§ v§() * 3 - _loc3_ * 8;
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
                  _loc5_.angle = this.§ v§() * 360;
               }
               param1.addObject(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      private function §]!G§() : void
      {
      }
      
      public function §&!§() : void
      {
         if(§+!;§.§<&§)
         {
            this.§<B§(this.§0R§.§8<§,false);
         }
         this.§<B§(this.§%!F§.§0!8§(§<u§.§&Z§),false);
         this.§<B§(this.§%!F§.§0!8§(§<u§.§6x§),true);
         this.§<B§(this.§%!F§.§0!8§(§<u§.§!>§),true);
         this.§<B§(this.§5c§.§4[§,true);
         this.§<B§(this.§9!A§.sprite,true);
         this.§<B§(this.§%!F§.§0!8§(§<u§.§>7§),true);
         this.§<B§(this.§0R§.§%Z§,false);
         if(§+!;§.§<&§)
         {
            this.§<B§(this.§0R§.§9!D§,false);
         }
         this.§<B§(this.§%!F§.§0!8§(§<u§.§<!<§),true);
         if(!§;! §.§[1§)
         {
         }
      }
      
      private function §<B§(param1:Sprite, param2:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(param1);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         param1 /= §8[§.§=h§;
         param2 /= §8[§.§=h§;
         _loc3_.x = (param1 / §4!$§.§2y§ + this.§=L§.§"!9§ - §4!$§.§"u§ / §4!$§.§2y§) * §%v§;
         _loc3_.y = (param2 / §4!$§.§2y§ + this.§=L§.§&!1§ - §4!$§.§0!G§ / §4!$§.§2y§) * §%v§;
         return _loc3_;
      }
      
      public function §^'§(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / §%v§ + §4!$§.§"u§ / §4!$§.§2y§ - this.§=L§.§"!9§) * §4!$§.§2y§;
         _loc3_.y = (param2 / §%v§ + §4!$§.§0!G§ / §4!$§.§2y§ - this.§=L§.§&!1§) * §4!$§.§2y§;
         var _loc4_:Number = Math.max(§8[§.§=h§,§8[§.§[!'§);
         _loc3_.x *= _loc4_;
         _loc3_.y *= _loc4_;
         return _loc3_;
      }
      
      public function §<!&§(param1:String, param2:Number, param3:Number) : void
      {
         this.§5c§.addObject(param1,param2,param3);
      }
      
      public function §,j§() : void
      {
         if(this.§`8§)
         {
            this.§`8§.visible = true;
            this.§`8§.alpha = 0;
         }
         this.§>`§ = 0;
      }
      
      public function §]n§() : void
      {
         this.§@P§ = new §%m§(§,J§.§-P§,§,J§.§&p§);
      }
      
      public function § '§() : void
      {
         this.§@P§ = null;
      }
      
      public function clearLevel() : void
      {
         if(this.§0R§)
         {
            this.§0R§.dispose();
            this.§0R§ = null;
         }
         if(this.§5c§)
         {
            this.§5c§.dispose();
            this.§5c§ = null;
            this.§+'§ = null;
         }
         if(this.§'!?§)
         {
            if(!this.§'!?§.§]!?§)
            {
            }
            this.§'!?§.clear();
            this.§'!?§ = null;
         }
         if(this.§4B§)
         {
            this.§4B§.clear();
            this.§4B§ = null;
         }
         if(this.§9!A§)
         {
            this.§9!A§.dispose();
            this.§9!A§ = null;
         }
         if(this.§=L§)
         {
            this.§=L§.clear();
            this.§=L§ = null;
         }
         if(this.§%!F§)
         {
            this.§%!F§.dispose();
            this.§%!F§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§[<§ = 0;
         this.§"!D§ = 0;
         this.mReadyToRun = false;
         this.§5!C§ = false;
         this.§>`§ = §,J§.§?W§;
         if(this.§`i§)
         {
            (this.§`i§ as §5u§).§!'§.x = 0;
            (this.§`i§ as §5u§).§!'§.y = 0;
         }
         if(this.§`8§)
         {
            this.§`8§.visible = false;
         }
         this.§&-§ = null;
         this.§#!>§ = null;
         if(this.§6i§)
         {
            this.§6i§.removeEventListener(Event.COMPLETE,this.§1!-§);
            this.§6i§.removeEventListener(Event.CANCEL,this.§`z§);
         }
         if(this.§0'§)
         {
            this.§0'§.removeEventListener(Event.COMPLETE,this.§6!;§);
            this.§0'§.removeEventListener(Event.CANCEL,this.§throw§);
         }
         this.§"V§();
         if(§+8§.§-2§)
         {
            §+8§.§-2§.color = 0;
         }
         if(this.§>O§)
         {
            this.§>O§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver() : void
      {
      }
      
      public function §2!D§() : String
      {
         if(this.§#!>§)
         {
            return this.§#!>§.toString();
         }
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         if(!this.mReadyToRun || !§+8§.§#!<§())
         {
            return 0;
         }
         if(this.§&-§ && this.§&-§.§'!,§)
         {
            return this.§"6§(param1,param2,param3);
         }
         return this.§@5§(param1,true,param2,param3);
      }
      
      protected function §@5§(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         if(this.§>x§)
         {
            param1 *= 0.2;
            if(§+8§.§`!;§)
            {
               §+8§.§`!;§.speed = 0.2;
            }
         }
         var _loc5_:Number = 0;
         this.§"!D§ += param1;
         if(param3)
         {
            this.§[<§ += param1;
            _loc5_ = this.§'!?§.§0j§(this.§[<§);
            this.§9!A§.update(param1,param4);
            this.§[<§ = _loc5_;
         }
         else
         {
            this.§5c§.§`W§(param1);
            this.§[<§ = 0;
         }
         if(param2)
         {
            this.§0q§(param1,_loc5_);
         }
         return param1;
      }
      
      private function §"6§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc5_:Number = NaN;
         var _loc4_:Number = §;! §.§%§ * 1000;
         if(this.§&-§)
         {
            param1 *= this.§&-§.speed;
            _loc5_ = this.§"!D§ + param1;
            while(this.§"!D§ + _loc4_ < _loc5_)
            {
               if(this.§"!D§ + _loc4_ > this.§44§)
               {
                  this.§&-§.step(this);
                  this.§44§ += _loc4_;
               }
               this.§@5§(_loc4_,false,param2,param3);
            }
            if(_loc5_ > this.§44§ + _loc4_)
            {
               this.§&-§.step(this);
               this.§44§ += _loc4_;
            }
            if(this.§"!D§ < _loc5_)
            {
               this.§@5§(_loc5_ - this.§"!D§,true,param2,param3);
            }
            return param1;
         }
         return this.§@5§(_loc4_,true,param2,param3);
      }
      
      private function §0q§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.§0R§.update(param1);
         this.§5c§.§,u§(param1,param2);
         this.§?!9§();
         if(this.§>`§ < §,J§.§?W§)
         {
            this.§>`§ += param1;
            _loc3_ = §,J§.§?W§ / 2;
            _loc4_ = (-Math.abs(this.§>`§ - _loc3_) + _loc3_) * (§,J§.§`D§ / _loc3_);
            if(this.§`8§)
            {
               this.§`8§.alpha = _loc4_;
            }
         }
         else if(this.§`8§)
         {
            this.§`8§.visible = false;
         }
         if(this.§@P§)
         {
            if(!this.§@P§.§2!>§(this.§=L§,param1))
            {
               this.§ '§();
            }
         }
         this.§=L§.§1G§(param1);
         this.§'!?§.§5!@§();
         this.§%!F§.update(param1);
      }
      
      public function §-! §(param1:Number) : void
      {
         this.objects.§`W§(param1 * 1000);
         this.objects.§8!A§(param1 * 1000);
         this.§#!0§();
      }
      
      public function §?!9§() : void
      {
         var _loc1_:§%!7§ = null;
         if(this.§"!D§ > this.§9!8§ + 1000 / 30)
         {
            if(this.§7C§ != null)
            {
               for each(_loc1_ in this.§7C§)
               {
                  _loc1_.addTrail();
               }
            }
            this.§9!8§ = this.§"!D§;
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§%!7§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.§5c§.isPigsAlive(true))
            {
               _loc2_ = this.§5c§.§[e§(true);
               _loc2_.§8h§.mTryToScream = §`u§.§@S§;
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§5c§.§^q§());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            if(this.§5c§.isPigsAlive(true))
            {
               _loc2_ = this.§5c§.§[e§(true);
               _loc2_.§8h§.mTryToBlink = §`u§.§+"§;
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§5c§.§^q§());
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §`b§.§@b§;
         }
         §6y§.addScore(param1,param2);
         this.§>O§.addScore(param1);
         if(param3 && param1 > 0 && !this.§5"§)
         {
            this.§#]§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §#]§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §`b§.§?$§;
         }
         this.§%!F§.§1C§(§`b§.§0g§,§<u§.§<!<§,§`b§.§catch§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §]5§(param1:§%!7§) : void
      {
         if(this.§7C§ == null)
         {
            this.§7C§ = new Array();
         }
         this.§7C§.push(param1);
      }
      
      public function §=!,§() : void
      {
         this.§9!A§.§=!,§();
         this.§5c§.§#D§();
         this.§5"§ = true;
      }
      
      public function §09§(param1:§%!7§) : void
      {
         this.§%!F§.§ ;§(§<u§.§&Z§);
         if(this.§7C§.indexOf(param1) >= 0)
         {
            this.§7C§.splice(this.§7C§.indexOf(param1),1);
         }
         if(this.§7C§.length == 0)
         {
            this.§7C§ = null;
         }
      }
      
      public function §"i§(param1:§]?§, param2:Number, param3:Number) : void
      {
         this.§+'§ = this.§5c§.addObject(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
         var _loc4_:Number = param1.name.toUpperCase() == "BIRD_GREEN" ? Number(§<+§.§#r§) : Number(§<+§.§,C§);
         if(param1.§@u§ > 1)
         {
            this.§+'§.§>6§(param1.§@u§);
            this.§+'§.§8h§.§&?§();
         }
         if(param1.§&!D§ != 0)
         {
            _loc4_ = param1.§&!D§;
         }
         var _loc5_:Number = -_loc4_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc6_:Number = _loc4_ * param2 * Math.sin(param3 / (180 / Math.PI));
         this.§+'§.§-!+§(new b2Vec2(_loc5_,_loc6_),false,true);
         this.camera.§4!2§(§4!$§.§16§);
         if(this.§#!>§)
         {
            this.§#!>§.§"i§(this.§'!?§.§=!0§,param1.x,param1.y,param2,param3);
         }
      }
      
      public function activatePowerup() : void
      {
         this.§5!C§ = true;
      }
      
      private function §#!0§() : void
      {
         if(!this.§5!C§)
         {
            return;
         }
         this.§5!C§ = false;
         if(this.activeObject is §5!$§ && !(this.activeObject as §5!$§).§?!B§)
         {
            if(this.activeObject.activateSpecialPower(this.§?2§))
            {
               this.§ 4§ = true;
            }
         }
         else
         {
            this.§5c§.§8K§();
         }
         if(this.§#!>§)
         {
            this.§#!>§.§with§(this.§'!?§.§=!0§);
         }
      }
      
      public function §null§() : void
      {
         this.§5c§.§null§();
      }
      
      public function §?!E§() : void
      {
         this.§5c§.§4!;§();
      }
      
      public function §26§() : §^o§
      {
         var _loc1_:§^o§ = new §^o§();
         _loc1_.§>V§ = this.§^>§.§>V§;
         _loc1_.§7!B§ = this.§^>§.§7!B§;
         this.§=L§.§8!1§(_loc1_);
         this.§5c§.§&a§(_loc1_);
         this.§9!A§.§=>§(_loc1_);
         _loc1_.theme = this.§0R§.§%x§();
         return _loc1_;
      }
      
      public function §46§() : int
      {
         return this.§^>§.§7!B§;
      }
      
      public function §5!8§() : int
      {
         return this.§^>§.§>V§;
      }
      
      public function §;!F§(param1:int) : void
      {
         this.§^>§.§7!B§ = param1;
      }
      
      public function §3k§(param1:int) : void
      {
         this.§^>§.§>V§ = param1;
      }
      
      public function §4T§(param1:Number, param2:Number) : void
      {
         if(this.§3!'§)
         {
            this.§3!'§.§,0§(param1,param2);
         }
         if(this.§=L§)
         {
            this.§=L§.§1G§(0);
         }
      }
      
      public function get §24§() : §^o§
      {
         return this.§^>§;
      }
      
      public function get §?2§() : §3X§
      {
         return this.§5c§;
      }
      
      protected function get starling() : §+8§
      {
         return this.§+!5§;
      }
      
      public function get damageParticleLimit() : int
      {
         return §2k§;
      }
   }
}
