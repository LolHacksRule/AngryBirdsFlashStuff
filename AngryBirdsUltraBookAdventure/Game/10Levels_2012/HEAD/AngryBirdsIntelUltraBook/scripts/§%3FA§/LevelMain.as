package §?A§
{
   import §"$§.Starling;
   import §"[§.LevelBackground;
   import §#!X§.§2J§;
   import §#!X§.§7!1§;
   import §#!X§.LevelManager;
   import §#!X§.LevelModel;
   import §#y§.§0!D§;
   import §%!M§.§8!;§;
   import §%!M§.LevelParticleManager;
   import §'N§.Log;
   import §-!>§.§4!T§;
   import §1!&§.DisplayObject;
   import §1!&§.Sprite;
   import §3!c§.§<'§;
   import §3Y§.LevelObject;
   import §3Y§.LevelObjectManager;
   import §3Y§.LevelObjectRenderer;
   import §3Y§.§[r§;
   import §6Z§.§^!g§;
   import §8!?§.AnimationManager;
   import §8!?§.DynamicContentManager;
   import §8!?§.TextureManager;
   import §9!!§.Integer;
   import §9!H§.§"!L§;
   import §9a§.Replay;
   import §?!&§.b2Vec2;
   import §[a§.LevelThemeBackground;
   import §[a§.LevelThemeBackgroundManager;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class LevelMain
   {
      
      private static const §6b§:int = 20;
      
      public static const §>7§:Number = §4!T§.SCREEN_WIDTH;
      
      public static const §=q§:Number = §4!T§.SCREEN_HEIGHT;
      
      public static const §!5§:Number = 1 / 20;
      
      public static const §9t§:Number = §4!T§.SCREEN_HEIGHT * §!5§;
      
      public static const §6Y§:Number = §>7§ * §!5§;
      
      public static const §<a§:Integer = new Integer(13 - 3);
      
      protected static var §@!G§:String = LevelModel.§!Z§;
       
      
      protected var §^^§:LevelObjectManager;
      
      private var §'Z§:LevelObject;
      
      private var §`W§:Array = null;
      
      protected var §&^§:LevelBackground;
      
      public var mLevelEngine:§6c§;
      
      protected var § "§:§'K§;
      
      protected var §6!V§:§0!D§;
      
      protected var §]!A§:LevelSlingshot;
      
      protected var §`!$§:LevelParticleManager;
      
      public var mReadyToRun:Boolean = false;
      
      public var §2§:Boolean = false;
      
      protected var §=!X§:Boolean = false;
      
      protected var §,!^§:Boolean = false;
      
      public var §?y§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §<!b§:Number;
      
      public var §"!-§:Number;
      
      private var §,!%§:Number;
      
      public var § G§:§2J§;
      
      public var §4-§:Boolean = false;
      
      private var §+!0§:§;I§;
      
      private var §<!,§:Sprite;
      
      protected var §0!?§:LevelModel;
      
      protected var §^!I§:§"!L§ = null;
      
      private var §`!b§:EventDispatcher;
      
      private var §;"§:Array;
      
      private var §6h§:Array;
      
      protected var §,!8§:Starling;
      
      private var §^3§:§<'§;
      
      protected var §`_§:TextureManager;
      
      protected var §[6§:AnimationManager;
      
      private var §,E§:DynamicContentManager;
      
      private var §^l§:DynamicContentManager;
      
      private var §;!,§:DynamicContentManager;
      
      private var §?_§:Stage;
      
      private var §7^§:§?V§;
      
      protected var §,z§:Replay;
      
      protected var §=,§:Replay;
      
      protected var §8z§:Number = 0.0;
      
      protected var §,!F§:String;
      
      private var §0v§:Boolean;
      
      protected var §!!O§:Boolean;
      
      protected var §&A§:uint = 1.417339207E9;
      
      public var §!!b§:Boolean;
      
      public function LevelMain(param1:Stage)
      {
         this.§6h§ = [];
         super();
         this.§`!b§ = new EventDispatcher();
         this.§ G§ = new §2J§();
         this.§?_§ = param1;
         this.§`_§ = TextureManager.§&!'§;
         this.§[6§ = this.initAnimationManager(this.§`_§);
         this.§,E§ = this.initThemeGraphicsManager();
         this.§^l§ = this.initThemeSoundsManager();
         this.§;!,§ = this.initCutSceneManager();
         var _loc2_:Stage3D = param1.stage3Ds[0];
         this.§,!8§ = new Starling(§;I§,param1,new Rectangle(0,0,§4!T§.SCREEN_WIDTH,§4!T§.SCREEN_HEIGHT),_loc2_);
         §4!T§.§%!K§.addEventListener(Event.ENTER_FRAME,this.§,!8§.onEnterFrame);
         _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§>!R§,false,0,true);
         this.§,!8§.§]<§ = false;
         this.§,!8§.enableErrorChecking = false;
         this.§,!8§.§=6§ = 2;
         this.§,!8§.§ Z§();
      }
      
      public static function §4!U§(param1:LevelObject, param2:LevelObject) : Number
      {
         var _loc3_:Number = param1.§-! § - param2.§-! §;
         var _loc4_:Number = param1.§<s§ - param2.§<s§;
         return §%!?§(_loc3_,_loc4_);
      }
      
      public static function §%!?§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         if(!this.§<!,§ && this.§7B§)
         {
            this.§<!,§ = this.§+!0§.§#!B§;
         }
         return this.§<!,§;
      }
      
      public function get §7B§() : Sprite
      {
         if(!this.§+!0§)
         {
            this.§+!0§ = this.§,!8§.set as §;I§;
            this.§+!0§.§9@§ = false;
         }
         return this.§+!0§;
      }
      
      private function get §>L§() : DisplayObject
      {
         if(this.§7B§)
         {
            return (this.§7B§ as §;I§).§>L§;
         }
         return null;
      }
      
      public function get animationManager() : AnimationManager
      {
         return this.§[6§;
      }
      
      public function get textureManager() : TextureManager
      {
         return this.§`_§;
      }
      
      public function get camera() : §0!D§
      {
         return this.§6!V§;
      }
      
      public function get objects() : LevelObjectManager
      {
         return this.§^^§;
      }
      
      public function get particles() : LevelParticleManager
      {
         return this.§`!$§;
      }
      
      public function get background() : LevelBackground
      {
         return this.§&^§;
      }
      
      public function get slingshot() : LevelSlingshot
      {
         return this.§]!A§;
      }
      
      public function get activeObject() : LevelObject
      {
         return this.§'Z§;
      }
      
      public function get §7!%§() : §'K§
      {
         return this.§ "§;
      }
      
      public function get stage() : Stage
      {
         return this.§?_§;
      }
      
      public function get §6J§() : DynamicContentManager
      {
         return this.§;!,§;
      }
      
      protected function get §9L§() : DynamicContentManager
      {
         return this.§,E§;
      }
      
      public function set activeObject(param1:LevelObject) : void
      {
         this.§'Z§ = param1;
      }
      
      public function set §#G§(param1:Boolean) : void
      {
         this.§!!O§ = param1;
      }
      
      public function clear() : void
      {
         if(this.§^3§)
         {
            this.§^3§.dispose();
         }
         if(this.§`_§)
         {
            this.§`_§.dispose();
         }
         if(this.§,E§ && this.§,E§.textureManager)
         {
            this.§,E§.textureManager.dispose();
         }
         if(this.§;!,§ && this.§;!,§.textureManager)
         {
            this.§;!,§.textureManager.dispose();
         }
         if(this.§,!8§)
         {
            this.§,!8§.dispose();
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
      
      public function §@!F§(param1:Boolean) : void
      {
         if(Starling.§'!A§)
         {
            if(param1)
            {
               Starling.§'!A§.start();
            }
            else
            {
               Starling.§'!A§.stop();
               Starling.§'!A§.color = 0;
            }
         }
      }
      
      public function §;!1§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function setController(param1:§"!L§) : void
      {
         if(this.§^!I§ != null)
         {
            this.§^!I§.removeEventListeners();
         }
         this.§^!I§ = param1;
         if(this.mReadyToRun)
         {
            this.§^!I§.addEventListeners();
         }
      }
      
      public function §7;§() : Replay
      {
         return this.§,z§;
      }
      
      public function §'!>§(param1:§<'§, param2:Array, param3:Function) : void
      {
         this.§^3§ = param1;
         var _loc4_:int = this.§^3§.§56§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§`_§.§2!M§(this.§^3§.§!w§(_loc5_));
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§`!b§.addEventListener(Event.INIT,param3);
            this.§6h§.push(param3);
         }
         if(this.§4!Y§(param2))
         {
            this.§2K§();
         }
      }
      
      private function §4!Y§(param1:Array) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.§`_§.§-t§())
         {
            _loc2_ = this.§`_§.§3^§ / 1000;
            _loc3_ = this.§`_§.§+2§ / 1000;
            Log.log("\n\nMain texture manager memory usage:\n   textures " + _loc2_ + " kilobytes\n   bitmaps " + _loc3_ + " kilobytes\n\n");
            this.initializeAnimations(param1);
            return true;
         }
         this.§;"§ = param1.concat();
         return false;
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         this.§[6§.initializeAnimations(param1);
      }
      
      private function §>!R§(param1:Event) : void
      {
         this.§`_§.§-h§();
         if(this.§9L§ && this.§9L§.textureManager)
         {
            this.§9L§.textureManager.§-h§();
         }
         if(this.§6J§ && this.§6J§.textureManager)
         {
            this.§6J§.textureManager.§-h§();
         }
         if(this.§;"§)
         {
            this.§4!Y§(this.§;"§);
            this.§;"§ = null;
            this.§2K§();
         }
         if(this.§^!I§ != null && this.mReadyToRun)
         {
            this.§^!I§.addEventListeners();
         }
         if(this.§,E§)
         {
            this.§,E§.§-t§();
         }
         if(this.§;!,§)
         {
            if(this.§;!,§.textureManager)
            {
               this.§;!,§.textureManager.§-h§();
               this.§;!,§.§-t§();
            }
         }
      }
      
      private function §2K§() : void
      {
         this.§`!b§.dispatchEvent(new Event(Event.INIT));
         this.§@!g§();
      }
      
      private function §@!g§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§6h§)
         {
            this.§`!b§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§6h§ = [];
      }
      
      public function init(param1:LevelModel) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§ "§ = new §'K§(this,param1);
         this.§6!V§ = this.§8Y§(param1);
         this.§<!b§ = 0;
         this.§"!-§ = 0;
         this.§,!%§ = 0;
         this.§0v§ = false;
         this.mReadyToRun = false;
         this.§2§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         §@!G§ = param1.theme;
         this.§0!?§ = param1;
         this.§=!X§ = this.§]!8§(param1.theme);
         this.§,!^§ = this.§"]§(param1.theme);
         if(this.§=!X§ && this.§,!^§)
         {
            this.initialize(param1);
         }
         else
         {
            this.§7$§(param1.theme);
         }
         this.§5!'§();
         ScoreCollector.init();
      }
      
      protected function §5!'§() : void
      {
         this.§,z§ = new Replay(LevelManager.§!=§);
      }
      
      protected function §]!8§(param1:String) : Boolean
      {
         if(this.§,E§)
         {
            return false;
         }
         return true;
      }
      
      protected function §"]§(param1:String) : Boolean
      {
         var _loc2_:LevelThemeBackground = null;
         if(this.§^l§)
         {
            _loc2_ = LevelThemeBackgroundManager.§"!f§(param1);
            if(_loc2_)
            {
               if(_loc2_.§2!"§ && !this.§^l§.§43§(_loc2_.§2!"§))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function §7$§(param1:String) : void
      {
         var _loc2_:LevelThemeBackground = null;
         if(this.§,E§ && !this.§]!8§(param1))
         {
            this.§,E§.removeEventListener(Event.COMPLETE,this.§-@§);
            this.§,E§.removeEventListener(Event.CANCEL,this.§"!B§);
            this.§,E§.addEventListener(Event.COMPLETE,this.§-@§);
            this.§,E§.addEventListener(Event.CANCEL,this.§"!B§);
            this.§,E§.§'!9§(param1);
         }
         if(this.§^l§ && !this.§"]§(param1))
         {
            this.§^l§.removeEventListener(Event.COMPLETE,this.§[Q§);
            this.§^l§.removeEventListener(Event.CANCEL,this.§5!G§);
            this.§^l§.addEventListener(Event.COMPLETE,this.§[Q§);
            this.§^l§.addEventListener(Event.CANCEL,this.§5!G§);
            _loc2_ = LevelThemeBackgroundManager.§"!f§(param1);
            if(_loc2_)
            {
               this.§^l§.§'!9§(_loc2_.§2!"§);
            }
         }
      }
      
      private function §-@§(param1:Event) : void
      {
         this.§,E§.removeEventListener(Event.COMPLETE,this.§-@§);
         this.§,E§.removeEventListener(Event.CANCEL,this.§"!B§);
         this.§=!X§ = true;
         if(this.§=!X§ && this.§,!^§)
         {
            this.initialize(this.§0!?§);
         }
      }
      
      private function §"!B§(param1:Event) : void
      {
         this.§,E§.removeEventListener(Event.COMPLETE,this.§-@§);
         this.§,E§.removeEventListener(Event.CANCEL,this.§"!B§);
         this.§2§ = true;
      }
      
      private function §[Q§(param1:Event) : void
      {
         this.§,E§.removeEventListener(Event.COMPLETE,this.§[Q§);
         this.§,E§.removeEventListener(Event.CANCEL,this.§5!G§);
         this.§,!^§ = true;
         if(this.§=!X§ && this.§,!^§)
         {
            this.initialize(this.§0!?§);
         }
      }
      
      private function §5!G§(param1:Event) : void
      {
         this.§,E§.removeEventListener(Event.COMPLETE,this.§[Q§);
         this.§,E§.removeEventListener(Event.CANCEL,this.§5!G§);
         this.§,!^§ = true;
         if(this.§=!X§ && this.§,!^§)
         {
            this.initialize(this.§0!?§);
         }
      }
      
      public function get backgroundTextureManager() : TextureManager
      {
         return this.§`_§;
      }
      
      protected function initialize(param1:LevelModel) : void
      {
         this.§!!O§ = false;
         this.§!!b§ = false;
         if(Starling.§@7§)
         {
            Starling.§@7§.speed = 1;
         }
         this.mLevelEngine = new §6c§(this);
         this.§&^§ = this.initLevelBackground(param1.theme,this.§ "§.§7!5§ / §!5§,this.backgroundTextureManager,this.§6!V§.§7!7§());
         this.§&^§.§]z§(§4!T§.§>!>§());
         this.§^^§ = this.initLevelObjectManager(param1);
         this.§]!A§ = this.initLevelSlingshot(param1);
         this.§`!$§ = this.§&!%§(this.§[6§,this.§`_§);
         this.§6!V§.init();
         this.§>C§();
         this.§68§();
         this.mReadyToRun = true;
         if(this.§^!I§)
         {
            this.§^!I§.addEventListeners();
         }
      }
      
      protected function §68§() : void
      {
         if(this.§,!F§)
         {
            this.§=,§ = Replay.initialize(this.§,!F§);
            this.§=,§.speed = 1;
            this.§=,§.play();
            this.§8z§ = -1000;
            this.§,!F§ = null;
         }
      }
      
      public function §'>§(param1:String) : void
      {
         this.§,!F§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§=,§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§=,§)
         {
            if(param1)
            {
               this.§=,§.speed = Math.min(this.§=,§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§=,§.speed = Math.max(this.§=,§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§=,§)
         {
            this.§=,§.speed = 1;
         }
      }
      
      protected function initLevelObjectManager(param1:LevelModel) : LevelObjectManager
      {
         return new LevelObjectManager(this,param1,new Sprite());
      }
      
      protected function §8Y§(param1:LevelModel) : §0!D§
      {
         return new §0!D§(this,param1);
      }
      
      protected function initLevelBackground(param1:String, param2:Number, param3:TextureManager, param4:Number) : LevelBackground
      {
         return new LevelBackground(param1,param2,param3,param4);
      }
      
      protected function initLevelSlingshot(param1:LevelModel) : LevelSlingshot
      {
         return new LevelSlingshot(this,param1,new Sprite());
      }
      
      protected function §&!%§(param1:AnimationManager, param2:TextureManager) : LevelParticleManager
      {
         return new LevelParticleManager(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:LevelModel = this.§,!Z§();
         var _loc4_:§7!1§ = new §7!1§();
         _loc4_.left = 0;
         _loc4_.top = -§0!D§.§@k§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §0!D§.§@k§;
         _loc4_.right = _loc4_.left + §0!D§.§0j§;
         _loc4_.y = -13.929;
         _loc4_.x = §0!D§.§0j§;
         _loc4_.id = §0!D§.§'!Q§;
         _loc3_.§ ![§(_loc4_);
         var _loc5_:§7!1§ = new §7!1§();
         _loc5_.top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §0!D§.§0j§;
         _loc5_.bottom = _loc5_.top + §0!D§.§@k§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §0!D§.§0j§ / 2;
         _loc5_.id = §0!D§.§]w§;
         _loc3_.§ ![§(_loc5_);
         this.§ ,§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§@!G§ != null)
         {
            _loc3_.theme = §@!G§;
         }
         this.init(_loc3_);
      }
      
      protected function § ,§(param1:LevelModel, param2:Boolean) : void
      {
         if(param2)
         {
            this.§`L§(param1);
         }
      }
      
      protected function §,!Z§() : LevelModel
      {
         var _loc1_:LevelModel = new LevelModel();
         _loc1_.§]!1§ = -12;
         return new LevelModel();
      }
      
      protected function §[!X§() : Number
      {
         this.§&A§ ^= this.§&A§ << 21;
         this.§&A§ ^= this.§&A§ >>> 35;
         this.§&A§ ^= this.§&A§ << 4;
         return this.§&A§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §`L§(param1:LevelModel) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§^!g§ = null;
         this.§&A§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§[!X§() * 5;
               _loc5_ = new §^!g§();
               _loc5_.x = 30 + _loc3_ * 10 + this.§[!X§() * 9;
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
                  _loc5_.angle = 45 - this.§[!X§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§[!X§() * 3 - _loc3_ * 8;
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
                  _loc5_.angle = this.§[!X§() * 360;
               }
               param1.addObject(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      private function §-Q§() : void
      {
      }
      
      public function §>C§() : void
      {
         if(LevelBackground.§[!j§)
         {
            this.§4!O§(this.§&^§.§+!I§,false);
         }
         this.§4!O§(this.§`!$§.§7!M§(LevelParticleManager.§1!5§),false);
         this.§4!O§(this.§`!$§.§7!M§(LevelParticleManager.§`v§),true);
         this.§4!O§(this.§`!$§.§7!M§(LevelParticleManager.§#!1§),true);
         this.§4!O§(this.§^^§.§>r§,true);
         this.§4!O§(this.§]!A§.sprite,true);
         this.§4!O§(this.§`!$§.§7!M§(LevelParticleManager.§1!'§),true);
         this.§4!O§(this.§&^§.§0I§,false);
         if(LevelBackground.§[!j§)
         {
            this.§4!O§(this.§&^§.§ -§,false);
         }
         this.§4!O§(this.§`!$§.§7!M§(LevelParticleManager.§<i§),true);
         if(!§6c§.§+s§)
         {
         }
      }
      
      private function §4!O§(param1:Sprite, param2:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(param1);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         param1 /= §4!T§.§`!Y§;
         param2 /= §4!T§.§`!Y§;
         _loc3_.x = (param1 / §0!D§.§4M§ + this.§6!V§.§&8§ - §0!D§.§#`§ / §0!D§.§4M§) * §!5§;
         _loc3_.y = (param2 / §0!D§.§4M§ + this.§6!V§.§%c§ - §0!D§.§'r§ / §0!D§.§4M§) * §!5§;
         return _loc3_;
      }
      
      public function §3J§(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / §!5§ + §0!D§.§#`§ / §0!D§.§4M§ - this.§6!V§.§&8§) * §0!D§.§4M§;
         _loc3_.y = (param2 / §!5§ + §0!D§.§'r§ / §0!D§.§4M§ - this.§6!V§.§%c§) * §0!D§.§4M§;
         var _loc4_:Number = Math.max(§4!T§.§`!Y§,§4!T§.§=!_§);
         _loc3_.x *= _loc4_;
         _loc3_.y *= _loc4_;
         return _loc3_;
      }
      
      public function §3!8§(param1:String, param2:Number, param3:Number) : void
      {
         this.§^^§.addObject(param1,param2,param3);
      }
      
      public function §]a§() : void
      {
         if(this.§>L§)
         {
            this.§>L§.visible = true;
            this.§>L§.alpha = 0;
         }
         this.§?y§ = 0;
      }
      
      public function §8-§() : void
      {
         this.§7^§ = new §?V§(§5a§.§<f§,§5a§.§'B§);
      }
      
      public function §2$§() : void
      {
         this.§7^§ = null;
      }
      
      public function clearLevel() : void
      {
         if(this.§&^§)
         {
            this.§&^§.dispose();
            this.§&^§ = null;
         }
         if(this.§^^§)
         {
            this.§^^§.dispose();
            this.§^^§ = null;
            this.§'Z§ = null;
         }
         if(this.mLevelEngine)
         {
            if(this.mLevelEngine.§`!U§)
            {
            }
            this.mLevelEngine.clear();
            this.mLevelEngine = null;
         }
         if(this.§ "§)
         {
            this.§ "§.clear();
            this.§ "§ = null;
         }
         if(this.§]!A§)
         {
            this.§]!A§.dispose();
            this.§]!A§ = null;
         }
         if(this.§6!V§)
         {
            this.§6!V§.clear();
            this.§6!V§ = null;
         }
         if(this.§`!$§)
         {
            this.§`!$§.dispose();
            this.§`!$§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§<!b§ = 0;
         this.§"!-§ = 0;
         this.mReadyToRun = false;
         this.§0v§ = false;
         this.§?y§ = §5a§.§ !j§;
         if(this.§7B§)
         {
            (this.§7B§ as §;I§).§"!$§.x = 0;
            (this.§7B§ as §;I§).§"!$§.y = 0;
         }
         if(this.§>L§)
         {
            this.§>L§.visible = false;
         }
         this.§=,§ = null;
         this.§,z§ = null;
         if(this.§,E§)
         {
            this.§,E§.removeEventListener(Event.COMPLETE,this.§-@§);
            this.§,E§.removeEventListener(Event.CANCEL,this.§"!B§);
         }
         if(this.§^l§)
         {
            this.§^l§.removeEventListener(Event.COMPLETE,this.§[Q§);
            this.§^l§.removeEventListener(Event.CANCEL,this.§5!G§);
         }
         this.§@!g§();
         if(Starling.§'!A§)
         {
            Starling.§'!A§.color = 0;
         }
         if(this.§^!I§)
         {
            this.§^!I§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver() : void
      {
      }
      
      public function §0!1§() : String
      {
         if(this.§,z§)
         {
            return this.§,z§.toString();
         }
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         if(!this.mReadyToRun || !Starling.§]c§())
         {
            return 0;
         }
         if(this.§=,§ && this.§=,§.§9X§)
         {
            return this.§[p§(param1,param2,param3);
         }
         return this.updateWithTime(param1,true,param2,param3);
      }
      
      protected function updateWithTime(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         if(this.§!!O§)
         {
            param1 *= 0.2;
            if(Starling.§@7§)
            {
               Starling.§@7§.speed = 0.2;
            }
         }
         var _loc5_:Number = 0;
         this.§"!-§ += param1;
         if(param3)
         {
            this.§<!b§ += param1;
            _loc5_ = this.mLevelEngine.§>!?§(this.§<!b§);
            this.§]!A§.update(param1,param4);
            this.§<!b§ = _loc5_;
         }
         else
         {
            this.§^^§.§ U§(param1);
            this.§<!b§ = 0;
         }
         if(param2)
         {
            this.§4!$§(param1,_loc5_);
         }
         return param1;
      }
      
      private function §[p§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc5_:Number = NaN;
         var _loc4_:Number = §6c§.§6!Y§ * 1000;
         if(this.§=,§)
         {
            param1 *= this.§=,§.speed;
            _loc5_ = this.§"!-§ + param1;
            while(this.§"!-§ + _loc4_ < _loc5_)
            {
               if(this.§"!-§ + _loc4_ > this.§8z§)
               {
                  this.§=,§.step(this);
                  this.§8z§ += _loc4_;
               }
               this.updateWithTime(_loc4_,false,param2,param3);
            }
            if(_loc5_ > this.§8z§ + _loc4_)
            {
               this.§=,§.step(this);
               this.§8z§ += _loc4_;
            }
            if(this.§"!-§ < _loc5_)
            {
               this.updateWithTime(_loc5_ - this.§"!-§,true,param2,param3);
            }
            return param1;
         }
         return this.updateWithTime(_loc4_,true,param2,param3);
      }
      
      private function §4!$§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.§&^§.update(param1);
         this.§^^§.§,9§(param1,param2);
         this.§1!?§();
         if(this.§?y§ < §5a§.§ !j§)
         {
            this.§?y§ += param1;
            _loc3_ = §5a§.§ !j§ / 2;
            _loc4_ = (-Math.abs(this.§?y§ - _loc3_) + _loc3_) * (§5a§.§3!Y§ / _loc3_);
            if(this.§>L§)
            {
               this.§>L§.alpha = _loc4_;
            }
         }
         else if(this.§>L§)
         {
            this.§>L§.visible = false;
         }
         if(this.§7^§)
         {
            if(!this.§7^§.§ !K§(this.§6!V§,param1))
            {
               this.§2$§();
            }
         }
         this.§6!V§.§?J§(param1);
         this.mLevelEngine.§`!?§();
         this.§`!$§.update(param1);
      }
      
      public function handleEngineUpdateStep(param1:Number) : void
      {
         this.objects.§ U§(param1 * 1000);
         this.objects.§7O§(param1 * 1000);
         this.§47§();
      }
      
      public function §1!?§() : void
      {
         var _loc1_:LevelObject = null;
         if(this.§"!-§ > this.§,!%§ + 1000 / 30)
         {
            if(this.§`W§ != null)
            {
               for each(_loc1_ in this.§`W§)
               {
                  _loc1_.addTrail();
               }
            }
            this.§,!%§ = this.§"!-§;
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:LevelObject = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.§^^§.isPigsAlive(true))
            {
               _loc2_ = this.§^^§.§>!$§(true);
               _loc2_.§ get§.mTryToScream = LevelObjectRenderer.§6!H§;
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§^^§.§^9§());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            if(this.§^^§.isPigsAlive(true))
            {
               _loc2_ = this.§^^§.§>!$§(true);
               _loc2_.§ get§.mTryToBlink = LevelObjectRenderer.§&3§;
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§^^§.§^9§());
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §8!;§.§"L§;
         }
         ScoreCollector.addScore(param1,param2);
         this.§^!I§.addScore(param1);
         if(param3 && param1 > 0 && !this.§!!b§)
         {
            this.§7![§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §7![§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §8!;§.§?`§;
         }
         this.§`!$§.§%!!§(§8!;§.§ !U§,LevelParticleManager.§<i§,§8!;§.§'v§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §8I§(param1:LevelObject) : void
      {
         if(this.§`W§ == null)
         {
            this.§`W§ = new Array();
         }
         this.§`W§.push(param1);
      }
      
      public function useMightyEagle() : void
      {
         this.§]!A§.useMightyEagle();
         this.§^^§.§9e§();
         this.§!!b§ = true;
      }
      
      public function §^#§(param1:LevelObject) : void
      {
         this.§`!$§.§^Z§(LevelParticleManager.§1!5§);
         if(this.§`W§.indexOf(param1) >= 0)
         {
            this.§`W§.splice(this.§`W§.indexOf(param1),1);
         }
         if(this.§`W§.length == 0)
         {
            this.§`W§ = null;
         }
      }
      
      public function §]!O§(param1:LevelSlingshotObject, param2:Number, param3:Number) : void
      {
         this.§'Z§ = this.§^^§.addObject(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
         var _loc4_:Number = param1.name.toUpperCase() == "BIRD_GREEN" ? Number(LevelSlingshot.BIRD_LAUNCH_FORCE_GREEN) : Number(LevelSlingshot.BIRD_LAUNCH_FORCE);
         if(param1.§-!9§ > 1)
         {
            this.§'Z§.§?D§(param1.§-!9§);
            this.§'Z§.§ get§.§]s§();
         }
         if(param1.§!i§ != 0)
         {
            _loc4_ = param1.§!i§;
         }
         var _loc5_:Number = -_loc4_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc6_:Number = _loc4_ * param2 * Math.sin(param3 / (180 / Math.PI));
         this.§'Z§.§#!Z§(new b2Vec2(_loc5_,_loc6_),false,true);
         this.camera.§5!B§(§0!D§.§'!-§);
         if(this.§,z§)
         {
            this.§,z§.§]!O§(this.mLevelEngine.§,6§,param1.x,param1.y,param2,param3);
         }
      }
      
      public function activatePowerup() : void
      {
         this.§0v§ = true;
      }
      
      private function §47§() : void
      {
         if(!this.§0v§)
         {
            return;
         }
         this.§0v§ = false;
         if(this.activeObject is §[r§ && !(this.activeObject as §[r§).§6!9§)
         {
            if(this.activeObject.activateSpecialPower(this.§5![§))
            {
               this.§4-§ = true;
            }
         }
         else
         {
            this.§^^§.§[z§();
         }
         if(this.§,z§)
         {
            this.§,z§.§0!L§(this.mLevelEngine.§,6§);
         }
      }
      
      public function §"!b§() : void
      {
         this.§^^§.§"!b§();
      }
      
      public function §=-§() : void
      {
         this.§^^§.§"! §();
      }
      
      public function §45§() : LevelModel
      {
         var _loc1_:LevelModel = new LevelModel();
         _loc1_.§&X§ = this.§0!?§.§&X§;
         _loc1_.§;!>§ = this.§0!?§.§;!>§;
         this.§6!V§.§7K§(_loc1_);
         this.§^^§.§+!C§(_loc1_);
         this.§]!A§.§"t§(_loc1_);
         _loc1_.theme = this.§&^§.§-!^§();
         return _loc1_;
      }
      
      public function §8!c§() : int
      {
         return this.§0!?§.§;!>§;
      }
      
      public function §#V§() : int
      {
         return this.§0!?§.§&X§;
      }
      
      public function §2Q§(param1:int) : void
      {
         this.§0!?§.§;!>§ = param1;
      }
      
      public function §+!h§(param1:int) : void
      {
         this.§0!?§.§&X§ = param1;
      }
      
      public function §6!^§(param1:Number, param2:Number) : void
      {
         if(this.§+!0§)
         {
            this.§+!0§.§1'§(param1,param2);
         }
         if(this.§6!V§)
         {
            this.§6!V§.§?J§(0);
         }
      }
      
      public function get currentLevel() : LevelModel
      {
         return this.§0!?§;
      }
      
      public function get §5![§() : LevelObjectManager
      {
         return this.§^^§;
      }
      
      protected function get starling() : Starling
      {
         return this.§,!8§;
      }
      
      public function get §!!J§() : int
      {
         return §6b§;
      }
   }
}
