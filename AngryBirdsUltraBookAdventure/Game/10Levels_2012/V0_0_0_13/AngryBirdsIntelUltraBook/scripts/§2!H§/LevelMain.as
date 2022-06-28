package §2!H§
{
   import § D§.§]!B§;
   import §"L§.§5O§;
   import §"L§.§;c§;
   import §"L§.LevelManager;
   import §"L§.LevelModel;
   import §#!Q§.Replay;
   import §&=§.§0'§;
   import §&=§.LevelParticleManager;
   import §&L§.b2Vec2;
   import §&V§.§+H§;
   import §,!_§.AnimationManager;
   import §,!_§.DynamicContentManager;
   import §,!_§.TextureManager;
   import §0P§.Starling;
   import §2!?§.§7!W§;
   import §3p§.§4!G§;
   import §3p§.LevelObject;
   import §3p§.LevelObjectManager;
   import §3p§.LevelObjectRenderer;
   import §6!7§.DisplayObject;
   import §6!7§.Sprite;
   import §6b§.Log;
   import §7p§.Integer;
   import §<!j§.§%!-§;
   import §<§.LevelBackground;
   import §[m§.LevelThemeBackground;
   import §[m§.LevelThemeBackgroundManager;
   import §`u§.§@K§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class LevelMain
   {
      
      private static const §1!j§:int = 20;
      
      public static const §6v§:Number = §]!B§.SCREEN_WIDTH;
      
      public static const §0O§:Number = §]!B§.SCREEN_HEIGHT;
      
      public static const §8N§:Number = 1 / 20;
      
      public static const §%!F§:Number = §]!B§.SCREEN_HEIGHT * §8N§;
      
      public static const §6!_§:Number = §6v§ * §8N§;
      
      public static const §!!R§:Integer = new Integer(13 - 3);
      
      protected static var §[F§:String = LevelModel.§-!Q§;
       
      
      protected var §5f§:LevelObjectManager;
      
      private var §+!Y§:LevelObject;
      
      private var §4I§:Array = null;
      
      protected var §4!6§:LevelBackground;
      
      public var mLevelEngine:§?!`§;
      
      protected var §^!2§:§1H§;
      
      protected var §]!Y§:§%!-§;
      
      protected var §8!5§:LevelSlingshot;
      
      protected var §<H§:LevelParticleManager;
      
      public var mReadyToRun:Boolean = false;
      
      public var §#!U§:Boolean = false;
      
      protected var §#`§:Boolean = false;
      
      protected var §+!§:Boolean = false;
      
      public var §@_§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §@!M§:Number;
      
      public var §,6§:Number;
      
      private var §7!S§:Number;
      
      public var §;!-§:§5O§;
      
      public var §>!=§:Boolean = false;
      
      private var §^!@§:§'!I§;
      
      private var §1c§:Sprite;
      
      protected var §0@§:LevelModel;
      
      protected var §+!a§:§7!W§ = null;
      
      private var §#!R§:EventDispatcher;
      
      private var §]%§:Array;
      
      private var §!!L§:Array;
      
      protected var §&!J§:Starling;
      
      private var §<!_§:§@K§;
      
      protected var §6! §:TextureManager;
      
      protected var §!!]§:AnimationManager;
      
      private var §;F§:DynamicContentManager;
      
      private var §5B§:DynamicContentManager;
      
      private var §;O§:DynamicContentManager;
      
      private var §'!'§:Stage;
      
      private var §'!N§:§0K§;
      
      protected var §1!^§:Replay;
      
      protected var §;a§:Replay;
      
      protected var §[q§:Number = 0.0;
      
      protected var §"!k§:String;
      
      private var §]!Z§:Boolean;
      
      protected var §9!6§:Boolean;
      
      protected var §&!0§:uint = 1.417339207E9;
      
      public var §'![§:Boolean;
      
      public function LevelMain(param1:Stage)
      {
         this.§!!L§ = [];
         super();
         this.§#!R§ = new EventDispatcher();
         this.§;!-§ = new §5O§();
         this.§'!'§ = param1;
         this.§6! § = TextureManager.§8!X§;
         this.§!!]§ = this.initAnimationManager(this.§6! §);
         this.§;F§ = this.initThemeGraphicsManager();
         this.§5B§ = this.initThemeSoundsManager();
         this.§;O§ = this.initCutSceneManager();
         var _loc2_:Stage3D = param1.stage3Ds[0];
         this.§&!J§ = new Starling(§'!I§,param1,new Rectangle(0,0,§]!B§.SCREEN_WIDTH,§]!B§.SCREEN_HEIGHT),_loc2_);
         §]!B§.§%h§.addEventListener(Event.ENTER_FRAME,this.§&!J§.onEnterFrame);
         _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§[D§,false,0,true);
         this.§&!J§.§]?§ = false;
         this.§&!J§.enableErrorChecking = false;
         this.§&!J§.§ T§ = 2;
         this.§&!J§.§%C§();
      }
      
      public static function §+$§(param1:LevelObject, param2:LevelObject) : Number
      {
         var _loc3_:Number = param1.§8!=§ - param2.§8!=§;
         var _loc4_:Number = param1.§?4§ - param2.§?4§;
         return §9u§(_loc3_,_loc4_);
      }
      
      public static function §9u§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         if(!this.§1c§ && this.§,F§)
         {
            this.§1c§ = this.§^!@§.§`!K§;
         }
         return this.§1c§;
      }
      
      public function get §,F§() : Sprite
      {
         if(!this.§^!@§)
         {
            this.§^!@§ = this.§&!J§.§"!8§ as §'!I§;
            this.§^!@§.§<!4§ = false;
         }
         return this.§^!@§;
      }
      
      private function get §8,§() : DisplayObject
      {
         if(this.§,F§)
         {
            return (this.§,F§ as §'!I§).§8,§;
         }
         return null;
      }
      
      public function get animationManager() : AnimationManager
      {
         return this.§!!]§;
      }
      
      public function get textureManager() : TextureManager
      {
         return this.§6! §;
      }
      
      public function get camera() : §%!-§
      {
         return this.§]!Y§;
      }
      
      public function get objects() : LevelObjectManager
      {
         return this.§5f§;
      }
      
      public function get particles() : LevelParticleManager
      {
         return this.§<H§;
      }
      
      public function get background() : LevelBackground
      {
         return this.§4!6§;
      }
      
      public function get slingshot() : LevelSlingshot
      {
         return this.§8!5§;
      }
      
      public function get activeObject() : LevelObject
      {
         return this.§+!Y§;
      }
      
      public function get §'g§() : §1H§
      {
         return this.§^!2§;
      }
      
      public function get stage() : Stage
      {
         return this.§'!'§;
      }
      
      public function get §>-§() : DynamicContentManager
      {
         return this.§;O§;
      }
      
      protected function get §"!B§() : DynamicContentManager
      {
         return this.§;F§;
      }
      
      public function set activeObject(param1:LevelObject) : void
      {
         this.§+!Y§ = param1;
      }
      
      public function set §3,§(param1:Boolean) : void
      {
         this.§9!6§ = param1;
      }
      
      public function clear() : void
      {
         if(this.§<!_§)
         {
            this.§<!_§.dispose();
         }
         if(this.§6! §)
         {
            this.§6! §.dispose();
         }
         if(this.§;F§ && this.§;F§.textureManager)
         {
            this.§;F§.textureManager.dispose();
         }
         if(this.§;O§ && this.§;O§.textureManager)
         {
            this.§;O§.textureManager.dispose();
         }
         if(this.§&!J§)
         {
            this.§&!J§.dispose();
         }
      }
      
      protected function initThemeGraphicsManager() : DynamicContentManager
      {
         return null;
      }
      
      protected function initThemeSoundsManager() : DynamicContentManager
      {
         return null;
      }
      
      protected function initCutSceneManager() : DynamicContentManager
      {
         return null;
      }
      
      protected function initAnimationManager(param1:TextureManager) : AnimationManager
      {
         return new AnimationManager(param1);
      }
      
      public function §,>§(param1:Boolean) : void
      {
         if(Starling.§!!F§)
         {
            if(param1)
            {
               Starling.§!!F§.start();
            }
            else
            {
               Starling.§!!F§.stop();
               Starling.§!!F§.color = 0;
            }
         }
      }
      
      public function §1F§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function setController(param1:§7!W§) : void
      {
         if(this.§+!a§ != null)
         {
            this.§+!a§.removeEventListeners();
         }
         this.§+!a§ = param1;
         if(this.mReadyToRun)
         {
            this.§+!a§.addEventListeners();
         }
      }
      
      public function §@^§() : Replay
      {
         return this.§1!^§;
      }
      
      public function §8W§(param1:§@K§, param2:Array, param3:Function) : void
      {
         this.§<!_§ = param1;
         var _loc4_:int = this.§<!_§.§1t§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§6! §.§,!j§(this.§<!_§.§6!#§(_loc5_));
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§#!R§.addEventListener(Event.INIT,param3);
            this.§!!L§.push(param3);
         }
         if(this.§ !W§(param2))
         {
            this.§+!i§();
         }
      }
      
      private function § !W§(param1:Array) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.§6! §.§0k§())
         {
            _loc2_ = this.§6! §.§3!-§ / 1000;
            _loc3_ = this.§6! §.§+I§ / 1000;
            Log.log("\n\nMain texture manager memory usage:\n   textures " + _loc2_ + " kilobytes\n   bitmaps " + _loc3_ + " kilobytes\n\n");
            this.initializeAnimations(param1);
            return true;
         }
         this.§]%§ = param1.concat();
         return false;
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         this.§!!]§.initializeAnimations(param1);
      }
      
      private function §[D§(param1:Event) : void
      {
         this.§6! §.§'!<§();
         if(this.§"!B§ && this.§"!B§.textureManager)
         {
            this.§"!B§.textureManager.§'!<§();
         }
         if(this.§>-§ && this.§>-§.textureManager)
         {
            this.§>-§.textureManager.§'!<§();
         }
         if(this.§]%§)
         {
            this.§ !W§(this.§]%§);
            this.§]%§ = null;
            this.§+!i§();
         }
         if(this.§+!a§ != null && this.mReadyToRun)
         {
            this.§+!a§.addEventListeners();
         }
         if(this.§;F§)
         {
            this.§;F§.§0k§();
         }
         if(this.§;O§)
         {
            if(this.§;O§.textureManager)
            {
               this.§;O§.textureManager.§'!<§();
               this.§;O§.§0k§();
            }
         }
      }
      
      private function §+!i§() : void
      {
         this.§#!R§.dispatchEvent(new Event(Event.INIT));
         this.§<%§();
      }
      
      private function §<%§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§!!L§)
         {
            this.§#!R§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§!!L§ = [];
      }
      
      public function init(param1:LevelModel) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§^!2§ = new §1H§(this,param1);
         this.§]!Y§ = this.§`h§(param1);
         this.§@!M§ = 0;
         this.§,6§ = 0;
         this.§7!S§ = 0;
         this.§]!Z§ = false;
         this.mReadyToRun = false;
         this.§#!U§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         §[F§ = param1.theme;
         this.§0@§ = param1;
         this.§#`§ = this.§4T§(param1.theme);
         this.§+!§ = this.§%f§(param1.theme);
         if(this.§#`§ && this.§+!§)
         {
            this.initialize(param1);
         }
         else
         {
            this.§?! §(param1.theme);
         }
         this.§8!'§();
         ScoreCollector.init();
      }
      
      protected function §8!'§() : void
      {
         this.§1!^§ = new Replay(LevelManager.§var§);
      }
      
      protected function §4T§(param1:String) : Boolean
      {
         if(this.§;F§)
         {
            return false;
         }
         return true;
      }
      
      protected function §%f§(param1:String) : Boolean
      {
         var _loc2_:LevelThemeBackground = null;
         if(this.§5B§)
         {
            _loc2_ = LevelThemeBackgroundManager.§]!0§(param1);
            if(_loc2_)
            {
               if(_loc2_.§?!R§ && !this.§5B§.§^!^§(_loc2_.§?!R§))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function §?! §(param1:String) : void
      {
         var _loc2_:LevelThemeBackground = null;
         if(this.§;F§ && !this.§4T§(param1))
         {
            this.§;F§.removeEventListener(Event.COMPLETE,this.§'k§);
            this.§;F§.removeEventListener(Event.CANCEL,this.§#!g§);
            this.§;F§.addEventListener(Event.COMPLETE,this.§'k§);
            this.§;F§.addEventListener(Event.CANCEL,this.§#!g§);
            this.§;F§.§'m§(param1);
         }
         if(this.§5B§ && !this.§%f§(param1))
         {
            this.§5B§.removeEventListener(Event.COMPLETE,this.§2!5§);
            this.§5B§.removeEventListener(Event.CANCEL,this.§'p§);
            this.§5B§.addEventListener(Event.COMPLETE,this.§2!5§);
            this.§5B§.addEventListener(Event.CANCEL,this.§'p§);
            _loc2_ = LevelThemeBackgroundManager.§]!0§(param1);
            if(_loc2_)
            {
               this.§5B§.§'m§(_loc2_.§?!R§);
            }
         }
      }
      
      private function §'k§(param1:Event) : void
      {
         this.§;F§.removeEventListener(Event.COMPLETE,this.§'k§);
         this.§;F§.removeEventListener(Event.CANCEL,this.§#!g§);
         this.§#`§ = true;
         if(this.§#`§ && this.§+!§)
         {
            this.initialize(this.§0@§);
         }
      }
      
      private function §#!g§(param1:Event) : void
      {
         this.§;F§.removeEventListener(Event.COMPLETE,this.§'k§);
         this.§;F§.removeEventListener(Event.CANCEL,this.§#!g§);
         this.§#!U§ = true;
      }
      
      private function §2!5§(param1:Event) : void
      {
         this.§;F§.removeEventListener(Event.COMPLETE,this.§2!5§);
         this.§;F§.removeEventListener(Event.CANCEL,this.§'p§);
         this.§+!§ = true;
         if(this.§#`§ && this.§+!§)
         {
            this.initialize(this.§0@§);
         }
      }
      
      private function §'p§(param1:Event) : void
      {
         this.§;F§.removeEventListener(Event.COMPLETE,this.§2!5§);
         this.§;F§.removeEventListener(Event.CANCEL,this.§'p§);
         this.§+!§ = true;
         if(this.§#`§ && this.§+!§)
         {
            this.initialize(this.§0@§);
         }
      }
      
      public function get backgroundTextureManager() : TextureManager
      {
         return this.§6! §;
      }
      
      protected function initialize(param1:LevelModel) : void
      {
         this.§9!6§ = false;
         this.§'![§ = false;
         if(Starling.§1!e§)
         {
            Starling.§1!e§.speed = 1;
         }
         this.mLevelEngine = new §?!`§(this);
         this.§4!6§ = this.initLevelBackground(param1.theme,this.§^!2§.§ !c§ / §8N§,this.backgroundTextureManager,this.§]!Y§.§5r§());
         this.§4!6§.§^!Y§(§]!B§.§]!#§());
         this.§5f§ = this.initLevelObjectManager(param1);
         this.§8!5§ = this.initLevelSlingshot(param1);
         this.§<H§ = this.§`@§(this.§!!]§,this.§6! §);
         this.§]!Y§.init();
         this.§`6§();
         this.§=+§();
         this.mReadyToRun = true;
         if(this.§+!a§)
         {
            this.§+!a§.addEventListeners();
         }
      }
      
      protected function §=+§() : void
      {
         if(this.§"!k§)
         {
            this.§;a§ = Replay.initialize(this.§"!k§);
            this.§;a§.speed = 1;
            this.§;a§.play();
            this.§[q§ = -1000;
            this.§"!k§ = null;
         }
      }
      
      public function §5!a§(param1:String) : void
      {
         this.§"!k§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§;a§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§;a§)
         {
            if(param1)
            {
               this.§;a§.speed = Math.min(this.§;a§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§;a§.speed = Math.max(this.§;a§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§;a§)
         {
            this.§;a§.speed = 1;
         }
      }
      
      protected function initLevelObjectManager(param1:LevelModel) : LevelObjectManager
      {
         return new LevelObjectManager(this,param1,new Sprite());
      }
      
      protected function §`h§(param1:LevelModel) : §%!-§
      {
         return new §%!-§(this,param1);
      }
      
      protected function initLevelBackground(param1:String, param2:Number, param3:TextureManager, param4:Number) : LevelBackground
      {
         return new LevelBackground(param1,param2,param3,param4);
      }
      
      protected function initLevelSlingshot(param1:LevelModel) : LevelSlingshot
      {
         return new LevelSlingshot(this,param1,new Sprite());
      }
      
      protected function §`@§(param1:AnimationManager, param2:TextureManager) : LevelParticleManager
      {
         return new LevelParticleManager(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:LevelModel = this.§%X§();
         var _loc4_:§;c§ = new §;c§();
         _loc4_.left = 0;
         _loc4_.top = -§%!-§.§#!>§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §%!-§.§#!>§;
         _loc4_.right = _loc4_.left + §%!-§.§^!9§;
         _loc4_.y = -13.929;
         _loc4_.x = §%!-§.§^!9§;
         _loc4_.id = §%!-§.§&!$§;
         _loc3_.§>!j§(_loc4_);
         var _loc5_:§;c§ = new §;c§();
         _loc5_.top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §%!-§.§^!9§;
         _loc5_.bottom = _loc5_.top + §%!-§.§#!>§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §%!-§.§^!9§ / 2;
         _loc5_.id = §%!-§.§"!?§;
         _loc3_.§>!j§(_loc5_);
         this.§4U§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§[F§ != null)
         {
            _loc3_.theme = §[F§;
         }
         this.init(_loc3_);
      }
      
      protected function §4U§(param1:LevelModel, param2:Boolean) : void
      {
         if(param2)
         {
            this.§4!S§(param1);
         }
      }
      
      protected function §%X§() : LevelModel
      {
         var _loc1_:LevelModel = new LevelModel();
         _loc1_.§<7§ = -12;
         return new LevelModel();
      }
      
      protected function § E§() : Number
      {
         this.§&!0§ ^= this.§&!0§ << 21;
         this.§&!0§ ^= this.§&!0§ >>> 35;
         this.§&!0§ ^= this.§&!0§ << 4;
         return this.§&!0§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §4!S§(param1:LevelModel) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§+H§ = null;
         this.§&!0§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§ E§() * 5;
               _loc5_ = new §+H§();
               _loc5_.x = 30 + _loc3_ * 10 + this.§ E§() * 9;
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
                  _loc5_.angle = 45 - this.§ E§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§ E§() * 3 - _loc3_ * 8;
                  _loc4_ = (_loc3_ * _loc3_ + _loc2_ * _loc3_ + _loc2_) % 5;
                  if(_loc4_ < 2)
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
                  _loc5_.angle = this.§ E§() * 360;
               }
               param1.addObject(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      private function §6!f§() : void
      {
      }
      
      public function §`6§() : void
      {
         if(LevelBackground.§'G§)
         {
            this.§`j§(this.§4!6§.§4a§,false);
         }
         this.§`j§(this.§<H§.§1r§(LevelParticleManager.§^<§),false);
         this.§`j§(this.§<H§.§1r§(LevelParticleManager.§^![§),true);
         this.§`j§(this.§<H§.§1r§(LevelParticleManager.§9!@§),true);
         this.§`j§(this.§5f§.§3$§,true);
         this.§`j§(this.§8!5§.sprite,true);
         this.§`j§(this.§<H§.§1r§(LevelParticleManager.§[K§),true);
         this.§`j§(this.§4!6§.§@![§,false);
         if(LevelBackground.§'G§)
         {
            this.§`j§(this.§4!6§.§1!g§,false);
         }
         this.§`j§(this.§<H§.§1r§(LevelParticleManager.§#!k§),true);
         if(!§?!`§.§9!^§)
         {
         }
      }
      
      private function §`j§(param1:Sprite, param2:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(param1);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         param1 /= §]!B§.§^F§;
         param2 /= §]!B§.§^F§;
         _loc3_.x = (param1 / §%!-§.§?!I§ + this.§]!Y§.§@!N§ - §%!-§.§^6§ / §%!-§.§?!I§) * §8N§;
         _loc3_.y = (param2 / §%!-§.§?!I§ + this.§]!Y§.§2O§ - §%!-§.§<!!§ / §%!-§.§?!I§) * §8N§;
         return _loc3_;
      }
      
      public function §0!V§(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / §8N§ + §%!-§.§^6§ / §%!-§.§?!I§ - this.§]!Y§.§@!N§) * §%!-§.§?!I§;
         _loc3_.y = (param2 / §8N§ + §%!-§.§<!!§ / §%!-§.§?!I§ - this.§]!Y§.§2O§) * §%!-§.§?!I§;
         var _loc4_:Number = Math.max(§]!B§.§^F§,§]!B§.§9$§);
         _loc3_.x *= _loc4_;
         _loc3_.y *= _loc4_;
         return _loc3_;
      }
      
      public function §0%§(param1:String, param2:Number, param3:Number) : void
      {
         this.§5f§.addObject(param1,param2,param3);
      }
      
      public function §%2§() : void
      {
         if(this.§8,§)
         {
            this.§8,§.visible = true;
            this.§8,§.alpha = 0;
         }
         this.§@_§ = 0;
      }
      
      public function §-!i§() : void
      {
         this.§'!N§ = new §0K§(§&!U§.§=!§,§&!U§.§,!I§);
      }
      
      public function §6!j§() : void
      {
         this.§'!N§ = null;
      }
      
      public function clearLevel() : void
      {
         if(this.§4!6§)
         {
            this.§4!6§.dispose();
            this.§4!6§ = null;
         }
         if(this.§5f§)
         {
            this.§5f§.dispose();
            this.§5f§ = null;
            this.§+!Y§ = null;
         }
         if(this.mLevelEngine)
         {
            if(this.mLevelEngine.§9o§)
            {
            }
            this.mLevelEngine.clear();
            this.mLevelEngine = null;
         }
         if(this.§^!2§)
         {
            this.§^!2§.clear();
            this.§^!2§ = null;
         }
         if(this.§8!5§)
         {
            this.§8!5§.dispose();
            this.§8!5§ = null;
         }
         if(this.§]!Y§)
         {
            this.§]!Y§.clear();
            this.§]!Y§ = null;
         }
         if(this.§<H§)
         {
            this.§<H§.dispose();
            this.§<H§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§@!M§ = 0;
         this.§,6§ = 0;
         this.mReadyToRun = false;
         this.§]!Z§ = false;
         this.§@_§ = §&!U§.§-!B§;
         if(this.§,F§)
         {
            (this.§,F§ as §'!I§).§0x§.x = 0;
            (this.§,F§ as §'!I§).§0x§.y = 0;
         }
         if(this.§8,§)
         {
            this.§8,§.visible = false;
         }
         this.§;a§ = null;
         this.§1!^§ = null;
         if(this.§;F§)
         {
            this.§;F§.removeEventListener(Event.COMPLETE,this.§'k§);
            this.§;F§.removeEventListener(Event.CANCEL,this.§#!g§);
         }
         if(this.§5B§)
         {
            this.§5B§.removeEventListener(Event.COMPLETE,this.§2!5§);
            this.§5B§.removeEventListener(Event.CANCEL,this.§'p§);
         }
         this.§<%§();
         if(Starling.§!!F§)
         {
            Starling.§!!F§.color = 0;
         }
         if(this.§+!a§)
         {
            this.§+!a§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver() : void
      {
      }
      
      public function §2D§() : String
      {
         if(this.§1!^§)
         {
            return this.§1!^§.toString();
         }
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         if(!this.mReadyToRun || !Starling.§84§())
         {
            return 0;
         }
         if(this.§;a§ && this.§;a§.§ O§)
         {
            return this.§ !j§(param1,param2,param3);
         }
         return this.updateWithTime(param1,true,param2,param3);
      }
      
      protected function updateWithTime(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         if(this.§9!6§)
         {
            param1 *= 0.2;
            if(Starling.§1!e§)
            {
               Starling.§1!e§.speed = 0.2;
            }
         }
         var _loc5_:Number = 0;
         this.§,6§ += param1;
         if(param3)
         {
            this.§@!M§ += param1;
            _loc5_ = this.mLevelEngine.§;Q§(this.§@!M§);
            this.§8!5§.update(param1,param4);
            this.§@!M§ = _loc5_;
         }
         else
         {
            this.§5f§.§2F§(param1);
            this.§@!M§ = 0;
         }
         if(param2)
         {
            this.§=R§(param1,_loc5_);
         }
         return param1;
      }
      
      private function § !j§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc5_:Number = NaN;
         var _loc4_:Number = §?!`§.§&!5§ * 1000;
         if(this.§;a§)
         {
            param1 *= this.§;a§.speed;
            _loc5_ = this.§,6§ + param1;
            while(this.§,6§ + _loc4_ < _loc5_)
            {
               if(this.§,6§ + _loc4_ > this.§[q§)
               {
                  this.§;a§.step(this);
                  this.§[q§ += _loc4_;
               }
               this.updateWithTime(_loc4_,false,param2,param3);
            }
            if(_loc5_ > this.§[q§ + _loc4_)
            {
               this.§;a§.step(this);
               this.§[q§ += _loc4_;
            }
            if(this.§,6§ < _loc5_)
            {
               this.updateWithTime(_loc5_ - this.§,6§,true,param2,param3);
            }
            return param1;
         }
         return this.updateWithTime(_loc4_,true,param2,param3);
      }
      
      private function §=R§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.§4!6§.update(param1);
         this.§5f§.§8?§(param1,param2);
         this.§!A§();
         if(this.§@_§ < §&!U§.§-!B§)
         {
            this.§@_§ += param1;
            _loc3_ = §&!U§.§-!B§ / 2;
            _loc4_ = (-Math.abs(this.§@_§ - _loc3_) + _loc3_) * (§&!U§.§"!O§ / _loc3_);
            if(this.§8,§)
            {
               this.§8,§.alpha = _loc4_;
            }
         }
         else if(this.§8,§)
         {
            this.§8,§.visible = false;
         }
         if(this.§'!N§)
         {
            if(!this.§'!N§.§@?§(this.§]!Y§,param1))
            {
               this.§6!j§();
            }
         }
         this.§]!Y§.§7l§(param1);
         this.mLevelEngine.§1!0§();
         this.§<H§.update(param1);
      }
      
      public function handleEngineUpdateStep(param1:Number) : void
      {
         this.objects.§2F§(param1 * 1000);
         this.objects.§&e§(param1 * 1000);
         this.§6!e§();
      }
      
      public function §!A§() : void
      {
         var _loc1_:LevelObject = null;
         if(this.§,6§ > this.§7!S§ + 1000 / 30)
         {
            if(this.§4I§ != null)
            {
               for each(_loc1_ in this.§4I§)
               {
                  _loc1_.addTrail();
               }
            }
            this.§7!S§ = this.§,6§;
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:LevelObject = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.§5f§.isPigsAlive(true))
            {
               _loc2_ = this.§5f§.§4J§(true);
               _loc2_.§7!O§.mTryToScream = LevelObjectRenderer.§9!g§;
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§5f§.§>z§());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            if(this.§5f§.isPigsAlive(true))
            {
               _loc2_ = this.§5f§.§4J§(true);
               _loc2_.§7!O§.mTryToBlink = LevelObjectRenderer.§[W§;
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§5f§.§>z§());
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §0'§.§7!!§;
         }
         ScoreCollector.addScore(param1,param2);
         this.§+!a§.addScore(param1);
         if(param3 && param1 > 0 && !this.§'![§)
         {
            this.§="§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §="§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §0'§.§&!1§;
         }
         this.§<H§.§@4§(§0'§.§0!8§,LevelParticleManager.§#!k§,§0'§.§=!%§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §6Q§(param1:LevelObject) : void
      {
         if(this.§4I§ == null)
         {
            this.§4I§ = new Array();
         }
         this.§4I§.push(param1);
      }
      
      public function useMightyEagle() : void
      {
         this.§8!5§.useMightyEagle();
         this.§5f§.§#!C§();
         this.§'![§ = true;
      }
      
      public function §[]§(param1:LevelObject) : void
      {
         this.§<H§.§@!X§(LevelParticleManager.§^<§);
         if(this.§4I§.indexOf(param1) >= 0)
         {
            this.§4I§.splice(this.§4I§.indexOf(param1),1);
         }
         if(this.§4I§.length == 0)
         {
            this.§4I§ = null;
         }
      }
      
      public function § a§(param1:LevelSlingshotObject, param2:Number, param3:Number) : void
      {
         this.§+!Y§ = this.§5f§.addObject(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
         var _loc4_:Number = param1.name.toUpperCase() == "BIRD_GREEN" ? Number(LevelSlingshot.BIRD_LAUNCH_FORCE_GREEN) : Number(LevelSlingshot.BIRD_LAUNCH_FORCE);
         if(param1.§?!h§ > 1)
         {
            this.§+!Y§.§;!4§(param1.§?!h§);
            this.§+!Y§.§7!O§.§&!L§();
         }
         if(param1.§9S§ != 0)
         {
            _loc4_ = param1.§9S§;
         }
         var _loc5_:Number = -_loc4_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc6_:Number = _loc4_ * param2 * Math.sin(param3 / (180 / Math.PI));
         this.§+!Y§.§4g§(new b2Vec2(_loc5_,_loc6_),false,true);
         this.camera.§>7§(§%!-§.§]3§);
         if(this.§1!^§)
         {
            this.§1!^§.§ a§(this.mLevelEngine.§">§,param1.x,param1.y,param2,param3);
         }
      }
      
      public function activatePowerup() : void
      {
         this.§]!Z§ = true;
      }
      
      private function §6!e§() : void
      {
         if(!this.§]!Z§)
         {
            return;
         }
         this.§]!Z§ = false;
         if(this.activeObject is §4!G§ && !(this.activeObject as §4!G§).§2s§)
         {
            if(this.activeObject.activateSpecialPower(this.§5!B§))
            {
               this.§>!=§ = true;
            }
         }
         else
         {
            this.§5f§.§,!c§();
         }
         if(this.§1!^§)
         {
            this.§1!^§.§6t§(this.mLevelEngine.§">§);
         }
      }
      
      public function §'!7§() : void
      {
         this.§5f§.§'!7§();
      }
      
      public function §[!G§() : void
      {
         this.§5f§.§8h§();
      }
      
      public function §<!9§() : LevelModel
      {
         var _loc1_:LevelModel = new LevelModel();
         _loc1_.§;!L§ = this.§0@§.§;!L§;
         _loc1_.§^]§ = this.§0@§.§^]§;
         this.§]!Y§.§"^§(_loc1_);
         this.§5f§.§5!H§(_loc1_);
         this.§8!5§.§!!-§(_loc1_);
         _loc1_.theme = this.§4!6§.§=z§();
         return _loc1_;
      }
      
      public function §0X§() : int
      {
         return this.§0@§.§^]§;
      }
      
      public function §4w§() : int
      {
         return this.§0@§.§;!L§;
      }
      
      public function §0!0§(param1:int) : void
      {
         this.§0@§.§^]§ = param1;
      }
      
      public function §]!^§(param1:int) : void
      {
         this.§0@§.§;!L§ = param1;
      }
      
      public function §4,§(param1:Number, param2:Number) : void
      {
         if(this.§^!@§)
         {
            this.§^!@§.§;0§(param1,param2);
         }
         if(this.§]!Y§)
         {
            this.§]!Y§.§7l§(0);
         }
      }
      
      public function get currentLevel() : LevelModel
      {
         return this.§0@§;
      }
      
      public function get §5!B§() : LevelObjectManager
      {
         return this.§5f§;
      }
      
      protected function get starling() : Starling
      {
         return this.§&!J§;
      }
      
      public function get §`A§() : int
      {
         return §1!j§;
      }
   }
}
