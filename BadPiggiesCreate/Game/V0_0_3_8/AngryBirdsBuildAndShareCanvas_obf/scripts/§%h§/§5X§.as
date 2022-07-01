package §%h§
{
   import § !V§.§7!P§;
   import § !V§.§8!J§;
   import § !V§.§]"5§;
   import §!g§.§&" §;
   import §!g§.§,q§;
   import §%!&§.§'"-§;
   import §%!&§.§5",§;
   import §%!&§.§6""§;
   import §%!&§.§;!x§;
   import §&"+§.§>@§;
   import §'!O§.§!a§;
   import §'!O§.§+!V§;
   import §'!O§.§@!l§;
   import §'!O§.§[!m§;
   import §,E§.§ t§;
   import §0!F§.§^d§;
   import §4!S§.§&!4§;
   import §4u§.§<!L§;
   import §9v§.b2Vec2;
   import §<C§.§5x§;
   import §>0§.§'L§;
   import §?c§.§3!u§;
   import §?c§.final;
   import §?l§.§9!X§;
   import §]!2§.DisplayObject;
   import §]!2§.Sprite;
   import §]!X§.§4G§;
   import §`%§.§8!0§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §5X§
   {
      
      private static const §[f§:int = 20;
      
      public static const §5"'§:Number = §8!0§.§;"#§;
      
      public static const §+T§:Number = §8!0§.§3g§;
      
      public static const §,!m§:Number = 1 / 20;
      
      public static const §,+§:Number = §8!0§.§3g§ * §,!m§;
      
      public static const §+h§:Number = §5"'§ * §,!m§;
      
      public static const §9!g§:§ t§ = new § t§(13 - 3);
      
      public static var §&!r§:Number = 1;
      
      protected static var §5Z§:String = §@!l§.§1q§;
       
      
      protected var §`Z§:§'"-§;
      
      private var §%X§:§;!x§;
      
      private var §?P§:Array = null;
      
      protected var §'!>§:§5x§;
      
      public var §[![§:§3m§;
      
      protected var §;"!§:§"l§;
      
      protected var §7!E§:§'L§;
      
      protected var §+P§:§=$§;
      
      protected var §[w§:final;
      
      public var mReadyToRun:Boolean = false;
      
      public var §<W§:Boolean = false;
      
      protected var §0o§:Boolean = false;
      
      protected var §<!U§:Boolean = false;
      
      public var §@!U§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §@h§:Number;
      
      public var §'§:Number;
      
      private var §>!B§:Number;
      
      public var §[!T§:§!a§;
      
      public var §-6§:Boolean = false;
      
      private var §`!7§:§8!y§;
      
      private var §5Q§:Sprite;
      
      protected var §`R§:§@!l§;
      
      protected var §?z§:§&!4§ = null;
      
      private var §@!C§:EventDispatcher;
      
      private var §;!Z§:Array;
      
      private var § +§:Array;
      
      protected var §["4§:§^d§;
      
      private var §]!i§:§9!X§;
      
      protected var § d§:§7!P§;
      
      protected var §3!3§:§]"5§;
      
      private var §5!h§:§8!J§;
      
      private var §8!6§:§8!J§;
      
      private var §8s§:§8!J§;
      
      private var §,![§:Stage;
      
      private var §0!B§:§&!Z§;
      
      protected var §'!3§:§4G§;
      
      protected var §4"3§:§4G§;
      
      protected var §#!y§:Number = 0.0;
      
      protected var §7#§:String;
      
      private var §<!V§:Boolean;
      
      protected var §5!z§:Boolean;
      
      protected var §,?§:uint = 1.417339207E9;
      
      public var §69§:Boolean;
      
      public function §5X§(param1:Stage)
      {
         this.§ +§ = [];
         super();
         this.§@!C§ = new EventDispatcher();
         this.§[!T§ = new §!a§();
         this.§,![§ = param1;
         this.§ d§ = §7!P§.§9j§;
         this.§3!3§ = this.initAnimationManager(this.§ d§);
         this.§5!h§ = this.§&_§();
         this.§8!6§ = this.§["$§();
         this.§8s§ = this.§7!x§();
         var _loc2_:Stage3D = param1.stage3Ds[0];
         this.§["4§ = new §^d§(§8!y§,param1,new Rectangle(0,0,§8!0§.§;"#§,§8!0§.§3g§),_loc2_);
         §8!0§.§%R§.addEventListener(Event.ENTER_FRAME,this.§["4§.onEnterFrame);
         _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§6I§,false,0,true);
         this.§["4§.§%N§ = false;
         this.§["4§.enableErrorChecking = false;
         this.§["4§.§=!G§ = 2;
         this.§["4§.§2f§();
      }
      
      public static function §`X§(param1:§;!x§, param2:§;!x§) : Number
      {
         var _loc3_:Number = param1.§^!Q§ - param2.§^!Q§;
         var _loc4_:Number = param1.§19§ - param2.§19§;
         return §,!p§(_loc3_,_loc4_);
      }
      
      public static function §,!p§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         if(!this.§5Q§ && this.§9D§)
         {
            this.§5Q§ = this.§`!7§.§4!t§;
         }
         return this.§5Q§;
      }
      
      public function get §9D§() : Sprite
      {
         if(!this.§`!7§)
         {
            this.§`!7§ = this.§["4§.§>d§ as §8!y§;
            this.§`!7§.§7!'§ = false;
         }
         return this.§`!7§;
      }
      
      private function get §8H§() : DisplayObject
      {
         if(this.§9D§)
         {
            return (this.§9D§ as §8!y§).§8H§;
         }
         return null;
      }
      
      public function get §1!U§() : §]"5§
      {
         return this.§3!3§;
      }
      
      public function get §7<§() : §7!P§
      {
         return this.§ d§;
      }
      
      public function get camera() : §'L§
      {
         return this.§7!E§;
      }
      
      public function get objects() : §'"-§
      {
         return this.§`Z§;
      }
      
      public function get particles() : final
      {
         return this.§[w§;
      }
      
      public function get background() : §5x§
      {
         return this.§'!>§;
      }
      
      public function get slingshot() : §=$§
      {
         return this.§+P§;
      }
      
      public function get activeObject() : §;!x§
      {
         return this.§%X§;
      }
      
      public function get borders() : §"l§
      {
         return this.§;"!§;
      }
      
      public function get stage() : Stage
      {
         return this.§,![§;
      }
      
      public function get §01§() : §8!J§
      {
         return this.§8s§;
      }
      
      protected function get §7!?§() : §8!J§
      {
         return this.§5!h§;
      }
      
      public function set activeObject(param1:§;!x§) : void
      {
         this.§%X§ = param1;
      }
      
      public function set §]!U§(param1:Boolean) : void
      {
         this.§5!z§ = param1;
      }
      
      public function clear() : void
      {
         if(this.§]!i§)
         {
            this.§]!i§.dispose();
         }
         if(this.§ d§)
         {
            this.§ d§.dispose();
         }
         if(this.§5!h§ && this.§5!h§.§7<§)
         {
            this.§5!h§.§7<§.dispose();
         }
         if(this.§8s§ && this.§8s§.§7<§)
         {
            this.§8s§.§7<§.dispose();
         }
         if(this.§["4§)
         {
            this.§["4§.dispose();
         }
      }
      
      protected function §&_§() : §8!J§
      {
         return null;
      }
      
      protected function §["$§() : §8!J§
      {
         return null;
      }
      
      protected function §7!x§() : §8!J§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§7!P§) : §]"5§
      {
         return new §]"5§(param1);
      }
      
      public function §<;§(param1:Boolean) : void
      {
         if(§^d§.§+!f§)
         {
            if(param1)
            {
               §^d§.§+!f§.start();
            }
            else
            {
               §^d§.§+!f§.stop();
               §^d§.§+!f§.color = 0;
            }
         }
      }
      
      public function §;!0§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function §#8§(param1:§&!4§) : void
      {
         if(this.§?z§ != null)
         {
            this.§?z§.removeEventListeners();
         }
         this.§?z§ = param1;
         if(this.mReadyToRun)
         {
            this.§?z§.addEventListeners();
         }
      }
      
      public function §3s§() : §4G§
      {
         return this.§'!3§;
      }
      
      public function §4!I§(param1:§9!X§, param2:Array, param3:Function) : void
      {
         this.§]!i§ = param1;
         var _loc4_:int = this.§]!i§.§#!C§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§ d§.§?!R§(this.§]!i§.§&!i§(_loc5_));
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§@!C§.addEventListener(Event.INIT,param3);
            this.§ +§.push(param3);
         }
         if(this.§[!d§(param2))
         {
            this.§]!_§();
         }
      }
      
      private function §[!d§(param1:Array) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.§ d§.§ ! §())
         {
            _loc2_ = this.§ d§.§<!B§ / 1000;
            _loc3_ = this.§ d§.§7!G§ / 1000;
            §<!L§.log("\n\nMain texture manager memory usage:\n   textures " + _loc2_ + " kilobytes\n   bitmaps " + _loc3_ + " kilobytes\n\n");
            this.§63§(param1);
            return true;
         }
         this.§;!Z§ = param1.concat();
         return false;
      }
      
      private function §63§(param1:Array) : void
      {
         this.§3!3§.§63§(param1);
      }
      
      private function §6I§(param1:Event) : void
      {
         this.§ d§.§break§();
         if(this.§7!?§ && this.§7!?§.§7<§)
         {
            this.§7!?§.§7<§.§break§();
         }
         if(this.§01§ && this.§01§.§7<§)
         {
            this.§01§.§7<§.§break§();
         }
         if(this.§;!Z§)
         {
            this.§[!d§(this.§;!Z§);
            this.§;!Z§ = null;
            this.§]!_§();
         }
         if(this.§?z§ != null && this.mReadyToRun)
         {
            this.§?z§.addEventListeners();
         }
         if(this.§5!h§)
         {
            this.§5!h§.§ ! §();
         }
         if(this.§8s§)
         {
            if(this.§8s§.§7<§)
            {
               this.§8s§.§7<§.§break§();
               this.§8s§.§ ! §();
            }
         }
      }
      
      private function §]!_§() : void
      {
         this.§@!C§.dispatchEvent(new Event(Event.INIT));
         this.§8!?§();
      }
      
      private function §8!?§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§ +§)
         {
            this.§@!C§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§ +§ = [];
      }
      
      public function init(param1:§@!l§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§;"!§ = new §"l§(this,param1);
         this.§7!E§ = this.initLevelCamera(param1);
         this.§@h§ = 0;
         this.§'§ = 0;
         this.§>!B§ = 0;
         this.§<!V§ = false;
         this.mReadyToRun = false;
         this.§<W§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         §5Z§ = param1.theme;
         this.§`R§ = param1;
         this.§0o§ = this.§6w§(param1.theme);
         this.§<!U§ = this.§^Y§(param1.theme);
         if(this.§0o§ && this.§<!U§)
         {
            this.initialize(param1);
         }
         else
         {
            this.§3!§(param1.theme);
         }
         this.§1j§();
         §^!'§.init();
      }
      
      protected function §1j§() : void
      {
         this.§'!3§ = new §4G§(§[!m§.§<!D§);
      }
      
      protected function §6w§(param1:String) : Boolean
      {
         if(this.§5!h§)
         {
            return false;
         }
         return true;
      }
      
      protected function §^Y§(param1:String) : Boolean
      {
         var _loc2_:§&" § = null;
         if(this.§8!6§)
         {
            _loc2_ = §,q§.§"!>§(param1);
            if(_loc2_)
            {
               if(_loc2_.§7!F§ && !this.§8!6§.§^9§(_loc2_.§7!F§))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function §3!§(param1:String) : void
      {
         var _loc2_:§&" § = null;
         if(this.§5!h§ && !this.§6w§(param1))
         {
            this.§5!h§.removeEventListener(Event.COMPLETE,this.§!7§);
            this.§5!h§.removeEventListener(Event.CANCEL,this.§null §);
            this.§5!h§.addEventListener(Event.COMPLETE,this.§!7§);
            this.§5!h§.addEventListener(Event.CANCEL,this.§null §);
            this.§5!h§.§&^§(param1);
         }
         if(this.§8!6§ && !this.§^Y§(param1))
         {
            this.§8!6§.removeEventListener(Event.COMPLETE,this.§!s§);
            this.§8!6§.removeEventListener(Event.CANCEL,this.§3"-§);
            this.§8!6§.addEventListener(Event.COMPLETE,this.§!s§);
            this.§8!6§.addEventListener(Event.CANCEL,this.§3"-§);
            _loc2_ = §,q§.§"!>§(param1);
            if(_loc2_)
            {
               this.§8!6§.§&^§(_loc2_.§7!F§);
            }
         }
      }
      
      private function §!7§(param1:Event) : void
      {
         this.§5!h§.removeEventListener(Event.COMPLETE,this.§!7§);
         this.§5!h§.removeEventListener(Event.CANCEL,this.§null §);
         this.§0o§ = true;
         if(this.§0o§ && this.§<!U§)
         {
            this.initialize(this.§`R§);
         }
      }
      
      private function §null §(param1:Event) : void
      {
         this.§5!h§.removeEventListener(Event.COMPLETE,this.§!7§);
         this.§5!h§.removeEventListener(Event.CANCEL,this.§null §);
         this.§<W§ = true;
      }
      
      private function §!s§(param1:Event) : void
      {
         this.§5!h§.removeEventListener(Event.COMPLETE,this.§!s§);
         this.§5!h§.removeEventListener(Event.CANCEL,this.§3"-§);
         this.§<!U§ = true;
         if(this.§0o§ && this.§<!U§)
         {
            this.initialize(this.§`R§);
         }
      }
      
      private function §3"-§(param1:Event) : void
      {
         this.§5!h§.removeEventListener(Event.COMPLETE,this.§!s§);
         this.§5!h§.removeEventListener(Event.CANCEL,this.§3"-§);
         this.§<!U§ = true;
         if(this.§0o§ && this.§<!U§)
         {
            this.initialize(this.§`R§);
         }
      }
      
      public function get §,;§() : §7!P§
      {
         return this.§ d§;
      }
      
      protected function initialize(param1:§@!l§) : void
      {
         this.§5!z§ = false;
         this.§69§ = false;
         if(§^d§.§,"'§)
         {
            §^d§.§,"'§.speed = 1;
         }
         this.§[![§ = new §3m§(this);
         this.§'!>§ = this.§+!`§(param1.theme,this.§;"!§.mBorderGround_B2 / §,!m§,this.§,;§,this.§7!E§.§4c§());
         this.§'!>§.§4s§(§8!0§.§9!n§());
         this.§`Z§ = this.initLevelObjectManager(param1);
         this.§+P§ = this.§`F§(param1);
         this.§[w§ = this.§`!0§(this.§3!3§,this.§ d§);
         this.§7!E§.init();
         this.§@^§();
         this.§-!w§();
         this.mReadyToRun = true;
         if(this.§?z§)
         {
            this.§?z§.addEventListeners();
         }
      }
      
      protected function §-!w§() : void
      {
         if(this.§7#§)
         {
            this.§4"3§ = §4G§.initialize(this.§7#§);
            this.§4"3§.speed = 1;
            this.§4"3§.play();
            this.§#!y§ = -1000;
            this.§7#§ = null;
         }
      }
      
      public function § "4§(param1:String) : void
      {
         this.§7#§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§4"3§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§4"3§)
         {
            if(param1)
            {
               this.§4"3§.speed = Math.min(this.§4"3§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§4"3§.speed = Math.max(this.§4"3§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§4"3§)
         {
            this.§4"3§.speed = 1;
         }
      }
      
      protected function initLevelObjectManager(param1:§@!l§) : §'"-§
      {
         return new §'"-§(this,param1,new Sprite());
      }
      
      protected function initLevelCamera(param1:§@!l§) : §'L§
      {
         return new §'L§(this,param1);
      }
      
      protected function §+!`§(param1:String, param2:Number, param3:§7!P§, param4:Number) : §5x§
      {
         return new §5x§(param1,param2,param3,param4);
      }
      
      protected function §`F§(param1:§@!l§) : §=$§
      {
         return new §=$§(this,param1,new Sprite());
      }
      
      protected function §`!0§(param1:§]"5§, param2:§7!P§) : final
      {
         return new final(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§@!l§ = this.§5y§();
         var _loc4_:§+!V§;
         (_loc4_ = new §+!V§()).left = 0;
         _loc4_.top = -§'L§.SCREEN_HEIGHT_B2 / 10 * 8;
         _loc4_.bottom = _loc4_.top + §'L§.SCREEN_HEIGHT_B2;
         _loc4_.right = _loc4_.left + §'L§.SCREEN_WIDTH_B2;
         _loc4_.y = -13.929;
         _loc4_.x = §'L§.SCREEN_WIDTH_B2;
         _loc4_.id = §'L§.CAMERA_ID_SLINGSHOT;
         _loc3_.§3$§(_loc4_);
         var _loc5_:§+!V§;
         (_loc5_ = new §+!V§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §'L§.SCREEN_WIDTH_B2;
         _loc5_.bottom = _loc5_.top + §'L§.SCREEN_HEIGHT_B2;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §'L§.SCREEN_WIDTH_B2 / 2;
         _loc5_.id = §'L§.CAMERA_ID_CASTLE;
         _loc3_.§3$§(_loc5_);
         this.§'!o§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§5Z§ != null)
         {
            _loc3_.theme = §5Z§;
         }
         this.init(_loc3_);
      }
      
      protected function §'!o§(param1:§@!l§, param2:Boolean) : void
      {
         if(param2)
         {
            this.§[1§(param1);
         }
      }
      
      protected function §5y§() : §@!l§
      {
         var _loc1_:§@!l§ = new §@!l§();
         _loc1_.§%<§ = -12;
         return new §@!l§();
      }
      
      protected function §8$§() : Number
      {
         this.§,?§ ^= this.§,?§ << 21;
         this.§,?§ ^= this.§,?§ >>> 35;
         this.§,?§ ^= this.§,?§ << 4;
         return this.§,?§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §[1§(param1:§@!l§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§>@§ = null;
         this.§,?§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§8$§() * 5;
               (_loc5_ = new §>@§()).x = 30 + _loc3_ * 10 + this.§8$§() * 9;
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
                  _loc5_.angle = 45 - this.§8$§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§8$§() * 3 - _loc3_ * 8;
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
                  _loc5_.angle = this.§8$§() * 360;
               }
               param1.addObject(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      private function §`!_§() : void
      {
      }
      
      public function §@^§() : void
      {
         if(§5x§.§<!`§)
         {
            this.§[D§(this.§'!>§.§?!6§,false);
         }
         this.§[D§(this.§[w§.§^!C§(final.§9!=§),false);
         this.§[D§(this.§[w§.§^!C§(final.§=!o§),true);
         this.§[D§(this.§[w§.§^!C§(final.§56§),true);
         this.§[D§(this.§`Z§.§9t§,true);
         this.§[D§(this.§+P§.sprite,true);
         this.§[D§(this.§[w§.§^!C§(final.§0e§),true);
         this.§[D§(this.§'!>§.§,'§,false);
         if(§5x§.§<!`§)
         {
            this.§[D§(this.§'!>§.§8w§,false);
         }
         this.§[D§(this.§[w§.§^!C§(final.§?%§),true);
      }
      
      private function §[D§(param1:Sprite, param2:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(param1);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         param1 /= §8!0§.§&!_§;
         param2 /= §8!0§.§&!_§;
         _loc3_.x = (param1 / §'L§.§9K§ + this.§7!E§.§&!k§ - §'L§.§42§ / §'L§.§9K§) * §,!m§;
         _loc3_.y = (param2 / §'L§.§9K§ + this.§7!E§.§>!E§ - §'L§.§'1§ / §'L§.§9K§) * §,!m§;
         return _loc3_;
      }
      
      public function §'W§(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / §,!m§ + §'L§.§42§ / §'L§.§9K§ - this.§7!E§.§&!k§) * §'L§.§9K§;
         _loc3_.y = (param2 / §,!m§ + §'L§.§'1§ / §'L§.§9K§ - this.§7!E§.§>!E§) * §'L§.§9K§;
         var _loc4_:Number = Math.max(§8!0§.§&!_§,§8!0§.§6S§);
         _loc3_.x *= _loc4_;
         _loc3_.y *= _loc4_;
         return _loc3_;
      }
      
      public function §5!e§(param1:String, param2:Number, param3:Number) : void
      {
         this.§`Z§.addObject(param1,param2,param3);
      }
      
      public function §4!`§() : void
      {
         if(this.§8H§)
         {
            this.§8H§.visible = true;
            this.§8H§.alpha = 0;
         }
         this.§@!U§ = 0;
      }
      
      public function §%J§() : void
      {
         this.§0!B§ = new §&!Z§(§6!d§.§finally§,§6!d§.§#2§);
      }
      
      public function §3!W§() : void
      {
         this.§0!B§ = null;
      }
      
      public function clearLevel() : void
      {
         if(this.§'!>§)
         {
            this.§'!>§.dispose();
            this.§'!>§ = null;
         }
         if(this.§`Z§)
         {
            this.§`Z§.dispose();
            this.§`Z§ = null;
            this.§%X§ = null;
         }
         if(this.§[![§)
         {
            if(!this.§[![§.§ !T§)
            {
            }
            this.§[![§.clear();
            this.§[![§ = null;
         }
         if(this.§;"!§)
         {
            this.§;"!§.clear();
            this.§;"!§ = null;
         }
         if(this.§+P§)
         {
            this.§+P§.dispose();
            this.§+P§ = null;
         }
         if(this.§7!E§)
         {
            this.§7!E§.clear();
            this.§7!E§ = null;
         }
         if(this.§[w§)
         {
            this.§[w§.dispose();
            this.§[w§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§@h§ = 0;
         this.§'§ = 0;
         this.mReadyToRun = false;
         this.§<!V§ = false;
         this.§@!U§ = §6!d§.§@!t§;
         if(this.§9D§)
         {
            (this.§9D§ as §8!y§).§%!5§.x = 0;
            (this.§9D§ as §8!y§).§%!5§.y = 0;
         }
         if(this.§8H§)
         {
            this.§8H§.visible = false;
         }
         this.§4"3§ = null;
         this.§'!3§ = null;
         if(this.§5!h§)
         {
            this.§5!h§.removeEventListener(Event.COMPLETE,this.§!7§);
            this.§5!h§.removeEventListener(Event.CANCEL,this.§null §);
         }
         if(this.§8!6§)
         {
            this.§8!6§.removeEventListener(Event.COMPLETE,this.§!s§);
            this.§8!6§.removeEventListener(Event.CANCEL,this.§3"-§);
         }
         this.§8!?§();
         if(§^d§.§+!f§)
         {
            §^d§.§+!f§.color = 0;
         }
         if(this.§?z§)
         {
            this.§?z§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver() : void
      {
      }
      
      public function §%Z§() : String
      {
         if(this.§'!3§)
         {
            return this.§'!3§.toString();
         }
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         if(!this.mReadyToRun || !§^d§.§+>§())
         {
            return 0;
         }
         if(this.§4"3§ && this.§4"3§.§^" §)
         {
            return this.§>B§(param1,param2,param3);
         }
         return this.§7x§(param1,true,param2,param3);
      }
      
      protected function §7x§(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         if(this.§5!z§)
         {
            param1 *= 0.2;
            if(§^d§.§,"'§)
            {
               §^d§.§,"'§.speed = 0.2;
            }
         }
         var _loc5_:Number = 0;
         this.§'§ += param1;
         if(param3)
         {
            this.§@h§ += param1;
            _loc5_ = this.§[![§.§!G§(this.§@h§);
            this.§+P§.update(param1,param4);
            this.§@h§ = _loc5_;
         }
         else
         {
            this.§`Z§.§-"3§(param1);
            this.§@h§ = 0;
         }
         if(param2)
         {
            this.§[$§(param1,_loc5_);
         }
         return param1;
      }
      
      private function §>B§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc5_:Number = NaN;
         var _loc4_:Number = §3m§.§=!I§ * 1000;
         if(this.§4"3§)
         {
            param1 *= this.§4"3§.speed;
            _loc5_ = this.§'§ + param1;
            while(this.§'§ + _loc4_ < _loc5_)
            {
               if(this.§'§ + _loc4_ > this.§#!y§)
               {
                  this.§4"3§.step(this);
                  this.§#!y§ += _loc4_;
               }
               this.§7x§(_loc4_,false,param2,param3);
            }
            if(_loc5_ > this.§#!y§ + _loc4_)
            {
               this.§4"3§.step(this);
               this.§#!y§ += _loc4_;
            }
            if(this.§'§ < _loc5_)
            {
               this.§7x§(_loc5_ - this.§'§,true,param2,param3);
            }
            return param1;
         }
         return this.§7x§(_loc4_,true,param2,param3);
      }
      
      private function §[$§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.§'!>§.update(param1);
         this.§`Z§.§!8§(param1,param2);
         this.§^_§();
         if(this.§@!U§ < §6!d§.§@!t§)
         {
            this.§@!U§ += param1;
            _loc3_ = §6!d§.§@!t§ / 2;
            _loc4_ = (-Math.abs(this.§@!U§ - _loc3_) + _loc3_) * (§6!d§.§1C§ / _loc3_);
            if(this.§8H§)
            {
               this.§8H§.alpha = _loc4_;
            }
         }
         else if(this.§8H§)
         {
            this.§8H§.visible = false;
         }
         if(this.§0!B§)
         {
            if(!this.§0!B§.§;`§(this.§7!E§,param1))
            {
               this.§3!W§();
            }
         }
         this.§7!E§.updateCamera(param1);
         this.§[![§.§+!P§();
         this.§[w§.update(param1);
      }
      
      public function §<"+§(param1:Number) : void
      {
         this.objects.§-"3§(param1 * 1000);
         this.objects.§+M§(param1 * 1000);
         this.§#C§();
      }
      
      public function §^_§() : void
      {
         var _loc1_:§;!x§ = null;
         if(this.§'§ > this.§>!B§ + 1000 / 30)
         {
            if(this.§?P§ != null)
            {
               for each(_loc1_ in this.§?P§)
               {
                  _loc1_.addTrail();
               }
            }
            this.§>!B§ = this.§'§;
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§;!x§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.§`Z§.isPigsAlive(true))
            {
               _loc2_ = this.§`Z§.§5"$§(true);
               _loc2_.§+G§.mTryToScream = §5",§.§-!5§;
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§`Z§.getPigCount());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            if(this.§`Z§.isPigsAlive(true))
            {
               _loc2_ = this.§`Z§.§5"$§(true);
               _loc2_.§+G§.mTryToBlink = §5",§.§&M§;
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§`Z§.getPigCount());
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §3!u§.§>n§;
         }
         §^!'§.addScore(param1,param2);
         this.§?z§.addScore(param1);
         if(param3 && param1 > 0 && !this.§69§)
         {
            this.§4!+§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §4!+§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §3!u§.§`c§;
         }
         this.§[w§.§=!J§(§3!u§.§;@§,final.§?%§,§3!u§.§3!i§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §,"2§(param1:§;!x§) : void
      {
         if(this.§?P§ == null)
         {
            this.§?P§ = new Array();
         }
         this.§?P§.push(param1);
      }
      
      public function §=^§() : void
      {
         this.§+P§.§=^§();
         this.§`Z§.§1D§();
         this.§69§ = true;
      }
      
      public function §;!T§(param1:§;!x§) : void
      {
         this.§[w§.§%!4§(final.§9!=§);
         if(this.§?P§.indexOf(param1) >= 0)
         {
            this.§?P§.splice(this.§?P§.indexOf(param1),1);
         }
         if(this.§?P§.length == 0)
         {
            this.§?P§ = null;
         }
      }
      
      public function §^!$§(param1:§5!K§, param2:Number, param3:Number) : void
      {
         this.§%X§ = this.§`Z§.addObject(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
         var _loc4_:Number = param1.name.toUpperCase() == "BIRD_GREEN" ? Number(§=$§.§+9§) : Number(§=$§.§=!%§);
         if(param1.§!#§ > 1)
         {
            this.§%X§.§?k§(param1.§!#§);
            this.§%X§.§+G§.§=x§();
         }
         if(param1.§;"'§ != 0)
         {
            _loc4_ = param1.§;"'§;
         }
         var _loc5_:Number = -_loc4_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc6_:Number = _loc4_ * param2 * Math.sin(param3 / (180 / Math.PI));
         this.§%X§.§7!`§(new b2Vec2(_loc5_,_loc6_),false,true);
         this.camera.§@"+§(§'L§.§-",§);
         if(this.§'!3§)
         {
            this.§'!3§.§^!$§(this.§[![§.§0k§,param1.x,param1.y,param2,param3);
         }
      }
      
      public function activatePowerup() : void
      {
         this.§<!V§ = true;
      }
      
      private function §#C§() : void
      {
         if(!this.§<!V§)
         {
            return;
         }
         this.§<!V§ = false;
         if(this.activeObject is §6""§ && !(this.activeObject as §6""§).§&!I§)
         {
            if(this.activeObject.activateSpecialPower(this.§2!H§))
            {
               this.§-6§ = true;
            }
         }
         else
         {
            this.§`Z§.§7!Y§();
         }
         if(this.§'!3§)
         {
            this.§'!3§.§2!K§(this.§[![§.§0k§);
         }
      }
      
      public function §@!5§() : void
      {
         this.§`Z§.§@!5§();
      }
      
      public function §[!R§() : void
      {
         this.§`Z§.§,!%§();
      }
      
      public function §&,§() : §@!l§
      {
         var _loc1_:§@!l§ = new §@!l§();
         _loc1_.mScoreGold = this.§`R§.mScoreGold;
         _loc1_.mScoreSilver = this.§`R§.mScoreSilver;
         this.§7!E§.writeCameraInformation(_loc1_);
         this.§`Z§.writeObjectInformation(_loc1_);
         this.§+P§.writeSlingshotInformation(_loc1_);
         _loc1_.theme = this.§'!>§.getCurrentThemeName();
         return _loc1_;
      }
      
      public function §6!f§() : int
      {
         return this.§`R§.mScoreSilver;
      }
      
      public function §#!"§() : int
      {
         return this.§`R§.mScoreGold;
      }
      
      public function §=3§(param1:int) : void
      {
         this.§`R§.mScoreSilver = param1;
      }
      
      public function §5M§(param1:int) : void
      {
         this.§`R§.mScoreGold = param1;
      }
      
      public function §#!g§(param1:Number, param2:Number) : void
      {
         if(this.§`!7§)
         {
            this.§`!7§.§@M§(param1,param2);
         }
         if(this.§7!E§)
         {
            this.§7!E§.updateCamera(0);
         }
      }
      
      public function get §6!U§() : §@!l§
      {
         return this.§`R§;
      }
      
      public function get §2!H§() : §'"-§
      {
         return this.§`Z§;
      }
      
      protected function get §%!h§() : §^d§
      {
         return this.§["4§;
      }
      
      public function get §@l§() : int
      {
         return §[f§;
      }
   }
}
