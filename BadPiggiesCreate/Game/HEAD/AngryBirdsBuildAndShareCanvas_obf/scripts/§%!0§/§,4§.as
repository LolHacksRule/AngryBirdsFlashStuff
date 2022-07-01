package §%!0§
{
   import §%!j§.§%K§;
   import §&!P§.§0;§;
   import §&!P§.§9`§;
   import §&!P§.§^!!§;
   import §&!P§.§``§;
   import §&;§.§4!@§;
   import §+!-§.DisplayObject;
   import §+!-§.Sprite;
   import §,!g§.§"!P§;
   import §,P§.§'_§;
   import §6]§.§,"0§;
   import §8s§.§=!d§;
   import §;"7§.§1!O§;
   import §;"7§.§5!O§;
   import §;"7§.§="<§;
   import §;T§.§0!3§;
   import §<!1§.§9!=§;
   import §<!a§.b2Vec2;
   import §<i§.§'!e§;
   import §<i§.§+!S§;
   import §<i§.§9!L§;
   import §<i§.§`!r§;
   import §[!P§.§"0§;
   import §]§.§7!K§;
   import §case§.§6!Q§;
   import §case§.§`!E§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import §switch§.§47§;
   import §switch§.§4G§;
   
   public class §,4§
   {
      
      private static const §]"1§:int = 20;
      
      public static const §!,§:Number = §'_§.§["3§;
      
      public static const §[G§:Number = §'_§.§7$§;
      
      public static const §,^§:Number = 1 / 20;
      
      public static const §1!1§:Number = §'_§.§7$§ * §,^§;
      
      public static const §^!n§:Number = §!,§ * §,^§;
      
      public static const §]O§:§9!=§ = new §9!=§(13 - 3);
      
      public static var §7!3§:Number = 1;
      
      protected static var § !8§:String = §'!e§.§>!=§;
       
      
      protected var §#!8§:§^!!§;
      
      private var §9!m§:§``§;
      
      private var §^![§:Array = null;
      
      protected var §]q§:§4!@§;
      
      public var §?=§:§5!e§;
      
      protected var native:§%";§;
      
      protected var §8!j§:§"!P§;
      
      protected var §7R§:§3"!§;
      
      protected var §-R§:§6!Q§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §'§:Boolean = false;
      
      protected var §"!M§:Boolean = false;
      
      protected var § !V§:Boolean = false;
      
      public var §!C§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §!o§:Number;
      
      public var §<I§:Number;
      
      private var §1R§:Number;
      
      public var §[!6§:§9!L§;
      
      public var §1!;§:Boolean = false;
      
      private var §[!<§:§3!g§;
      
      private var §"!i§:Sprite;
      
      protected var §]"§:§'!e§;
      
      protected var §1!A§:§7!K§ = null;
      
      private var §-H§:EventDispatcher;
      
      private var §;7§:Array;
      
      private var §&"3§:Array;
      
      protected var §,!h§:§%K§;
      
      private var §4e§:§=!d§;
      
      protected var §7k§:§="<§;
      
      protected var §#"@§:§5!O§;
      
      private var §=G§:§1!O§;
      
      private var §6!x§:§1!O§;
      
      private var §#'§:§1!O§;
      
      private var §0"§:Stage;
      
      private var §%"+§:§7;§;
      
      protected var §0P§:§0!3§;
      
      protected var §!!,§:§0!3§;
      
      protected var §,z§:Number = 0.0;
      
      protected var §[m§:String;
      
      private var §&W§:Boolean;
      
      protected var §[4§:Boolean;
      
      protected var §3!6§:uint = 1.417339207E9;
      
      public var §>k§:Boolean;
      
      public function §,4§(param1:Stage)
      {
         this.§&"3§ = [];
         super();
         this.§-H§ = new EventDispatcher();
         this.§[!6§ = new §9!L§();
         this.§0"§ = param1;
         this.§7k§ = §="<§.§[E§;
         this.§#"@§ = this.initAnimationManager(this.§7k§);
         this.§=G§ = this.§;!k§();
         this.§6!x§ = this.§"U§();
         this.§#'§ = this.§ l§();
         var _loc2_:Stage3D = param1.stage3Ds[0];
         this.§,!h§ = new §%K§(§3!g§,param1,new Rectangle(0,0,§'_§.§["3§,§'_§.§7$§),_loc2_);
         §'_§.§+1§.addEventListener(Event.ENTER_FRAME,this.§,!h§.onEnterFrame);
         _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§ !m§,false,0,true);
         this.§,!h§.§;r§ = false;
         this.§,!h§.enableErrorChecking = false;
         this.§,!h§.§>>§ = 2;
         this.§,!h§.§0!@§();
      }
      
      public static function §#F§(param1:§``§, param2:§``§) : Number
      {
         var _loc3_:Number = param1.§#n§ - param2.§#n§;
         var _loc4_:Number = param1.§?y§ - param2.§?y§;
         return §??§(_loc3_,_loc4_);
      }
      
      public static function §??§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         if(!this.§"!i§ && this.§>@§)
         {
            this.§"!i§ = this.§[!<§.§@>§;
         }
         return this.§"!i§;
      }
      
      public function get §>@§() : Sprite
      {
         if(!this.§[!<§)
         {
            this.§[!<§ = this.§,!h§.§'"6§ as §3!g§;
            this.§[!<§.§#b§ = false;
         }
         return this.§[!<§;
      }
      
      private function get §`V§() : DisplayObject
      {
         if(this.§>@§)
         {
            return (this.§>@§ as §3!g§).§`V§;
         }
         return null;
      }
      
      public function get §00§() : §5!O§
      {
         return this.§#"@§;
      }
      
      public function get §8=§() : §="<§
      {
         return this.§7k§;
      }
      
      public function get camera() : §"!P§
      {
         return this.§8!j§;
      }
      
      public function get objects() : §^!!§
      {
         return this.§#!8§;
      }
      
      public function get particles() : §6!Q§
      {
         return this.§-R§;
      }
      
      public function get background() : §4!@§
      {
         return this.§]q§;
      }
      
      public function get slingshot() : §3"!§
      {
         return this.§7R§;
      }
      
      public function get activeObject() : §``§
      {
         return this.§9!m§;
      }
      
      public function get borders() : §%";§
      {
         return this.native;
      }
      
      public function get stage() : Stage
      {
         return this.§0"§;
      }
      
      public function get §?i§() : §1!O§
      {
         return this.§#'§;
      }
      
      protected function get §^x§() : §1!O§
      {
         return this.§=G§;
      }
      
      public function set activeObject(param1:§``§) : void
      {
         this.§9!m§ = param1;
      }
      
      public function set §9!Q§(param1:Boolean) : void
      {
         this.§[4§ = param1;
      }
      
      public function clear() : void
      {
         if(this.§4e§)
         {
            this.§4e§.dispose();
         }
         if(this.§7k§)
         {
            this.§7k§.dispose();
         }
         if(this.§=G§ && this.§=G§.§8=§)
         {
            this.§=G§.§8=§.dispose();
         }
         if(this.§#'§ && this.§#'§.§8=§)
         {
            this.§#'§.§8=§.dispose();
         }
         if(this.§,!h§)
         {
            this.§,!h§.dispose();
         }
      }
      
      protected function §;!k§() : §1!O§
      {
         return null;
      }
      
      protected function §"U§() : §1!O§
      {
         return null;
      }
      
      protected function § l§() : §1!O§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§="<§) : §5!O§
      {
         return new §5!O§(param1);
      }
      
      public function §'"@§(param1:Boolean) : void
      {
         if(§%K§.§`9§)
         {
            if(param1)
            {
               §%K§.§`9§.start();
            }
            else
            {
               §%K§.§`9§.stop();
               §%K§.§`9§.color = 0;
            }
         }
      }
      
      public function §"!X§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function §1G§() : §7!K§
      {
         return this.§1!A§;
      }
      
      public function §^`§(param1:§7!K§) : void
      {
         if(this.§1!A§ != null)
         {
            this.§1!A§.removeEventListeners();
         }
         this.§1!A§ = param1;
         if(this.mReadyToRun)
         {
            this.§1!A§.addEventListeners();
         }
      }
      
      public function §%F§() : §0!3§
      {
         return this.§0P§;
      }
      
      public function §6h§(param1:§=!d§, param2:Array, param3:Function) : void
      {
         this.§4e§ = param1;
         var _loc4_:int = this.§4e§.§-"-§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§7k§.§[h§(this.§4e§.§@"=§(_loc5_));
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§-H§.addEventListener(Event.INIT,param3);
            this.§&"3§.push(param3);
         }
         if(this.§8`§(param2))
         {
            this.§@!u§();
         }
      }
      
      private function §8`§(param1:Array) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.§7k§.§8!u§())
         {
            _loc2_ = this.§7k§.§6!K§ / 1000;
            _loc3_ = this.§7k§.§!!v§ / 1000;
            §,"0§.log("\n\nMain texture manager memory usage:\n   textures " + _loc2_ + " kilobytes\n   bitmaps " + _loc3_ + " kilobytes\n\n");
            this.§?!3§(param1);
            return true;
         }
         this.§;7§ = param1.concat();
         return false;
      }
      
      private function §?!3§(param1:Array) : void
      {
         this.§#"@§.§?!3§(param1);
      }
      
      private function § !m§(param1:Event) : void
      {
         this.§7k§.§[=§();
         if(this.§^x§ && this.§^x§.§8=§)
         {
            this.§^x§.§8=§.§[=§();
         }
         if(this.§?i§ && this.§?i§.§8=§)
         {
            this.§?i§.§8=§.§[=§();
         }
         if(this.§;7§)
         {
            this.§8`§(this.§;7§);
            this.§;7§ = null;
            this.§@!u§();
         }
         if(this.§1!A§ != null && this.mReadyToRun)
         {
            this.§1!A§.addEventListeners();
         }
         if(this.§=G§)
         {
            this.§=G§.§8!u§();
         }
         if(this.§#'§)
         {
            if(this.§#'§.§8=§)
            {
               this.§#'§.§8=§.§[=§();
               this.§#'§.§8!u§();
            }
         }
      }
      
      private function §@!u§() : void
      {
         this.§-H§.dispatchEvent(new Event(Event.INIT));
         this.§!"2§();
      }
      
      private function §!"2§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§&"3§)
         {
            this.§-H§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§&"3§ = [];
      }
      
      public function init(param1:§'!e§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.native = new §%";§(this,param1);
         this.§8!j§ = this.initLevelCamera(param1);
         this.§!o§ = 0;
         this.§<I§ = 0;
         this.§1R§ = 0;
         this.§&W§ = false;
         this.mReadyToRun = false;
         this.§'§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         § !8§ = param1.theme;
         this.§]"§ = param1;
         this.§"!M§ = this.§'"#§(param1.theme);
         this.§ !V§ = this.§;!<§(param1.theme);
         if(this.§"!M§ && this.§ !V§)
         {
            this.initialize(param1);
         }
         else
         {
            this.§ Q§(param1.theme);
         }
         this.§&!G§();
         §3!s§.init();
      }
      
      protected function §&!G§() : void
      {
         this.§0P§ = new §0!3§(§`!r§.§0B§);
      }
      
      protected function §'"#§(param1:String) : Boolean
      {
         if(this.§=G§)
         {
            return false;
         }
         return true;
      }
      
      protected function §;!<§(param1:String) : Boolean
      {
         var _loc2_:§4G§ = null;
         if(this.§6!x§)
         {
            _loc2_ = §47§.§," §(param1);
            if(_loc2_)
            {
               if(_loc2_.§5!"§ && !this.§6!x§.§]!>§(_loc2_.§5!"§))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function § Q§(param1:String) : void
      {
         var _loc2_:§4G§ = null;
         if(this.§=G§ && !this.§'"#§(param1))
         {
            this.§=G§.removeEventListener(Event.COMPLETE,this.§>H§);
            this.§=G§.removeEventListener(Event.CANCEL,this.§=!t§);
            this.§=G§.addEventListener(Event.COMPLETE,this.§>H§);
            this.§=G§.addEventListener(Event.CANCEL,this.§=!t§);
            this.§=G§.§?2§(param1);
         }
         if(this.§6!x§ && !this.§;!<§(param1))
         {
            this.§6!x§.removeEventListener(Event.COMPLETE,this.§1!F§);
            this.§6!x§.removeEventListener(Event.CANCEL,this.§+e§);
            this.§6!x§.addEventListener(Event.COMPLETE,this.§1!F§);
            this.§6!x§.addEventListener(Event.CANCEL,this.§+e§);
            _loc2_ = §47§.§," §(param1);
            if(_loc2_)
            {
               this.§6!x§.§?2§(_loc2_.§5!"§);
            }
         }
      }
      
      private function §>H§(param1:Event) : void
      {
         this.§=G§.removeEventListener(Event.COMPLETE,this.§>H§);
         this.§=G§.removeEventListener(Event.CANCEL,this.§=!t§);
         this.§"!M§ = true;
         if(this.§"!M§ && this.§ !V§)
         {
            this.initialize(this.§]"§);
         }
      }
      
      private function §=!t§(param1:Event) : void
      {
         this.§=G§.removeEventListener(Event.COMPLETE,this.§>H§);
         this.§=G§.removeEventListener(Event.CANCEL,this.§=!t§);
         this.§'§ = true;
      }
      
      private function §1!F§(param1:Event) : void
      {
         this.§=G§.removeEventListener(Event.COMPLETE,this.§1!F§);
         this.§=G§.removeEventListener(Event.CANCEL,this.§+e§);
         this.§ !V§ = true;
         if(this.§"!M§ && this.§ !V§)
         {
            this.initialize(this.§]"§);
         }
      }
      
      private function §+e§(param1:Event) : void
      {
         this.§=G§.removeEventListener(Event.COMPLETE,this.§1!F§);
         this.§=G§.removeEventListener(Event.CANCEL,this.§+e§);
         this.§ !V§ = true;
         if(this.§"!M§ && this.§ !V§)
         {
            this.initialize(this.§]"§);
         }
      }
      
      public function get §=I§() : §="<§
      {
         return this.§7k§;
      }
      
      protected function initialize(param1:§'!e§) : void
      {
         this.§[4§ = false;
         this.§>k§ = false;
         if(§%K§.§^!d§)
         {
            §%K§.§^!d§.speed = 1;
         }
         this.§?=§ = new §5!e§(this);
         this.§]q§ = this.§-!5§(param1.theme,this.native.mBorderGround_B2 / §,^§,this.§=I§,this.§8!j§.§+C§());
         this.§]q§.§?R§(§'_§.§&R§());
         this.§#!8§ = this.initLevelObjectManager(param1);
         this.§7R§ = this.§?!1§(param1);
         this.§-R§ = this.§'!§(this.§#"@§,this.§7k§);
         this.§8!j§.init();
         this.§`S§();
         this.§5"4§();
         this.mReadyToRun = true;
         if(this.§1!A§)
         {
            this.§1!A§.addEventListeners();
         }
      }
      
      protected function §5"4§() : void
      {
         if(this.§[m§)
         {
            this.§!!,§ = §0!3§.initialize(this.§[m§);
            this.§!!,§.speed = 1;
            this.§!!,§.play();
            this.§,z§ = -1000;
            this.§[m§ = null;
         }
      }
      
      public function §4!;§(param1:String) : void
      {
         this.§[m§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§!!,§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§!!,§)
         {
            if(param1)
            {
               this.§!!,§.speed = Math.min(this.§!!,§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§!!,§.speed = Math.max(this.§!!,§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§!!,§)
         {
            this.§!!,§.speed = 1;
         }
      }
      
      protected function initLevelObjectManager(param1:§'!e§) : §^!!§
      {
         return new §^!!§(this,param1,new Sprite());
      }
      
      protected function initLevelCamera(param1:§'!e§) : §"!P§
      {
         return new §"!P§(this,param1);
      }
      
      protected function §-!5§(param1:String, param2:Number, param3:§="<§, param4:Number) : §4!@§
      {
         return new §4!@§(param1,param2,param3,param4);
      }
      
      protected function §?!1§(param1:§'!e§) : §3"!§
      {
         return new §3"!§(this,param1,new Sprite());
      }
      
      protected function §'!§(param1:§5!O§, param2:§="<§) : §6!Q§
      {
         return new §6!Q§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§'!e§ = this.§0_§();
         var _loc4_:§+!S§;
         (_loc4_ = new §+!S§()).left = 0;
         _loc4_.top = -§"!P§.SCREEN_HEIGHT_B2 / 10 * 8;
         _loc4_.bottom = _loc4_.top + §"!P§.SCREEN_HEIGHT_B2;
         _loc4_.right = _loc4_.left + §"!P§.SCREEN_WIDTH_B2;
         _loc4_.y = -13.929;
         _loc4_.x = §"!P§.SCREEN_WIDTH_B2;
         _loc4_.id = §"!P§.CAMERA_ID_SLINGSHOT;
         _loc3_.§ d§(_loc4_);
         var _loc5_:§+!S§;
         (_loc5_ = new §+!S§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §"!P§.SCREEN_WIDTH_B2;
         _loc5_.bottom = _loc5_.top + §"!P§.SCREEN_HEIGHT_B2;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §"!P§.SCREEN_WIDTH_B2 / 2;
         _loc5_.id = §"!P§.CAMERA_ID_CASTLE;
         _loc3_.§ d§(_loc5_);
         this.§^!a§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§ !8§ != null)
         {
            _loc3_.theme = § !8§;
         }
         this.init(_loc3_);
      }
      
      protected function §^!a§(param1:§'!e§, param2:Boolean) : void
      {
         if(param2)
         {
            this.§;!K§(param1);
         }
      }
      
      protected function §0_§() : §'!e§
      {
         var _loc1_:§'!e§ = new §'!e§();
         _loc1_.§finally§ = -12;
         return new §'!e§();
      }
      
      protected function §18§() : Number
      {
         this.§3!6§ ^= this.§3!6§ << 21;
         this.§3!6§ ^= this.§3!6§ >>> 35;
         this.§3!6§ ^= this.§3!6§ << 4;
         return this.§3!6§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §;!K§(param1:§'!e§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§"0§ = null;
         this.§3!6§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§18§() * 5;
               (_loc5_ = new §"0§()).x = 30 + _loc3_ * 10 + this.§18§() * 9;
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
                  _loc5_.angle = 45 - this.§18§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§18§() * 3 - _loc3_ * 8;
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
                  _loc5_.angle = this.§18§() * 360;
               }
               param1.addObject(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      private function §0!§() : void
      {
      }
      
      public function §`S§() : void
      {
         if(§4!@§.§-"+§)
         {
            this.§<",§(this.§]q§.§"!q§,false);
         }
         this.§<",§(this.§-R§.§#!D§(§6!Q§.§#6§),false);
         this.§<",§(this.§-R§.§#!D§(§6!Q§.§;"#§),true);
         this.§<",§(this.§-R§.§#!D§(§6!Q§.§!"%§),true);
         this.§<",§(this.§#!8§.§[!l§,true);
         this.§<",§(this.§7R§.sprite,true);
         this.§<",§(this.§-R§.§#!D§(§6!Q§.§+f§),true);
         this.§<",§(this.§]q§.§>,§,false);
         if(§4!@§.§-"+§)
         {
            this.§<",§(this.§]q§.§=h§,false);
         }
         this.§<",§(this.§-R§.§#!D§(§6!Q§.§2!A§),true);
      }
      
      protected function §<",§(param1:Sprite, param2:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(param1);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         param1 /= §'_§.§=!c§;
         param2 /= §'_§.§=!c§;
         _loc3_.x = (param1 / §"!P§.§#X§ + this.§8!j§.§ !2§ - §"!P§.§2'§ / §"!P§.§#X§) * §,^§;
         _loc3_.y = (param2 / §"!P§.§#X§ + this.§8!j§.§@!j§ - §"!P§.§0,§ / §"!P§.§#X§) * §,^§;
         return _loc3_;
      }
      
      public function §4!5§(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / §,^§ + §"!P§.§2'§ / §"!P§.§#X§ - this.§8!j§.§ !2§) * §"!P§.§#X§;
         _loc3_.y = (param2 / §,^§ + §"!P§.§0,§ / §"!P§.§#X§ - this.§8!j§.§@!j§) * §"!P§.§#X§;
         var _loc4_:Number = Math.max(§'_§.§=!c§,§'_§.§<e§);
         _loc3_.x *= _loc4_;
         _loc3_.y *= _loc4_;
         return _loc3_;
      }
      
      public function §=!U§(param1:String, param2:Number, param3:Number) : void
      {
         this.§#!8§.addObject(param1,param2,param3);
      }
      
      public function §;!u§() : void
      {
         if(this.§`V§)
         {
            this.§`V§.visible = true;
            this.§`V§.alpha = 0;
         }
         this.§!C§ = 0;
      }
      
      public function §[!3§() : void
      {
         this.§%"+§ = new §7;§(§,g§.§-!i§,§,g§.§+!O§);
      }
      
      public function §7q§() : void
      {
         this.§%"+§ = null;
      }
      
      public function clearLevel() : void
      {
         if(this.§]q§)
         {
            this.§]q§.dispose();
            this.§]q§ = null;
         }
         if(this.§#!8§)
         {
            this.§#!8§.dispose();
            this.§#!8§ = null;
            this.§9!m§ = null;
         }
         if(this.§?=§)
         {
            if(!this.§?=§.§4X§)
            {
            }
            this.§?=§.clear();
            this.§?=§ = null;
         }
         if(this.native)
         {
            this.native.clear();
            this.native = null;
         }
         if(this.§7R§)
         {
            this.§7R§.dispose();
            this.§7R§ = null;
         }
         if(this.§8!j§)
         {
            this.§8!j§.clear();
            this.§8!j§ = null;
         }
         if(this.§-R§)
         {
            this.§-R§.dispose();
            this.§-R§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§!o§ = 0;
         this.§<I§ = 0;
         this.mReadyToRun = false;
         this.§&W§ = false;
         this.§!C§ = §,g§.§8"=§;
         if(this.§>@§)
         {
            (this.§>@§ as §3!g§).§+h§.x = 0;
            (this.§>@§ as §3!g§).§+h§.y = 0;
         }
         if(this.§`V§)
         {
            this.§`V§.visible = false;
         }
         this.§!!,§ = null;
         this.§0P§ = null;
         if(this.§=G§)
         {
            this.§=G§.removeEventListener(Event.COMPLETE,this.§>H§);
            this.§=G§.removeEventListener(Event.CANCEL,this.§=!t§);
         }
         if(this.§6!x§)
         {
            this.§6!x§.removeEventListener(Event.COMPLETE,this.§1!F§);
            this.§6!x§.removeEventListener(Event.CANCEL,this.§+e§);
         }
         this.§!"2§();
         if(§%K§.§`9§)
         {
            §%K§.§`9§.color = 0;
         }
         if(this.§1!A§)
         {
            this.§1!A§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver() : void
      {
      }
      
      public function §#j§() : String
      {
         if(this.§0P§)
         {
            return this.§0P§.toString();
         }
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         if(!this.mReadyToRun || !§%K§.§,!>§())
         {
            return 0;
         }
         if(this.§!!,§ && this.§!!,§.§4C§)
         {
            return this.§]!8§(param1,param2,param3);
         }
         return this.§!n§(param1,true,param2,param3);
      }
      
      protected function §!n§(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         if(this.§[4§)
         {
            param1 *= 0.2;
            if(§%K§.§^!d§)
            {
               §%K§.§^!d§.speed = 0.2;
            }
         }
         var _loc5_:Number = 0;
         this.§<I§ += param1;
         if(param3)
         {
            this.§!o§ += param1;
            _loc5_ = this.§?=§.§7!V§(this.§!o§);
            this.§7R§.update(param1,param4);
            this.§!o§ = _loc5_;
         }
         else
         {
            this.§#!8§.§="3§(param1);
            this.§!o§ = 0;
         }
         if(param2)
         {
            this.§"!h§(param1,_loc5_);
         }
         return param1;
      }
      
      private function §]!8§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc5_:Number = NaN;
         var _loc4_:Number = §5!e§.§ !B§ * 1000;
         if(this.§!!,§)
         {
            param1 *= this.§!!,§.speed;
            _loc5_ = this.§<I§ + param1;
            while(this.§<I§ + _loc4_ < _loc5_)
            {
               if(this.§<I§ + _loc4_ > this.§,z§)
               {
                  this.§!!,§.step(this);
                  this.§,z§ += _loc4_;
               }
               this.§!n§(_loc4_,false,param2,param3);
            }
            if(_loc5_ > this.§,z§ + _loc4_)
            {
               this.§!!,§.step(this);
               this.§,z§ += _loc4_;
            }
            if(this.§<I§ < _loc5_)
            {
               this.§!n§(_loc5_ - this.§<I§,true,param2,param3);
            }
            return param1;
         }
         return this.§!n§(_loc4_,true,param2,param3);
      }
      
      private function §"!h§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.§]q§.update(param1);
         this.§#!8§.§0!j§(param1,param2);
         this.§=!i§();
         if(this.§!C§ < §,g§.§8"=§)
         {
            this.§!C§ += param1;
            _loc3_ = §,g§.§8"=§ / 2;
            _loc4_ = (-Math.abs(this.§!C§ - _loc3_) + _loc3_) * (§,g§.§4H§ / _loc3_);
            if(this.§`V§)
            {
               this.§`V§.alpha = _loc4_;
            }
         }
         else if(this.§`V§)
         {
            this.§`V§.visible = false;
         }
         if(this.§%"+§)
         {
            if(!this.§%"+§.§5!I§(this.§8!j§,param1))
            {
               this.§7q§();
            }
         }
         this.§8!j§.updateCamera(param1);
         this.§?=§.§#1§();
         this.§-R§.update(param1);
      }
      
      public function §7!a§(param1:Number) : void
      {
         this.objects.§="3§(param1 * 1000);
         this.objects.§#!z§(param1 * 1000);
         this.§<!Y§();
      }
      
      public function §=!i§() : void
      {
         var _loc1_:§``§ = null;
         if(this.§<I§ > this.§1R§ + 1000 / 30)
         {
            if(this.§^![§ != null)
            {
               for each(_loc1_ in this.§^![§)
               {
                  _loc1_.addTrail();
               }
            }
            this.§1R§ = this.§<I§;
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§``§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.§#!8§.isPigsAlive(true))
            {
               _loc2_ = this.§#!8§.§#"!§(true);
               if(_loc2_)
               {
                  _loc2_.§8C§.mTryToScream = §0;§.§2!_§;
                  this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§#!8§.getPigCount());
               }
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            if(this.§#!8§.isPigsAlive(true))
            {
               _loc2_ = this.§#!8§.§#"!§(true);
               if(_loc2_)
               {
                  _loc2_.§8C§.mTryToBlink = §0;§.§]!7§;
                  this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§#!8§.getPigCount());
               }
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §`!E§.§-4§;
         }
         §3!s§.addScore(param1,param2);
         this.§1!A§.addScore(param1);
         if(param3 && param1 > 0 && !this.§>k§)
         {
            this.§6D§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §6D§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §`!E§.§,"-§;
         }
         this.§-R§.§'p§(§`!E§.§5!B§,§6!Q§.§2!A§,§`!E§.§7!6§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §8!J§(param1:§``§) : void
      {
         if(this.§^![§ == null)
         {
            this.§^![§ = new Array();
         }
         this.§^![§.push(param1);
      }
      
      public function §7!_§() : void
      {
         this.§7R§.§7!_§();
         this.§#!8§.§4![§();
         this.§>k§ = true;
      }
      
      public function §32§(param1:§``§) : void
      {
         this.§-R§.§ "%§(§6!Q§.§#6§);
         if(this.§^![§.indexOf(param1) >= 0)
         {
            this.§^![§.splice(this.§^![§.indexOf(param1),1);
         }
         if(this.§^![§.length == 0)
         {
            this.§^![§ = null;
         }
      }
      
      public function §59§(param1:§%Q§, param2:Number, param3:Number) : void
      {
         this.§9!m§ = this.§#!8§.addObject(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
         var _loc4_:Number = param1.name.toUpperCase() == "BIRD_GREEN" ? Number(§3"!§.§&S§) : Number(§3"!§.§^X§);
         if(param1.§=v§ > 1)
         {
            this.§9!m§.§+!<§(param1.§=v§);
            this.§9!m§.§8C§.§@4§();
         }
         if(param1.§`#§ != 0)
         {
            _loc4_ = param1.§`#§;
         }
         var _loc5_:Number = -_loc4_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc6_:Number = _loc4_ * param2 * Math.sin(param3 / (180 / Math.PI));
         this.§9!m§.§;E§(new b2Vec2(_loc5_,_loc6_),false,true);
         this.camera.§8!;§(§"!P§.§-!"§);
         if(this.§0P§)
         {
            this.§0P§.§59§(this.§?=§.§4"'§,param1.x,param1.y,param2,param3);
         }
      }
      
      public function activatePowerup() : void
      {
         this.§&W§ = true;
      }
      
      private function §<!Y§() : void
      {
         if(!this.§&W§)
         {
            return;
         }
         this.§&W§ = false;
         if(this.activeObject is §9`§ && !(this.activeObject as §9`§).§+^§)
         {
            if(this.activeObject.activateSpecialPower(this.§0n§))
            {
               this.§1!;§ = true;
            }
         }
         else
         {
            this.§#!8§.§ !3§();
         }
         if(this.§0P§)
         {
            this.§0P§.§ Z§(this.§?=§.§4"'§);
         }
      }
      
      public function §7!E§() : void
      {
         this.§#!8§.§7!E§();
      }
      
      public function §@"%§() : void
      {
         this.§#!8§.§;e§();
      }
      
      public function §-!R§() : §'!e§
      {
         var _loc1_:§'!e§ = new §'!e§();
         _loc1_.mScoreGold = this.§]"§.mScoreGold;
         _loc1_.mScoreSilver = this.§]"§.mScoreSilver;
         this.§8!j§.writeCameraInformation(_loc1_);
         this.§#!8§.writeObjectInformation(_loc1_);
         this.§7R§.writeSlingshotInformation(_loc1_);
         _loc1_.theme = this.§]q§.getCurrentThemeName();
         return _loc1_;
      }
      
      public function §'!W§() : int
      {
         return this.§]"§.mScoreSilver;
      }
      
      public function §8!r§() : int
      {
         return this.§]"§.mScoreGold;
      }
      
      public function § !t§(param1:int) : void
      {
         this.§]"§.mScoreSilver = param1;
      }
      
      public function §<r§(param1:int) : void
      {
         this.§]"§.mScoreGold = param1;
      }
      
      public function §`a§(param1:Number, param2:Number) : void
      {
         if(this.§[!<§)
         {
            this.§[!<§.§,!n§(param1,param2);
         }
         if(this.§8!j§)
         {
            this.§8!j§.updateCamera(0);
         }
      }
      
      public function get §!!E§() : §'!e§
      {
         return this.§]"§;
      }
      
      public function get §0n§() : §^!!§
      {
         return this.§#!8§;
      }
      
      protected function get §0!^§() : §%K§
      {
         return this.§,!h§;
      }
      
      public function get §]!c§() : int
      {
         return §]"1§;
      }
   }
}
