package §55§
{
   import § true§.§0O§;
   import §#!q§.§6!I§;
   import §%!5§.§7;§;
   import §%m§.§'5§;
   import §&C§.§1?§;
   import §&C§.§;D§;
   import §'!N§.§9!;§;
   import §'!`§.§%!H§;
   import §'!`§.§-!W§;
   import §'!`§.§3C§;
   import §'!`§.§for§;
   import §-!F§.§2[§;
   import §-!F§.§;!?§;
   import §-!F§.§@!g§;
   import §-!F§.§`+§;
   import §0@§.DisplayObject;
   import §0@§.Sprite;
   import §0i§.§4!%§;
   import §1f§.§'t§;
   import §4!,§.§+f§;
   import §7! §.§1!I§;
   import §7! §.§4n§;
   import §7! §.§6X§;
   import §9!C§.§,!j§;
   import §9!C§.§3!f§;
   import §^!%§.b2Vec2;
   import §`i§.§[!n§;
   import §each §.§'!3§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §>![§
   {
      
      private static const §`R§:int = 20;
      
      public static const §<d§:Number = §7;§.§`B§;
      
      public static const §&!Z§:Number = §7;§.§]!n§;
      
      public static const §%!k§:Number = 1 / 20;
      
      public static const §^Q§:Number = §7;§.§]!n§ * §%!k§;
      
      public static const §'!K§:Number = §<d§ * §%!k§;
      
      public static const §[]§:§6!I§ = new §6!I§(13 - 3);
      
      public static var §`O§:Number = 1;
      
      protected static var §8!T§:String = §`+§.§`!m§;
       
      
      protected var §5!%§:§for§;
      
      private var §5!@§:§%!H§;
      
      private var §@!B§:Array = null;
      
      protected var §5=§:§0O§;
      
      public var mLevelEngine:§4U§;
      
      protected var §6!R§:§^!O§;
      
      protected var §8J§:§+f§;
      
      protected var §+!P§:§"!P§;
      
      protected var §3_§:§,!j§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §+?§:Boolean = false;
      
      protected var §<c§:Boolean = false;
      
      protected var §1U§:Boolean = false;
      
      public var §'!-§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §4I§:Number;
      
      public var §,!V§:Number;
      
      private var §^@§:Number;
      
      public var §-!M§:§@!g§;
      
      public var §`!a§:Boolean = false;
      
      private var §2v§:§&!N§;
      
      private var §6Q§:Sprite;
      
      protected var §!J§:§`+§;
      
      protected var §+k§:§9!;§ = null;
      
      private var §+,§:EventDispatcher;
      
      private var §8N§:Array;
      
      private var §<!n§:Array;
      
      protected var §]!F§:§'!3§;
      
      private var §!!T§:§'t§;
      
      protected var §!3§:§4n§;
      
      protected var §'!_§:§6X§;
      
      private var §-!$§:§1!I§;
      
      private var §7!P§:§1!I§;
      
      private var §1c§:§1!I§;
      
      private var §!2§:Stage;
      
      private var §7-§:§const§;
      
      protected var §^x§:§'5§;
      
      protected var §-!n§:§'5§;
      
      protected var §['§:Number = 0.0;
      
      protected var §'!V§:String;
      
      private var §%9§:Boolean;
      
      protected var §+!#§:Boolean;
      
      protected var §4&§:uint = 1.417339207E9;
      
      public var §3!i§:Boolean;
      
      public function §>![§(param1:Stage)
      {
         this.§<!n§ = [];
         super();
         this.§+,§ = new EventDispatcher();
         this.§-!M§ = new §@!g§();
         this.§!2§ = param1;
         this.§!3§ = §4n§.§9$§;
         this.§'!_§ = this.initAnimationManager(this.§!3§);
         this.§-!$§ = this.initThemeGraphicsManager();
         this.§7!P§ = this.§=q§();
         this.§1c§ = this.§?!O§();
         var _loc2_:Stage3D = param1.stage3Ds[0];
         this.§]!F§ = new §'!3§(§&!N§,param1,new Rectangle(0,0,§7;§.§`B§,§7;§.§]!n§),_loc2_);
         §7;§.§8!D§.addEventListener(Event.ENTER_FRAME,this.§]!F§.§3![§);
         _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§,B§,false,0,true);
         this.§]!F§.simulateMultitouch = false;
         this.§]!F§.enableErrorChecking = false;
         this.§]!F§.§-!"§ = 2;
         this.§]!F§.§"W§();
      }
      
      public static function §5t§(param1:§%!H§, param2:§%!H§) : Number
      {
         var _loc3_:Number = param1.§;!2§ - param2.§;!2§;
         var _loc4_:Number = param1.§3m§ - param2.§3m§;
         return §&2§(_loc3_,_loc4_);
      }
      
      public static function §&2§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         if(!this.§6Q§ && this.§;!l§)
         {
            this.§6Q§ = this.§2v§.§5§;
         }
         return this.§6Q§;
      }
      
      public function get §;!l§() : Sprite
      {
         if(!this.§2v§)
         {
            this.§2v§ = this.§]!F§.§[!§ as §&!N§;
            this.§2v§.§;Y§ = false;
         }
         return this.§2v§;
      }
      
      private function get §4!I§() : DisplayObject
      {
         if(this.§;!l§)
         {
            return (this.§;!l§ as §&!N§).§4!I§;
         }
         return null;
      }
      
      public function get animationManager() : §6X§
      {
         return this.§'!_§;
      }
      
      public function get textureManager() : §4n§
      {
         return this.§!3§;
      }
      
      public function get camera() : §+f§
      {
         return this.§8J§;
      }
      
      public function get objects() : §for§
      {
         return this.§5!%§;
      }
      
      public function get particles() : §,!j§
      {
         return this.§3_§;
      }
      
      public function get background() : §0O§
      {
         return this.§5=§;
      }
      
      public function get slingshot() : §"!P§
      {
         return this.§+!P§;
      }
      
      public function get activeObject() : §%!H§
      {
         return this.§5!@§;
      }
      
      public function get §<+§() : §^!O§
      {
         return this.§6!R§;
      }
      
      public function get stage() : Stage
      {
         return this.§!2§;
      }
      
      public function get §'l§() : §1!I§
      {
         return this.§1c§;
      }
      
      protected function get §2!J§() : §1!I§
      {
         return this.§-!$§;
      }
      
      public function set activeObject(param1:§%!H§) : void
      {
         this.§5!@§ = param1;
      }
      
      public function set §;R§(param1:Boolean) : void
      {
         this.§+!#§ = param1;
      }
      
      public function clear() : void
      {
         if(this.§!!T§)
         {
            this.§!!T§.dispose();
         }
         if(this.§!3§)
         {
            this.§!3§.dispose();
         }
         if(this.§-!$§ && this.§-!$§.textureManager)
         {
            this.§-!$§.textureManager.dispose();
         }
         if(this.§1c§ && this.§1c§.textureManager)
         {
            this.§1c§.textureManager.dispose();
         }
         if(this.§]!F§)
         {
            this.§]!F§.dispose();
         }
      }
      
      protected function initThemeGraphicsManager() : §1!I§
      {
         return null;
      }
      
      protected function §=q§() : §1!I§
      {
         return null;
      }
      
      protected function §?!O§() : §1!I§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§4n§) : §6X§
      {
         return new §6X§(param1);
      }
      
      public function §4!@§(param1:Boolean) : void
      {
         if(§'!3§.§1!n§)
         {
            if(param1)
            {
               §'!3§.§1!n§.start();
            }
            else
            {
               §'!3§.§1!n§.stop();
               §'!3§.§1!n§.color = 0;
            }
         }
      }
      
      public function §^p§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function setController(param1:§9!;§) : void
      {
         if(this.§+k§ != null)
         {
            this.§+k§.removeEventListeners();
         }
         this.§+k§ = param1;
         if(this.mReadyToRun)
         {
            this.§+k§.addEventListeners();
         }
      }
      
      public function §?!b§() : §'5§
      {
         return this.§^x§;
      }
      
      public function §7!q§(param1:§'t§, param2:Array, param3:Function) : void
      {
         this.§!!T§ = param1;
         var _loc4_:int = this.§!!T§.§^!R§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§!3§.§@V§(this.§!!T§.§4!§(_loc5_));
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§+,§.addEventListener(Event.INIT,param3);
            this.§<!n§.push(param3);
         }
         if(this.§>#§(param2))
         {
            this.§'!L§();
         }
      }
      
      private function §>#§(param1:Array) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.§!3§.§<!V§())
         {
            _loc2_ = this.§!3§.§<!N§ / 1000;
            _loc3_ = this.§!3§.§>!E§ / 1000;
            §4!%§.log("\n\nMain texture manager memory usage:\n   textures " + _loc2_ + " kilobytes\n   bitmaps " + _loc3_ + " kilobytes\n\n");
            this.initializeAnimations(param1);
            return true;
         }
         this.§8N§ = param1.concat();
         return false;
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         this.§'!_§.initializeAnimations(param1);
      }
      
      private function §,B§(param1:Event) : void
      {
         this.§!3§.§8'§();
         if(this.§2!J§ && this.§2!J§.textureManager)
         {
            this.§2!J§.textureManager.§8'§();
         }
         if(this.§'l§ && this.§'l§.textureManager)
         {
            this.§'l§.textureManager.§8'§();
         }
         if(this.§8N§)
         {
            this.§>#§(this.§8N§);
            this.§8N§ = null;
            this.§'!L§();
         }
         if(this.§+k§ != null && this.mReadyToRun)
         {
            this.§+k§.addEventListeners();
         }
         if(this.§-!$§)
         {
            this.§-!$§.§<!V§();
         }
         if(this.§1c§)
         {
            if(this.§1c§.textureManager)
            {
               this.§1c§.textureManager.§8'§();
               this.§1c§.§<!V§();
            }
         }
      }
      
      private function §'!L§() : void
      {
         this.§+,§.dispatchEvent(new Event(Event.INIT));
         this.§#!c§();
      }
      
      private function §#!c§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§<!n§)
         {
            this.§+,§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§<!n§ = [];
      }
      
      public function init(param1:§`+§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§6!R§ = new §^!O§(this,param1);
         this.§8J§ = this.initLevelCamera(param1);
         this.§4I§ = 0;
         this.§,!V§ = 0;
         this.§^@§ = 0;
         this.§%9§ = false;
         this.mReadyToRun = false;
         this.§+?§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         §8!T§ = param1.theme;
         this.§!J§ = param1;
         this.§<c§ = this.§0R§(param1.theme);
         this.§1U§ = this.§,E§(param1.theme);
         if(this.§<c§ && this.§1U§)
         {
            this.initialize(param1);
         }
         else
         {
            this.§ I§(param1.theme);
         }
         this.initReplay();
         §1!g§.init();
      }
      
      protected function initReplay() : void
      {
         this.§^x§ = new §'5§(§2[§.§^N§);
      }
      
      protected function §0R§(param1:String) : Boolean
      {
         if(this.§-!$§)
         {
            return false;
         }
         return true;
      }
      
      protected function §,E§(param1:String) : Boolean
      {
         var _loc2_:§;D§ = null;
         if(this.§7!P§)
         {
            _loc2_ = §1?§.§"i§(param1);
            if(_loc2_)
            {
               if(_loc2_.§,P§ && !this.§7!P§.§6[§(_loc2_.§,P§))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function § I§(param1:String) : void
      {
         var _loc2_:§;D§ = null;
         if(this.§-!$§ && !this.§0R§(param1))
         {
            this.§-!$§.removeEventListener(Event.COMPLETE,this.§%T§);
            this.§-!$§.removeEventListener(Event.CANCEL,this.§+!g§);
            this.§-!$§.addEventListener(Event.COMPLETE,this.§%T§);
            this.§-!$§.addEventListener(Event.CANCEL,this.§+!g§);
            this.§-!$§.§#,§(param1);
         }
         if(this.§7!P§ && !this.§,E§(param1))
         {
            this.§7!P§.removeEventListener(Event.COMPLETE,this.§7>§);
            this.§7!P§.removeEventListener(Event.CANCEL,this.§>!D§);
            this.§7!P§.addEventListener(Event.COMPLETE,this.§7>§);
            this.§7!P§.addEventListener(Event.CANCEL,this.§>!D§);
            _loc2_ = §1?§.§"i§(param1);
            if(_loc2_)
            {
               this.§7!P§.§#,§(_loc2_.§,P§);
            }
         }
      }
      
      private function §%T§(param1:Event) : void
      {
         this.§-!$§.removeEventListener(Event.COMPLETE,this.§%T§);
         this.§-!$§.removeEventListener(Event.CANCEL,this.§+!g§);
         this.§<c§ = true;
         if(this.§<c§ && this.§1U§)
         {
            this.initialize(this.§!J§);
         }
      }
      
      private function §+!g§(param1:Event) : void
      {
         this.§-!$§.removeEventListener(Event.COMPLETE,this.§%T§);
         this.§-!$§.removeEventListener(Event.CANCEL,this.§+!g§);
         this.§+?§ = true;
      }
      
      private function §7>§(param1:Event) : void
      {
         this.§-!$§.removeEventListener(Event.COMPLETE,this.§7>§);
         this.§-!$§.removeEventListener(Event.CANCEL,this.§>!D§);
         this.§1U§ = true;
         if(this.§<c§ && this.§1U§)
         {
            this.initialize(this.§!J§);
         }
      }
      
      private function §>!D§(param1:Event) : void
      {
         this.§-!$§.removeEventListener(Event.COMPLETE,this.§7>§);
         this.§-!$§.removeEventListener(Event.CANCEL,this.§>!D§);
         this.§1U§ = true;
         if(this.§<c§ && this.§1U§)
         {
            this.initialize(this.§!J§);
         }
      }
      
      public function get backgroundTextureManager() : §4n§
      {
         return this.§!3§;
      }
      
      protected function initialize(param1:§`+§) : void
      {
         this.§+!#§ = false;
         this.§3!i§ = false;
         if(§'!3§.§ !i§)
         {
            §'!3§.§ !i§.speed = 1;
         }
         this.mLevelEngine = new §4U§(this);
         this.§5=§ = this.initLevelBackground(param1.theme,this.§6!R§.§,!Y§ / §%!k§,this.backgroundTextureManager,this.§8J§.§"!I§());
         this.§5=§.§8!5§(§7;§.§2!b§());
         this.§5!%§ = this.initLevelObjectManager(param1);
         this.§+!P§ = this.initLevelSlingshot(param1);
         this.§3_§ = this.initParticleManager(this.§'!_§,this.§!3§);
         this.§8J§.init();
         this.§#§();
         this.loadPreviousReplayData();
         this.mReadyToRun = true;
         if(this.§+k§)
         {
            this.§+k§.addEventListeners();
         }
      }
      
      protected function loadPreviousReplayData() : void
      {
         if(this.§'!V§)
         {
            this.§-!n§ = §'5§.initialize(this.§'!V§);
            this.§-!n§.speed = 1;
            this.§-!n§.play();
            this.§['§ = -1000;
            this.§'!V§ = null;
         }
      }
      
      public function §7?§(param1:String) : void
      {
         this.§'!V§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§-!n§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§-!n§)
         {
            if(param1)
            {
               this.§-!n§.speed = Math.min(this.§-!n§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§-!n§.speed = Math.max(this.§-!n§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§-!n§)
         {
            this.§-!n§.speed = 1;
         }
      }
      
      protected function initLevelObjectManager(param1:§`+§) : §for§
      {
         return new §for§(this,param1,new Sprite());
      }
      
      protected function initLevelCamera(param1:§`+§) : §+f§
      {
         return new §+f§(this,param1);
      }
      
      protected function initLevelBackground(param1:String, param2:Number, param3:§4n§, param4:Number) : §0O§
      {
         return new §0O§(param1,param2,param3,param4);
      }
      
      protected function initLevelSlingshot(param1:§`+§) : §"!P§
      {
         return new §"!P§(this,param1,new Sprite());
      }
      
      protected function initParticleManager(param1:§6X§, param2:§4n§) : §,!j§
      {
         return new §,!j§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§`+§ = this.preProcessLevel();
         var _loc4_:§;!?§;
         (_loc4_ = new §;!?§()).left = 0;
         _loc4_.top = -§+f§.§5&§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §+f§.§5&§;
         _loc4_.right = _loc4_.left + §+f§.§4!;§;
         _loc4_.y = -13.929;
         _loc4_.x = §+f§.§4!;§;
         _loc4_.id = §+f§.§]!?§;
         _loc3_.§+F§(_loc4_);
         var _loc5_:§;!?§;
         (_loc5_ = new §;!?§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §+f§.§4!;§;
         _loc5_.bottom = _loc5_.top + §+f§.§5&§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §+f§.§4!;§ / 2;
         _loc5_.id = §+f§.§4!T§;
         _loc3_.§+F§(_loc5_);
         this.§#M§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§8!T§ != null)
         {
            _loc3_.theme = §8!T§;
         }
         this.init(_loc3_);
      }
      
      protected function §#M§(param1:§`+§, param2:Boolean) : void
      {
         if(param2)
         {
            this.§4>§(param1);
         }
      }
      
      protected function preProcessLevel() : §`+§
      {
         var _loc1_:§`+§ = new §`+§();
         _loc1_.§60§ = -12;
         return new §`+§();
      }
      
      protected function §"&§() : Number
      {
         this.§4&§ ^= this.§4&§ << 21;
         this.§4&§ ^= this.§4&§ >>> 35;
         this.§4&§ ^= this.§4&§ << 4;
         return this.§4&§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §4>§(param1:§`+§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§[!n§ = null;
         this.§4&§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§"&§() * 5;
               (_loc5_ = new §[!n§()).x = 30 + _loc3_ * 10 + this.§"&§() * 9;
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
                  _loc5_.angle = 45 - this.§"&§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§"&§() * 3 - _loc3_ * 8;
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
                  _loc5_.angle = this.§"&§() * 360;
               }
               param1.§]!>§(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      private function §2!$§() : void
      {
      }
      
      public function §#§() : void
      {
         if(§0O§.§?!H§)
         {
            this.§6!7§(this.§5=§.§?§,false);
         }
         this.§6!7§(this.§3_§.§&!L§(§,!j§.§'3§),false);
         this.§6!7§(this.§3_§.§&!L§(§,!j§.§`!F§),true);
         this.§6!7§(this.§3_§.§&!L§(§,!j§.§'a§),true);
         this.§6!7§(this.§5!%§.§`r§,true);
         this.§6!7§(this.§+!P§.sprite,true);
         this.§6!7§(this.§3_§.§&!L§(§,!j§.§++§),true);
         this.§6!7§(this.§5=§.§]2§,false);
         if(§0O§.§?!H§)
         {
            this.§6!7§(this.§5=§.§0!q§,false);
         }
         this.§6!7§(this.§3_§.§&!L§(§,!j§.§^_§),true);
      }
      
      private function §6!7§(param1:Sprite, param2:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(param1);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         param1 /= §7;§.§#!T§;
         param2 /= §7;§.§#!T§;
         _loc3_.x = (param1 / §+f§.§1!m§ + this.§8J§.§<B§ - §+f§.§9!W§ / §+f§.§1!m§) * §%!k§;
         _loc3_.y = (param2 / §+f§.§1!m§ + this.§8J§.§-o§ - §+f§.§]!N§ / §+f§.§1!m§) * §%!k§;
         return _loc3_;
      }
      
      public function §<a§(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / §%!k§ + §+f§.§9!W§ / §+f§.§1!m§ - this.§8J§.§<B§) * §+f§.§1!m§;
         _loc3_.y = (param2 / §%!k§ + §+f§.§]!N§ / §+f§.§1!m§ - this.§8J§.§-o§) * §+f§.§1!m§;
         var _loc4_:Number = Math.max(§7;§.§#!T§,§7;§.§,§);
         _loc3_.x *= _loc4_;
         _loc3_.y *= _loc4_;
         return _loc3_;
      }
      
      public function §'!F§(param1:String, param2:Number, param3:Number) : void
      {
         this.§5!%§.§]!>§(param1,param2,param3);
      }
      
      public function §2@§() : void
      {
         if(this.§4!I§)
         {
            this.§4!I§.visible = true;
            this.§4!I§.alpha = 0;
         }
         this.§'!-§ = 0;
      }
      
      public function §'! §() : void
      {
         this.§7-§ = new §const§(§7!k§.§,5§,§7!k§.§4V§);
      }
      
      public function §>!e§() : void
      {
         this.§7-§ = null;
      }
      
      public function clearLevel() : void
      {
         if(this.§5=§)
         {
            this.§5=§.dispose();
            this.§5=§ = null;
         }
         if(this.§5!%§)
         {
            this.§5!%§.dispose();
            this.§5!%§ = null;
            this.§5!@§ = null;
         }
         if(this.mLevelEngine)
         {
            if(!this.mLevelEngine.§"Y§)
            {
            }
            this.mLevelEngine.clear();
            this.mLevelEngine = null;
         }
         if(this.§6!R§)
         {
            this.§6!R§.clear();
            this.§6!R§ = null;
         }
         if(this.§+!P§)
         {
            this.§+!P§.dispose();
            this.§+!P§ = null;
         }
         if(this.§8J§)
         {
            this.§8J§.clear();
            this.§8J§ = null;
         }
         if(this.§3_§)
         {
            this.§3_§.dispose();
            this.§3_§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§4I§ = 0;
         this.§,!V§ = 0;
         this.mReadyToRun = false;
         this.§%9§ = false;
         this.§'!-§ = §7!k§.§5s§;
         if(this.§;!l§)
         {
            (this.§;!l§ as §&!N§).§=X§.x = 0;
            (this.§;!l§ as §&!N§).§=X§.y = 0;
         }
         if(this.§4!I§)
         {
            this.§4!I§.visible = false;
         }
         this.§-!n§ = null;
         this.§^x§ = null;
         if(this.§-!$§)
         {
            this.§-!$§.removeEventListener(Event.COMPLETE,this.§%T§);
            this.§-!$§.removeEventListener(Event.CANCEL,this.§+!g§);
         }
         if(this.§7!P§)
         {
            this.§7!P§.removeEventListener(Event.COMPLETE,this.§7>§);
            this.§7!P§.removeEventListener(Event.CANCEL,this.§>!D§);
         }
         this.§#!c§();
         if(§'!3§.§1!n§)
         {
            §'!3§.§1!n§.color = 0;
         }
         if(this.§+k§)
         {
            this.§+k§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver() : void
      {
      }
      
      public function §;;§() : String
      {
         if(this.§^x§)
         {
            return this.§^x§.toString();
         }
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         if(!this.mReadyToRun || !§'!3§.§?!Z§())
         {
            return 0;
         }
         if(this.§-!n§ && this.§-!n§.§4!V§)
         {
            return this.§'Z§(param1,param2,param3);
         }
         return this.updateWithTime(param1,true,param2,param3);
      }
      
      protected function updateWithTime(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         if(this.§+!#§)
         {
            param1 *= 0.2;
            if(§'!3§.§ !i§)
            {
               §'!3§.§ !i§.speed = 0.2;
            }
         }
         var _loc5_:Number = 0;
         this.§,!V§ += param1;
         if(param3)
         {
            this.§4I§ += param1;
            _loc5_ = this.mLevelEngine.§#`§(this.§4I§);
            this.§+!P§.update(param1,param4);
            this.§4I§ = _loc5_;
         }
         else
         {
            this.§5!%§.§>!b§(param1);
            this.§4I§ = 0;
         }
         if(param2)
         {
            this.§!!j§(param1,_loc5_);
         }
         return param1;
      }
      
      private function §'Z§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc5_:Number = NaN;
         var _loc4_:Number = §4U§.§2]§ * 1000;
         if(this.§-!n§)
         {
            param1 *= this.§-!n§.speed;
            _loc5_ = this.§,!V§ + param1;
            while(this.§,!V§ + _loc4_ < _loc5_)
            {
               if(this.§,!V§ + _loc4_ > this.§['§)
               {
                  this.§-!n§.step(this);
                  this.§['§ += _loc4_;
               }
               this.updateWithTime(_loc4_,false,param2,param3);
            }
            if(_loc5_ > this.§['§ + _loc4_)
            {
               this.§-!n§.step(this);
               this.§['§ += _loc4_;
            }
            if(this.§,!V§ < _loc5_)
            {
               this.updateWithTime(_loc5_ - this.§,!V§,true,param2,param3);
            }
            return param1;
         }
         return this.updateWithTime(_loc4_,true,param2,param3);
      }
      
      private function §!!j§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.§5=§.update(param1);
         this.§5!%§.§;y§(param1,param2);
         this.§8!$§();
         if(this.§'!-§ < §7!k§.§5s§)
         {
            this.§'!-§ += param1;
            _loc3_ = §7!k§.§5s§ / 2;
            _loc4_ = (-Math.abs(this.§'!-§ - _loc3_) + _loc3_) * (§7!k§.§;%§ / _loc3_);
            if(this.§4!I§)
            {
               this.§4!I§.alpha = _loc4_;
            }
         }
         else if(this.§4!I§)
         {
            this.§4!I§.visible = false;
         }
         if(this.§7-§)
         {
            if(!this.§7-§.§[-§(this.§8J§,param1))
            {
               this.§>!e§();
            }
         }
         this.§8J§.§^#§(param1);
         this.mLevelEngine.§04§();
         this.§3_§.update(param1);
      }
      
      public function handleEngineUpdateStep(param1:Number) : void
      {
         this.objects.§>!b§(param1 * 1000);
         this.objects.updateLevelObjectsComplete(param1 * 1000);
         this.§ !'§();
      }
      
      public function §8!$§() : void
      {
         var _loc1_:§%!H§ = null;
         if(this.§,!V§ > this.§^@§ + 1000 / 30)
         {
            if(this.§@!B§ != null)
            {
               for each(_loc1_ in this.§@!B§)
               {
                  _loc1_.addTrail();
               }
            }
            this.§^@§ = this.§,!V§;
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§%!H§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.§5!%§.isPigsAlive(true))
            {
               _loc2_ = this.§5!%§.§[!Q§(true);
               _loc2_.§@!5§.mTryToScream = §-!W§.§3!]§;
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§5!%§.§2n§());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            if(this.§5!%§.isPigsAlive(true))
            {
               _loc2_ = this.§5!%§.§[!Q§(true);
               _loc2_.§@!5§.mTryToBlink = §-!W§.§2!a§;
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§5!%§.§2n§());
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §3!f§.§'!J§;
         }
         §1!g§.addScore(param1,param2);
         this.§+k§.addScore(param1);
         if(param3 && param1 > 0 && !this.§3!i§)
         {
            this.§9!m§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §9!m§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §3!f§.§^w§;
         }
         this.§3_§.§4!2§(§3!f§.§7l§,§,!j§.§^_§,§3!f§.§+#§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §%!3§(param1:§%!H§) : void
      {
         if(this.§@!B§ == null)
         {
            this.§@!B§ = new Array();
         }
         this.§@!B§.push(param1);
      }
      
      public function §?8§() : void
      {
         this.§+!P§.§?8§();
         this.§5!%§.§1!H§();
         this.§3!i§ = true;
      }
      
      public function §!E§(param1:§%!H§) : void
      {
         this.§3_§.§?=§(§,!j§.§'3§);
         if(this.§@!B§.indexOf(param1) >= 0)
         {
            this.§@!B§.splice(this.§@!B§.indexOf(param1),1);
         }
         if(this.§@!B§.length == 0)
         {
            this.§@!B§ = null;
         }
      }
      
      public function §3!M§(param1:§7!B§, param2:Number, param3:Number) : void
      {
         this.§5!@§ = this.§5!%§.§]!>§(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
         var _loc4_:Number = param1.name.toUpperCase() == "BIRD_GREEN" ? Number(§"!P§.BIRD_LAUNCH_FORCE_GREEN) : Number(§"!P§.BIRD_LAUNCH_FORCE);
         if(param1.§80§ > 1)
         {
            this.§5!@§.§=1§(param1.§80§);
            this.§5!@§.§@!5§.§-!N§();
         }
         if(param1.§6!j§ != 0)
         {
            _loc4_ = param1.§6!j§;
         }
         var _loc5_:Number = -_loc4_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc6_:Number = _loc4_ * param2 * Math.sin(param3 / (180 / Math.PI));
         this.§5!@§.§%z§(new b2Vec2(_loc5_,_loc6_),false,true);
         this.camera.setAction(§+f§.§5!+§);
         if(this.§^x§)
         {
            this.§^x§.§3!M§(this.mLevelEngine.§ d§,param1.x,param1.y,param2,param3);
         }
      }
      
      public function activatePowerup() : void
      {
         this.§%9§ = true;
      }
      
      private function § !'§() : void
      {
         if(!this.§%9§)
         {
            return;
         }
         this.§%9§ = false;
         if(this.activeObject is §3C§ && !(this.activeObject as §3C§).§%!Y§)
         {
            if(this.activeObject.activateSpecialPower(this.§%j§))
            {
               this.§`!a§ = true;
            }
         }
         else
         {
            this.§5!%§.§#j§();
         }
         if(this.§^x§)
         {
            this.§^x§.§5!9§(this.mLevelEngine.§ d§);
         }
      }
      
      public function §=!N§() : void
      {
         this.§5!%§.§=!N§();
      }
      
      public function §[1§() : void
      {
         this.§5!%§.§ !f§();
      }
      
      public function §,!I§() : §`+§
      {
         var _loc1_:§`+§ = new §`+§();
         _loc1_.§;k§ = this.§!J§.§;k§;
         _loc1_.§2H§ = this.§!J§.§2H§;
         this.§8J§.§>5§(_loc1_);
         this.§5!%§.§?!L§(_loc1_);
         this.§+!P§.§!!`§(_loc1_);
         _loc1_.theme = this.§5=§.§=z§();
         return _loc1_;
      }
      
      public function §'!R§() : int
      {
         return this.§!J§.§2H§;
      }
      
      public function §9!Z§() : int
      {
         return this.§!J§.§;k§;
      }
      
      public function §#!4§(param1:int) : void
      {
         this.§!J§.§2H§ = param1;
      }
      
      public function §&!J§(param1:int) : void
      {
         this.§!J§.§;k§ = param1;
      }
      
      public function §6!Y§(param1:Number, param2:Number) : void
      {
         if(this.§2v§)
         {
            this.§2v§.§3=§(param1,param2);
         }
         if(this.§8J§)
         {
            this.§8J§.§^#§(0);
         }
      }
      
      public function get § ?§() : §`+§
      {
         return this.§!J§;
      }
      
      public function get §%j§() : §for§
      {
         return this.§5!%§;
      }
      
      protected function get §7!o§() : §'!3§
      {
         return this.§]!F§;
      }
      
      public function get §,q§() : int
      {
         return §`R§;
      }
   }
}
