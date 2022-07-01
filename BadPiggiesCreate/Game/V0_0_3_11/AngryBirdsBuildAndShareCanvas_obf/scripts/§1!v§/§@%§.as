package §1!v§
{
   import § ""§.§%,§;
   import § ""§.§0"2§;
   import § ""§.§6!u§;
   import § ""§.§<"6§;
   import §'x§.§?z§;
   import §+%§.§+"%§;
   import §+%§.§+D§;
   import §+%§.§,"+§;
   import §+%§.§5!F§;
   import §+L§.b2Vec2;
   import §,!!§.§5!G§;
   import §,!!§.§>!]§;
   import §,k§.§8"1§;
   import §0P§.§!!l§;
   import §1!Y§.DisplayObject;
   import §1!Y§.Sprite;
   import §1"3§.§`"0§;
   import §2i§.§%!+§;
   import §4%§.§5P§;
   import §62§.§7!_§;
   import §6d§.§&`§;
   import §6d§.§5!0§;
   import §;X§.§ do§;
   import §[_§.§2!B§;
   import §[_§.§6G§;
   import §[_§.§]#§;
   import §[q§.§3!F§;
   import §]!!§.§"d§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §@%§
   {
      
      private static const §4!R§:int = 20;
      
      public static const §]H§:Number = §?z§.§ !q§;
      
      public static const §7>§:Number = §?z§.§%"2§;
      
      public static const §?k§:Number = 1 / 20;
      
      public static const §`1§:Number = §?z§.§%"2§ * §?k§;
      
      public static const §]!n§:Number = §]H§ * §?k§;
      
      public static const §+-§:§%!+§ = new §%!+§(13 - 3);
      
      public static var §,!]§:Number = 1;
      
      protected static var §8!C§:String = §5!F§.§ true§;
       
      
      protected var §%!F§:§6!u§;
      
      private var §;i§:§%,§;
      
      private var §9!0§:Array = null;
      
      protected var §&!,§:§8"1§;
      
      public var §'A§:§`+§;
      
      protected var §&!F§:§1V§;
      
      protected var §8!?§:§`"0§;
      
      protected var §#B§:§>"!§;
      
      protected var §5!w§:§5!G§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §"G§:Boolean = false;
      
      protected var §"!a§:Boolean = false;
      
      protected var §>!a§:Boolean = false;
      
      public var §;!l§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §%C§:Number;
      
      public var §8"§:Number;
      
      private var §,!0§:Number;
      
      public var §"!e§:§,"+§;
      
      public var § !"§:Boolean = false;
      
      private var §0^§:§9=§;
      
      private var §!q§:Sprite;
      
      protected var § G§:§5!F§;
      
      protected var §>Z§:§7!_§ = null;
      
      private var §2"'§:EventDispatcher;
      
      private var §6!'§:Array;
      
      private var §;<§:Array;
      
      protected var §1!a§:§!!l§;
      
      private var §[;§:§5P§;
      
      protected var §3!W§:§2!B§;
      
      protected var §,!A§:§6G§;
      
      private var § !+§:§]#§;
      
      private var §="!§:§]#§;
      
      private var §';§:§]#§;
      
      private var §&§:Stage;
      
      private var §7",§:§#!4§;
      
      protected var §1!2§:§3!F§;
      
      protected var §!s§:§3!F§;
      
      protected var §?8§:Number = 0.0;
      
      protected var §0R§:String;
      
      private var §5-§:Boolean;
      
      protected var §'!&§:Boolean;
      
      protected var §>!L§:uint = 1.417339207E9;
      
      public var §8!e§:Boolean;
      
      public function §@%§(param1:Stage)
      {
         this.§;<§ = [];
         super();
         this.§2"'§ = new EventDispatcher();
         this.§"!e§ = new §,"+§();
         this.§&§ = param1;
         this.§3!W§ = §2!B§.§if §;
         this.§,!A§ = this.initAnimationManager(this.§3!W§);
         this.§ !+§ = this.§6l§();
         this.§="!§ = this.§,F§();
         this.§';§ = this.§]?§();
         var _loc2_:Stage3D = param1.stage3Ds[0];
         this.§1!a§ = new §!!l§(§9=§,param1,new Rectangle(0,0,§?z§.§ !q§,§?z§.§%"2§),_loc2_);
         §?z§.§,`§.addEventListener(Event.ENTER_FRAME,this.§1!a§.onEnterFrame);
         _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§ i§,false,0,true);
         this.§1!a§.§`!q§ = false;
         this.§1!a§.enableErrorChecking = false;
         this.§1!a§.§#H§ = 2;
         this.§1!a§.§5"%§();
      }
      
      public static function §#j§(param1:§%,§, param2:§%,§) : Number
      {
         var _loc3_:Number = param1.§4!V§ - param2.§4!V§;
         var _loc4_:Number = param1.§<!#§ - param2.§<!#§;
         return §2m§(_loc3_,_loc4_);
      }
      
      public static function §2m§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         if(!this.§!q§ && this.§3-§)
         {
            this.§!q§ = this.§0^§.§3v§;
         }
         return this.§!q§;
      }
      
      public function get §3-§() : Sprite
      {
         if(!this.§0^§)
         {
            this.§0^§ = this.§1!a§.§1!>§ as §9=§;
            this.§0^§.§,!J§ = false;
         }
         return this.§0^§;
      }
      
      private function get §,!§() : DisplayObject
      {
         if(this.§3-§)
         {
            return (this.§3-§ as §9=§).§,!§;
         }
         return null;
      }
      
      public function get §%w§() : §6G§
      {
         return this.§,!A§;
      }
      
      public function get §while§() : §2!B§
      {
         return this.§3!W§;
      }
      
      public function get camera() : §`"0§
      {
         return this.§8!?§;
      }
      
      public function get objects() : §6!u§
      {
         return this.§%!F§;
      }
      
      public function get particles() : §5!G§
      {
         return this.§5!w§;
      }
      
      public function get background() : §8"1§
      {
         return this.§&!,§;
      }
      
      public function get slingshot() : §>"!§
      {
         return this.§#B§;
      }
      
      public function get activeObject() : §%,§
      {
         return this.§;i§;
      }
      
      public function get borders() : §1V§
      {
         return this.§&!F§;
      }
      
      public function get stage() : Stage
      {
         return this.§&§;
      }
      
      public function get §^!c§() : §]#§
      {
         return this.§';§;
      }
      
      protected function get §`!C§() : §]#§
      {
         return this.§ !+§;
      }
      
      public function set activeObject(param1:§%,§) : void
      {
         this.§;i§ = param1;
      }
      
      public function set §,Y§(param1:Boolean) : void
      {
         this.§'!&§ = param1;
      }
      
      public function clear() : void
      {
         if(this.§[;§)
         {
            this.§[;§.dispose();
         }
         if(this.§3!W§)
         {
            this.§3!W§.dispose();
         }
         if(this.§ !+§ && this.§ !+§.§while§)
         {
            this.§ !+§.§while§.dispose();
         }
         if(this.§';§ && this.§';§.§while§)
         {
            this.§';§.§while§.dispose();
         }
         if(this.§1!a§)
         {
            this.§1!a§.dispose();
         }
      }
      
      protected function §6l§() : §]#§
      {
         return null;
      }
      
      protected function §,F§() : §]#§
      {
         return null;
      }
      
      protected function §]?§() : §]#§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§2!B§) : §6G§
      {
         return new §6G§(param1);
      }
      
      public function §,L§(param1:Boolean) : void
      {
         if(§!!l§.§`7§)
         {
            if(param1)
            {
               §!!l§.§`7§.start();
            }
            else
            {
               §!!l§.§`7§.stop();
               §!!l§.§`7§.color = 0;
            }
         }
      }
      
      public function §3!'§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function §5!R§(param1:§7!_§) : void
      {
         if(this.§>Z§ != null)
         {
            this.§>Z§.removeEventListeners();
         }
         this.§>Z§ = param1;
         if(this.mReadyToRun)
         {
            this.§>Z§.addEventListeners();
         }
      }
      
      public function §]m§() : §3!F§
      {
         return this.§1!2§;
      }
      
      public function §;!J§(param1:§5P§, param2:Array, param3:Function) : void
      {
         this.§[;§ = param1;
         var _loc4_:int = this.§[;§.§0[§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§3!W§.§-3§(this.§[;§.§`P§(_loc5_));
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§2"'§.addEventListener(Event.INIT,param3);
            this.§;<§.push(param3);
         }
         if(this.§%N§(param2))
         {
            this.§>"$§();
         }
      }
      
      private function §%N§(param1:Array) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.§3!W§.§!9§())
         {
            _loc2_ = this.§3!W§.§+n§ / 1000;
            _loc3_ = this.§3!W§.§!!o§ / 1000;
            § do§.log("\n\nMain texture manager memory usage:\n   textures " + _loc2_ + " kilobytes\n   bitmaps " + _loc3_ + " kilobytes\n\n");
            this.§9$§(param1);
            return true;
         }
         this.§6!'§ = param1.concat();
         return false;
      }
      
      private function §9$§(param1:Array) : void
      {
         this.§,!A§.§9$§(param1);
      }
      
      private function § i§(param1:Event) : void
      {
         this.§3!W§.§4U§();
         if(this.§`!C§ && this.§`!C§.§while§)
         {
            this.§`!C§.§while§.§4U§();
         }
         if(this.§^!c§ && this.§^!c§.§while§)
         {
            this.§^!c§.§while§.§4U§();
         }
         if(this.§6!'§)
         {
            this.§%N§(this.§6!'§);
            this.§6!'§ = null;
            this.§>"$§();
         }
         if(this.§>Z§ != null && this.mReadyToRun)
         {
            this.§>Z§.addEventListeners();
         }
         if(this.§ !+§)
         {
            this.§ !+§.§!9§();
         }
         if(this.§';§)
         {
            if(this.§';§.§while§)
            {
               this.§';§.§while§.§4U§();
               this.§';§.§!9§();
            }
         }
      }
      
      private function §>"$§() : void
      {
         this.§2"'§.dispatchEvent(new Event(Event.INIT));
         this.§>"6§();
      }
      
      private function §>"6§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§;<§)
         {
            this.§2"'§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§;<§ = [];
      }
      
      public function init(param1:§5!F§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§&!F§ = new §1V§(this,param1);
         this.§8!?§ = this.initLevelCamera(param1);
         this.§%C§ = 0;
         this.§8"§ = 0;
         this.§,!0§ = 0;
         this.§5-§ = false;
         this.mReadyToRun = false;
         this.§"G§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         §8!C§ = param1.theme;
         this.§ G§ = param1;
         this.§"!a§ = this.§>J§(param1.theme);
         this.§>!a§ = this.§^!S§(param1.theme);
         if(this.§"!a§ && this.§>!a§)
         {
            this.initialize(param1);
         }
         else
         {
            this.§+!9§(param1.theme);
         }
         this.§&! §();
         §7!=§.init();
      }
      
      protected function §&! §() : void
      {
         this.§1!2§ = new §3!F§(§+"%§.§9!'§);
      }
      
      protected function §>J§(param1:String) : Boolean
      {
         if(this.§ !+§)
         {
            return false;
         }
         return true;
      }
      
      protected function §^!S§(param1:String) : Boolean
      {
         var _loc2_:§5!0§ = null;
         if(this.§="!§)
         {
            _loc2_ = §&`§.§2I§(param1);
            if(_loc2_)
            {
               if(_loc2_.§+!B§ && !this.§="!§.§"!5§(_loc2_.§+!B§))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function §+!9§(param1:String) : void
      {
         var _loc2_:§5!0§ = null;
         if(this.§ !+§ && !this.§>J§(param1))
         {
            this.§ !+§.removeEventListener(Event.COMPLETE,this.§#2§);
            this.§ !+§.removeEventListener(Event.CANCEL,this.§"5§);
            this.§ !+§.addEventListener(Event.COMPLETE,this.§#2§);
            this.§ !+§.addEventListener(Event.CANCEL,this.§"5§);
            this.§ !+§.§4!a§(param1);
         }
         if(this.§="!§ && !this.§^!S§(param1))
         {
            this.§="!§.removeEventListener(Event.COMPLETE,this.§96§);
            this.§="!§.removeEventListener(Event.CANCEL,this.§7M§);
            this.§="!§.addEventListener(Event.COMPLETE,this.§96§);
            this.§="!§.addEventListener(Event.CANCEL,this.§7M§);
            _loc2_ = §&`§.§2I§(param1);
            if(_loc2_)
            {
               this.§="!§.§4!a§(_loc2_.§+!B§);
            }
         }
      }
      
      private function §#2§(param1:Event) : void
      {
         this.§ !+§.removeEventListener(Event.COMPLETE,this.§#2§);
         this.§ !+§.removeEventListener(Event.CANCEL,this.§"5§);
         this.§"!a§ = true;
         if(this.§"!a§ && this.§>!a§)
         {
            this.initialize(this.§ G§);
         }
      }
      
      private function §"5§(param1:Event) : void
      {
         this.§ !+§.removeEventListener(Event.COMPLETE,this.§#2§);
         this.§ !+§.removeEventListener(Event.CANCEL,this.§"5§);
         this.§"G§ = true;
      }
      
      private function §96§(param1:Event) : void
      {
         this.§ !+§.removeEventListener(Event.COMPLETE,this.§96§);
         this.§ !+§.removeEventListener(Event.CANCEL,this.§7M§);
         this.§>!a§ = true;
         if(this.§"!a§ && this.§>!a§)
         {
            this.initialize(this.§ G§);
         }
      }
      
      private function §7M§(param1:Event) : void
      {
         this.§ !+§.removeEventListener(Event.COMPLETE,this.§96§);
         this.§ !+§.removeEventListener(Event.CANCEL,this.§7M§);
         this.§>!a§ = true;
         if(this.§"!a§ && this.§>!a§)
         {
            this.initialize(this.§ G§);
         }
      }
      
      public function get §4,§() : §2!B§
      {
         return this.§3!W§;
      }
      
      protected function initialize(param1:§5!F§) : void
      {
         this.§'!&§ = false;
         this.§8!e§ = false;
         if(§!!l§.§]<§)
         {
            §!!l§.§]<§.speed = 1;
         }
         this.§'A§ = new §`+§(this);
         this.§&!,§ = this.§>!w§(param1.theme,this.§&!F§.mBorderGround_B2 / §?k§,this.§4,§,this.§8!?§.§7!d§());
         this.§&!,§.§'8§(§?z§.§3R§());
         this.§%!F§ = this.initLevelObjectManager(param1);
         this.§#B§ = this.§7+§(param1);
         this.§5!w§ = this.§'V§(this.§,!A§,this.§3!W§);
         this.§8!?§.init();
         this.§<!B§();
         this.§try §();
         this.mReadyToRun = true;
         if(this.§>Z§)
         {
            this.§>Z§.addEventListeners();
         }
      }
      
      protected function §try §() : void
      {
         if(this.§0R§)
         {
            this.§!s§ = §3!F§.initialize(this.§0R§);
            this.§!s§.speed = 1;
            this.§!s§.play();
            this.§?8§ = -1000;
            this.§0R§ = null;
         }
      }
      
      public function §`q§(param1:String) : void
      {
         this.§0R§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§!s§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§!s§)
         {
            if(param1)
            {
               this.§!s§.speed = Math.min(this.§!s§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§!s§.speed = Math.max(this.§!s§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§!s§)
         {
            this.§!s§.speed = 1;
         }
      }
      
      protected function initLevelObjectManager(param1:§5!F§) : §6!u§
      {
         return new §6!u§(this,param1,new Sprite());
      }
      
      protected function initLevelCamera(param1:§5!F§) : §`"0§
      {
         return new §`"0§(this,param1);
      }
      
      protected function §>!w§(param1:String, param2:Number, param3:§2!B§, param4:Number) : §8"1§
      {
         return new §8"1§(param1,param2,param3,param4);
      }
      
      protected function §7+§(param1:§5!F§) : §>"!§
      {
         return new §>"!§(this,param1,new Sprite());
      }
      
      protected function §'V§(param1:§6G§, param2:§2!B§) : §5!G§
      {
         return new §5!G§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§5!F§ = this.§&Y§();
         var _loc4_:§+D§;
         (_loc4_ = new §+D§()).left = 0;
         _loc4_.top = -§`"0§.SCREEN_HEIGHT_B2 / 10 * 8;
         _loc4_.bottom = _loc4_.top + §`"0§.SCREEN_HEIGHT_B2;
         _loc4_.right = _loc4_.left + §`"0§.SCREEN_WIDTH_B2;
         _loc4_.y = -13.929;
         _loc4_.x = §`"0§.SCREEN_WIDTH_B2;
         _loc4_.id = §`"0§.CAMERA_ID_SLINGSHOT;
         _loc3_.§?!P§(_loc4_);
         var _loc5_:§+D§;
         (_loc5_ = new §+D§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §`"0§.SCREEN_WIDTH_B2;
         _loc5_.bottom = _loc5_.top + §`"0§.SCREEN_HEIGHT_B2;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §`"0§.SCREEN_WIDTH_B2 / 2;
         _loc5_.id = §`"0§.CAMERA_ID_CASTLE;
         _loc3_.§?!P§(_loc5_);
         this.§4f§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§8!C§ != null)
         {
            _loc3_.theme = §8!C§;
         }
         this.init(_loc3_);
      }
      
      protected function §4f§(param1:§5!F§, param2:Boolean) : void
      {
         if(param2)
         {
            this.§+]§(param1);
         }
      }
      
      protected function §&Y§() : §5!F§
      {
         var _loc1_:§5!F§ = new §5!F§();
         _loc1_.§!P§ = -12;
         return new §5!F§();
      }
      
      protected function dynamic() : Number
      {
         this.§>!L§ ^= this.§>!L§ << 21;
         this.§>!L§ ^= this.§>!L§ >>> 35;
         this.§>!L§ ^= this.§>!L§ << 4;
         return this.§>!L§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §+]§(param1:§5!F§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§"d§ = null;
         this.§>!L§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.dynamic() * 5;
               (_loc5_ = new §"d§()).x = 30 + _loc3_ * 10 + this.dynamic() * 9;
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
                  _loc5_.angle = 45 - this.dynamic() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.dynamic() * 3 - _loc3_ * 8;
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
                  _loc5_.angle = this.dynamic() * 360;
               }
               param1.addObject(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      private function §!"§() : void
      {
      }
      
      public function §<!B§() : void
      {
         if(§8"1§.§#!E§)
         {
            this.§]l§(this.§&!,§.§];§,false);
         }
         this.§]l§(this.§5!w§.§+9§(§5!G§.§]!x§),false);
         this.§]l§(this.§5!w§.§+9§(§5!G§.§8N§),true);
         this.§]l§(this.§5!w§.§+9§(§5!G§.§2r§),true);
         this.§]l§(this.§%!F§.§3z§,true);
         this.§]l§(this.§#B§.sprite,true);
         this.§]l§(this.§5!w§.§+9§(§5!G§.§5N§),true);
         this.§]l§(this.§&!,§.§>!E§,false);
         if(§8"1§.§#!E§)
         {
            this.§]l§(this.§&!,§.§?5§,false);
         }
         this.§]l§(this.§5!w§.§+9§(§5!G§.§,f§),true);
      }
      
      private function §]l§(param1:Sprite, param2:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(param1);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         param1 /= §?z§.§'!<§;
         param2 /= §?z§.§'!<§;
         _loc3_.x = (param1 / §`"0§.§;!G§ + this.§8!?§.§9!A§ - §`"0§.§+!N§ / §`"0§.§;!G§) * §?k§;
         _loc3_.y = (param2 / §`"0§.§;!G§ + this.§8!?§.§4!m§ - §`"0§.§,#§ / §`"0§.§;!G§) * §?k§;
         return _loc3_;
      }
      
      public function §for§(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / §?k§ + §`"0§.§+!N§ / §`"0§.§;!G§ - this.§8!?§.§9!A§) * §`"0§.§;!G§;
         _loc3_.y = (param2 / §?k§ + §`"0§.§,#§ / §`"0§.§;!G§ - this.§8!?§.§4!m§) * §`"0§.§;!G§;
         var _loc4_:Number = Math.max(§?z§.§'!<§,§?z§.§%!K§);
         _loc3_.x *= _loc4_;
         _loc3_.y *= _loc4_;
         return _loc3_;
      }
      
      public function §^!L§(param1:String, param2:Number, param3:Number) : void
      {
         this.§%!F§.addObject(param1,param2,param3);
      }
      
      public function §%G§() : void
      {
         if(this.§,!§)
         {
            this.§,!§.visible = true;
            this.§,!§.alpha = 0;
         }
         this.§;!l§ = 0;
      }
      
      public function §7C§() : void
      {
         this.§7",§ = new §#!4§(§0!9§.§-!V§,§0!9§.§-!m§);
      }
      
      public function §12§() : void
      {
         this.§7",§ = null;
      }
      
      public function clearLevel() : void
      {
         if(this.§&!,§)
         {
            this.§&!,§.dispose();
            this.§&!,§ = null;
         }
         if(this.§%!F§)
         {
            this.§%!F§.dispose();
            this.§%!F§ = null;
            this.§;i§ = null;
         }
         if(this.§'A§)
         {
            if(!this.§'A§.§?!9§)
            {
            }
            this.§'A§.clear();
            this.§'A§ = null;
         }
         if(this.§&!F§)
         {
            this.§&!F§.clear();
            this.§&!F§ = null;
         }
         if(this.§#B§)
         {
            this.§#B§.dispose();
            this.§#B§ = null;
         }
         if(this.§8!?§)
         {
            this.§8!?§.clear();
            this.§8!?§ = null;
         }
         if(this.§5!w§)
         {
            this.§5!w§.dispose();
            this.§5!w§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§%C§ = 0;
         this.§8"§ = 0;
         this.mReadyToRun = false;
         this.§5-§ = false;
         this.§;!l§ = §0!9§.§&!Q§;
         if(this.§3-§)
         {
            (this.§3-§ as §9=§).§=!p§.x = 0;
            (this.§3-§ as §9=§).§=!p§.y = 0;
         }
         if(this.§,!§)
         {
            this.§,!§.visible = false;
         }
         this.§!s§ = null;
         this.§1!2§ = null;
         if(this.§ !+§)
         {
            this.§ !+§.removeEventListener(Event.COMPLETE,this.§#2§);
            this.§ !+§.removeEventListener(Event.CANCEL,this.§"5§);
         }
         if(this.§="!§)
         {
            this.§="!§.removeEventListener(Event.COMPLETE,this.§96§);
            this.§="!§.removeEventListener(Event.CANCEL,this.§7M§);
         }
         this.§>"6§();
         if(§!!l§.§`7§)
         {
            §!!l§.§`7§.color = 0;
         }
         if(this.§>Z§)
         {
            this.§>Z§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver() : void
      {
      }
      
      public function §4B§() : String
      {
         if(this.§1!2§)
         {
            return this.§1!2§.toString();
         }
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         if(!this.mReadyToRun || !§!!l§.§2"9§())
         {
            return 0;
         }
         if(this.§!s§ && this.§!s§.§@!K§)
         {
            return this.§3!X§(param1,param2,param3);
         }
         return this.§%! §(param1,true,param2,param3);
      }
      
      protected function §%! §(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         if(this.§'!&§)
         {
            param1 *= 0.2;
            if(§!!l§.§]<§)
            {
               §!!l§.§]<§.speed = 0.2;
            }
         }
         var _loc5_:Number = 0;
         this.§8"§ += param1;
         if(param3)
         {
            this.§%C§ += param1;
            _loc5_ = this.§'A§.§2$§(this.§%C§);
            this.§#B§.update(param1,param4);
            this.§%C§ = _loc5_;
         }
         else
         {
            this.§%!F§.§ "#§(param1);
            this.§%C§ = 0;
         }
         if(param2)
         {
            this.§8!2§(param1,_loc5_);
         }
         return param1;
      }
      
      private function §3!X§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc5_:Number = NaN;
         var _loc4_:Number = §`+§.§0u§ * 1000;
         if(this.§!s§)
         {
            param1 *= this.§!s§.speed;
            _loc5_ = this.§8"§ + param1;
            while(this.§8"§ + _loc4_ < _loc5_)
            {
               if(this.§8"§ + _loc4_ > this.§?8§)
               {
                  this.§!s§.step(this);
                  this.§?8§ += _loc4_;
               }
               this.§%! §(_loc4_,false,param2,param3);
            }
            if(_loc5_ > this.§?8§ + _loc4_)
            {
               this.§!s§.step(this);
               this.§?8§ += _loc4_;
            }
            if(this.§8"§ < _loc5_)
            {
               this.§%! §(_loc5_ - this.§8"§,true,param2,param3);
            }
            return param1;
         }
         return this.§%! §(_loc4_,true,param2,param3);
      }
      
      private function §8!2§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.§&!,§.update(param1);
         this.§%!F§.§9Q§(param1,param2);
         this.§?;§();
         if(this.§;!l§ < §0!9§.§&!Q§)
         {
            this.§;!l§ += param1;
            _loc3_ = §0!9§.§&!Q§ / 2;
            _loc4_ = (-Math.abs(this.§;!l§ - _loc3_) + _loc3_) * (§0!9§.§&!a§ / _loc3_);
            if(this.§,!§)
            {
               this.§,!§.alpha = _loc4_;
            }
         }
         else if(this.§,!§)
         {
            this.§,!§.visible = false;
         }
         if(this.§7",§)
         {
            if(!this.§7",§.§25§(this.§8!?§,param1))
            {
               this.§12§();
            }
         }
         this.§8!?§.updateCamera(param1);
         this.§'A§.§;!8§();
         this.§5!w§.update(param1);
      }
      
      public function §,!o§(param1:Number) : void
      {
         this.objects.§ "#§(param1 * 1000);
         this.objects.§48§(param1 * 1000);
         this.§33§();
      }
      
      public function §?;§() : void
      {
         var _loc1_:§%,§ = null;
         if(this.§8"§ > this.§,!0§ + 1000 / 30)
         {
            if(this.§9!0§ != null)
            {
               for each(_loc1_ in this.§9!0§)
               {
                  _loc1_.addTrail();
               }
            }
            this.§,!0§ = this.§8"§;
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§%,§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.§%!F§.isPigsAlive(true))
            {
               _loc2_ = this.§%!F§.§!K§(true);
               _loc2_.§>!M§.mTryToScream = §<"6§.§3I§;
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§%!F§.getPigCount());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            if(this.§%!F§.isPigsAlive(true))
            {
               _loc2_ = this.§%!F§.§!K§(true);
               _loc2_.§>!M§.mTryToBlink = §<"6§.§+Q§;
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§%!F§.getPigCount());
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §>!]§.§+!l§;
         }
         §7!=§.addScore(param1,param2);
         this.§>Z§.addScore(param1);
         if(param3 && param1 > 0 && !this.§8!e§)
         {
            this.§]6§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §]6§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §>!]§.§=!a§;
         }
         this.§5!w§.§,D§(§>!]§.§9-§,§5!G§.§,f§,§>!]§.§!"5§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §[0§(param1:§%,§) : void
      {
         if(this.§9!0§ == null)
         {
            this.§9!0§ = new Array();
         }
         this.§9!0§.push(param1);
      }
      
      public function §%!j§() : void
      {
         this.§#B§.§%!j§();
         this.§%!F§.§&!3§();
         this.§8!e§ = true;
      }
      
      public function §]A§(param1:§%,§) : void
      {
         this.§5!w§.§+$§(§5!G§.§]!x§);
         if(this.§9!0§.indexOf(param1) >= 0)
         {
            this.§9!0§.splice(this.§9!0§.indexOf(param1),1);
         }
         if(this.§9!0§.length == 0)
         {
            this.§9!0§ = null;
         }
      }
      
      public function §-!%§(param1:§!,§, param2:Number, param3:Number) : void
      {
         this.§;i§ = this.§%!F§.addObject(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
         var _loc4_:Number = param1.name.toUpperCase() == "BIRD_GREEN" ? Number(§>"!§.§=d§) : Number(§>"!§.§;3§);
         if(param1.§]B§ > 1)
         {
            this.§;i§.§#!F§(param1.§]B§);
            this.§;i§.§>!M§.§-!5§();
         }
         if(param1.§'!P§ != 0)
         {
            _loc4_ = param1.§'!P§;
         }
         var _loc5_:Number = -_loc4_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc6_:Number = _loc4_ * param2 * Math.sin(param3 / (180 / Math.PI));
         this.§;i§.§""4§(new b2Vec2(_loc5_,_loc6_),false,true);
         this.camera.§[!H§(§`"0§.§`""§);
         if(this.§1!2§)
         {
            this.§1!2§.§-!%§(this.§'A§.§[V§,param1.x,param1.y,param2,param3);
         }
      }
      
      public function activatePowerup() : void
      {
         this.§5-§ = true;
      }
      
      private function §33§() : void
      {
         if(!this.§5-§)
         {
            return;
         }
         this.§5-§ = false;
         if(this.activeObject is §0"2§ && !(this.activeObject as §0"2§).§>!d§)
         {
            if(this.activeObject.activateSpecialPower(this.§>"9§))
            {
               this.§ !"§ = true;
            }
         }
         else
         {
            this.§%!F§.§=-§();
         }
         if(this.§1!2§)
         {
            this.§1!2§.§+"$§(this.§'A§.§[V§);
         }
      }
      
      public function §[!N§() : void
      {
         this.§%!F§.§[!N§();
      }
      
      public function §`!h§() : void
      {
         this.§%!F§.§>8§();
      }
      
      public function §0!;§() : §5!F§
      {
         var _loc1_:§5!F§ = new §5!F§();
         _loc1_.mScoreGold = this.§ G§.mScoreGold;
         _loc1_.mScoreSilver = this.§ G§.mScoreSilver;
         this.§8!?§.writeCameraInformation(_loc1_);
         this.§%!F§.writeObjectInformation(_loc1_);
         this.§#B§.writeSlingshotInformation(_loc1_);
         _loc1_.theme = this.§&!,§.getCurrentThemeName();
         return _loc1_;
      }
      
      public function §@!M§() : int
      {
         return this.§ G§.mScoreSilver;
      }
      
      public function §<!Q§() : int
      {
         return this.§ G§.mScoreGold;
      }
      
      public function §1!]§(param1:int) : void
      {
         this.§ G§.mScoreSilver = param1;
      }
      
      public function §9!w§(param1:int) : void
      {
         this.§ G§.mScoreGold = param1;
      }
      
      public function §-!x§(param1:Number, param2:Number) : void
      {
         if(this.§0^§)
         {
            this.§0^§.§;&§(param1,param2);
         }
         if(this.§8!?§)
         {
            this.§8!?§.updateCamera(0);
         }
      }
      
      public function get § !s§() : §5!F§
      {
         return this.§ G§;
      }
      
      public function get §>"9§() : §6!u§
      {
         return this.§%!F§;
      }
      
      protected function get §function§() : §!!l§
      {
         return this.§1!a§;
      }
      
      public function get §]'§() : int
      {
         return §4!R§;
      }
   }
}
