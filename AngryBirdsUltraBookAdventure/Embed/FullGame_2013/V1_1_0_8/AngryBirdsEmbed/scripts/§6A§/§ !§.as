package §6A§
{
   import §!Z§.§11§;
   import §!j§.§;[§;
   import §&o§.DisplayObject;
   import §&o§.Sprite;
   import §+!B§.§<!M§;
   import §1!-§.§5>§;
   import §1!-§.§9!§;
   import §1!-§.§@Z§;
   import §1!-§.§[4§;
   import §2!,§.§8E§;
   import §2!,§.§@!2§;
   import §2k§.§`n§;
   import §3a§.§7!+§;
   import §4@§.§2!H§;
   import §4@§.§<!6§;
   import §5!L§.§=w§;
   import §9K§.§"!?§;
   import §9K§.§5!H§;
   import §9K§.§`!H§;
   import §=!0§.§>I§;
   import §>!7§.§;b§;
   import §>k§.§5$§;
   import §^!A§.§;!%§;
   import §^!A§.§@H§;
   import §^!A§.§[!J§;
   import §^!A§.§^`§;
   import §^G§.§;u§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class § !§
   {
      
      private static const §#M§:int = 20;
      
      public static const §,!=§:Number = §=w§.§9!#§;
      
      public static const §+;§:Number = §=w§.§0i§;
      
      public static const §`J§:Number = 1 / 20;
      
      public static const §"y§:Number = §=w§.§0i§ * §`J§;
      
      public static const §`9§:Number = §,!=§ * §`J§;
      
      public static const §6]§:§<!M§ = new §<!M§(13 - 3);
      
      public static var §2!B§:Number = 1;
      
      protected static var §[!6§:String = §@Z§.§try§;
       
      
      protected var §4! §:§@H§;
      
      private var §3o§:§;!%§;
      
      private var §4j§:Array = null;
      
      protected var §,R§:§;[§;
      
      public var §'O§:§"!D§;
      
      protected var §"Y§:§"6§;
      
      protected var §90§:§`n§;
      
      protected var §2E§:§4!C§;
      
      protected var §^D§:§2!H§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §>&§:Boolean = false;
      
      protected var §!!?§:Boolean = false;
      
      protected var §%!G§:Boolean = false;
      
      public var §;!6§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §3!3§:Number;
      
      public var §&!?§:Number;
      
      private var §>R§:Number;
      
      public var §7!J§:§9!§;
      
      public var §?<§:Boolean = false;
      
      private var §3n§:§%!E§;
      
      private var §!#§:Sprite;
      
      protected var §]M§:§@Z§;
      
      protected var §+1§:§;b§ = null;
      
      private var §2!I§:EventDispatcher;
      
      private var §"!0§:Array;
      
      private var §0C§:Array;
      
      protected var §,!0§:§>I§;
      
      private var §3c§:§5$§;
      
      protected var §-M§:§5!H§;
      
      protected var §1§:§"!?§;
      
      private var § <§:§`!H§;
      
      private var §"=§:§`!H§;
      
      private var §#!G§:§`!H§;
      
      private var §]!M§:Stage;
      
      private var §]+§:§5!F§;
      
      protected var set:§11§;
      
      protected var §4A§:§11§;
      
      protected var §`]§:Number = 0.0;
      
      protected var §]=§:String;
      
      private var §]!D§:Boolean;
      
      protected var §%!N§:Boolean;
      
      protected var § [§:uint = 1.417339207E9;
      
      public var §3M§:Boolean;
      
      public function § !§(param1:Stage)
      {
         this.§0C§ = [];
         super();
         this.§2!I§ = new EventDispatcher();
         this.§7!J§ = new §9!§();
         this.§]!M§ = param1;
         this.§-M§ = §5!H§.§@6§;
         this.§1§ = this.initAnimationManager(this.§-M§);
         this.§ <§ = this.initThemeGraphicsManager();
         this.§"=§ = this.§&c§();
         this.§#!G§ = this.§-v§();
         var _loc2_:Stage3D = param1.stage3Ds[0];
         this.§,!0§ = new §>I§(§%!E§,param1,new Rectangle(0,0,§=w§.§9!#§,§=w§.§0i§),_loc2_);
         §=w§.§ !H§.addEventListener(Event.ENTER_FRAME,this.§,!0§.onEnterFrame);
         _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§@!C§,false,0,true);
         this.§,!0§.§?I§ = false;
         this.§,!0§.enableErrorChecking = false;
         this.§,!0§.§"?§ = 2;
         this.§,!0§.§?l§();
      }
      
      public static function §7F§(param1:§;!%§, param2:§;!%§) : Number
      {
         var _loc3_:Number = param1.§return§ - param2.§return§;
         var _loc4_:Number = param1.§[n§ - param2.§[n§;
         return §4!%§(_loc3_,_loc4_);
      }
      
      public static function §4!%§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         if(!this.§!#§ && this.§^m§)
         {
            this.§!#§ = this.§3n§.§1-§;
         }
         return this.§!#§;
      }
      
      public function get §^m§() : Sprite
      {
         if(!this.§3n§)
         {
            this.§3n§ = this.§,!0§.§0o§ as §%!E§;
            this.§3n§.§3!D§ = false;
         }
         return this.§3n§;
      }
      
      private function get §`5§() : DisplayObject
      {
         if(this.§^m§)
         {
            return (this.§^m§ as §%!E§).§`5§;
         }
         return null;
      }
      
      public function get §;!L§() : §"!?§
      {
         return this.§1§;
      }
      
      public function get textureManager() : §5!H§
      {
         return this.§-M§;
      }
      
      public function get camera() : §`n§
      {
         return this.§90§;
      }
      
      public function get objects() : §@H§
      {
         return this.§4! §;
      }
      
      public function get particles() : §2!H§
      {
         return this.§^D§;
      }
      
      public function get background() : §;[§
      {
         return this.§,R§;
      }
      
      public function get slingshot() : §4!C§
      {
         return this.§2E§;
      }
      
      public function get activeObject() : §;!%§
      {
         return this.§3o§;
      }
      
      public function get §%>§() : §"6§
      {
         return this.§"Y§;
      }
      
      public function get stage() : Stage
      {
         return this.§]!M§;
      }
      
      public function get §&!3§() : §`!H§
      {
         return this.§#!G§;
      }
      
      protected function get §-!<§() : §`!H§
      {
         return this.§ <§;
      }
      
      public function set activeObject(param1:§;!%§) : void
      {
         this.§3o§ = param1;
      }
      
      public function set §null§(param1:Boolean) : void
      {
         this.§%!N§ = param1;
      }
      
      public function clear() : void
      {
         if(this.§3c§)
         {
            this.§3c§.dispose();
         }
         if(this.§-M§)
         {
            this.§-M§.dispose();
         }
         if(this.§ <§ && this.§ <§.textureManager)
         {
            this.§ <§.textureManager.dispose();
         }
         if(this.§#!G§ && this.§#!G§.textureManager)
         {
            this.§#!G§.textureManager.dispose();
         }
         if(this.§,!0§)
         {
            this.§,!0§.dispose();
         }
      }
      
      protected function initThemeGraphicsManager() : §`!H§
      {
         return null;
      }
      
      protected function §&c§() : §`!H§
      {
         return null;
      }
      
      protected function §-v§() : §`!H§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§5!H§) : §"!?§
      {
         return new §"!?§(param1);
      }
      
      public function §7!E§(param1:Boolean) : void
      {
         if(§>I§.§`S§)
         {
            if(param1)
            {
               §>I§.§`S§.start();
            }
            else
            {
               §>I§.§`S§.stop();
               §>I§.§`S§.color = 0;
            }
         }
      }
      
      public function §&!B§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function § 5§() : §;b§
      {
         return this.§+1§;
      }
      
      public function §>@§(param1:§;b§) : void
      {
         if(this.§+1§ != null)
         {
            this.§+1§.removeEventListeners();
         }
         this.§+1§ = param1;
         if(this.mReadyToRun)
         {
            this.§+1§.addEventListeners();
         }
      }
      
      public function §>X§() : §11§
      {
         return this.set;
      }
      
      public function §5!B§(param1:§5$§, param2:Array, param3:Function) : void
      {
         this.§3c§ = param1;
         var _loc4_:int = this.§3c§.§'!2§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§-M§.§%R§(this.§3c§.§"&§(_loc5_));
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§2!I§.addEventListener(Event.INIT,param3);
            this.§0C§.push(param3);
         }
         if(this.§23§(param2))
         {
            this.§^i§();
         }
      }
      
      private function §23§(param1:Array) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.§-M§.§1#§())
         {
            _loc2_ = this.§-M§.§`!M§ / 1000;
            _loc3_ = this.§-M§.§,G§ / 1000;
            §7!+§.log("\n\nMain texture manager memory usage:\n   textures " + _loc2_ + " kilobytes\n   bitmaps " + _loc3_ + " kilobytes\n\n");
            this.initializeAnimations(param1);
            return true;
         }
         this.§"!0§ = param1.concat();
         return false;
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         this.§1§.initializeAnimations(param1);
      }
      
      private function §@!C§(param1:Event) : void
      {
         this.§-M§.§]b§();
         if(this.§-!<§ && this.§-!<§.textureManager)
         {
            this.§-!<§.textureManager.§]b§();
         }
         if(this.§&!3§ && this.§&!3§.textureManager)
         {
            this.§&!3§.textureManager.§]b§();
         }
         if(this.§"!0§)
         {
            this.§23§(this.§"!0§);
            this.§"!0§ = null;
            this.§^i§();
         }
         if(this.§+1§ != null && this.mReadyToRun)
         {
            this.§+1§.addEventListeners();
         }
         if(this.§ <§)
         {
            this.§ <§.§1#§();
         }
         if(this.§#!G§)
         {
            if(this.§#!G§.textureManager)
            {
               this.§#!G§.textureManager.§]b§();
               this.§#!G§.§1#§();
            }
         }
      }
      
      private function §^i§() : void
      {
         this.§2!I§.dispatchEvent(new Event(Event.INIT));
         this.§-!§();
      }
      
      private function §-!§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§0C§)
         {
            this.§2!I§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§0C§ = [];
      }
      
      public function init(param1:§@Z§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§"Y§ = new §"6§(this,param1);
         this.§90§ = this.initLevelCamera(param1);
         this.§3!3§ = 0;
         this.§&!?§ = 0;
         this.§>R§ = 0;
         this.§]!D§ = false;
         this.mReadyToRun = false;
         this.§>&§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         §[!6§ = param1.theme;
         this.§]M§ = param1;
         this.§!!?§ = this.§!O§(param1.theme);
         this.§%!G§ = this.§%7§(param1.theme);
         if(this.§!!?§ && this.§%!G§)
         {
            this.initialize(param1);
         }
         else
         {
            this.§1l§(param1.theme);
         }
         this.§get §();
         §0!'§.init();
      }
      
      protected function §get §() : void
      {
         this.set = new §11§(§[4§.§"!>§);
      }
      
      protected function §!O§(param1:String) : Boolean
      {
         if(this.§ <§)
         {
            return false;
         }
         return true;
      }
      
      protected function §%7§(param1:String) : Boolean
      {
         var _loc2_:§8E§ = null;
         if(this.§"=§)
         {
            _loc2_ = §@!2§.§"@§(param1);
            if(_loc2_)
            {
               if(_loc2_.final && !this.§"=§.§[<§(_loc2_.final))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function §1l§(param1:String) : void
      {
         var _loc2_:§8E§ = null;
         if(this.§ <§ && !this.§!O§(param1))
         {
            this.§ <§.removeEventListener(Event.COMPLETE,this.§4'§);
            this.§ <§.removeEventListener(Event.CANCEL,this.§]2§);
            this.§ <§.addEventListener(Event.COMPLETE,this.§4'§);
            this.§ <§.addEventListener(Event.CANCEL,this.§]2§);
            this.§ <§.§9I§(param1);
         }
         if(this.§"=§ && !this.§%7§(param1))
         {
            this.§"=§.removeEventListener(Event.COMPLETE,this.§'!&§);
            this.§"=§.removeEventListener(Event.CANCEL,this.§,!#§);
            this.§"=§.addEventListener(Event.COMPLETE,this.§'!&§);
            this.§"=§.addEventListener(Event.CANCEL,this.§,!#§);
            _loc2_ = §@!2§.§"@§(param1);
            if(_loc2_)
            {
               this.§"=§.§9I§(_loc2_.final);
            }
         }
      }
      
      private function §4'§(param1:Event) : void
      {
         this.§ <§.removeEventListener(Event.COMPLETE,this.§4'§);
         this.§ <§.removeEventListener(Event.CANCEL,this.§]2§);
         this.§!!?§ = true;
         if(this.§!!?§ && this.§%!G§)
         {
            this.initialize(this.§]M§);
         }
      }
      
      private function §]2§(param1:Event) : void
      {
         this.§ <§.removeEventListener(Event.COMPLETE,this.§4'§);
         this.§ <§.removeEventListener(Event.CANCEL,this.§]2§);
         this.§>&§ = true;
      }
      
      private function §'!&§(param1:Event) : void
      {
         this.§ <§.removeEventListener(Event.COMPLETE,this.§'!&§);
         this.§ <§.removeEventListener(Event.CANCEL,this.§,!#§);
         this.§%!G§ = true;
         if(this.§!!?§ && this.§%!G§)
         {
            this.initialize(this.§]M§);
         }
      }
      
      private function §,!#§(param1:Event) : void
      {
         this.§ <§.removeEventListener(Event.COMPLETE,this.§'!&§);
         this.§ <§.removeEventListener(Event.CANCEL,this.§,!#§);
         this.§%!G§ = true;
         if(this.§!!?§ && this.§%!G§)
         {
            this.initialize(this.§]M§);
         }
      }
      
      public function get backgroundTextureManager() : §5!H§
      {
         return this.§-M§;
      }
      
      protected function initialize(param1:§@Z§) : void
      {
         this.§%!N§ = false;
         this.§3M§ = false;
         if(§>I§.§2!@§)
         {
            §>I§.§2!@§.speed = 1;
         }
         this.§'O§ = new §"!D§(this);
         this.§,R§ = this.initLevelBackground(param1.theme,this.§"Y§.§,j§ / §`J§,this.backgroundTextureManager,this.§90§.§9D§());
         this.§,R§.§9C§(§=w§.§-!;§());
         this.§4! § = this.initLevelObjectManager(param1);
         this.§2E§ = this.initLevelSlingshot(param1);
         this.§^D§ = this.§%d§(this.§1§,this.§-M§);
         this.§90§.init();
         this.§`!§();
         this.§;!,§();
         this.mReadyToRun = true;
         if(this.§+1§)
         {
            this.§+1§.addEventListeners();
         }
      }
      
      protected function §;!,§() : void
      {
         if(this.§]=§)
         {
            this.§4A§ = §11§.initialize(this.§]=§);
            this.§4A§.speed = 1;
            this.§4A§.play();
            this.§`]§ = -1000;
            this.§]=§ = null;
         }
      }
      
      public function §8U§(param1:String) : void
      {
         this.§]=§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§4A§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§4A§)
         {
            if(param1)
            {
               this.§4A§.speed = Math.min(this.§4A§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§4A§.speed = Math.max(this.§4A§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§4A§)
         {
            this.§4A§.speed = 1;
         }
      }
      
      protected function initLevelObjectManager(param1:§@Z§) : §@H§
      {
         return new §@H§(this,param1,new Sprite());
      }
      
      protected function initLevelCamera(param1:§@Z§) : §`n§
      {
         return new §`n§(this,param1);
      }
      
      protected function initLevelBackground(param1:String, param2:Number, param3:§5!H§, param4:Number) : §;[§
      {
         return new §;[§(param1,param2,param3,param4);
      }
      
      protected function initLevelSlingshot(param1:§@Z§) : §4!C§
      {
         return new §4!C§(this,param1,new Sprite());
      }
      
      protected function §%d§(param1:§"!?§, param2:§5!H§) : §2!H§
      {
         return new §2!H§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§@Z§ = this.§<L§();
         var _loc4_:§5>§;
         (_loc4_ = new §5>§()).left = 0;
         _loc4_.top = -§`n§.§]$§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §`n§.§]$§;
         _loc4_.right = _loc4_.left + §`n§.§"b§;
         _loc4_.y = -13.929;
         _loc4_.x = §`n§.§"b§;
         _loc4_.id = §`n§.§>d§;
         _loc3_.§'_§(_loc4_);
         var _loc5_:§5>§;
         (_loc5_ = new §5>§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §`n§.§"b§;
         _loc5_.bottom = _loc5_.top + §`n§.§]$§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §`n§.§"b§ / 2;
         _loc5_.id = §`n§.§7,§;
         _loc3_.§'_§(_loc5_);
         this.§%P§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§[!6§ != null)
         {
            _loc3_.theme = §[!6§;
         }
         this.init(_loc3_);
      }
      
      protected function §%P§(param1:§@Z§, param2:Boolean) : void
      {
         if(param2)
         {
            this.§8k§(param1);
         }
      }
      
      protected function §<L§() : §@Z§
      {
         var _loc1_:§@Z§ = new §@Z§();
         _loc1_.§#!4§ = -12;
         return new §@Z§();
      }
      
      protected function §"I§() : Number
      {
         this.§ [§ ^= this.§ [§ << 21;
         this.§ [§ ^= this.§ [§ >>> 35;
         this.§ [§ ^= this.§ [§ << 4;
         return this.§ [§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §8k§(param1:§@Z§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§;u§ = null;
         this.§ [§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§"I§() * 5;
               (_loc5_ = new §;u§()).x = 30 + _loc3_ * 10 + this.§"I§() * 9;
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
                  _loc5_.angle = 45 - this.§"I§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§"I§() * 3 - _loc3_ * 8;
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
                  _loc5_.angle = this.§"I§() * 360;
               }
               param1.addObject(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      public function §`!§() : void
      {
         if(§;[§.§'@§)
         {
            this.§=X§(this.§,R§.§'K§,false);
         }
         this.§=X§(this.§^D§.§%J§(§2!H§.§[!=§),false);
         this.§=X§(this.§^D§.§%J§(§2!H§.§+!7§),true);
         this.§=X§(this.§^D§.§%J§(§2!H§.§3v§),true);
         this.§=X§(this.§4! §.§=V§,true);
         this.§=X§(this.§2E§.sprite,true);
         this.§=X§(this.§^D§.§%J§(§2!H§.§"!5§),true);
         this.§=X§(this.§,R§.§&W§,false);
         if(§;[§.§'@§)
         {
            this.§=X§(this.§,R§.§=@§,false);
         }
         this.§=X§(this.§^D§.§%J§(§2!H§.§8p§),true);
      }
      
      protected function §=X§(param1:Sprite, param2:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(param1);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         param1 /= §=w§.§continue§;
         param2 /= §=w§.§continue§;
         _loc3_.x = (param1 / §`n§.§&"§ + this.§90§.§?!A§ - §`n§.§!!7§ / §`n§.§&"§) * §`J§;
         _loc3_.y = (param2 / §`n§.§&"§ + this.§90§.§@h§ - §`n§.§-!N§ / §`n§.§&"§) * §`J§;
         return _loc3_;
      }
      
      public function §6!"§(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / §`J§ + §`n§.§!!7§ / §`n§.§&"§ - this.§90§.§?!A§) * §`n§.§&"§;
         _loc3_.y = (param2 / §`J§ + §`n§.§-!N§ / §`n§.§&"§ - this.§90§.§@h§) * §`n§.§&"§;
         var _loc4_:Number = Math.max(§=w§.§continue§,§=w§.§'c§);
         _loc3_.x *= _loc4_;
         _loc3_.y *= _loc4_;
         return _loc3_;
      }
      
      public function §9s§(param1:String, param2:Number, param3:Number) : void
      {
         this.§4! §.addObject(param1,param2,param3);
      }
      
      public function §>!8§() : void
      {
         if(this.§`5§)
         {
            this.§`5§.visible = true;
            this.§`5§.alpha = 0;
         }
         this.§;!6§ = 0;
      }
      
      public function §4!N§() : void
      {
         this.§]+§ = new §5!F§(§#!E§.§'f§,§#!E§.§'G§);
      }
      
      public function §5o§() : void
      {
         this.§]+§ = null;
      }
      
      public function clearLevel() : void
      {
         if(this.§,R§)
         {
            this.§,R§.dispose();
            this.§,R§ = null;
         }
         if(this.§4! §)
         {
            this.§4! §.dispose();
            this.§4! § = null;
            this.§3o§ = null;
         }
         if(this.§'O§)
         {
            if(!this.§'O§.§<!"§)
            {
            }
            this.§'O§.clear();
            this.§'O§ = null;
         }
         if(this.§"Y§)
         {
            this.§"Y§.clear();
            this.§"Y§ = null;
         }
         if(this.§2E§)
         {
            this.§2E§.dispose();
            this.§2E§ = null;
         }
         if(this.§90§)
         {
            this.§90§.clear();
            this.§90§ = null;
         }
         if(this.§^D§)
         {
            this.§^D§.dispose();
            this.§^D§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§3!3§ = 0;
         this.§&!?§ = 0;
         this.mReadyToRun = false;
         this.§]!D§ = false;
         this.§;!6§ = §#!E§.§8!1§;
         if(this.§^m§)
         {
            (this.§^m§ as §%!E§).§2@§.x = 0;
            (this.§^m§ as §%!E§).§2@§.y = 0;
         }
         if(this.§`5§)
         {
            this.§`5§.visible = false;
         }
         this.§4A§ = null;
         this.set = null;
         if(this.§ <§)
         {
            this.§ <§.removeEventListener(Event.COMPLETE,this.§4'§);
            this.§ <§.removeEventListener(Event.CANCEL,this.§]2§);
         }
         if(this.§"=§)
         {
            this.§"=§.removeEventListener(Event.COMPLETE,this.§'!&§);
            this.§"=§.removeEventListener(Event.CANCEL,this.§,!#§);
         }
         this.§-!§();
         if(§>I§.§`S§)
         {
            §>I§.§`S§.color = 0;
         }
         if(this.§+1§)
         {
            this.§+1§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver() : void
      {
      }
      
      public function §>y§() : String
      {
         if(this.set)
         {
            return this.set.toString();
         }
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         if(!this.mReadyToRun || !§>I§.§]u§())
         {
            return 0;
         }
         if(this.§4A§ && this.§4A§.§]n§)
         {
            return this.§9!G§(param1,param2,param3);
         }
         return this.§9!"§(param1,true,param2,param3);
      }
      
      protected function §9!"§(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         if(this.§%!N§)
         {
            param1 *= 0.2;
            if(§>I§.§2!@§)
            {
               §>I§.§2!@§.speed = 0.2;
            }
         }
         var _loc5_:Number = 0;
         this.§&!?§ += param1;
         if(param3)
         {
            this.§3!3§ += param1;
            _loc5_ = this.§'O§.§[+§(this.§3!3§);
            this.§2E§.update(param1,param4);
            this.§3!3§ = _loc5_;
         }
         else
         {
            this.§4! §.§!c§(param1);
            this.§3!3§ = 0;
         }
         if(param2)
         {
            this.§&S§(param1,_loc5_);
         }
         return param1;
      }
      
      private function §9!G§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc5_:Number = NaN;
         var _loc4_:Number = §"!D§.§&j§ * 1000;
         if(this.§4A§)
         {
            param1 *= this.§4A§.speed;
            _loc5_ = this.§&!?§ + param1;
            while(this.§&!?§ + _loc4_ < _loc5_)
            {
               if(this.§&!?§ + _loc4_ > this.§`]§)
               {
                  this.§4A§.step(this);
                  this.§`]§ += _loc4_;
               }
               this.§9!"§(_loc4_,false,param2,param3);
            }
            if(_loc5_ > this.§`]§ + _loc4_)
            {
               this.§4A§.step(this);
               this.§`]§ += _loc4_;
            }
            if(this.§&!?§ < _loc5_)
            {
               this.§9!"§(_loc5_ - this.§&!?§,true,param2,param3);
            }
            return param1;
         }
         return this.§9!"§(_loc4_,true,param2,param3);
      }
      
      private function §&S§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.§,R§.update(param1);
         this.§4! §.§]C§(param1,param2);
         this.§-s§();
         if(this.§;!6§ < §#!E§.§8!1§)
         {
            this.§;!6§ += param1;
            _loc3_ = §#!E§.§8!1§ / 2;
            _loc4_ = (-Math.abs(this.§;!6§ - _loc3_) + _loc3_) * (§#!E§.§1s§ / _loc3_);
            if(this.§`5§)
            {
               this.§`5§.alpha = _loc4_;
            }
         }
         else if(this.§`5§)
         {
            this.§`5§.visible = false;
         }
         if(this.§]+§)
         {
            if(!this.§]+§.§0L§(this.§90§,param1))
            {
               this.§5o§();
            }
         }
         this.§90§.§&!$§(param1);
         this.§'O§.§<!<§();
         this.§^D§.update(param1);
      }
      
      public function §[,§(param1:Number) : void
      {
         this.objects.§!c§(param1 * 1000);
         this.objects.§;2§(param1 * 1000);
         this.§%V§();
      }
      
      public function §-s§() : void
      {
         var _loc1_:§;!%§ = null;
         if(this.§&!?§ > this.§>R§ + 1000 / 30)
         {
            if(this.§4j§ != null)
            {
               for each(_loc1_ in this.§4j§)
               {
                  _loc1_.addTrail();
               }
            }
            this.§>R§ = this.§&!?§;
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§;!%§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.§4! §.isPigsAlive(true))
            {
               _loc2_ = this.§4! §.§!!D§(true);
               if(_loc2_)
               {
                  _loc2_.§;S§.mTryToScream = §[!J§.§`"§;
                  this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§4! §.§,v§());
               }
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            if(this.§4! §.isPigsAlive(true))
            {
               _loc2_ = this.§4! §.§!!D§(true);
               if(_loc2_)
               {
                  _loc2_.§;S§.mTryToBlink = §[!J§.§4!-§;
                  this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§4! §.§,v§());
               }
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §<!6§.§4Q§;
         }
         §0!'§.addScore(param1,param2);
         this.§+1§.addScore(param1);
         if(param3 && param1 > 0 && !this.§3M§)
         {
            this.§,!<§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §,!<§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §<!6§.§>a§;
         }
         this.§^D§.§4#§(§<!6§.§0!$§,§2!H§.§8p§,§<!6§.§ ^§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §[?§(param1:§;!%§) : void
      {
         if(this.§4j§ == null)
         {
            this.§4j§ = new Array();
         }
         this.§4j§.push(param1);
      }
      
      public function §9!6§() : void
      {
         this.§2E§.§9!6§();
         this.§4! §.§"i§();
         this.§3M§ = true;
      }
      
      public function §[r§(param1:§;!%§) : void
      {
         this.§^D§.§#N§(§2!H§.§[!=§);
         if(this.§4j§.indexOf(param1) >= 0)
         {
            this.§4j§.splice(this.§4j§.indexOf(param1),1);
         }
         if(this.§4j§.length == 0)
         {
            this.§4j§ = null;
         }
      }
      
      public function §>!A§(param1:§!!'§, param2:Number, param3:Number) : void
      {
         this.§3o§ = this.§4! §.addObject(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
         var _loc4_:Number = param1.name.toUpperCase() == "BIRD_GREEN" ? Number(§4!C§.§?1§) : Number(§4!C§.§,!N§);
         if(param1.§]k§ > 1)
         {
            this.§3o§.§%!§(param1.§]k§);
            this.§3o§.§;S§.§#! §();
         }
         if(param1.§4b§ != 0)
         {
            _loc4_ = param1.§4b§;
         }
         var _loc5_:Number = -_loc4_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc6_:Number = _loc4_ * param2 * Math.sin(param3 / (180 / Math.PI));
         this.§3o§.§'!0§(new b2Vec2(_loc5_,_loc6_),false,true);
         this.camera.§]V§(§`n§.§4!I§);
         if(this.set)
         {
            this.set.§>!A§(this.§'O§.§9p§,param1.x,param1.y,param2,param3);
         }
      }
      
      public function activatePowerup() : void
      {
         this.§]!D§ = true;
      }
      
      private function §%V§() : void
      {
         if(!this.§]!D§)
         {
            return;
         }
         this.§]!D§ = false;
         if(this.activeObject is §^`§ && !(this.activeObject as §^`§).§[!E§)
         {
            if(this.activeObject.activateSpecialPower(this.§??§))
            {
               this.§?<§ = true;
            }
         }
         else
         {
            this.§4! §.§`W§();
         }
         if(this.set)
         {
            this.set.§<e§(this.§'O§.§9p§);
         }
      }
      
      public function §`!>§() : void
      {
         this.§4! §.§`!>§();
      }
      
      public function §^d§() : void
      {
         this.§4! §.§#R§();
      }
      
      public function §2d§() : §@Z§
      {
         var _loc1_:§@Z§ = new §@Z§();
         _loc1_.§4!6§ = this.§]M§.§4!6§;
         _loc1_.§!x§ = this.§]M§.§!x§;
         this.§90§.§5T§(_loc1_);
         this.§4! §.§@g§(_loc1_);
         this.§2E§.§-p§(_loc1_);
         _loc1_.theme = this.§,R§.§]!,§();
         return _loc1_;
      }
      
      public function §!$§() : int
      {
         return this.§]M§.§!x§;
      }
      
      public function §6%§() : int
      {
         return this.§]M§.§4!6§;
      }
      
      public function §&!G§(param1:int) : void
      {
         this.§]M§.§!x§ = param1;
      }
      
      public function §7U§(param1:int) : void
      {
         this.§]M§.§4!6§ = param1;
      }
      
      public function §&!5§(param1:Number, param2:Number) : void
      {
         if(this.§3n§)
         {
            this.§3n§.§#U§(param1,param2);
         }
         if(this.§90§)
         {
            this.§90§.§&!$§(0);
         }
      }
      
      public function get §&!9§() : §@Z§
      {
         return this.§]M§;
      }
      
      public function get §??§() : §@H§
      {
         return this.§4! §;
      }
      
      protected function get starling() : §>I§
      {
         return this.§,!0§;
      }
      
      public function get §!,§() : int
      {
         return §#M§;
      }
   }
}
