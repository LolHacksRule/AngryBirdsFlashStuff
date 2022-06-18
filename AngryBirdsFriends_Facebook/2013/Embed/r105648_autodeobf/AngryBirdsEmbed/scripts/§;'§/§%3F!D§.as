package §;'§
{
   import § `§.§,!G§;
   import §#]§.§'5§;
   import §,k§.§,!F§;
   import §1!A§.§4Z§;
   import §3;§.§&!§;
   import §3D§.§+_§;
   import §4n§.§8X§;
   import §4n§.§8y§;
   import §4n§.§>!4§;
   import §4n§.§@!4§;
   import §5B§.§6!>§;
   import §8!=§.§]Q§;
   import §;!;§.§4G§;
   import §;!;§.§7F§;
   import §;^§.DisplayObject;
   import §;^§.Sprite;
   import §<!M§.§#"§;
   import §<!M§.§1!&§;
   import §<!M§.§4d§;
   import §<!M§.§[i§;
   import §=!K§.§5n§;
   import §=!K§.§]!%§;
   import §=!K§.§^Q§;
   import §?!8§.§2>§;
   import §??§.§5!@§;
   import §[!=§.§3r§;
   import §[!=§.§>Z§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §?!D§
   {
      
      private static const §=I§:int = 20;
      
      public static const §?i§:Number = §'5§.§@!0§;
      
      public static const §8!D§:Number = §'5§.§2!M§;
      
      public static const §@!I§:Number = 1 / 20;
      
      public static const §3Q§:Number = §'5§.§2!M§ * §@!I§;
      
      public static const §9$§:Number = §?i§ * §@!I§;
      
      public static const §,!@§:§]Q§ = new §]Q§(13 - 3);
      
      public static var §8!E§:Number = 1;
      
      protected static var §"g§:String = §1!&§.§5d§;
       
      
      protected var §3!<§:§8y§;
      
      private var §2o§:§@!4§;
      
      private var §>C§:Array = null;
      
      protected var §5N§:§,!F§;
      
      public var §#S§:§;,§;
      
      protected var §8!%§:§+U§;
      
      protected var §&D§:§6!>§;
      
      protected var §?<§:§8!;§;
      
      protected var §<s§:§3r§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §<2§:Boolean = false;
      
      protected var § q§:Boolean = false;
      
      protected var §8<§:Boolean = false;
      
      public var §0T§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §0G§:Number;
      
      public var §5R§:Number;
      
      private var §2!F§:Number;
      
      public var §3V§:§4d§;
      
      public var §=6§:Boolean = false;
      
      private var §<!#§:§^S§;
      
      private var §-!%§:Sprite;
      
      protected var §38§:§1!&§;
      
      protected var §7e§:§,!G§ = null;
      
      private var §+y§:EventDispatcher;
      
      private var get:Array;
      
      private var §#!N§:Array;
      
      protected var §`x§:§5!@§;
      
      private var §11§:§&!§;
      
      protected var §9!=§:§^Q§;
      
      protected var §?!1§:§]!%§;
      
      private var § ^§:§5n§;
      
      private var § '§:§5n§;
      
      private var §5C§:§5n§;
      
      private var § D§:Stage;
      
      private var §-!C§:§ e§;
      
      protected var §!!;§:§+_§;
      
      protected var §0Q§:§+_§;
      
      protected var §+h§:Number = 0.0;
      
      protected var §5`§:String;
      
      private var §[s§:Boolean;
      
      protected var §;f§:Boolean;
      
      protected var §##§:uint = 1.417339207E9;
      
      public var §-!7§:Boolean;
      
      public function §?!D§(param1:Stage)
      {
         this.§#!N§ = [];
         super();
         this.§+y§ = new EventDispatcher();
         this.§3V§ = new §4d§();
         this.§ D§ = param1;
         this.§9!=§ = §^Q§.§&e§;
         this.§?!1§ = this.initAnimationManager(this.§9!=§);
         this.§ ^§ = this.initThemeGraphicsManager();
         this.§ '§ = this.§,5§();
         this.§5C§ = this.§>3§();
         var _loc2_:Stage3D = param1.stage3Ds[0];
         this.§`x§ = new §5!@§(§^S§,param1,new Rectangle(0,0,§'5§.§@!0§,§'5§.§2!M§),_loc2_);
         §'5§.§-!<§.addEventListener(Event.ENTER_FRAME,this.§`x§.onEnterFrame);
         _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§5f§,false,0,true);
         this.§`x§.§^A§ = false;
         this.§`x§.enableErrorChecking = false;
         this.§`x§.§!7§ = 2;
         this.§`x§.§ 4§();
      }
      
      public static function §-r§(param1:§@!4§, param2:§@!4§) : Number
      {
         var _loc3_:Number = param1.§9!H§ - param2.§9!H§;
         var _loc4_:Number = param1.§&p§ - param2.§&p§;
         return §3G§(_loc3_,_loc4_);
      }
      
      public static function §3G§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         if(!this.§-!%§ && this.§5!B§)
         {
            this.§-!%§ = this.§<!#§.§=!D§;
         }
         return this.§-!%§;
      }
      
      public function get §5!B§() : Sprite
      {
         if(!this.§<!#§)
         {
            this.§<!#§ = this.§`x§.§#d§ as §^S§;
            this.§<!#§.§3_§ = false;
         }
         return this.§<!#§;
      }
      
      private function get §[1§() : DisplayObject
      {
         if(this.§5!B§)
         {
            return (this.§5!B§ as §^S§).§[1§;
         }
         return null;
      }
      
      public function get §6?§() : §]!%§
      {
         return this.§?!1§;
      }
      
      public function get textureManager() : §^Q§
      {
         return this.§9!=§;
      }
      
      public function get camera() : §6!>§
      {
         return this.§&D§;
      }
      
      public function get objects() : §8y§
      {
         return this.§3!<§;
      }
      
      public function get particles() : §3r§
      {
         return this.§<s§;
      }
      
      public function get background() : §,!F§
      {
         return this.§5N§;
      }
      
      public function get slingshot() : §8!;§
      {
         return this.§?<§;
      }
      
      public function get activeObject() : §@!4§
      {
         return this.§2o§;
      }
      
      public function get §-!>§() : §+U§
      {
         return this.§8!%§;
      }
      
      public function get stage() : Stage
      {
         return this.§ D§;
      }
      
      public function get §[n§() : §5n§
      {
         return this.§5C§;
      }
      
      protected function get §]O§() : §5n§
      {
         return this.§ ^§;
      }
      
      public function set activeObject(param1:§@!4§) : void
      {
         this.§2o§ = param1;
      }
      
      public function set §8C§(param1:Boolean) : void
      {
         this.§;f§ = param1;
      }
      
      public function clear() : void
      {
         if(this.§11§)
         {
            this.§11§.dispose();
         }
         if(this.§9!=§)
         {
            this.§9!=§.dispose();
         }
         if(this.§ ^§ && this.§ ^§.textureManager)
         {
            this.§ ^§.textureManager.dispose();
         }
         if(this.§5C§ && this.§5C§.textureManager)
         {
            this.§5C§.textureManager.dispose();
         }
         if(this.§`x§)
         {
            this.§`x§.dispose();
         }
      }
      
      protected function initThemeGraphicsManager() : §5n§
      {
         return null;
      }
      
      protected function §,5§() : §5n§
      {
         return null;
      }
      
      protected function §>3§() : §5n§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§^Q§) : §]!%§
      {
         return new §]!%§(param1);
      }
      
      public function §]g§(param1:Boolean) : void
      {
         if(§5!@§.§8%§)
         {
            if(param1)
            {
               §5!@§.§8%§.start();
            }
            else
            {
               §5!@§.§8%§.stop();
               §5!@§.§8%§.color = 0;
            }
         }
      }
      
      public function §1z§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function §50§() : §,!G§
      {
         return this.§7e§;
      }
      
      public function §0o§(param1:§,!G§) : void
      {
         if(this.§7e§ != null)
         {
            this.§7e§.removeEventListeners();
         }
         this.§7e§ = param1;
         if(this.mReadyToRun)
         {
            this.§7e§.addEventListeners();
         }
      }
      
      public function §=7§() : §+_§
      {
         return this.§!!;§;
      }
      
      public function §&K§(param1:§&!§, param2:Array, param3:Function) : void
      {
         this.§11§ = param1;
         var _loc4_:int = this.§11§.§<p§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§9!=§.§%p§(this.§11§.§]W§(_loc5_));
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§+y§.addEventListener(Event.INIT,param3);
            this.§#!N§.push(param3);
         }
         if(this.§+!;§(param2))
         {
            this.§"!-§();
         }
      }
      
      private function §+!;§(param1:Array) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.§9!=§.§[!D§())
         {
            _loc2_ = this.§9!=§.§5!L§ / 1000;
            _loc3_ = this.§9!=§.§5E§ / 1000;
            §2>§.log("\n\nMain texture manager memory usage:\n   textures " + _loc2_ + " kilobytes\n   bitmaps " + _loc3_ + " kilobytes\n\n");
            this.initializeAnimations(param1);
            return true;
         }
         this.get = param1.concat();
         return false;
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         this.§?!1§.initializeAnimations(param1);
      }
      
      private function §5f§(param1:Event) : void
      {
         this.§9!=§.§-T§();
         if(this.§]O§ && this.§]O§.textureManager)
         {
            this.§]O§.textureManager.§-T§();
         }
         if(this.§[n§ && this.§[n§.textureManager)
         {
            this.§[n§.textureManager.§-T§();
         }
         if(this.get)
         {
            this.§+!;§(this.get);
            this.get = null;
            this.§"!-§();
         }
         if(this.§7e§ != null && this.mReadyToRun)
         {
            this.§7e§.addEventListeners();
         }
         if(this.§ ^§)
         {
            this.§ ^§.§[!D§();
         }
         if(this.§5C§)
         {
            if(this.§5C§.textureManager)
            {
               this.§5C§.textureManager.§-T§();
               this.§5C§.§[!D§();
            }
         }
      }
      
      private function §"!-§() : void
      {
         this.§+y§.dispatchEvent(new Event(Event.INIT));
         this.§4l§();
      }
      
      private function §4l§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§#!N§)
         {
            this.§+y§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§#!N§ = [];
      }
      
      public function init(param1:§1!&§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§8!%§ = new §+U§(this,param1);
         this.§&D§ = this.initLevelCamera(param1);
         this.§0G§ = 0;
         this.§5R§ = 0;
         this.§2!F§ = 0;
         this.§[s§ = false;
         this.mReadyToRun = false;
         this.§<2§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         §"g§ = param1.theme;
         this.§38§ = param1;
         this.§ q§ = this.§0>§(param1.theme);
         this.§8<§ = this.§0!F§(param1.theme);
         if(this.§ q§ && this.§8<§)
         {
            this.initialize(param1);
         }
         else
         {
            this.§@H§(param1.theme);
         }
         this.§,=§();
         §3,§.init();
      }
      
      protected function §,=§() : void
      {
         this.§!!;§ = new §+_§(§[i§.§0A§);
      }
      
      protected function §0>§(param1:String) : Boolean
      {
         if(this.§ ^§)
         {
            return false;
         }
         return true;
      }
      
      protected function §0!F§(param1:String) : Boolean
      {
         var _loc2_:§4G§ = null;
         if(this.§ '§)
         {
            _loc2_ = §7F§.§=#§(param1);
            if(_loc2_)
            {
               if(_loc2_.§=L§ && !this.§ '§.§1!6§(_loc2_.§=L§))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function §@H§(param1:String) : void
      {
         var _loc2_:§4G§ = null;
         if(this.§ ^§ && !this.§0>§(param1))
         {
            this.§ ^§.removeEventListener(Event.COMPLETE,this.§0y§);
            this.§ ^§.removeEventListener(Event.CANCEL,this.§ p§);
            this.§ ^§.addEventListener(Event.COMPLETE,this.§0y§);
            this.§ ^§.addEventListener(Event.CANCEL,this.§ p§);
            this.§ ^§.§+!G§(param1);
         }
         if(this.§ '§ && !this.§0!F§(param1))
         {
            this.§ '§.removeEventListener(Event.COMPLETE,this.§1P§);
            this.§ '§.removeEventListener(Event.CANCEL,this.§-!I§);
            this.§ '§.addEventListener(Event.COMPLETE,this.§1P§);
            this.§ '§.addEventListener(Event.CANCEL,this.§-!I§);
            _loc2_ = §7F§.§=#§(param1);
            if(_loc2_)
            {
               this.§ '§.§+!G§(_loc2_.§=L§);
            }
         }
      }
      
      private function §0y§(param1:Event) : void
      {
         this.§ ^§.removeEventListener(Event.COMPLETE,this.§0y§);
         this.§ ^§.removeEventListener(Event.CANCEL,this.§ p§);
         this.§ q§ = true;
         if(this.§ q§ && this.§8<§)
         {
            this.initialize(this.§38§);
         }
      }
      
      private function § p§(param1:Event) : void
      {
         this.§ ^§.removeEventListener(Event.COMPLETE,this.§0y§);
         this.§ ^§.removeEventListener(Event.CANCEL,this.§ p§);
         this.§<2§ = true;
      }
      
      private function §1P§(param1:Event) : void
      {
         this.§ ^§.removeEventListener(Event.COMPLETE,this.§1P§);
         this.§ ^§.removeEventListener(Event.CANCEL,this.§-!I§);
         this.§8<§ = true;
         if(this.§ q§ && this.§8<§)
         {
            this.initialize(this.§38§);
         }
      }
      
      private function §-!I§(param1:Event) : void
      {
         this.§ ^§.removeEventListener(Event.COMPLETE,this.§1P§);
         this.§ ^§.removeEventListener(Event.CANCEL,this.§-!I§);
         this.§8<§ = true;
         if(this.§ q§ && this.§8<§)
         {
            this.initialize(this.§38§);
         }
      }
      
      public function get backgroundTextureManager() : §^Q§
      {
         return this.§9!=§;
      }
      
      protected function initialize(param1:§1!&§) : void
      {
         this.§;f§ = false;
         this.§-!7§ = false;
         if(§5!@§.§2x§)
         {
            §5!@§.§2x§.speed = 1;
         }
         this.§#S§ = new §;,§(this);
         this.§5N§ = this.initLevelBackground(param1.theme,this.§8!%§.§-1§ / §@!I§,this.backgroundTextureManager,this.§&D§.§+l§());
         this.§5N§.§4!K§(§'5§.§`M§());
         this.§3!<§ = this.initLevelObjectManager(param1);
         this.§?<§ = this.initLevelSlingshot(param1);
         this.§<s§ = this.§0!<§(this.§?!1§,this.§9!=§);
         this.§&D§.init();
         this.§=t§();
         this.§,2§();
         this.mReadyToRun = true;
         if(this.§7e§)
         {
            this.§7e§.addEventListeners();
         }
      }
      
      protected function §,2§() : void
      {
         if(this.§5`§)
         {
            this.§0Q§ = §+_§.initialize(this.§5`§);
            this.§0Q§.speed = 1;
            this.§0Q§.play();
            this.§+h§ = -1000;
            this.§5`§ = null;
         }
      }
      
      public function §0!J§(param1:String) : void
      {
         this.§5`§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§0Q§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§0Q§)
         {
            if(param1)
            {
               this.§0Q§.speed = Math.min(this.§0Q§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§0Q§.speed = Math.max(this.§0Q§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§0Q§)
         {
            this.§0Q§.speed = 1;
         }
      }
      
      protected function initLevelObjectManager(param1:§1!&§) : §8y§
      {
         return new §8y§(this,param1,new Sprite());
      }
      
      protected function initLevelCamera(param1:§1!&§) : §6!>§
      {
         return new §6!>§(this,param1);
      }
      
      protected function initLevelBackground(param1:String, param2:Number, param3:§^Q§, param4:Number) : §,!F§
      {
         return new §,!F§(param1,param2,param3,param4);
      }
      
      protected function initLevelSlingshot(param1:§1!&§) : §8!;§
      {
         return new §8!;§(this,param1,new Sprite());
      }
      
      protected function §0!<§(param1:§]!%§, param2:§^Q§) : §3r§
      {
         return new §3r§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§1!&§ = this.§^w§();
         var _loc4_:§#"§;
         (_loc4_ = new §#"§()).left = 0;
         _loc4_.top = -§6!>§.§8D§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §6!>§.§8D§;
         _loc4_.right = _loc4_.left + §6!>§.§72§;
         _loc4_.y = -13.929;
         _loc4_.x = §6!>§.§72§;
         _loc4_.id = §6!>§.§;! §;
         _loc3_.§]%§(_loc4_);
         var _loc5_:§#"§;
         (_loc5_ = new §#"§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §6!>§.§72§;
         _loc5_.bottom = _loc5_.top + §6!>§.§8D§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §6!>§.§72§ / 2;
         _loc5_.id = §6!>§.§<!>§;
         _loc3_.§]%§(_loc5_);
         this.§!n§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§"g§ != null)
         {
            _loc3_.theme = §"g§;
         }
         this.init(_loc3_);
      }
      
      protected function §!n§(param1:§1!&§, param2:Boolean) : void
      {
         if(param2)
         {
            this.§"C§(param1);
         }
      }
      
      protected function §^w§() : §1!&§
      {
         var _loc1_:§1!&§ = new §1!&§();
         _loc1_.§+C§ = -12;
         return new §1!&§();
      }
      
      protected function §!u§() : Number
      {
         this.§##§ ^= this.§##§ << 21;
         this.§##§ ^= this.§##§ >>> 35;
         this.§##§ ^= this.§##§ << 4;
         return this.§##§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §"C§(param1:§1!&§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§4Z§ = null;
         this.§##§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§!u§() * 5;
               (_loc5_ = new §4Z§()).x = 30 + _loc3_ * 10 + this.§!u§() * 9;
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
                  _loc5_.angle = 45 - this.§!u§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§!u§() * 3 - _loc3_ * 8;
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
                  _loc5_.angle = this.§!u§() * 360;
               }
               param1.addObject(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      public function §=t§() : void
      {
         if(§,!F§.§^V§)
         {
            this.§22§(this.§5N§.§"!C§,false);
         }
         this.§22§(this.§<s§.§&!#§(§3r§.§]P§),false);
         this.§22§(this.§<s§.§&!#§(§3r§.§+W§),true);
         this.§22§(this.§<s§.§&!#§(§3r§.§%'§),true);
         this.§22§(this.§3!<§.§&!9§,true);
         this.§22§(this.§?<§.sprite,true);
         this.§22§(this.§<s§.§&!#§(§3r§.§"H§),true);
         this.§22§(this.§5N§.§^F§,false);
         if(§,!F§.§^V§)
         {
            this.§22§(this.§5N§.§'a§,false);
         }
         this.§22§(this.§<s§.§&!#§(§3r§.§=T§),true);
      }
      
      protected function §22§(param1:Sprite, param2:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(param1);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         param1 /= §'5§.§@!=§;
         param2 /= §'5§.§@!=§;
         _loc3_.x = (param1 / §6!>§.§&h§ + this.§&D§.§[G§ - §6!>§.§`o§ / §6!>§.§&h§) * §@!I§;
         _loc3_.y = (param2 / §6!>§.§&h§ + this.§&D§.§,%§ - §6!>§.§`-§ / §6!>§.§&h§) * §@!I§;
         return _loc3_;
      }
      
      public function §!2§(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / §@!I§ + §6!>§.§`o§ / §6!>§.§&h§ - this.§&D§.§[G§) * §6!>§.§&h§;
         _loc3_.y = (param2 / §@!I§ + §6!>§.§`-§ / §6!>§.§&h§ - this.§&D§.§,%§) * §6!>§.§&h§;
         var _loc4_:Number = Math.max(§'5§.§@!=§,§'5§.§1G§);
         _loc3_.x *= _loc4_;
         _loc3_.y *= _loc4_;
         return _loc3_;
      }
      
      public function §[!&§(param1:String, param2:Number, param3:Number) : void
      {
         this.§3!<§.addObject(param1,param2,param3);
      }
      
      public function §`!I§() : void
      {
         if(this.§[1§)
         {
            this.§[1§.visible = true;
            this.§[1§.alpha = 0;
         }
         this.§0T§ = 0;
      }
      
      public function §3!F§() : void
      {
         this.§-!C§ = new § e§(§>-§.§?U§,§>-§.§;t§);
      }
      
      public function §^T§() : void
      {
         this.§-!C§ = null;
      }
      
      public function clearLevel() : void
      {
         if(this.§5N§)
         {
            this.§5N§.dispose();
            this.§5N§ = null;
         }
         if(this.§3!<§)
         {
            this.§3!<§.dispose();
            this.§3!<§ = null;
            this.§2o§ = null;
         }
         if(this.§#S§)
         {
            if(!this.§#S§.§[!+§)
            {
            }
            this.§#S§.clear();
            this.§#S§ = null;
         }
         if(this.§8!%§)
         {
            this.§8!%§.clear();
            this.§8!%§ = null;
         }
         if(this.§?<§)
         {
            this.§?<§.dispose();
            this.§?<§ = null;
         }
         if(this.§&D§)
         {
            this.§&D§.clear();
            this.§&D§ = null;
         }
         if(this.§<s§)
         {
            this.§<s§.dispose();
            this.§<s§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§0G§ = 0;
         this.§5R§ = 0;
         this.mReadyToRun = false;
         this.§[s§ = false;
         this.§0T§ = §>-§.§4$§;
         if(this.§5!B§)
         {
            (this.§5!B§ as §^S§).§;!E§.x = 0;
            (this.§5!B§ as §^S§).§;!E§.y = 0;
         }
         if(this.§[1§)
         {
            this.§[1§.visible = false;
         }
         this.§0Q§ = null;
         this.§!!;§ = null;
         if(this.§ ^§)
         {
            this.§ ^§.removeEventListener(Event.COMPLETE,this.§0y§);
            this.§ ^§.removeEventListener(Event.CANCEL,this.§ p§);
         }
         if(this.§ '§)
         {
            this.§ '§.removeEventListener(Event.COMPLETE,this.§1P§);
            this.§ '§.removeEventListener(Event.CANCEL,this.§-!I§);
         }
         this.§4l§();
         if(§5!@§.§8%§)
         {
            §5!@§.§8%§.color = 0;
         }
         if(this.§7e§)
         {
            this.§7e§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver() : void
      {
      }
      
      public function §2-§() : String
      {
         if(this.§!!;§)
         {
            return this.§!!;§.toString();
         }
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         if(!this.mReadyToRun || !§5!@§.§;_§())
         {
            return 0;
         }
         if(this.§0Q§ && this.§0Q§.§8f§)
         {
            return this.§]w§(param1,param2,param3);
         }
         return this.§`!3§(param1,true,param2,param3);
      }
      
      protected function §`!3§(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         if(this.§;f§)
         {
            param1 *= 0.2;
            if(§5!@§.§2x§)
            {
               §5!@§.§2x§.speed = 0.2;
            }
         }
         var _loc5_:Number = 0;
         this.§5R§ += param1;
         if(param3)
         {
            this.§0G§ += param1;
            _loc5_ = this.§#S§.§#F§(this.§0G§);
            this.§?<§.update(param1,param4);
            this.§0G§ = _loc5_;
         }
         else
         {
            this.§3!<§.§3F§(param1);
            this.§0G§ = 0;
         }
         if(param2)
         {
            this.§%k§(param1,_loc5_);
         }
         return param1;
      }
      
      private function §]w§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc5_:Number = NaN;
         var _loc4_:Number = §;,§.§^1§ * 1000;
         if(this.§0Q§)
         {
            param1 *= this.§0Q§.speed;
            _loc5_ = this.§5R§ + param1;
            while(this.§5R§ + _loc4_ < _loc5_)
            {
               if(this.§5R§ + _loc4_ > this.§+h§)
               {
                  this.§0Q§.step(this);
                  this.§+h§ += _loc4_;
               }
               this.§`!3§(_loc4_,false,param2,param3);
            }
            if(_loc5_ > this.§+h§ + _loc4_)
            {
               this.§0Q§.step(this);
               this.§+h§ += _loc4_;
            }
            if(this.§5R§ < _loc5_)
            {
               this.§`!3§(_loc5_ - this.§5R§,true,param2,param3);
            }
            return param1;
         }
         return this.§`!3§(_loc4_,true,param2,param3);
      }
      
      private function §%k§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.§5N§.update(param1);
         this.§3!<§.§[]§(param1,param2);
         this.§@t§();
         if(this.§0T§ < §>-§.§4$§)
         {
            this.§0T§ += param1;
            _loc3_ = §>-§.§4$§ / 2;
            _loc4_ = (-Math.abs(this.§0T§ - _loc3_) + _loc3_) * (§>-§.§>4§ / _loc3_);
            if(this.§[1§)
            {
               this.§[1§.alpha = _loc4_;
            }
         }
         else if(this.§[1§)
         {
            this.§[1§.visible = false;
         }
         if(this.§-!C§)
         {
            if(!this.§-!C§.§!s§(this.§&D§,param1))
            {
               this.§^T§();
            }
         }
         this.§&D§.§;p§(param1);
         this.§#S§.§5!;§();
         this.§<s§.update(param1);
      }
      
      public function §5D§(param1:Number) : void
      {
         this.objects.§3F§(param1 * 1000);
         this.objects.§2!#§(param1 * 1000);
         this.§@!@§();
      }
      
      public function §@t§() : void
      {
         var _loc1_:§@!4§ = null;
         if(this.§5R§ > this.§2!F§ + 1000 / 30)
         {
            if(this.§>C§ != null)
            {
               for each(_loc1_ in this.§>C§)
               {
                  _loc1_.addTrail();
               }
            }
            this.§2!F§ = this.§5R§;
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§@!4§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.§3!<§.isPigsAlive(true))
            {
               _loc2_ = this.§3!<§.§!!<§(true);
               if(_loc2_)
               {
                  _loc2_.§`V§.mTryToScream = §8X§.§4k§;
                  this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§3!<§.§,!9§());
               }
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            if(this.§3!<§.isPigsAlive(true))
            {
               _loc2_ = this.§3!<§.§!!<§(true);
               if(_loc2_)
               {
                  _loc2_.§`V§.mTryToBlink = §8X§.§^!§;
                  this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§3!<§.§,!9§());
               }
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §>Z§.§&N§;
         }
         §3,§.addScore(param1,param2);
         this.§7e§.addScore(param1);
         if(param3 && param1 > 0 && !this.§-!7§)
         {
            this.§%8§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §%8§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §>Z§.§3!;§;
         }
         this.§<s§.§48§(§>Z§.§[@§,§3r§.§=T§,§>Z§.§70§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §^4§(param1:§@!4§) : void
      {
         if(this.§>C§ == null)
         {
            this.§>C§ = new Array();
         }
         this.§>C§.push(param1);
      }
      
      public function §5!+§() : void
      {
         this.§?<§.§5!+§();
         this.§3!<§.§5x§();
         this.§-!7§ = true;
      }
      
      public function §<<§(param1:§@!4§) : void
      {
         this.§<s§.§10§(§3r§.§]P§);
         if(this.§>C§.indexOf(param1) >= 0)
         {
            this.§>C§.splice(this.§>C§.indexOf(param1),1);
         }
         if(this.§>C§.length == 0)
         {
            this.§>C§ = null;
         }
      }
      
      public function §5o§(param1:§%!,§, param2:Number, param3:Number) : void
      {
         this.§2o§ = this.§3!<§.addObject(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
         var _loc4_:Number = param1.name.toUpperCase() == "BIRD_GREEN" ? Number(§8!;§.§%!'§) : Number(§8!;§.§4#§);
         if(param1.§#v§ > 1)
         {
            this.§2o§.§]!K§(param1.§#v§);
            this.§2o§.§`V§.§`!;§();
         }
         if(param1.§&x§ != 0)
         {
            _loc4_ = param1.§&x§;
         }
         var _loc5_:Number = -_loc4_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc6_:Number = _loc4_ * param2 * Math.sin(param3 / (180 / Math.PI));
         this.§2o§.§,I§(new b2Vec2(_loc5_,_loc6_),false,true);
         this.camera.§`6§(§6!>§.§[!1§);
         if(this.§!!;§)
         {
            this.§!!;§.§5o§(this.§#S§.§@e§,param1.x,param1.y,param2,param3);
         }
      }
      
      public function activatePowerup() : void
      {
         this.§[s§ = true;
      }
      
      private function §@!@§() : void
      {
         if(!this.§[s§)
         {
            return;
         }
         this.§[s§ = false;
         if(this.activeObject is §>!4§ && !(this.activeObject as §>!4§).§8m§)
         {
            if(this.activeObject.activateSpecialPower(this.§ R§))
            {
               this.§=6§ = true;
            }
         }
         else
         {
            this.§3!<§.§7!%§();
         }
         if(this.§!!;§)
         {
            this.§!!;§.§&c§(this.§#S§.§@e§);
         }
      }
      
      public function § 8§() : void
      {
         this.§3!<§.§ 8§();
      }
      
      public function §4!B§() : void
      {
         this.§3!<§.§7!C§();
      }
      
      public function §6!9§() : §1!&§
      {
         var _loc1_:§1!&§ = new §1!&§();
         _loc1_.§0'§ = this.§38§.§0'§;
         _loc1_.§@c§ = this.§38§.§@c§;
         this.§&D§.§8!A§(_loc1_);
         this.§3!<§.§;!'§(_loc1_);
         this.§?<§.§0g§(_loc1_);
         _loc1_.theme = this.§5N§.§-@§();
         return _loc1_;
      }
      
      public function §?!L§() : int
      {
         return this.§38§.§@c§;
      }
      
      public function §?$§() : int
      {
         return this.§38§.§0'§;
      }
      
      public function §>!A§(param1:int) : void
      {
         this.§38§.§@c§ = param1;
      }
      
      public function §=-§(param1:int) : void
      {
         this.§38§.§0'§ = param1;
      }
      
      public function §^p§(param1:Number, param2:Number) : void
      {
         if(this.§<!#§)
         {
            this.§<!#§.§!k§(param1,param2);
         }
         if(this.§&D§)
         {
            this.§&D§.§;p§(0);
         }
      }
      
      public function get §!@§() : §1!&§
      {
         return this.§38§;
      }
      
      public function get § R§() : §8y§
      {
         return this.§3!<§;
      }
      
      protected function get starling() : §5!@§
      {
         return this.§`x§;
      }
      
      public function get §^!0§() : int
      {
         return §=I§;
      }
   }
}
