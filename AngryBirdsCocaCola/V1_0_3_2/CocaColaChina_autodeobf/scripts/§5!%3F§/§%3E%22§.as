package §5!?§
{
   import §!!a§.§8=§;
   import §!!a§.§9G§;
   import §!!a§.§[+§;
   import §!!a§.§]>§;
   import §#h§.§>!c§;
   import §#h§.§`0§;
   import §+R§.§0O§;
   import §,N§.§@! §;
   import §1p§.§@!D§;
   import §24§.§5!,§;
   import §3!W§.§5!Q§;
   import §4!O§.§&+§;
   import §4!O§.§+K§;
   import §4!O§.§9T§;
   import §4!O§.§^e§;
   import §6!Q§.§7!7§;
   import §8S§.§7,§;
   import §8r§.§ "§;
   import §8r§.§+!8§;
   import §8r§.§@V§;
   import §9!H§.§3!7§;
   import §;t§.DisplayObject;
   import §;t§.Sprite;
   import §=F§.§"n§;
   import §>P§.§2!U§;
   import §@!>§.§<!J§;
   import §@!>§.§=!R§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import §implements§.b2Vec2;
   
   public class §>"§
   {
      
      private static const §,!P§:int = 20;
      
      public static const §8!H§:Number = §"n§.§,T§;
      
      public static const §+!9§:Number = §"n§.§8-§;
      
      public static const §'!S§:Number = 1 / 20;
      
      public static const §9>§:Number = §"n§.§8-§ * §'!S§;
      
      public static const §4^§:Number = §8!H§ * §'!S§;
      
      public static const §'W§:§2!U§ = new §2!U§(13 - 3);
      
      protected static var §&!I§:String = §8=§.§4z§;
       
      
      protected var §+§:§+K§;
      
      private var §`!%§:§&+§;
      
      private var §1!_§:Array = null;
      
      protected var §>?§:§@!D§;
      
      public var mLevelEngine:§?k§;
      
      protected var §&L§:§2!K§;
      
      protected var §;!4§:§5!Q§;
      
      protected var §^F§:§'C§;
      
      protected var §1k§:§=!R§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §?N§:Boolean = false;
      
      protected var §#F§:Boolean = false;
      
      protected var §4!'§:Boolean = false;
      
      public var §1G§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §9!#§:Number;
      
      public var §!j§:Number;
      
      private var §,`§:Number;
      
      public var § 6§:§[+§;
      
      public var §2^§:Boolean = false;
      
      private var §-!=§:§?!]§;
      
      private var §=J§:Sprite;
      
      protected var §`'§:§8=§;
      
      protected var §92§:§7,§ = null;
      
      private var §]!c§:EventDispatcher;
      
      private var §&5§:Array;
      
      private var §<A§:Array;
      
      protected var §8u§:§0O§;
      
      private var §3!R§:§5!,§;
      
      protected var § u§:§@V§;
      
      protected var §0h§:§ "§;
      
      private var §[!W§:§+!8§;
      
      private var §%]§:§+!8§;
      
      private var §==§:§+!8§;
      
      private var §7>§:Stage;
      
      private var §^!4§:§&!0§;
      
      protected var §+!7§:§3!7§;
      
      protected var §9<§:§3!7§;
      
      protected var §,c§:Number = 0.0;
      
      protected var §4y§:String;
      
      private var §=5§:Boolean;
      
      protected var §1!3§:Boolean;
      
      protected var §2![§:uint = 1.417339207E9;
      
      public var §>F§:Boolean;
      
      public function §>"§(param1:Stage)
      {
         this.§<A§ = [];
         super();
         this.§]!c§ = new EventDispatcher();
         this.§ 6§ = new §[+§();
         this.§7>§ = param1;
         this.§ u§ = §@V§.§`G§;
         this.§0h§ = this.initAnimationManager(this.§ u§);
         this.§[!W§ = this.initThemeGraphicsManager();
         this.§%]§ = this.§3!0§();
         this.§==§ = this.§@!%§();
         var _loc2_:Stage3D = param1.stage3Ds[0];
         this.§8u§ = new §0O§(§?!]§,param1,new Rectangle(0,0,§"n§.§,T§,§"n§.§8-§),_loc2_);
         §"n§.§%p§.addEventListener(Event.ENTER_FRAME,this.§8u§.§#@§);
         _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§-b§,false,0,true);
         this.§8u§.simulateMultitouch = false;
         this.§8u§.enableErrorChecking = false;
         this.§8u§.§1r§ = 2;
         this.§8u§.§]b§();
      }
      
      public static function §!!d§(param1:§&+§, param2:§&+§) : Number
      {
         var _loc3_:Number = param1.§65§ - param2.§65§;
         var _loc4_:Number = param1.§5!G§ - param2.§5!G§;
         return §#S§(_loc3_,_loc4_);
      }
      
      public static function §#S§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         if(!this.§=J§ && this.§'!_§)
         {
            this.§=J§ = this.§-!=§.§[W§;
         }
         return this.§=J§;
      }
      
      public function get §'!_§() : Sprite
      {
         if(!this.§-!=§)
         {
            this.§-!=§ = this.§8u§.§<[§ as §?!]§;
            this.§-!=§.§]U§ = false;
         }
         return this.§-!=§;
      }
      
      private function get §>!R§() : DisplayObject
      {
         if(this.§'!_§)
         {
            return (this.§'!_§ as §?!]§).§>!R§;
         }
         return null;
      }
      
      public function get §6!M§() : § "§
      {
         return this.§0h§;
      }
      
      public function get textureManager() : §@V§
      {
         return this.§ u§;
      }
      
      public function get camera() : §5!Q§
      {
         return this.§;!4§;
      }
      
      public function get objects() : §+K§
      {
         return this.§+§;
      }
      
      public function get particles() : §=!R§
      {
         return this.§1k§;
      }
      
      public function get background() : §@!D§
      {
         return this.§>?§;
      }
      
      public function get slingshot() : §'C§
      {
         return this.§^F§;
      }
      
      public function get activeObject() : §&+§
      {
         return this.§`!%§;
      }
      
      public function get §>!J§() : §2!K§
      {
         return this.§&L§;
      }
      
      public function get stage() : Stage
      {
         return this.§7>§;
      }
      
      public function get §<!0§() : §+!8§
      {
         return this.§==§;
      }
      
      protected function get §3!I§() : §+!8§
      {
         return this.§[!W§;
      }
      
      public function set activeObject(param1:§&+§) : void
      {
         this.§`!%§ = param1;
      }
      
      public function set §[P§(param1:Boolean) : void
      {
         this.§1!3§ = param1;
      }
      
      public function clear() : void
      {
         if(this.§3!R§)
         {
            this.§3!R§.dispose();
         }
         if(this.§ u§)
         {
            this.§ u§.dispose();
         }
         if(this.§[!W§ && this.§[!W§.textureManager)
         {
            this.§[!W§.textureManager.dispose();
         }
         if(this.§==§ && this.§==§.textureManager)
         {
            this.§==§.textureManager.dispose();
         }
         if(this.§8u§)
         {
            this.§8u§.dispose();
         }
      }
      
      protected function initThemeGraphicsManager() : §+!8§
      {
         return null;
      }
      
      protected function §3!0§() : §+!8§
      {
         return null;
      }
      
      protected function §@!%§() : §+!8§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§@V§) : § "§
      {
         return new § "§(param1);
      }
      
      public function §+!U§(param1:Boolean) : void
      {
         if(§0O§.§=&§)
         {
            if(param1)
            {
               §0O§.§=&§.start();
            }
            else
            {
               §0O§.§=&§.stop();
               §0O§.§=&§.color = 0;
            }
         }
      }
      
      public function §9'§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function §51§(param1:§7,§) : void
      {
         if(this.§92§ != null)
         {
            this.§92§.removeEventListeners();
         }
         this.§92§ = param1;
         if(this.mReadyToRun)
         {
            this.§92§.addEventListeners();
         }
      }
      
      public function §5!&§() : §3!7§
      {
         return this.§+!7§;
      }
      
      public function §?i§(param1:§5!,§, param2:Array, param3:Function) : void
      {
         this.§3!R§ = param1;
         var _loc4_:int = this.§3!R§.§8!@§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§ u§.§3p§(this.§3!R§.§6!R§(_loc5_));
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§]!c§.addEventListener(Event.INIT,param3);
            this.§<A§.push(param3);
         }
         if(this.§%!0§(param2))
         {
            this.§8C§();
         }
      }
      
      private function §%!0§(param1:Array) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.§ u§.§[X§())
         {
            _loc2_ = this.§ u§.§1=§ / 1000;
            _loc3_ = this.§ u§.§'V§ / 1000;
            §7!7§.log("\n\nMain texture manager memory usage:\n   textures " + _loc2_ + " kilobytes\n   bitmaps " + _loc3_ + " kilobytes\n\n");
            this.initializeAnimations(param1);
            return true;
         }
         this.§&5§ = param1.concat();
         return false;
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         this.§0h§.initializeAnimations(param1);
      }
      
      private function §-b§(param1:Event) : void
      {
         this.§ u§.§1!;§();
         if(this.§3!I§ && this.§3!I§.textureManager)
         {
            this.§3!I§.textureManager.§1!;§();
         }
         if(this.§<!0§ && this.§<!0§.textureManager)
         {
            this.§<!0§.textureManager.§1!;§();
         }
         if(this.§&5§)
         {
            this.§%!0§(this.§&5§);
            this.§&5§ = null;
            this.§8C§();
         }
         if(this.§92§ != null && this.mReadyToRun)
         {
            this.§92§.addEventListeners();
         }
         if(this.§[!W§)
         {
            this.§[!W§.§[X§();
         }
         if(this.§==§)
         {
            if(this.§==§.textureManager)
            {
               this.§==§.textureManager.§1!;§();
               this.§==§.§[X§();
            }
         }
      }
      
      private function §8C§() : void
      {
         this.§]!c§.dispatchEvent(new Event(Event.INIT));
         this.§8B§();
      }
      
      private function §8B§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§<A§)
         {
            this.§]!c§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§<A§ = [];
      }
      
      public function init(param1:§8=§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§&L§ = new §2!K§(this,param1);
         this.§;!4§ = this.§4n§(param1);
         this.§9!#§ = 0;
         this.§!j§ = 0;
         this.§,`§ = 0;
         this.§=5§ = false;
         this.mReadyToRun = false;
         this.§?N§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         §&!I§ = param1.theme;
         this.§`'§ = param1;
         this.§#F§ = this.§6!T§(param1.theme);
         this.§4!'§ = this.§"!P§(param1.theme);
         if(this.§#F§ && this.§4!'§)
         {
            this.§4"§(param1);
         }
         else
         {
            this.§?^§(param1.theme);
         }
         this.§<X§();
         §&%§.init();
      }
      
      protected function §<X§() : void
      {
         this.§+!7§ = new §3!7§(§9G§.§>>§);
      }
      
      protected function §6!T§(param1:String) : Boolean
      {
         if(this.§[!W§)
         {
            return false;
         }
         return true;
      }
      
      protected function §"!P§(param1:String) : Boolean
      {
         var _loc2_:§>!c§ = null;
         if(this.§%]§)
         {
            _loc2_ = §`0§.§0!H§(param1);
            if(_loc2_)
            {
               if(_loc2_.§^i§ && !this.§%]§.§?K§(_loc2_.§^i§))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function §?^§(param1:String) : void
      {
         var _loc2_:§>!c§ = null;
         if(this.§[!W§ && !this.§6!T§(param1))
         {
            this.§[!W§.removeEventListener(Event.COMPLETE,this.§7!G§);
            this.§[!W§.removeEventListener(Event.CANCEL,this.§]-§);
            this.§[!W§.addEventListener(Event.COMPLETE,this.§7!G§);
            this.§[!W§.addEventListener(Event.CANCEL,this.§]-§);
            this.§[!W§.§=!6§(param1);
         }
         if(this.§%]§ && !this.§"!P§(param1))
         {
            this.§%]§.removeEventListener(Event.COMPLETE,this.§>H§);
            this.§%]§.removeEventListener(Event.CANCEL,this.§8X§);
            this.§%]§.addEventListener(Event.COMPLETE,this.§>H§);
            this.§%]§.addEventListener(Event.CANCEL,this.§8X§);
            _loc2_ = §`0§.§0!H§(param1);
            if(_loc2_)
            {
               this.§%]§.§=!6§(_loc2_.§^i§);
            }
         }
      }
      
      private function §7!G§(param1:Event) : void
      {
         this.§[!W§.removeEventListener(Event.COMPLETE,this.§7!G§);
         this.§[!W§.removeEventListener(Event.CANCEL,this.§]-§);
         this.§#F§ = true;
         if(this.§#F§ && this.§4!'§)
         {
            this.§4"§(this.§`'§);
         }
      }
      
      private function §]-§(param1:Event) : void
      {
         this.§[!W§.removeEventListener(Event.COMPLETE,this.§7!G§);
         this.§[!W§.removeEventListener(Event.CANCEL,this.§]-§);
         this.§?N§ = true;
      }
      
      private function §>H§(param1:Event) : void
      {
         this.§[!W§.removeEventListener(Event.COMPLETE,this.§>H§);
         this.§[!W§.removeEventListener(Event.CANCEL,this.§8X§);
         this.§4!'§ = true;
         if(this.§#F§ && this.§4!'§)
         {
            this.§4"§(this.§`'§);
         }
      }
      
      private function §8X§(param1:Event) : void
      {
         this.§[!W§.removeEventListener(Event.COMPLETE,this.§>H§);
         this.§[!W§.removeEventListener(Event.CANCEL,this.§8X§);
         this.§4!'§ = true;
         if(this.§#F§ && this.§4!'§)
         {
            this.§4"§(this.§`'§);
         }
      }
      
      public function get backgroundTextureManager() : §@V§
      {
         return this.§ u§;
      }
      
      protected function §4"§(param1:§8=§) : void
      {
         this.§1!3§ = false;
         this.§>F§ = false;
         if(§0O§.§&H§)
         {
            §0O§.§&H§.speed = 1;
         }
         this.mLevelEngine = new §?k§(this);
         this.§>?§ = this.§4,§(param1.theme,this.§&L§.§09§ / §'!S§,this.backgroundTextureManager,this.§;!4§.§^1§());
         this.§>?§.§%a§(§"n§.§?2§());
         this.§+§ = this.initLevelObjectManager(param1);
         this.§^F§ = this.§7!8§(param1);
         this.§1k§ = this.initParticleManager(this.§0h§,this.§ u§);
         this.§;!4§.init();
         this.§]s§();
         this.§?!F§();
         this.mReadyToRun = true;
         if(this.§92§)
         {
            this.§92§.addEventListeners();
         }
      }
      
      protected function §?!F§() : void
      {
         if(this.§4y§)
         {
            this.§9<§ = §3!7§.§4"§(this.§4y§);
            this.§9<§.speed = 1;
            this.§9<§.play();
            this.§,c§ = -1000;
            this.§4y§ = null;
         }
      }
      
      public function §6!B§(param1:String) : void
      {
         this.§4y§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§9<§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§9<§)
         {
            if(param1)
            {
               this.§9<§.speed = Math.min(this.§9<§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§9<§.speed = Math.max(this.§9<§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§9<§)
         {
            this.§9<§.speed = 1;
         }
      }
      
      protected function initLevelObjectManager(param1:§8=§) : §+K§
      {
         return new §+K§(this,param1,new Sprite());
      }
      
      protected function §4n§(param1:§8=§) : §5!Q§
      {
         return new §5!Q§(this,param1);
      }
      
      protected function §4,§(param1:String, param2:Number, param3:§@V§, param4:Number) : §@!D§
      {
         return new §@!D§(param1,param2,param3,param4);
      }
      
      protected function §7!8§(param1:§8=§) : §'C§
      {
         return new §'C§(this,param1,new Sprite());
      }
      
      protected function initParticleManager(param1:§ "§, param2:§@V§) : §=!R§
      {
         return new §=!R§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§8=§ = this.§7! §();
         var _loc4_:§]>§;
         (_loc4_ = new §]>§()).left = 0;
         _loc4_.top = -§5!Q§.§5S§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §5!Q§.§5S§;
         _loc4_.right = _loc4_.left + §5!Q§.§+!X§;
         _loc4_.y = -13.929;
         _loc4_.x = §5!Q§.§+!X§;
         _loc4_.id = §5!Q§.§%s§;
         _loc3_.§;!D§(_loc4_);
         var _loc5_:§]>§;
         (_loc5_ = new §]>§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §5!Q§.§+!X§;
         _loc5_.bottom = _loc5_.top + §5!Q§.§5S§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §5!Q§.§+!X§ / 2;
         _loc5_.id = §5!Q§.§4Y§;
         _loc3_.§;!D§(_loc5_);
         this.postProcessEmptyEnvironment(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§&!I§ != null)
         {
            _loc3_.theme = §&!I§;
         }
         this.init(_loc3_);
      }
      
      protected function postProcessEmptyEnvironment(param1:§8=§, param2:Boolean) : void
      {
         if(param2)
         {
            this.addFallingBirds(param1);
         }
      }
      
      protected function §7! §() : §8=§
      {
         var _loc1_:§8=§ = new §8=§();
         _loc1_.§+!1§ = -12;
         return new §8=§();
      }
      
      protected function §;7§() : Number
      {
         this.§2![§ ^= this.§2![§ << 21;
         this.§2![§ ^= this.§2![§ >>> 35;
         this.§2![§ ^= this.§2![§ << 4;
         return this.§2![§ * (1 / uint.MAX_VALUE);
      }
      
      protected function addFallingBirds(param1:§8=§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§@! § = null;
         this.§2![§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§;7§() * 5;
               (_loc5_ = new §@! §()).x = 30 + _loc3_ * 10 + this.§;7§() * 9;
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
                  _loc5_.angle = 45 - this.§;7§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§;7§() * 3 - _loc3_ * 8;
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
                  _loc5_.angle = this.§;7§() * 360;
               }
               param1.§4§(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      private function §8K§() : void
      {
      }
      
      public function §]s§() : void
      {
         if(§@!D§.§3w§)
         {
            this.§9r§(this.§>?§.§[n§,false);
         }
         this.§9r§(this.§1k§.§`!a§(§=!R§.§9P§),false);
         this.§9r§(this.§1k§.§`!a§(§=!R§.§=O§),true);
         this.§9r§(this.§1k§.§`!a§(§=!R§.§`!N§),true);
         this.§9r§(this.§+§.§#x§,true);
         this.§9r§(this.§^F§.sprite,true);
         this.§9r§(this.§1k§.§`!a§(§=!R§.§4r§),true);
         this.§9r§(this.§>?§.§>q§,false);
         if(§@!D§.§3w§)
         {
            this.§9r§(this.§>?§.§0![§,false);
         }
         this.§9r§(this.§1k§.§`!a§(§=!R§.§-!H§),true);
         if(!§?k§.§07§)
         {
         }
      }
      
      private function §9r§(param1:Sprite, param2:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(param1);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         param1 /= §"n§.§#"§;
         param2 /= §"n§.§#"§;
         _loc3_.x = (param1 / §5!Q§.§8!>§ + this.§;!4§.§7!1§ - §5!Q§.§"!U§ / §5!Q§.§8!>§) * §'!S§;
         _loc3_.y = (param2 / §5!Q§.§8!>§ + this.§;!4§.§"P§ - §5!Q§.§[!"§ / §5!Q§.§8!>§) * §'!S§;
         return _loc3_;
      }
      
      public function §%!D§(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / §'!S§ + §5!Q§.§"!U§ / §5!Q§.§8!>§ - this.§;!4§.§7!1§) * §5!Q§.§8!>§;
         _loc3_.y = (param2 / §'!S§ + §5!Q§.§[!"§ / §5!Q§.§8!>§ - this.§;!4§.§"P§) * §5!Q§.§8!>§;
         var _loc4_:Number = Math.max(§"n§.§#"§,§"n§.§+l§);
         _loc3_.x *= _loc4_;
         _loc3_.y *= _loc4_;
         return _loc3_;
      }
      
      public function §4m§(param1:String, param2:Number, param3:Number) : void
      {
         this.§+§.§4§(param1,param2,param3);
      }
      
      public function §]!@§() : void
      {
         if(this.§>!R§)
         {
            this.§>!R§.visible = true;
            this.§>!R§.alpha = 0;
         }
         this.§1G§ = 0;
      }
      
      public function §08§() : void
      {
         this.§^!4§ = new §&!0§(§;!T§.§&!!§,§;!T§.§5W§);
      }
      
      public function §;K§() : void
      {
         this.§^!4§ = null;
      }
      
      public function clearLevel() : void
      {
         if(this.§>?§)
         {
            this.§>?§.dispose();
            this.§>?§ = null;
         }
         if(this.§+§)
         {
            this.§+§.dispose();
            this.§+§ = null;
            this.§`!%§ = null;
         }
         if(this.mLevelEngine)
         {
            if(!this.mLevelEngine.§^y§)
            {
            }
            this.mLevelEngine.clear();
            this.mLevelEngine = null;
         }
         if(this.§&L§)
         {
            this.§&L§.clear();
            this.§&L§ = null;
         }
         if(this.§^F§)
         {
            this.§^F§.dispose();
            this.§^F§ = null;
         }
         if(this.§;!4§)
         {
            this.§;!4§.clear();
            this.§;!4§ = null;
         }
         if(this.§1k§)
         {
            this.§1k§.dispose();
            this.§1k§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§9!#§ = 0;
         this.§!j§ = 0;
         this.mReadyToRun = false;
         this.§=5§ = false;
         this.§1G§ = §;!T§.§72§;
         if(this.§'!_§)
         {
            (this.§'!_§ as §?!]§).§ '§.x = 0;
            (this.§'!_§ as §?!]§).§ '§.y = 0;
         }
         if(this.§>!R§)
         {
            this.§>!R§.visible = false;
         }
         this.§9<§ = null;
         this.§+!7§ = null;
         if(this.§[!W§)
         {
            this.§[!W§.removeEventListener(Event.COMPLETE,this.§7!G§);
            this.§[!W§.removeEventListener(Event.CANCEL,this.§]-§);
         }
         if(this.§%]§)
         {
            this.§%]§.removeEventListener(Event.COMPLETE,this.§>H§);
            this.§%]§.removeEventListener(Event.CANCEL,this.§8X§);
         }
         this.§8B§();
         if(§0O§.§=&§)
         {
            §0O§.§=&§.color = 0;
         }
         if(this.§92§)
         {
            this.§92§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver() : void
      {
      }
      
      public function §&e§() : String
      {
         if(this.§+!7§)
         {
            return this.§+!7§.toString();
         }
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         if(!this.mReadyToRun || !§0O§.§`T§())
         {
            return 0;
         }
         if(this.§9<§ && this.§9<§.§?+§)
         {
            return this.§@B§(param1,param2,param3);
         }
         return this.§7!Z§(param1,true,param2,param3);
      }
      
      protected function §7!Z§(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         if(this.§1!3§)
         {
            param1 *= 0.2;
            if(§0O§.§&H§)
            {
               §0O§.§&H§.speed = 0.2;
            }
         }
         var _loc5_:Number = 0;
         this.§!j§ += param1;
         if(param3)
         {
            this.§9!#§ += param1;
            _loc5_ = this.mLevelEngine.§1E§(this.§9!#§);
            this.§^F§.update(param1,param4);
            this.§9!#§ = _loc5_;
         }
         else
         {
            this.§+§.§?! §(param1);
            this.§9!#§ = 0;
         }
         if(param2)
         {
            this.§^v§(param1,_loc5_);
         }
         return param1;
      }
      
      private function §@B§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc5_:Number = NaN;
         var _loc4_:Number = §?k§.§'!1§ * 1000;
         if(this.§9<§)
         {
            param1 *= this.§9<§.speed;
            _loc5_ = this.§!j§ + param1;
            while(this.§!j§ + _loc4_ < _loc5_)
            {
               if(this.§!j§ + _loc4_ > this.§,c§)
               {
                  this.§9<§.step(this);
                  this.§,c§ += _loc4_;
               }
               this.§7!Z§(_loc4_,false,param2,param3);
            }
            if(_loc5_ > this.§,c§ + _loc4_)
            {
               this.§9<§.step(this);
               this.§,c§ += _loc4_;
            }
            if(this.§!j§ < _loc5_)
            {
               this.§7!Z§(_loc5_ - this.§!j§,true,param2,param3);
            }
            return param1;
         }
         return this.§7!Z§(_loc4_,true,param2,param3);
      }
      
      private function §^v§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.§>?§.update(param1);
         this.§+§.§0q§(param1,param2);
         this.§]0§();
         if(this.§1G§ < §;!T§.§72§)
         {
            this.§1G§ += param1;
            _loc3_ = §;!T§.§72§ / 2;
            _loc4_ = (-Math.abs(this.§1G§ - _loc3_) + _loc3_) * (§;!T§.§2§ / _loc3_);
            if(this.§>!R§)
            {
               this.§>!R§.alpha = _loc4_;
            }
         }
         else if(this.§>!R§)
         {
            this.§>!R§.visible = false;
         }
         if(this.§^!4§)
         {
            if(!this.§^!4§.§9-§(this.§;!4§,param1))
            {
               this.§;K§();
            }
         }
         this.§;!4§.§`w§(param1);
         this.mLevelEngine.§ !T§();
         this.§1k§.update(param1);
      }
      
      public function §0!_§(param1:Number) : void
      {
         this.objects.§?! §(param1 * 1000);
         this.objects.§]_§(param1 * 1000);
         this.§<r§();
      }
      
      public function §]0§() : void
      {
         var _loc1_:§&+§ = null;
         if(this.§!j§ > this.§,`§ + 1000 / 30)
         {
            if(this.§1!_§ != null)
            {
               for each(_loc1_ in this.§1!_§)
               {
                  _loc1_.addTrail();
               }
            }
            this.§,`§ = this.§!j§;
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§&+§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.§+§.isPigsAlive(true))
            {
               _loc2_ = this.§+§.§3T§(true);
               _loc2_.§^!M§.mTryToScream = §^e§.§0!a§;
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§+§.§+1§());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            if(this.§+§.isPigsAlive(true))
            {
               _loc2_ = this.§+§.§3T§(true);
               _loc2_.§^!M§.mTryToBlink = §^e§.§"!>§;
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§+§.§+1§());
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §<!J§.§2!_§;
         }
         §&%§.addScore(param1,param2);
         this.§92§.addScore(param1);
         if(param3 && param1 > 0 && !this.§>F§)
         {
            this.§]e§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §]e§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §<!J§.§ %§;
         }
         this.§1k§.§'!"§(§<!J§.§[!E§,§=!R§.§-!H§,§<!J§.§1!5§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §"!B§(param1:§&+§) : void
      {
         if(this.§1!_§ == null)
         {
            this.§1!_§ = new Array();
         }
         this.§1!_§.push(param1);
      }
      
      public function §;!6§() : void
      {
         this.§^F§.§;!6§();
         this.§+§.§0_§();
         this.§>F§ = true;
      }
      
      public function §1!V§(param1:§&+§) : void
      {
         this.§1k§.§5T§(§=!R§.§9P§);
         if(this.§1!_§.indexOf(param1) >= 0)
         {
            this.§1!_§.splice(this.§1!_§.indexOf(param1),1);
         }
         if(this.§1!_§.length == 0)
         {
            this.§1!_§ = null;
         }
      }
      
      public function §^^§(param1:§;!Y§, param2:Number, param3:Number) : void
      {
         this.§`!%§ = this.§+§.§4§(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
         var _loc4_:Number = param1.name.toUpperCase() == "BIRD_GREEN" ? Number(§'C§.§ !C§) : Number(§'C§.§0!0§);
         if(param1.§@?§ > 1)
         {
            this.§`!%§.§8!`§(param1.§@?§);
            this.§`!%§.§^!M§.§-B§();
         }
         if(param1.§ L§ != 0)
         {
            _loc4_ = param1.§ L§;
         }
         var _loc5_:Number = -_loc4_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc6_:Number = _loc4_ * param2 * Math.sin(param3 / (180 / Math.PI));
         this.§`!%§.§!!7§(new b2Vec2(_loc5_,_loc6_),false,true);
         this.camera.§3!Q§(§5!Q§.§?4§);
         if(this.§+!7§)
         {
            this.§+!7§.§^^§(this.mLevelEngine.§[G§,param1.x,param1.y,param2,param3);
         }
      }
      
      public function activatePowerup() : void
      {
         this.§=5§ = true;
      }
      
      private function §<r§() : void
      {
         if(!this.§=5§)
         {
            return;
         }
         this.§=5§ = false;
         if(this.activeObject is §9T§ && !(this.activeObject as §9T§).§]!'§)
         {
            if(this.activeObject.activateSpecialPower(this.§=!T§))
            {
               this.§2^§ = true;
            }
         }
         else
         {
            this.§+§.§5q§();
         }
         if(this.§+!7§)
         {
            this.§+!7§.§^g§(this.mLevelEngine.§[G§);
         }
      }
      
      public function §]!4§() : void
      {
         this.§+§.§]!4§();
      }
      
      public function §<O§() : void
      {
         this.§+§.§,!+§();
      }
      
      public function §0b§() : §8=§
      {
         var _loc1_:§8=§ = new §8=§();
         _loc1_.§7H§ = this.§`'§.§7H§;
         _loc1_.§8!E§ = this.§`'§.§8!E§;
         this.§;!4§.§2z§(_loc1_);
         this.§+§.§#!N§(_loc1_);
         this.§^F§.§`?§(_loc1_);
         _loc1_.theme = this.§>?§.§5!-§();
         return _loc1_;
      }
      
      public function §7!'§() : int
      {
         return this.§`'§.§8!E§;
      }
      
      public function §?L§() : int
      {
         return this.§`'§.§7H§;
      }
      
      public function §?v§(param1:int) : void
      {
         this.§`'§.§8!E§ = param1;
      }
      
      public function §5I§(param1:int) : void
      {
         this.§`'§.§7H§ = param1;
      }
      
      public function §[!3§(param1:Number, param2:Number) : void
      {
         if(this.§-!=§)
         {
            this.§-!=§.§2t§(param1,param2);
         }
         if(this.§;!4§)
         {
            this.§;!4§.§`w§(0);
         }
      }
      
      public function get §>e§() : §8=§
      {
         return this.§`'§;
      }
      
      public function get §=!T§() : §+K§
      {
         return this.§+§;
      }
      
      protected function get §2!Z§() : §0O§
      {
         return this.§8u§;
      }
      
      public function get §4D§() : int
      {
         return §,!P§;
      }
   }
}
