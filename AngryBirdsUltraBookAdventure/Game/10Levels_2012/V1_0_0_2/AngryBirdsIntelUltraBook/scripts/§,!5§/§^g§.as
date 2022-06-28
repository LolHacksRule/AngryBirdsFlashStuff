package §,!5§
{
   import § use§.§0!D§;
   import §"m§.§3!`§;
   import §%Q§.§'!%§;
   import §%Q§.§3L§;
   import §%Q§.§=[§;
   import §%Q§.§`!<§;
   import §&!'§.§>C§;
   import §'!9§.DisplayObject;
   import §'!9§.Sprite;
   import §,!Q§.§ !P§;
   import §,!Q§.§0@§;
   import §-w§.§,Q§;
   import §-w§.§6!O§;
   import §-w§.§^!&§;
   import §0!M§.§#!d§;
   import §0!N§.§4!=§;
   import §0!N§.§=+§;
   import §0!N§.LevelManager;
   import §0!N§.§var§;
   import §0X§.§&'§;
   import §2!R§.§#C§;
   import §68§.§+!`§;
   import §<&§.§^b§;
   import §>H§.b2Vec2;
   import §]V§.§+F§;
   import §]V§.§1!e§;
   import §^_§.§!>§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import §true§.§ _§;
   
   public class §^g§
   {
      
      private static const §false§:int = 20;
      
      public static const §<!"§:Number = § _§.§[o§;
      
      public static const §9-§:Number = § _§.§-S§;
      
      public static const §^!S§:Number = 1 / 20;
      
      public static const §29§:Number = § _§.§-S§ * §^!S§;
      
      public static const §1!"§:Number = §<!"§ * §^!S§;
      
      public static const §>p§:§&'§ = new §&'§(13 - 3);
      
      protected static var §9r§:String = §=+§.§'!M§;
       
      
      protected var §4#§:§=[§;
      
      private var §%c§:§`!<§;
      
      private var §&!`§:Array = null;
      
      protected var §[!-§:§+!`§;
      
      public var mLevelEngine:§&!s§;
      
      protected var §&m§:§[$§;
      
      protected var §1!>§:§#C§;
      
      protected var §!E§:§>!A§;
      
      protected var §=§:§+F§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §%!Z§:Boolean = false;
      
      protected var §`!>§:Boolean = false;
      
      protected var §;!w§:Boolean = false;
      
      public var §>k§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §8%§:Number;
      
      public var § i§:Number;
      
      private var §0!l§:Number;
      
      public var §@!A§:§var§;
      
      public var §"!j§:Boolean = false;
      
      private var §#!6§:§@l§;
      
      private var §#!+§:Sprite;
      
      protected var §?9§:§=+§;
      
      protected var §-§:§3!`§ = null;
      
      private var §+B§:EventDispatcher;
      
      private var § !+§:Array;
      
      private var §&v§:Array;
      
      protected var §%!O§:§^b§;
      
      private var §@!`§:§#!d§;
      
      protected var §;!t§:§,Q§;
      
      protected var § 4§:§^!&§;
      
      private var §6!i§:§6!O§;
      
      private var §^!l§:§6!O§;
      
      private var §]!>§:§6!O§;
      
      private var §;p§:Stage;
      
      private var §;!u§:§+!c§;
      
      protected var §-i§:§>C§;
      
      protected var §6m§:§>C§;
      
      protected var §`M§:Number = 0.0;
      
      protected var §?4§:String;
      
      private var §?#§:Boolean;
      
      protected var §#!f§:Boolean;
      
      protected var §"_§:uint = 1.417339207E9;
      
      public var §7!b§:Boolean;
      
      public function §^g§(param1:Stage)
      {
         this.§&v§ = [];
         super();
         this.§+B§ = new EventDispatcher();
         this.§@!A§ = new §var§();
         this.§;p§ = param1;
         this.§;!t§ = §,Q§.§<d§;
         this.§ 4§ = this.initAnimationManager(this.§;!t§);
         this.§6!i§ = this.initThemeGraphicsManager();
         this.§^!l§ = this.initThemeSoundsManager();
         this.§]!>§ = this.initCutSceneManager();
         var _loc2_:Stage3D = param1.stage3Ds[0];
         this.§%!O§ = new §^b§(§@l§,param1,new Rectangle(0,0,§ _§.§[o§,§ _§.§-S§),_loc2_);
         § _§.§1s§.addEventListener(Event.ENTER_FRAME,this.§%!O§.onEnterFrame);
         _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§!!X§,false,0,true);
         this.§%!O§.§7J§ = false;
         this.§%!O§.enableErrorChecking = false;
         this.§%!O§.§`8§ = 2;
         this.§%!O§.§#[§();
      }
      
      public static function §[&§(param1:§`!<§, param2:§`!<§) : Number
      {
         var _loc3_:Number = param1.§]!0§ - param2.§]!0§;
         var _loc4_:Number = param1.§""§ - param2.§""§;
         return §8&§(_loc3_,_loc4_);
      }
      
      public static function §8&§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         if(!this.§#!+§ && this.§2i§)
         {
            this.§#!+§ = this.§#!6§.§&J§;
         }
         return this.§#!+§;
      }
      
      public function get §2i§() : Sprite
      {
         if(!this.§#!6§)
         {
            this.§#!6§ = this.§%!O§.§=q§ as §@l§;
            this.§#!6§.§@!U§ = false;
         }
         return this.§#!6§;
      }
      
      private function get §[g§() : DisplayObject
      {
         if(this.§2i§)
         {
            return (this.§2i§ as §@l§).§[g§;
         }
         return null;
      }
      
      public function get animationManager() : §^!&§
      {
         return this.§ 4§;
      }
      
      public function get textureManager() : §,Q§
      {
         return this.§;!t§;
      }
      
      public function get camera() : §#C§
      {
         return this.§1!>§;
      }
      
      public function get objects() : §=[§
      {
         return this.§4#§;
      }
      
      public function get particles() : §+F§
      {
         return this.§=§;
      }
      
      public function get background() : §+!`§
      {
         return this.§[!-§;
      }
      
      public function get slingshot() : §>!A§
      {
         return this.§!E§;
      }
      
      public function get activeObject() : §`!<§
      {
         return this.§%c§;
      }
      
      public function get § !p§() : §[$§
      {
         return this.§&m§;
      }
      
      public function get stage() : Stage
      {
         return this.§;p§;
      }
      
      public function get §8!,§() : §6!O§
      {
         return this.§]!>§;
      }
      
      protected function get §8!Z§() : §6!O§
      {
         return this.§6!i§;
      }
      
      public function set activeObject(param1:§`!<§) : void
      {
         this.§%c§ = param1;
      }
      
      public function set §2!w§(param1:Boolean) : void
      {
         this.§#!f§ = param1;
      }
      
      public function clear() : void
      {
         if(this.§@!`§)
         {
            this.§@!`§.dispose();
         }
         if(this.§;!t§)
         {
            this.§;!t§.dispose();
         }
         if(this.§6!i§ && this.§6!i§.textureManager)
         {
            this.§6!i§.textureManager.dispose();
         }
         if(this.§]!>§ && this.§]!>§.textureManager)
         {
            this.§]!>§.textureManager.dispose();
         }
         if(this.§%!O§)
         {
            this.§%!O§.dispose();
         }
      }
      
      protected function initThemeGraphicsManager() : §6!O§
      {
         return null;
      }
      
      protected function initThemeSoundsManager() : §6!O§
      {
         return null;
      }
      
      protected function initCutSceneManager() : §6!O§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§,Q§) : §^!&§
      {
         return new §^!&§(param1);
      }
      
      public function §2!d§(param1:Boolean) : void
      {
         if(§^b§.§9E§)
         {
            if(param1)
            {
               §^b§.§9E§.start();
            }
            else
            {
               §^b§.§9E§.stop();
               §^b§.§9E§.color = 0;
            }
         }
      }
      
      public function §"C§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function setController(param1:§3!`§) : void
      {
         if(this.§-§ != null)
         {
            this.§-§.removeEventListeners();
         }
         this.§-§ = param1;
         if(this.mReadyToRun)
         {
            this.§-§.addEventListeners();
         }
      }
      
      public function §2!a§() : §>C§
      {
         return this.§-i§;
      }
      
      public function §#!"§(param1:§#!d§, param2:Array, param3:Function) : void
      {
         this.§@!`§ = param1;
         var _loc4_:int = this.§@!`§.§2P§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§;!t§.§9!$§(this.§@!`§.§@y§(_loc5_));
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§+B§.addEventListener(Event.INIT,param3);
            this.§&v§.push(param3);
         }
         if(this.§3!v§(param2))
         {
            this.§0!+§();
         }
      }
      
      private function §3!v§(param1:Array) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.§;!t§.§]!b§())
         {
            _loc2_ = this.§;!t§.§4!l§ / 1000;
            _loc3_ = this.§;!t§.§<!4§ / 1000;
            §!>§.log("\n\nMain texture manager memory usage:\n   textures " + _loc2_ + " kilobytes\n   bitmaps " + _loc3_ + " kilobytes\n\n");
            this.initializeAnimations(param1);
            return true;
         }
         this.§ !+§ = param1.concat();
         return false;
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         this.§ 4§.initializeAnimations(param1);
      }
      
      private function §!!X§(param1:Event) : void
      {
         this.§;!t§.§2f§();
         if(this.§8!Z§ && this.§8!Z§.textureManager)
         {
            this.§8!Z§.textureManager.§2f§();
         }
         if(this.§8!,§ && this.§8!,§.textureManager)
         {
            this.§8!,§.textureManager.§2f§();
         }
         if(this.§ !+§)
         {
            this.§3!v§(this.§ !+§);
            this.§ !+§ = null;
            this.§0!+§();
         }
         if(this.§-§ != null && this.mReadyToRun)
         {
            this.§-§.addEventListeners();
         }
         if(this.§6!i§)
         {
            this.§6!i§.§]!b§();
         }
         if(this.§]!>§)
         {
            if(this.§]!>§.textureManager)
            {
               this.§]!>§.textureManager.§2f§();
               this.§]!>§.§]!b§();
            }
         }
      }
      
      private function §0!+§() : void
      {
         this.§+B§.dispatchEvent(new Event(Event.INIT));
         this.§">§();
      }
      
      private function §">§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§&v§)
         {
            this.§+B§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§&v§ = [];
      }
      
      public function init(param1:§=+§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§&m§ = new §[$§(this,param1);
         this.§1!>§ = this.§6![§(param1);
         this.§8%§ = 0;
         this.§ i§ = 0;
         this.§0!l§ = 0;
         this.§?#§ = false;
         this.mReadyToRun = false;
         this.§%!Z§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         §9r§ = param1.theme;
         this.§?9§ = param1;
         this.§`!>§ = this.§7!I§(param1.theme);
         this.§;!w§ = this.§3!G§(param1.theme);
         if(this.§`!>§ && this.§;!w§)
         {
            this.initialize(param1);
         }
         else
         {
            this.§"K§(param1.theme);
         }
         this.§>7§();
         §;v§.init();
      }
      
      protected function §>7§() : void
      {
         this.§-i§ = new §>C§(LevelManager.§4Y§);
      }
      
      protected function §7!I§(param1:String) : Boolean
      {
         if(this.§6!i§)
         {
            return false;
         }
         return true;
      }
      
      protected function §3!G§(param1:String) : Boolean
      {
         var _loc2_:§0@§ = null;
         if(this.§^!l§)
         {
            _loc2_ = § !P§.§^!'§(param1);
            if(_loc2_)
            {
               if(_loc2_.§-r§ && !this.§^!l§.§@!s§(_loc2_.§-r§))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function §"K§(param1:String) : void
      {
         var _loc2_:§0@§ = null;
         if(this.§6!i§ && !this.§7!I§(param1))
         {
            this.§6!i§.removeEventListener(Event.COMPLETE,this.§]=§);
            this.§6!i§.removeEventListener(Event.CANCEL,this.§6p§);
            this.§6!i§.addEventListener(Event.COMPLETE,this.§]=§);
            this.§6!i§.addEventListener(Event.CANCEL,this.§6p§);
            this.§6!i§.§<!I§(param1);
         }
         if(this.§^!l§ && !this.§3!G§(param1))
         {
            this.§^!l§.removeEventListener(Event.COMPLETE,this.§@d§);
            this.§^!l§.removeEventListener(Event.CANCEL,this.§]W§);
            this.§^!l§.addEventListener(Event.COMPLETE,this.§@d§);
            this.§^!l§.addEventListener(Event.CANCEL,this.§]W§);
            _loc2_ = § !P§.§^!'§(param1);
            if(_loc2_)
            {
               this.§^!l§.§<!I§(_loc2_.§-r§);
            }
         }
      }
      
      private function §]=§(param1:Event) : void
      {
         this.§6!i§.removeEventListener(Event.COMPLETE,this.§]=§);
         this.§6!i§.removeEventListener(Event.CANCEL,this.§6p§);
         this.§`!>§ = true;
         if(this.§`!>§ && this.§;!w§)
         {
            this.initialize(this.§?9§);
         }
      }
      
      private function §6p§(param1:Event) : void
      {
         this.§6!i§.removeEventListener(Event.COMPLETE,this.§]=§);
         this.§6!i§.removeEventListener(Event.CANCEL,this.§6p§);
         this.§%!Z§ = true;
      }
      
      private function §@d§(param1:Event) : void
      {
         this.§6!i§.removeEventListener(Event.COMPLETE,this.§@d§);
         this.§6!i§.removeEventListener(Event.CANCEL,this.§]W§);
         this.§;!w§ = true;
         if(this.§`!>§ && this.§;!w§)
         {
            this.initialize(this.§?9§);
         }
      }
      
      private function §]W§(param1:Event) : void
      {
         this.§6!i§.removeEventListener(Event.COMPLETE,this.§@d§);
         this.§6!i§.removeEventListener(Event.CANCEL,this.§]W§);
         this.§;!w§ = true;
         if(this.§`!>§ && this.§;!w§)
         {
            this.initialize(this.§?9§);
         }
      }
      
      public function get backgroundTextureManager() : §,Q§
      {
         return this.§;!t§;
      }
      
      protected function initialize(param1:§=+§) : void
      {
         this.§#!f§ = false;
         this.§7!b§ = false;
         if(§^b§.§&#§)
         {
            §^b§.§&#§.speed = 1;
         }
         this.mLevelEngine = new §&!s§(this);
         this.§[!-§ = this.initLevelBackground(param1.theme,this.§&m§.§>6§ / §^!S§,this.backgroundTextureManager,this.§1!>§.§0!1§());
         this.§[!-§.§"$§(§ _§.§1_§());
         this.§4#§ = this.initLevelObjectManager(param1);
         this.§!E§ = this.initLevelSlingshot(param1);
         this.§=§ = this.§[B§(this.§ 4§,this.§;!t§);
         this.§1!>§.init();
         this.§>!F§();
         this.§<!8§();
         this.mReadyToRun = true;
         if(this.§-§)
         {
            this.§-§.addEventListeners();
         }
      }
      
      protected function §<!8§() : void
      {
         if(this.§?4§)
         {
            this.§6m§ = §>C§.initialize(this.§?4§);
            this.§6m§.speed = 1;
            this.§6m§.play();
            this.§`M§ = -1000;
            this.§?4§ = null;
         }
      }
      
      public function §#=§(param1:String) : void
      {
         this.§?4§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§6m§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§6m§)
         {
            if(param1)
            {
               this.§6m§.speed = Math.min(this.§6m§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§6m§.speed = Math.max(this.§6m§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§6m§)
         {
            this.§6m§.speed = 1;
         }
      }
      
      protected function initLevelObjectManager(param1:§=+§) : §=[§
      {
         return new §=[§(this,param1,new Sprite());
      }
      
      protected function §6![§(param1:§=+§) : §#C§
      {
         return new §#C§(this,param1);
      }
      
      protected function initLevelBackground(param1:String, param2:Number, param3:§,Q§, param4:Number) : §+!`§
      {
         return new §+!`§(param1,param2,param3,param4);
      }
      
      protected function initLevelSlingshot(param1:§=+§) : §>!A§
      {
         return new §>!A§(this,param1,new Sprite());
      }
      
      protected function §[B§(param1:§^!&§, param2:§,Q§) : §+F§
      {
         return new §+F§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§=+§ = this.§"f§();
         var _loc4_:§4!=§;
         (_loc4_ = new §4!=§()).left = 0;
         _loc4_.top = -§#C§.§&R§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §#C§.§&R§;
         _loc4_.right = _loc4_.left + §#C§.§!!v§;
         _loc4_.y = -13.929;
         _loc4_.x = §#C§.§!!v§;
         _loc4_.id = §#C§.§^a§;
         _loc3_.§&!=§(_loc4_);
         var _loc5_:§4!=§;
         (_loc5_ = new §4!=§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §#C§.§!!v§;
         _loc5_.bottom = _loc5_.top + §#C§.§&R§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §#C§.§!!v§ / 2;
         _loc5_.id = §#C§.§#P§;
         _loc3_.§&!=§(_loc5_);
         this.§+5§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§9r§ != null)
         {
            _loc3_.theme = §9r§;
         }
         this.init(_loc3_);
      }
      
      protected function §+5§(param1:§=+§, param2:Boolean) : void
      {
         if(param2)
         {
            this.§>!n§(param1);
         }
      }
      
      protected function §"f§() : §=+§
      {
         var _loc1_:§=+§ = new §=+§();
         _loc1_.§8!r§ = -12;
         return new §=+§();
      }
      
      protected function §-! §() : Number
      {
         this.§"_§ ^= this.§"_§ << 21;
         this.§"_§ ^= this.§"_§ >>> 35;
         this.§"_§ ^= this.§"_§ << 4;
         return this.§"_§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §>!n§(param1:§=+§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§0!D§ = null;
         this.§"_§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§-! §() * 5;
               (_loc5_ = new §0!D§()).x = 30 + _loc3_ * 10 + this.§-! §() * 9;
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
                  _loc5_.angle = 45 - this.§-! §() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§-! §() * 3 - _loc3_ * 8;
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
                  _loc5_.angle = this.§-! §() * 360;
               }
               param1.addObject(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      private function §@!5§() : void
      {
      }
      
      public function §>!F§() : void
      {
         if(§+!`§.§1+§)
         {
            this.§ W§(this.§[!-§.§@4§,false);
         }
         this.§ W§(this.§=§.§7B§(§+F§.§1^§),false);
         this.§ W§(this.§=§.§7B§(§+F§.§%!W§),true);
         this.§ W§(this.§=§.§7B§(§+F§.§7!t§),true);
         this.§ W§(this.§4#§.§'^§,true);
         this.§ W§(this.§!E§.sprite,true);
         this.§ W§(this.§=§.§7B§(§+F§.§+!X§),true);
         this.§ W§(this.§[!-§.§8!t§,false);
         if(§+!`§.§1+§)
         {
            this.§ W§(this.§[!-§.§-!O§,false);
         }
         this.§ W§(this.§=§.§7B§(§+F§.§5!2§),true);
         if(!§&!s§.§@$§)
         {
         }
      }
      
      private function § W§(param1:Sprite, param2:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(param1);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         param1 /= § _§.§0!2§;
         param2 /= § _§.§0!2§;
         _loc3_.x = (param1 / §#C§.§-!k§ + this.§1!>§.§9!^§ - §#C§.§]!J§ / §#C§.§-!k§) * §^!S§;
         _loc3_.y = (param2 / §#C§.§-!k§ + this.§1!>§.§[q§ - §#C§.§#v§ / §#C§.§-!k§) * §^!S§;
         return _loc3_;
      }
      
      public function §6V§(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / §^!S§ + §#C§.§]!J§ / §#C§.§-!k§ - this.§1!>§.§9!^§) * §#C§.§-!k§;
         _loc3_.y = (param2 / §^!S§ + §#C§.§#v§ / §#C§.§-!k§ - this.§1!>§.§[q§) * §#C§.§-!k§;
         var _loc4_:Number = Math.max(§ _§.§0!2§,§ _§.§[!Y§);
         _loc3_.x *= _loc4_;
         _loc3_.y *= _loc4_;
         return _loc3_;
      }
      
      public function §?!$§(param1:String, param2:Number, param3:Number) : void
      {
         this.§4#§.addObject(param1,param2,param3);
      }
      
      public function §#S§() : void
      {
         if(this.§[g§)
         {
            this.§[g§.visible = true;
            this.§[g§.alpha = 0;
         }
         this.§>k§ = 0;
      }
      
      public function §9!g§() : void
      {
         this.§;!u§ = new §+!c§(§0;§.§]t§,§0;§.§9y§);
      }
      
      public function §,2§() : void
      {
         this.§;!u§ = null;
      }
      
      public function clearLevel() : void
      {
         if(this.§[!-§)
         {
            this.§[!-§.dispose();
            this.§[!-§ = null;
         }
         if(this.§4#§)
         {
            this.§4#§.dispose();
            this.§4#§ = null;
            this.§%c§ = null;
         }
         if(this.mLevelEngine)
         {
            if(!this.mLevelEngine.§8s§)
            {
            }
            this.mLevelEngine.clear();
            this.mLevelEngine = null;
         }
         if(this.§&m§)
         {
            this.§&m§.clear();
            this.§&m§ = null;
         }
         if(this.§!E§)
         {
            this.§!E§.dispose();
            this.§!E§ = null;
         }
         if(this.§1!>§)
         {
            this.§1!>§.clear();
            this.§1!>§ = null;
         }
         if(this.§=§)
         {
            this.§=§.dispose();
            this.§=§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§8%§ = 0;
         this.§ i§ = 0;
         this.mReadyToRun = false;
         this.§?#§ = false;
         this.§>k§ = §0;§.§1!s§;
         if(this.§2i§)
         {
            (this.§2i§ as §@l§).§5!4§.x = 0;
            (this.§2i§ as §@l§).§5!4§.y = 0;
         }
         if(this.§[g§)
         {
            this.§[g§.visible = false;
         }
         this.§6m§ = null;
         this.§-i§ = null;
         if(this.§6!i§)
         {
            this.§6!i§.removeEventListener(Event.COMPLETE,this.§]=§);
            this.§6!i§.removeEventListener(Event.CANCEL,this.§6p§);
         }
         if(this.§^!l§)
         {
            this.§^!l§.removeEventListener(Event.COMPLETE,this.§@d§);
            this.§^!l§.removeEventListener(Event.CANCEL,this.§]W§);
         }
         this.§">§();
         if(§^b§.§9E§)
         {
            §^b§.§9E§.color = 0;
         }
         if(this.§-§)
         {
            this.§-§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver() : void
      {
      }
      
      public function §7!G§() : String
      {
         if(this.§-i§)
         {
            return this.§-i§.toString();
         }
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         if(!this.mReadyToRun || !§^b§.§@@§())
         {
            return 0;
         }
         if(this.§6m§ && this.§6m§.§;J§)
         {
            return this.§]k§(param1,param2,param3);
         }
         return this.updateWithTime(param1,true,param2,param3);
      }
      
      protected function updateWithTime(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         if(this.§#!f§)
         {
            param1 *= 0.2;
            if(§^b§.§&#§)
            {
               §^b§.§&#§.speed = 0.2;
            }
         }
         var _loc5_:Number = 0;
         this.§ i§ += param1;
         if(param3)
         {
            this.§8%§ += param1;
            _loc5_ = this.mLevelEngine.§!!]§(this.§8%§);
            this.§!E§.update(param1,param4);
            this.§8%§ = _loc5_;
         }
         else
         {
            this.§4#§.§?!k§(param1);
            this.§8%§ = 0;
         }
         if(param2)
         {
            this.§%!B§(param1,_loc5_);
         }
         return param1;
      }
      
      private function §]k§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc5_:Number = NaN;
         var _loc4_:Number = §&!s§.§+!=§ * 1000;
         if(this.§6m§)
         {
            param1 *= this.§6m§.speed;
            _loc5_ = this.§ i§ + param1;
            while(this.§ i§ + _loc4_ < _loc5_)
            {
               if(this.§ i§ + _loc4_ > this.§`M§)
               {
                  this.§6m§.step(this);
                  this.§`M§ += _loc4_;
               }
               this.updateWithTime(_loc4_,false,param2,param3);
            }
            if(_loc5_ > this.§`M§ + _loc4_)
            {
               this.§6m§.step(this);
               this.§`M§ += _loc4_;
            }
            if(this.§ i§ < _loc5_)
            {
               this.updateWithTime(_loc5_ - this.§ i§,true,param2,param3);
            }
            return param1;
         }
         return this.updateWithTime(_loc4_,true,param2,param3);
      }
      
      private function §%!B§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.§[!-§.update(param1);
         this.§4#§.§!!7§(param1,param2);
         this.§^!n§();
         if(this.§>k§ < §0;§.§1!s§)
         {
            this.§>k§ += param1;
            _loc3_ = §0;§.§1!s§ / 2;
            _loc4_ = (-Math.abs(this.§>k§ - _loc3_) + _loc3_) * (§0;§.§>;§ / _loc3_);
            if(this.§[g§)
            {
               this.§[g§.alpha = _loc4_;
            }
         }
         else if(this.§[g§)
         {
            this.§[g§.visible = false;
         }
         if(this.§;!u§)
         {
            if(!this.§;!u§.§5!§(this.§1!>§,param1))
            {
               this.§,2§();
            }
         }
         this.§1!>§.§5!u§(param1);
         this.mLevelEngine.§,!Y§();
         this.§=§.update(param1);
      }
      
      public function handleEngineUpdateStep(param1:Number) : void
      {
         this.objects.§?!k§(param1 * 1000);
         this.objects.§6s§(param1 * 1000);
         this.§1A§();
      }
      
      public function §^!n§() : void
      {
         var _loc1_:§`!<§ = null;
         if(this.§ i§ > this.§0!l§ + 1000 / 30)
         {
            if(this.§&!`§ != null)
            {
               for each(_loc1_ in this.§&!`§)
               {
                  _loc1_.addTrail();
               }
            }
            this.§0!l§ = this.§ i§;
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§`!<§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.§4#§.isPigsAlive(true))
            {
               _loc2_ = this.§4#§.§;l§(true);
               _loc2_.§?!M§.mTryToScream = §'!%§.§2<§;
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§4#§.§"!i§());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            if(this.§4#§.isPigsAlive(true))
            {
               _loc2_ = this.§4#§.§;l§(true);
               _loc2_.§?!M§.mTryToBlink = §'!%§.§?r§;
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§4#§.§"!i§());
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §1!e§.§3!4§;
         }
         §;v§.addScore(param1,param2);
         this.§-§.addScore(param1);
         if(param3 && param1 > 0 && !this.§7!b§)
         {
            this.§0§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §0§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §1!e§.§+!S§;
         }
         this.§=§.§ K§(§1!e§.§%+§,§+F§.§5!2§,§1!e§.§>`§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §=!Z§(param1:§`!<§) : void
      {
         if(this.§&!`§ == null)
         {
            this.§&!`§ = new Array();
         }
         this.§&!`§.push(param1);
      }
      
      public function useMightyEagle() : void
      {
         this.§!E§.useMightyEagle();
         this.§4#§.§2G§();
         this.§7!b§ = true;
      }
      
      public function §'Y§(param1:§`!<§) : void
      {
         this.§=§.§0#§(§+F§.§1^§);
         if(this.§&!`§.indexOf(param1) >= 0)
         {
            this.§&!`§.splice(this.§&!`§.indexOf(param1),1);
         }
         if(this.§&!`§.length == 0)
         {
            this.§&!`§ = null;
         }
      }
      
      public function §%!1§(param1:§7!,§, param2:Number, param3:Number) : void
      {
         this.§%c§ = this.§4#§.addObject(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
         var _loc4_:Number = param1.name.toUpperCase() == "BIRD_GREEN" ? Number(§>!A§.BIRD_LAUNCH_FORCE_GREEN) : Number(§>!A§.BIRD_LAUNCH_FORCE);
         if(param1.§%! § > 1)
         {
            this.§%c§.§+!4§(param1.§%! §);
            this.§%c§.§?!M§.§]w§();
         }
         if(param1.§5!6§ != 0)
         {
            _loc4_ = param1.§5!6§;
         }
         var _loc5_:Number = -_loc4_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc6_:Number = _loc4_ * param2 * Math.sin(param3 / (180 / Math.PI));
         this.§%c§.§&!-§(new b2Vec2(_loc5_,_loc6_),false,true);
         this.camera.§>!E§(§#C§.§]S§);
         if(this.§-i§)
         {
            this.§-i§.§%!1§(this.mLevelEngine.§?!Z§,param1.x,param1.y,param2,param3);
         }
      }
      
      public function activatePowerup() : void
      {
         this.§?#§ = true;
      }
      
      private function §1A§() : void
      {
         if(!this.§?#§)
         {
            return;
         }
         this.§?#§ = false;
         if(this.activeObject is §3L§ && !(this.activeObject as §3L§).§?!?§)
         {
            if(this.activeObject.activateSpecialPower(this.§'h§))
            {
               this.§"!j§ = true;
            }
         }
         else
         {
            this.§4#§.§8L§();
         }
         if(this.§-i§)
         {
            this.§-i§.§ do§(this.mLevelEngine.§?!Z§);
         }
      }
      
      public function §1W§() : void
      {
         this.§4#§.§1W§();
      }
      
      public function §?!s§() : void
      {
         this.§4#§.§;!>§();
      }
      
      public function §`!L§() : §=+§
      {
         var _loc1_:§=+§ = new §=+§();
         _loc1_.§>!o§ = this.§?9§.§>!o§;
         _loc1_.§8!l§ = this.§?9§.§8!l§;
         this.§1!>§.§ +§(_loc1_);
         this.§4#§.§'&§(_loc1_);
         this.§!E§.§`!9§(_loc1_);
         _loc1_.theme = this.§[!-§.§@!W§();
         return _loc1_;
      }
      
      public function §&!W§() : int
      {
         return this.§?9§.§8!l§;
      }
      
      public function §"c§() : int
      {
         return this.§?9§.§>!o§;
      }
      
      public function §-!9§(param1:int) : void
      {
         this.§?9§.§8!l§ = param1;
      }
      
      public function § [§(param1:int) : void
      {
         this.§?9§.§>!o§ = param1;
      }
      
      public function §5!]§(param1:Number, param2:Number) : void
      {
         if(this.§#!6§)
         {
            this.§#!6§.§"o§(param1,param2);
         }
         if(this.§1!>§)
         {
            this.§1!>§.§5!u§(0);
         }
      }
      
      public function get §7!^§() : §=+§
      {
         return this.§?9§;
      }
      
      public function get §'h§() : §=[§
      {
         return this.§4#§;
      }
      
      protected function get starling() : §^b§
      {
         return this.§%!O§;
      }
      
      public function get §5!T§() : int
      {
         return §false§;
      }
   }
}
