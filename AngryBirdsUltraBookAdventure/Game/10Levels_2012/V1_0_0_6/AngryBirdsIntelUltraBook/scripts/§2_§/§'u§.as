package §2_§
{
   import §!!K§.§else§;
   import §"!,§.§9!B§;
   import §"!,§.§^z§;
   import §"x§.§-8§;
   import §,!!§.§#!Y§;
   import §-%§.§#!J§;
   import §3!G§.§ y§;
   import §3!G§.§'Z§;
   import §3!G§.§?c§;
   import §3!G§.LevelManager;
   import §4!O§.;
   import §5!k§.§+!n§;
   import §7!B§.DisplayObject;
   import §7!B§.Sprite;
   import §;%§.b2Vec2;
   import §<x§.§-^§;
   import §=b§.§ 6§;
   import §=b§.§0d§;
   import §=b§.§>!e§;
   import §=b§.§`!_§;
   import §>! §.§^!c§;
   import §@^§.§"i§;
   import §@^§.§#<§;
   import §]+§.§=E§;
   import §]o§.§"!Z§;
   import §^!Y§.§'R§;
   import §^!Y§.§]e§;
   import §^!Y§.§else §;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §'u§
   {
      
      private static const §3!b§:int = 20;
      
      public static const §?!8§:Number = §^!c§.§"!c§;
      
      public static const §4o§:Number = §^!c§.§%g§;
      
      public static const §18§:Number = 1 / 20;
      
      public static const §-q§:Number = §^!c§.§%g§ * §18§;
      
      public static const §?!!§:Number = §?!8§ * §18§;
      
      public static const §@`§:§=E§ = new §=E§(13 - 3);
      
      protected static var §%1§:String = § y§.§!n§;
       
      
      protected var §[!E§:§>!e§;
      
      private var §3!S§:§`!_§;
      
      private var §1r§:Array = null;
      
      protected var §%'§:§-^§;
      
      public var mLevelEngine:§%!;§;
      
      protected var §--§:§'r§;
      
      protected var §-M§:§#!Y§;
      
      protected var §;!,§:§8![§;
      
      protected var §`s§:§^z§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §>Y§:Boolean = false;
      
      protected var §8o§:Boolean = false;
      
      protected var §'8§:Boolean = false;
      
      public var §]!v§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §14§:Number;
      
      public var §[!t§:Number;
      
      private var §2!!§:Number;
      
      public var §?b§:§?c§;
      
      public var §6u§:Boolean = false;
      
      private var §^V§:§;!b§;
      
      private var §7[§:Sprite;
      
      protected var §0!l§:§ y§;
      
      protected var §0!@§:§#!J§ = null;
      
      private var §0v§:EventDispatcher;
      
      private var §'4§:Array;
      
      private var §@V§:Array;
      
      protected var §3!<§:§else§;
      
      private var §0!g§:§"!Z§;
      
      protected var §+]§:§'R§;
      
      protected var §5P§:§else §;
      
      private var §;-§:§]e§;
      
      private var §9n§:§]e§;
      
      private var §&!M§:§]e§;
      
      private var §8!x§:Stage;
      
      private var §=M§:§-!B§;
      
      protected var §9U§:§+!n§;
      
      protected var §'§:§+!n§;
      
      protected var §<B§:Number = 0.0;
      
      protected var §4u§:String;
      
      private var §@!;§:Boolean;
      
      protected var §>!5§:Boolean;
      
      protected var §^!3§:uint = 1.417339207E9;
      
      public var §=!J§:Boolean;
      
      public function §'u§(param1:Stage)
      {
         this.§@V§ = [];
         super();
         this.§0v§ = new EventDispatcher();
         this.§?b§ = new §?c§();
         this.§8!x§ = param1;
         this.§+]§ = §'R§.§7!j§;
         this.§5P§ = this.initAnimationManager(this.§+]§);
         this.§;-§ = this.initThemeGraphicsManager();
         this.§9n§ = this.initThemeSoundsManager();
         this.§&!M§ = this.initCutSceneManager();
         var _loc2_:Stage3D = param1.stage3Ds[0];
         this.§3!<§ = new §else§(§;!b§,param1,new Rectangle(0,0,§^!c§.§"!c§,§^!c§.§%g§),_loc2_);
         §^!c§.§2!w§.addEventListener(Event.ENTER_FRAME,this.§3!<§.onEnterFrame);
         _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§3!r§,false,0,true);
         this.§3!<§.§catch§ = false;
         this.§3!<§.enableErrorChecking = false;
         this.§3!<§.§ do§ = 2;
         this.§3!<§.§2!§();
      }
      
      public static function §#$§(param1:§`!_§, param2:§`!_§) : Number
      {
         var _loc3_:Number = param1.§7E§ - param2.§7E§;
         var _loc4_:Number = param1.§1u§ - param2.§1u§;
         return §@p§(_loc3_,_loc4_);
      }
      
      public static function §@p§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         if(!this.§7[§ && this.§#!C§)
         {
            this.§7[§ = this.§^V§.§ !J§;
         }
         return this.§7[§;
      }
      
      public function get §#!C§() : Sprite
      {
         if(!this.§^V§)
         {
            this.§^V§ = this.§3!<§.§]'§ as §;!b§;
            this.§^V§.§]!F§ = false;
         }
         return this.§^V§;
      }
      
      private function get §5!,§() : DisplayObject
      {
         if(this.§#!C§)
         {
            return (this.§#!C§ as §;!b§).§5!,§;
         }
         return null;
      }
      
      public function get animationManager() : §else §
      {
         return this.§5P§;
      }
      
      public function get textureManager() : §'R§
      {
         return this.§+]§;
      }
      
      public function get camera() : §#!Y§
      {
         return this.§-M§;
      }
      
      public function get objects() : §>!e§
      {
         return this.§[!E§;
      }
      
      public function get particles() : §^z§
      {
         return this.§`s§;
      }
      
      public function get background() : §-^§
      {
         return this.§%'§;
      }
      
      public function get slingshot() : §8![§
      {
         return this.§;!,§;
      }
      
      public function get activeObject() : §`!_§
      {
         return this.§3!S§;
      }
      
      public function get §!!"§() : §'r§
      {
         return this.§--§;
      }
      
      public function get stage() : Stage
      {
         return this.§8!x§;
      }
      
      public function get §&c§() : §]e§
      {
         return this.§&!M§;
      }
      
      protected function get §"#§() : §]e§
      {
         return this.§;-§;
      }
      
      public function set activeObject(param1:§`!_§) : void
      {
         this.§3!S§ = param1;
      }
      
      public function set §,V§(param1:Boolean) : void
      {
         this.§>!5§ = param1;
      }
      
      public function clear() : void
      {
         if(this.§0!g§)
         {
            this.§0!g§.dispose();
         }
         if(this.§+]§)
         {
            this.§+]§.dispose();
         }
         if(this.§;-§ && this.§;-§.textureManager)
         {
            this.§;-§.textureManager.dispose();
         }
         if(this.§&!M§ && this.§&!M§.textureManager)
         {
            this.§&!M§.textureManager.dispose();
         }
         if(this.§3!<§)
         {
            this.§3!<§.dispose();
         }
      }
      
      protected function initThemeGraphicsManager() : §]e§
      {
         return null;
      }
      
      protected function initThemeSoundsManager() : §]e§
      {
         return null;
      }
      
      protected function initCutSceneManager() : §]e§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§'R§) : §else §
      {
         return new §else §(param1);
      }
      
      public function §@!v§(param1:Boolean) : void
      {
         if(§else§.§^!A§)
         {
            if(param1)
            {
               §else§.§^!A§.start();
            }
            else
            {
               §else§.§^!A§.stop();
               §else§.§^!A§.color = 0;
            }
         }
      }
      
      public function §"!B§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function setController(param1:§#!J§) : void
      {
         if(this.§0!@§ != null)
         {
            this.§0!@§.removeEventListeners();
         }
         this.§0!@§ = param1;
         if(this.mReadyToRun)
         {
            this.§0!@§.addEventListeners();
         }
      }
      
      public function §?D§() : §+!n§
      {
         return this.§9U§;
      }
      
      public function §-f§(param1:§"!Z§, param2:Array, param3:Function) : void
      {
         this.§0!g§ = param1;
         var _loc4_:int = this.§0!g§.§]t§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§+]§.§8!k§(this.§0!g§.§0!>§(_loc5_));
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§0v§.addEventListener(Event.INIT,param3);
            this.§@V§.push(param3);
         }
         if(this.§>!`§(param2))
         {
            this.§7!-§();
         }
      }
      
      private function §>!`§(param1:Array) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.§+]§.§!>§())
         {
            _loc2_ = this.§+]§.§7<§ / 1000;
            _loc3_ = this.§+]§.§#W§ / 1000;
            §-8§.log("\n\nMain texture manager memory usage:\n   textures " + _loc2_ + " kilobytes\n   bitmaps " + _loc3_ + " kilobytes\n\n");
            this.initializeAnimations(param1);
            return true;
         }
         this.§'4§ = param1.concat();
         return false;
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         this.§5P§.initializeAnimations(param1);
      }
      
      private function §3!r§(param1:Event) : void
      {
         this.§+]§.§ !f§();
         if(this.§"#§ && this.§"#§.textureManager)
         {
            this.§"#§.textureManager.§ !f§();
         }
         if(this.§&c§ && this.§&c§.textureManager)
         {
            this.§&c§.textureManager.§ !f§();
         }
         if(this.§'4§)
         {
            this.§>!`§(this.§'4§);
            this.§'4§ = null;
            this.§7!-§();
         }
         if(this.§0!@§ != null && this.mReadyToRun)
         {
            this.§0!@§.addEventListeners();
         }
         if(this.§;-§)
         {
            this.§;-§.§!>§();
         }
         if(this.§&!M§)
         {
            if(this.§&!M§.textureManager)
            {
               this.§&!M§.textureManager.§ !f§();
               this.§&!M§.§!>§();
            }
         }
      }
      
      private function §7!-§() : void
      {
         this.§0v§.dispatchEvent(new Event(Event.INIT));
         this.§9!L§();
      }
      
      private function §9!L§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§@V§)
         {
            this.§0v§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§@V§ = [];
      }
      
      public function init(param1:§ y§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§--§ = new §'r§(this,param1);
         this.§-M§ = this.§null§(param1);
         this.§14§ = 0;
         this.§[!t§ = 0;
         this.§2!!§ = 0;
         this.§@!;§ = false;
         this.mReadyToRun = false;
         this.§>Y§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         §%1§ = param1.theme;
         this.§0!l§ = param1;
         this.§8o§ = this.§;!M§(param1.theme);
         this.§'8§ = this.§7!Q§(param1.theme);
         if(this.§8o§ && this.§'8§)
         {
            this.initialize(param1);
         }
         else
         {
            this.§'7§(param1.theme);
         }
         this.§^;§();
         §@!6§.init();
      }
      
      protected function §^;§() : void
      {
         this.§9U§ = new §+!n§(LevelManager.§%n§);
      }
      
      protected function §;!M§(param1:String) : Boolean
      {
         if(this.§;-§)
         {
            return false;
         }
         return true;
      }
      
      protected function §7!Q§(param1:String) : Boolean
      {
         var _loc2_:§#<§ = null;
         if(this.§9n§)
         {
            _loc2_ = §"i§.§<!F§(param1);
            if(_loc2_)
            {
               if(_loc2_.§8%§ && !this.§9n§.§7!6§(_loc2_.§8%§))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function §'7§(param1:String) : void
      {
         var _loc2_:§#<§ = null;
         if(this.§;-§ && !this.§;!M§(param1))
         {
            this.§;-§.removeEventListener(Event.COMPLETE,this.§8!0§);
            this.§;-§.removeEventListener(Event.CANCEL,this.§0'§);
            this.§;-§.addEventListener(Event.COMPLETE,this.§8!0§);
            this.§;-§.addEventListener(Event.CANCEL,this.§0'§);
            this.§;-§.§]6§(param1);
         }
         if(this.§9n§ && !this.§7!Q§(param1))
         {
            this.§9n§.removeEventListener(Event.COMPLETE,this.§true §);
            this.§9n§.removeEventListener(Event.CANCEL,this.§5!3§);
            this.§9n§.addEventListener(Event.COMPLETE,this.§true §);
            this.§9n§.addEventListener(Event.CANCEL,this.§5!3§);
            _loc2_ = §"i§.§<!F§(param1);
            if(_loc2_)
            {
               this.§9n§.§]6§(_loc2_.§8%§);
            }
         }
      }
      
      private function §8!0§(param1:Event) : void
      {
         this.§;-§.removeEventListener(Event.COMPLETE,this.§8!0§);
         this.§;-§.removeEventListener(Event.CANCEL,this.§0'§);
         this.§8o§ = true;
         if(this.§8o§ && this.§'8§)
         {
            this.initialize(this.§0!l§);
         }
      }
      
      private function §0'§(param1:Event) : void
      {
         this.§;-§.removeEventListener(Event.COMPLETE,this.§8!0§);
         this.§;-§.removeEventListener(Event.CANCEL,this.§0'§);
         this.§>Y§ = true;
      }
      
      private function §true §(param1:Event) : void
      {
         this.§;-§.removeEventListener(Event.COMPLETE,this.§true §);
         this.§;-§.removeEventListener(Event.CANCEL,this.§5!3§);
         this.§'8§ = true;
         if(this.§8o§ && this.§'8§)
         {
            this.initialize(this.§0!l§);
         }
      }
      
      private function §5!3§(param1:Event) : void
      {
         this.§;-§.removeEventListener(Event.COMPLETE,this.§true §);
         this.§;-§.removeEventListener(Event.CANCEL,this.§5!3§);
         this.§'8§ = true;
         if(this.§8o§ && this.§'8§)
         {
            this.initialize(this.§0!l§);
         }
      }
      
      public function get backgroundTextureManager() : §'R§
      {
         return this.§+]§;
      }
      
      protected function initialize(param1:§ y§) : void
      {
         this.§>!5§ = false;
         this.§=!J§ = false;
         if(§else§.§]!#§)
         {
            §else§.§]!#§.speed = 1;
         }
         this.mLevelEngine = new §%!;§(this);
         this.§%'§ = this.initLevelBackground(param1.theme,this.§--§.§%!^§ / §18§,this.backgroundTextureManager,this.§-M§.§#!m§());
         this.§%'§.§9!p§(§^!c§.§ !?§());
         this.§[!E§ = this.initLevelObjectManager(param1);
         this.§;!,§ = this.initLevelSlingshot(param1);
         this.§`s§ = this.§[!8§(this.§5P§,this.§+]§);
         this.§-M§.init();
         this.§>!f§();
         this.§<#§();
         this.mReadyToRun = true;
         if(this.§0!@§)
         {
            this.§0!@§.addEventListeners();
         }
      }
      
      protected function §<#§() : void
      {
         if(this.§4u§)
         {
            this.§'§ = §+!n§.initialize(this.§4u§);
            this.§'§.speed = 1;
            this.§'§.play();
            this.§<B§ = -1000;
            this.§4u§ = null;
         }
      }
      
      public function §8!2§(param1:String) : void
      {
         this.§4u§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§'§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§'§)
         {
            if(param1)
            {
               this.§'§.speed = Math.min(this.§'§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§'§.speed = Math.max(this.§'§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§'§)
         {
            this.§'§.speed = 1;
         }
      }
      
      protected function initLevelObjectManager(param1:§ y§) : §>!e§
      {
         return new §>!e§(this,param1,new Sprite());
      }
      
      protected function §null§(param1:§ y§) : §#!Y§
      {
         return new §#!Y§(this,param1);
      }
      
      protected function initLevelBackground(param1:String, param2:Number, param3:§'R§, param4:Number) : §-^§
      {
         return new §-^§(param1,param2,param3,param4);
      }
      
      protected function initLevelSlingshot(param1:§ y§) : §8![§
      {
         return new §8![§(this,param1,new Sprite());
      }
      
      protected function §[!8§(param1:§else §, param2:§'R§) : §^z§
      {
         return new §^z§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§ y§ = this.§#E§();
         var _loc4_:§'Z§;
         (_loc4_ = new §'Z§()).left = 0;
         _loc4_.top = -§#!Y§.§`5§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §#!Y§.§`5§;
         _loc4_.right = _loc4_.left + §#!Y§.§";§;
         _loc4_.y = -13.929;
         _loc4_.x = §#!Y§.§";§;
         _loc4_.id = §#!Y§.§7j§;
         _loc3_.§+'§(_loc4_);
         var _loc5_:§'Z§;
         (_loc5_ = new §'Z§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §#!Y§.§";§;
         _loc5_.bottom = _loc5_.top + §#!Y§.§`5§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §#!Y§.§";§ / 2;
         _loc5_.id = §#!Y§.§27§;
         _loc3_.§+'§(_loc5_);
         this.§'!e§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§%1§ != null)
         {
            _loc3_.theme = §%1§;
         }
         this.init(_loc3_);
      }
      
      protected function §'!e§(param1:§ y§, param2:Boolean) : void
      {
         if(param2)
         {
            this.§<7§(param1);
         }
      }
      
      protected function §#E§() : § y§
      {
         var _loc1_:§ y§ = new § y§();
         _loc1_.§=1§ = -12;
         return new § y§();
      }
      
      protected function §4H§() : Number
      {
         this.§^!3§ ^= this.§^!3§ << 21;
         this.§^!3§ ^= this.§^!3§ >>> 35;
         this.§^!3§ ^= this.§^!3§ << 4;
         return this.§^!3§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §<7§(param1:§ y§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§#4§ = null;
         this.§^!3§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§4H§() * 5;
               (_loc5_ = new §#4§()).x = 30 + _loc3_ * 10 + this.§4H§() * 9;
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
                  _loc5_.angle = 45 - this.§4H§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§4H§() * 3 - _loc3_ * 8;
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
                  _loc5_.angle = this.§4H§() * 360;
               }
               param1.addObject(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      private function §#a§() : void
      {
      }
      
      public function §>!f§() : void
      {
         if(§-^§.§+a§)
         {
            this.§[H§(this.§%'§.§'<§,false);
         }
         this.§[H§(this.§`s§.§"!r§(§^z§.§[h§),false);
         this.§[H§(this.§`s§.§"!r§(§^z§.§#1§),true);
         this.§[H§(this.§`s§.§"!r§(§^z§.§=@§),true);
         this.§[H§(this.§[!E§.§[![§,true);
         this.§[H§(this.§;!,§.sprite,true);
         this.§[H§(this.§`s§.§"!r§(§^z§.§!!B§),true);
         this.§[H§(this.§%'§.§5!0§,false);
         if(§-^§.§+a§)
         {
            this.§[H§(this.§%'§.§%o§,false);
         }
         this.§[H§(this.§`s§.§"!r§(§^z§.§4!c§),true);
      }
      
      private function §[H§(param1:Sprite, param2:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(param1);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         param1 /= §^!c§.§#!M§;
         param2 /= §^!c§.§#!M§;
         _loc3_.x = (param1 / §#!Y§.§0!_§ + this.§-M§.§^E§ - §#!Y§.§%!H§ / §#!Y§.§0!_§) * §18§;
         _loc3_.y = (param2 / §#!Y§.§0!_§ + this.§-M§.§7u§ - §#!Y§.§[^§ / §#!Y§.§0!_§) * §18§;
         return _loc3_;
      }
      
      public function §-!S§(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / §18§ + §#!Y§.§%!H§ / §#!Y§.§0!_§ - this.§-M§.§^E§) * §#!Y§.§0!_§;
         _loc3_.y = (param2 / §18§ + §#!Y§.§[^§ / §#!Y§.§0!_§ - this.§-M§.§7u§) * §#!Y§.§0!_§;
         var _loc4_:Number = Math.max(§^!c§.§#!M§,§^!c§.§6W§);
         _loc3_.x *= _loc4_;
         _loc3_.y *= _loc4_;
         return _loc3_;
      }
      
      public function §0!y§(param1:String, param2:Number, param3:Number) : void
      {
         this.§[!E§.addObject(param1,param2,param3);
      }
      
      public function §7!u§() : void
      {
         if(this.§5!,§)
         {
            this.§5!,§.visible = true;
            this.§5!,§.alpha = 0;
         }
         this.§]!v§ = 0;
      }
      
      public function §6#§() : void
      {
         this.§=M§ = new §-!B§(§,L§.§@L§,§,L§.§^!`§);
      }
      
      public function §"!d§() : void
      {
         this.§=M§ = null;
      }
      
      public function clearLevel() : void
      {
         if(this.§%'§)
         {
            this.§%'§.dispose();
            this.§%'§ = null;
         }
         if(this.§[!E§)
         {
            this.§[!E§.dispose();
            this.§[!E§ = null;
            this.§3!S§ = null;
         }
         if(this.mLevelEngine)
         {
            if(!this.mLevelEngine.§02§)
            {
            }
            this.mLevelEngine.clear();
            this.mLevelEngine = null;
         }
         if(this.§--§)
         {
            this.§--§.clear();
            this.§--§ = null;
         }
         if(this.§;!,§)
         {
            this.§;!,§.dispose();
            this.§;!,§ = null;
         }
         if(this.§-M§)
         {
            this.§-M§.clear();
            this.§-M§ = null;
         }
         if(this.§`s§)
         {
            this.§`s§.dispose();
            this.§`s§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§14§ = 0;
         this.§[!t§ = 0;
         this.mReadyToRun = false;
         this.§@!;§ = false;
         this.§]!v§ = §,L§.§;!L§;
         if(this.§#!C§)
         {
            (this.§#!C§ as §;!b§).§#"§.x = 0;
            (this.§#!C§ as §;!b§).§#"§.y = 0;
         }
         if(this.§5!,§)
         {
            this.§5!,§.visible = false;
         }
         this.§'§ = null;
         this.§9U§ = null;
         if(this.§;-§)
         {
            this.§;-§.removeEventListener(Event.COMPLETE,this.§8!0§);
            this.§;-§.removeEventListener(Event.CANCEL,this.§0'§);
         }
         if(this.§9n§)
         {
            this.§9n§.removeEventListener(Event.COMPLETE,this.§true §);
            this.§9n§.removeEventListener(Event.CANCEL,this.§5!3§);
         }
         this.§9!L§();
         if(§else§.§^!A§)
         {
            §else§.§^!A§.color = 0;
         }
         if(this.§0!@§)
         {
            this.§0!@§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver() : void
      {
      }
      
      public function §4!=§() : String
      {
         if(this.§9U§)
         {
            return this.§9U§.toString();
         }
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         if(!this.mReadyToRun || !§else§.§9!i§())
         {
            return 0;
         }
         if(this.§'§ && this.§'§.§;,§)
         {
            return this.§4!r§(param1,param2,param3);
         }
         return this.updateWithTime(param1,true,param2,param3);
      }
      
      protected function updateWithTime(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         if(this.§>!5§)
         {
            param1 *= 0.2;
            if(§else§.§]!#§)
            {
               §else§.§]!#§.speed = 0.2;
            }
         }
         var _loc5_:Number = 0;
         this.§[!t§ += param1;
         if(param3)
         {
            this.§14§ += param1;
            _loc5_ = this.mLevelEngine.§]!O§(this.§14§);
            this.§;!,§.update(param1,param4);
            this.§14§ = _loc5_;
         }
         else
         {
            this.§[!E§.§#!#§(param1);
            this.§14§ = 0;
         }
         if(param2)
         {
            this.§ !q§(param1,_loc5_);
         }
         return param1;
      }
      
      private function §4!r§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc5_:Number = NaN;
         var _loc4_:Number = §%!;§.§4h§ * 1000;
         if(this.§'§)
         {
            param1 *= this.§'§.speed;
            _loc5_ = this.§[!t§ + param1;
            while(this.§[!t§ + _loc4_ < _loc5_)
            {
               if(this.§[!t§ + _loc4_ > this.§<B§)
               {
                  this.§'§.step(this);
                  this.§<B§ += _loc4_;
               }
               this.updateWithTime(_loc4_,false,param2,param3);
            }
            if(_loc5_ > this.§<B§ + _loc4_)
            {
               this.§'§.step(this);
               this.§<B§ += _loc4_;
            }
            if(this.§[!t§ < _loc5_)
            {
               this.updateWithTime(_loc5_ - this.§[!t§,true,param2,param3);
            }
            return param1;
         }
         return this.updateWithTime(_loc4_,true,param2,param3);
      }
      
      private function § !q§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.§%'§.update(param1);
         this.§[!E§.§'!A§(param1,param2);
         this.§=!X§();
         if(this.§]!v§ < §,L§.§;!L§)
         {
            this.§]!v§ += param1;
            _loc3_ = §,L§.§;!L§ / 2;
            _loc4_ = (-Math.abs(this.§]!v§ - _loc3_) + _loc3_) * (§,L§.§7B§ / _loc3_);
            if(this.§5!,§)
            {
               this.§5!,§.alpha = _loc4_;
            }
         }
         else if(this.§5!,§)
         {
            this.§5!,§.visible = false;
         }
         if(this.§=M§)
         {
            if(!this.§=M§.§>h§(this.§-M§,param1))
            {
               this.§"!d§();
            }
         }
         this.§-M§.§6A§(param1);
         this.mLevelEngine.§+!C§();
         this.§`s§.update(param1);
      }
      
      public function handleEngineUpdateStep(param1:Number) : void
      {
         this.objects.§#!#§(param1 * 1000);
         this.objects.§3G§(param1 * 1000);
         this.§^N§();
      }
      
      public function §=!X§() : void
      {
         var _loc1_:§`!_§ = null;
         if(this.§[!t§ > this.§2!!§ + 1000 / 30)
         {
            if(this.§1r§ != null)
            {
               for each(_loc1_ in this.§1r§)
               {
                  _loc1_.addTrail();
               }
            }
            this.§2!!§ = this.§[!t§;
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§`!_§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.§[!E§.isPigsAlive(true))
            {
               _loc2_ = this.§[!E§.§4O§(true);
               _loc2_.§7![§.mTryToScream = § 6§.§8!3§;
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§[!E§.§@Q§());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            if(this.§[!E§.isPigsAlive(true))
            {
               _loc2_ = this.§[!E§.§4O§(true);
               _loc2_.§7![§.mTryToBlink = § 6§.§;3§;
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§[!E§.§@Q§());
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §9!B§.§!!S§;
         }
         §@!6§.addScore(param1,param2);
         this.§0!@§.addScore(param1);
         if(param3 && param1 > 0 && !this.§=!J§)
         {
            this.§#z§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §#z§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §9!B§.§3=§;
         }
         this.§`s§.§#Z§(§9!B§.§?!1§,§^z§.§4!c§,§9!B§.§ x§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §?!C§(param1:§`!_§) : void
      {
         if(this.§1r§ == null)
         {
            this.§1r§ = new Array();
         }
         this.§1r§.push(param1);
      }
      
      public function useMightyEagle() : void
      {
         this.§;!,§.useMightyEagle();
         this.§[!E§.§8!7§();
         this.§=!J§ = true;
      }
      
      public function §+N§(param1:§`!_§) : void
      {
         this.§`s§.§0I§(§^z§.§[h§);
         if(this.§1r§.indexOf(param1) >= 0)
         {
            this.§1r§.splice(this.§1r§.indexOf(param1),1);
         }
         if(this.§1r§.length == 0)
         {
            this.§1r§ = null;
         }
      }
      
      public function §^!x§(param1:§>-§, param2:Number, param3:Number) : void
      {
         this.§3!S§ = this.§[!E§.addObject(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
         var _loc4_:Number = param1.name.toUpperCase() == "BIRD_GREEN" ? Number(§8![§.BIRD_LAUNCH_FORCE_GREEN) : Number(§8![§.BIRD_LAUNCH_FORCE);
         if(param1.§8f§ > 1)
         {
            this.§3!S§.§=!K§(param1.§8f§);
            this.§3!S§.§7![§.§7!c§();
         }
         if(param1.§@N§ != 0)
         {
            _loc4_ = param1.§@N§;
         }
         var _loc5_:Number = -_loc4_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc6_:Number = _loc4_ * param2 * Math.sin(param3 / (180 / Math.PI));
         this.§3!S§.§=!`§(new b2Vec2(_loc5_,_loc6_),false,true);
         this.camera.§+!T§(§#!Y§.§use§);
         if(this.§9U§)
         {
            this.§9U§.§^!x§(this.mLevelEngine.§"!$§,param1.x,param1.y,param2,param3);
         }
      }
      
      public function activatePowerup() : void
      {
         this.§@!;§ = true;
      }
      
      private function §^N§() : void
      {
         if(!this.§@!;§)
         {
            return;
         }
         this.§@!;§ = false;
         if(this.activeObject is §0d§ && !(this.activeObject as §0d§).§9!J§)
         {
            if(this.activeObject.activateSpecialPower(this.§;n§))
            {
               this.§6u§ = true;
            }
         }
         else
         {
            this.§[!E§.§%!K§();
         }
         if(this.§9U§)
         {
            this.§9U§.§7!x§(this.mLevelEngine.§"!$§);
         }
      }
      
      public function §4!l§() : void
      {
         this.§[!E§.§4!l§();
      }
      
      public function §;T§() : void
      {
         this.§[!E§.§1%§();
      }
      
      public function §"M§() : § y§
      {
         var _loc1_:§ y§ = new § y§();
         _loc1_.§+h§ = this.§0!l§.§+h§;
         _loc1_.§3!4§ = this.§0!l§.§3!4§;
         this.§-M§.§?!3§(_loc1_);
         this.§[!E§.§>V§(_loc1_);
         this.§;!,§.§'@§(_loc1_);
         _loc1_.theme = this.§%'§.§"c§();
         return _loc1_;
      }
      
      public function §1!5§() : int
      {
         return this.§0!l§.§3!4§;
      }
      
      public function §4s§() : int
      {
         return this.§0!l§.§+h§;
      }
      
      public function §5!U§(param1:int) : void
      {
         this.§0!l§.§3!4§ = param1;
      }
      
      public function §0!e§(param1:int) : void
      {
         this.§0!l§.§+h§ = param1;
      }
      
      public function §;X§(param1:Number, param2:Number) : void
      {
         if(this.§^V§)
         {
            this.§^V§.§;!W§(param1,param2);
         }
         if(this.§-M§)
         {
            this.§-M§.§6A§(0);
         }
      }
      
      public function get §4V§() : § y§
      {
         return this.§0!l§;
      }
      
      public function get §;n§() : §>!e§
      {
         return this.§[!E§;
      }
      
      protected function get starling() : §else§
      {
         return this.§3!<§;
      }
      
      public function get §>F§() : int
      {
         return §3!b§;
      }
   }
}
