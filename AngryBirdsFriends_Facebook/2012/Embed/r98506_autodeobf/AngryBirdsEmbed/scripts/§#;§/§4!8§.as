package §#;§
{
   import §"a§.§8P§;
   import §"a§.§>X§;
   import §"a§.§`9§;
   import §#+§.§61§;
   import §#+§.§^i§;
   import §&1§.§35§;
   import §&c§.§+`§;
   import §&c§.§1!$§;
   import §&c§.§9h§;
   import §&c§.§<'§;
   import §',§.§0W§;
   import §+2§.§1!4§;
   import §-p§.§&2§;
   import §2!+§.§'!G§;
   import §8!G§.§![§;
   import §8!G§.§-Z§;
   import §8!G§.§1w§;
   import §8!G§.§2'§;
   import §8g§.§"g§;
   import §8g§.§<D§;
   import §;!5§.§=y§;
   import §;%§.§8o§;
   import §;q§.DisplayObject;
   import §;q§.Sprite;
   import §>K§.§%H§;
   import §>z§.§!8§;
   import §`t§.§^?§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §4!8§
   {
      
      private static const §`n§:int = 20;
      
      public static const §2R§:Number = §^?§.§7i§;
      
      public static const §3!+§:Number = §^?§.§3[§;
      
      public static const §5+§:Number = 1 / 20;
      
      public static const §[`§:Number = §^?§.§3[§ * §5+§;
      
      public static const §!!$§:Number = §2R§ * §5+§;
      
      public static const § ]§:§%H§ = new §%H§(13 - 3);
      
      public static var §-!3§:Number = 1;
      
      protected static var §6!%§:String = §1w§.§6@§;
       
      
      protected var §if§:§<'§;
      
      private var §5V§:§9h§;
      
      private var §-w§:Array = null;
      
      protected var §=!A§:§35§;
      
      public var §9J§:§@l§;
      
      protected var §!%§:§+!>§;
      
      protected var §'!5§:§=y§;
      
      protected var §0@§:§!l§;
      
      protected var §1E§:§"g§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §3!G§:Boolean = false;
      
      protected var §=@§:Boolean = false;
      
      protected var §;Q§:Boolean = false;
      
      public var §<!J§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §3!B§:Number;
      
      public var §0n§:Number;
      
      private var §,q§:Number;
      
      public var §;C§:§2'§;
      
      public var §3T§:Boolean = false;
      
      private var §",§:§#O§;
      
      private var §+1§:Sprite;
      
      protected var §0Y§:§1w§;
      
      protected var §10§:§!8§ = null;
      
      private var §"G§:EventDispatcher;
      
      private var override:Array;
      
      private var §4d§:Array;
      
      protected var §0!F§:§8o§;
      
      private var §'2§:§0W§;
      
      protected var §>t§:§>X§;
      
      protected var §,3§:§8P§;
      
      private var §0!D§:§`9§;
      
      private var §,!D§:§`9§;
      
      private var §#K§:§`9§;
      
      private var § j§:Stage;
      
      private var §=2§:§<!E§;
      
      protected var §09§:§1!4§;
      
      protected var §=!@§:§1!4§;
      
      protected var §];§:Number = 0.0;
      
      protected var §?R§:String;
      
      private var §@!>§:Boolean;
      
      protected var §#E§:Boolean;
      
      protected var §?!%§:uint = 1.417339207E9;
      
      public var §-F§:Boolean;
      
      public function §4!8§(param1:Stage)
      {
         this.§4d§ = [];
         super();
         this.§"G§ = new EventDispatcher();
         this.§;C§ = new §2'§();
         this.§ j§ = param1;
         this.§>t§ = §>X§.§72§;
         this.§,3§ = this.initAnimationManager(this.§>t§);
         this.§0!D§ = this.initThemeGraphicsManager();
         this.§,!D§ = this.§]!H§();
         this.§#K§ = this.§<!-§();
         var _loc2_:Stage3D = param1.stage3Ds[0];
         this.§0!F§ = new §8o§(§#O§,param1,new Rectangle(0,0,§^?§.§7i§,§^?§.§3[§),_loc2_);
         §^?§.§?f§.addEventListener(Event.ENTER_FRAME,this.§0!F§.onEnterFrame);
         _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§"!F§,false,0,true);
         this.§0!F§.§"n§ = false;
         this.§0!F§.enableErrorChecking = false;
         this.§0!F§.§8!@§ = 2;
         this.§0!F§.§2!$§();
      }
      
      public static function §?'§(param1:§9h§, param2:§9h§) : Number
      {
         var _loc3_:Number = param1.§"d§ - param2.§"d§;
         var _loc4_:Number = param1.§?! § - param2.§?! §;
         return §4M§(_loc3_,_loc4_);
      }
      
      public static function §4M§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         if(!this.§+1§ && this.§0!;§)
         {
            this.§+1§ = this.§",§.§>g§;
         }
         return this.§+1§;
      }
      
      public function get §0!;§() : Sprite
      {
         if(!this.§",§)
         {
            this.§",§ = this.§0!F§.§;p§ as §#O§;
            this.§",§.§9$§ = false;
         }
         return this.§",§;
      }
      
      private function get §#!H§() : DisplayObject
      {
         if(this.§0!;§)
         {
            return (this.§0!;§ as §#O§).§#!H§;
         }
         return null;
      }
      
      public function get §`,§() : §8P§
      {
         return this.§,3§;
      }
      
      public function get textureManager() : §>X§
      {
         return this.§>t§;
      }
      
      public function get camera() : §=y§
      {
         return this.§'!5§;
      }
      
      public function get objects() : §<'§
      {
         return this.§if§;
      }
      
      public function get particles() : §"g§
      {
         return this.§1E§;
      }
      
      public function get background() : §35§
      {
         return this.§=!A§;
      }
      
      public function get slingshot() : §!l§
      {
         return this.§0@§;
      }
      
      public function get activeObject() : §9h§
      {
         return this.§5V§;
      }
      
      public function get §-x§() : §+!>§
      {
         return this.§!%§;
      }
      
      public function get stage() : Stage
      {
         return this.§ j§;
      }
      
      public function get §&"§() : §`9§
      {
         return this.§#K§;
      }
      
      protected function get §3!D§() : §`9§
      {
         return this.§0!D§;
      }
      
      public function set activeObject(param1:§9h§) : void
      {
         this.§5V§ = param1;
      }
      
      public function set §&!E§(param1:Boolean) : void
      {
         this.§#E§ = param1;
      }
      
      public function clear() : void
      {
         if(this.§'2§)
         {
            this.§'2§.dispose();
         }
         if(this.§>t§)
         {
            this.§>t§.dispose();
         }
         if(this.§0!D§ && this.§0!D§.textureManager)
         {
            this.§0!D§.textureManager.dispose();
         }
         if(this.§#K§ && this.§#K§.textureManager)
         {
            this.§#K§.textureManager.dispose();
         }
         if(this.§0!F§)
         {
            this.§0!F§.dispose();
         }
      }
      
      protected function initThemeGraphicsManager() : §`9§
      {
         return null;
      }
      
      protected function §]!H§() : §`9§
      {
         return null;
      }
      
      protected function §<!-§() : §`9§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§>X§) : §8P§
      {
         return new §8P§(param1);
      }
      
      public function § U§(param1:Boolean) : void
      {
         if(§8o§.§5J§)
         {
            if(param1)
            {
               §8o§.§5J§.start();
            }
            else
            {
               §8o§.§5J§.stop();
               §8o§.§5J§.color = 0;
            }
         }
      }
      
      public function §%0§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function §5S§(param1:§!8§) : void
      {
         if(this.§10§ != null)
         {
            this.§10§.removeEventListeners();
         }
         this.§10§ = param1;
         if(this.mReadyToRun)
         {
            this.§10§.addEventListeners();
         }
      }
      
      public function §9!7§() : §1!4§
      {
         return this.§09§;
      }
      
      public function §00§(param1:§0W§, param2:Array, param3:Function) : void
      {
         this.§'2§ = param1;
         var _loc4_:int = this.§'2§.§]!?§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§>t§.§"_§(this.§'2§.§0U§(_loc5_));
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§"G§.addEventListener(Event.INIT,param3);
            this.§4d§.push(param3);
         }
         if(this.§&Q§(param2))
         {
            this.§4!@§();
         }
      }
      
      private function §&Q§(param1:Array) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.§>t§.§>j§())
         {
            _loc2_ = this.§>t§.§1j§ / 1000;
            _loc3_ = this.§>t§.§8!;§ / 1000;
            §&2§.log("\n\nMain texture manager memory usage:\n   textures " + _loc2_ + " kilobytes\n   bitmaps " + _loc3_ + " kilobytes\n\n");
            this.initializeAnimations(param1);
            return true;
         }
         this.override = param1.concat();
         return false;
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         this.§,3§.initializeAnimations(param1);
      }
      
      private function §"!F§(param1:Event) : void
      {
         this.§>t§.§'I§();
         if(this.§3!D§ && this.§3!D§.textureManager)
         {
            this.§3!D§.textureManager.§'I§();
         }
         if(this.§&"§ && this.§&"§.textureManager)
         {
            this.§&"§.textureManager.§'I§();
         }
         if(this.override)
         {
            this.§&Q§(this.override);
            this.override = null;
            this.§4!@§();
         }
         if(this.§10§ != null && this.mReadyToRun)
         {
            this.§10§.addEventListeners();
         }
         if(this.§0!D§)
         {
            this.§0!D§.§>j§();
         }
         if(this.§#K§)
         {
            if(this.§#K§.textureManager)
            {
               this.§#K§.textureManager.§'I§();
               this.§#K§.§>j§();
            }
         }
      }
      
      private function §4!@§() : void
      {
         this.§"G§.dispatchEvent(new Event(Event.INIT));
         this.§!!K§();
      }
      
      private function §!!K§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§4d§)
         {
            this.§"G§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§4d§ = [];
      }
      
      public function init(param1:§1w§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§!%§ = new §+!>§(this,param1);
         this.§'!5§ = this.initLevelCamera(param1);
         this.§3!B§ = 0;
         this.§0n§ = 0;
         this.§,q§ = 0;
         this.§@!>§ = false;
         this.mReadyToRun = false;
         this.§3!G§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         §6!%§ = param1.theme;
         this.§0Y§ = param1;
         this.§=@§ = this.§<f§(param1.theme);
         this.§;Q§ = this.§@!I§(param1.theme);
         if(this.§=@§ && this.§;Q§)
         {
            this.initialize(param1);
         }
         else
         {
            this.§9'§(param1.theme);
         }
         this.§`2§();
         §?b§.init();
      }
      
      protected function §`2§() : void
      {
         this.§09§ = new §1!4§(§-Z§.§%s§);
      }
      
      protected function §<f§(param1:String) : Boolean
      {
         if(this.§0!D§)
         {
            return false;
         }
         return true;
      }
      
      protected function §@!I§(param1:String) : Boolean
      {
         var _loc2_:§^i§ = null;
         if(this.§,!D§)
         {
            _loc2_ = §61§.§5!7§(param1);
            if(_loc2_)
            {
               if(_loc2_.§+P§ && !this.§,!D§.§;!7§(_loc2_.§+P§))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function §9'§(param1:String) : void
      {
         var _loc2_:§^i§ = null;
         if(this.§0!D§ && !this.§<f§(param1))
         {
            this.§0!D§.removeEventListener(Event.COMPLETE,this.§;!-§);
            this.§0!D§.removeEventListener(Event.CANCEL,this.§+!"§);
            this.§0!D§.addEventListener(Event.COMPLETE,this.§;!-§);
            this.§0!D§.addEventListener(Event.CANCEL,this.§+!"§);
            this.§0!D§.§=!J§(param1);
         }
         if(this.§,!D§ && !this.§@!I§(param1))
         {
            this.§,!D§.removeEventListener(Event.COMPLETE,this.§@!@§);
            this.§,!D§.removeEventListener(Event.CANCEL,this.§7!A§);
            this.§,!D§.addEventListener(Event.COMPLETE,this.§@!@§);
            this.§,!D§.addEventListener(Event.CANCEL,this.§7!A§);
            _loc2_ = §61§.§5!7§(param1);
            if(_loc2_)
            {
               this.§,!D§.§=!J§(_loc2_.§+P§);
            }
         }
      }
      
      private function §;!-§(param1:Event) : void
      {
         this.§0!D§.removeEventListener(Event.COMPLETE,this.§;!-§);
         this.§0!D§.removeEventListener(Event.CANCEL,this.§+!"§);
         this.§=@§ = true;
         if(this.§=@§ && this.§;Q§)
         {
            this.initialize(this.§0Y§);
         }
      }
      
      private function §+!"§(param1:Event) : void
      {
         this.§0!D§.removeEventListener(Event.COMPLETE,this.§;!-§);
         this.§0!D§.removeEventListener(Event.CANCEL,this.§+!"§);
         this.§3!G§ = true;
      }
      
      private function §@!@§(param1:Event) : void
      {
         this.§0!D§.removeEventListener(Event.COMPLETE,this.§@!@§);
         this.§0!D§.removeEventListener(Event.CANCEL,this.§7!A§);
         this.§;Q§ = true;
         if(this.§=@§ && this.§;Q§)
         {
            this.initialize(this.§0Y§);
         }
      }
      
      private function §7!A§(param1:Event) : void
      {
         this.§0!D§.removeEventListener(Event.COMPLETE,this.§@!@§);
         this.§0!D§.removeEventListener(Event.CANCEL,this.§7!A§);
         this.§;Q§ = true;
         if(this.§=@§ && this.§;Q§)
         {
            this.initialize(this.§0Y§);
         }
      }
      
      public function get backgroundTextureManager() : §>X§
      {
         return this.§>t§;
      }
      
      protected function initialize(param1:§1w§) : void
      {
         this.§#E§ = false;
         this.§-F§ = false;
         if(§8o§.§-X§)
         {
            §8o§.§-X§.speed = 1;
         }
         this.§9J§ = new §@l§(this);
         this.§=!A§ = this.initLevelBackground(param1.theme,this.§!%§.§in § / §5+§,this.backgroundTextureManager,this.§'!5§.§9!5§());
         this.§=!A§.§6!<§(§^?§.§8! §());
         this.§if§ = this.initLevelObjectManager(param1);
         this.§0@§ = this.initLevelSlingshot(param1);
         this.§1E§ = this.§"$§(this.§,3§,this.§>t§);
         this.§'!5§.init();
         this.§'T§();
         this.§0!H§();
         this.mReadyToRun = true;
         if(this.§10§)
         {
            this.§10§.addEventListeners();
         }
      }
      
      protected function §0!H§() : void
      {
         if(this.§?R§)
         {
            this.§=!@§ = §1!4§.initialize(this.§?R§);
            this.§=!@§.speed = 1;
            this.§=!@§.play();
            this.§];§ = -1000;
            this.§?R§ = null;
         }
      }
      
      public function §^b§(param1:String) : void
      {
         this.§?R§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§=!@§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§=!@§)
         {
            if(param1)
            {
               this.§=!@§.speed = Math.min(this.§=!@§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§=!@§.speed = Math.max(this.§=!@§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§=!@§)
         {
            this.§=!@§.speed = 1;
         }
      }
      
      protected function initLevelObjectManager(param1:§1w§) : §<'§
      {
         return new §<'§(this,param1,new Sprite());
      }
      
      protected function initLevelCamera(param1:§1w§) : §=y§
      {
         return new §=y§(this,param1);
      }
      
      protected function initLevelBackground(param1:String, param2:Number, param3:§>X§, param4:Number) : §35§
      {
         return new §35§(param1,param2,param3,param4);
      }
      
      protected function initLevelSlingshot(param1:§1w§) : §!l§
      {
         return new §!l§(this,param1,new Sprite());
      }
      
      protected function §"$§(param1:§8P§, param2:§>X§) : §"g§
      {
         return new §"g§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§1w§ = this.§^!F§();
         var _loc4_:§![§;
         (_loc4_ = new §![§()).left = 0;
         _loc4_.top = -§=y§.§#!@§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §=y§.§#!@§;
         _loc4_.right = _loc4_.left + §=y§.§%n§;
         _loc4_.y = -13.929;
         _loc4_.x = §=y§.§%n§;
         _loc4_.id = §=y§.§#k§;
         _loc3_.§7s§(_loc4_);
         var _loc5_:§![§;
         (_loc5_ = new §![§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §=y§.§%n§;
         _loc5_.bottom = _loc5_.top + §=y§.§#!@§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §=y§.§%n§ / 2;
         _loc5_.id = §=y§.§<w§;
         _loc3_.§7s§(_loc5_);
         this.§&j§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§6!%§ != null)
         {
            _loc3_.theme = §6!%§;
         }
         this.init(_loc3_);
      }
      
      protected function §&j§(param1:§1w§, param2:Boolean) : void
      {
         if(param2)
         {
            this.§!I§(param1);
         }
      }
      
      protected function §^!F§() : §1w§
      {
         var _loc1_:§1w§ = new §1w§();
         _loc1_.§9^§ = -12;
         return new §1w§();
      }
      
      protected function §69§() : Number
      {
         this.§?!%§ ^= this.§?!%§ << 21;
         this.§?!%§ ^= this.§?!%§ >>> 35;
         this.§?!%§ ^= this.§?!%§ << 4;
         return this.§?!%§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §!I§(param1:§1w§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§'!G§ = null;
         this.§?!%§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§69§() * 5;
               (_loc5_ = new §'!G§()).x = 30 + _loc3_ * 10 + this.§69§() * 9;
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
                  _loc5_.angle = 45 - this.§69§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§69§() * 3 - _loc3_ * 8;
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
                  _loc5_.angle = this.§69§() * 360;
               }
               param1.addObject(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      private function §-m§() : void
      {
      }
      
      public function §'T§() : void
      {
         if(§35§.§?5§)
         {
            this.§2&§(this.§=!A§.§[#§,false);
         }
         this.§2&§(this.§1E§.§2Q§(§"g§.§07§),false);
         this.§2&§(this.§1E§.§2Q§(§"g§.§#e§),true);
         this.§2&§(this.§1E§.§2Q§(§"g§.§+! §),true);
         this.§2&§(this.§if§.§[J§,true);
         this.§2&§(this.§0@§.sprite,true);
         this.§2&§(this.§1E§.§2Q§(§"g§.§;$§),true);
         this.§2&§(this.§=!A§.§[0§,false);
         if(§35§.§?5§)
         {
            this.§2&§(this.§=!A§.§[!+§,false);
         }
         this.§2&§(this.§1E§.§2Q§(§"g§.§?!8§),true);
      }
      
      private function §2&§(param1:Sprite, param2:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(param1);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         param1 /= §^?§.§3!,§;
         param2 /= §^?§.§3!,§;
         _loc3_.x = (param1 / §=y§.§=;§ + this.§'!5§.§ "§ - §=y§.§1I§ / §=y§.§=;§) * §5+§;
         _loc3_.y = (param2 / §=y§.§=;§ + this.§'!5§.§9G§ - §=y§.§^§ / §=y§.§=;§) * §5+§;
         return _loc3_;
      }
      
      public function §^!6§(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / §5+§ + §=y§.§1I§ / §=y§.§=;§ - this.§'!5§.§ "§) * §=y§.§=;§;
         _loc3_.y = (param2 / §5+§ + §=y§.§^§ / §=y§.§=;§ - this.§'!5§.§9G§) * §=y§.§=;§;
         var _loc4_:Number = Math.max(§^?§.§3!,§,§^?§.§7!$§);
         _loc3_.x *= _loc4_;
         _loc3_.y *= _loc4_;
         return _loc3_;
      }
      
      public function §<`§(param1:String, param2:Number, param3:Number) : void
      {
         this.§if§.addObject(param1,param2,param3);
      }
      
      public function §93§() : void
      {
         if(this.§#!H§)
         {
            this.§#!H§.visible = true;
            this.§#!H§.alpha = 0;
         }
         this.§<!J§ = 0;
      }
      
      public function §]!>§() : void
      {
         this.§=2§ = new §<!E§(§<!+§.§ !8§,§<!+§.§>@§);
      }
      
      public function §4!D§() : void
      {
         this.§=2§ = null;
      }
      
      public function clearLevel() : void
      {
         if(this.§=!A§)
         {
            this.§=!A§.dispose();
            this.§=!A§ = null;
         }
         if(this.§if§)
         {
            this.§if§.dispose();
            this.§if§ = null;
            this.§5V§ = null;
         }
         if(this.§9J§)
         {
            if(!this.§9J§.§87§)
            {
            }
            this.§9J§.clear();
            this.§9J§ = null;
         }
         if(this.§!%§)
         {
            this.§!%§.clear();
            this.§!%§ = null;
         }
         if(this.§0@§)
         {
            this.§0@§.dispose();
            this.§0@§ = null;
         }
         if(this.§'!5§)
         {
            this.§'!5§.clear();
            this.§'!5§ = null;
         }
         if(this.§1E§)
         {
            this.§1E§.dispose();
            this.§1E§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§3!B§ = 0;
         this.§0n§ = 0;
         this.mReadyToRun = false;
         this.§@!>§ = false;
         this.§<!J§ = §<!+§.§4]§;
         if(this.§0!;§)
         {
            (this.§0!;§ as §#O§).§?!A§.x = 0;
            (this.§0!;§ as §#O§).§?!A§.y = 0;
         }
         if(this.§#!H§)
         {
            this.§#!H§.visible = false;
         }
         this.§=!@§ = null;
         this.§09§ = null;
         if(this.§0!D§)
         {
            this.§0!D§.removeEventListener(Event.COMPLETE,this.§;!-§);
            this.§0!D§.removeEventListener(Event.CANCEL,this.§+!"§);
         }
         if(this.§,!D§)
         {
            this.§,!D§.removeEventListener(Event.COMPLETE,this.§@!@§);
            this.§,!D§.removeEventListener(Event.CANCEL,this.§7!A§);
         }
         this.§!!K§();
         if(§8o§.§5J§)
         {
            §8o§.§5J§.color = 0;
         }
         if(this.§10§)
         {
            this.§10§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver() : void
      {
      }
      
      public function § !4§() : String
      {
         if(this.§09§)
         {
            return this.§09§.toString();
         }
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         if(!this.mReadyToRun || !§8o§.§2i§())
         {
            return 0;
         }
         if(this.§=!@§ && this.§=!@§.§-D§)
         {
            return this.§^!9§(param1,param2,param3);
         }
         return this.§#!G§(param1,true,param2,param3);
      }
      
      protected function §#!G§(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         if(this.§#E§)
         {
            param1 *= 0.2;
            if(§8o§.§-X§)
            {
               §8o§.§-X§.speed = 0.2;
            }
         }
         var _loc5_:Number = 0;
         this.§0n§ += param1;
         if(param3)
         {
            this.§3!B§ += param1;
            _loc5_ = this.§9J§.§3]§(this.§3!B§);
            this.§0@§.update(param1,param4);
            this.§3!B§ = _loc5_;
         }
         else
         {
            this.§if§.§<"§(param1);
            this.§3!B§ = 0;
         }
         if(param2)
         {
            this.§5!D§(param1,_loc5_);
         }
         return param1;
      }
      
      private function §^!9§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc5_:Number = NaN;
         var _loc4_:Number = §@l§.§[!F§ * 1000;
         if(this.§=!@§)
         {
            param1 *= this.§=!@§.speed;
            _loc5_ = this.§0n§ + param1;
            while(this.§0n§ + _loc4_ < _loc5_)
            {
               if(this.§0n§ + _loc4_ > this.§];§)
               {
                  this.§=!@§.step(this);
                  this.§];§ += _loc4_;
               }
               this.§#!G§(_loc4_,false,param2,param3);
            }
            if(_loc5_ > this.§];§ + _loc4_)
            {
               this.§=!@§.step(this);
               this.§];§ += _loc4_;
            }
            if(this.§0n§ < _loc5_)
            {
               this.§#!G§(_loc5_ - this.§0n§,true,param2,param3);
            }
            return param1;
         }
         return this.§#!G§(_loc4_,true,param2,param3);
      }
      
      private function §5!D§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.§=!A§.update(param1);
         this.§if§.§-B§(param1,param2);
         this.§]!@§();
         if(this.§<!J§ < §<!+§.§4]§)
         {
            this.§<!J§ += param1;
            _loc3_ = §<!+§.§4]§ / 2;
            _loc4_ = (-Math.abs(this.§<!J§ - _loc3_) + _loc3_) * (§<!+§.§>§ / _loc3_);
            if(this.§#!H§)
            {
               this.§#!H§.alpha = _loc4_;
            }
         }
         else if(this.§#!H§)
         {
            this.§#!H§.visible = false;
         }
         if(this.§=2§)
         {
            if(!this.§=2§.§`!0§(this.§'!5§,param1))
            {
               this.§4!D§();
            }
         }
         this.§'!5§.§ S§(param1);
         this.§9J§.§"!&§();
         this.§1E§.update(param1);
      }
      
      public function §5j§(param1:Number) : void
      {
         this.objects.§<"§(param1 * 1000);
         this.objects.§?!6§(param1 * 1000);
         this.§2M§();
      }
      
      public function §]!@§() : void
      {
         var _loc1_:§9h§ = null;
         if(this.§0n§ > this.§,q§ + 1000 / 30)
         {
            if(this.§-w§ != null)
            {
               for each(_loc1_ in this.§-w§)
               {
                  _loc1_.addTrail();
               }
            }
            this.§,q§ = this.§0n§;
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§9h§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.§if§.isPigsAlive(true))
            {
               _loc2_ = this.§if§.§1!7§(true);
               _loc2_.§<!'§.mTryToScream = §+`§.§0;§;
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§if§.§&X§());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            if(this.§if§.isPigsAlive(true))
            {
               _loc2_ = this.§if§.§1!7§(true);
               _loc2_.§<!'§.mTryToBlink = §+`§.§'O§;
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§if§.§&X§());
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §<D§.§#b§;
         }
         §?b§.addScore(param1,param2);
         this.§10§.addScore(param1);
         if(param3 && param1 > 0 && !this.§-F§)
         {
            this.§<i§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §<i§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §<D§.§"!G§;
         }
         this.§1E§.§[!5§(§<D§.§#w§,§"g§.§?!8§,§<D§.§0!2§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §+!#§(param1:§9h§) : void
      {
         if(this.§-w§ == null)
         {
            this.§-w§ = new Array();
         }
         this.§-w§.push(param1);
      }
      
      public function §case§() : void
      {
         this.§0@§.§case§();
         this.§if§.§5E§();
         this.§-F§ = true;
      }
      
      public function §]%§(param1:§9h§) : void
      {
         this.§1E§.§[X§(§"g§.§07§);
         if(this.§-w§.indexOf(param1) >= 0)
         {
            this.§-w§.splice(this.§-w§.indexOf(param1),1);
         }
         if(this.§-w§.length == 0)
         {
            this.§-w§ = null;
         }
      }
      
      public function §9!>§(param1:§0#§, param2:Number, param3:Number) : void
      {
         this.§5V§ = this.§if§.addObject(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
         var _loc4_:Number = param1.name.toUpperCase() == "BIRD_GREEN" ? Number(§!l§.§01§) : Number(§!l§.§5!;§);
         if(param1.§1!@§ > 1)
         {
            this.§5V§.§8+§(param1.§1!@§);
            this.§5V§.§<!'§.§,S§();
         }
         if(param1.§6_§ != 0)
         {
            _loc4_ = param1.§6_§;
         }
         var _loc5_:Number = -_loc4_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc6_:Number = _loc4_ * param2 * Math.sin(param3 / (180 / Math.PI));
         this.§5V§.§4c§(new b2Vec2(_loc5_,_loc6_),false,true);
         this.camera.§^e§(§=y§.§?m§);
         if(this.§09§)
         {
            this.§09§.§9!>§(this.§9J§.§3D§,param1.x,param1.y,param2,param3);
         }
      }
      
      public function activatePowerup() : void
      {
         this.§@!>§ = true;
      }
      
      private function §2M§() : void
      {
         if(!this.§@!>§)
         {
            return;
         }
         this.§@!>§ = false;
         if(this.activeObject is §1!$§ && !(this.activeObject as §1!$§).§1V§)
         {
            if(this.activeObject.activateSpecialPower(this.§]!+§))
            {
               this.§3T§ = true;
            }
         }
         else
         {
            this.§if§.§@N§();
         }
         if(this.§09§)
         {
            this.§09§.§ set§(this.§9J§.§3D§);
         }
      }
      
      public function §^!?§() : void
      {
         this.§if§.§^!?§();
      }
      
      public function §>`§() : void
      {
         this.§if§.§1C§();
      }
      
      public function §8V§() : §1w§
      {
         var _loc1_:§1w§ = new §1w§();
         _loc1_.§@K§ = this.§0Y§.§@K§;
         _loc1_.§""§ = this.§0Y§.§""§;
         this.§'!5§.§7!C§(_loc1_);
         this.§if§.§4k§(_loc1_);
         this.§0@§.§2l§(_loc1_);
         _loc1_.theme = this.§=!A§.§3k§();
         return _loc1_;
      }
      
      public function §%!-§() : int
      {
         return this.§0Y§.§""§;
      }
      
      public function §3f§() : int
      {
         return this.§0Y§.§@K§;
      }
      
      public function §^!-§(param1:int) : void
      {
         this.§0Y§.§""§ = param1;
      }
      
      public function §`!<§(param1:int) : void
      {
         this.§0Y§.§@K§ = param1;
      }
      
      public function §^!C§(param1:Number, param2:Number) : void
      {
         if(this.§",§)
         {
            this.§",§.§5P§(param1,param2);
         }
         if(this.§'!5§)
         {
            this.§'!5§.§ S§(0);
         }
      }
      
      public function get §]!A§() : §1w§
      {
         return this.§0Y§;
      }
      
      public function get §]!+§() : §<'§
      {
         return this.§if§;
      }
      
      protected function get starling() : §8o§
      {
         return this.§0!F§;
      }
      
      public function get § !$§() : int
      {
         return §`n§;
      }
   }
}
