package §3,§
{
   import §!!,§.§7&§;
   import §!"8§.b2Vec2;
   import §'_§.§5!;§;
   import §'_§.§5!P§;
   import §'_§.§9V§;
   import §'_§.§=!&§;
   import §+"6§.§5!H§;
   import §+I§.§9!%§;
   import §-I§.§-%§;
   import §0!?§.§'!$§;
   import §0Q§.§else §;
   import §3!Z§.§,>§;
   import §3!Z§.§5!$§;
   import §9!H§.§<!s§;
   import §<!<§.§,V§;
   import §?"<§.§&!B§;
   import §?"<§.§5!!§;
   import §?"<§.§<"!§;
   import §[!z§.§ "#§;
   import §[!z§.§!"=§;
   import §[!z§.§7;§;
   import §[!z§.LevelManager;
   import §]&§.DisplayObject;
   import §]&§.Sprite;
   import §^!s§.§&!t§;
   import §^6§.§0!w§;
   import §`!$§.§0$§;
   import §`!$§.§?W§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §[!;§
   {
      
      private static const §1P§:int = 20;
      
      public static const §=!n§:Number = §9!%§.§^3§;
      
      public static const §%F§:Number = §9!%§.§&"$§;
      
      public static const §4!O§:Number = 1 / 20;
      
      public static const §+E§:Number = §9!%§.§&"$§ * §4!O§;
      
      public static const §5!0§:Number = §=!n§ * §4!O§;
      
      public static const §%"§:§,V§ = new §,V§(13 - 3);
      
      public static var §8a§:Number = 1;
      
      protected static var §7!§:String = §!"=§.§7!s§;
       
      
      protected var §8"7§:§=!&§;
      
      private var §3_§:§9V§;
      
      private var §?r§:Array = null;
      
      protected var §5"+§:§&!t§;
      
      public var mLevelEngine:§^!#§;
      
      protected var §%"8§:§+" §;
      
      protected var §#!@§:§0!w§;
      
      protected var §+P§:§,!;§;
      
      protected var §-G§:§,>§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §?!F§:Boolean = false;
      
      protected var §;!i§:Boolean = false;
      
      protected var §%!F§:Boolean = false;
      
      public var §&R§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §7§:Number;
      
      public var §-!3§:Number;
      
      private var §]e§:Number;
      
      public var §7F§:§ "#§;
      
      public var §=@§:Boolean = false;
      
      private var §1!4§:§"z§;
      
      private var §!J§:Sprite;
      
      protected var §2+§:§!"=§;
      
      protected var §<Z§:§-%§ = null;
      
      private var §"o§:EventDispatcher;
      
      private var §'!g§:Array;
      
      private var §+!v§:Array;
      
      protected var §5!§:§5!H§;
      
      private var §9!D§:§7&§;
      
      protected var §9s§:§<"!§;
      
      protected var §;!z§:§&!B§;
      
      private var §?j§:§5!!§;
      
      private var §6w§:§5!!§;
      
      private var §7[§:§5!!§;
      
      private var §"""§:Stage;
      
      private var §=!w§:§+;§;
      
      protected var §<=§:§else §;
      
      protected var §!!u§:§else §;
      
      protected var § !c§:Number = 0.0;
      
      protected var §8!;§:String;
      
      private var §2^§:Boolean;
      
      protected var §=K§:Boolean;
      
      protected var §2!j§:uint = 1.417339207E9;
      
      public var §0!X§:Boolean;
      
      public function §[!;§(param1:Stage)
      {
         this.§+!v§ = [];
         super();
         this.§"o§ = new EventDispatcher();
         this.§7F§ = new § "#§();
         this.§"""§ = param1;
         this.§9s§ = §<"!§.§8c§;
         this.§;!z§ = this.initAnimationManager(this.§9s§);
         this.§?j§ = this.initThemeGraphicsManager();
         this.§6w§ = this.initThemeSoundsManager();
         this.§7[§ = this.initCutSceneManager();
         var _loc2_:Stage3D = param1.stage3Ds[0];
         this.§5!§ = new §5!H§(§"z§,param1,new Rectangle(0,0,§9!%§.§^3§,§9!%§.§&"$§),_loc2_);
         §9!%§.§ !W§.addEventListener(Event.ENTER_FRAME,this.§5!§.onEnterFrame);
         _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§0"<§,false,0,true);
         this.§5!§.§2v§ = false;
         this.§5!§.enableErrorChecking = false;
         this.§5!§.§3!t§ = 2;
         this.§5!§.§'!w§();
      }
      
      public static function §?!K§(param1:§9V§, param2:§9V§) : Number
      {
         var _loc3_:Number = param1.§'$§ - param2.§'$§;
         var _loc4_:Number = param1.§33§ - param2.§33§;
         return §`q§(_loc3_,_loc4_);
      }
      
      public static function §`q§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         if(!this.§!J§ && this.§?"A§)
         {
            this.§!J§ = this.§1!4§.§;!c§;
         }
         return this.§!J§;
      }
      
      public function get §?"A§() : Sprite
      {
         if(!this.§1!4§)
         {
            this.§1!4§ = this.§5!§.§16§ as §"z§;
            this.§1!4§.§3!5§ = false;
         }
         return this.§1!4§;
      }
      
      private function get §9!A§() : DisplayObject
      {
         if(this.§?"A§)
         {
            return (this.§?"A§ as §"z§).§9!A§;
         }
         return null;
      }
      
      public function get animationManager() : §&!B§
      {
         return this.§;!z§;
      }
      
      public function get textureManager() : §<"!§
      {
         return this.§9s§;
      }
      
      public function get camera() : §0!w§
      {
         return this.§#!@§;
      }
      
      public function get objects() : §=!&§
      {
         return this.§8"7§;
      }
      
      public function get particles() : §,>§
      {
         return this.§-G§;
      }
      
      public function get background() : §&!t§
      {
         return this.§5"+§;
      }
      
      public function get slingshot() : §,!;§
      {
         return this.§+P§;
      }
      
      public function get activeObject() : §9V§
      {
         return this.§3_§;
      }
      
      public function get §1!>§() : §+" §
      {
         return this.§%"8§;
      }
      
      public function get stage() : Stage
      {
         return this.§"""§;
      }
      
      public function get §'!,§() : §5!!§
      {
         return this.§7[§;
      }
      
      protected function get §>!v§() : §5!!§
      {
         return this.§?j§;
      }
      
      public function set activeObject(param1:§9V§) : void
      {
         this.§3_§ = param1;
      }
      
      public function set §4F§(param1:Boolean) : void
      {
         this.§=K§ = param1;
      }
      
      public function clear() : void
      {
         if(this.§9!D§)
         {
            this.§9!D§.dispose();
         }
         if(this.§9s§)
         {
            this.§9s§.dispose();
         }
         if(this.§?j§ && this.§?j§.textureManager)
         {
            this.§?j§.textureManager.dispose();
         }
         if(this.§7[§ && this.§7[§.textureManager)
         {
            this.§7[§.textureManager.dispose();
         }
         if(this.§5!§)
         {
            this.§5!§.dispose();
         }
      }
      
      protected function initThemeGraphicsManager() : §5!!§
      {
         return null;
      }
      
      protected function initThemeSoundsManager() : §5!!§
      {
         return null;
      }
      
      protected function initCutSceneManager() : §5!!§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§<"!§) : §&!B§
      {
         return new §&!B§(param1);
      }
      
      public function §5"!§(param1:Boolean) : void
      {
         if(§5!H§.§%n§)
         {
            if(param1)
            {
               §5!H§.§%n§.start();
            }
            else
            {
               §5!H§.§%n§.stop();
               §5!H§.§%n§.color = 0;
            }
         }
      }
      
      public function § if§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function setController(param1:§-%§) : void
      {
         if(this.§<Z§ != null)
         {
            this.§<Z§.removeEventListeners();
         }
         this.§<Z§ = param1;
         if(this.mReadyToRun)
         {
            this.§<Z§.addEventListeners();
         }
      }
      
      public function §<!b§() : §else §
      {
         return this.§<=§;
      }
      
      public function §="6§(param1:§7&§, param2:Array, param3:Function) : void
      {
         this.§9!D§ = param1;
         var _loc4_:int = this.§9!D§.§7!l§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§9s§.§%!E§(this.§9!D§.§-"A§(_loc5_));
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§"o§.addEventListener(Event.INIT,param3);
            this.§+!v§.push(param3);
         }
         if(this.§>d§(param2))
         {
            this.§3!v§();
         }
      }
      
      private function §>d§(param1:Array) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.§9s§.§5,§())
         {
            _loc2_ = this.§9s§.§0Z§ / 1000;
            _loc3_ = this.§9s§.§"!#§ / 1000;
            §'!$§.log("\n\nMain texture manager memory usage:\n   textures " + _loc2_ + " kilobytes\n   bitmaps " + _loc3_ + " kilobytes\n\n");
            this.initializeAnimations(param1);
            return true;
         }
         this.§'!g§ = param1.concat();
         return false;
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         this.§;!z§.initializeAnimations(param1);
      }
      
      private function §0"<§(param1:Event) : void
      {
         this.§9s§.§06§();
         if(this.§>!v§ && this.§>!v§.textureManager)
         {
            this.§>!v§.textureManager.§06§();
         }
         if(this.§'!,§ && this.§'!,§.textureManager)
         {
            this.§'!,§.textureManager.§06§();
         }
         if(this.§'!g§)
         {
            this.§>d§(this.§'!g§);
            this.§'!g§ = null;
            this.§3!v§();
         }
         if(this.§<Z§ != null && this.mReadyToRun)
         {
            this.§<Z§.addEventListeners();
         }
         if(this.§?j§)
         {
            this.§?j§.§5,§();
         }
         if(this.§7[§)
         {
            if(this.§7[§.textureManager)
            {
               this.§7[§.textureManager.§06§();
               this.§7[§.§5,§();
            }
         }
      }
      
      private function §3!v§() : void
      {
         this.§"o§.dispatchEvent(new Event(Event.INIT));
         this.§!=§();
      }
      
      private function §!=§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§+!v§)
         {
            this.§"o§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§+!v§ = [];
      }
      
      public function init(param1:§!"=§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§%"8§ = new §+" §(this,param1);
         this.§#!@§ = this.§^!K§(param1);
         this.§7§ = 0;
         this.§-!3§ = 0;
         this.§]e§ = 0;
         this.§2^§ = false;
         this.mReadyToRun = false;
         this.§?!F§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         §7!§ = param1.theme;
         this.§2+§ = param1;
         this.§;!i§ = this.§2!s§(param1.theme);
         this.§%!F§ = this.§7"<§(param1.theme);
         if(this.§;!i§ && this.§%!F§)
         {
            this.initialize(param1);
         }
         else
         {
            this.§="0§(param1.theme);
         }
         this.§3!I§();
         §!" §.init();
      }
      
      protected function §3!I§() : void
      {
         this.§<=§ = new §else §(LevelManager.§[!<§);
      }
      
      protected function §2!s§(param1:String) : Boolean
      {
         if(this.§?j§)
         {
            return false;
         }
         return true;
      }
      
      protected function §7"<§(param1:String) : Boolean
      {
         var _loc2_:§0$§ = null;
         if(this.§6w§)
         {
            _loc2_ = §?W§.§=&§(param1);
            if(_loc2_)
            {
               if(_loc2_.§?!Y§ && !this.§6w§.§?!=§(_loc2_.§?!Y§))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function §="0§(param1:String) : void
      {
         var _loc2_:§0$§ = null;
         if(this.§?j§ && !this.§2!s§(param1))
         {
            this.§?j§.removeEventListener(Event.COMPLETE,this.§;9§);
            this.§?j§.removeEventListener(Event.CANCEL,this.§`2§);
            this.§?j§.addEventListener(Event.COMPLETE,this.§;9§);
            this.§?j§.addEventListener(Event.CANCEL,this.§`2§);
            this.§?j§.§@"0§(param1);
         }
         if(this.§6w§ && !this.§7"<§(param1))
         {
            this.§6w§.removeEventListener(Event.COMPLETE,this.§^+§);
            this.§6w§.removeEventListener(Event.CANCEL,this.§]!E§);
            this.§6w§.addEventListener(Event.COMPLETE,this.§^+§);
            this.§6w§.addEventListener(Event.CANCEL,this.§]!E§);
            _loc2_ = §?W§.§=&§(param1);
            if(_loc2_)
            {
               this.§6w§.§@"0§(_loc2_.§?!Y§);
            }
         }
      }
      
      private function §;9§(param1:Event) : void
      {
         this.§?j§.removeEventListener(Event.COMPLETE,this.§;9§);
         this.§?j§.removeEventListener(Event.CANCEL,this.§`2§);
         this.§;!i§ = true;
         if(this.§;!i§ && this.§%!F§)
         {
            this.initialize(this.§2+§);
         }
      }
      
      private function §`2§(param1:Event) : void
      {
         this.§?j§.removeEventListener(Event.COMPLETE,this.§;9§);
         this.§?j§.removeEventListener(Event.CANCEL,this.§`2§);
         this.§?!F§ = true;
      }
      
      private function §^+§(param1:Event) : void
      {
         this.§?j§.removeEventListener(Event.COMPLETE,this.§^+§);
         this.§?j§.removeEventListener(Event.CANCEL,this.§]!E§);
         this.§%!F§ = true;
         if(this.§;!i§ && this.§%!F§)
         {
            this.initialize(this.§2+§);
         }
      }
      
      private function §]!E§(param1:Event) : void
      {
         this.§?j§.removeEventListener(Event.COMPLETE,this.§^+§);
         this.§?j§.removeEventListener(Event.CANCEL,this.§]!E§);
         this.§%!F§ = true;
         if(this.§;!i§ && this.§%!F§)
         {
            this.initialize(this.§2+§);
         }
      }
      
      public function get backgroundTextureManager() : §<"!§
      {
         return this.§9s§;
      }
      
      protected function initialize(param1:§!"=§) : void
      {
         this.§=K§ = false;
         this.§0!X§ = false;
         if(§5!H§.§1f§)
         {
            §5!H§.§1f§.speed = 1;
         }
         this.mLevelEngine = new §^!#§(this);
         this.§5"+§ = this.initLevelBackground(param1.theme,this.§%"8§.§[_§ / §4!O§,this.backgroundTextureManager,this.§#!@§.§!";§());
         this.§5"+§.§!`§(§9!%§.§3"%§());
         this.§8"7§ = this.initLevelObjectManager(param1);
         this.§+P§ = this.initLevelSlingshot(param1);
         this.§-G§ = this.§'<§(this.§;!z§,this.§9s§);
         this.§#!@§.init();
         this.§>D§();
         this.§"!&§();
         this.mReadyToRun = true;
         if(this.§<Z§)
         {
            this.§<Z§.addEventListeners();
         }
      }
      
      protected function §"!&§() : void
      {
         if(this.§8!;§)
         {
            this.§!!u§ = §else §.initialize(this.§8!;§);
            this.§!!u§.speed = 1;
            this.§!!u§.play();
            this.§ !c§ = -1000;
            this.§8!;§ = null;
         }
      }
      
      public function §2!U§(param1:String) : void
      {
         this.§8!;§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§!!u§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§!!u§)
         {
            if(param1)
            {
               this.§!!u§.speed = Math.min(this.§!!u§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§!!u§.speed = Math.max(this.§!!u§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§!!u§)
         {
            this.§!!u§.speed = 1;
         }
      }
      
      protected function initLevelObjectManager(param1:§!"=§) : §=!&§
      {
         return new §=!&§(this,param1,new Sprite());
      }
      
      protected function §^!K§(param1:§!"=§) : §0!w§
      {
         return new §0!w§(this,param1);
      }
      
      protected function initLevelBackground(param1:String, param2:Number, param3:§<"!§, param4:Number) : §&!t§
      {
         return new §&!t§(param1,param2,param3,param4);
      }
      
      protected function initLevelSlingshot(param1:§!"=§) : §,!;§
      {
         return new §,!;§(this,param1,new Sprite());
      }
      
      protected function §'<§(param1:§&!B§, param2:§<"!§) : §,>§
      {
         return new §,>§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§!"=§ = this.§4!1§();
         var _loc4_:§7;§;
         (_loc4_ = new §7;§()).left = 0;
         _loc4_.top = -§0!w§.§"!B§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §0!w§.§"!B§;
         _loc4_.right = _loc4_.left + §0!w§.§@6§;
         _loc4_.y = -13.929;
         _loc4_.x = §0!w§.§@6§;
         _loc4_.id = §0!w§.§6"6§;
         _loc3_.§@!G§(_loc4_);
         var _loc5_:§7;§;
         (_loc5_ = new §7;§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §0!w§.§@6§;
         _loc5_.bottom = _loc5_.top + §0!w§.§"!B§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §0!w§.§@6§ / 2;
         _loc5_.id = §0!w§.§1!h§;
         _loc3_.§@!G§(_loc5_);
         this.§5f§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§7!§ != null)
         {
            _loc3_.theme = §7!§;
         }
         this.init(_loc3_);
      }
      
      protected function §5f§(param1:§!"=§, param2:Boolean) : void
      {
         if(param2)
         {
            this.§%!B§(param1);
         }
      }
      
      protected function §4!1§() : §!"=§
      {
         var _loc1_:§!"=§ = new §!"=§();
         _loc1_.§<C§ = -12;
         return new §!"=§();
      }
      
      protected function §#!_§() : Number
      {
         this.§2!j§ ^= this.§2!j§ << 21;
         this.§2!j§ ^= this.§2!j§ >>> 35;
         this.§2!j§ ^= this.§2!j§ << 4;
         return this.§2!j§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §%!B§(param1:§!"=§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§<!s§ = null;
         this.§2!j§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§#!_§() * 5;
               (_loc5_ = new §<!s§()).x = 30 + _loc3_ * 10 + this.§#!_§() * 9;
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
                  _loc5_.angle = 45 - this.§#!_§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§#!_§() * 3 - _loc3_ * 8;
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
                  _loc5_.angle = this.§#!_§() * 360;
               }
               param1.addObject(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      private function § set§() : void
      {
      }
      
      public function §>D§() : void
      {
         if(§&!t§.§%""§)
         {
            this.§;D§(this.§5"+§.§0p§,false);
         }
         this.§;D§(this.§-G§.§>`§(§,>§.§=1§),false);
         this.§;D§(this.§-G§.§>`§(§,>§.§2"=§),true);
         this.§;D§(this.§-G§.§>`§(§,>§.§ else§),true);
         this.§;D§(this.§8"7§.§%!I§,true);
         this.§;D§(this.§+P§.sprite,true);
         this.§;D§(this.§-G§.§>`§(§,>§.§^!<§),true);
         this.§;D§(this.§5"+§.§2p§,false);
         if(§&!t§.§%""§)
         {
            this.§;D§(this.§5"+§.§3M§,false);
         }
         this.§;D§(this.§-G§.§>`§(§,>§.§,L§),true);
      }
      
      private function §;D§(param1:Sprite, param2:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(param1);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         param1 /= §9!%§.§=!f§;
         param2 /= §9!%§.§=!f§;
         _loc3_.x = (param1 / §0!w§.§7![§ + this.§#!@§.§=l§ - §0!w§.§4!b§ / §0!w§.§7![§) * §4!O§;
         _loc3_.y = (param2 / §0!w§.§7![§ + this.§#!@§.§'w§ - §0!w§.§2!b§ / §0!w§.§7![§) * §4!O§;
         return _loc3_;
      }
      
      public function §%"!§(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / §4!O§ + §0!w§.§4!b§ / §0!w§.§7![§ - this.§#!@§.§=l§) * §0!w§.§7![§;
         _loc3_.y = (param2 / §4!O§ + §0!w§.§2!b§ / §0!w§.§7![§ - this.§#!@§.§'w§) * §0!w§.§7![§;
         var _loc4_:Number = Math.max(§9!%§.§=!f§,§9!%§.§,9§);
         _loc3_.x *= _loc4_;
         _loc3_.y *= _loc4_;
         return _loc3_;
      }
      
      public function §-$§(param1:String, param2:Number, param3:Number) : void
      {
         this.§8"7§.addObject(param1,param2,param3);
      }
      
      public function §8o§() : void
      {
         if(this.§9!A§)
         {
            this.§9!A§.visible = true;
            this.§9!A§.alpha = 0;
         }
         this.§&R§ = 0;
      }
      
      public function §;!R§() : void
      {
         this.§=!w§ = new §+;§(§`a§.§-B§,§`a§.§`c§);
      }
      
      public function §19§() : void
      {
         this.§=!w§ = null;
      }
      
      public function clearLevel() : void
      {
         if(this.§5"+§)
         {
            this.§5"+§.dispose();
            this.§5"+§ = null;
         }
         if(this.§8"7§)
         {
            this.§8"7§.dispose();
            this.§8"7§ = null;
            this.§3_§ = null;
         }
         if(this.mLevelEngine)
         {
            if(!this.mLevelEngine.§0"2§)
            {
            }
            this.mLevelEngine.clear();
            this.mLevelEngine = null;
         }
         if(this.§%"8§)
         {
            this.§%"8§.clear();
            this.§%"8§ = null;
         }
         if(this.§+P§)
         {
            this.§+P§.dispose();
            this.§+P§ = null;
         }
         if(this.§#!@§)
         {
            this.§#!@§.clear();
            this.§#!@§ = null;
         }
         if(this.§-G§)
         {
            this.§-G§.dispose();
            this.§-G§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§7§ = 0;
         this.§-!3§ = 0;
         this.mReadyToRun = false;
         this.§2^§ = false;
         this.§&R§ = §`a§.§1!x§;
         if(this.§?"A§)
         {
            (this.§?"A§ as §"z§).§5!2§.x = 0;
            (this.§?"A§ as §"z§).§5!2§.y = 0;
         }
         if(this.§9!A§)
         {
            this.§9!A§.visible = false;
         }
         this.§!!u§ = null;
         this.§<=§ = null;
         if(this.§?j§)
         {
            this.§?j§.removeEventListener(Event.COMPLETE,this.§;9§);
            this.§?j§.removeEventListener(Event.CANCEL,this.§`2§);
         }
         if(this.§6w§)
         {
            this.§6w§.removeEventListener(Event.COMPLETE,this.§^+§);
            this.§6w§.removeEventListener(Event.CANCEL,this.§]!E§);
         }
         this.§!=§();
         if(§5!H§.§%n§)
         {
            §5!H§.§%n§.color = 0;
         }
         if(this.§<Z§)
         {
            this.§<Z§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver() : void
      {
      }
      
      public function §@!K§() : String
      {
         if(this.§<=§)
         {
            return this.§<=§.toString();
         }
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         if(!this.mReadyToRun || !§5!H§.include())
         {
            return 0;
         }
         if(this.§!!u§ && this.§!!u§.§^^§)
         {
            return this.§1@§(param1,param2,param3);
         }
         return this.updateWithTime(param1,true,param2,param3);
      }
      
      protected function updateWithTime(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         if(this.§=K§)
         {
            param1 *= 0.2;
            if(§5!H§.§1f§)
            {
               §5!H§.§1f§.speed = 0.2;
            }
         }
         var _loc5_:Number = 0;
         this.§-!3§ += param1;
         if(param3)
         {
            this.§7§ += param1;
            _loc5_ = this.mLevelEngine.§1G§(this.§7§);
            this.§+P§.update(param1,param4);
            this.§7§ = _loc5_;
         }
         else
         {
            this.§8"7§.§[!m§(param1);
            this.§7§ = 0;
         }
         if(param2)
         {
            this.§@"7§(param1,_loc5_);
         }
         return param1;
      }
      
      private function §1@§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc5_:Number = NaN;
         var _loc4_:Number = §^!#§.§&!Q§ * 1000;
         if(this.§!!u§)
         {
            param1 *= this.§!!u§.speed;
            _loc5_ = this.§-!3§ + param1;
            while(this.§-!3§ + _loc4_ < _loc5_)
            {
               if(this.§-!3§ + _loc4_ > this.§ !c§)
               {
                  this.§!!u§.step(this);
                  this.§ !c§ += _loc4_;
               }
               this.updateWithTime(_loc4_,false,param2,param3);
            }
            if(_loc5_ > this.§ !c§ + _loc4_)
            {
               this.§!!u§.step(this);
               this.§ !c§ += _loc4_;
            }
            if(this.§-!3§ < _loc5_)
            {
               this.updateWithTime(_loc5_ - this.§-!3§,true,param2,param3);
            }
            return param1;
         }
         return this.updateWithTime(_loc4_,true,param2,param3);
      }
      
      private function §@"7§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.§5"+§.update(param1);
         this.§8"7§.§-!z§(param1,param2);
         this.§0§();
         if(this.§&R§ < §`a§.§1!x§)
         {
            this.§&R§ += param1;
            _loc3_ = §`a§.§1!x§ / 2;
            _loc4_ = (-Math.abs(this.§&R§ - _loc3_) + _loc3_) * (§`a§.§`l§ / _loc3_);
            if(this.§9!A§)
            {
               this.§9!A§.alpha = _loc4_;
            }
         }
         else if(this.§9!A§)
         {
            this.§9!A§.visible = false;
         }
         if(this.§=!w§)
         {
            if(!this.§=!w§.§?"=§(this.§#!@§,param1))
            {
               this.§19§();
            }
         }
         this.§#!@§.§2"5§(param1);
         this.mLevelEngine.§]]§();
         this.§-G§.update(param1);
      }
      
      public function handleEngineUpdateStep(param1:Number) : void
      {
         this.objects.§[!m§(param1 * 1000);
         this.objects.§@!B§(param1 * 1000);
         this.§%!c§();
      }
      
      public function §0§() : void
      {
         var _loc1_:§9V§ = null;
         if(this.§-!3§ > this.§]e§ + 1000 / 30)
         {
            if(this.§?r§ != null)
            {
               for each(_loc1_ in this.§?r§)
               {
                  _loc1_.addTrail();
               }
            }
            this.§]e§ = this.§-!3§;
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§9V§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.§8"7§.isPigsAlive(true))
            {
               _loc2_ = this.§8"7§.§,!7§(true);
               _loc2_.§@!'§.mTryToScream = §5!;§.§9!8§;
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§8"7§.§^"!§());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            if(this.§8"7§.isPigsAlive(true))
            {
               _loc2_ = this.§8"7§.§,!7§(true);
               _loc2_.§@!'§.mTryToBlink = §5!;§.§<p§;
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§8"7§.§^"!§());
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §5!$§.§8&§;
         }
         §!" §.addScore(param1,param2);
         this.§<Z§.addScore(param1);
         if(param3 && param1 > 0 && !this.§0!X§)
         {
            this.§`&§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §`&§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §5!$§.§?!'§;
         }
         this.§-G§.§&!J§(§5!$§.§]M§,§,>§.§,L§,§5!$§.§6!=§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §`s§(param1:§9V§) : void
      {
         if(this.§?r§ == null)
         {
            this.§?r§ = new Array();
         }
         this.§?r§.push(param1);
      }
      
      public function useMightyEagle() : void
      {
         this.§+P§.useMightyEagle();
         this.§8"7§.§^W§();
         this.§0!X§ = true;
      }
      
      public function §4y§(param1:§9V§) : void
      {
         this.§-G§.§;!A§(§,>§.§=1§);
         if(this.§?r§.indexOf(param1) >= 0)
         {
            this.§?r§.splice(this.§?r§.indexOf(param1),1);
         }
         if(this.§?r§.length == 0)
         {
            this.§?r§ = null;
         }
      }
      
      public function §#!4§(param1:§-!K§, param2:Number, param3:Number) : void
      {
         this.§3_§ = this.§8"7§.addObject(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
         var _loc4_:Number = param1.name.toUpperCase() == "BIRD_GREEN" ? Number(§,!;§.BIRD_LAUNCH_FORCE_GREEN) : Number(§,!;§.BIRD_LAUNCH_FORCE);
         if(param1.§>B§ > 1)
         {
            this.§3_§.§9v§(param1.§>B§);
            this.§3_§.§@!'§.§@"!§();
         }
         if(param1.§6!8§ != 0)
         {
            _loc4_ = param1.§6!8§;
         }
         var _loc5_:Number = -_loc4_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc6_:Number = _loc4_ * param2 * Math.sin(param3 / (180 / Math.PI));
         this.§3_§.§`A§(new b2Vec2(_loc5_,_loc6_),false,true);
         this.camera.§0!z§(§0!w§.§3!f§);
         if(this.§<=§)
         {
            this.§<=§.§#!4§(this.mLevelEngine.§3!o§,param1.x,param1.y,param2,param3);
         }
      }
      
      public function activatePowerup() : void
      {
         this.§2^§ = true;
      }
      
      private function §%!c§() : void
      {
         if(!this.§2^§)
         {
            return;
         }
         this.§2^§ = false;
         if(this.activeObject is §5!P§ && !(this.activeObject as §5!P§).§ p§)
         {
            if(this.activeObject.activateSpecialPower(this.§3!=§))
            {
               this.§=@§ = true;
            }
         }
         else
         {
            this.§8"7§.§%" §();
         }
         if(this.§<=§)
         {
            this.§<=§.§1"A§(this.mLevelEngine.§3!o§);
         }
      }
      
      public function §=c§() : void
      {
         this.§8"7§.§=c§();
      }
      
      public function §7Q§() : void
      {
         this.§8"7§.§&!b§();
      }
      
      public function §@W§() : §!"=§
      {
         var _loc1_:§!"=§ = new §!"=§();
         _loc1_.§ "3§ = this.§2+§.§ "3§;
         _loc1_.§5!V§ = this.§2+§.§5!V§;
         this.§#!@§.§<3§(_loc1_);
         this.§8"7§.§5!k§(_loc1_);
         this.§+P§.§@"6§(_loc1_);
         _loc1_.theme = this.§5"+§.§;!Y§();
         return _loc1_;
      }
      
      public function §2! §() : int
      {
         return this.§2+§.§5!V§;
      }
      
      public function §^"-§() : int
      {
         return this.§2+§.§ "3§;
      }
      
      public function §?"!§(param1:int) : void
      {
         this.§2+§.§5!V§ = param1;
      }
      
      public function §>!j§(param1:int) : void
      {
         this.§2+§.§ "3§ = param1;
      }
      
      public function §=!p§(param1:Number, param2:Number) : void
      {
         if(this.§1!4§)
         {
            this.§1!4§.§>"'§(param1,param2);
         }
         if(this.§#!@§)
         {
            this.§#!@§.§2"5§(0);
         }
      }
      
      public function get §1W§() : §!"=§
      {
         return this.§2+§;
      }
      
      public function get §3!=§() : §=!&§
      {
         return this.§8"7§;
      }
      
      protected function get starling() : §5!H§
      {
         return this.§5!§;
      }
      
      public function get §5!8§() : int
      {
         return §1P§;
      }
   }
}
