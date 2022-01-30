package §[B§
{
   import §!R§.§8u§;
   import §!R§.§>"=§;
   import §"p§.§@8§;
   import §#I§.§4";§;
   import §#I§.§9!O§;
   import §&=§.§%!j§;
   import §-!^§.§<s§;
   import §0E§.§#O§;
   import §0E§.§-!F§;
   import §0E§.§9!Y§;
   import §0E§.§^!@§;
   import §3!t§.b2Vec2;
   import §3",§.§0"<§;
   import §3u§.§>Y§;
   import §4!#§.;
   import §4!#§.§60§;
   import §4!#§.§@!m§;
   import §4!#§.§[R§;
   import §7"1§.§%W§;
   import §8!O§.§'!§;
   import §9!c§.§-!z§;
   import §?",§.§]!k§;
   import §@!-§.§!!Y§;
   import §@!-§.§&!$§;
   import §@!-§.§3"1§;
   import §@!i§.DisplayObject;
   import §@!i§.Sprite;
   import §@r§.§3!+§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §"d§
   {
      
      private static const §6"2§:int = 20;
      
      public static const §]k§:Number = §%W§.§0<§;
      
      public static const §catch§:Number = §%W§.§-!'§;
      
      public static const §2!]§:Number = 1 / 20;
      
      public static const §[!T§:Number = §%W§.§-!'§ * §2!]§;
      
      public static const §do §:Number = §]k§ * §2!]§;
      
      public static const §]7§:§<s§ = new §<s§(13 - 3);
      
      public static var §1!!§:Number = 1;
      
      protected static var §9"2§:String = §#O§.§=O§;
       
      
      protected var §`;§:§[R§;
      
      private var §#!]§:§60§;
      
      private var §6F§:Array = null;
      
      protected var §`"4§:§-!z§;
      
      public var §5L§:§-"&§;
      
      protected var §%!"§:§,!B§;
      
      protected var §4!S§:§3!+§;
      
      protected var §-!`§:§^W§;
      
      protected var §>y§:§>"=§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §%![§:Boolean = false;
      
      protected var §@!!§:Boolean = false;
      
      protected var §!"3§:Boolean = false;
      
      public var §,z§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §1" §:Number;
      
      public var §5!x§:Number;
      
      private var §4W§:Number;
      
      public var §8Q§:§^!@§;
      
      public var §'"?§:Boolean = false;
      
      private var §1!l§:§=R§;
      
      private var §4!x§:Sprite;
      
      protected var §-" §:§#O§;
      
      protected var §`=§:§%!j§ = null;
      
      private var §?!>§:EventDispatcher;
      
      private var §<L§:Array;
      
      private var §=@§:Array;
      
      protected var §,!q§:§0"<§;
      
      private var §0!J§:§>Y§;
      
      protected var §9!r§:§3"1§;
      
      protected var §+!7§:§!!Y§;
      
      private var §'§:§&!$§;
      
      private var §?v§:§&!$§;
      
      private var § ! §:§&!$§;
      
      private var § null§:Stage;
      
      private var §?i§:§'J§;
      
      protected var § "?§:§'!§;
      
      protected var §#2§:§'!§;
      
      protected var §0d§:Number = 0.0;
      
      protected var §3!U§:String;
      
      private var §["7§:Boolean;
      
      protected var §,!§:Boolean;
      
      protected var §!!'§:uint = 1.417339207E9;
      
      public var §>C§:Boolean;
      
      public function §"d§(param1:Stage)
      {
         this.§=@§ = [];
         super();
         this.§?!>§ = new EventDispatcher();
         this.§8Q§ = new §^!@§();
         this.§ null§ = param1;
         this.§9!r§ = §3"1§.§ "!§;
         this.§+!7§ = this.initAnimationManager(this.§9!r§);
         this.§'§ = this.§0$§();
         this.§?v§ = this.§+p§();
         this.§ ! § = this.§^",§();
         var _loc2_:Stage3D = param1.stage3Ds[0];
         this.§,!q§ = new §0"<§(§=R§,param1,new Rectangle(0,0,§%W§.§0<§,§%W§.§-!'§),_loc2_);
         §%W§.§4!t§.addEventListener(Event.ENTER_FRAME,this.§,!q§.onEnterFrame);
         _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§9!g§,false,0,true);
         this.§,!q§.§ K§ = false;
         this.§,!q§.enableErrorChecking = false;
         this.§,!q§.§%R§ = 2;
         this.§,!q§.§>r§();
      }
      
      public static function §<!'§(param1:§60§, param2:§60§) : Number
      {
         var _loc3_:Number = param1.§5=§ - param2.§5=§;
         var _loc4_:Number = param1.§6!M§ - param2.§6!M§;
         return § !1§(_loc3_,_loc4_);
      }
      
      public static function § !1§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         if(!this.§4!x§ && this.§[!Z§)
         {
            this.§4!x§ = this.§1!l§.§-!H§;
         }
         return this.§4!x§;
      }
      
      public function get §[!Z§() : Sprite
      {
         if(!this.§1!l§)
         {
            this.§1!l§ = this.§,!q§.§0!§ as §=R§;
            this.§1!l§.§"!f§ = false;
         }
         return this.§1!l§;
      }
      
      private function get §]&§() : DisplayObject
      {
         if(this.§[!Z§)
         {
            return (this.§[!Z§ as §=R§).§]&§;
         }
         return null;
      }
      
      public function get §]9§() : §!!Y§
      {
         return this.§+!7§;
      }
      
      public function get §="!§() : §3"1§
      {
         return this.§9!r§;
      }
      
      public function get camera() : §3!+§
      {
         return this.§4!S§;
      }
      
      public function get objects() : §[R§
      {
         return this.§`;§;
      }
      
      public function get particles() : §>"=§
      {
         return this.§>y§;
      }
      
      public function get background() : §-!z§
      {
         return this.§`"4§;
      }
      
      public function get slingshot() : §^W§
      {
         return this.§-!`§;
      }
      
      public function get activeObject() : §60§
      {
         return this.§#!]§;
      }
      
      public function get borders() : §,!B§
      {
         return this.§%!"§;
      }
      
      public function get stage() : Stage
      {
         return this.§ null§;
      }
      
      public function get §"!M§() : §&!$§
      {
         return this.§ ! §;
      }
      
      protected function get §-!h§() : §&!$§
      {
         return this.§'§;
      }
      
      public function set activeObject(param1:§60§) : void
      {
         this.§#!]§ = param1;
      }
      
      public function set §+W§(param1:Boolean) : void
      {
         this.§,!§ = param1;
      }
      
      public function clear() : void
      {
         if(this.§0!J§)
         {
            this.§0!J§.dispose();
         }
         if(this.§9!r§)
         {
            this.§9!r§.dispose();
         }
         if(this.§'§ && this.§'§.§="!§)
         {
            this.§'§.§="!§.dispose();
         }
         if(this.§ ! § && this.§ ! §.§="!§)
         {
            this.§ ! §.§="!§.dispose();
         }
         if(this.§,!q§)
         {
            this.§,!q§.dispose();
         }
      }
      
      protected function §0$§() : §&!$§
      {
         return null;
      }
      
      protected function §+p§() : §&!$§
      {
         return null;
      }
      
      protected function §^",§() : §&!$§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§3"1§) : §!!Y§
      {
         return new §!!Y§(param1);
      }
      
      public function §'N§(param1:Boolean) : void
      {
         if(§0"<§.§<?§)
         {
            if(param1)
            {
               §0"<§.§<?§.start();
            }
            else
            {
               §0"<§.§<?§.stop();
               §0"<§.§<?§.color = 0;
            }
         }
      }
      
      public function §[!g§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function §5Q§() : §%!j§
      {
         return this.§`=§;
      }
      
      public function §92§(param1:§%!j§) : void
      {
         if(this.§`=§ != null)
         {
            this.§`=§.removeEventListeners();
         }
         this.§`=§ = param1;
         if(this.mReadyToRun)
         {
            this.§`=§.addEventListeners();
         }
      }
      
      public function §[!S§() : §'!§
      {
         return this.§ "?§;
      }
      
      public function §,C§(param1:§>Y§, param2:Array, param3:Function) : void
      {
         this.§0!J§ = param1;
         var _loc4_:int = this.§0!J§.§0h§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§9!r§.§9M§(this.§0!J§.§[v§(_loc5_));
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§?!>§.addEventListener(Event.INIT,param3);
            this.§=@§.push(param3);
         }
         if(this.§@3§(param2))
         {
            this.§1I§();
         }
      }
      
      private function §@3§(param1:Array) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.§9!r§.§ ,§())
         {
            _loc2_ = this.§9!r§.§?! § / 1000;
            _loc3_ = this.§9!r§.§-p§ / 1000;
            §@8§.log("\n\nMain texture manager memory usage:\n   textures " + _loc2_ + " kilobytes\n   bitmaps " + _loc3_ + " kilobytes\n\n");
            this.§'!Z§(param1);
            return true;
         }
         this.§<L§ = param1.concat();
         return false;
      }
      
      private function §'!Z§(param1:Array) : void
      {
         this.§+!7§.§'!Z§(param1);
      }
      
      private function §9!g§(param1:Event) : void
      {
         this.§9!r§.§3J§();
         if(this.§-!h§ && this.§-!h§.§="!§)
         {
            this.§-!h§.§="!§.§3J§();
         }
         if(this.§"!M§ && this.§"!M§.§="!§)
         {
            this.§"!M§.§="!§.§3J§();
         }
         if(this.§<L§)
         {
            this.§@3§(this.§<L§);
            this.§<L§ = null;
            this.§1I§();
         }
         if(this.§`=§ != null && this.mReadyToRun)
         {
            this.§`=§.addEventListeners();
         }
         if(this.§'§)
         {
            this.§'§.§ ,§();
         }
         if(this.§ ! §)
         {
            if(this.§ ! §.§="!§)
            {
               this.§ ! §.§="!§.§3J§();
               this.§ ! §.§ ,§();
            }
         }
      }
      
      private function §1I§() : void
      {
         this.§?!>§.dispatchEvent(new Event(Event.INIT));
         this.§^!;§();
      }
      
      private function §^!;§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§=@§)
         {
            this.§?!>§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§=@§ = [];
      }
      
      public function init(param1:§#O§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§%!"§ = new §,!B§(this,param1);
         this.§4!S§ = this.initLevelCamera(param1);
         this.§1" § = 0;
         this.§5!x§ = 0;
         this.§4W§ = 0;
         this.§["7§ = false;
         this.mReadyToRun = false;
         this.§%![§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         §9"2§ = param1.theme;
         this.§-" § = param1;
         this.§@!!§ = this.§;!1§(param1.theme);
         this.§!"3§ = this.§[!&§(param1.theme);
         if(this.§@!!§ && this.§!"3§)
         {
            this.initialize(param1);
         }
         else
         {
            this.§&!s§(param1.theme);
         }
         this.§'!T§();
         § !j§.init();
      }
      
      protected function §'!T§() : void
      {
         this.§ "?§ = new §'!§(§-!F§.§"!L§);
      }
      
      protected function §;!1§(param1:String) : Boolean
      {
         if(this.§'§)
         {
            return false;
         }
         return true;
      }
      
      protected function §[!&§(param1:String) : Boolean
      {
         var _loc2_:§9!O§ = null;
         if(this.§?v§)
         {
            _loc2_ = §4";§.§[p§(param1);
            if(_loc2_)
            {
               if(_loc2_.§3o§ && !this.§?v§.§+!]§(_loc2_.§3o§))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function §&!s§(param1:String) : void
      {
         var _loc2_:§9!O§ = null;
         if(this.§'§ && !this.§;!1§(param1))
         {
            this.§'§.removeEventListener(Event.COMPLETE,this.§default§);
            this.§'§.removeEventListener(Event.CANCEL,this.§'$§);
            this.§'§.addEventListener(Event.COMPLETE,this.§default§);
            this.§'§.addEventListener(Event.CANCEL,this.§'$§);
            this.§'§.§&X§(param1);
         }
         if(this.§?v§ && !this.§[!&§(param1))
         {
            this.§?v§.removeEventListener(Event.COMPLETE,this.§8!!§);
            this.§?v§.removeEventListener(Event.CANCEL,this.§#!F§);
            this.§?v§.addEventListener(Event.COMPLETE,this.§8!!§);
            this.§?v§.addEventListener(Event.CANCEL,this.§#!F§);
            _loc2_ = §4";§.§[p§(param1);
            if(_loc2_)
            {
               this.§?v§.§&X§(_loc2_.§3o§);
            }
         }
      }
      
      private function §default§(param1:Event) : void
      {
         this.§'§.removeEventListener(Event.COMPLETE,this.§default§);
         this.§'§.removeEventListener(Event.CANCEL,this.§'$§);
         this.§@!!§ = true;
         if(this.§@!!§ && this.§!"3§)
         {
            this.initialize(this.§-" §);
         }
      }
      
      private function §'$§(param1:Event) : void
      {
         this.§'§.removeEventListener(Event.COMPLETE,this.§default§);
         this.§'§.removeEventListener(Event.CANCEL,this.§'$§);
         this.§%![§ = true;
      }
      
      private function §8!!§(param1:Event) : void
      {
         this.§'§.removeEventListener(Event.COMPLETE,this.§8!!§);
         this.§'§.removeEventListener(Event.CANCEL,this.§#!F§);
         this.§!"3§ = true;
         if(this.§@!!§ && this.§!"3§)
         {
            this.initialize(this.§-" §);
         }
      }
      
      private function §#!F§(param1:Event) : void
      {
         this.§'§.removeEventListener(Event.COMPLETE,this.§8!!§);
         this.§'§.removeEventListener(Event.CANCEL,this.§#!F§);
         this.§!"3§ = true;
         if(this.§@!!§ && this.§!"3§)
         {
            this.initialize(this.§-" §);
         }
      }
      
      public function get §[^§() : §3"1§
      {
         return this.§9!r§;
      }
      
      protected function initialize(param1:§#O§) : void
      {
         this.§,!§ = false;
         this.§>C§ = false;
         if(§0"<§.§1!G§)
         {
            §0"<§.§1!G§.speed = 1;
         }
         this.§5L§ = new §-"&§(this);
         this.§`"4§ = this.§#!?§(param1.theme,this.§%!"§.mBorderGround_B2 / §2!]§,this.§[^§,this.§4!S§.§>d§());
         this.§`"4§.§;!v§(§%W§.§,4§());
         this.§`;§ = this.initLevelObjectManager(param1);
         this.§-!`§ = this.§""&§(param1);
         this.§>y§ = this.§^!w§(this.§+!7§,this.§9!r§);
         this.§4!S§.init();
         this.§^!"§();
         this.§->§();
         this.mReadyToRun = true;
         if(this.§`=§)
         {
            this.§`=§.addEventListeners();
         }
      }
      
      protected function §->§() : void
      {
         if(this.§3!U§)
         {
            this.§#2§ = §'!§.initialize(this.§3!U§);
            this.§#2§.speed = 1;
            this.§#2§.play();
            this.§0d§ = -1000;
            this.§3!U§ = null;
         }
      }
      
      public function §["9§(param1:String) : void
      {
         this.§3!U§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§#2§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§#2§)
         {
            if(param1)
            {
               this.§#2§.speed = Math.min(this.§#2§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§#2§.speed = Math.max(this.§#2§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§#2§)
         {
            this.§#2§.speed = 1;
         }
      }
      
      protected function initLevelObjectManager(param1:§#O§) : §[R§
      {
         return new §[R§(this,param1,new Sprite());
      }
      
      protected function initLevelCamera(param1:§#O§) : §3!+§
      {
         return new §3!+§(this,param1);
      }
      
      protected function §#!?§(param1:String, param2:Number, param3:§3"1§, param4:Number) : §-!z§
      {
         return new §-!z§(param1,param2,param3,param4);
      }
      
      protected function §""&§(param1:§#O§) : §^W§
      {
         return new §^W§(this,param1,new Sprite());
      }
      
      protected function §^!w§(param1:§!!Y§, param2:§3"1§) : §>"=§
      {
         return new §>"=§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§#O§ = this.§0+§();
         var _loc4_:§9!Y§;
         (_loc4_ = new §9!Y§()).left = 0;
         _loc4_.top = -§3!+§.SCREEN_HEIGHT_B2 / 10 * 8;
         _loc4_.bottom = _loc4_.top + §3!+§.SCREEN_HEIGHT_B2;
         _loc4_.right = _loc4_.left + §3!+§.SCREEN_WIDTH_B2;
         _loc4_.y = -13.929;
         _loc4_.x = §3!+§.SCREEN_WIDTH_B2;
         _loc4_.id = §3!+§.CAMERA_ID_SLINGSHOT;
         _loc3_.§0!7§(_loc4_);
         var _loc5_:§9!Y§;
         (_loc5_ = new §9!Y§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §3!+§.SCREEN_WIDTH_B2;
         _loc5_.bottom = _loc5_.top + §3!+§.SCREEN_HEIGHT_B2;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §3!+§.SCREEN_WIDTH_B2 / 2;
         _loc5_.id = §3!+§.CAMERA_ID_CASTLE;
         _loc3_.§0!7§(_loc5_);
         this.§;8§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§9"2§ != null)
         {
            _loc3_.theme = §9"2§;
         }
         this.init(_loc3_);
      }
      
      protected function §;8§(param1:§#O§, param2:Boolean) : void
      {
         if(param2)
         {
            this.§9!a§(param1);
         }
      }
      
      protected function §0+§() : §#O§
      {
         var _loc1_:§#O§ = new §#O§();
         _loc1_.§5!9§ = -12;
         return new §#O§();
      }
      
      protected function §0"=§() : Number
      {
         this.§!!'§ ^= this.§!!'§ << 21;
         this.§!!'§ ^= this.§!!'§ >>> 35;
         this.§!!'§ ^= this.§!!'§ << 4;
         return this.§!!'§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §9!a§(param1:§#O§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§]!k§ = null;
         this.§!!'§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§0"=§() * 5;
               (_loc5_ = new §]!k§()).x = 30 + _loc3_ * 10 + this.§0"=§() * 9;
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
                  _loc5_.angle = 45 - this.§0"=§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§0"=§() * 3 - _loc3_ * 8;
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
                  _loc5_.angle = this.§0"=§() * 360;
               }
               param1.addObject(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      private function §&!+§() : void
      {
      }
      
      public function §^!"§() : void
      {
         if(§-!z§.§5e§)
         {
            this.§88§(this.§`"4§.§5]§,false);
         }
         this.§88§(this.§>y§.§0!L§(§>"=§.§5!z§),false);
         this.§88§(this.§>y§.§0!L§(§>"=§.§ J§),true);
         this.§88§(this.§>y§.§0!L§(§>"=§.§3;§),true);
         this.§88§(this.§`;§.§3$§,true);
         this.§88§(this.§-!`§.sprite,true);
         this.§88§(this.§>y§.§0!L§(§>"=§.§3%§),true);
         this.§88§(this.§`"4§.§="1§,false);
         if(§-!z§.§5e§)
         {
            this.§88§(this.§`"4§.§<m§,false);
         }
         this.§88§(this.§>y§.§0!L§(§>"=§.§4J§),true);
      }
      
      private function §88§(param1:Sprite, param2:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(param1);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         param1 /= §%W§.§@!N§;
         param2 /= §%W§.§@!N§;
         _loc3_.x = (param1 / §3!+§.§2"8§ + this.§4!S§.§#!A§ - §3!+§.§%!h§ / §3!+§.§2"8§) * §2!]§;
         _loc3_.y = (param2 / §3!+§.§2"8§ + this.§4!S§.§?9§ - §3!+§.§]!@§ / §3!+§.§2"8§) * §2!]§;
         return _loc3_;
      }
      
      public function §!C§(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / §2!]§ + §3!+§.§%!h§ / §3!+§.§2"8§ - this.§4!S§.§#!A§) * §3!+§.§2"8§;
         _loc3_.y = (param2 / §2!]§ + §3!+§.§]!@§ / §3!+§.§2"8§ - this.§4!S§.§?9§) * §3!+§.§2"8§;
         var _loc4_:Number = Math.max(§%W§.§@!N§,§%W§.§`N§);
         _loc3_.x *= _loc4_;
         _loc3_.y *= _loc4_;
         return _loc3_;
      }
      
      public function §=!%§(param1:String, param2:Number, param3:Number) : void
      {
         this.§`;§.addObject(param1,param2,param3);
      }
      
      public function §!V§() : void
      {
         if(this.§]&§)
         {
            this.§]&§.visible = true;
            this.§]&§.alpha = 0;
         }
         this.§,z§ = 0;
      }
      
      public function §get §() : void
      {
         this.§?i§ = new §'J§(§5"1§.§>!f§,§5"1§.§!!f§);
      }
      
      public function §-'§() : void
      {
         this.§?i§ = null;
      }
      
      public function clearLevel() : void
      {
         if(this.§`"4§)
         {
            this.§`"4§.dispose();
            this.§`"4§ = null;
         }
         if(this.§`;§)
         {
            this.§`;§.dispose();
            this.§`;§ = null;
            this.§#!]§ = null;
         }
         if(this.§5L§)
         {
            if(!this.§5L§.§@!j§)
            {
            }
            this.§5L§.clear();
            this.§5L§ = null;
         }
         if(this.§%!"§)
         {
            this.§%!"§.clear();
            this.§%!"§ = null;
         }
         if(this.§-!`§)
         {
            this.§-!`§.dispose();
            this.§-!`§ = null;
         }
         if(this.§4!S§)
         {
            this.§4!S§.clear();
            this.§4!S§ = null;
         }
         if(this.§>y§)
         {
            this.§>y§.dispose();
            this.§>y§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§1" § = 0;
         this.§5!x§ = 0;
         this.mReadyToRun = false;
         this.§["7§ = false;
         this.§,z§ = §5"1§.§-<§;
         if(this.§[!Z§)
         {
            (this.§[!Z§ as §=R§).§3!4§.x = 0;
            (this.§[!Z§ as §=R§).§3!4§.y = 0;
         }
         if(this.§]&§)
         {
            this.§]&§.visible = false;
         }
         this.§#2§ = null;
         this.§ "?§ = null;
         if(this.§'§)
         {
            this.§'§.removeEventListener(Event.COMPLETE,this.§default§);
            this.§'§.removeEventListener(Event.CANCEL,this.§'$§);
         }
         if(this.§?v§)
         {
            this.§?v§.removeEventListener(Event.COMPLETE,this.§8!!§);
            this.§?v§.removeEventListener(Event.CANCEL,this.§#!F§);
         }
         this.§^!;§();
         if(§0"<§.§<?§)
         {
            §0"<§.§<?§.color = 0;
         }
         if(this.§`=§)
         {
            this.§`=§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver() : void
      {
      }
      
      public function §0"?§() : String
      {
         if(this.§ "?§)
         {
            return this.§ "?§.toString();
         }
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         if(!this.mReadyToRun || !§0"<§.§>",§())
         {
            return 0;
         }
         if(this.§#2§ && this.§#2§.§2"'§)
         {
            return this.§&!N§(param1,param2,param3);
         }
         return this.§]B§(param1,true,param2,param3);
      }
      
      protected function §]B§(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         if(this.§,!§)
         {
            param1 *= 0.2;
            if(§0"<§.§1!G§)
            {
               §0"<§.§1!G§.speed = 0.2;
            }
         }
         var _loc5_:Number = 0;
         this.§5!x§ += param1;
         if(param3)
         {
            this.§1" § += param1;
            _loc5_ = this.§5L§.§<T§(this.§1" §);
            this.§-!`§.update(param1,param4);
            this.§1" § = _loc5_;
         }
         else
         {
            this.§`;§.§7!B§(param1);
            this.§1" § = 0;
         }
         if(param2)
         {
            this.§'"4§(param1,_loc5_);
         }
         return param1;
      }
      
      private function §&!N§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc5_:Number = NaN;
         var _loc4_:Number = §-"&§.§<!$§ * 1000;
         if(this.§#2§)
         {
            param1 *= this.§#2§.speed;
            _loc5_ = this.§5!x§ + param1;
            while(this.§5!x§ + _loc4_ < _loc5_)
            {
               if(this.§5!x§ + _loc4_ > this.§0d§)
               {
                  this.§#2§.step(this);
                  this.§0d§ += _loc4_;
               }
               this.§]B§(_loc4_,false,param2,param3);
            }
            if(_loc5_ > this.§0d§ + _loc4_)
            {
               this.§#2§.step(this);
               this.§0d§ += _loc4_;
            }
            if(this.§5!x§ < _loc5_)
            {
               this.§]B§(_loc5_ - this.§5!x§,true,param2,param3);
            }
            return param1;
         }
         return this.§]B§(_loc4_,true,param2,param3);
      }
      
      private function §'"4§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.§`"4§.update(param1);
         this.§`;§.§^!4§(param1,param2);
         this.§4!0§();
         if(this.§,z§ < §5"1§.§-<§)
         {
            this.§,z§ += param1;
            _loc3_ = §5"1§.§-<§ / 2;
            _loc4_ = (-Math.abs(this.§,z§ - _loc3_) + _loc3_) * (§5"1§.§7v§ / _loc3_);
            if(this.§]&§)
            {
               this.§]&§.alpha = _loc4_;
            }
         }
         else if(this.§]&§)
         {
            this.§]&§.visible = false;
         }
         if(this.§?i§)
         {
            if(!this.§?i§.§20§(this.§4!S§,param1))
            {
               this.§-'§();
            }
         }
         this.§4!S§.updateCamera(param1);
         this.§5L§.§]!l§();
         this.§>y§.update(param1);
      }
      
      public function §+H§(param1:Number) : void
      {
         this.objects.§7!B§(param1 * 1000);
         this.objects.§2!<§(param1 * 1000);
         this.§@F§();
      }
      
      public function §4!0§() : void
      {
         var _loc1_:§60§ = null;
         if(this.§5!x§ > this.§4W§ + 1000 / 30)
         {
            if(this.§6F§ != null)
            {
               for each(_loc1_ in this.§6F§)
               {
                  _loc1_.addTrail();
               }
            }
            this.§4W§ = this.§5!x§;
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§60§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.§`;§.isPigsAlive(true))
            {
               _loc2_ = this.§`;§.§>!Y§(true);
               _loc2_.§8!5§.mTryToScream = §#0§.§#!i§;
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§`;§.getPigCount());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            if(this.§`;§.isPigsAlive(true))
            {
               _loc2_ = this.§`;§.§>!Y§(true);
               _loc2_.§8!5§.mTryToBlink = §#0§.§'"§;
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§`;§.getPigCount());
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §8u§.§>m§;
         }
         § !j§.addScore(param1,param2);
         this.§`=§.addScore(param1);
         if(param3 && param1 > 0 && !this.§>C§)
         {
            this.§!K§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §!K§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §8u§.§`!?§;
         }
         this.§>y§.§""#§(§8u§.§"V§,§>"=§.§4J§,§8u§.§"!=§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §,!k§(param1:§60§) : void
      {
         if(this.§6F§ == null)
         {
            this.§6F§ = new Array();
         }
         this.§6F§.push(param1);
      }
      
      public function §6c§() : void
      {
         this.§-!`§.§6c§();
         this.§`;§.§@!,§();
         this.§>C§ = true;
      }
      
      public function §^U§(param1:§60§) : void
      {
         this.§>y§.§0B§(§>"=§.§5!z§);
         if(this.§6F§.indexOf(param1) >= 0)
         {
            this.§6F§.splice(this.§6F§.indexOf(param1),1);
         }
         if(this.§6F§.length == 0)
         {
            this.§6F§ = null;
         }
      }
      
      public function §=""§(param1:§,!f§, param2:Number, param3:Number) : void
      {
         this.§#!]§ = this.§`;§.addObject(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
         var _loc4_:Number = param1.name.toUpperCase() == "BIRD_GREEN" ? Number(§^W§.§&!I§) : Number(§^W§.§-!U§);
         if(param1.§1R§ > 1)
         {
            this.§#!]§.§<<§(param1.§1R§);
            this.§#!]§.§8!5§.§&!O§();
         }
         if(param1.§]Y§ != 0)
         {
            _loc4_ = param1.§]Y§;
         }
         var _loc5_:Number = -_loc4_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc6_:Number = _loc4_ * param2 * Math.sin(param3 / (180 / Math.PI));
         this.§#!]§.§'!s§(new b2Vec2(_loc5_,_loc6_),false,true);
         this.camera.§3!s§(§3!+§.§6!U§);
         if(this.§ "?§)
         {
            this.§ "?§.§=""§(this.§5L§.§2!N§,param1.x,param1.y,param2,param3);
         }
      }
      
      public function activatePowerup() : void
      {
         this.§["7§ = true;
      }
      
      private function §@F§() : void
      {
         if(!this.§["7§)
         {
            return;
         }
         this.§["7§ = false;
         if(this.activeObject is §@!m§ && !(this.activeObject as §@!m§).§3!b§)
         {
            if(this.activeObject.activateSpecialPower(this.§2![§))
            {
               this.§'"?§ = true;
            }
         }
         else
         {
            this.§`;§.§#Y§();
         }
         if(this.§ "?§)
         {
            this.§ "?§.§3"3§(this.§5L§.§2!N§);
         }
      }
      
      public function §+"6§() : void
      {
         this.§`;§.§+"6§();
      }
      
      public function §5N§() : void
      {
         this.§`;§.§^!R§();
      }
      
      public function §7!k§() : §#O§
      {
         var _loc1_:§#O§ = new §#O§();
         _loc1_.mScoreGold = this.§-" §.mScoreGold;
         _loc1_.mScoreSilver = this.§-" §.mScoreSilver;
         this.§4!S§.writeCameraInformation(_loc1_);
         this.§`;§.writeObjectInformation(_loc1_);
         this.§-!`§.writeSlingshotInformation(_loc1_);
         _loc1_.theme = this.§`"4§.getCurrentThemeName();
         return _loc1_;
      }
      
      public function §3!T§() : int
      {
         return this.§-" §.mScoreSilver;
      }
      
      public function §<j§() : int
      {
         return this.§-" §.mScoreGold;
      }
      
      public function §&!e§(param1:int) : void
      {
         this.§-" §.mScoreSilver = param1;
      }
      
      public function §]"6§(param1:int) : void
      {
         this.§-" §.mScoreGold = param1;
      }
      
      public function §,!M§(param1:Number, param2:Number) : void
      {
         if(this.§1!l§)
         {
            this.§1!l§.§%"=§(param1,param2);
         }
         if(this.§4!S§)
         {
            this.§4!S§.updateCamera(0);
         }
      }
      
      public function get §9z§() : §#O§
      {
         return this.§-" §;
      }
      
      public function get §2![§() : §[R§
      {
         return this.§`;§;
      }
      
      protected function get §;!§() : §0"<§
      {
         return this.§,!q§;
      }
      
      public function get §>!u§() : int
      {
         return §6"2§;
      }
   }
}
