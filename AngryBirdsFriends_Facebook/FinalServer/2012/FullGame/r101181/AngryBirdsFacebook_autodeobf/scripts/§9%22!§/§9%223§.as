package §9"!§
{
   import §#!e§.§1"B§;
   import §#!e§.§2!L§;
   import §#!e§.§?!u§;
   import §#!e§.LevelManager;
   import §#]§.b2Vec2;
   import §'6§.§"]§;
   import §+!h§.§[!Q§;
   import §1!$§.DisplayObject;
   import §1!$§.Sprite;
   import §3![§.§5!@§;
   import §6!D§.§0Y§;
   import §6!D§.§;";§;
   import §6!D§.§[t§;
   import §6o§.§+!k§;
   import §8g§.§3"6§;
   import §9"%§.§ H§;
   import §9"%§.§#!D§;
   import §9"%§.§&!r§;
   import §9"%§.§]a§;
   import §<a§.§9U§;
   import §<u§.§6U§;
   import §<u§.§8,§;
   import §>i§.§'!p§;
   import §[!"§.§&0§;
   import §]!4§.§'G§;
   import §]!4§.§^!f§;
   import §]!A§.;
   import §`!W§.§[!x§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §9"3§
   {
      
      private static const §%c§:int = 20;
      
      public static const §=k§:Number = §#6§.§;H§;
      
      public static const §]!+§:Number = §#6§.§+P§;
      
      public static const §'"F§:Number = 1 / 20;
      
      public static const §7"'§:Number = §#6§.§+P§ * §'"F§;
      
      public static const §6!h§:Number = §=k§ * §'"F§;
      
      public static const §0!Q§:§9U§ = new §9U§(13 - 3);
      
      public static var §[!+§:Number = 1;
      
      protected static var §^!V§:String = §1"B§.§5!5§;
       
      
      protected var §%!O§:§]a§;
      
      private var §^<§:§&!r§;
      
      private var §7F§:Array = null;
      
      protected var §4J§:§[!x§;
      
      public var mLevelEngine:§4!`§;
      
      protected var §!`§:§9!Z§;
      
      protected var §0!§:§&0§;
      
      protected var §5^§:§2a§;
      
      protected var §3">§:§^!f§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §"§:Boolean = false;
      
      protected var §=!j§:Boolean = false;
      
      protected var §7,§:Boolean = false;
      
      public var §%"4§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §4"<§:Number;
      
      public var §,"<§:Number;
      
      private var §6"D§:Number;
      
      public var §,! §:§?!u§;
      
      public var §!!B§:Boolean = false;
      
      private var §9!J§:§5P§;
      
      private var §9Y§:Sprite;
      
      protected var §`!C§:§1"B§;
      
      protected var §,!c§:§5!@§ = null;
      
      private var §`!s§:EventDispatcher;
      
      private var §;!P§:Array;
      
      private var §7a§:Array;
      
      protected var §32§:§"]§;
      
      private var §?!L§:§'!p§;
      
      protected var § !@§:§0Y§;
      
      protected var §]!V§:§[t§;
      
      private var §8!1§:§;";§;
      
      private var § _§:§;";§;
      
      private var §%!o§:§;";§;
      
      private var §^!w§:Stage;
      
      private var §^!m§:§;x§;
      
      protected var §3'§:§[!Q§;
      
      protected var §9L§:§[!Q§;
      
      protected var §]!t§:Number = 0.0;
      
      protected var §-"?§:String;
      
      private var §&"0§:Boolean;
      
      protected var § §:Boolean;
      
      protected var §3!h§:uint = 1.417339207E9;
      
      public var §]!P§:Boolean;
      
      public function §9"3§(param1:Stage)
      {
         this.§7a§ = [];
         super();
         this.§`!s§ = new EventDispatcher();
         this.§,! § = new §?!u§();
         this.§^!w§ = param1;
         this.§ !@§ = §0Y§.§;"§;
         this.§]!V§ = this.initAnimationManager(this.§ !@§);
         this.§8!1§ = this.initThemeGraphicsManager();
         this.§ _§ = this.initThemeSoundsManager();
         this.§%!o§ = this.initCutSceneManager();
         var _loc2_:Stage3D = param1.stage3Ds[0];
         this.§32§ = new §"]§(§5P§,param1,new Rectangle(0,0,§#6§.§;H§,§#6§.§+P§),_loc2_);
         §#6§.§ q§.addEventListener(Event.ENTER_FRAME,this.§32§.onEnterFrame);
         _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§-""§,false,0,true);
         this.§32§.§5">§ = false;
         this.§32§.enableErrorChecking = false;
         this.§32§.§][§ = 2;
         this.§32§.§5!y§();
      }
      
      public static function §8&§(param1:§&!r§, param2:§&!r§) : Number
      {
         var _loc3_:Number = param1.§`!n§ - param2.§`!n§;
         var _loc4_:Number = param1.§5e§ - param2.§5e§;
         return §5!%§(_loc3_,_loc4_);
      }
      
      public static function §5!%§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         if(!this.§9Y§ && this.§8!_§)
         {
            this.§9Y§ = this.§9!J§.§!0§;
         }
         return this.§9Y§;
      }
      
      public function get §8!_§() : Sprite
      {
         if(!this.§9!J§)
         {
            this.§9!J§ = this.§32§.§8!j§ as §5P§;
            this.§9!J§.§`!u§ = false;
         }
         return this.§9!J§;
      }
      
      private function get §>§() : DisplayObject
      {
         if(this.§8!_§)
         {
            return (this.§8!_§ as §5P§).§>§;
         }
         return null;
      }
      
      public function get animationManager() : §[t§
      {
         return this.§]!V§;
      }
      
      public function get textureManager() : §0Y§
      {
         return this.§ !@§;
      }
      
      public function get camera() : §&0§
      {
         return this.§0!§;
      }
      
      public function get objects() : §]a§
      {
         return this.§%!O§;
      }
      
      public function get particles() : §^!f§
      {
         return this.§3">§;
      }
      
      public function get background() : §[!x§
      {
         return this.§4J§;
      }
      
      public function get slingshot() : §2a§
      {
         return this.§5^§;
      }
      
      public function get activeObject() : §&!r§
      {
         return this.§^<§;
      }
      
      public function get §?l§() : §9!Z§
      {
         return this.§!`§;
      }
      
      public function get stage() : Stage
      {
         return this.§^!w§;
      }
      
      public function get §@F§() : §;";§
      {
         return this.§%!o§;
      }
      
      protected function get §3<§() : §;";§
      {
         return this.§8!1§;
      }
      
      public function set activeObject(param1:§&!r§) : void
      {
         this.§^<§ = param1;
      }
      
      public function set §%"C§(param1:Boolean) : void
      {
         this.§ § = param1;
      }
      
      public function clear() : void
      {
         if(this.§?!L§)
         {
            this.§?!L§.dispose();
         }
         if(this.§ !@§)
         {
            this.§ !@§.dispose();
         }
         if(this.§8!1§ && this.§8!1§.textureManager)
         {
            this.§8!1§.textureManager.dispose();
         }
         if(this.§%!o§ && this.§%!o§.textureManager)
         {
            this.§%!o§.textureManager.dispose();
         }
         if(this.§32§)
         {
            this.§32§.dispose();
         }
      }
      
      protected function initThemeGraphicsManager() : §;";§
      {
         return null;
      }
      
      protected function initThemeSoundsManager() : §;";§
      {
         return null;
      }
      
      protected function initCutSceneManager() : §;";§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§0Y§) : §[t§
      {
         return new §[t§(param1);
      }
      
      public function §3H§(param1:Boolean) : void
      {
         if(§"]§.§!X§)
         {
            if(param1)
            {
               §"]§.§!X§.start();
            }
            else
            {
               §"]§.§!X§.stop();
               §"]§.§!X§.color = 0;
            }
         }
      }
      
      public function §8Y§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function §%!B§() : §5!@§
      {
         return this.§,!c§;
      }
      
      public function setController(param1:§5!@§) : void
      {
         if(this.§,!c§ != null)
         {
            this.§,!c§.removeEventListeners();
         }
         this.§,!c§ = param1;
         if(this.mReadyToRun)
         {
            this.§,!c§.addEventListeners();
         }
      }
      
      public function §5!A§() : §[!Q§
      {
         return this.§3'§;
      }
      
      public function §[!2§(param1:§'!p§, param2:Array, param3:Function) : void
      {
         this.§?!L§ = param1;
         var _loc4_:int = this.§?!L§.§2!l§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§ !@§.§0!g§(this.§?!L§.§59§(_loc5_));
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§`!s§.addEventListener(Event.INIT,param3);
            this.§7a§.push(param3);
         }
         if(this.§[!%§(param2))
         {
            this.§5#§();
         }
      }
      
      private function §[!%§(param1:Array) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.§ !@§.§9!F§())
         {
            _loc2_ = this.§ !@§.§@=§ / 1000;
            _loc3_ = this.§ !@§.§%!U§ / 1000;
            §+!k§.log("\n\nMain texture manager memory usage:\n   textures " + _loc2_ + " kilobytes\n   bitmaps " + _loc3_ + " kilobytes\n\n");
            this.initializeAnimations(param1);
            return true;
         }
         this.§;!P§ = param1.concat();
         return false;
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         this.§]!V§.initializeAnimations(param1);
      }
      
      private function §-""§(param1:Event) : void
      {
         this.§ !@§.§>l§();
         if(this.§3<§ && this.§3<§.textureManager)
         {
            this.§3<§.textureManager.§>l§();
         }
         if(this.§@F§ && this.§@F§.textureManager)
         {
            this.§@F§.textureManager.§>l§();
         }
         if(this.§;!P§)
         {
            this.§[!%§(this.§;!P§);
            this.§;!P§ = null;
            this.§5#§();
         }
         if(this.§,!c§ != null && this.mReadyToRun)
         {
            this.§,!c§.addEventListeners();
         }
         if(this.§8!1§)
         {
            this.§8!1§.§9!F§();
         }
         if(this.§%!o§)
         {
            if(this.§%!o§.textureManager)
            {
               this.§%!o§.textureManager.§>l§();
               this.§%!o§.§9!F§();
            }
         }
      }
      
      private function §5#§() : void
      {
         this.§`!s§.dispatchEvent(new Event(Event.INIT));
         this.§1!j§();
      }
      
      private function §1!j§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§7a§)
         {
            this.§`!s§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§7a§ = [];
      }
      
      public function init(param1:§1"B§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§!`§ = new §9!Z§(this,param1);
         this.§0!§ = this.§]]§(param1);
         this.§4"<§ = 0;
         this.§,"<§ = 0;
         this.§6"D§ = 0;
         this.§&"0§ = false;
         this.mReadyToRun = false;
         this.§"§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         §^!V§ = param1.theme;
         this.§`!C§ = param1;
         this.§=!j§ = this.§?!>§(param1.theme);
         this.§7,§ = this.§5,§(param1.theme);
         if(this.§=!j§ && this.§7,§)
         {
            this.initialize(param1);
         }
         else
         {
            this.§=`§(param1.theme);
         }
         this.§]!y§();
         §?E§.init();
      }
      
      protected function §]!y§() : void
      {
         this.§3'§ = new §[!Q§(LevelManager.§'!O§);
      }
      
      protected function §?!>§(param1:String) : Boolean
      {
         if(this.§8!1§)
         {
            return false;
         }
         return true;
      }
      
      protected function §5,§(param1:String) : Boolean
      {
         var _loc2_:§6U§ = null;
         if(this.§ _§)
         {
            _loc2_ = §8,§.§0>§(param1);
            if(_loc2_)
            {
               if(_loc2_.§&"<§ && !this.§ _§.§9!c§(_loc2_.§&"<§))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function §=`§(param1:String) : void
      {
         var _loc2_:§6U§ = null;
         if(this.§8!1§ && !this.§?!>§(param1))
         {
            this.§8!1§.removeEventListener(Event.COMPLETE,this.§>!n§);
            this.§8!1§.removeEventListener(Event.CANCEL,this.§8s§);
            this.§8!1§.addEventListener(Event.COMPLETE,this.§>!n§);
            this.§8!1§.addEventListener(Event.CANCEL,this.§8s§);
            this.§8!1§.§!!_§(param1);
         }
         if(this.§ _§ && !this.§5,§(param1))
         {
            this.§ _§.removeEventListener(Event.COMPLETE,this.§<7§);
            this.§ _§.removeEventListener(Event.CANCEL,this.§;!>§);
            this.§ _§.addEventListener(Event.COMPLETE,this.§<7§);
            this.§ _§.addEventListener(Event.CANCEL,this.§;!>§);
            _loc2_ = §8,§.§0>§(param1);
            if(_loc2_)
            {
               this.§ _§.§!!_§(_loc2_.§&"<§);
            }
         }
      }
      
      private function §>!n§(param1:Event) : void
      {
         this.§8!1§.removeEventListener(Event.COMPLETE,this.§>!n§);
         this.§8!1§.removeEventListener(Event.CANCEL,this.§8s§);
         this.§=!j§ = true;
         if(this.§=!j§ && this.§7,§)
         {
            this.initialize(this.§`!C§);
         }
      }
      
      private function §8s§(param1:Event) : void
      {
         this.§8!1§.removeEventListener(Event.COMPLETE,this.§>!n§);
         this.§8!1§.removeEventListener(Event.CANCEL,this.§8s§);
         this.§"§ = true;
      }
      
      private function §<7§(param1:Event) : void
      {
         this.§8!1§.removeEventListener(Event.COMPLETE,this.§<7§);
         this.§8!1§.removeEventListener(Event.CANCEL,this.§;!>§);
         this.§7,§ = true;
         if(this.§=!j§ && this.§7,§)
         {
            this.initialize(this.§`!C§);
         }
      }
      
      private function §;!>§(param1:Event) : void
      {
         this.§8!1§.removeEventListener(Event.COMPLETE,this.§<7§);
         this.§8!1§.removeEventListener(Event.CANCEL,this.§;!>§);
         this.§7,§ = true;
         if(this.§=!j§ && this.§7,§)
         {
            this.initialize(this.§`!C§);
         }
      }
      
      public function get backgroundTextureManager() : §0Y§
      {
         return this.§ !@§;
      }
      
      protected function initialize(param1:§1"B§) : void
      {
         this.§ § = false;
         this.§]!P§ = false;
         if(§"]§.§^!v§)
         {
            §"]§.§^!v§.speed = 1;
         }
         this.mLevelEngine = new §4!`§(this);
         this.§4J§ = this.initLevelBackground(param1.theme,this.§!`§.§'I§ / §'"F§,this.backgroundTextureManager,this.§0!§.§;!O§());
         this.§4J§.§'h§(§#6§.§&9§());
         this.§%!O§ = this.initLevelObjectManager(param1);
         this.§5^§ = this.initLevelSlingshot(param1);
         this.§3">§ = this.§<"7§(this.§]!V§,this.§ !@§);
         this.§0!§.init();
         this.addItemsToDisplayList();
         this.§,X§();
         this.mReadyToRun = true;
         if(this.§,!c§)
         {
            this.§,!c§.addEventListeners();
         }
      }
      
      protected function §,X§() : void
      {
         if(this.§-"?§)
         {
            this.§9L§ = §[!Q§.initialize(this.§-"?§);
            this.§9L§.speed = 1;
            this.§9L§.play();
            this.§]!t§ = -1000;
            this.§-"?§ = null;
         }
      }
      
      public function §;w§(param1:String) : void
      {
         this.§-"?§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§9L§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§9L§)
         {
            if(param1)
            {
               this.§9L§.speed = Math.min(this.§9L§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§9L§.speed = Math.max(this.§9L§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§9L§)
         {
            this.§9L§.speed = 1;
         }
      }
      
      protected function initLevelObjectManager(param1:§1"B§) : §]a§
      {
         return new §]a§(this,param1,new Sprite());
      }
      
      protected function §]]§(param1:§1"B§) : §&0§
      {
         return new §&0§(this,param1);
      }
      
      protected function initLevelBackground(param1:String, param2:Number, param3:§0Y§, param4:Number) : §[!x§
      {
         return new §[!x§(param1,param2,param3,param4);
      }
      
      protected function initLevelSlingshot(param1:§1"B§) : §2a§
      {
         return new §2a§(this,param1,new Sprite());
      }
      
      protected function §<"7§(param1:§[t§, param2:§0Y§) : §^!f§
      {
         return new §^!f§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§1"B§ = this.§=C§();
         var _loc4_:§2!L§;
         (_loc4_ = new §2!L§()).left = 0;
         _loc4_.top = -§&0§.§'v§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §&0§.§'v§;
         _loc4_.right = _loc4_.left + §&0§.§]C§;
         _loc4_.y = -13.929;
         _loc4_.x = §&0§.§]C§;
         _loc4_.id = §&0§.§["%§;
         _loc3_.§%!Y§(_loc4_);
         var _loc5_:§2!L§;
         (_loc5_ = new §2!L§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §&0§.§]C§;
         _loc5_.bottom = _loc5_.top + §&0§.§'v§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §&0§.§]C§ / 2;
         _loc5_.id = §&0§.§#" §;
         _loc3_.§%!Y§(_loc5_);
         this.§3!]§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§^!V§ != null)
         {
            _loc3_.theme = §^!V§;
         }
         this.init(_loc3_);
      }
      
      protected function §3!]§(param1:§1"B§, param2:Boolean) : void
      {
         if(param2)
         {
            this.§5"'§(param1);
         }
      }
      
      protected function §=C§() : §1"B§
      {
         var _loc1_:§1"B§ = new §1"B§();
         _loc1_.§!f§ = -12;
         return new §1"B§();
      }
      
      protected function §?!Z§() : Number
      {
         this.§3!h§ ^= this.§3!h§ << 21;
         this.§3!h§ ^= this.§3!h§ >>> 35;
         this.§3!h§ ^= this.§3!h§ << 4;
         return this.§3!h§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §5"'§(param1:§1"B§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§3"6§ = null;
         this.§3!h§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§?!Z§() * 5;
               (_loc5_ = new §3"6§()).x = 30 + _loc3_ * 10 + this.§?!Z§() * 9;
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
                  _loc5_.angle = 45 - this.§?!Z§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§?!Z§() * 3 - _loc3_ * 8;
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
                  _loc5_.angle = this.§?!Z§() * 360;
               }
               param1.addObject(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      private function §5B§() : void
      {
      }
      
      public function addItemsToDisplayList() : void
      {
         if(§[!x§.§50§)
         {
            this.§6!§(this.§4J§.backgroundLayersSprite,false);
         }
         this.§6!§(this.§3">§.getGroupSprite(§^!f§.§6d§),false);
         this.§6!§(this.§3">§.getGroupSprite(§^!f§.§?i§),true);
         this.§6!§(this.§3">§.getGroupSprite(§^!f§.§4N§),true);
         this.§6!§(this.§%!O§.mainSprite,true);
         this.§6!§(this.§5^§.sprite,true);
         this.§6!§(this.§3">§.getGroupSprite(§^!f§.§>"F§),true);
         this.§6!§(this.§4J§.groundSprite,false);
         if(§[!x§.§50§)
         {
            this.§6!§(this.§4J§.foregroundLayersSprite,false);
         }
         this.§6!§(this.§3">§.getGroupSprite(§^!f§.§?y§),true);
      }
      
      protected function §6!§(param1:Sprite, param2:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(param1);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         param1 /= §#6§.§>!F§;
         param2 /= §#6§.§>!F§;
         _loc3_.x = (param1 / §&0§.§8!F§ + this.§0!§.§6!K§ - §&0§.§0"&§ / §&0§.§8!F§) * §'"F§;
         _loc3_.y = (param2 / §&0§.§8!F§ + this.§0!§.§4!E§ - §&0§.§7<§ / §&0§.§8!F§) * §'"F§;
         return _loc3_;
      }
      
      public function §'c§(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / §'"F§ + §&0§.§0"&§ / §&0§.§8!F§ - this.§0!§.§6!K§) * §&0§.§8!F§;
         _loc3_.y = (param2 / §'"F§ + §&0§.§7<§ / §&0§.§8!F§ - this.§0!§.§4!E§) * §&0§.§8!F§;
         var _loc4_:Number = Math.max(§#6§.§>!F§,§#6§.§"e§);
         _loc3_.x *= _loc4_;
         _loc3_.y *= _loc4_;
         return _loc3_;
      }
      
      public function §3"A§(param1:String, param2:Number, param3:Number) : void
      {
         this.§%!O§.addObject(param1,param2,param3);
      }
      
      public function §?v§() : void
      {
         if(this.§>§)
         {
            this.§>§.visible = true;
            this.§>§.alpha = 0;
         }
         this.§%"4§ = 0;
      }
      
      public function §`K§() : void
      {
         this.§^!m§ = new §;x§(§4"F§.§ =§,§4"F§.§`"E§);
      }
      
      public function §"!a§() : void
      {
         this.§^!m§ = null;
      }
      
      public function clearLevel() : void
      {
         if(this.§4J§)
         {
            this.§4J§.dispose();
            this.§4J§ = null;
         }
         if(this.§%!O§)
         {
            this.§%!O§.dispose();
            this.§%!O§ = null;
            this.§^<§ = null;
         }
         if(this.mLevelEngine)
         {
            if(!this.mLevelEngine.§2T§)
            {
            }
            this.mLevelEngine.clear();
            this.mLevelEngine = null;
         }
         if(this.§!`§)
         {
            this.§!`§.clear();
            this.§!`§ = null;
         }
         if(this.§5^§)
         {
            this.§5^§.dispose();
            this.§5^§ = null;
         }
         if(this.§0!§)
         {
            this.§0!§.clear();
            this.§0!§ = null;
         }
         if(this.§3">§)
         {
            this.§3">§.dispose();
            this.§3">§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§4"<§ = 0;
         this.§,"<§ = 0;
         this.mReadyToRun = false;
         this.§&"0§ = false;
         this.§%"4§ = §4"F§.§'8§;
         if(this.§8!_§)
         {
            (this.§8!_§ as §5P§).§]Y§.x = 0;
            (this.§8!_§ as §5P§).§]Y§.y = 0;
         }
         if(this.§>§)
         {
            this.§>§.visible = false;
         }
         this.§9L§ = null;
         this.§3'§ = null;
         if(this.§8!1§)
         {
            this.§8!1§.removeEventListener(Event.COMPLETE,this.§>!n§);
            this.§8!1§.removeEventListener(Event.CANCEL,this.§8s§);
         }
         if(this.§ _§)
         {
            this.§ _§.removeEventListener(Event.COMPLETE,this.§<7§);
            this.§ _§.removeEventListener(Event.CANCEL,this.§;!>§);
         }
         this.§1!j§();
         if(§"]§.§!X§)
         {
            §"]§.§!X§.color = 0;
         }
         if(this.§,!c§)
         {
            this.§,!c§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver() : void
      {
      }
      
      public function §2L§() : String
      {
         if(this.§3'§)
         {
            return this.§3'§.toString();
         }
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         if(!this.mReadyToRun || !§"]§.§+"E§())
         {
            return 0;
         }
         if(this.§9L§ && this.§9L§.§5%§)
         {
            return this.§'!M§(param1,param2,param3);
         }
         return this.updateWithTime(param1,true,param2,param3);
      }
      
      protected function updateWithTime(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         if(this.§ §)
         {
            param1 *= 0.2;
            if(§"]§.§^!v§)
            {
               §"]§.§^!v§.speed = 0.2;
            }
         }
         var _loc5_:Number = 0;
         this.§,"<§ += param1;
         if(param3)
         {
            this.§4"<§ += param1;
            _loc5_ = this.mLevelEngine.§7",§(this.§4"<§);
            this.§5^§.update(param1,param4);
            this.§4"<§ = _loc5_;
         }
         else
         {
            this.§%!O§.updateLevelObjectsGoingOn(param1);
            this.§4"<§ = 0;
         }
         if(param2)
         {
            this.§0j§(param1,_loc5_);
         }
         return param1;
      }
      
      private function §'!M§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc5_:Number = NaN;
         var _loc4_:Number = §4!`§.§%!E§ * 1000;
         if(this.§9L§)
         {
            param1 *= this.§9L§.speed;
            _loc5_ = this.§,"<§ + param1;
            while(this.§,"<§ + _loc4_ < _loc5_)
            {
               if(this.§,"<§ + _loc4_ > this.§]!t§)
               {
                  this.§9L§.step(this);
                  this.§]!t§ += _loc4_;
               }
               this.updateWithTime(_loc4_,false,param2,param3);
            }
            if(_loc5_ > this.§]!t§ + _loc4_)
            {
               this.§9L§.step(this);
               this.§]!t§ += _loc4_;
            }
            if(this.§,"<§ < _loc5_)
            {
               this.updateWithTime(_loc5_ - this.§,"<§,true,param2,param3);
            }
            return param1;
         }
         return this.updateWithTime(_loc4_,true,param2,param3);
      }
      
      private function §0j§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.§4J§.update(param1);
         this.§%!O§.§="'§(param1,param2);
         this.§^!#§();
         if(this.§%"4§ < §4"F§.§'8§)
         {
            this.§%"4§ += param1;
            _loc3_ = §4"F§.§'8§ / 2;
            _loc4_ = (-Math.abs(this.§%"4§ - _loc3_) + _loc3_) * (§4"F§.§>",§ / _loc3_);
            if(this.§>§)
            {
               this.§>§.alpha = _loc4_;
            }
         }
         else if(this.§>§)
         {
            this.§>§.visible = false;
         }
         if(this.§^!m§)
         {
            if(!this.§^!m§.§@1§(this.§0!§,param1))
            {
               this.§"!a§();
            }
         }
         this.§0!§.§+E§(param1);
         this.mLevelEngine.§"!v§();
         this.§3">§.update(param1);
      }
      
      public function handleEngineUpdateStep(param1:Number) : void
      {
         this.objects.updateLevelObjectsGoingOn(param1 * 1000);
         this.objects.§6!5§(param1 * 1000);
         this.§7"3§();
      }
      
      public function §^!#§() : void
      {
         var _loc1_:§&!r§ = null;
         if(this.§,"<§ > this.§6"D§ + 1000 / 30)
         {
            if(this.§7F§ != null)
            {
               for each(_loc1_ in this.§7F§)
               {
                  _loc1_.addTrail();
               }
            }
            this.§6"D§ = this.§,"<§;
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§&!r§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.§%!O§.isPigsAlive(true))
            {
               _loc2_ = this.§%!O§.§;R§(true);
               if(_loc2_)
               {
                  _loc2_.§"!&§.mTryToScream = §#!D§.§%"$§;
                  this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§%!O§.getPigCount());
               }
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            if(this.§%!O§.isPigsAlive(true))
            {
               _loc2_ = this.§%!O§.§;R§(true);
               if(_loc2_)
               {
                  _loc2_.§"!&§.mTryToBlink = §#!D§.§ !'§;
                  this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§%!O§.getPigCount());
               }
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §'G§.§4!Q§;
         }
         §?E§.addScore(param1,param2);
         this.§,!c§.addScore(param1);
         if(param3 && param1 > 0 && !this.§]!P§)
         {
            this.§%!&§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §%!&§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §'G§.§=!4§;
         }
         this.§3">§.§;!u§(§'G§.§"2§,§^!f§.§?y§,§'G§.§7!e§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §<!1§(param1:§&!r§) : void
      {
         if(this.§7F§ == null)
         {
            this.§7F§ = new Array();
         }
         this.§7F§.push(param1);
      }
      
      public function useMightyEagle() : void
      {
         this.§5^§.useMightyEagle();
         this.§%!O§.§"s§();
         this.§]!P§ = true;
      }
      
      public function §7">§(param1:§&!r§) : void
      {
         this.§3">§.§2!_§(§^!f§.§6d§);
         if(this.§7F§.indexOf(param1) >= 0)
         {
            this.§7F§.splice(this.§7F§.indexOf(param1),1);
         }
         if(this.§7F§.length == 0)
         {
            this.§7F§ = null;
         }
      }
      
      public function §^K§(param1:§;!M§, param2:Number, param3:Number) : void
      {
         this.§^<§ = this.§%!O§.addObject(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
         var _loc4_:Number = param1.name.toUpperCase() == "BIRD_GREEN" ? Number(§2a§.BIRD_LAUNCH_FORCE_GREEN) : Number(§2a§.BIRD_LAUNCH_FORCE);
         if(param1.§>! § > 1)
         {
            this.§^<§.§-!#§(param1.§>! §);
            this.§^<§.§"!&§.§8!C§();
         }
         if(param1.§&!v§ != 0)
         {
            _loc4_ = param1.§&!v§;
         }
         var _loc5_:Number = -_loc4_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc6_:Number = _loc4_ * param2 * Math.sin(param3 / (180 / Math.PI));
         this.§^<§.§^!u§(new b2Vec2(_loc5_,_loc6_),false,true);
         this.camera.§4"2§(§&0§.§[!M§);
         if(this.§3'§)
         {
            this.§3'§.§^K§(this.mLevelEngine.§;s§,param1.x,param1.y,param2,param3);
         }
      }
      
      public function activatePowerup() : void
      {
         this.§&"0§ = true;
      }
      
      private function §7"3§() : void
      {
         if(!this.§&"0§)
         {
            return;
         }
         this.§&"0§ = false;
         if(this.activeObject is § H§ && !(this.activeObject as § H§).§-!a§)
         {
            if(this.activeObject.activateSpecialPower(this.§<f§))
            {
               this.§!!B§ = true;
            }
         }
         else
         {
            this.§%!O§.§!"7§();
         }
         if(this.§3'§)
         {
            this.§3'§.§3d§(this.mLevelEngine.§;s§);
         }
      }
      
      public function §<<§() : void
      {
         this.§%!O§.§<<§();
      }
      
      public function §7!]§() : void
      {
         this.§%!O§.§3!V§();
      }
      
      public function §+m§() : §1"B§
      {
         var _loc1_:§1"B§ = new §1"B§();
         _loc1_.§-z§ = this.§`!C§.§-z§;
         _loc1_.§4Z§ = this.§`!C§.§4Z§;
         this.§0!§.§4!s§(_loc1_);
         this.§%!O§.§>"<§(_loc1_);
         this.§5^§.§1!0§(_loc1_);
         _loc1_.theme = this.§4J§.§6S§();
         return _loc1_;
      }
      
      public function §?"'§() : int
      {
         return this.§`!C§.§4Z§;
      }
      
      public function §="9§() : int
      {
         return this.§`!C§.§-z§;
      }
      
      public function §try §(param1:int) : void
      {
         this.§`!C§.§4Z§ = param1;
      }
      
      public function §-!D§(param1:int) : void
      {
         this.§`!C§.§-z§ = param1;
      }
      
      public function §@r§(param1:Number, param2:Number) : void
      {
         if(this.§9!J§)
         {
            this.§9!J§.§!!U§(param1,param2);
         }
         if(this.§0!§)
         {
            this.§0!§.§+E§(0);
         }
      }
      
      public function get §=!T§() : §1"B§
      {
         return this.§`!C§;
      }
      
      public function get §<f§() : §]a§
      {
         return this.§%!O§;
      }
      
      protected function get starling() : §"]§
      {
         return this.§32§;
      }
      
      public function get §0"E§() : int
      {
         return §%c§;
      }
   }
}
