package §0!2§
{
   import §!!t§.§%!4§;
   import §!!t§.§+!9§;
   import §#S§.§"W§;
   import §#S§.§+!;§;
   import §#S§.§?!?§;
   import §%!'§.§-§;
   import §&r§.§@!?§;
   import §+!F§.§1!D§;
   import §3!#§.§!!k§;
   import §3!#§.§04§;
   import §3!#§.§38§;
   import §3!#§.§5"A§;
   import §5!G§.§&2§;
   import §70§.§<!j§;
   import §7F§.b2Vec2;
   import §9"+§.§?![§;
   import §9"=§.§3!p§;
   import §9"=§.§4! §;
   import §@-§.§&"!§;
   import §[x§.§%3§;
   import §]!v§.DisplayObject;
   import §]!v§.Sprite;
   import §^"7§.§^!0§;
   import §`!n§.§#!s§;
   import §`!n§.§'!D§;
   import §`!n§.§2!z§;
   import §`!n§.LevelManager;
   import §`u§.§5!-§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §5"L§
   {
      
      private static const §#"C§:int = 20;
      
      public static const §9"D§:Number = §&2§.§5!f§;
      
      public static const §&"E§:Number = §&2§.§#!h§;
      
      public static const §@>§:Number = 1 / 20;
      
      public static const §7P§:Number = §&2§.§#!h§ * §@>§;
      
      public static const §4H§:Number = §9"D§ * §@>§;
      
      public static const §3h§:§-§ = new §-§(13 - 3);
      
      public static var §;!?§:Number = 1;
      
      protected static var §[;§:String = §#!s§.§6I§;
       
      
      protected var §-!5§:§04§;
      
      private var §;"2§:§5"A§;
      
      private var §5!"§:Array = null;
      
      protected var §1!U§:§?![§;
      
      public var mLevelEngine:§+!T§;
      
      protected var §42§:§#!&§;
      
      protected var §,§:§5!-§;
      
      protected var §!x§:§,!W§;
      
      protected var §65§:§3!p§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §#!g§:Boolean = false;
      
      protected var §,h§:Boolean = false;
      
      protected var §;"%§:Boolean = false;
      
      public var §?8§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §`!f§:Number;
      
      public var §^!@§:Number;
      
      private var §+!o§:Number;
      
      public var §>!9§:§'!D§;
      
      public var §4!E§:Boolean = false;
      
      private var §'!v§:§]!Y§;
      
      private var §9!v§:Sprite;
      
      protected var §"n§:§#!s§;
      
      protected var §1!B§:§<!j§ = null;
      
      private var §`z§:EventDispatcher;
      
      private var §`&§:Array;
      
      private var §""@§:Array;
      
      protected var §#u§:§1!D§;
      
      private var §6!O§:§^!0§;
      
      protected var §=$§:§?!?§;
      
      protected var §>1§:§+!;§;
      
      private var §6!l§:§"W§;
      
      private var §#"E§:§"W§;
      
      private var § p§:§"W§;
      
      private var §0![§:Stage;
      
      private var §`"9§:§4!u§;
      
      protected var §,n§:§@!?§;
      
      protected var §6"F§:§@!?§;
      
      protected var §"P§:Number = 0.0;
      
      protected var §1"+§:String;
      
      private var §9!i§:Boolean;
      
      protected var §^!,§:Boolean;
      
      protected var §]"F§:uint = 1.417339207E9;
      
      public var §^!'§:Boolean;
      
      public function §5"L§(param1:Stage)
      {
         this.§""@§ = [];
         super();
         this.§`z§ = new EventDispatcher();
         this.§>!9§ = new §'!D§();
         this.§0![§ = param1;
         this.§=$§ = §?!?§.§1[§;
         this.§>1§ = this.initAnimationManager(this.§=$§);
         this.§6!l§ = this.initThemeGraphicsManager();
         this.§#"E§ = this.initThemeSoundsManager();
         this.§ p§ = this.initCutSceneManager();
         var _loc2_:Stage3D = param1.stage3Ds[0];
         this.§#u§ = new §1!D§(§]!Y§,param1,new Rectangle(0,0,§&2§.§5!f§,§&2§.§#!h§),_loc2_);
         §&2§.§5!k§.addEventListener(Event.ENTER_FRAME,this.§#u§.onEnterFrame);
         _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§7!D§,false,0,true);
         this.§#u§.§2,§ = false;
         this.§#u§.enableErrorChecking = false;
         this.§#u§.§5"I§ = 2;
         this.§#u§.§+"I§();
      }
      
      public static function §[!i§(param1:§5"A§, param2:§5"A§) : Number
      {
         var _loc3_:Number = param1.§'D§ - param2.§'D§;
         var _loc4_:Number = param1.§?"D§ - param2.§?"D§;
         return §>!e§(_loc3_,_loc4_);
      }
      
      public static function §>!e§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         if(!this.§9!v§ && this.§2!&§)
         {
            this.§9!v§ = this.§'!v§.§1!q§;
         }
         return this.§9!v§;
      }
      
      public function get §2!&§() : Sprite
      {
         if(!this.§'!v§)
         {
            this.§'!v§ = this.§#u§.§;!C§ as §]!Y§;
            this.§'!v§.§5! § = false;
         }
         return this.§'!v§;
      }
      
      private function get §5"%§() : DisplayObject
      {
         if(this.§2!&§)
         {
            return (this.§2!&§ as §]!Y§).§5"%§;
         }
         return null;
      }
      
      public function get animationManager() : §+!;§
      {
         return this.§>1§;
      }
      
      public function get textureManager() : §?!?§
      {
         return this.§=$§;
      }
      
      public function get camera() : §5!-§
      {
         return this.§,§;
      }
      
      public function get objects() : §04§
      {
         return this.§-!5§;
      }
      
      public function get particles() : §3!p§
      {
         return this.§65§;
      }
      
      public function get background() : §?![§
      {
         return this.§1!U§;
      }
      
      public function get slingshot() : §,!W§
      {
         return this.§!x§;
      }
      
      public function get activeObject() : §5"A§
      {
         return this.§;"2§;
      }
      
      public function get §>9§() : §#!&§
      {
         return this.§42§;
      }
      
      public function get stage() : Stage
      {
         return this.§0![§;
      }
      
      public function get §,Z§() : §"W§
      {
         return this.§ p§;
      }
      
      protected function get §`!t§() : §"W§
      {
         return this.§6!l§;
      }
      
      public function set activeObject(param1:§5"A§) : void
      {
         this.§;"2§ = param1;
      }
      
      public function set §9V§(param1:Boolean) : void
      {
         this.§^!,§ = param1;
      }
      
      public function clear() : void
      {
         if(this.§6!O§)
         {
            this.§6!O§.dispose();
         }
         if(this.§=$§)
         {
            this.§=$§.dispose();
         }
         if(this.§6!l§ && this.§6!l§.textureManager)
         {
            this.§6!l§.textureManager.dispose();
         }
         if(this.§ p§ && this.§ p§.textureManager)
         {
            this.§ p§.textureManager.dispose();
         }
         if(this.§#u§)
         {
            this.§#u§.dispose();
         }
      }
      
      protected function initThemeGraphicsManager() : §"W§
      {
         return null;
      }
      
      protected function initThemeSoundsManager() : §"W§
      {
         return null;
      }
      
      protected function initCutSceneManager() : §"W§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§?!?§) : §+!;§
      {
         return new §+!;§(param1);
      }
      
      public function §`!I§(param1:Boolean) : void
      {
         if(§1!D§.§7!T§)
         {
            if(param1)
            {
               §1!D§.§7!T§.start();
            }
            else
            {
               §1!D§.§7!T§.stop();
               §1!D§.§7!T§.color = 0;
            }
         }
      }
      
      public function §>!&§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function §@4§() : §<!j§
      {
         return this.§1!B§;
      }
      
      public function setController(param1:§<!j§) : void
      {
         if(this.§1!B§ != null)
         {
            this.§1!B§.removeEventListeners();
         }
         this.§1!B§ = param1;
         if(this.mReadyToRun)
         {
            this.§1!B§.addEventListeners();
         }
      }
      
      public function §@!z§() : §@!?§
      {
         return this.§,n§;
      }
      
      public function §2H§(param1:§^!0§, param2:Array, param3:Function) : void
      {
         this.§6!O§ = param1;
         var _loc4_:int = this.§6!O§.§@"+§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§=$§.§2!x§(this.§6!O§.§8!s§(_loc5_));
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§`z§.addEventListener(Event.INIT,param3);
            this.§""@§.push(param3);
         }
         if(this.§ M§(param2))
         {
            this.§8!p§();
         }
      }
      
      private function § M§(param1:Array) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.§=$§.§@!5§())
         {
            _loc2_ = this.§=$§.§'I§ / 1000;
            _loc3_ = this.§=$§.§<D§ / 1000;
            §%3§.log("\n\nMain texture manager memory usage:\n   textures " + _loc2_ + " kilobytes\n   bitmaps " + _loc3_ + " kilobytes\n\n");
            this.initializeAnimations(param1);
            return true;
         }
         this.§`&§ = param1.concat();
         return false;
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         this.§>1§.initializeAnimations(param1);
      }
      
      private function §7!D§(param1:Event) : void
      {
         this.§=$§.§4!;§();
         if(this.§`!t§ && this.§`!t§.textureManager)
         {
            this.§`!t§.textureManager.§4!;§();
         }
         if(this.§,Z§ && this.§,Z§.textureManager)
         {
            this.§,Z§.textureManager.§4!;§();
         }
         if(this.§`&§)
         {
            this.§ M§(this.§`&§);
            this.§`&§ = null;
            this.§8!p§();
         }
         if(this.§1!B§ != null && this.mReadyToRun)
         {
            this.§1!B§.addEventListeners();
         }
         if(this.§6!l§)
         {
            this.§6!l§.§@!5§();
         }
         if(this.§ p§)
         {
            if(this.§ p§.textureManager)
            {
               this.§ p§.textureManager.§4!;§();
               this.§ p§.§@!5§();
            }
         }
      }
      
      private function §8!p§() : void
      {
         this.§`z§.dispatchEvent(new Event(Event.INIT));
         this.§'!8§();
      }
      
      private function §'!8§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§""@§)
         {
            this.§`z§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§""@§ = [];
      }
      
      public function init(param1:§#!s§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§42§ = new §#!&§(this,param1);
         this.§,§ = this.initLevelCamera(param1);
         this.§`!f§ = 0;
         this.§^!@§ = 0;
         this.§+!o§ = 0;
         this.§9!i§ = false;
         this.mReadyToRun = false;
         this.§#!g§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         §[;§ = param1.theme;
         this.§"n§ = param1;
         this.§,h§ = this.§2"!§(param1.theme);
         this.§;"%§ = this.§'!s§(param1.theme);
         if(this.§,h§ && this.§;"%§)
         {
            this.initialize(param1);
         }
         else
         {
            this.§>u§(param1.theme);
         }
         this.§[m§();
         §-6§.init();
      }
      
      protected function §[m§() : void
      {
         this.§,n§ = new §@!?§(LevelManager.§`-§);
      }
      
      protected function §2"!§(param1:String) : Boolean
      {
         if(this.§6!l§)
         {
            return false;
         }
         return true;
      }
      
      protected function §'!s§(param1:String) : Boolean
      {
         var _loc2_:§%!4§ = null;
         if(this.§#"E§)
         {
            _loc2_ = §+!9§.§7b§(param1);
            if(_loc2_)
            {
               if(_loc2_.§if § && !this.§#"E§.§<P§(_loc2_.§if §))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function §>u§(param1:String) : void
      {
         var _loc2_:§%!4§ = null;
         if(this.§6!l§ && !this.§2"!§(param1))
         {
            this.§6!l§.removeEventListener(Event.COMPLETE,this.§!P§);
            this.§6!l§.removeEventListener(Event.CANCEL,this.§2"6§);
            this.§6!l§.addEventListener(Event.COMPLETE,this.§!P§);
            this.§6!l§.addEventListener(Event.CANCEL,this.§2"6§);
            this.§6!l§.§?!a§(param1);
         }
         if(this.§#"E§ && !this.§'!s§(param1))
         {
            this.§#"E§.removeEventListener(Event.COMPLETE,this.§8!E§);
            this.§#"E§.removeEventListener(Event.CANCEL,this.§-"D§);
            this.§#"E§.addEventListener(Event.COMPLETE,this.§8!E§);
            this.§#"E§.addEventListener(Event.CANCEL,this.§-"D§);
            _loc2_ = §+!9§.§7b§(param1);
            if(_loc2_)
            {
               this.§#"E§.§?!a§(_loc2_.§if §);
            }
         }
      }
      
      private function §!P§(param1:Event) : void
      {
         this.§6!l§.removeEventListener(Event.COMPLETE,this.§!P§);
         this.§6!l§.removeEventListener(Event.CANCEL,this.§2"6§);
         this.§,h§ = true;
         if(this.§,h§ && this.§;"%§)
         {
            this.initialize(this.§"n§);
         }
      }
      
      private function §2"6§(param1:Event) : void
      {
         this.§6!l§.removeEventListener(Event.COMPLETE,this.§!P§);
         this.§6!l§.removeEventListener(Event.CANCEL,this.§2"6§);
         this.§#!g§ = true;
      }
      
      private function §8!E§(param1:Event) : void
      {
         this.§6!l§.removeEventListener(Event.COMPLETE,this.§8!E§);
         this.§6!l§.removeEventListener(Event.CANCEL,this.§-"D§);
         this.§;"%§ = true;
         if(this.§,h§ && this.§;"%§)
         {
            this.initialize(this.§"n§);
         }
      }
      
      private function §-"D§(param1:Event) : void
      {
         this.§6!l§.removeEventListener(Event.COMPLETE,this.§8!E§);
         this.§6!l§.removeEventListener(Event.CANCEL,this.§-"D§);
         this.§;"%§ = true;
         if(this.§,h§ && this.§;"%§)
         {
            this.initialize(this.§"n§);
         }
      }
      
      public function get backgroundTextureManager() : §?!?§
      {
         return this.§=$§;
      }
      
      protected function initialize(param1:§#!s§) : void
      {
         this.§^!,§ = false;
         this.§^!'§ = false;
         if(§1!D§.§&!?§)
         {
            §1!D§.§&!?§.speed = 1;
         }
         this.mLevelEngine = new §+!T§(this);
         this.§1!U§ = this.initLevelBackground(param1.theme,this.§42§.§"p§ / §@>§,this.backgroundTextureManager,this.§,§.§%"<§());
         this.§1!U§.§7"C§(§&2§.§5;§());
         this.§-!5§ = this.initLevelObjectManager(param1);
         this.§!x§ = this.initLevelSlingshot(param1);
         this.§65§ = this.initParticleManager(this.§>1§,this.§=$§);
         this.§,§.init();
         this.addItemsToDisplayList();
         this.§2m§();
         this.mReadyToRun = true;
         if(this.§1!B§)
         {
            this.§1!B§.addEventListeners();
         }
      }
      
      protected function §2m§() : void
      {
         if(this.§1"+§)
         {
            this.§6"F§ = §@!?§.initialize(this.§1"+§);
            this.§6"F§.speed = 1;
            this.§6"F§.play();
            this.§"P§ = -1000;
            this.§1"+§ = null;
         }
      }
      
      public function §3!c§(param1:String) : void
      {
         this.§1"+§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§6"F§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§6"F§)
         {
            if(param1)
            {
               this.§6"F§.speed = Math.min(this.§6"F§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§6"F§.speed = Math.max(this.§6"F§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§6"F§)
         {
            this.§6"F§.speed = 1;
         }
      }
      
      protected function initLevelObjectManager(param1:§#!s§) : §04§
      {
         return new §04§(this,param1,new Sprite());
      }
      
      protected function initLevelCamera(param1:§#!s§) : §5!-§
      {
         return new §5!-§(this,param1);
      }
      
      protected function initLevelBackground(param1:String, param2:Number, param3:§?!?§, param4:Number) : §?![§
      {
         return new §?![§(param1,param2,param3,param4);
      }
      
      protected function initLevelSlingshot(param1:§#!s§) : §,!W§
      {
         return new §,!W§(this,param1,new Sprite());
      }
      
      protected function initParticleManager(param1:§+!;§, param2:§?!?§) : §3!p§
      {
         return new §3!p§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§#!s§ = this.§`>§();
         var _loc4_:§2!z§;
         (_loc4_ = new §2!z§()).left = 0;
         _loc4_.top = -§5!-§.§[!r§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §5!-§.§[!r§;
         _loc4_.right = _loc4_.left + §5!-§.§@!7§;
         _loc4_.y = -13.929;
         _loc4_.x = §5!-§.§@!7§;
         _loc4_.id = §5!-§.§4!y§;
         _loc3_.§`!L§(_loc4_);
         var _loc5_:§2!z§;
         (_loc5_ = new §2!z§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §5!-§.§@!7§;
         _loc5_.bottom = _loc5_.top + §5!-§.§[!r§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §5!-§.§@!7§ / 2;
         _loc5_.id = §5!-§.§^!?§;
         _loc3_.§`!L§(_loc5_);
         this.§<"0§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§[;§ != null)
         {
            _loc3_.theme = §[;§;
         }
         this.init(_loc3_);
      }
      
      protected function §<"0§(param1:§#!s§, param2:Boolean) : void
      {
         if(param2)
         {
            this.§%-§(param1);
         }
      }
      
      protected function §`>§() : §#!s§
      {
         var _loc1_:§#!s§ = new §#!s§();
         _loc1_.§"I§ = -12;
         return new §#!s§();
      }
      
      protected function §^!3§() : Number
      {
         this.§]"F§ ^= this.§]"F§ << 21;
         this.§]"F§ ^= this.§]"F§ >>> 35;
         this.§]"F§ ^= this.§]"F§ << 4;
         return this.§]"F§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §%-§(param1:§#!s§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§&"!§ = null;
         this.§]"F§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§^!3§() * 5;
               (_loc5_ = new §&"!§()).x = 30 + _loc3_ * 10 + this.§^!3§() * 9;
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
                  _loc5_.angle = 45 - this.§^!3§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§^!3§() * 3 - _loc3_ * 8;
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
                  _loc5_.angle = this.§^!3§() * 360;
               }
               param1.addObject(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      public function addItemsToDisplayList() : void
      {
         if(§?![§.§-0§)
         {
            this.§#!P§(this.§1!U§.backgroundLayersSprite,false);
         }
         this.§#!P§(this.§65§.getGroupSprite(§3!p§.§0!t§),false);
         this.§#!P§(this.§65§.getGroupSprite(§3!p§.§"z§),true);
         this.§#!P§(this.§65§.getGroupSprite(§3!p§.§31§),true);
         this.§#!P§(this.§-!5§.mainSprite,true);
         this.§#!P§(this.§!x§.sprite,true);
         this.§#!P§(this.§65§.getGroupSprite(§3!p§.PARTICLE_GROUP_GAME_EFFECTS),true);
         this.§#!P§(this.§1!U§.groundSprite,false);
         if(§?![§.§-0§)
         {
            this.§#!P§(this.§1!U§.foregroundLayersSprite,false);
         }
         this.§#!P§(this.§65§.getGroupSprite(§3!p§.§>!?§),true);
      }
      
      protected function §#!P§(param1:Sprite, param2:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(param1);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         param1 /= §&2§.§3"J§;
         param2 /= §&2§.§3"J§;
         _loc3_.x = (param1 / §5!-§.§ m§ + this.§,§.§+!2§ - §5!-§.§!"$§ / §5!-§.§ m§) * §@>§;
         _loc3_.y = (param2 / §5!-§.§ m§ + this.§,§.§"'§ - §5!-§.§]#§ / §5!-§.§ m§) * §@>§;
         return _loc3_;
      }
      
      public function §'w§(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / §@>§ + §5!-§.§!"$§ / §5!-§.§ m§ - this.§,§.§+!2§) * §5!-§.§ m§;
         _loc3_.y = (param2 / §@>§ + §5!-§.§]#§ / §5!-§.§ m§ - this.§,§.§"'§) * §5!-§.§ m§;
         var _loc4_:Number = Math.max(§&2§.§3"J§,§&2§.§0"@§);
         _loc3_.x *= _loc4_;
         _loc3_.y *= _loc4_;
         return _loc3_;
      }
      
      public function §-!T§(param1:String, param2:Number, param3:Number) : void
      {
         this.§-!5§.addObject(param1,param2,param3);
      }
      
      public function §6!3§() : void
      {
         if(this.§5"%§)
         {
            this.§5"%§.visible = true;
            this.§5"%§.alpha = 0;
         }
         this.§?8§ = 0;
      }
      
      public function §&!>§() : void
      {
         this.§`"9§ = new §4!u§(§3`§.§8!b§,§3`§.§7J§);
      }
      
      public function §8Y§() : void
      {
         this.§`"9§ = null;
      }
      
      public function clearLevel() : void
      {
         if(this.§1!U§)
         {
            this.§1!U§.dispose();
            this.§1!U§ = null;
         }
         if(this.§-!5§)
         {
            this.§-!5§.dispose();
            this.§-!5§ = null;
            this.§;"2§ = null;
         }
         if(this.mLevelEngine)
         {
            if(!this.mLevelEngine.§6z§)
            {
            }
            this.mLevelEngine.clear();
            this.mLevelEngine = null;
         }
         if(this.§42§)
         {
            this.§42§.clear();
            this.§42§ = null;
         }
         if(this.§!x§)
         {
            this.§!x§.dispose();
            this.§!x§ = null;
         }
         if(this.§,§)
         {
            this.§,§.clear();
            this.§,§ = null;
         }
         if(this.§65§)
         {
            this.§65§.dispose();
            this.§65§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§`!f§ = 0;
         this.§^!@§ = 0;
         this.mReadyToRun = false;
         this.§9!i§ = false;
         this.§?8§ = §3`§.§^D§;
         if(this.§2!&§)
         {
            (this.§2!&§ as §]!Y§).§53§.x = 0;
            (this.§2!&§ as §]!Y§).§53§.y = 0;
         }
         if(this.§5"%§)
         {
            this.§5"%§.visible = false;
         }
         this.§6"F§ = null;
         this.§,n§ = null;
         if(this.§6!l§)
         {
            this.§6!l§.removeEventListener(Event.COMPLETE,this.§!P§);
            this.§6!l§.removeEventListener(Event.CANCEL,this.§2"6§);
         }
         if(this.§#"E§)
         {
            this.§#"E§.removeEventListener(Event.COMPLETE,this.§8!E§);
            this.§#"E§.removeEventListener(Event.CANCEL,this.§-"D§);
         }
         this.§'!8§();
         if(§1!D§.§7!T§)
         {
            §1!D§.§7!T§.color = 0;
         }
         if(this.§1!B§)
         {
            this.§1!B§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver() : void
      {
      }
      
      public function §5S§() : String
      {
         if(this.§,n§)
         {
            return this.§,n§.toString();
         }
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         if(!this.mReadyToRun || !§1!D§.§&"$§())
         {
            return 0;
         }
         if(this.§6"F§ && this.§6"F§.§%![§)
         {
            return this.§[+§(param1,param2,param3);
         }
         return this.updateWithTime(param1,true,param2,param3);
      }
      
      protected function updateWithTime(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         if(this.§^!,§)
         {
            param1 *= 0.2;
            if(§1!D§.§&!?§)
            {
               §1!D§.§&!?§.speed = 0.2;
            }
         }
         var _loc5_:Number = 0;
         this.§^!@§ += param1;
         if(param3)
         {
            this.§`!f§ += param1;
            _loc5_ = this.mLevelEngine.§<!@§(this.§`!f§);
            this.§!x§.update(param1,param4);
            this.§`!f§ = _loc5_;
         }
         else
         {
            this.§-!5§.§;!m§(param1);
            this.§`!f§ = 0;
         }
         if(param2)
         {
            this.§,e§(param1,_loc5_);
         }
         return param1;
      }
      
      private function §[+§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc5_:Number = NaN;
         var _loc4_:Number = §+!T§.§1!5§ * 1000;
         if(this.§6"F§)
         {
            param1 *= this.§6"F§.speed;
            _loc5_ = this.§^!@§ + param1;
            while(this.§^!@§ + _loc4_ < _loc5_)
            {
               if(this.§^!@§ + _loc4_ > this.§"P§)
               {
                  this.§6"F§.step(this);
                  this.§"P§ += _loc4_;
               }
               this.updateWithTime(_loc4_,false,param2,param3);
            }
            if(_loc5_ > this.§"P§ + _loc4_)
            {
               this.§6"F§.step(this);
               this.§"P§ += _loc4_;
            }
            if(this.§^!@§ < _loc5_)
            {
               this.updateWithTime(_loc5_ - this.§^!@§,true,param2,param3);
            }
            return param1;
         }
         return this.updateWithTime(_loc4_,true,param2,param3);
      }
      
      private function §,e§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.§1!U§.update(param1);
         this.§-!5§.§6l§(param1,param2);
         this.§#!!§();
         if(this.§?8§ < §3`§.§^D§)
         {
            this.§?8§ += param1;
            _loc3_ = §3`§.§^D§ / 2;
            _loc4_ = (-Math.abs(this.§?8§ - _loc3_) + _loc3_) * (§3`§.§-!9§ / _loc3_);
            if(this.§5"%§)
            {
               this.§5"%§.alpha = _loc4_;
            }
         }
         else if(this.§5"%§)
         {
            this.§5"%§.visible = false;
         }
         if(this.§`"9§)
         {
            if(!this.§`"9§.§]!P§(this.§,§,param1))
            {
               this.§8Y§();
            }
         }
         this.§,§.§,!^§(param1);
         this.mLevelEngine.§2!-§();
         this.§65§.update(param1);
      }
      
      public function handleEngineUpdateStep(param1:Number) : void
      {
         this.objects.§;!m§(param1 * 1000);
         this.objects.§8w§(param1 * 1000);
         this.§%!l§();
      }
      
      public function §#!!§() : void
      {
         var _loc1_:§5"A§ = null;
         if(this.§^!@§ > this.§+!o§ + 1000 / 30)
         {
            if(this.§5!"§ != null)
            {
               for each(_loc1_ in this.§5!"§)
               {
                  _loc1_.addTrail();
               }
            }
            this.§+!o§ = this.§^!@§;
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§5"A§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.§-!5§.isPigsAlive(true))
            {
               _loc2_ = this.§-!5§.§8"%§(true);
               if(_loc2_)
               {
                  _loc2_.§<!K§.mTryToScream = §38§.§;""§;
                  this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§-!5§.§<"4§());
               }
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            if(this.§-!5§.isPigsAlive(true))
            {
               _loc2_ = this.§-!5§.§8"%§(true);
               if(_loc2_)
               {
                  _loc2_.§<!K§.mTryToBlink = §38§.§]!V§;
                  this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§-!5§.§<"4§());
               }
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §4! §.§;"J§;
         }
         §-6§.addScore(param1,param2);
         this.§1!B§.addScore(param1);
         if(param3 && param1 > 0 && !this.§^!'§)
         {
            this.§"j§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §"j§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §4! §.§@!`§;
         }
         this.§65§.§`"6§(§4! §.§;?§,§3!p§.§>!?§,§4! §.§2";§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §[S§(param1:§5"A§) : void
      {
         if(this.§5!"§ == null)
         {
            this.§5!"§ = new Array();
         }
         this.§5!"§.push(param1);
      }
      
      public function useMightyEagle() : void
      {
         this.§!x§.useMightyEagle();
         this.§-!5§.§1?§();
         this.§^!'§ = true;
      }
      
      public function §!!o§(param1:§5"A§) : void
      {
         this.§65§.§!";§(§3!p§.§0!t§);
         if(this.§5!"§.indexOf(param1) >= 0)
         {
            this.§5!"§.splice(this.§5!"§.indexOf(param1),1);
         }
         if(this.§5!"§.length == 0)
         {
            this.§5!"§ = null;
         }
      }
      
      public function §6"7§(param1:§;M§, param2:Number, param3:Number) : void
      {
         this.§;"2§ = this.§-!5§.addObject(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
         var _loc4_:Number = param1.name.toUpperCase() == "BIRD_GREEN" ? Number(§,!W§.BIRD_LAUNCH_FORCE_GREEN) : Number(§,!W§.BIRD_LAUNCH_FORCE);
         if(param1.§="A§ > 1)
         {
            this.§;"2§.§,D§(param1.§="A§);
            this.§;"2§.§<!K§.§8"@§();
         }
         if(param1.§`!w§ != 0)
         {
            _loc4_ = param1.§`!w§;
         }
         var _loc5_:Number = -_loc4_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc6_:Number = _loc4_ * param2 * Math.sin(param3 / (180 / Math.PI));
         this.§;"2§.§1!2§(new b2Vec2(_loc5_,_loc6_),false,true);
         this.camera.§"e§(§5!-§.§#"L§);
         if(this.§,n§)
         {
            this.§,n§.§6"7§(this.mLevelEngine.§2!_§,param1.x,param1.y,param2,param3);
         }
      }
      
      public function activatePowerup() : void
      {
         this.§9!i§ = true;
      }
      
      private function §%!l§() : void
      {
         if(!this.§9!i§)
         {
            return;
         }
         this.§9!i§ = false;
         if(this.activeObject is §!!k§ && !(this.activeObject as §!!k§).§'!G§)
         {
            if(this.activeObject.activateSpecialPower(this.§6X§))
            {
               this.§4!E§ = true;
            }
         }
         else
         {
            this.§-!5§.§!"8§();
         }
         if(this.§,n§)
         {
            this.§,n§.§`!%§(this.mLevelEngine.§2!_§);
         }
      }
      
      public function §32§() : void
      {
         this.§-!5§.§32§();
      }
      
      public function §@">§() : void
      {
         this.§-!5§.§""2§();
      }
      
      public function §8!$§() : §#!s§
      {
         var _loc1_:§#!s§ = new §#!s§();
         _loc1_.§`!O§ = this.§"n§.§`!O§;
         _loc1_.§8!&§ = this.§"n§.§8!&§;
         this.§,§.§1!`§(_loc1_);
         this.§-!5§.§4t§(_loc1_);
         this.§!x§.§,[§(_loc1_);
         _loc1_.theme = this.§1!U§.§@!m§();
         return _loc1_;
      }
      
      public function § !y§() : int
      {
         return this.§"n§.§8!&§;
      }
      
      public function §%!r§() : int
      {
         return this.§"n§.§`!O§;
      }
      
      public function §9§(param1:int) : void
      {
         this.§"n§.§8!&§ = param1;
      }
      
      public function §>"C§(param1:int) : void
      {
         this.§"n§.§`!O§ = param1;
      }
      
      public function §9+§(param1:Number, param2:Number) : void
      {
         if(this.§'!v§)
         {
            this.§'!v§.§;X§(param1,param2);
         }
         if(this.§,§)
         {
            this.§,§.§,!^§(0);
         }
      }
      
      public function get §'!b§() : §#!s§
      {
         return this.§"n§;
      }
      
      public function get §6X§() : §04§
      {
         return this.§-!5§;
      }
      
      protected function get starling() : §1!D§
      {
         return this.§#u§;
      }
      
      public function get §0<§() : int
      {
         return §#"C§;
      }
   }
}
