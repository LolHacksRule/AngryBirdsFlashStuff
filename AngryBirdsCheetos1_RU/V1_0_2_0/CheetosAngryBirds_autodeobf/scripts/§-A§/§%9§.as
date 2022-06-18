package §-A§
{
   import § m§.§ r§;
   import §#V§.§,!W§;
   import §#[§.§3#§;
   import §#b§.§5!#§;
   import §#b§.§85§;
   import §#b§.§8j§;
   import §#b§.§>V§;
   import §&!+§.b2Vec2;
   import §'!Y§.§+e§;
   import §'!Y§.§^Z§;
   import §,H§.DisplayObject;
   import §,H§.Sprite;
   import §2!1§.§9k§;
   import §2!4§.§'q§;
   import §2!4§.§5T§;
   import §2!4§.§]!7§;
   import §2!P§.§6=§;
   import §3!,§.§1g§;
   import §6!P§.§`!;§;
   import §;z§.§!+§;
   import §;z§.§0!Q§;
   import §;z§.§=P§;
   import §;z§.§]!N§;
   import §=g§.§@!L§;
   import §@!W§.§8!W§;
   import §]!F§.§,3§;
   import §^n§.§",§;
   import §^n§.§],§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §%9§
   {
      
      private static const §7B§:int = 20;
      
      public static const §+!X§:Number = §8!W§.§34§;
      
      public static const §[!F§:Number = §8!W§.§!=§;
      
      public static const §1[§:Number = 1 / 20;
      
      public static const §`K§:Number = §8!W§.§!=§ * §1[§;
      
      public static const §4,§:Number = §+!X§ * §1[§;
      
      public static const §@K§:§3#§ = new §3#§(13 - 3);
      
      public static var §#!0§:Number = 1;
      
      protected static var §-!J§:String = §85§.§,q§;
       
      
      protected var §+L§:§]!N§;
      
      private var §;!S§:§!+§;
      
      private var §6!E§:Array = null;
      
      protected var §9!H§:§9k§;
      
      public var mLevelEngine:§]!D§;
      
      protected var §]!#§:§^`§;
      
      protected var § u§:§,!W§;
      
      protected var §[!;§:§ '§;
      
      protected var §>W§:§^Z§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §#D§:Boolean = false;
      
      protected var §8!4§:Boolean = false;
      
      protected var §%z§:Boolean = false;
      
      public var §[!?§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §"G§:Number;
      
      public var §?!#§:Number;
      
      private var §90§:Number;
      
      public var §+'§:§>V§;
      
      public var §+!B§:Boolean = false;
      
      private var §=7§:§;4§;
      
      private var §[!_§:Sprite;
      
      protected var §<I§:§85§;
      
      protected var §[!N§:§`!;§ = null;
      
      private var §?!>§:EventDispatcher;
      
      private var §5$§:Array;
      
      private var §6!S§:Array;
      
      protected var §4-§:§6=§;
      
      private var §@W§:§1g§;
      
      protected var §^!2§:§5T§;
      
      protected var §var§:§]!7§;
      
      private var § !Z§:§'q§;
      
      private var §?3§:§'q§;
      
      private var §1!G§:§'q§;
      
      private var §[!<§:Stage;
      
      private var §]m§:§@!D§;
      
      protected var §>D§:§,3§;
      
      protected var §54§:§,3§;
      
      protected var §9Z§:Number = 0.0;
      
      protected var §!H§:String;
      
      private var §>!N§:Boolean;
      
      protected var §1!,§:Boolean;
      
      protected var §3k§:uint = 1.417339207E9;
      
      public var §+]§:Boolean;
      
      public function §%9§(param1:Stage)
      {
         this.§6!S§ = [];
         super();
         this.§?!>§ = new EventDispatcher();
         this.§+'§ = new §>V§();
         this.§[!<§ = param1;
         this.§^!2§ = §5T§.§0!S§;
         this.§var§ = this.initAnimationManager(this.§^!2§);
         this.§ !Z§ = this.§-!D§();
         this.§?3§ = this.§]C§();
         this.§1!G§ = this.§@!5§();
         var _loc2_:Stage3D = param1.stage3Ds[0];
         this.§4-§ = new §6=§(§;4§,param1,new Rectangle(0,0,§8!W§.§34§,§8!W§.§!=§),_loc2_);
         §8!W§.§#!8§.addEventListener(Event.ENTER_FRAME,this.§4-§.§%!0§);
         _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§#!A§,false,0,true);
         this.§4-§.§>!E§ = false;
         this.§4-§.enableErrorChecking = false;
         this.§4-§.§"!P§ = 2;
         this.§4-§.§<!-§();
      }
      
      public static function §<Q§(param1:§!+§, param2:§!+§) : Number
      {
         var _loc3_:Number = param1.§<c§ - param2.§<c§;
         var _loc4_:Number = param1.§4W§ - param2.§4W§;
         return §"r§(_loc3_,_loc4_);
      }
      
      public static function §"r§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         if(!this.§[!_§ && this.§,!@§)
         {
            this.§[!_§ = this.§=7§.§`!Q§;
         }
         return this.§[!_§;
      }
      
      public function get §,!@§() : Sprite
      {
         if(!this.§=7§)
         {
            this.§=7§ = this.§4-§.§8c§ as §;4§;
            this.§=7§.§09§ = false;
         }
         return this.§=7§;
      }
      
      private function get §;!U§() : DisplayObject
      {
         if(this.§,!@§)
         {
            return (this.§,!@§ as §;4§).§;!U§;
         }
         return null;
      }
      
      public function get §"y§() : §]!7§
      {
         return this.§var§;
      }
      
      public function get §&w§() : §5T§
      {
         return this.§^!2§;
      }
      
      public function get camera() : §,!W§
      {
         return this.§ u§;
      }
      
      public function get objects() : §]!N§
      {
         return this.§+L§;
      }
      
      public function get particles() : §^Z§
      {
         return this.§>W§;
      }
      
      public function get background() : §9k§
      {
         return this.§9!H§;
      }
      
      public function get slingshot() : § '§
      {
         return this.§[!;§;
      }
      
      public function get activeObject() : §!+§
      {
         return this.§;!S§;
      }
      
      public function get §#!a§() : §^`§
      {
         return this.§]!#§;
      }
      
      public function get stage() : Stage
      {
         return this.§[!<§;
      }
      
      public function get §`!@§() : §'q§
      {
         return this.§1!G§;
      }
      
      protected function get §2z§() : §'q§
      {
         return this.§ !Z§;
      }
      
      public function set activeObject(param1:§!+§) : void
      {
         this.§;!S§ = param1;
      }
      
      public function set §-!%§(param1:Boolean) : void
      {
         this.§1!,§ = param1;
      }
      
      public function clear() : void
      {
         if(this.§@W§)
         {
            this.§@W§.dispose();
         }
         if(this.§^!2§)
         {
            this.§^!2§.dispose();
         }
         if(this.§ !Z§ && this.§ !Z§.§&w§)
         {
            this.§ !Z§.§&w§.dispose();
         }
         if(this.§1!G§ && this.§1!G§.§&w§)
         {
            this.§1!G§.§&w§.dispose();
         }
         if(this.§4-§)
         {
            this.§4-§.dispose();
         }
      }
      
      protected function §-!D§() : §'q§
      {
         return null;
      }
      
      protected function §]C§() : §'q§
      {
         return null;
      }
      
      protected function §@!5§() : §'q§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§5T§) : §]!7§
      {
         return new §]!7§(param1);
      }
      
      public function §=!@§(param1:Boolean) : void
      {
         if(§6=§.§4!8§)
         {
            if(param1)
            {
               §6=§.§4!8§.start();
            }
            else
            {
               §6=§.§4!8§.stop();
               §6=§.§4!8§.color = 0;
            }
         }
      }
      
      public function §!6§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function §+!§(param1:§`!;§) : void
      {
         if(this.§[!N§ != null)
         {
            this.§[!N§.removeEventListeners();
         }
         this.§[!N§ = param1;
         if(this.mReadyToRun)
         {
            this.§[!N§.addEventListeners();
         }
      }
      
      public function §[!#§() : §,3§
      {
         return this.§>D§;
      }
      
      public function §'r§(param1:§1g§, param2:Array, param3:Function) : void
      {
         this.§@W§ = param1;
         var _loc4_:int = this.§@W§.§%a§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§^!2§.§<!J§(this.§@W§.§=8§(_loc5_));
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§?!>§.addEventListener(Event.INIT,param3);
            this.§6!S§.push(param3);
         }
         if(this.§`$§(param2))
         {
            this.§-n§();
         }
      }
      
      private function §`$§(param1:Array) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.§^!2§.§25§())
         {
            _loc2_ = this.§^!2§.§ A§ / 1000;
            _loc3_ = this.§^!2§.§<C§ / 1000;
            §@!L§.log("\n\nMain texture manager memory usage:\n   textures " + _loc2_ + " kilobytes\n   bitmaps " + _loc3_ + " kilobytes\n\n");
            this.initializeAnimations(param1);
            return true;
         }
         this.§5$§ = param1.concat();
         return false;
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         this.§var§.initializeAnimations(param1);
      }
      
      private function §#!A§(param1:Event) : void
      {
         this.§^!2§.§%[§();
         if(this.§2z§ && this.§2z§.§&w§)
         {
            this.§2z§.§&w§.§%[§();
         }
         if(this.§`!@§ && this.§`!@§.§&w§)
         {
            this.§`!@§.§&w§.§%[§();
         }
         if(this.§5$§)
         {
            this.§`$§(this.§5$§);
            this.§5$§ = null;
            this.§-n§();
         }
         if(this.§[!N§ != null && this.mReadyToRun)
         {
            this.§[!N§.addEventListeners();
         }
         if(this.§ !Z§)
         {
            this.§ !Z§.§25§();
         }
         if(this.§1!G§)
         {
            if(this.§1!G§.§&w§)
            {
               this.§1!G§.§&w§.§%[§();
               this.§1!G§.§25§();
            }
         }
      }
      
      private function §-n§() : void
      {
         this.§?!>§.dispatchEvent(new Event(Event.INIT));
         this.§]#§();
      }
      
      private function §]#§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§6!S§)
         {
            this.§?!>§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§6!S§ = [];
      }
      
      public function init(param1:§85§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§]!#§ = new §^`§(this,param1);
         this.§ u§ = this.§&!Q§(param1);
         this.§"G§ = 0;
         this.§?!#§ = 0;
         this.§90§ = 0;
         this.§>!N§ = false;
         this.mReadyToRun = false;
         this.§#D§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         §-!J§ = param1.theme;
         this.§<I§ = param1;
         this.§8!4§ = this.§=!<§(param1.theme);
         this.§%z§ = this.§=!O§(param1.theme);
         if(this.§8!4§ && this.§%z§)
         {
            this.§>!W§(param1);
         }
         else
         {
            this.§8!O§(param1.theme);
         }
         this.initReplay();
         §?s§.init();
      }
      
      protected function initReplay() : void
      {
         this.§>D§ = new §,3§(§5!#§.§'D§);
      }
      
      protected function §=!<§(param1:String) : Boolean
      {
         if(this.§ !Z§)
         {
            return false;
         }
         return true;
      }
      
      protected function §=!O§(param1:String) : Boolean
      {
         var _loc2_:§],§ = null;
         if(this.§?3§)
         {
            _loc2_ = §",§.§3^§(param1);
            if(_loc2_)
            {
               if(_loc2_.§3h§ && !this.§?3§.§1!@§(_loc2_.§3h§))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function §8!O§(param1:String) : void
      {
         var _loc2_:§],§ = null;
         if(this.§ !Z§ && !this.§=!<§(param1))
         {
            this.§ !Z§.removeEventListener(Event.COMPLETE,this.§>!R§);
            this.§ !Z§.removeEventListener(Event.CANCEL,this.§,!^§);
            this.§ !Z§.addEventListener(Event.COMPLETE,this.§>!R§);
            this.§ !Z§.addEventListener(Event.CANCEL,this.§,!^§);
            this.§ !Z§.§?b§(param1);
         }
         if(this.§?3§ && !this.§=!O§(param1))
         {
            this.§?3§.removeEventListener(Event.COMPLETE,this.§"!A§);
            this.§?3§.removeEventListener(Event.CANCEL,this.§]!0§);
            this.§?3§.addEventListener(Event.COMPLETE,this.§"!A§);
            this.§?3§.addEventListener(Event.CANCEL,this.§]!0§);
            _loc2_ = §",§.§3^§(param1);
            if(_loc2_)
            {
               this.§?3§.§?b§(_loc2_.§3h§);
            }
         }
      }
      
      private function §>!R§(param1:Event) : void
      {
         this.§ !Z§.removeEventListener(Event.COMPLETE,this.§>!R§);
         this.§ !Z§.removeEventListener(Event.CANCEL,this.§,!^§);
         this.§8!4§ = true;
         if(this.§8!4§ && this.§%z§)
         {
            this.§>!W§(this.§<I§);
         }
      }
      
      private function §,!^§(param1:Event) : void
      {
         this.§ !Z§.removeEventListener(Event.COMPLETE,this.§>!R§);
         this.§ !Z§.removeEventListener(Event.CANCEL,this.§,!^§);
         this.§#D§ = true;
      }
      
      private function §"!A§(param1:Event) : void
      {
         this.§ !Z§.removeEventListener(Event.COMPLETE,this.§"!A§);
         this.§ !Z§.removeEventListener(Event.CANCEL,this.§]!0§);
         this.§%z§ = true;
         if(this.§8!4§ && this.§%z§)
         {
            this.§>!W§(this.§<I§);
         }
      }
      
      private function §]!0§(param1:Event) : void
      {
         this.§ !Z§.removeEventListener(Event.COMPLETE,this.§"!A§);
         this.§ !Z§.removeEventListener(Event.CANCEL,this.§]!0§);
         this.§%z§ = true;
         if(this.§8!4§ && this.§%z§)
         {
            this.§>!W§(this.§<I§);
         }
      }
      
      public function get §'W§() : §5T§
      {
         return this.§^!2§;
      }
      
      protected function §>!W§(param1:§85§) : void
      {
         this.§1!,§ = false;
         this.§+]§ = false;
         if(§6=§.§6>§)
         {
            §6=§.§6>§.speed = 1;
         }
         this.mLevelEngine = new §]!D§(this);
         this.§9!H§ = this.§use §(param1.theme,this.§]!#§.§>6§ / §1[§,this.§'W§,this.§ u§.§-o§());
         this.§9!H§.§?!§(§8!W§.§>J§());
         this.§+L§ = this.initLevelObjectManager(param1);
         this.§[!;§ = this.initLevelSlingshot(param1);
         this.§>W§ = this.§9n§(this.§var§,this.§^!2§);
         this.§ u§.init();
         this.§0y§();
         this.loadPreviousReplayData();
         this.mReadyToRun = true;
         if(this.§[!N§)
         {
            this.§[!N§.addEventListeners();
         }
      }
      
      protected function loadPreviousReplayData() : void
      {
         if(this.§!H§)
         {
            this.§54§ = §,3§.§>!W§(this.§!H§);
            this.§54§.speed = 1;
            this.§54§.play();
            this.§9Z§ = -1000;
            this.§!H§ = null;
         }
      }
      
      public function §6!7§(param1:String) : void
      {
         this.§!H§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§54§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§54§)
         {
            if(param1)
            {
               this.§54§.speed = Math.min(this.§54§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§54§.speed = Math.max(this.§54§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§54§)
         {
            this.§54§.speed = 1;
         }
      }
      
      protected function initLevelObjectManager(param1:§85§) : §]!N§
      {
         return new §]!N§(this,param1,new Sprite());
      }
      
      protected function §&!Q§(param1:§85§) : §,!W§
      {
         return new §,!W§(this,param1);
      }
      
      protected function §use §(param1:String, param2:Number, param3:§5T§, param4:Number) : §9k§
      {
         return new §9k§(param1,param2,param3,param4);
      }
      
      protected function initLevelSlingshot(param1:§85§) : § '§
      {
         return new § '§(this,param1,new Sprite());
      }
      
      protected function §9n§(param1:§]!7§, param2:§5T§) : §^Z§
      {
         return new §^Z§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§85§ = this.§+!%§();
         var _loc4_:§8j§;
         (_loc4_ = new §8j§()).left = 0;
         _loc4_.top = -§,!W§.§%1§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §,!W§.§%1§;
         _loc4_.right = _loc4_.left + §,!W§.§7I§;
         _loc4_.y = -13.929;
         _loc4_.x = §,!W§.§7I§;
         _loc4_.id = §,!W§.§%b§;
         _loc3_.§0§(_loc4_);
         var _loc5_:§8j§;
         (_loc5_ = new §8j§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §,!W§.§7I§;
         _loc5_.bottom = _loc5_.top + §,!W§.§%1§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §,!W§.§7I§ / 2;
         _loc5_.id = §,!W§.§[z§;
         _loc3_.§0§(_loc5_);
         this.§,h§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§-!J§ != null)
         {
            _loc3_.theme = §-!J§;
         }
         this.init(_loc3_);
      }
      
      protected function §,h§(param1:§85§, param2:Boolean) : void
      {
         if(param2)
         {
            this.§5o§(param1);
         }
      }
      
      protected function §+!%§() : §85§
      {
         var _loc1_:§85§ = new §85§();
         _loc1_.§@f§ = -12;
         return new §85§();
      }
      
      protected function §%!P§() : Number
      {
         this.§3k§ ^= this.§3k§ << 21;
         this.§3k§ ^= this.§3k§ >>> 35;
         this.§3k§ ^= this.§3k§ << 4;
         return this.§3k§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §5o§(param1:§85§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§ r§ = null;
         this.§3k§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§%!P§() * 5;
               (_loc5_ = new § r§()).x = 30 + _loc3_ * 10 + this.§%!P§() * 9;
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
                  _loc5_.angle = 45 - this.§%!P§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§%!P§() * 3 - _loc3_ * 8;
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
                  _loc5_.angle = this.§%!P§() * 360;
               }
               param1.addObject(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      private function §0?§() : void
      {
      }
      
      public function §0y§() : void
      {
         if(§9k§.§@#§)
         {
            this.§,p§(this.§9!H§.§84§,false);
         }
         this.§,p§(this.§>W§.§'G§(§^Z§.§6a§),false);
         this.§,p§(this.§>W§.§'G§(§^Z§.§'F§),true);
         this.§,p§(this.§>W§.§'G§(§^Z§.§1a§),true);
         this.§,p§(this.§+L§.§-!W§,true);
         this.§,p§(this.§[!;§.sprite,true);
         this.§,p§(this.§>W§.§'G§(§^Z§.§<!%§),true);
         this.§,p§(this.§9!H§.§1A§,false);
         if(§9k§.§@#§)
         {
            this.§,p§(this.§9!H§.§6b§,false);
         }
         this.§,p§(this.§>W§.§'G§(§^Z§.§2!8§),true);
      }
      
      private function §,p§(param1:Sprite, param2:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(param1);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         param1 /= §8!W§.§[w§;
         param2 /= §8!W§.§[w§;
         _loc3_.x = (param1 / §,!W§.§+!R§ + this.§ u§.§9!+§ - §,!W§.§[!L§ / §,!W§.§+!R§) * §1[§;
         _loc3_.y = (param2 / §,!W§.§+!R§ + this.§ u§.§1!&§ - §,!W§.§@!O§ / §,!W§.§+!R§) * §1[§;
         return _loc3_;
      }
      
      public function §<8§(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / §1[§ + §,!W§.§[!L§ / §,!W§.§+!R§ - this.§ u§.§9!+§) * §,!W§.§+!R§;
         _loc3_.y = (param2 / §1[§ + §,!W§.§@!O§ / §,!W§.§+!R§ - this.§ u§.§1!&§) * §,!W§.§+!R§;
         var _loc4_:Number = Math.max(§8!W§.§[w§,§8!W§.§@!+§);
         _loc3_.x *= _loc4_;
         _loc3_.y *= _loc4_;
         return _loc3_;
      }
      
      public function §#<§(param1:String, param2:Number, param3:Number) : void
      {
         this.§+L§.addObject(param1,param2,param3);
      }
      
      public function §9!D§() : void
      {
         if(this.§;!U§)
         {
            this.§;!U§.visible = true;
            this.§;!U§.alpha = 0;
         }
         this.§[!?§ = 0;
      }
      
      public function §48§() : void
      {
         this.§]m§ = new §@!D§(§36§.§9!I§,§36§.§;!I§);
      }
      
      public function §6K§() : void
      {
         this.§]m§ = null;
      }
      
      public function clearLevel() : void
      {
         if(this.§9!H§)
         {
            this.§9!H§.dispose();
            this.§9!H§ = null;
         }
         if(this.§+L§)
         {
            this.§+L§.dispose();
            this.§+L§ = null;
            this.§;!S§ = null;
         }
         if(this.mLevelEngine)
         {
            if(!this.mLevelEngine.override)
            {
            }
            this.mLevelEngine.clear();
            this.mLevelEngine = null;
         }
         if(this.§]!#§)
         {
            this.§]!#§.clear();
            this.§]!#§ = null;
         }
         if(this.§[!;§)
         {
            this.§[!;§.dispose();
            this.§[!;§ = null;
         }
         if(this.§ u§)
         {
            this.§ u§.clear();
            this.§ u§ = null;
         }
         if(this.§>W§)
         {
            this.§>W§.dispose();
            this.§>W§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§"G§ = 0;
         this.§?!#§ = 0;
         this.mReadyToRun = false;
         this.§>!N§ = false;
         this.§[!?§ = §36§.§ !0§;
         if(this.§,!@§)
         {
            (this.§,!@§ as §;4§).§1`§.x = 0;
            (this.§,!@§ as §;4§).§1`§.y = 0;
         }
         if(this.§;!U§)
         {
            this.§;!U§.visible = false;
         }
         this.§54§ = null;
         this.§>D§ = null;
         if(this.§ !Z§)
         {
            this.§ !Z§.removeEventListener(Event.COMPLETE,this.§>!R§);
            this.§ !Z§.removeEventListener(Event.CANCEL,this.§,!^§);
         }
         if(this.§?3§)
         {
            this.§?3§.removeEventListener(Event.COMPLETE,this.§"!A§);
            this.§?3§.removeEventListener(Event.CANCEL,this.§]!0§);
         }
         this.§]#§();
         if(§6=§.§4!8§)
         {
            §6=§.§4!8§.color = 0;
         }
         if(this.§[!N§)
         {
            this.§[!N§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver() : void
      {
      }
      
      public function §8w§() : String
      {
         if(this.§>D§)
         {
            return this.§>D§.toString();
         }
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         if(!this.mReadyToRun || !§6=§.§6!N§())
         {
            return 0;
         }
         if(this.§54§ && this.§54§.§]!K§)
         {
            return this.§each §(param1,param2,param3);
         }
         return this.§0!T§(param1,true,param2,param3);
      }
      
      protected function §0!T§(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         if(this.§1!,§)
         {
            param1 *= 0.2;
            if(§6=§.§6>§)
            {
               §6=§.§6>§.speed = 0.2;
            }
         }
         var _loc5_:Number = 0;
         this.§?!#§ += param1;
         if(param3)
         {
            this.§"G§ += param1;
            _loc5_ = this.mLevelEngine.§1-§(this.§"G§);
            this.§[!;§.update(param1,param4);
            this.§"G§ = _loc5_;
         }
         else
         {
            this.§+L§.§-!A§(param1);
            this.§"G§ = 0;
         }
         if(param2)
         {
            this.§2!K§(param1,_loc5_);
         }
         return param1;
      }
      
      private function §each §(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc5_:Number = NaN;
         var _loc4_:Number = §]!D§.§+-§ * 1000;
         if(this.§54§)
         {
            param1 *= this.§54§.speed;
            _loc5_ = this.§?!#§ + param1;
            while(this.§?!#§ + _loc4_ < _loc5_)
            {
               if(this.§?!#§ + _loc4_ > this.§9Z§)
               {
                  this.§54§.step(this);
                  this.§9Z§ += _loc4_;
               }
               this.§0!T§(_loc4_,false,param2,param3);
            }
            if(_loc5_ > this.§9Z§ + _loc4_)
            {
               this.§54§.step(this);
               this.§9Z§ += _loc4_;
            }
            if(this.§?!#§ < _loc5_)
            {
               this.§0!T§(_loc5_ - this.§?!#§,true,param2,param3);
            }
            return param1;
         }
         return this.§0!T§(_loc4_,true,param2,param3);
      }
      
      private function §2!K§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.§9!H§.update(param1);
         this.§+L§.§4w§(param1,param2);
         this.§=!§();
         if(this.§[!?§ < §36§.§ !0§)
         {
            this.§[!?§ += param1;
            _loc3_ = §36§.§ !0§ / 2;
            _loc4_ = (-Math.abs(this.§[!?§ - _loc3_) + _loc3_) * (§36§.§9!S§ / _loc3_);
            if(this.§;!U§)
            {
               this.§;!U§.alpha = _loc4_;
            }
         }
         else if(this.§;!U§)
         {
            this.§;!U§.visible = false;
         }
         if(this.§]m§)
         {
            if(!this.§]m§.§>g§(this.§ u§,param1))
            {
               this.§6K§();
            }
         }
         this.§ u§.§'X§(param1);
         this.mLevelEngine.§^p§();
         this.§>W§.update(param1);
      }
      
      public function §]E§(param1:Number) : void
      {
         this.objects.§-!A§(param1 * 1000);
         this.objects.§5!W§(param1 * 1000);
         this.§[!J§();
      }
      
      public function §=!§() : void
      {
         var _loc1_:§!+§ = null;
         if(this.§?!#§ > this.§90§ + 1000 / 30)
         {
            if(this.§6!E§ != null)
            {
               for each(_loc1_ in this.§6!E§)
               {
                  _loc1_.addTrail();
               }
            }
            this.§90§ = this.§?!#§;
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§!+§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.§+L§.isPigsAlive(true))
            {
               _loc2_ = this.§+L§.§9d§(true);
               _loc2_.§=t§.mTryToScream = §0!Q§.§%!?§;
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§+L§.§2!U§());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            if(this.§+L§.isPigsAlive(true))
            {
               _loc2_ = this.§+L§.§9d§(true);
               _loc2_.§=t§.mTryToBlink = §0!Q§.§"w§;
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§+L§.§2!U§());
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §+e§.§;!F§;
         }
         §?s§.addScore(param1,param2);
         this.§[!N§.addScore(param1);
         if(param3 && param1 > 0 && !this.§+]§)
         {
            this.§%!>§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §%!>§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §+e§.§^+§;
         }
         this.§>W§.addParticle(§+e§.§!V§,§^Z§.§2!8§,§+e§.§`R§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §=b§(param1:§!+§) : void
      {
         if(this.§6!E§ == null)
         {
            this.§6!E§ = new Array();
         }
         this.§6!E§.push(param1);
      }
      
      public function §9!K§() : void
      {
         this.§[!;§.§9!K§();
         this.§+L§.§8y§();
         this.§+]§ = true;
      }
      
      public function §=J§(param1:§!+§) : void
      {
         this.§>W§.§2J§(§^Z§.§6a§);
         if(this.§6!E§.indexOf(param1) >= 0)
         {
            this.§6!E§.splice(this.§6!E§.indexOf(param1),1);
         }
         if(this.§6!E§.length == 0)
         {
            this.§6!E§ = null;
         }
      }
      
      public function §9!N§(param1:§^!F§, param2:Number, param3:Number) : void
      {
         this.§;!S§ = this.§+L§.addObject(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
         var _loc4_:Number = param1.name.toUpperCase() == "BIRD_GREEN" ? Number(§ '§.§3B§) : Number(§ '§.§+!4§);
         if(param1.§?i§ > 1)
         {
            this.§;!S§.§-U§(param1.§?i§);
            this.§;!S§.§=t§.§+!W§();
         }
         if(param1.§+H§ != 0)
         {
            _loc4_ = param1.§+H§;
         }
         var _loc5_:Number = -_loc4_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc6_:Number = _loc4_ * param2 * Math.sin(param3 / (180 / Math.PI));
         this.§;!S§.§!N§(new b2Vec2(_loc5_,_loc6_),false,true);
         this.camera.§?2§(§,!W§.§]!P§);
         if(this.§>D§)
         {
            this.§>D§.§9!N§(this.mLevelEngine.currentStep,param1.x,param1.y,param2,param3);
         }
      }
      
      public function activatePowerup() : void
      {
         this.§>!N§ = true;
      }
      
      private function §[!J§() : void
      {
         if(!this.§>!N§)
         {
            return;
         }
         this.§>!N§ = false;
         if(this.activeObject is §=P§ && !(this.activeObject as §=P§).§%Z§)
         {
            if(this.activeObject.activateSpecialPower(this.§>9§))
            {
               this.§+!B§ = true;
            }
         }
         else
         {
            this.§+L§.§1"§();
         }
         if(this.§>D§)
         {
            this.§>D§.§@!T§(this.mLevelEngine.currentStep);
         }
      }
      
      public function §&q§() : void
      {
         this.§+L§.§&q§();
      }
      
      public function §0!!§() : void
      {
         this.§+L§.§#!Z§();
      }
      
      public function §@B§() : §85§
      {
         var _loc1_:§85§ = new §85§();
         _loc1_.§[^§ = this.§<I§.§[^§;
         _loc1_.§96§ = this.§<I§.§96§;
         this.§ u§.§;O§(_loc1_);
         this.§+L§.§ !-§(_loc1_);
         this.§[!;§.§0t§(_loc1_);
         _loc1_.theme = this.§9!H§.§`P§();
         return _loc1_;
      }
      
      public function §`!<§() : int
      {
         return this.§<I§.§96§;
      }
      
      public function § !&§() : int
      {
         return this.§<I§.§[^§;
      }
      
      public function §%!^§(param1:int) : void
      {
         this.§<I§.§96§ = param1;
      }
      
      public function §"!S§(param1:int) : void
      {
         this.§<I§.§[^§ = param1;
      }
      
      public function §3W§(param1:Number, param2:Number) : void
      {
         if(this.§=7§)
         {
            this.§=7§.§;!X§(param1,param2);
         }
         if(this.§ u§)
         {
            this.§ u§.§'X§(0);
         }
      }
      
      public function get §-!Q§() : §85§
      {
         return this.§<I§;
      }
      
      public function get §>9§() : §]!N§
      {
         return this.§+L§;
      }
      
      protected function get §!u§() : §6=§
      {
         return this.§4-§;
      }
      
      public function get §!§() : int
      {
         return §7B§;
      }
   }
}
