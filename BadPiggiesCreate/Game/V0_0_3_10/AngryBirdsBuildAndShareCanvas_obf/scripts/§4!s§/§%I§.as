package §4!s§
{
   import §%!I§.§,!3§;
   import §%t§.§-!5§;
   import §%t§.§[!B§;
   import §%t§.§^!x§;
   import §&!&§.§1"7§;
   import §'!s§.§9!^§;
   import §'!s§.§;2§;
   import §+!d§.§`!+§;
   import §,y§.§>v§;
   import §0!y§.§4"2§;
   import §1U§.§"!V§;
   import §2!§.§1!n§;
   import §5!5§.§^e§;
   import §7M§.§"?§;
   import §7M§.§%R§;
   import §7M§.§+R§;
   import §7M§.§?!p§;
   import §9!G§.§]!e§;
   import §<f§.§3!8§;
   import §<f§.§7!0§;
   import §="§.§+!j§;
   import §="§.§<!e§;
   import §="§.§="-§;
   import §="§.§`T§;
   import §?!h§.b2Vec2;
   import §@0§.§`O§;
   import §^I§.DisplayObject;
   import §^I§.Sprite;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §%I§
   {
      
      private static const §!=§:int = 20;
      
      public static const § v§:Number = §"!V§.§<!8§;
      
      public static const §5"1§:Number = §"!V§.§[V§;
      
      public static const §9"4§:Number = 1 / 20;
      
      public static const §?y§:Number = §"!V§.§[V§ * §9"4§;
      
      public static const §#!2§:Number = § v§ * §9"4§;
      
      public static const §2Q§:§1"7§ = new §1"7§(13 - 3);
      
      public static var §^!U§:Number = 1;
      
      protected static var §?X§:String = §+R§.§1"5§;
       
      
      protected var § !q§:§="-§;
      
      private var §=V§:§`T§;
      
      private var §@3§:Array = null;
      
      protected var §3!H§:§`O§;
      
      public var §6P§:§6A§;
      
      protected var § F§:§'i§;
      
      protected var §]!M§:§1!n§;
      
      protected var §#!]§:§4^§;
      
      protected var §`e§:§3!8§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §#P§:Boolean = false;
      
      protected var §6!Z§:Boolean = false;
      
      protected var §"!8§:Boolean = false;
      
      public var §^!s§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §!D§:Number;
      
      public var §5a§:Number;
      
      private var §94§:Number;
      
      public var §6!n§:§%R§;
      
      public var §9q§:Boolean = false;
      
      private var §12§:§17§;
      
      private var §9!M§:Sprite;
      
      protected var §]l§:§+R§;
      
      protected var §"!$§:§>v§ = null;
      
      private var §0!L§:EventDispatcher;
      
      private var §4u§:Array;
      
      private var §?S§:Array;
      
      protected var §78§:§^e§;
      
      private var §=X§:§`!+§;
      
      protected var §^o§:§-!5§;
      
      protected var §=!_§:§^!x§;
      
      private var §4D§:§[!B§;
      
      private var § !v§:§[!B§;
      
      private var §2G§:§[!B§;
      
      private var §0!^§:Stage;
      
      private var §9!u§:§8!Q§;
      
      protected var §!"$§:§4"2§;
      
      protected var §;H§:§4"2§;
      
      protected var §=!R§:Number = 0.0;
      
      protected var §=#§:String;
      
      private var §2" §:Boolean;
      
      protected var §[!%§:Boolean;
      
      protected var §7!R§:uint = 1.417339207E9;
      
      public var §0",§:Boolean;
      
      public function §%I§(param1:Stage)
      {
         this.§?S§ = [];
         super();
         this.§0!L§ = new EventDispatcher();
         this.§6!n§ = new §%R§();
         this.§0!^§ = param1;
         this.§^o§ = §-!5§.§,l§;
         this.§=!_§ = this.initAnimationManager(this.§^o§);
         this.§4D§ = this.§=!P§();
         this.§ !v§ = this.§;!b§();
         this.§2G§ = this.§"!7§();
         var _loc2_:Stage3D = param1.stage3Ds[0];
         this.§78§ = new §^e§(§17§,param1,new Rectangle(0,0,§"!V§.§<!8§,§"!V§.§[V§),_loc2_);
         §"!V§.§1T§.addEventListener(Event.ENTER_FRAME,this.§78§.onEnterFrame);
         _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§&l§,false,0,true);
         this.§78§.§"5§ = false;
         this.§78§.enableErrorChecking = false;
         this.§78§.§-!K§ = 2;
         this.§78§.§1!;§();
      }
      
      public static function §>!J§(param1:§`T§, param2:§`T§) : Number
      {
         var _loc3_:Number = param1.§%W§ - param2.§%W§;
         var _loc4_:Number = param1.§&]§ - param2.§&]§;
         return §-!n§(_loc3_,_loc4_);
      }
      
      public static function §-!n§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         if(!this.§9!M§ && this.§=!;§)
         {
            this.§9!M§ = this.§12§.§%!6§;
         }
         return this.§9!M§;
      }
      
      public function get §=!;§() : Sprite
      {
         if(!this.§12§)
         {
            this.§12§ = this.§78§.§8!7§ as §17§;
            this.§12§.§<"!§ = false;
         }
         return this.§12§;
      }
      
      private function get §,!q§() : DisplayObject
      {
         if(this.§=!;§)
         {
            return (this.§=!;§ as §17§).§,!q§;
         }
         return null;
      }
      
      public function get §^d§() : §^!x§
      {
         return this.§=!_§;
      }
      
      public function get §>=§() : §-!5§
      {
         return this.§^o§;
      }
      
      public function get camera() : §1!n§
      {
         return this.§]!M§;
      }
      
      public function get objects() : §="-§
      {
         return this.§ !q§;
      }
      
      public function get particles() : §3!8§
      {
         return this.§`e§;
      }
      
      public function get background() : §`O§
      {
         return this.§3!H§;
      }
      
      public function get slingshot() : §4^§
      {
         return this.§#!]§;
      }
      
      public function get activeObject() : §`T§
      {
         return this.§=V§;
      }
      
      public function get borders() : §'i§
      {
         return this.§ F§;
      }
      
      public function get stage() : Stage
      {
         return this.§0!^§;
      }
      
      public function get §3!V§() : §[!B§
      {
         return this.§2G§;
      }
      
      protected function get §2g§() : §[!B§
      {
         return this.§4D§;
      }
      
      public function set activeObject(param1:§`T§) : void
      {
         this.§=V§ = param1;
      }
      
      public function set §,v§(param1:Boolean) : void
      {
         this.§[!%§ = param1;
      }
      
      public function clear() : void
      {
         if(this.§=X§)
         {
            this.§=X§.dispose();
         }
         if(this.§^o§)
         {
            this.§^o§.dispose();
         }
         if(this.§4D§ && this.§4D§.§>=§)
         {
            this.§4D§.§>=§.dispose();
         }
         if(this.§2G§ && this.§2G§.§>=§)
         {
            this.§2G§.§>=§.dispose();
         }
         if(this.§78§)
         {
            this.§78§.dispose();
         }
      }
      
      protected function §=!P§() : §[!B§
      {
         return null;
      }
      
      protected function §;!b§() : §[!B§
      {
         return null;
      }
      
      protected function §"!7§() : §[!B§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§-!5§) : §^!x§
      {
         return new §^!x§(param1);
      }
      
      public function §9!q§(param1:Boolean) : void
      {
         if(§^e§.§-_§)
         {
            if(param1)
            {
               §^e§.§-_§.start();
            }
            else
            {
               §^e§.§-_§.stop();
               §^e§.§-_§.color = 0;
            }
         }
      }
      
      public function §-6§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function §`!G§(param1:§>v§) : void
      {
         if(this.§"!$§ != null)
         {
            this.§"!$§.removeEventListeners();
         }
         this.§"!$§ = param1;
         if(this.mReadyToRun)
         {
            this.§"!$§.addEventListeners();
         }
      }
      
      public function §=K§() : §4"2§
      {
         return this.§!"$§;
      }
      
      public function §%6§(param1:§`!+§, param2:Array, param3:Function) : void
      {
         this.§=X§ = param1;
         var _loc4_:int = this.§=X§.§,e§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§^o§.§!!M§(this.§=X§.§use§(_loc5_));
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§0!L§.addEventListener(Event.INIT,param3);
            this.§?S§.push(param3);
         }
         if(this.§3!l§(param2))
         {
            this.§'!9§();
         }
      }
      
      private function §3!l§(param1:Array) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.§^o§.§4!N§())
         {
            _loc2_ = this.§^o§.§]o§ / 1000;
            _loc3_ = this.§^o§.§6Z§ / 1000;
            §]!e§.log("\n\nMain texture manager memory usage:\n   textures " + _loc2_ + " kilobytes\n   bitmaps " + _loc3_ + " kilobytes\n\n");
            this.§%!?§(param1);
            return true;
         }
         this.§4u§ = param1.concat();
         return false;
      }
      
      private function §%!?§(param1:Array) : void
      {
         this.§=!_§.§%!?§(param1);
      }
      
      private function §&l§(param1:Event) : void
      {
         this.§^o§.§]!i§();
         if(this.§2g§ && this.§2g§.§>=§)
         {
            this.§2g§.§>=§.§]!i§();
         }
         if(this.§3!V§ && this.§3!V§.§>=§)
         {
            this.§3!V§.§>=§.§]!i§();
         }
         if(this.§4u§)
         {
            this.§3!l§(this.§4u§);
            this.§4u§ = null;
            this.§'!9§();
         }
         if(this.§"!$§ != null && this.mReadyToRun)
         {
            this.§"!$§.addEventListeners();
         }
         if(this.§4D§)
         {
            this.§4D§.§4!N§();
         }
         if(this.§2G§)
         {
            if(this.§2G§.§>=§)
            {
               this.§2G§.§>=§.§]!i§();
               this.§2G§.§4!N§();
            }
         }
      }
      
      private function §'!9§() : void
      {
         this.§0!L§.dispatchEvent(new Event(Event.INIT));
         this.§[T§();
      }
      
      private function §[T§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§?S§)
         {
            this.§0!L§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§?S§ = [];
      }
      
      public function init(param1:§+R§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§ F§ = new §'i§(this,param1);
         this.§]!M§ = this.initLevelCamera(param1);
         this.§!D§ = 0;
         this.§5a§ = 0;
         this.§94§ = 0;
         this.§2" § = false;
         this.mReadyToRun = false;
         this.§#P§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         §?X§ = param1.theme;
         this.§]l§ = param1;
         this.§6!Z§ = this.§>1§(param1.theme);
         this.§"!8§ = this.§;"+§(param1.theme);
         if(this.§6!Z§ && this.§"!8§)
         {
            this.initialize(param1);
         }
         else
         {
            this.§,!H§(param1.theme);
         }
         this.§"!b§();
         §&,§.init();
      }
      
      protected function §"!b§() : void
      {
         this.§!"$§ = new §4"2§(§"?§.§4M§);
      }
      
      protected function §>1§(param1:String) : Boolean
      {
         if(this.§4D§)
         {
            return false;
         }
         return true;
      }
      
      protected function §;"+§(param1:String) : Boolean
      {
         var _loc2_:§9!^§ = null;
         if(this.§ !v§)
         {
            _loc2_ = §;2§.§8g§(param1);
            if(_loc2_)
            {
               if(_loc2_.§[$§ && !this.§ !v§.§'!;§(_loc2_.§[$§))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function §,!H§(param1:String) : void
      {
         var _loc2_:§9!^§ = null;
         if(this.§4D§ && !this.§>1§(param1))
         {
            this.§4D§.removeEventListener(Event.COMPLETE,this.§5w§);
            this.§4D§.removeEventListener(Event.CANCEL,this.§<]§);
            this.§4D§.addEventListener(Event.COMPLETE,this.§5w§);
            this.§4D§.addEventListener(Event.CANCEL,this.§<]§);
            this.§4D§.§=!U§(param1);
         }
         if(this.§ !v§ && !this.§;"+§(param1))
         {
            this.§ !v§.removeEventListener(Event.COMPLETE,this.§!!H§);
            this.§ !v§.removeEventListener(Event.CANCEL,this.§0D§);
            this.§ !v§.addEventListener(Event.COMPLETE,this.§!!H§);
            this.§ !v§.addEventListener(Event.CANCEL,this.§0D§);
            _loc2_ = §;2§.§8g§(param1);
            if(_loc2_)
            {
               this.§ !v§.§=!U§(_loc2_.§[$§);
            }
         }
      }
      
      private function §5w§(param1:Event) : void
      {
         this.§4D§.removeEventListener(Event.COMPLETE,this.§5w§);
         this.§4D§.removeEventListener(Event.CANCEL,this.§<]§);
         this.§6!Z§ = true;
         if(this.§6!Z§ && this.§"!8§)
         {
            this.initialize(this.§]l§);
         }
      }
      
      private function §<]§(param1:Event) : void
      {
         this.§4D§.removeEventListener(Event.COMPLETE,this.§5w§);
         this.§4D§.removeEventListener(Event.CANCEL,this.§<]§);
         this.§#P§ = true;
      }
      
      private function §!!H§(param1:Event) : void
      {
         this.§4D§.removeEventListener(Event.COMPLETE,this.§!!H§);
         this.§4D§.removeEventListener(Event.CANCEL,this.§0D§);
         this.§"!8§ = true;
         if(this.§6!Z§ && this.§"!8§)
         {
            this.initialize(this.§]l§);
         }
      }
      
      private function §0D§(param1:Event) : void
      {
         this.§4D§.removeEventListener(Event.COMPLETE,this.§!!H§);
         this.§4D§.removeEventListener(Event.CANCEL,this.§0D§);
         this.§"!8§ = true;
         if(this.§6!Z§ && this.§"!8§)
         {
            this.initialize(this.§]l§);
         }
      }
      
      public function get §!!l§() : §-!5§
      {
         return this.§^o§;
      }
      
      protected function initialize(param1:§+R§) : void
      {
         this.§[!%§ = false;
         this.§0",§ = false;
         if(§^e§.§,_§)
         {
            §^e§.§,_§.speed = 1;
         }
         this.§6P§ = new §6A§(this);
         this.§3!H§ = this.§&2§(param1.theme,this.§ F§.mBorderGround_B2 / §9"4§,this.§!!l§,this.§]!M§.§ !L§());
         this.§3!H§.§;!o§(§"!V§.§1!u§());
         this.§ !q§ = this.initLevelObjectManager(param1);
         this.§#!]§ = this.§6L§(param1);
         this.§`e§ = this.§-!J§(this.§=!_§,this.§^o§);
         this.§]!M§.init();
         this.§1"!§();
         this.§%"$§();
         this.mReadyToRun = true;
         if(this.§"!$§)
         {
            this.§"!$§.addEventListeners();
         }
      }
      
      protected function §%"$§() : void
      {
         if(this.§=#§)
         {
            this.§;H§ = §4"2§.initialize(this.§=#§);
            this.§;H§.speed = 1;
            this.§;H§.play();
            this.§=!R§ = -1000;
            this.§=#§ = null;
         }
      }
      
      public function §8a§(param1:String) : void
      {
         this.§=#§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§;H§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§;H§)
         {
            if(param1)
            {
               this.§;H§.speed = Math.min(this.§;H§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§;H§.speed = Math.max(this.§;H§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§;H§)
         {
            this.§;H§.speed = 1;
         }
      }
      
      protected function initLevelObjectManager(param1:§+R§) : §="-§
      {
         return new §="-§(this,param1,new Sprite());
      }
      
      protected function initLevelCamera(param1:§+R§) : §1!n§
      {
         return new §1!n§(this,param1);
      }
      
      protected function §&2§(param1:String, param2:Number, param3:§-!5§, param4:Number) : §`O§
      {
         return new §`O§(param1,param2,param3,param4);
      }
      
      protected function §6L§(param1:§+R§) : §4^§
      {
         return new §4^§(this,param1,new Sprite());
      }
      
      protected function §-!J§(param1:§^!x§, param2:§-!5§) : §3!8§
      {
         return new §3!8§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§+R§ = this.§;!B§();
         var _loc4_:§?!p§;
         (_loc4_ = new §?!p§()).left = 0;
         _loc4_.top = -§1!n§.SCREEN_HEIGHT_B2 / 10 * 8;
         _loc4_.bottom = _loc4_.top + §1!n§.SCREEN_HEIGHT_B2;
         _loc4_.right = _loc4_.left + §1!n§.SCREEN_WIDTH_B2;
         _loc4_.y = -13.929;
         _loc4_.x = §1!n§.SCREEN_WIDTH_B2;
         _loc4_.id = §1!n§.CAMERA_ID_SLINGSHOT;
         _loc3_.§;"#§(_loc4_);
         var _loc5_:§?!p§;
         (_loc5_ = new §?!p§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §1!n§.SCREEN_WIDTH_B2;
         _loc5_.bottom = _loc5_.top + §1!n§.SCREEN_HEIGHT_B2;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §1!n§.SCREEN_WIDTH_B2 / 2;
         _loc5_.id = §1!n§.CAMERA_ID_CASTLE;
         _loc3_.§;"#§(_loc5_);
         this.§4!R§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§?X§ != null)
         {
            _loc3_.theme = §?X§;
         }
         this.init(_loc3_);
      }
      
      protected function §4!R§(param1:§+R§, param2:Boolean) : void
      {
         if(param2)
         {
            this.§#!q§(param1);
         }
      }
      
      protected function §;!B§() : §+R§
      {
         var _loc1_:§+R§ = new §+R§();
         _loc1_.§?!L§ = -12;
         return new §+R§();
      }
      
      protected function §1"2§() : Number
      {
         this.§7!R§ ^= this.§7!R§ << 21;
         this.§7!R§ ^= this.§7!R§ >>> 35;
         this.§7!R§ ^= this.§7!R§ << 4;
         return this.§7!R§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §#!q§(param1:§+R§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§,!3§ = null;
         this.§7!R§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§1"2§() * 5;
               (_loc5_ = new §,!3§()).x = 30 + _loc3_ * 10 + this.§1"2§() * 9;
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
                  _loc5_.angle = 45 - this.§1"2§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§1"2§() * 3 - _loc3_ * 8;
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
                  _loc5_.angle = this.§1"2§() * 360;
               }
               param1.addObject(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      private function §"X§() : void
      {
      }
      
      public function §1"!§() : void
      {
         if(§`O§.§?]§)
         {
            this.§`j§(this.§3!H§.§42§,false);
         }
         this.§`j§(this.§`e§.§5!`§(§3!8§.§]!8§),false);
         this.§`j§(this.§`e§.§5!`§(§3!8§.§-!#§),true);
         this.§`j§(this.§`e§.§5!`§(§3!8§.§?"%§),true);
         this.§`j§(this.§ !q§.§!",§,true);
         this.§`j§(this.§#!]§.sprite,true);
         this.§`j§(this.§`e§.§5!`§(§3!8§.§^D§),true);
         this.§`j§(this.§3!H§.§'!,§,false);
         if(§`O§.§?]§)
         {
            this.§`j§(this.§3!H§.§2M§,false);
         }
         this.§`j§(this.§`e§.§5!`§(§3!8§.§1!E§),true);
      }
      
      private function §`j§(param1:Sprite, param2:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(param1);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         param1 /= §"!V§.§4-§;
         param2 /= §"!V§.§4-§;
         _loc3_.x = (param1 / §1!n§.§#!%§ + this.§]!M§.§!"&§ - §1!n§.§#C§ / §1!n§.§#!%§) * §9"4§;
         _loc3_.y = (param2 / §1!n§.§#!%§ + this.§]!M§.§?!9§ - §1!n§.§@"7§ / §1!n§.§#!%§) * §9"4§;
         return _loc3_;
      }
      
      public function §?!+§(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / §9"4§ + §1!n§.§#C§ / §1!n§.§#!%§ - this.§]!M§.§!"&§) * §1!n§.§#!%§;
         _loc3_.y = (param2 / §9"4§ + §1!n§.§@"7§ / §1!n§.§#!%§ - this.§]!M§.§?!9§) * §1!n§.§#!%§;
         var _loc4_:Number = Math.max(§"!V§.§4-§,§"!V§.§8!e§);
         _loc3_.x *= _loc4_;
         _loc3_.y *= _loc4_;
         return _loc3_;
      }
      
      public function §-[§(param1:String, param2:Number, param3:Number) : void
      {
         this.§ !q§.addObject(param1,param2,param3);
      }
      
      public function §1!w§() : void
      {
         if(this.§,!q§)
         {
            this.§,!q§.visible = true;
            this.§,!q§.alpha = 0;
         }
         this.§^!s§ = 0;
      }
      
      public function § E§() : void
      {
         this.§9!u§ = new §8!Q§(§7!$§.§ "-§,§7!$§.§,M§);
      }
      
      public function §[!T§() : void
      {
         this.§9!u§ = null;
      }
      
      public function clearLevel() : void
      {
         if(this.§3!H§)
         {
            this.§3!H§.dispose();
            this.§3!H§ = null;
         }
         if(this.§ !q§)
         {
            this.§ !q§.dispose();
            this.§ !q§ = null;
            this.§=V§ = null;
         }
         if(this.§6P§)
         {
            if(!this.§6P§.§5Y§)
            {
            }
            this.§6P§.clear();
            this.§6P§ = null;
         }
         if(this.§ F§)
         {
            this.§ F§.clear();
            this.§ F§ = null;
         }
         if(this.§#!]§)
         {
            this.§#!]§.dispose();
            this.§#!]§ = null;
         }
         if(this.§]!M§)
         {
            this.§]!M§.clear();
            this.§]!M§ = null;
         }
         if(this.§`e§)
         {
            this.§`e§.dispose();
            this.§`e§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§!D§ = 0;
         this.§5a§ = 0;
         this.mReadyToRun = false;
         this.§2" § = false;
         this.§^!s§ = §7!$§.§]!J§;
         if(this.§=!;§)
         {
            (this.§=!;§ as §17§).§^f§.x = 0;
            (this.§=!;§ as §17§).§^f§.y = 0;
         }
         if(this.§,!q§)
         {
            this.§,!q§.visible = false;
         }
         this.§;H§ = null;
         this.§!"$§ = null;
         if(this.§4D§)
         {
            this.§4D§.removeEventListener(Event.COMPLETE,this.§5w§);
            this.§4D§.removeEventListener(Event.CANCEL,this.§<]§);
         }
         if(this.§ !v§)
         {
            this.§ !v§.removeEventListener(Event.COMPLETE,this.§!!H§);
            this.§ !v§.removeEventListener(Event.CANCEL,this.§0D§);
         }
         this.§[T§();
         if(§^e§.§-_§)
         {
            §^e§.§-_§.color = 0;
         }
         if(this.§"!$§)
         {
            this.§"!$§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver() : void
      {
      }
      
      public function §<"7§() : String
      {
         if(this.§!"$§)
         {
            return this.§!"$§.toString();
         }
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         if(!this.mReadyToRun || !§^e§.§5!#§())
         {
            return 0;
         }
         if(this.§;H§ && this.§;H§.§#N§)
         {
            return this.§1! §(param1,param2,param3);
         }
         return this.§4!0§(param1,true,param2,param3);
      }
      
      protected function §4!0§(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         if(this.§[!%§)
         {
            param1 *= 0.2;
            if(§^e§.§,_§)
            {
               §^e§.§,_§.speed = 0.2;
            }
         }
         var _loc5_:Number = 0;
         this.§5a§ += param1;
         if(param3)
         {
            this.§!D§ += param1;
            _loc5_ = this.§6P§.§ !'§(this.§!D§);
            this.§#!]§.update(param1,param4);
            this.§!D§ = _loc5_;
         }
         else
         {
            this.§ !q§.§[!!§(param1);
            this.§!D§ = 0;
         }
         if(param2)
         {
            this.§1K§(param1,_loc5_);
         }
         return param1;
      }
      
      private function §1! §(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc5_:Number = NaN;
         var _loc4_:Number = §6A§.§=!<§ * 1000;
         if(this.§;H§)
         {
            param1 *= this.§;H§.speed;
            _loc5_ = this.§5a§ + param1;
            while(this.§5a§ + _loc4_ < _loc5_)
            {
               if(this.§5a§ + _loc4_ > this.§=!R§)
               {
                  this.§;H§.step(this);
                  this.§=!R§ += _loc4_;
               }
               this.§4!0§(_loc4_,false,param2,param3);
            }
            if(_loc5_ > this.§=!R§ + _loc4_)
            {
               this.§;H§.step(this);
               this.§=!R§ += _loc4_;
            }
            if(this.§5a§ < _loc5_)
            {
               this.§4!0§(_loc5_ - this.§5a§,true,param2,param3);
            }
            return param1;
         }
         return this.§4!0§(_loc4_,true,param2,param3);
      }
      
      private function §1K§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.§3!H§.update(param1);
         this.§ !q§.§1!%§(param1,param2);
         this.§9!Y§();
         if(this.§^!s§ < §7!$§.§]!J§)
         {
            this.§^!s§ += param1;
            _loc3_ = §7!$§.§]!J§ / 2;
            _loc4_ = (-Math.abs(this.§^!s§ - _loc3_) + _loc3_) * (§7!$§.§?!^§ / _loc3_);
            if(this.§,!q§)
            {
               this.§,!q§.alpha = _loc4_;
            }
         }
         else if(this.§,!q§)
         {
            this.§,!q§.visible = false;
         }
         if(this.§9!u§)
         {
            if(!this.§9!u§.§,N§(this.§]!M§,param1))
            {
               this.§[!T§();
            }
         }
         this.§]!M§.updateCamera(param1);
         this.§6P§.§3!=§();
         this.§`e§.update(param1);
      }
      
      public function §1z§(param1:Number) : void
      {
         this.objects.§[!!§(param1 * 1000);
         this.objects.§0§(param1 * 1000);
         this.§5J§();
      }
      
      public function §9!Y§() : void
      {
         var _loc1_:§`T§ = null;
         if(this.§5a§ > this.§94§ + 1000 / 30)
         {
            if(this.§@3§ != null)
            {
               for each(_loc1_ in this.§@3§)
               {
                  _loc1_.addTrail();
               }
            }
            this.§94§ = this.§5a§;
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§`T§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.§ !q§.isPigsAlive(true))
            {
               _loc2_ = this.§ !q§.§&@§(true);
               _loc2_.§7!w§.mTryToScream = §<!e§.§@!v§;
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§ !q§.getPigCount());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            if(this.§ !q§.isPigsAlive(true))
            {
               _loc2_ = this.§ !q§.§&@§(true);
               _loc2_.§7!w§.mTryToBlink = §<!e§.§[",§;
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§ !q§.getPigCount());
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §7!0§.§07§;
         }
         §&,§.addScore(param1,param2);
         this.§"!$§.addScore(param1);
         if(param3 && param1 > 0 && !this.§0",§)
         {
            this.§[!Y§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §[!Y§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §7!0§.§-a§;
         }
         this.§`e§.§`!N§(§7!0§.§,"6§,§3!8§.§1!E§,§7!0§.§6!P§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §^9§(param1:§`T§) : void
      {
         if(this.§@3§ == null)
         {
            this.§@3§ = new Array();
         }
         this.§@3§.push(param1);
      }
      
      public function §'"2§() : void
      {
         this.§#!]§.§'"2§();
         this.§ !q§.§`d§();
         this.§0",§ = true;
      }
      
      public function §-!N§(param1:§`T§) : void
      {
         this.§`e§.§-",§(§3!8§.§]!8§);
         if(this.§@3§.indexOf(param1) >= 0)
         {
            this.§@3§.splice(this.§@3§.indexOf(param1),1);
         }
         if(this.§@3§.length == 0)
         {
            this.§@3§ = null;
         }
      }
      
      public function §2!"§(param1:§`!7§, param2:Number, param3:Number) : void
      {
         this.§=V§ = this.§ !q§.addObject(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
         var _loc4_:Number = param1.name.toUpperCase() == "BIRD_GREEN" ? Number(§4^§.§#!7§) : Number(§4^§.§5#§);
         if(param1.§@r§ > 1)
         {
            this.§=V§.§'!O§(param1.§@r§);
            this.§=V§.§7!w§.§;!f§();
         }
         if(param1.§#a§ != 0)
         {
            _loc4_ = param1.§#a§;
         }
         var _loc5_:Number = -_loc4_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc6_:Number = _loc4_ * param2 * Math.sin(param3 / (180 / Math.PI));
         this.§=V§.§0!+§(new b2Vec2(_loc5_,_loc6_),false,true);
         this.camera.§9!r§(§1!n§.§8b§);
         if(this.§!"$§)
         {
            this.§!"$§.§2!"§(this.§6P§.§8"§,param1.x,param1.y,param2,param3);
         }
      }
      
      public function activatePowerup() : void
      {
         this.§2" § = true;
      }
      
      private function §5J§() : void
      {
         if(!this.§2" §)
         {
            return;
         }
         this.§2" § = false;
         if(this.activeObject is §+!j§ && !(this.activeObject as §+!j§).§?!3§)
         {
            if(this.activeObject.activateSpecialPower(this.§6!"§))
            {
               this.§9q§ = true;
            }
         }
         else
         {
            this.§ !q§.§&!Q§();
         }
         if(this.§!"$§)
         {
            this.§!"$§.§%k§(this.§6P§.§8"§);
         }
      }
      
      public function §[!J§() : void
      {
         this.§ !q§.§[!J§();
      }
      
      public function §>!6§() : void
      {
         this.§ !q§.§+4§();
      }
      
      public function §8§() : §+R§
      {
         var _loc1_:§+R§ = new §+R§();
         _loc1_.mScoreGold = this.§]l§.mScoreGold;
         _loc1_.mScoreSilver = this.§]l§.mScoreSilver;
         this.§]!M§.writeCameraInformation(_loc1_);
         this.§ !q§.writeObjectInformation(_loc1_);
         this.§#!]§.writeSlingshotInformation(_loc1_);
         _loc1_.theme = this.§3!H§.getCurrentThemeName();
         return _loc1_;
      }
      
      public function §+!9§() : int
      {
         return this.§]l§.mScoreSilver;
      }
      
      public function §9!6§() : int
      {
         return this.§]l§.mScoreGold;
      }
      
      public function §["%§(param1:int) : void
      {
         this.§]l§.mScoreSilver = param1;
      }
      
      public function §-,§(param1:int) : void
      {
         this.§]l§.mScoreGold = param1;
      }
      
      public function §3!K§(param1:Number, param2:Number) : void
      {
         if(this.§12§)
         {
            this.§12§.§&!T§(param1,param2);
         }
         if(this.§]!M§)
         {
            this.§]!M§.updateCamera(0);
         }
      }
      
      public function get §4"-§() : §+R§
      {
         return this.§]l§;
      }
      
      public function get §6!"§() : §="-§
      {
         return this.§ !q§;
      }
      
      protected function get §67§() : §^e§
      {
         return this.§78§;
      }
      
      public function get §"!-§() : int
      {
         return §!=§;
      }
   }
}
