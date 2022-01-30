package §8!E§
{
   import §&W§.§7L§;
   import §,!!§.§0"!§;
   import §-!+§.§6"6§;
   import §0I§.§continue§;
   import §0s§.§+d§;
   import §0s§.§8!e§;
   import §0s§.§8!z§;
   import §0s§.§];§;
   import §1!z§.b2Vec2;
   import §2b§.§"" §;
   import §96§.§&!T§;
   import §;!@§.§6f§;
   import §;!@§.§>!%§;
   import §=!<§.§5!U§;
   import §>!?§.§&!i§;
   import §?"&§.§"!q§;
   import §?"&§.§"f§;
   import §?"&§.§5b§;
   import §?"&§.§`!k§;
   import §@R§.§6`§;
   import §[!M§.§8z§;
   import §["8§.§ !>§;
   import §["8§.§=!i§;
   import §`"2§.§&"5§;
   import §`"2§.§6!,§;
   import §`"2§.§><§;
   import §`L§.DisplayObject;
   import §`L§.Sprite;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §?!X§
   {
      
      private static const §'i§:int = 20;
      
      public static const §4J§:Number = §5!U§.§`!_§;
      
      public static const §6e§:Number = §5!U§.§?_§;
      
      public static const §57§:Number = 1 / 20;
      
      public static const §;-§:Number = §5!U§.§?_§ * §57§;
      
      public static const §=r§:Number = §4J§ * §57§;
      
      public static const §%!O§:§0"!§ = new §0"!§(13 - 3);
      
      public static var §7"5§:Number = 1;
      
      protected static var §`!U§:String = §];§.§!!H§;
       
      
      protected var §]"?§:§5b§;
      
      private var §9c§:§"!q§;
      
      private var §,!B§:Array = null;
      
      protected var §8G§:§8z§;
      
      public var §1!-§:§^!Q§;
      
      protected var §["#§:§[I§;
      
      protected var §+=§:§"" §;
      
      protected var §3!Z§:§1!6§;
      
      protected var §5!p§:§ !>§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §2!B§:Boolean = false;
      
      protected var §'"0§:Boolean = false;
      
      protected var §#g§:Boolean = false;
      
      public var §0G§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §6!§:Number;
      
      public var §;;§:Number;
      
      private var §=!q§:Number;
      
      public var §#!j§:§+d§;
      
      public var §%D§:Boolean = false;
      
      private var §1S§:§"=§;
      
      private var §`;§:Sprite;
      
      protected var §`7§:§];§;
      
      protected var §^!$§:§&!i§ = null;
      
      private var §[!v§:EventDispatcher;
      
      private var §^"0§:Array;
      
      private var §;U§:Array;
      
      protected var §3!e§:§6"6§;
      
      private var §'!p§:§6`§;
      
      protected var §>!t§:§6!,§;
      
      protected var §>!=§:§><§;
      
      private var §4!4§:§&"5§;
      
      private var §0!v§:§&"5§;
      
      private var §"R§:§&"5§;
      
      private var §="!§:Stage;
      
      private var §,!7§:§>!Q§;
      
      protected var §%G§:§&!T§;
      
      protected var §]!=§:§&!T§;
      
      protected var get:Number = 0.0;
      
      protected var §#c§:String;
      
      private var § !a§:Boolean;
      
      protected var §<"0§:Boolean;
      
      protected var §6B§:uint = 1.417339207E9;
      
      public var §+z§:Boolean;
      
      public function §?!X§(param1:Stage)
      {
         this.§;U§ = [];
         super();
         this.§[!v§ = new EventDispatcher();
         this.§#!j§ = new §+d§();
         this.§="!§ = param1;
         this.§>!t§ = §6!,§.§7!?§;
         this.§>!=§ = this.initAnimationManager(this.§>!t§);
         this.§4!4§ = this.§%2§();
         this.§0!v§ = this.§#!#§();
         this.§"R§ = this.§+!=§();
         var _loc2_:Stage3D = param1.stage3Ds[0];
         this.§3!e§ = new §6"6§(§"=§,param1,new Rectangle(0,0,§5!U§.§`!_§,§5!U§.§?_§),_loc2_);
         §5!U§.§=J§.addEventListener(Event.ENTER_FRAME,this.§3!e§.onEnterFrame);
         _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§'!K§,false,0,true);
         this.§3!e§.§5!J§ = false;
         this.§3!e§.enableErrorChecking = false;
         this.§3!e§.§5"3§ = 2;
         this.§3!e§.§"Y§();
      }
      
      public static function §,!Y§(param1:§"!q§, param2:§"!q§) : Number
      {
         var _loc3_:Number = param1.§&!V§ - param2.§&!V§;
         var _loc4_:Number = param1.§%!g§ - param2.§%!g§;
         return §6#§(_loc3_,_loc4_);
      }
      
      public static function §6#§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         if(!this.§`;§ && this.§`">§)
         {
            this.§`;§ = this.§1S§.§,L§;
         }
         return this.§`;§;
      }
      
      public function get §`">§() : Sprite
      {
         if(!this.§1S§)
         {
            this.§1S§ = this.§3!e§.§2o§ as §"=§;
            this.§1S§.§9!!§ = false;
         }
         return this.§1S§;
      }
      
      private function get §8L§() : DisplayObject
      {
         if(this.§`">§)
         {
            return (this.§`">§ as §"=§).§8L§;
         }
         return null;
      }
      
      public function get §1!,§() : §><§
      {
         return this.§>!=§;
      }
      
      public function get §4F§() : §6!,§
      {
         return this.§>!t§;
      }
      
      public function get camera() : §"" §
      {
         return this.§+=§;
      }
      
      public function get objects() : §5b§
      {
         return this.§]"?§;
      }
      
      public function get particles() : § !>§
      {
         return this.§5!p§;
      }
      
      public function get background() : §8z§
      {
         return this.§8G§;
      }
      
      public function get slingshot() : §1!6§
      {
         return this.§3!Z§;
      }
      
      public function get activeObject() : §"!q§
      {
         return this.§9c§;
      }
      
      public function get borders() : §[I§
      {
         return this.§["#§;
      }
      
      public function get stage() : Stage
      {
         return this.§="!§;
      }
      
      public function get §"!E§() : §&"5§
      {
         return this.§"R§;
      }
      
      protected function get §4§() : §&"5§
      {
         return this.§4!4§;
      }
      
      public function set activeObject(param1:§"!q§) : void
      {
         this.§9c§ = param1;
      }
      
      public function set §"!M§(param1:Boolean) : void
      {
         this.§<"0§ = param1;
      }
      
      public function clear() : void
      {
         if(this.§'!p§)
         {
            this.§'!p§.dispose();
         }
         if(this.§>!t§)
         {
            this.§>!t§.dispose();
         }
         if(this.§4!4§ && this.§4!4§.§4F§)
         {
            this.§4!4§.§4F§.dispose();
         }
         if(this.§"R§ && this.§"R§.§4F§)
         {
            this.§"R§.§4F§.dispose();
         }
         if(this.§3!e§)
         {
            this.§3!e§.dispose();
         }
      }
      
      protected function §%2§() : §&"5§
      {
         return null;
      }
      
      protected function §#!#§() : §&"5§
      {
         return null;
      }
      
      protected function §+!=§() : §&"5§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§6!,§) : §><§
      {
         return new §><§(param1);
      }
      
      public function §=""§(param1:Boolean) : void
      {
         if(§6"6§.§^F§)
         {
            if(param1)
            {
               §6"6§.§^F§.start();
            }
            else
            {
               §6"6§.§^F§.stop();
               §6"6§.§^F§.color = 0;
            }
         }
      }
      
      public function §3!w§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function §"!;§() : §&!i§
      {
         return this.§^!$§;
      }
      
      public function §7!t§(param1:§&!i§) : void
      {
         if(this.§^!$§ != null)
         {
            this.§^!$§.removeEventListeners();
         }
         this.§^!$§ = param1;
         if(this.mReadyToRun)
         {
            this.§^!$§.addEventListeners();
         }
      }
      
      public function §-6§() : §&!T§
      {
         return this.§%G§;
      }
      
      public function §[8§(param1:§6`§, param2:Array, param3:Function) : void
      {
         this.§'!p§ = param1;
         var _loc4_:int = this.§'!p§.§,!a§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§>!t§.§3!=§(this.§'!p§.§8'§(_loc5_));
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§[!v§.addEventListener(Event.INIT,param3);
            this.§;U§.push(param3);
         }
         if(this.§;!j§(param2))
         {
            this.§-!#§();
         }
      }
      
      private function §;!j§(param1:Array) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.§>!t§.§%b§())
         {
            _loc2_ = this.§>!t§.§,!_§ / 1000;
            _loc3_ = this.§>!t§.§&!E§ / 1000;
            §7L§.log("\n\nMain texture manager memory usage:\n   textures " + _loc2_ + " kilobytes\n   bitmaps " + _loc3_ + " kilobytes\n\n");
            this.§0§(param1);
            return true;
         }
         this.§^"0§ = param1.concat();
         return false;
      }
      
      private function §0§(param1:Array) : void
      {
         this.§>!=§.§0§(param1);
      }
      
      private function §'!K§(param1:Event) : void
      {
         this.§>!t§.§"!B§();
         if(this.§4§ && this.§4§.§4F§)
         {
            this.§4§.§4F§.§"!B§();
         }
         if(this.§"!E§ && this.§"!E§.§4F§)
         {
            this.§"!E§.§4F§.§"!B§();
         }
         if(this.§^"0§)
         {
            this.§;!j§(this.§^"0§);
            this.§^"0§ = null;
            this.§-!#§();
         }
         if(this.§^!$§ != null && this.mReadyToRun)
         {
            this.§^!$§.addEventListeners();
         }
         if(this.§4!4§)
         {
            this.§4!4§.§%b§();
         }
         if(this.§"R§)
         {
            if(this.§"R§.§4F§)
            {
               this.§"R§.§4F§.§"!B§();
               this.§"R§.§%b§();
            }
         }
      }
      
      private function §-!#§() : void
      {
         this.§[!v§.dispatchEvent(new Event(Event.INIT));
         this.§!1§();
      }
      
      private function §!1§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§;U§)
         {
            this.§[!v§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§;U§ = [];
      }
      
      public function init(param1:§];§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§["#§ = new §[I§(this,param1);
         this.§+=§ = this.initLevelCamera(param1);
         this.§6!§ = 0;
         this.§;;§ = 0;
         this.§=!q§ = 0;
         this.§ !a§ = false;
         this.mReadyToRun = false;
         this.§2!B§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         §`!U§ = param1.theme;
         this.§`7§ = param1;
         this.§'"0§ = this.§0!"§(param1.theme);
         this.§#g§ = this.§1?§(param1.theme);
         if(this.§'"0§ && this.§#g§)
         {
            this.initialize(param1);
         }
         else
         {
            this.§19§(param1.theme);
         }
         this.§51§();
         §9!S§.init();
      }
      
      protected function §51§() : void
      {
         this.§%G§ = new §&!T§(§8!z§.§>!&§);
      }
      
      protected function §0!"§(param1:String) : Boolean
      {
         if(this.§4!4§)
         {
            return false;
         }
         return true;
      }
      
      protected function §1?§(param1:String) : Boolean
      {
         var _loc2_:§6f§ = null;
         if(this.§0!v§)
         {
            _loc2_ = §>!%§.§?L§(param1);
            if(_loc2_)
            {
               if(_loc2_.§6!=§ && !this.§0!v§.§?j§(_loc2_.§6!=§))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function §19§(param1:String) : void
      {
         var _loc2_:§6f§ = null;
         if(this.§4!4§ && !this.§0!"§(param1))
         {
            this.§4!4§.removeEventListener(Event.COMPLETE,this.§&O§);
            this.§4!4§.removeEventListener(Event.CANCEL,this.§<6§);
            this.§4!4§.addEventListener(Event.COMPLETE,this.§&O§);
            this.§4!4§.addEventListener(Event.CANCEL,this.§<6§);
            this.§4!4§.§,"6§(param1);
         }
         if(this.§0!v§ && !this.§1?§(param1))
         {
            this.§0!v§.removeEventListener(Event.COMPLETE,this.§,M§);
            this.§0!v§.removeEventListener(Event.CANCEL,this.§[!S§);
            this.§0!v§.addEventListener(Event.COMPLETE,this.§,M§);
            this.§0!v§.addEventListener(Event.CANCEL,this.§[!S§);
            _loc2_ = §>!%§.§?L§(param1);
            if(_loc2_)
            {
               this.§0!v§.§,"6§(_loc2_.§6!=§);
            }
         }
      }
      
      private function §&O§(param1:Event) : void
      {
         this.§4!4§.removeEventListener(Event.COMPLETE,this.§&O§);
         this.§4!4§.removeEventListener(Event.CANCEL,this.§<6§);
         this.§'"0§ = true;
         if(this.§'"0§ && this.§#g§)
         {
            this.initialize(this.§`7§);
         }
      }
      
      private function §<6§(param1:Event) : void
      {
         this.§4!4§.removeEventListener(Event.COMPLETE,this.§&O§);
         this.§4!4§.removeEventListener(Event.CANCEL,this.§<6§);
         this.§2!B§ = true;
      }
      
      private function §,M§(param1:Event) : void
      {
         this.§4!4§.removeEventListener(Event.COMPLETE,this.§,M§);
         this.§4!4§.removeEventListener(Event.CANCEL,this.§[!S§);
         this.§#g§ = true;
         if(this.§'"0§ && this.§#g§)
         {
            this.initialize(this.§`7§);
         }
      }
      
      private function §[!S§(param1:Event) : void
      {
         this.§4!4§.removeEventListener(Event.COMPLETE,this.§,M§);
         this.§4!4§.removeEventListener(Event.CANCEL,this.§[!S§);
         this.§#g§ = true;
         if(this.§'"0§ && this.§#g§)
         {
            this.initialize(this.§`7§);
         }
      }
      
      public function get §?!v§() : §6!,§
      {
         return this.§>!t§;
      }
      
      protected function initialize(param1:§];§) : void
      {
         this.§<"0§ = false;
         this.§+z§ = false;
         if(§6"6§.§4H§)
         {
            §6"6§.§4H§.speed = 1;
         }
         this.§1!-§ = new §^!Q§(this);
         this.§8G§ = this.§>!W§(param1.theme,this.§["#§.mBorderGround_B2 / §57§,this.§?!v§,this.§+=§.§ b§());
         this.§8G§.§ 5§(§5!U§.§7!A§());
         this.§]"?§ = this.initLevelObjectManager(param1);
         this.§3!Z§ = this.§>![§(param1);
         this.§5!p§ = this.§5M§(this.§>!=§,this.§>!t§);
         this.§+=§.init();
         this.§2!'§();
         this.§^!c§();
         this.mReadyToRun = true;
         if(this.§^!$§)
         {
            this.§^!$§.addEventListeners();
         }
      }
      
      protected function §^!c§() : void
      {
         if(this.§#c§)
         {
            this.§]!=§ = §&!T§.initialize(this.§#c§);
            this.§]!=§.speed = 1;
            this.§]!=§.play();
            this.get = -1000;
            this.§#c§ = null;
         }
      }
      
      public function §2!9§(param1:String) : void
      {
         this.§#c§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§]!=§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§]!=§)
         {
            if(param1)
            {
               this.§]!=§.speed = Math.min(this.§]!=§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§]!=§.speed = Math.max(this.§]!=§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§]!=§)
         {
            this.§]!=§.speed = 1;
         }
      }
      
      protected function initLevelObjectManager(param1:§];§) : §5b§
      {
         return new §5b§(this,param1,new Sprite());
      }
      
      protected function initLevelCamera(param1:§];§) : §"" §
      {
         return new §"" §(this,param1);
      }
      
      protected function §>!W§(param1:String, param2:Number, param3:§6!,§, param4:Number) : §8z§
      {
         return new §8z§(param1,param2,param3,param4);
      }
      
      protected function §>![§(param1:§];§) : §1!6§
      {
         return new §1!6§(this,param1,new Sprite());
      }
      
      protected function §5M§(param1:§><§, param2:§6!,§) : § !>§
      {
         return new § !>§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§];§ = this.§#"8§();
         var _loc4_:§8!e§;
         (_loc4_ = new §8!e§()).left = 0;
         _loc4_.top = -§"" §.SCREEN_HEIGHT_B2 / 10 * 8;
         _loc4_.bottom = _loc4_.top + §"" §.SCREEN_HEIGHT_B2;
         _loc4_.right = _loc4_.left + §"" §.SCREEN_WIDTH_B2;
         _loc4_.y = -13.929;
         _loc4_.x = §"" §.SCREEN_WIDTH_B2;
         _loc4_.id = §"" §.CAMERA_ID_SLINGSHOT;
         _loc3_.§&e§(_loc4_);
         var _loc5_:§8!e§;
         (_loc5_ = new §8!e§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §"" §.SCREEN_WIDTH_B2;
         _loc5_.bottom = _loc5_.top + §"" §.SCREEN_HEIGHT_B2;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §"" §.SCREEN_WIDTH_B2 / 2;
         _loc5_.id = §"" §.CAMERA_ID_CASTLE;
         _loc3_.§&e§(_loc5_);
         this.§^[§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§`!U§ != null)
         {
            _loc3_.theme = §`!U§;
         }
         this.init(_loc3_);
      }
      
      protected function §^[§(param1:§];§, param2:Boolean) : void
      {
         if(param2)
         {
            this.§`K§(param1);
         }
      }
      
      protected function §#"8§() : §];§
      {
         var _loc1_:§];§ = new §];§();
         _loc1_.§=!w§ = -12;
         return new §];§();
      }
      
      protected function §8A§() : Number
      {
         this.§6B§ ^= this.§6B§ << 21;
         this.§6B§ ^= this.§6B§ >>> 35;
         this.§6B§ ^= this.§6B§ << 4;
         return this.§6B§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §`K§(param1:§];§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§continue§ = null;
         this.§6B§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§8A§() * 5;
               (_loc5_ = new §continue§()).x = 30 + _loc3_ * 10 + this.§8A§() * 9;
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
                  _loc5_.angle = 45 - this.§8A§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§8A§() * 3 - _loc3_ * 8;
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
                  _loc5_.angle = this.§8A§() * 360;
               }
               param1.addObject(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      private function §8!g§() : void
      {
      }
      
      public function §2!'§() : void
      {
         if(§8z§.§+!w§)
         {
            this.§[!z§(this.§8G§.§;!d§,false);
         }
         this.§[!z§(this.§5!p§.§"W§(§ !>§.§9l§),false);
         this.§[!z§(this.§5!p§.§"W§(§ !>§.§?!T§),true);
         this.§[!z§(this.§5!p§.§"W§(§ !>§.§^!g§),true);
         this.§[!z§(this.§]"?§.§ ! §,true);
         this.§[!z§(this.§3!Z§.sprite,true);
         this.§[!z§(this.§5!p§.§"W§(§ !>§.§!!]§),true);
         this.§[!z§(this.§8G§.§1p§,false);
         if(§8z§.§+!w§)
         {
            this.§[!z§(this.§8G§.§`!e§,false);
         }
         this.§[!z§(this.§5!p§.§"W§(§ !>§.§^!t§),true);
      }
      
      private function §[!z§(param1:Sprite, param2:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(param1);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         param1 /= §5!U§.§=k§;
         param2 /= §5!U§.§=k§;
         _loc3_.x = (param1 / §"" §.§>!-§ + this.§+=§.§^!"§ - §"" §.§?!n§ / §"" §.§>!-§) * §57§;
         _loc3_.y = (param2 / §"" §.§>!-§ + this.§+=§.§5!=§ - §"" §.§3!?§ / §"" §.§>!-§) * §57§;
         return _loc3_;
      }
      
      public function §6!;§(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / §57§ + §"" §.§?!n§ / §"" §.§>!-§ - this.§+=§.§^!"§) * §"" §.§>!-§;
         _loc3_.y = (param2 / §57§ + §"" §.§3!?§ / §"" §.§>!-§ - this.§+=§.§5!=§) * §"" §.§>!-§;
         var _loc4_:Number = Math.max(§5!U§.§=k§,§5!U§.§#"1§);
         _loc3_.x *= _loc4_;
         _loc3_.y *= _loc4_;
         return _loc3_;
      }
      
      public function §"q§(param1:String, param2:Number, param3:Number) : void
      {
         this.§]"?§.addObject(param1,param2,param3);
      }
      
      public function §1!&§() : void
      {
         if(this.§8L§)
         {
            this.§8L§.visible = true;
            this.§8L§.alpha = 0;
         }
         this.§0G§ = 0;
      }
      
      public function §?!C§() : void
      {
         this.§,!7§ = new §>!Q§(§@!i§.§+!^§,§@!i§.§,S§);
      }
      
      public function §5f§() : void
      {
         this.§,!7§ = null;
      }
      
      public function clearLevel() : void
      {
         if(this.§8G§)
         {
            this.§8G§.dispose();
            this.§8G§ = null;
         }
         if(this.§]"?§)
         {
            this.§]"?§.dispose();
            this.§]"?§ = null;
            this.§9c§ = null;
         }
         if(this.§1!-§)
         {
            if(!this.§1!-§.§,$§)
            {
            }
            this.§1!-§.clear();
            this.§1!-§ = null;
         }
         if(this.§["#§)
         {
            this.§["#§.clear();
            this.§["#§ = null;
         }
         if(this.§3!Z§)
         {
            this.§3!Z§.dispose();
            this.§3!Z§ = null;
         }
         if(this.§+=§)
         {
            this.§+=§.clear();
            this.§+=§ = null;
         }
         if(this.§5!p§)
         {
            this.§5!p§.dispose();
            this.§5!p§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§6!§ = 0;
         this.§;;§ = 0;
         this.mReadyToRun = false;
         this.§ !a§ = false;
         this.§0G§ = §@!i§.§4A§;
         if(this.§`">§)
         {
            (this.§`">§ as §"=§).§+l§.x = 0;
            (this.§`">§ as §"=§).§+l§.y = 0;
         }
         if(this.§8L§)
         {
            this.§8L§.visible = false;
         }
         this.§]!=§ = null;
         this.§%G§ = null;
         if(this.§4!4§)
         {
            this.§4!4§.removeEventListener(Event.COMPLETE,this.§&O§);
            this.§4!4§.removeEventListener(Event.CANCEL,this.§<6§);
         }
         if(this.§0!v§)
         {
            this.§0!v§.removeEventListener(Event.COMPLETE,this.§,M§);
            this.§0!v§.removeEventListener(Event.CANCEL,this.§[!S§);
         }
         this.§!1§();
         if(§6"6§.§^F§)
         {
            §6"6§.§^F§.color = 0;
         }
         if(this.§^!$§)
         {
            this.§^!$§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver() : void
      {
      }
      
      public function §7!y§() : String
      {
         if(this.§%G§)
         {
            return this.§%G§.toString();
         }
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         if(!this.mReadyToRun || !§6"6§.§-!S§())
         {
            return 0;
         }
         if(this.§]!=§ && this.§]!=§.§9!8§)
         {
            return this.§@6§(param1,param2,param3);
         }
         return this.§%t§(param1,true,param2,param3);
      }
      
      protected function §%t§(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         if(this.§<"0§)
         {
            param1 *= 0.2;
            if(§6"6§.§4H§)
            {
               §6"6§.§4H§.speed = 0.2;
            }
         }
         var _loc5_:Number = 0;
         this.§;;§ += param1;
         if(param3)
         {
            this.§6!§ += param1;
            _loc5_ = this.§1!-§.§9!A§(this.§6!§);
            this.§3!Z§.update(param1,param4);
            this.§6!§ = _loc5_;
         }
         else
         {
            this.§]"?§.§'1§(param1);
            this.§6!§ = 0;
         }
         if(param2)
         {
            this.§"c§(param1,_loc5_);
         }
         return param1;
      }
      
      private function §@6§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc5_:Number = NaN;
         var _loc4_:Number = §^!Q§.§&a§ * 1000;
         if(this.§]!=§)
         {
            param1 *= this.§]!=§.speed;
            _loc5_ = this.§;;§ + param1;
            while(this.§;;§ + _loc4_ < _loc5_)
            {
               if(this.§;;§ + _loc4_ > this.get)
               {
                  this.§]!=§.step(this);
                  this.get += _loc4_;
               }
               this.§%t§(_loc4_,false,param2,param3);
            }
            if(_loc5_ > this.get + _loc4_)
            {
               this.§]!=§.step(this);
               this.get += _loc4_;
            }
            if(this.§;;§ < _loc5_)
            {
               this.§%t§(_loc5_ - this.§;;§,true,param2,param3);
            }
            return param1;
         }
         return this.§%t§(_loc4_,true,param2,param3);
      }
      
      private function §"c§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.§8G§.update(param1);
         this.§]"?§.§=R§(param1,param2);
         this.§[_§();
         if(this.§0G§ < §@!i§.§4A§)
         {
            this.§0G§ += param1;
            _loc3_ = §@!i§.§4A§ / 2;
            _loc4_ = (-Math.abs(this.§0G§ - _loc3_) + _loc3_) * (§@!i§.§'!e§ / _loc3_);
            if(this.§8L§)
            {
               this.§8L§.alpha = _loc4_;
            }
         }
         else if(this.§8L§)
         {
            this.§8L§.visible = false;
         }
         if(this.§,!7§)
         {
            if(!this.§,!7§.§#!E§(this.§+=§,param1))
            {
               this.§5f§();
            }
         }
         this.§+=§.updateCamera(param1);
         this.§1!-§.§[!o§();
         this.§5!p§.update(param1);
      }
      
      public function §;!p§(param1:Number) : void
      {
         this.objects.§'1§(param1 * 1000);
         this.objects.§'!_§(param1 * 1000);
         this.§#b§();
      }
      
      public function §[_§() : void
      {
         var _loc1_:§"!q§ = null;
         if(this.§;;§ > this.§=!q§ + 1000 / 30)
         {
            if(this.§,!B§ != null)
            {
               for each(_loc1_ in this.§,!B§)
               {
                  _loc1_.addTrail();
               }
            }
            this.§=!q§ = this.§;;§;
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§"!q§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.§]"?§.isPigsAlive(true))
            {
               _loc2_ = this.§]"?§.§ L§(true);
               _loc2_.§!!8§.mTryToScream = §"f§.§7X§;
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§]"?§.getPigCount());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            if(this.§]"?§.isPigsAlive(true))
            {
               _loc2_ = this.§]"?§.§ L§(true);
               _loc2_.§!!8§.mTryToBlink = §"f§.§,!l§;
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§]"?§.getPigCount());
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §=!i§.§+"-§;
         }
         §9!S§.addScore(param1,param2);
         this.§^!$§.addScore(param1);
         if(param3 && param1 > 0 && !this.§+z§)
         {
            this.§"!J§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §"!J§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §=!i§.§1!;§;
         }
         this.§5!p§.§-?§(§=!i§.§6R§,§ !>§.§^!t§,§=!i§.§%^§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §<Z§(param1:§"!q§) : void
      {
         if(this.§,!B§ == null)
         {
            this.§,!B§ = new Array();
         }
         this.§,!B§.push(param1);
      }
      
      public function §`r§() : void
      {
         this.§3!Z§.§`r§();
         this.§]"?§.§=w§();
         this.§+z§ = true;
      }
      
      public function §-3§(param1:§"!q§) : void
      {
         this.§5!p§.§7!F§(§ !>§.§9l§);
         if(this.§,!B§.indexOf(param1) >= 0)
         {
            this.§,!B§.splice(this.§,!B§.indexOf(param1),1);
         }
         if(this.§,!B§.length == 0)
         {
            this.§,!B§ = null;
         }
      }
      
      public function §^2§(param1:§'4§, param2:Number, param3:Number) : void
      {
         this.§9c§ = this.§]"?§.addObject(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
         var _loc4_:Number = param1.name.toUpperCase() == "BIRD_GREEN" ? Number(§1!6§.§ !i§) : Number(§1!6§.§%!c§);
         if(param1.§^H§ > 1)
         {
            this.§9c§.§&!n§(param1.§^H§);
            this.§9c§.§!!8§.§ P§();
         }
         if(param1.§&&§ != 0)
         {
            _loc4_ = param1.§&&§;
         }
         var _loc5_:Number = -_loc4_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc6_:Number = _loc4_ * param2 * Math.sin(param3 / (180 / Math.PI));
         this.§9c§.§^!6§(new b2Vec2(_loc5_,_loc6_),false,true);
         this.camera.§ A§(§"" §.§0!I§);
         if(this.§%G§)
         {
            this.§%G§.§^2§(this.§1!-§.§"!v§,param1.x,param1.y,param2,param3);
         }
      }
      
      public function activatePowerup() : void
      {
         this.§ !a§ = true;
      }
      
      private function §#b§() : void
      {
         if(!this.§ !a§)
         {
            return;
         }
         this.§ !a§ = false;
         if(this.activeObject is §`!k§ && !(this.activeObject as §`!k§).§=!3§)
         {
            if(this.activeObject.activateSpecialPower(this.§4!1§))
            {
               this.§%D§ = true;
            }
         }
         else
         {
            this.§]"?§.§3!K§();
         }
         if(this.§%G§)
         {
            this.§%G§.§;!>§(this.§1!-§.§"!v§);
         }
      }
      
      public function §1!S§() : void
      {
         this.§]"?§.§1!S§();
      }
      
      public function §4x§() : void
      {
         this.§]"?§.§@!N§();
      }
      
      public function § null§() : §];§
      {
         var _loc1_:§];§ = new §];§();
         _loc1_.mScoreGold = this.§`7§.mScoreGold;
         _loc1_.mScoreSilver = this.§`7§.mScoreSilver;
         this.§+=§.writeCameraInformation(_loc1_);
         this.§]"?§.writeObjectInformation(_loc1_);
         this.§3!Z§.writeSlingshotInformation(_loc1_);
         _loc1_.theme = this.§8G§.getCurrentThemeName();
         return _loc1_;
      }
      
      public function §49§() : int
      {
         return this.§`7§.mScoreSilver;
      }
      
      public function §,!L§() : int
      {
         return this.§`7§.mScoreGold;
      }
      
      public function §[+§(param1:int) : void
      {
         this.§`7§.mScoreSilver = param1;
      }
      
      public function §5-§(param1:int) : void
      {
         this.§`7§.mScoreGold = param1;
      }
      
      public function §<!T§(param1:Number, param2:Number) : void
      {
         if(this.§1S§)
         {
            this.§1S§.§"l§(param1,param2);
         }
         if(this.§+=§)
         {
            this.§+=§.updateCamera(0);
         }
      }
      
      public function get §8B§() : §];§
      {
         return this.§`7§;
      }
      
      public function get §4!1§() : §5b§
      {
         return this.§]"?§;
      }
      
      protected function get §=!F§() : §6"6§
      {
         return this.§3!e§;
      }
      
      public function get §#",§() : int
      {
         return §'i§;
      }
   }
}
