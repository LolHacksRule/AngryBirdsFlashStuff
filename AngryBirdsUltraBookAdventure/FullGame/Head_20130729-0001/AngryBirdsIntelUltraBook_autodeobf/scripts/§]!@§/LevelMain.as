package §]!@§
{
   import §#!,§.DisplayObject;
   import §#!,§.Sprite;
   import §,!7§.AnimationManager;
   import §,!7§.DynamicContentManager;
   import §,!7§.TextureManager;
   import §-!b§.Replay;
   import §-s§.LevelBackground;
   import §4!C§.§,!0§;
   import §5=§.Integer;
   import §5u§.§[!,§;
   import §6!!§.§6!f§;
   import §6!!§.LevelObject;
   import §6!!§.LevelObjectManager;
   import §6!!§.LevelObjectRenderer;
   import §6w§.§9!%§;
   import §7!>§.Starling;
   import §91§.§else§;
   import §<u§.Log;
   import §>!8§.b2Vec2;
   import §>!_§.§5!"§;
   import §>!_§.§=E§;
   import §>!_§.LevelManager;
   import §>!_§.LevelModel;
   import §>=§.LevelThemeBackground;
   import §>=§.LevelThemeBackgroundManager;
   import §?!Y§.§`S§;
   import §@!-§.§ !_§;
   import §@!-§.LevelParticleManager;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class LevelMain
   {
      
      private static const §@D§:int = 20;
      
      public static const §;y§:Number = §`S§.SCREEN_WIDTH;
      
      public static const §@K§:Number = §`S§.SCREEN_HEIGHT;
      
      public static const §@!d§:Number = 1 / 20;
      
      public static const §4!$§:Number = §`S§.SCREEN_HEIGHT * §@!d§;
      
      public static const §=!c§:Number = §;y§ * §@!d§;
      
      public static const §2!S§:Integer = new Integer(13 - 3);
      
      protected static var §>!;§:String = LevelModel.§9J§;
       
      
      protected var §]%§:LevelObjectManager;
      
      private var §`!L§:LevelObject;
      
      private var §+!e§:Array = null;
      
      protected var §9-§:LevelBackground;
      
      public var mLevelEngine:§5L§;
      
      protected var §>!f§:§[6§;
      
      protected var §8!X§:§[!,§;
      
      protected var §]Q§:LevelSlingshot;
      
      protected var §8!6§:LevelParticleManager;
      
      public var mReadyToRun:Boolean = false;
      
      public var §try §:Boolean = false;
      
      protected var §2!@§:Boolean = false;
      
      protected var §]!A§:Boolean = false;
      
      public var §`!8§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §6!;§:Number;
      
      public var §`!>§:Number;
      
      private var §0h§:Number;
      
      public var §1R§:§=E§;
      
      public var static:Boolean = false;
      
      private var §^W§:§9?§;
      
      private var §1!`§:Sprite;
      
      protected var §2!i§:LevelModel;
      
      protected var §9!A§:§else§ = null;
      
      private var §3H§:EventDispatcher;
      
      private var §5!c§:Array;
      
      private var §,`§:Array;
      
      protected var §&!8§:Starling;
      
      private var §3!E§:§9!%§;
      
      protected var §7!`§:TextureManager;
      
      protected var §,!%§:AnimationManager;
      
      private var §3!a§:DynamicContentManager;
      
      private var §9! §:DynamicContentManager;
      
      private var §<I§:DynamicContentManager;
      
      private var §[;§:Stage;
      
      private var § !k§:§#C§;
      
      protected var §>!!§:Replay;
      
      protected var §!=§:Replay;
      
      protected var §;l§:Number = 0.0;
      
      protected var §^!N§:String;
      
      private var §!! §:Boolean;
      
      protected var §&&§:Boolean;
      
      protected var §9!8§:uint = 1.417339207E9;
      
      public var §=§:Boolean;
      
      public function LevelMain(param1:Stage)
      {
         this.§,`§ = [];
         super();
         this.§3H§ = new EventDispatcher();
         this.§1R§ = new §=E§();
         this.§[;§ = param1;
         this.§7!`§ = TextureManager.§7!E§;
         this.§,!%§ = this.initAnimationManager(this.§7!`§);
         this.§3!a§ = this.initThemeGraphicsManager();
         this.§9! § = this.initThemeSoundsManager();
         this.§<I§ = this.initCutSceneManager();
         var _loc2_:Stage3D = param1.stage3Ds[0];
         this.§&!8§ = new Starling(§9?§,param1,new Rectangle(0,0,§`S§.SCREEN_WIDTH,§`S§.SCREEN_HEIGHT),_loc2_);
         §`S§.§=F§.addEventListener(Event.ENTER_FRAME,this.§&!8§.onEnterFrame);
         _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§8!<§,false,0,true);
         this.§&!8§.§;!h§ = false;
         this.§&!8§.enableErrorChecking = false;
         this.§&!8§.§6y§ = 2;
         this.§&!8§.§77§();
      }
      
      public static function § v§(param1:LevelObject, param2:LevelObject) : Number
      {
         var _loc3_:Number = param1.§'l§ - param2.§'l§;
         var _loc4_:Number = param1.§>z§ - param2.§>z§;
         return §=%§(_loc3_,_loc4_);
      }
      
      public static function §=%§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         if(!this.§1!`§ && this.§!!!§)
         {
            this.§1!`§ = this.§^W§.§#q§;
         }
         return this.§1!`§;
      }
      
      public function get §!!!§() : Sprite
      {
         if(!this.§^W§)
         {
            this.§^W§ = this.§&!8§.§#n§ as §9?§;
            this.§^W§.§<@§ = false;
         }
         return this.§^W§;
      }
      
      private function get §5e§() : DisplayObject
      {
         if(this.§!!!§)
         {
            return (this.§!!!§ as §9?§).§5e§;
         }
         return null;
      }
      
      public function get animationManager() : AnimationManager
      {
         return this.§,!%§;
      }
      
      public function get textureManager() : TextureManager
      {
         return this.§7!`§;
      }
      
      public function get camera() : §[!,§
      {
         return this.§8!X§;
      }
      
      public function get objects() : LevelObjectManager
      {
         return this.§]%§;
      }
      
      public function get particles() : LevelParticleManager
      {
         return this.§8!6§;
      }
      
      public function get background() : LevelBackground
      {
         return this.§9-§;
      }
      
      public function get slingshot() : LevelSlingshot
      {
         return this.§]Q§;
      }
      
      public function get activeObject() : LevelObject
      {
         return this.§`!L§;
      }
      
      public function get §!![§() : §[6§
      {
         return this.§>!f§;
      }
      
      public function get stage() : Stage
      {
         return this.§[;§;
      }
      
      public function get §4!G§() : DynamicContentManager
      {
         return this.§<I§;
      }
      
      protected function get §2h§() : DynamicContentManager
      {
         return this.§3!a§;
      }
      
      public function set activeObject(param1:LevelObject) : void
      {
         this.§`!L§ = param1;
      }
      
      public function set §@!^§(param1:Boolean) : void
      {
         this.§&&§ = param1;
      }
      
      public function clear() : void
      {
         if(this.§3!E§)
         {
            this.§3!E§.dispose();
         }
         if(this.§7!`§)
         {
            this.§7!`§.dispose();
         }
         if(this.§3!a§ && this.§3!a§.textureManager)
         {
            this.§3!a§.textureManager.dispose();
         }
         if(this.§<I§ && this.§<I§.textureManager)
         {
            this.§<I§.textureManager.dispose();
         }
         if(this.§&!8§)
         {
            this.§&!8§.dispose();
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
      
      public function §#!$§(param1:Boolean) : void
      {
         if(Starling.§7!+§)
         {
            if(param1)
            {
               Starling.§7!+§.start();
            }
            else
            {
               Starling.§7!+§.stop();
               Starling.§7!+§.color = 0;
            }
         }
      }
      
      public function §9H§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function setController(param1:§else§) : void
      {
         if(this.§9!A§ != null)
         {
            this.§9!A§.removeEventListeners();
         }
         this.§9!A§ = param1;
         if(this.mReadyToRun)
         {
            this.§9!A§.addEventListeners();
         }
      }
      
      public function §'m§() : Replay
      {
         return this.§>!!§;
      }
      
      public function §7!Z§(param1:§9!%§, param2:Array, param3:Function) : void
      {
         this.§3!E§ = param1;
         var _loc4_:int = this.§3!E§.§9q§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§7!`§.§-M§(this.§3!E§.§+t§(_loc5_));
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§3H§.addEventListener(Event.INIT,param3);
            this.§,`§.push(param3);
         }
         if(this.§<<§(param2))
         {
            this.§0!g§();
         }
      }
      
      private function §<<§(param1:Array) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.§7!`§.§!4§())
         {
            _loc2_ = this.§7!`§.§^!"§ / 1000;
            _loc3_ = this.§7!`§.§9!d§ / 1000;
            Log.log("\n\nMain texture manager memory usage:\n   textures " + _loc2_ + " kilobytes\n   bitmaps " + _loc3_ + " kilobytes\n\n");
            this.initializeAnimations(param1);
            return true;
         }
         this.§5!c§ = param1.concat();
         return false;
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         this.§,!%§.initializeAnimations(param1);
      }
      
      private function §8!<§(param1:Event) : void
      {
         this.§7!`§.§4!^§();
         if(this.§2h§ && this.§2h§.textureManager)
         {
            this.§2h§.textureManager.§4!^§();
         }
         if(this.§4!G§ && this.§4!G§.textureManager)
         {
            this.§4!G§.textureManager.§4!^§();
         }
         if(this.§5!c§)
         {
            this.§<<§(this.§5!c§);
            this.§5!c§ = null;
            this.§0!g§();
         }
         if(this.§9!A§ != null && this.mReadyToRun)
         {
            this.§9!A§.addEventListeners();
         }
         if(this.§3!a§)
         {
            this.§3!a§.§!4§();
         }
         if(this.§<I§)
         {
            if(this.§<I§.textureManager)
            {
               this.§<I§.textureManager.§4!^§();
               this.§<I§.§!4§();
            }
         }
      }
      
      private function §0!g§() : void
      {
         this.§3H§.dispatchEvent(new Event(Event.INIT));
         this.§!!k§();
      }
      
      private function §!!k§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§,`§)
         {
            this.§3H§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§,`§ = [];
      }
      
      public function init(param1:LevelModel) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§>!f§ = new §[6§(this,param1);
         this.§8!X§ = this.§&!g§(param1);
         this.§6!;§ = 0;
         this.§`!>§ = 0;
         this.§0h§ = 0;
         this.§!! § = false;
         this.mReadyToRun = false;
         this.§try § = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         §>!;§ = param1.theme;
         this.§2!i§ = param1;
         this.§2!@§ = this.§ !@§(param1.theme);
         this.§]!A§ = this.§20§(param1.theme);
         if(this.§2!@§ && this.§]!A§)
         {
            this.initialize(param1);
         }
         else
         {
            this.§1!J§(param1.theme);
         }
         this.§^5§();
         ScoreCollector.init();
      }
      
      protected function §^5§() : void
      {
         this.§>!!§ = new Replay(LevelManager.§1m§);
      }
      
      protected function § !@§(param1:String) : Boolean
      {
         if(this.§3!a§)
         {
            return false;
         }
         return true;
      }
      
      protected function §20§(param1:String) : Boolean
      {
         var _loc2_:LevelThemeBackground = null;
         if(this.§9! §)
         {
            _loc2_ = LevelThemeBackgroundManager.§#!W§(param1);
            if(_loc2_)
            {
               if(_loc2_.§ a§ && !this.§9! §.§"!Y§(_loc2_.§ a§))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function §1!J§(param1:String) : void
      {
         var _loc2_:LevelThemeBackground = null;
         if(this.§3!a§ && !this.§ !@§(param1))
         {
            this.§3!a§.removeEventListener(Event.COMPLETE,this.§>!H§);
            this.§3!a§.removeEventListener(Event.CANCEL,this.§ &§);
            this.§3!a§.addEventListener(Event.COMPLETE,this.§>!H§);
            this.§3!a§.addEventListener(Event.CANCEL,this.§ &§);
            this.§3!a§.§&!&§(param1);
         }
         if(this.§9! § && !this.§20§(param1))
         {
            this.§9! §.removeEventListener(Event.COMPLETE,this.§;s§);
            this.§9! §.removeEventListener(Event.CANCEL,this.§1E§);
            this.§9! §.addEventListener(Event.COMPLETE,this.§;s§);
            this.§9! §.addEventListener(Event.CANCEL,this.§1E§);
            _loc2_ = LevelThemeBackgroundManager.§#!W§(param1);
            if(_loc2_)
            {
               this.§9! §.§&!&§(_loc2_.§ a§);
            }
         }
      }
      
      private function §>!H§(param1:Event) : void
      {
         this.§3!a§.removeEventListener(Event.COMPLETE,this.§>!H§);
         this.§3!a§.removeEventListener(Event.CANCEL,this.§ &§);
         this.§2!@§ = true;
         if(this.§2!@§ && this.§]!A§)
         {
            this.initialize(this.§2!i§);
         }
      }
      
      private function § &§(param1:Event) : void
      {
         this.§3!a§.removeEventListener(Event.COMPLETE,this.§>!H§);
         this.§3!a§.removeEventListener(Event.CANCEL,this.§ &§);
         this.§try § = true;
      }
      
      private function §;s§(param1:Event) : void
      {
         this.§3!a§.removeEventListener(Event.COMPLETE,this.§;s§);
         this.§3!a§.removeEventListener(Event.CANCEL,this.§1E§);
         this.§]!A§ = true;
         if(this.§2!@§ && this.§]!A§)
         {
            this.initialize(this.§2!i§);
         }
      }
      
      private function §1E§(param1:Event) : void
      {
         this.§3!a§.removeEventListener(Event.COMPLETE,this.§;s§);
         this.§3!a§.removeEventListener(Event.CANCEL,this.§1E§);
         this.§]!A§ = true;
         if(this.§2!@§ && this.§]!A§)
         {
            this.initialize(this.§2!i§);
         }
      }
      
      public function get backgroundTextureManager() : TextureManager
      {
         return this.§7!`§;
      }
      
      protected function initialize(param1:LevelModel) : void
      {
         this.§&&§ = false;
         this.§=§ = false;
         if(Starling.§5K§)
         {
            Starling.§5K§.speed = 1;
         }
         this.mLevelEngine = new §5L§(this);
         this.§9-§ = this.initLevelBackground(param1.theme,this.§>!f§.§-!J§ / §@!d§,this.backgroundTextureManager,this.§8!X§.§-b§());
         this.§9-§.§^!D§(§`S§.§-!,§());
         this.§]%§ = this.initLevelObjectManager(param1);
         this.§]Q§ = this.initLevelSlingshot(param1);
         this.§8!6§ = this.§3-§(this.§,!%§,this.§7!`§);
         this.§8!X§.init();
         this.§-!L§();
         this.§7=§();
         this.mReadyToRun = true;
         if(this.§9!A§)
         {
            this.§9!A§.addEventListeners();
         }
      }
      
      protected function §7=§() : void
      {
         if(this.§^!N§)
         {
            this.§!=§ = Replay.initialize(this.§^!N§);
            this.§!=§.speed = 1;
            this.§!=§.play();
            this.§;l§ = -1000;
            this.§^!N§ = null;
         }
      }
      
      public function §9!N§(param1:String) : void
      {
         this.§^!N§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§!=§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§!=§)
         {
            if(param1)
            {
               this.§!=§.speed = Math.min(this.§!=§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§!=§.speed = Math.max(this.§!=§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§!=§)
         {
            this.§!=§.speed = 1;
         }
      }
      
      protected function initLevelObjectManager(param1:LevelModel) : LevelObjectManager
      {
         return new LevelObjectManager(this,param1,new Sprite());
      }
      
      protected function §&!g§(param1:LevelModel) : §[!,§
      {
         return new §[!,§(this,param1);
      }
      
      protected function initLevelBackground(param1:String, param2:Number, param3:TextureManager, param4:Number) : LevelBackground
      {
         return new LevelBackground(param1,param2,param3,param4);
      }
      
      protected function initLevelSlingshot(param1:LevelModel) : LevelSlingshot
      {
         return new LevelSlingshot(this,param1,new Sprite());
      }
      
      protected function §3-§(param1:AnimationManager, param2:TextureManager) : LevelParticleManager
      {
         return new LevelParticleManager(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:LevelModel = this.§[!j§();
         var _loc4_:§5!"§ = new §5!"§();
         _loc4_.left = 0;
         _loc4_.top = -§[!,§.§4!@§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §[!,§.§4!@§;
         _loc4_.right = _loc4_.left + §[!,§.§5d§;
         _loc4_.y = -13.929;
         _loc4_.x = §[!,§.§5d§;
         _loc4_.id = §[!,§.§-!W§;
         _loc3_.§=!J§(_loc4_);
         var _loc5_:§5!"§ = new §5!"§();
         _loc5_.top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §[!,§.§5d§;
         _loc5_.bottom = _loc5_.top + §[!,§.§4!@§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §[!,§.§5d§ / 2;
         _loc5_.id = §[!,§.§5r§;
         _loc3_.§=!J§(_loc5_);
         this.§;7§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§>!;§ != null)
         {
            _loc3_.theme = §>!;§;
         }
         this.init(_loc3_);
      }
      
      protected function §;7§(param1:LevelModel, param2:Boolean) : void
      {
         if(param2)
         {
            this.§%Q§(param1);
         }
      }
      
      protected function §[!j§() : LevelModel
      {
         var _loc1_:LevelModel = new LevelModel();
         _loc1_.§?!=§ = -12;
         return new LevelModel();
      }
      
      protected function §@1§() : Number
      {
         this.§9!8§ ^= this.§9!8§ << 21;
         this.§9!8§ ^= this.§9!8§ >>> 35;
         this.§9!8§ ^= this.§9!8§ << 4;
         return this.§9!8§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §%Q§(param1:LevelModel) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§,!0§ = null;
         this.§9!8§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§@1§() * 5;
               _loc5_ = new §,!0§();
               _loc5_.x = 30 + _loc3_ * 10 + this.§@1§() * 9;
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
                  _loc5_.angle = 45 - this.§@1§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§@1§() * 3 - _loc3_ * 8;
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
                  _loc5_.angle = this.§@1§() * 360;
               }
               param1.addObject(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      private function §5M§() : void
      {
      }
      
      public function §-!L§() : void
      {
         if(LevelBackground.§`!,§)
         {
            this.§-H§(this.§9-§.§3!I§,false);
         }
         this.§-H§(this.§8!6§.§&S§(LevelParticleManager.§]!F§),false);
         this.§-H§(this.§8!6§.§&S§(LevelParticleManager.§%F§),true);
         this.§-H§(this.§8!6§.§&S§(LevelParticleManager.§;3§),true);
         this.§-H§(this.§]%§.§%!%§,true);
         this.§-H§(this.§]Q§.sprite,true);
         this.§-H§(this.§8!6§.§&S§(LevelParticleManager.§9!H§),true);
         this.§-H§(this.§9-§.§1!W§,false);
         if(LevelBackground.§`!,§)
         {
            this.§-H§(this.§9-§.§`!d§,false);
         }
         this.§-H§(this.§8!6§.§&S§(LevelParticleManager.§+!K§),true);
         if(!§5L§.§8[§)
         {
         }
      }
      
      private function §-H§(param1:Sprite, param2:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(param1);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         param1 /= §`S§.§`!A§;
         param2 /= §`S§.§`!A§;
         _loc3_.x = (param1 / §[!,§.§ !7§ + this.§8!X§.§!!P§ - §[!,§.§[!^§ / §[!,§.§ !7§) * §@!d§;
         _loc3_.y = (param2 / §[!,§.§ !7§ + this.§8!X§.§+x§ - §[!,§.§^j§ / §[!,§.§ !7§) * §@!d§;
         return _loc3_;
      }
      
      public function §;N§(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / §@!d§ + §[!,§.§[!^§ / §[!,§.§ !7§ - this.§8!X§.§!!P§) * §[!,§.§ !7§;
         _loc3_.y = (param2 / §@!d§ + §[!,§.§^j§ / §[!,§.§ !7§ - this.§8!X§.§+x§) * §[!,§.§ !7§;
         var _loc4_:Number = Math.max(§`S§.§`!A§,§`S§.§4+§);
         _loc3_.x *= _loc4_;
         _loc3_.y *= _loc4_;
         return _loc3_;
      }
      
      public function §5!f§(param1:String, param2:Number, param3:Number) : void
      {
         this.§]%§.addObject(param1,param2,param3);
      }
      
      public function §5!K§() : void
      {
         if(this.§5e§)
         {
            this.§5e§.visible = true;
            this.§5e§.alpha = 0;
         }
         this.§`!8§ = 0;
      }
      
      public function §;[§() : void
      {
         this.§ !k§ = new §#C§(§ ?§.§@!Q§,§ ?§.§81§);
      }
      
      public function §,g§() : void
      {
         this.§ !k§ = null;
      }
      
      public function clearLevel() : void
      {
         if(this.§9-§)
         {
            this.§9-§.dispose();
            this.§9-§ = null;
         }
         if(this.§]%§)
         {
            this.§]%§.dispose();
            this.§]%§ = null;
            this.§`!L§ = null;
         }
         if(this.mLevelEngine)
         {
            if(this.mLevelEngine.§4>§)
            {
            }
            this.mLevelEngine.clear();
            this.mLevelEngine = null;
         }
         if(this.§>!f§)
         {
            this.§>!f§.clear();
            this.§>!f§ = null;
         }
         if(this.§]Q§)
         {
            this.§]Q§.dispose();
            this.§]Q§ = null;
         }
         if(this.§8!X§)
         {
            this.§8!X§.clear();
            this.§8!X§ = null;
         }
         if(this.§8!6§)
         {
            this.§8!6§.dispose();
            this.§8!6§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§6!;§ = 0;
         this.§`!>§ = 0;
         this.mReadyToRun = false;
         this.§!! § = false;
         this.§`!8§ = § ?§.§#!S§;
         if(this.§!!!§)
         {
            (this.§!!!§ as §9?§).§<J§.x = 0;
            (this.§!!!§ as §9?§).§<J§.y = 0;
         }
         if(this.§5e§)
         {
            this.§5e§.visible = false;
         }
         this.§!=§ = null;
         this.§>!!§ = null;
         if(this.§3!a§)
         {
            this.§3!a§.removeEventListener(Event.COMPLETE,this.§>!H§);
            this.§3!a§.removeEventListener(Event.CANCEL,this.§ &§);
         }
         if(this.§9! §)
         {
            this.§9! §.removeEventListener(Event.COMPLETE,this.§;s§);
            this.§9! §.removeEventListener(Event.CANCEL,this.§1E§);
         }
         this.§!!k§();
         if(Starling.§7!+§)
         {
            Starling.§7!+§.color = 0;
         }
         if(this.§9!A§)
         {
            this.§9!A§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver() : void
      {
      }
      
      public function §-L§() : String
      {
         if(this.§>!!§)
         {
            return this.§>!!§.toString();
         }
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         if(!this.mReadyToRun || !Starling.§!w§())
         {
            return 0;
         }
         if(this.§!=§ && this.§!=§.§?§)
         {
            return this.§'0§(param1,param2,param3);
         }
         return this.updateWithTime(param1,true,param2,param3);
      }
      
      protected function updateWithTime(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         if(this.§&&§)
         {
            param1 *= 0.2;
            if(Starling.§5K§)
            {
               Starling.§5K§.speed = 0.2;
            }
         }
         var _loc5_:Number = 0;
         this.§`!>§ += param1;
         if(param3)
         {
            this.§6!;§ += param1;
            _loc5_ = this.mLevelEngine.§&!D§(this.§6!;§);
            this.§]Q§.update(param1,param4);
            this.§6!;§ = _loc5_;
         }
         else
         {
            this.§]%§.§]7§(param1);
            this.§6!;§ = 0;
         }
         if(param2)
         {
            this.§%!Z§(param1,_loc5_);
         }
         return param1;
      }
      
      private function §'0§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc5_:Number = NaN;
         var _loc4_:Number = §5L§.§#H§ * 1000;
         if(this.§!=§)
         {
            param1 *= this.§!=§.speed;
            _loc5_ = this.§`!>§ + param1;
            while(this.§`!>§ + _loc4_ < _loc5_)
            {
               if(this.§`!>§ + _loc4_ > this.§;l§)
               {
                  this.§!=§.step(this);
                  this.§;l§ += _loc4_;
               }
               this.updateWithTime(_loc4_,false,param2,param3);
            }
            if(_loc5_ > this.§;l§ + _loc4_)
            {
               this.§!=§.step(this);
               this.§;l§ += _loc4_;
            }
            if(this.§`!>§ < _loc5_)
            {
               this.updateWithTime(_loc5_ - this.§`!>§,true,param2,param3);
            }
            return param1;
         }
         return this.updateWithTime(_loc4_,true,param2,param3);
      }
      
      private function §%!Z§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.§9-§.update(param1);
         this.§]%§.§<&§(param1,param2);
         this.§>I§();
         if(this.§`!8§ < § ?§.§#!S§)
         {
            this.§`!8§ += param1;
            _loc3_ = § ?§.§#!S§ / 2;
            _loc4_ = (-Math.abs(this.§`!8§ - _loc3_) + _loc3_) * (§ ?§.§'!-§ / _loc3_);
            if(this.§5e§)
            {
               this.§5e§.alpha = _loc4_;
            }
         }
         else if(this.§5e§)
         {
            this.§5e§.visible = false;
         }
         if(this.§ !k§)
         {
            if(!this.§ !k§.§0V§(this.§8!X§,param1))
            {
               this.§,g§();
            }
         }
         this.§8!X§.§'!C§(param1);
         this.mLevelEngine.§0!^§();
         this.§8!6§.update(param1);
      }
      
      public function handleEngineUpdateStep(param1:Number) : void
      {
         this.objects.§]7§(param1 * 1000);
         this.objects.§31§(param1 * 1000);
         this.§;e§();
      }
      
      public function §>I§() : void
      {
         var _loc1_:LevelObject = null;
         if(this.§`!>§ > this.§0h§ + 1000 / 30)
         {
            if(this.§+!e§ != null)
            {
               for each(_loc1_ in this.§+!e§)
               {
                  _loc1_.addTrail();
               }
            }
            this.§0h§ = this.§`!>§;
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:LevelObject = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.§]%§.isPigsAlive(true))
            {
               _loc2_ = this.§]%§.§9!Z§(true);
               _loc2_.§`!P§.mTryToScream = LevelObjectRenderer.§9I§;
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§]%§.§,§());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            if(this.§]%§.isPigsAlive(true))
            {
               _loc2_ = this.§]%§.§9!Z§(true);
               _loc2_.§`!P§.mTryToBlink = LevelObjectRenderer.§;B§;
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§]%§.§,§());
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = § !_§.§`!9§;
         }
         ScoreCollector.addScore(param1,param2);
         this.§9!A§.addScore(param1);
         if(param3 && param1 > 0 && !this.§=§)
         {
            this.§!8§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §!8§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = § !_§.§!M§;
         }
         this.§8!6§.§?`§(§ !_§.§<x§,LevelParticleManager.§+!K§,§ !_§.§?D§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §8!`§(param1:LevelObject) : void
      {
         if(this.§+!e§ == null)
         {
            this.§+!e§ = new Array();
         }
         this.§+!e§.push(param1);
      }
      
      public function useMightyEagle() : void
      {
         this.§]Q§.useMightyEagle();
         this.§]%§.§get §();
         this.§=§ = true;
      }
      
      public function §6B§(param1:LevelObject) : void
      {
         this.§8!6§.§switch§(LevelParticleManager.§]!F§);
         if(this.§+!e§.indexOf(param1) >= 0)
         {
            this.§+!e§.splice(this.§+!e§.indexOf(param1),1);
         }
         if(this.§+!e§.length == 0)
         {
            this.§+!e§ = null;
         }
      }
      
      public function §!!E§(param1:LevelSlingshotObject, param2:Number, param3:Number) : void
      {
         this.§`!L§ = this.§]%§.addObject(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
         var _loc4_:Number = param1.name.toUpperCase() == "BIRD_GREEN" ? Number(LevelSlingshot.BIRD_LAUNCH_FORCE_GREEN) : Number(LevelSlingshot.BIRD_LAUNCH_FORCE);
         if(param1.§1F§ > 1)
         {
            this.§`!L§.§+!c§(param1.§1F§);
            this.§`!L§.§`!P§.§%H§();
         }
         if(param1.§>#§ != 0)
         {
            _loc4_ = param1.§>#§;
         }
         var _loc5_:Number = -_loc4_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc6_:Number = _loc4_ * param2 * Math.sin(param3 / (180 / Math.PI));
         this.§`!L§.§'x§(new b2Vec2(_loc5_,_loc6_),false,true);
         this.camera.§5!<§(§[!,§.§2f§);
         if(this.§>!!§)
         {
            this.§>!!§.§!!E§(this.mLevelEngine.§8!?§,param1.x,param1.y,param2,param3);
         }
      }
      
      public function activatePowerup() : void
      {
         this.§!! § = true;
      }
      
      private function §;e§() : void
      {
         if(!this.§!! §)
         {
            return;
         }
         this.§!! § = false;
         if(this.activeObject is §6!f§ && !(this.activeObject as §6!f§).§+!O§)
         {
            if(this.activeObject.activateSpecialPower(this.§`5§))
            {
               this.static = true;
            }
         }
         else
         {
            this.§]%§.§0!=§();
         }
         if(this.§>!!§)
         {
            this.§>!!§.§+!-§(this.mLevelEngine.§8!?§);
         }
      }
      
      public function §3!h§() : void
      {
         this.§]%§.§3!h§();
      }
      
      public function §]!`§() : void
      {
         this.§]%§.§9l§();
      }
      
      public function § use§() : LevelModel
      {
         var _loc1_:LevelModel = new LevelModel();
         _loc1_.§<q§ = this.§2!i§.§<q§;
         _loc1_.§4!4§ = this.§2!i§.§4!4§;
         this.§8!X§.§,#§(_loc1_);
         this.§]%§.§-I§(_loc1_);
         this.§]Q§.§ !g§(_loc1_);
         _loc1_.theme = this.§9-§.§>6§();
         return _loc1_;
      }
      
      public function §;h§() : int
      {
         return this.§2!i§.§4!4§;
      }
      
      public function §?z§() : int
      {
         return this.§2!i§.§<q§;
      }
      
      public function §9C§(param1:int) : void
      {
         this.§2!i§.§4!4§ = param1;
      }
      
      public function §9K§(param1:int) : void
      {
         this.§2!i§.§<q§ = param1;
      }
      
      public function §[!2§(param1:Number, param2:Number) : void
      {
         if(this.§^W§)
         {
            this.§^W§.§]!b§(param1,param2);
         }
         if(this.§8!X§)
         {
            this.§8!X§.§'!C§(0);
         }
      }
      
      public function get currentLevel() : LevelModel
      {
         return this.§2!i§;
      }
      
      public function get §`5§() : LevelObjectManager
      {
         return this.§]%§;
      }
      
      protected function get starling() : Starling
      {
         return this.§&!8§;
      }
      
      public function get §>5§() : int
      {
         return §@D§;
      }
   }
}
