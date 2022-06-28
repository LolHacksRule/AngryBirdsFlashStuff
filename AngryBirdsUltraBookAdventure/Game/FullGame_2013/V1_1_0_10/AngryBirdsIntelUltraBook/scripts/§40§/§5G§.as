package §40§
{
   import § ! §.§=!%§;
   import § ! §.§>p§;
   import § var§.§ 4§;
   import § var§.§!u§;
   import § var§.§3!5§;
   import § var§.§7!r§;
   import §"!i§.§"!'§;
   import §"!i§.§8!o§;
   import §"!i§.§8z§;
   import §"!i§.LevelManager;
   import §&H§.b2Vec2;
   import §1!B§.§<m§;
   import §2@§.§%E§;
   import §2@§.§+!Y§;
   import §2m§.§<!?§;
   import §48§.§5Y§;
   import §5!Q§.§`!Y§;
   import §5<§.§<n§;
   import §8!A§.§-!i§;
   import §;!y§.§,!s§;
   import §<-§.§2B§;
   import §<8§.§,!J§;
   import §=`§.§ !;§;
   import §=`§.§6!I§;
   import §=`§.§7!V§;
   import §`!M§.§%X§;
   import §`g§.DisplayObject;
   import §`g§.Sprite;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §5G§
   {
      
      private static const §@c§:int = 20;
      
      public static const §&!d§:Number = §,!s§.§!"#§;
      
      public static const §;7§:Number = §,!s§.§8p§;
      
      public static const §6+§:Number = 1 / 20;
      
      public static const §1V§:Number = §,!s§.§8p§ * §6+§;
      
      public static const §;9§:Number = §&!d§ * §6+§;
      
      public static const §'!4§:§2B§ = new §2B§(13 - 3);
      
      public static var § !T§:Number = 1;
      
      protected static var §>!F§:String = §"!'§.§0D§;
       
      
      protected var §0!A§:§ 4§;
      
      private var §1z§:§!u§;
      
      private var §"b§:Array = null;
      
      protected var §5!j§:§-!i§;
      
      public var mLevelEngine:§?S§;
      
      protected var §0B§:§[l§;
      
      protected var §+!#§:§%X§;
      
      protected var §@!4§:§1!g§;
      
      protected var §8!e§:§=!%§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §+T§:Boolean = false;
      
      protected var §-!Y§:Boolean = false;
      
      protected var §'!>§:Boolean = false;
      
      public var §9!u§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §7;§:Number;
      
      public var §0!6§:Number;
      
      private var §?!z§:Number;
      
      public var §!!M§:§8!o§;
      
      public var §[!f§:Boolean = false;
      
      private var §""$§:§,!F§;
      
      private var §"w§:Sprite;
      
      protected var §=g§:§"!'§;
      
      protected var §>!j§:§5Y§ = null;
      
      private var §6t§:EventDispatcher;
      
      private var §"!s§:Array;
      
      private var §#N§:Array;
      
      protected var §+X§:§<!?§;
      
      private var §6L§:§,!J§;
      
      protected var §&!k§:§6!I§;
      
      protected var §1H§:§7!V§;
      
      private var §%!V§:§ !;§;
      
      private var §<p§:§ !;§;
      
      private var §[p§:§ !;§;
      
      private var §@e§:Stage;
      
      private var §+!B§:§73§;
      
      protected var §%!^§:§`!Y§;
      
      protected var §6!<§:§`!Y§;
      
      protected var §-"#§:Number = 0.0;
      
      protected var §?W§:String;
      
      private var §!2§:Boolean;
      
      protected var §]M§:Boolean;
      
      protected var §%!?§:uint = 1.417339207E9;
      
      public var §^7§:Boolean;
      
      public function §5G§(param1:Stage)
      {
         this.§#N§ = [];
         super();
         this.§6t§ = new EventDispatcher();
         this.§!!M§ = new §8!o§();
         this.§@e§ = param1;
         this.§&!k§ = §6!I§.§[U§;
         this.§1H§ = this.initAnimationManager(this.§&!k§);
         this.§%!V§ = this.initThemeGraphicsManager();
         this.§<p§ = this.initThemeSoundsManager();
         this.§[p§ = this.initCutSceneManager();
         var _loc2_:Stage3D = param1.stage3Ds[0];
         this.§+X§ = new §<!?§(§,!F§,param1,new Rectangle(0,0,§,!s§.§!"#§,§,!s§.§8p§),_loc2_);
         §,!s§.§]!J§.addEventListener(Event.ENTER_FRAME,this.§+X§.onEnterFrame);
         _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§%!y§,false,0,true);
         this.§+X§.§>B§ = false;
         this.§+X§.enableErrorChecking = false;
         this.§+X§.§^!^§ = 2;
         this.§+X§.§>F§();
      }
      
      public static function §7!g§(param1:§!u§, param2:§!u§) : Number
      {
         var _loc3_:Number = param1.§`!v§ - param2.§`!v§;
         var _loc4_:Number = param1.§&x§ - param2.§&x§;
         return §0!o§(_loc3_,_loc4_);
      }
      
      public static function §0!o§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         if(!this.§"w§ && this.§]!_§)
         {
            this.§"w§ = this.§""$§.§1M§;
         }
         return this.§"w§;
      }
      
      public function get §]!_§() : Sprite
      {
         if(!this.§""$§)
         {
            this.§""$§ = this.§+X§.§<!h§ as §,!F§;
            this.§""$§.§&!U§ = false;
         }
         return this.§""$§;
      }
      
      private function get §,!n§() : DisplayObject
      {
         if(this.§]!_§)
         {
            return (this.§]!_§ as §,!F§).§,!n§;
         }
         return null;
      }
      
      public function get animationManager() : §7!V§
      {
         return this.§1H§;
      }
      
      public function get textureManager() : §6!I§
      {
         return this.§&!k§;
      }
      
      public function get camera() : §%X§
      {
         return this.§+!#§;
      }
      
      public function get objects() : § 4§
      {
         return this.§0!A§;
      }
      
      public function get particles() : §=!%§
      {
         return this.§8!e§;
      }
      
      public function get background() : §-!i§
      {
         return this.§5!j§;
      }
      
      public function get slingshot() : §1!g§
      {
         return this.§@!4§;
      }
      
      public function get activeObject() : §!u§
      {
         return this.§1z§;
      }
      
      public function get §!#§() : §[l§
      {
         return this.§0B§;
      }
      
      public function get stage() : Stage
      {
         return this.§@e§;
      }
      
      public function get §!n§() : § !;§
      {
         return this.§[p§;
      }
      
      protected function get §7%§() : § !;§
      {
         return this.§%!V§;
      }
      
      public function set activeObject(param1:§!u§) : void
      {
         this.§1z§ = param1;
      }
      
      public function set §7K§(param1:Boolean) : void
      {
         this.§]M§ = param1;
      }
      
      public function clear() : void
      {
         if(this.§6L§)
         {
            this.§6L§.dispose();
         }
         if(this.§&!k§)
         {
            this.§&!k§.dispose();
         }
         if(this.§%!V§ && this.§%!V§.textureManager)
         {
            this.§%!V§.textureManager.dispose();
         }
         if(this.§[p§ && this.§[p§.textureManager)
         {
            this.§[p§.textureManager.dispose();
         }
         if(this.§+X§)
         {
            this.§+X§.dispose();
         }
      }
      
      protected function initThemeGraphicsManager() : § !;§
      {
         return null;
      }
      
      protected function initThemeSoundsManager() : § !;§
      {
         return null;
      }
      
      protected function initCutSceneManager() : § !;§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§6!I§) : §7!V§
      {
         return new §7!V§(param1);
      }
      
      public function §!C§(param1:Boolean) : void
      {
         if(§<!?§.§,=§)
         {
            if(param1)
            {
               §<!?§.§,=§.start();
            }
            else
            {
               §<!?§.§,=§.stop();
               §<!?§.§,=§.color = 0;
            }
         }
      }
      
      public function §1!9§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function §2""§() : §5Y§
      {
         return this.§>!j§;
      }
      
      public function setController(param1:§5Y§) : void
      {
         if(this.§>!j§ != null)
         {
            this.§>!j§.removeEventListeners();
         }
         this.§>!j§ = param1;
         if(this.mReadyToRun)
         {
            this.§>!j§.addEventListeners();
         }
      }
      
      public function §0'§() : §`!Y§
      {
         return this.§%!^§;
      }
      
      public function §"!t§(param1:§,!J§, param2:Array, param3:Function) : void
      {
         this.§6L§ = param1;
         var _loc4_:int = this.§6L§.§8L§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§&!k§.§@!V§(this.§6L§.§#%§(_loc5_));
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§6t§.addEventListener(Event.INIT,param3);
            this.§#N§.push(param3);
         }
         if(this.§1K§(param2))
         {
            this.§",§();
         }
      }
      
      private function §1K§(param1:Array) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.§&!k§.§`R§())
         {
            _loc2_ = this.§&!k§.§3&§ / 1000;
            _loc3_ = this.§&!k§.§5j§ / 1000;
            §<m§.log("\n\nMain texture manager memory usage:\n   textures " + _loc2_ + " kilobytes\n   bitmaps " + _loc3_ + " kilobytes\n\n");
            this.initializeAnimations(param1);
            return true;
         }
         this.§"!s§ = param1.concat();
         return false;
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         this.§1H§.initializeAnimations(param1);
      }
      
      private function §%!y§(param1:Event) : void
      {
         this.§&!k§.§6!U§();
         if(this.§7%§ && this.§7%§.textureManager)
         {
            this.§7%§.textureManager.§6!U§();
         }
         if(this.§!n§ && this.§!n§.textureManager)
         {
            this.§!n§.textureManager.§6!U§();
         }
         if(this.§"!s§)
         {
            this.§1K§(this.§"!s§);
            this.§"!s§ = null;
            this.§",§();
         }
         if(this.§>!j§ != null && this.mReadyToRun)
         {
            this.§>!j§.addEventListeners();
         }
         if(this.§%!V§)
         {
            this.§%!V§.§`R§();
         }
         if(this.§[p§)
         {
            if(this.§[p§.textureManager)
            {
               this.§[p§.textureManager.§6!U§();
               this.§[p§.§`R§();
            }
         }
      }
      
      private function §",§() : void
      {
         this.§6t§.dispatchEvent(new Event(Event.INIT));
         this.§''§();
      }
      
      private function §''§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§#N§)
         {
            this.§6t§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§#N§ = [];
      }
      
      public function init(param1:§"!'§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§0B§ = new §[l§(this,param1);
         this.§+!#§ = this.§9!x§(param1);
         this.§7;§ = 0;
         this.§0!6§ = 0;
         this.§?!z§ = 0;
         this.§!2§ = false;
         this.mReadyToRun = false;
         this.§+T§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         §>!F§ = param1.theme;
         this.§=g§ = param1;
         this.§-!Y§ = this.§5!y§(param1.theme);
         this.§'!>§ = this.§8F§(param1.theme);
         if(this.§-!Y§ && this.§'!>§)
         {
            this.initialize(param1);
         }
         else
         {
            this.§2!_§(param1.theme);
         }
         this.§?!G§();
         §-!8§.init();
      }
      
      protected function §?!G§() : void
      {
         this.§%!^§ = new §`!Y§(LevelManager.§"L§);
      }
      
      protected function §5!y§(param1:String) : Boolean
      {
         if(this.§%!V§)
         {
            return false;
         }
         return true;
      }
      
      protected function §8F§(param1:String) : Boolean
      {
         var _loc2_:§+!Y§ = null;
         if(this.§<p§)
         {
            _loc2_ = §%E§.§8!G§(param1);
            if(_loc2_)
            {
               if(_loc2_.§9E§ && !this.§<p§.§6j§(_loc2_.§9E§))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function §2!_§(param1:String) : void
      {
         var _loc2_:§+!Y§ = null;
         if(this.§%!V§ && !this.§5!y§(param1))
         {
            this.§%!V§.removeEventListener(Event.COMPLETE,this.§&&§);
            this.§%!V§.removeEventListener(Event.CANCEL,this.§4l§);
            this.§%!V§.addEventListener(Event.COMPLETE,this.§&&§);
            this.§%!V§.addEventListener(Event.CANCEL,this.§4l§);
            this.§%!V§.§-!a§(param1);
         }
         if(this.§<p§ && !this.§8F§(param1))
         {
            this.§<p§.removeEventListener(Event.COMPLETE,this.§'t§);
            this.§<p§.removeEventListener(Event.CANCEL,this.§+f§);
            this.§<p§.addEventListener(Event.COMPLETE,this.§'t§);
            this.§<p§.addEventListener(Event.CANCEL,this.§+f§);
            _loc2_ = §%E§.§8!G§(param1);
            if(_loc2_)
            {
               this.§<p§.§-!a§(_loc2_.§9E§);
            }
         }
      }
      
      private function §&&§(param1:Event) : void
      {
         this.§%!V§.removeEventListener(Event.COMPLETE,this.§&&§);
         this.§%!V§.removeEventListener(Event.CANCEL,this.§4l§);
         this.§-!Y§ = true;
         if(this.§-!Y§ && this.§'!>§)
         {
            this.initialize(this.§=g§);
         }
      }
      
      private function §4l§(param1:Event) : void
      {
         this.§%!V§.removeEventListener(Event.COMPLETE,this.§&&§);
         this.§%!V§.removeEventListener(Event.CANCEL,this.§4l§);
         this.§+T§ = true;
      }
      
      private function §'t§(param1:Event) : void
      {
         this.§%!V§.removeEventListener(Event.COMPLETE,this.§'t§);
         this.§%!V§.removeEventListener(Event.CANCEL,this.§+f§);
         this.§'!>§ = true;
         if(this.§-!Y§ && this.§'!>§)
         {
            this.initialize(this.§=g§);
         }
      }
      
      private function §+f§(param1:Event) : void
      {
         this.§%!V§.removeEventListener(Event.COMPLETE,this.§'t§);
         this.§%!V§.removeEventListener(Event.CANCEL,this.§+f§);
         this.§'!>§ = true;
         if(this.§-!Y§ && this.§'!>§)
         {
            this.initialize(this.§=g§);
         }
      }
      
      public function get backgroundTextureManager() : §6!I§
      {
         return this.§&!k§;
      }
      
      protected function initialize(param1:§"!'§) : void
      {
         this.§]M§ = false;
         this.§^7§ = false;
         if(§<!?§.§#T§)
         {
            §<!?§.§#T§.speed = 1;
         }
         this.mLevelEngine = new §?S§(this);
         this.§5!j§ = this.initLevelBackground(param1.theme,this.§0B§.§]!L§ / §6+§,this.backgroundTextureManager,this.§+!#§.§25§());
         this.§5!j§.§'6§(§,!s§.§^@§());
         this.§0!A§ = this.initLevelObjectManager(param1);
         this.§@!4§ = this.initLevelSlingshot(param1);
         this.§8!e§ = this.§=!u§(this.§1H§,this.§&!k§);
         this.§+!#§.init();
         this.§1!j§();
         this.§'!A§();
         this.mReadyToRun = true;
         if(this.§>!j§)
         {
            this.§>!j§.addEventListeners();
         }
      }
      
      protected function §'!A§() : void
      {
         if(this.§?W§)
         {
            this.§6!<§ = §`!Y§.initialize(this.§?W§);
            this.§6!<§.speed = 1;
            this.§6!<§.play();
            this.§-"#§ = -1000;
            this.§?W§ = null;
         }
      }
      
      public function §!!§(param1:String) : void
      {
         this.§?W§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§6!<§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§6!<§)
         {
            if(param1)
            {
               this.§6!<§.speed = Math.min(this.§6!<§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§6!<§.speed = Math.max(this.§6!<§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§6!<§)
         {
            this.§6!<§.speed = 1;
         }
      }
      
      protected function initLevelObjectManager(param1:§"!'§) : § 4§
      {
         return new § 4§(this,param1,new Sprite());
      }
      
      protected function §9!x§(param1:§"!'§) : §%X§
      {
         return new §%X§(this,param1);
      }
      
      protected function initLevelBackground(param1:String, param2:Number, param3:§6!I§, param4:Number) : §-!i§
      {
         return new §-!i§(param1,param2,param3,param4);
      }
      
      protected function initLevelSlingshot(param1:§"!'§) : §1!g§
      {
         return new §1!g§(this,param1,new Sprite());
      }
      
      protected function §=!u§(param1:§7!V§, param2:§6!I§) : §=!%§
      {
         return new §=!%§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§"!'§ = this.§1j§();
         var _loc4_:§8z§;
         (_loc4_ = new §8z§()).left = 0;
         _loc4_.top = -§%X§.§8!@§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §%X§.§8!@§;
         _loc4_.right = _loc4_.left + §%X§.§ !9§;
         _loc4_.y = -13.929;
         _loc4_.x = §%X§.§ !9§;
         _loc4_.id = §%X§.§9C§;
         _loc3_.§7!x§(_loc4_);
         var _loc5_:§8z§;
         (_loc5_ = new §8z§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §%X§.§ !9§;
         _loc5_.bottom = _loc5_.top + §%X§.§8!@§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §%X§.§ !9§ / 2;
         _loc5_.id = §%X§.§;l§;
         _loc3_.§7!x§(_loc5_);
         this.§@R§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§>!F§ != null)
         {
            _loc3_.theme = §>!F§;
         }
         this.init(_loc3_);
      }
      
      protected function §@R§(param1:§"!'§, param2:Boolean) : void
      {
         if(param2)
         {
            this.§=T§(param1);
         }
      }
      
      protected function §1j§() : §"!'§
      {
         var _loc1_:§"!'§ = new §"!'§();
         _loc1_.§=!M§ = -12;
         return new §"!'§();
      }
      
      protected function §-A§() : Number
      {
         this.§%!?§ ^= this.§%!?§ << 21;
         this.§%!?§ ^= this.§%!?§ >>> 35;
         this.§%!?§ ^= this.§%!?§ << 4;
         return this.§%!?§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §=T§(param1:§"!'§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§<n§ = null;
         this.§%!?§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§-A§() * 5;
               (_loc5_ = new §<n§()).x = 30 + _loc3_ * 10 + this.§-A§() * 9;
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
                  _loc5_.angle = 45 - this.§-A§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§-A§() * 3 - _loc3_ * 8;
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
                  _loc5_.angle = this.§-A§() * 360;
               }
               param1.addObject(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      public function §1!j§() : void
      {
         if(§-!i§.§>_§)
         {
            this.§;F§(this.§5!j§.§8y§,false);
         }
         this.§;F§(this.§8!e§.§ in§(§=!%§.§3!z§),false);
         this.§;F§(this.§8!e§.§ in§(§=!%§.§#,§),true);
         this.§;F§(this.§8!e§.§ in§(§=!%§.§,V§),true);
         this.§;F§(this.§0!A§.§1?§,true);
         this.§;F§(this.§@!4§.sprite,true);
         this.§;F§(this.§8!e§.§ in§(§=!%§.§2k§),true);
         this.§;F§(this.§5!j§.§!!u§,false);
         if(§-!i§.§>_§)
         {
            this.§;F§(this.§5!j§.§[f§,false);
         }
         this.§;F§(this.§8!e§.§ in§(§=!%§.§5+§),true);
      }
      
      protected function §;F§(param1:Sprite, param2:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(param1);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         param1 /= §,!s§.§8;§;
         param2 /= §,!s§.§8;§;
         _loc3_.x = (param1 / §%X§.§'!f§ + this.§+!#§.§[!H§ - §%X§.§+!_§ / §%X§.§'!f§) * §6+§;
         _loc3_.y = (param2 / §%X§.§'!f§ + this.§+!#§.§@!6§ - §%X§.§ !o§ / §%X§.§'!f§) * §6+§;
         return _loc3_;
      }
      
      public function §>C§(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / §6+§ + §%X§.§+!_§ / §%X§.§'!f§ - this.§+!#§.§[!H§) * §%X§.§'!f§;
         _loc3_.y = (param2 / §6+§ + §%X§.§ !o§ / §%X§.§'!f§ - this.§+!#§.§@!6§) * §%X§.§'!f§;
         var _loc4_:Number = Math.max(§,!s§.§8;§,§,!s§.§#d§);
         _loc3_.x *= _loc4_;
         _loc3_.y *= _loc4_;
         return _loc3_;
      }
      
      public function §<v§(param1:String, param2:Number, param3:Number) : void
      {
         this.§0!A§.addObject(param1,param2,param3);
      }
      
      public function §%!=§() : void
      {
         if(this.§,!n§)
         {
            this.§,!n§.visible = true;
            this.§,!n§.alpha = 0;
         }
         this.§9!u§ = 0;
      }
      
      public function §=5§() : void
      {
         this.§+!B§ = new §73§(§2!y§.§&-§,§2!y§.§?"§);
      }
      
      public function §0!+§() : void
      {
         this.§+!B§ = null;
      }
      
      public function clearLevel() : void
      {
         if(this.§5!j§)
         {
            this.§5!j§.dispose();
            this.§5!j§ = null;
         }
         if(this.§0!A§)
         {
            this.§0!A§.dispose();
            this.§0!A§ = null;
            this.§1z§ = null;
         }
         if(this.mLevelEngine)
         {
            if(!this.mLevelEngine.§'q§)
            {
            }
            this.mLevelEngine.clear();
            this.mLevelEngine = null;
         }
         if(this.§0B§)
         {
            this.§0B§.clear();
            this.§0B§ = null;
         }
         if(this.§@!4§)
         {
            this.§@!4§.dispose();
            this.§@!4§ = null;
         }
         if(this.§+!#§)
         {
            this.§+!#§.clear();
            this.§+!#§ = null;
         }
         if(this.§8!e§)
         {
            this.§8!e§.dispose();
            this.§8!e§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§7;§ = 0;
         this.§0!6§ = 0;
         this.mReadyToRun = false;
         this.§!2§ = false;
         this.§9!u§ = §2!y§.§"!A§;
         if(this.§]!_§)
         {
            (this.§]!_§ as §,!F§).§75§.x = 0;
            (this.§]!_§ as §,!F§).§75§.y = 0;
         }
         if(this.§,!n§)
         {
            this.§,!n§.visible = false;
         }
         this.§6!<§ = null;
         this.§%!^§ = null;
         if(this.§%!V§)
         {
            this.§%!V§.removeEventListener(Event.COMPLETE,this.§&&§);
            this.§%!V§.removeEventListener(Event.CANCEL,this.§4l§);
         }
         if(this.§<p§)
         {
            this.§<p§.removeEventListener(Event.COMPLETE,this.§'t§);
            this.§<p§.removeEventListener(Event.CANCEL,this.§+f§);
         }
         this.§''§();
         if(§<!?§.§,=§)
         {
            §<!?§.§,=§.color = 0;
         }
         if(this.§>!j§)
         {
            this.§>!j§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver() : void
      {
      }
      
      public function §`!o§() : String
      {
         if(this.§%!^§)
         {
            return this.§%!^§.toString();
         }
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         if(!this.mReadyToRun || !§<!?§.§0,§())
         {
            return 0;
         }
         if(this.§6!<§ && this.§6!<§.§!!#§)
         {
            return this.§`!"§(param1,param2,param3);
         }
         return this.updateWithTime(param1,true,param2,param3);
      }
      
      protected function updateWithTime(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         if(this.§]M§)
         {
            param1 *= 0.2;
            if(§<!?§.§#T§)
            {
               §<!?§.§#T§.speed = 0.2;
            }
         }
         var _loc5_:Number = 0;
         this.§0!6§ += param1;
         if(param3)
         {
            this.§7;§ += param1;
            _loc5_ = this.mLevelEngine.§!!G§(this.§7;§);
            this.§@!4§.update(param1,param4);
            this.§7;§ = _loc5_;
         }
         else
         {
            this.§0!A§.§`!2§(param1);
            this.§7;§ = 0;
         }
         if(param2)
         {
            this.§;%§(param1,_loc5_);
         }
         return param1;
      }
      
      private function §`!"§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc5_:Number = NaN;
         var _loc4_:Number = §?S§.§;!Z§ * 1000;
         if(this.§6!<§)
         {
            param1 *= this.§6!<§.speed;
            _loc5_ = this.§0!6§ + param1;
            while(this.§0!6§ + _loc4_ < _loc5_)
            {
               if(this.§0!6§ + _loc4_ > this.§-"#§)
               {
                  this.§6!<§.step(this);
                  this.§-"#§ += _loc4_;
               }
               this.updateWithTime(_loc4_,false,param2,param3);
            }
            if(_loc5_ > this.§-"#§ + _loc4_)
            {
               this.§6!<§.step(this);
               this.§-"#§ += _loc4_;
            }
            if(this.§0!6§ < _loc5_)
            {
               this.updateWithTime(_loc5_ - this.§0!6§,true,param2,param3);
            }
            return param1;
         }
         return this.updateWithTime(_loc4_,true,param2,param3);
      }
      
      private function §;%§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.§5!j§.update(param1);
         this.§0!A§.§?!5§(param1,param2);
         this.§"^§();
         if(this.§9!u§ < §2!y§.§"!A§)
         {
            this.§9!u§ += param1;
            _loc3_ = §2!y§.§"!A§ / 2;
            _loc4_ = (-Math.abs(this.§9!u§ - _loc3_) + _loc3_) * (§2!y§.§>D§ / _loc3_);
            if(this.§,!n§)
            {
               this.§,!n§.alpha = _loc4_;
            }
         }
         else if(this.§,!n§)
         {
            this.§,!n§.visible = false;
         }
         if(this.§+!B§)
         {
            if(!this.§+!B§.§@7§(this.§+!#§,param1))
            {
               this.§0!+§();
            }
         }
         this.§+!#§.§7!I§(param1);
         this.mLevelEngine.§4!5§();
         this.§8!e§.update(param1);
      }
      
      public function handleEngineUpdateStep(param1:Number) : void
      {
         this.objects.§`!2§(param1 * 1000);
         this.objects.§^!,§(param1 * 1000);
         this.§8!%§();
      }
      
      public function §"^§() : void
      {
         var _loc1_:§!u§ = null;
         if(this.§0!6§ > this.§?!z§ + 1000 / 30)
         {
            if(this.§"b§ != null)
            {
               for each(_loc1_ in this.§"b§)
               {
                  _loc1_.addTrail();
               }
            }
            this.§?!z§ = this.§0!6§;
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§!u§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.§0!A§.isPigsAlive(true))
            {
               _loc2_ = this.§0!A§.§ !"§(true);
               if(_loc2_)
               {
                  _loc2_.§+!j§.mTryToScream = §7!r§.§<!c§;
                  this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§0!A§.§@P§());
               }
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            if(this.§0!A§.isPigsAlive(true))
            {
               _loc2_ = this.§0!A§.§ !"§(true);
               if(_loc2_)
               {
                  _loc2_.§+!j§.mTryToBlink = §7!r§.§=2§;
                  this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§0!A§.§@P§());
               }
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §>p§.§2!Z§;
         }
         §-!8§.addScore(param1,param2);
         this.§>!j§.addScore(param1);
         if(param3 && param1 > 0 && !this.§^7§)
         {
            this.§%!&§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §%!&§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §>p§.§"T§;
         }
         this.§8!e§.§-M§(§>p§.§=Y§,§=!%§.§5+§,§>p§.§6!k§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §`6§(param1:§!u§) : void
      {
         if(this.§"b§ == null)
         {
            this.§"b§ = new Array();
         }
         this.§"b§.push(param1);
      }
      
      public function useMightyEagle() : void
      {
         this.§@!4§.useMightyEagle();
         this.§0!A§.§ I§();
         this.§^7§ = true;
      }
      
      public function §-!7§(param1:§!u§) : void
      {
         this.§8!e§.§ m§(§=!%§.§3!z§);
         if(this.§"b§.indexOf(param1) >= 0)
         {
            this.§"b§.splice(this.§"b§.indexOf(param1),1);
         }
         if(this.§"b§.length == 0)
         {
            this.§"b§ = null;
         }
      }
      
      public function §`!`§(param1:§<!P§, param2:Number, param3:Number) : void
      {
         this.§1z§ = this.§0!A§.addObject(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
         var _loc4_:Number = param1.name.toUpperCase() == "BIRD_GREEN" ? Number(§1!g§.BIRD_LAUNCH_FORCE_GREEN) : Number(§1!g§.BIRD_LAUNCH_FORCE);
         if(param1.§'T§ > 1)
         {
            this.§1z§.§7N§(param1.§'T§);
            this.§1z§.§+!j§.§=!v§();
         }
         if(param1.§+_§ != 0)
         {
            _loc4_ = param1.§+_§;
         }
         var _loc5_:Number = -_loc4_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc6_:Number = _loc4_ * param2 * Math.sin(param3 / (180 / Math.PI));
         this.§1z§.§5!;§(new b2Vec2(_loc5_,_loc6_),false,true);
         this.camera.§?M§(§%X§.§`5§);
         if(this.§%!^§)
         {
            this.§%!^§.§`!`§(this.mLevelEngine.§[!2§,param1.x,param1.y,param2,param3);
         }
      }
      
      public function activatePowerup() : void
      {
         this.§!2§ = true;
      }
      
      private function §8!%§() : void
      {
         if(!this.§!2§)
         {
            return;
         }
         this.§!2§ = false;
         if(this.activeObject is §3!5§ && !(this.activeObject as §3!5§).§2!K§)
         {
            if(this.activeObject.activateSpecialPower(this.§6l§))
            {
               this.§[!f§ = true;
            }
         }
         else
         {
            this.§0!A§.§9!4§();
         }
         if(this.§%!^§)
         {
            this.§%!^§.§"z§(this.mLevelEngine.§[!2§);
         }
      }
      
      public function §?0§() : void
      {
         this.§0!A§.§?0§();
      }
      
      public function §6!Y§() : void
      {
         this.§0!A§.§+!=§();
      }
      
      public function §4T§() : §"!'§
      {
         var _loc1_:§"!'§ = new §"!'§();
         _loc1_.§;"$§ = this.§=g§.§;"$§;
         _loc1_.§2!m§ = this.§=g§.§2!m§;
         this.§+!#§.§?!n§(_loc1_);
         this.§0!A§.§"!;§(_loc1_);
         this.§@!4§.§#!%§(_loc1_);
         _loc1_.theme = this.§5!j§.§ !y§();
         return _loc1_;
      }
      
      public function §'r§() : int
      {
         return this.§=g§.§2!m§;
      }
      
      public function §>#§() : int
      {
         return this.§=g§.§;"$§;
      }
      
      public function §-q§(param1:int) : void
      {
         this.§=g§.§2!m§ = param1;
      }
      
      public function §?!e§(param1:int) : void
      {
         this.§=g§.§;"$§ = param1;
      }
      
      public function §6!'§(param1:Number, param2:Number) : void
      {
         if(this.§""$§)
         {
            this.§""$§.§[8§(param1,param2);
         }
         if(this.§+!#§)
         {
            this.§+!#§.§7!I§(0);
         }
      }
      
      public function get §?s§() : §"!'§
      {
         return this.§=g§;
      }
      
      public function get §6l§() : § 4§
      {
         return this.§0!A§;
      }
      
      protected function get starling() : §<!?§
      {
         return this.§+X§;
      }
      
      public function get §1![§() : int
      {
         return §@c§;
      }
   }
}
