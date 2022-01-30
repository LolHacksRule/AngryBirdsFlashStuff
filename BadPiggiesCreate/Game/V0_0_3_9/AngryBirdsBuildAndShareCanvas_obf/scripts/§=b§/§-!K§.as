package §=b§
{
   import §!!A§.§""5§;
   import §#""§.§^E§;
   import §%!<§.§,s§;
   import §-!G§.b2Vec2;
   import §-N§.§=!]§;
   import §1'§.§]"!§;
   import §3!S§.§%s§;
   import §6!&§.§!H§;
   import §6!&§.§0!b§;
   import §6!&§.§1!c§;
   import §6!&§.§2!O§;
   import §7q§.DisplayObject;
   import §7q§.Sprite;
   import §;!<§.§!!F§;
   import §;!<§.§7!f§;
   import §;!<§.§>!>§;
   import §;w§.§3"+§;
   import §;w§.§5!Y§;
   import §<!x§.§7u§;
   import §<!x§.§`f§;
   import §=!Y§.§,"&§;
   import §@!;§.§&F§;
   import §@!N§.§2i§;
   import §]"&§.§#'§;
   import §]r§.§+c§;
   import §]r§.§2"%§;
   import §]r§.§9!R§;
   import §]r§.§<!$§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §-!K§
   {
      
      private static const §;Z§:int = 20;
      
      public static const §"C§:Number = §%s§.§"<§;
      
      public static const §@!B§:Number = §%s§.§9%§;
      
      public static const §"!C§:Number = 1 / 20;
      
      public static const §7!X§:Number = §%s§.§9%§ * §"!C§;
      
      public static const §4!D§:Number = §"C§ * §"!C§;
      
      public static const §,j§:§""5§ = new §""5§(13 - 3);
      
      public static var §2R§:Number = 1;
      
      protected static var §2!u§:String = §0!b§.§30§;
       
      
      protected var §<B§:§2"%§;
      
      private var §]!j§:§9!R§;
      
      private var §<^§:Array = null;
      
      protected var §%"'§:§,"&§;
      
      public var §^J§:§3F§;
      
      protected var §^>§:§3!_§;
      
      protected var §9,§:§2i§;
      
      protected var §3"0§:§5?§;
      
      protected var §5!l§:§5!Y§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §-"$§:Boolean = false;
      
      protected var §,"2§:Boolean = false;
      
      protected var §&!k§:Boolean = false;
      
      public var §!!,§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §["&§:Number;
      
      public var §[W§:Number;
      
      private var §13§:Number;
      
      public var §8!E§:§!H§;
      
      public var §7!7§:Boolean = false;
      
      private var §[!#§:§<!`§;
      
      private var §?!j§:Sprite;
      
      protected var §^!Z§:§0!b§;
      
      protected var §,!4§:§#'§ = null;
      
      private var §4! §:EventDispatcher;
      
      private var §>>§:Array;
      
      private var §1o§:Array;
      
      protected var §%C§:§=!]§;
      
      private var §;!l§:§^E§;
      
      protected var §0<§:§7!f§;
      
      protected var §%L§:§!!F§;
      
      private var §9L§:§>!>§;
      
      private var §2c§:§>!>§;
      
      private var §3?§:§>!>§;
      
      private var §5e§:Stage;
      
      private var §4P§:§4!;§;
      
      protected var §!!P§:§,s§;
      
      protected var §0!`§:§,s§;
      
      protected var §+O§:Number = 0.0;
      
      protected var §]_§:String;
      
      private var §4!R§:Boolean;
      
      protected var §!k§:Boolean;
      
      protected var §,B§:uint = 1.417339207E9;
      
      public var §7!K§:Boolean;
      
      public function §-!K§(param1:Stage)
      {
         this.§1o§ = [];
         super();
         this.§4! § = new EventDispatcher();
         this.§8!E§ = new §!H§();
         this.§5e§ = param1;
         this.§0<§ = §7!f§.§'!o§;
         this.§%L§ = this.initAnimationManager(this.§0<§);
         this.§9L§ = this.§ !0§();
         this.§2c§ = this.§3!K§();
         this.§3?§ = this.§<!U§();
         var _loc2_:Stage3D = param1.stage3Ds[0];
         this.§%C§ = new §=!]§(§<!`§,param1,new Rectangle(0,0,§%s§.§"<§,§%s§.§9%§),_loc2_);
         §%s§.§8l§.addEventListener(Event.ENTER_FRAME,this.§%C§.onEnterFrame);
         _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§0V§,false,0,true);
         this.§%C§.§&!W§ = false;
         this.§%C§.enableErrorChecking = false;
         this.§%C§.§6!6§ = 2;
         this.§%C§.§5!r§();
      }
      
      public static function §9@§(param1:§9!R§, param2:§9!R§) : Number
      {
         var _loc3_:Number = param1.§=8§ - param2.§=8§;
         var _loc4_:Number = param1.§#k§ - param2.§#k§;
         return §`D§(_loc3_,_loc4_);
      }
      
      public static function §`D§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         if(!this.§?!j§ && this.§>"+§)
         {
            this.§?!j§ = this.§[!#§.§!n§;
         }
         return this.§?!j§;
      }
      
      public function get §>"+§() : Sprite
      {
         if(!this.§[!#§)
         {
            this.§[!#§ = this.§%C§.§>!_§ as §<!`§;
            this.§[!#§.§7!&§ = false;
         }
         return this.§[!#§;
      }
      
      private function get §]O§() : DisplayObject
      {
         if(this.§>"+§)
         {
            return (this.§>"+§ as §<!`§).§]O§;
         }
         return null;
      }
      
      public function get §"!i§() : §!!F§
      {
         return this.§%L§;
      }
      
      public function get §20§() : §7!f§
      {
         return this.§0<§;
      }
      
      public function get camera() : §2i§
      {
         return this.§9,§;
      }
      
      public function get objects() : §2"%§
      {
         return this.§<B§;
      }
      
      public function get particles() : §5!Y§
      {
         return this.§5!l§;
      }
      
      public function get background() : §,"&§
      {
         return this.§%"'§;
      }
      
      public function get slingshot() : §5?§
      {
         return this.§3"0§;
      }
      
      public function get activeObject() : §9!R§
      {
         return this.§]!j§;
      }
      
      public function get borders() : §3!_§
      {
         return this.§^>§;
      }
      
      public function get stage() : Stage
      {
         return this.§5e§;
      }
      
      public function get §?m§() : §>!>§
      {
         return this.§3?§;
      }
      
      protected function get §@;§() : §>!>§
      {
         return this.§9L§;
      }
      
      public function set activeObject(param1:§9!R§) : void
      {
         this.§]!j§ = param1;
      }
      
      public function set §1e§(param1:Boolean) : void
      {
         this.§!k§ = param1;
      }
      
      public function clear() : void
      {
         if(this.§;!l§)
         {
            this.§;!l§.dispose();
         }
         if(this.§0<§)
         {
            this.§0<§.dispose();
         }
         if(this.§9L§ && this.§9L§.§20§)
         {
            this.§9L§.§20§.dispose();
         }
         if(this.§3?§ && this.§3?§.§20§)
         {
            this.§3?§.§20§.dispose();
         }
         if(this.§%C§)
         {
            this.§%C§.dispose();
         }
      }
      
      protected function § !0§() : §>!>§
      {
         return null;
      }
      
      protected function §3!K§() : §>!>§
      {
         return null;
      }
      
      protected function §<!U§() : §>!>§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§7!f§) : §!!F§
      {
         return new §!!F§(param1);
      }
      
      public function §6M§(param1:Boolean) : void
      {
         if(§=!]§.§@§)
         {
            if(param1)
            {
               §=!]§.§@§.start();
            }
            else
            {
               §=!]§.§@§.stop();
               §=!]§.§@§.color = 0;
            }
         }
      }
      
      public function §,v§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function §4!-§(param1:§#'§) : void
      {
         if(this.§,!4§ != null)
         {
            this.§,!4§.removeEventListeners();
         }
         this.§,!4§ = param1;
         if(this.mReadyToRun)
         {
            this.§,!4§.addEventListeners();
         }
      }
      
      public function §7!R§() : §,s§
      {
         return this.§!!P§;
      }
      
      public function §[!l§(param1:§^E§, param2:Array, param3:Function) : void
      {
         this.§;!l§ = param1;
         var _loc4_:int = this.§;!l§.§<!F§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§0<§.§#!S§(this.§;!l§.§2!3§(_loc5_));
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§4! §.addEventListener(Event.INIT,param3);
            this.§1o§.push(param3);
         }
         if(this.§-#§(param2))
         {
            this.§]!?§();
         }
      }
      
      private function §-#§(param1:Array) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.§0<§.§]"#§())
         {
            _loc2_ = this.§0<§.§5!u§ / 1000;
            _loc3_ = this.§0<§.§;7§ / 1000;
            §&F§.log("\n\nMain texture manager memory usage:\n   textures " + _loc2_ + " kilobytes\n   bitmaps " + _loc3_ + " kilobytes\n\n");
            this.§2!Y§(param1);
            return true;
         }
         this.§>>§ = param1.concat();
         return false;
      }
      
      private function §2!Y§(param1:Array) : void
      {
         this.§%L§.§2!Y§(param1);
      }
      
      private function §0V§(param1:Event) : void
      {
         this.§0<§.§7!J§();
         if(this.§@;§ && this.§@;§.§20§)
         {
            this.§@;§.§20§.§7!J§();
         }
         if(this.§?m§ && this.§?m§.§20§)
         {
            this.§?m§.§20§.§7!J§();
         }
         if(this.§>>§)
         {
            this.§-#§(this.§>>§);
            this.§>>§ = null;
            this.§]!?§();
         }
         if(this.§,!4§ != null && this.mReadyToRun)
         {
            this.§,!4§.addEventListeners();
         }
         if(this.§9L§)
         {
            this.§9L§.§]"#§();
         }
         if(this.§3?§)
         {
            if(this.§3?§.§20§)
            {
               this.§3?§.§20§.§7!J§();
               this.§3?§.§]"#§();
            }
         }
      }
      
      private function §]!?§() : void
      {
         this.§4! §.dispatchEvent(new Event(Event.INIT));
         this.§=!_§();
      }
      
      private function §=!_§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§1o§)
         {
            this.§4! §.removeEventListener(Event.INIT,_loc1_);
         }
         this.§1o§ = [];
      }
      
      public function init(param1:§0!b§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§^>§ = new §3!_§(this,param1);
         this.§9,§ = this.initLevelCamera(param1);
         this.§["&§ = 0;
         this.§[W§ = 0;
         this.§13§ = 0;
         this.§4!R§ = false;
         this.mReadyToRun = false;
         this.§-"$§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         §2!u§ = param1.theme;
         this.§^!Z§ = param1;
         this.§,"2§ = this.§@d§(param1.theme);
         this.§&!k§ = this.§&"+§(param1.theme);
         if(this.§,"2§ && this.§&!k§)
         {
            this.initialize(param1);
         }
         else
         {
            this.§?!n§(param1.theme);
         }
         this.§ for§();
         §'=§.init();
      }
      
      protected function § for§() : void
      {
         this.§!!P§ = new §,s§(§1!c§.§'Z§);
      }
      
      protected function §@d§(param1:String) : Boolean
      {
         if(this.§9L§)
         {
            return false;
         }
         return true;
      }
      
      protected function §&"+§(param1:String) : Boolean
      {
         var _loc2_:§`f§ = null;
         if(this.§2c§)
         {
            _loc2_ = §7u§.§;"!§(param1);
            if(_loc2_)
            {
               if(_loc2_.§&!K§ && !this.§2c§.§2t§(_loc2_.§&!K§))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function §?!n§(param1:String) : void
      {
         var _loc2_:§`f§ = null;
         if(this.§9L§ && !this.§@d§(param1))
         {
            this.§9L§.removeEventListener(Event.COMPLETE,this.§<E§);
            this.§9L§.removeEventListener(Event.CANCEL,this.§[!_§);
            this.§9L§.addEventListener(Event.COMPLETE,this.§<E§);
            this.§9L§.addEventListener(Event.CANCEL,this.§[!_§);
            this.§9L§.§#"5§(param1);
         }
         if(this.§2c§ && !this.§&"+§(param1))
         {
            this.§2c§.removeEventListener(Event.COMPLETE,this.§""'§);
            this.§2c§.removeEventListener(Event.CANCEL,this.§ "4§);
            this.§2c§.addEventListener(Event.COMPLETE,this.§""'§);
            this.§2c§.addEventListener(Event.CANCEL,this.§ "4§);
            _loc2_ = §7u§.§;"!§(param1);
            if(_loc2_)
            {
               this.§2c§.§#"5§(_loc2_.§&!K§);
            }
         }
      }
      
      private function §<E§(param1:Event) : void
      {
         this.§9L§.removeEventListener(Event.COMPLETE,this.§<E§);
         this.§9L§.removeEventListener(Event.CANCEL,this.§[!_§);
         this.§,"2§ = true;
         if(this.§,"2§ && this.§&!k§)
         {
            this.initialize(this.§^!Z§);
         }
      }
      
      private function §[!_§(param1:Event) : void
      {
         this.§9L§.removeEventListener(Event.COMPLETE,this.§<E§);
         this.§9L§.removeEventListener(Event.CANCEL,this.§[!_§);
         this.§-"$§ = true;
      }
      
      private function §""'§(param1:Event) : void
      {
         this.§9L§.removeEventListener(Event.COMPLETE,this.§""'§);
         this.§9L§.removeEventListener(Event.CANCEL,this.§ "4§);
         this.§&!k§ = true;
         if(this.§,"2§ && this.§&!k§)
         {
            this.initialize(this.§^!Z§);
         }
      }
      
      private function § "4§(param1:Event) : void
      {
         this.§9L§.removeEventListener(Event.COMPLETE,this.§""'§);
         this.§9L§.removeEventListener(Event.CANCEL,this.§ "4§);
         this.§&!k§ = true;
         if(this.§,"2§ && this.§&!k§)
         {
            this.initialize(this.§^!Z§);
         }
      }
      
      public function get §07§() : §7!f§
      {
         return this.§0<§;
      }
      
      protected function initialize(param1:§0!b§) : void
      {
         this.§!k§ = false;
         this.§7!K§ = false;
         if(§=!]§.§@!,§)
         {
            §=!]§.§@!,§.speed = 1;
         }
         this.§^J§ = new §3F§(this);
         this.§%"'§ = this.§8"2§(param1.theme,this.§^>§.mBorderGround_B2 / §"!C§,this.§07§,this.§9,§.§+8§());
         this.§%"'§.§"l§(§%s§.§!!6§());
         this.§<B§ = this.initLevelObjectManager(param1);
         this.§3"0§ = this.§&!@§(param1);
         this.§5!l§ = this.§!!B§(this.§%L§,this.§0<§);
         this.§9,§.init();
         this.§7d§();
         this.§@r§();
         this.mReadyToRun = true;
         if(this.§,!4§)
         {
            this.§,!4§.addEventListeners();
         }
      }
      
      protected function §@r§() : void
      {
         if(this.§]_§)
         {
            this.§0!`§ = §,s§.initialize(this.§]_§);
            this.§0!`§.speed = 1;
            this.§0!`§.play();
            this.§+O§ = -1000;
            this.§]_§ = null;
         }
      }
      
      public function §0!X§(param1:String) : void
      {
         this.§]_§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§0!`§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§0!`§)
         {
            if(param1)
            {
               this.§0!`§.speed = Math.min(this.§0!`§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§0!`§.speed = Math.max(this.§0!`§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§0!`§)
         {
            this.§0!`§.speed = 1;
         }
      }
      
      protected function initLevelObjectManager(param1:§0!b§) : §2"%§
      {
         return new §2"%§(this,param1,new Sprite());
      }
      
      protected function initLevelCamera(param1:§0!b§) : §2i§
      {
         return new §2i§(this,param1);
      }
      
      protected function §8"2§(param1:String, param2:Number, param3:§7!f§, param4:Number) : §,"&§
      {
         return new §,"&§(param1,param2,param3,param4);
      }
      
      protected function §&!@§(param1:§0!b§) : §5?§
      {
         return new §5?§(this,param1,new Sprite());
      }
      
      protected function §!!B§(param1:§!!F§, param2:§7!f§) : §5!Y§
      {
         return new §5!Y§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§0!b§ = this.§3!A§();
         var _loc4_:§2!O§;
         (_loc4_ = new §2!O§()).left = 0;
         _loc4_.top = -§2i§.SCREEN_HEIGHT_B2 / 10 * 8;
         _loc4_.bottom = _loc4_.top + §2i§.SCREEN_HEIGHT_B2;
         _loc4_.right = _loc4_.left + §2i§.SCREEN_WIDTH_B2;
         _loc4_.y = -13.929;
         _loc4_.x = §2i§.SCREEN_WIDTH_B2;
         _loc4_.id = §2i§.CAMERA_ID_SLINGSHOT;
         _loc3_.§%5§(_loc4_);
         var _loc5_:§2!O§;
         (_loc5_ = new §2!O§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §2i§.SCREEN_WIDTH_B2;
         _loc5_.bottom = _loc5_.top + §2i§.SCREEN_HEIGHT_B2;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §2i§.SCREEN_WIDTH_B2 / 2;
         _loc5_.id = §2i§.CAMERA_ID_CASTLE;
         _loc3_.§%5§(_loc5_);
         this.§8n§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§2!u§ != null)
         {
            _loc3_.theme = §2!u§;
         }
         this.init(_loc3_);
      }
      
      protected function §8n§(param1:§0!b§, param2:Boolean) : void
      {
         if(param2)
         {
            this.§<f§(param1);
         }
      }
      
      protected function §3!A§() : §0!b§
      {
         var _loc1_:§0!b§ = new §0!b§();
         _loc1_.§,!E§ = -12;
         return new §0!b§();
      }
      
      protected function §,"'§() : Number
      {
         this.§,B§ ^= this.§,B§ << 21;
         this.§,B§ ^= this.§,B§ >>> 35;
         this.§,B§ ^= this.§,B§ << 4;
         return this.§,B§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §<f§(param1:§0!b§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§]"!§ = null;
         this.§,B§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§,"'§() * 5;
               (_loc5_ = new §]"!§()).x = 30 + _loc3_ * 10 + this.§,"'§() * 9;
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
                  _loc5_.angle = 45 - this.§,"'§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§,"'§() * 3 - _loc3_ * 8;
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
                  _loc5_.angle = this.§,"'§() * 360;
               }
               param1.addObject(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      private function §4!7§() : void
      {
      }
      
      public function §7d§() : void
      {
         if(§,"&§.§[!"§)
         {
            this.§+!7§(this.§%"'§.§&§,false);
         }
         this.§+!7§(this.§5!l§.§1!d§(§5!Y§.§4K§),false);
         this.§+!7§(this.§5!l§.§1!d§(§5!Y§.§`W§),true);
         this.§+!7§(this.§5!l§.§1!d§(§5!Y§.§3r§),true);
         this.§+!7§(this.§<B§.§6+§,true);
         this.§+!7§(this.§3"0§.sprite,true);
         this.§+!7§(this.§5!l§.§1!d§(§5!Y§.§%R§),true);
         this.§+!7§(this.§%"'§.§%M§,false);
         if(§,"&§.§[!"§)
         {
            this.§+!7§(this.§%"'§.§=e§,false);
         }
         this.§+!7§(this.§5!l§.§1!d§(§5!Y§.§1"0§),true);
      }
      
      private function §+!7§(param1:Sprite, param2:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(param1);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         param1 /= §%s§.§,!=§;
         param2 /= §%s§.§,!=§;
         _loc3_.x = (param1 / §2i§.§0Z§ + this.§9,§.§ Q§ - §2i§.§0c§ / §2i§.§0Z§) * §"!C§;
         _loc3_.y = (param2 / §2i§.§0Z§ + this.§9,§.§<!A§ - §2i§.§?K§ / §2i§.§0Z§) * §"!C§;
         return _loc3_;
      }
      
      public function §,w§(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / §"!C§ + §2i§.§0c§ / §2i§.§0Z§ - this.§9,§.§ Q§) * §2i§.§0Z§;
         _loc3_.y = (param2 / §"!C§ + §2i§.§?K§ / §2i§.§0Z§ - this.§9,§.§<!A§) * §2i§.§0Z§;
         var _loc4_:Number = Math.max(§%s§.§,!=§,§%s§.§-=§);
         _loc3_.x *= _loc4_;
         _loc3_.y *= _loc4_;
         return _loc3_;
      }
      
      public function §&d§(param1:String, param2:Number, param3:Number) : void
      {
         this.§<B§.addObject(param1,param2,param3);
      }
      
      public function §4!I§() : void
      {
         if(this.§]O§)
         {
            this.§]O§.visible = true;
            this.§]O§.alpha = 0;
         }
         this.§!!,§ = 0;
      }
      
      public function §-!k§() : void
      {
         this.§4P§ = new §4!;§(§0;§.§true §,§0;§.§ 6§);
      }
      
      public function §^D§() : void
      {
         this.§4P§ = null;
      }
      
      public function clearLevel() : void
      {
         if(this.§%"'§)
         {
            this.§%"'§.dispose();
            this.§%"'§ = null;
         }
         if(this.§<B§)
         {
            this.§<B§.dispose();
            this.§<B§ = null;
            this.§]!j§ = null;
         }
         if(this.§^J§)
         {
            if(!this.§^J§.§3"§)
            {
            }
            this.§^J§.clear();
            this.§^J§ = null;
         }
         if(this.§^>§)
         {
            this.§^>§.clear();
            this.§^>§ = null;
         }
         if(this.§3"0§)
         {
            this.§3"0§.dispose();
            this.§3"0§ = null;
         }
         if(this.§9,§)
         {
            this.§9,§.clear();
            this.§9,§ = null;
         }
         if(this.§5!l§)
         {
            this.§5!l§.dispose();
            this.§5!l§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§["&§ = 0;
         this.§[W§ = 0;
         this.mReadyToRun = false;
         this.§4!R§ = false;
         this.§!!,§ = §0;§.§"0§;
         if(this.§>"+§)
         {
            (this.§>"+§ as §<!`§).§]!P§.x = 0;
            (this.§>"+§ as §<!`§).§]!P§.y = 0;
         }
         if(this.§]O§)
         {
            this.§]O§.visible = false;
         }
         this.§0!`§ = null;
         this.§!!P§ = null;
         if(this.§9L§)
         {
            this.§9L§.removeEventListener(Event.COMPLETE,this.§<E§);
            this.§9L§.removeEventListener(Event.CANCEL,this.§[!_§);
         }
         if(this.§2c§)
         {
            this.§2c§.removeEventListener(Event.COMPLETE,this.§""'§);
            this.§2c§.removeEventListener(Event.CANCEL,this.§ "4§);
         }
         this.§=!_§();
         if(§=!]§.§@§)
         {
            §=!]§.§@§.color = 0;
         }
         if(this.§,!4§)
         {
            this.§,!4§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver() : void
      {
      }
      
      public function §6!n§() : String
      {
         if(this.§!!P§)
         {
            return this.§!!P§.toString();
         }
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         if(!this.mReadyToRun || !§=!]§.§'`§())
         {
            return 0;
         }
         if(this.§0!`§ && this.§0!`§.§[r§)
         {
            return this.§<H§(param1,param2,param3);
         }
         return this.§package§(param1,true,param2,param3);
      }
      
      protected function §package§(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         if(this.§!k§)
         {
            param1 *= 0.2;
            if(§=!]§.§@!,§)
            {
               §=!]§.§@!,§.speed = 0.2;
            }
         }
         var _loc5_:Number = 0;
         this.§[W§ += param1;
         if(param3)
         {
            this.§["&§ += param1;
            _loc5_ = this.§^J§.§42§(this.§["&§);
            this.§3"0§.update(param1,param4);
            this.§["&§ = _loc5_;
         }
         else
         {
            this.§<B§.§23§(param1);
            this.§["&§ = 0;
         }
         if(param2)
         {
            this.§;!`§(param1,_loc5_);
         }
         return param1;
      }
      
      private function §<H§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc5_:Number = NaN;
         var _loc4_:Number = §3F§.§60§ * 1000;
         if(this.§0!`§)
         {
            param1 *= this.§0!`§.speed;
            _loc5_ = this.§[W§ + param1;
            while(this.§[W§ + _loc4_ < _loc5_)
            {
               if(this.§[W§ + _loc4_ > this.§+O§)
               {
                  this.§0!`§.step(this);
                  this.§+O§ += _loc4_;
               }
               this.§package§(_loc4_,false,param2,param3);
            }
            if(_loc5_ > this.§+O§ + _loc4_)
            {
               this.§0!`§.step(this);
               this.§+O§ += _loc4_;
            }
            if(this.§[W§ < _loc5_)
            {
               this.§package§(_loc5_ - this.§[W§,true,param2,param3);
            }
            return param1;
         }
         return this.§package§(_loc4_,true,param2,param3);
      }
      
      private function §;!`§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.§%"'§.update(param1);
         this.§<B§.§0s§(param1,param2);
         this.§8#§();
         if(this.§!!,§ < §0;§.§"0§)
         {
            this.§!!,§ += param1;
            _loc3_ = §0;§.§"0§ / 2;
            _loc4_ = (-Math.abs(this.§!!,§ - _loc3_) + _loc3_) * (§0;§.§>!§ / _loc3_);
            if(this.§]O§)
            {
               this.§]O§.alpha = _loc4_;
            }
         }
         else if(this.§]O§)
         {
            this.§]O§.visible = false;
         }
         if(this.§4P§)
         {
            if(!this.§4P§.§>!9§(this.§9,§,param1))
            {
               this.§^D§();
            }
         }
         this.§9,§.updateCamera(param1);
         this.§^J§.§5"4§();
         this.§5!l§.update(param1);
      }
      
      public function §;^§(param1:Number) : void
      {
         this.objects.§23§(param1 * 1000);
         this.objects.§,!i§(param1 * 1000);
         this.§!!=§();
      }
      
      public function §8#§() : void
      {
         var _loc1_:§9!R§ = null;
         if(this.§[W§ > this.§13§ + 1000 / 30)
         {
            if(this.§<^§ != null)
            {
               for each(_loc1_ in this.§<^§)
               {
                  _loc1_.addTrail();
               }
            }
            this.§13§ = this.§[W§;
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§9!R§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.§<B§.isPigsAlive(true))
            {
               _loc2_ = this.§<B§.§ !i§(true);
               _loc2_.§2!7§.mTryToScream = §+c§.§]![§;
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§<B§.getPigCount());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            if(this.§<B§.isPigsAlive(true))
            {
               _loc2_ = this.§<B§.§ !i§(true);
               _loc2_.§2!7§.mTryToBlink = §+c§.§#!V§;
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§<B§.getPigCount());
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §3"+§.§extends§;
         }
         §'=§.addScore(param1,param2);
         this.§,!4§.addScore(param1);
         if(param3 && param1 > 0 && !this.§7!K§)
         {
            this.§-W§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §-W§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §3"+§.§`!3§;
         }
         this.§5!l§.§continue§(§3"+§.§4!V§,§5!Y§.§1"0§,§3"+§.§,!Z§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §;!o§(param1:§9!R§) : void
      {
         if(this.§<^§ == null)
         {
            this.§<^§ = new Array();
         }
         this.§<^§.push(param1);
      }
      
      public function §<7§() : void
      {
         this.§3"0§.§<7§();
         this.§<B§.§%"3§();
         this.§7!K§ = true;
      }
      
      public function §5!x§(param1:§9!R§) : void
      {
         this.§5!l§.§"O§(§5!Y§.§4K§);
         if(this.§<^§.indexOf(param1) >= 0)
         {
            this.§<^§.splice(this.§<^§.indexOf(param1),1);
         }
         if(this.§<^§.length == 0)
         {
            this.§<^§ = null;
         }
      }
      
      public function §<&§(param1:§8",§, param2:Number, param3:Number) : void
      {
         this.§]!j§ = this.§<B§.addObject(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
         var _loc4_:Number = param1.name.toUpperCase() == "BIRD_GREEN" ? Number(§5?§.§?!e§) : Number(§5?§.§4!k§);
         if(param1.§^+§ > 1)
         {
            this.§]!j§.§]i§(param1.§^+§);
            this.§]!j§.§2!7§.§]!I§();
         }
         if(param1.§=!w§ != 0)
         {
            _loc4_ = param1.§=!w§;
         }
         var _loc5_:Number = -_loc4_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc6_:Number = _loc4_ * param2 * Math.sin(param3 / (180 / Math.PI));
         this.§]!j§.§[!C§(new b2Vec2(_loc5_,_loc6_),false,true);
         this.camera.§+!,§(§2i§.§`E§);
         if(this.§!!P§)
         {
            this.§!!P§.§<&§(this.§^J§.§#E§,param1.x,param1.y,param2,param3);
         }
      }
      
      public function activatePowerup() : void
      {
         this.§4!R§ = true;
      }
      
      private function §!!=§() : void
      {
         if(!this.§4!R§)
         {
            return;
         }
         this.§4!R§ = false;
         if(this.activeObject is §<!$§ && !(this.activeObject as §<!$§).§!!K§)
         {
            if(this.activeObject.activateSpecialPower(this.§00§))
            {
               this.§7!7§ = true;
            }
         }
         else
         {
            this.§<B§.§1"2§();
         }
         if(this.§!!P§)
         {
            this.§!!P§.§1g§(this.§^J§.§#E§);
         }
      }
      
      public function §`!=§() : void
      {
         this.§<B§.§`!=§();
      }
      
      public function §"G§() : void
      {
         this.§<B§.§&L§();
      }
      
      public function §!4§() : §0!b§
      {
         var _loc1_:§0!b§ = new §0!b§();
         _loc1_.mScoreGold = this.§^!Z§.mScoreGold;
         _loc1_.mScoreSilver = this.§^!Z§.mScoreSilver;
         this.§9,§.writeCameraInformation(_loc1_);
         this.§<B§.writeObjectInformation(_loc1_);
         this.§3"0§.writeSlingshotInformation(_loc1_);
         _loc1_.theme = this.§%"'§.getCurrentThemeName();
         return _loc1_;
      }
      
      public function §5!]§() : int
      {
         return this.§^!Z§.mScoreSilver;
      }
      
      public function §97§() : int
      {
         return this.§^!Z§.mScoreGold;
      }
      
      public function §8!=§(param1:int) : void
      {
         this.§^!Z§.mScoreSilver = param1;
      }
      
      public function § null§(param1:int) : void
      {
         this.§^!Z§.mScoreGold = param1;
      }
      
      public function §<q§(param1:Number, param2:Number) : void
      {
         if(this.§[!#§)
         {
            this.§[!#§.§!" §(param1,param2);
         }
         if(this.§9,§)
         {
            this.§9,§.updateCamera(0);
         }
      }
      
      public function get §>'§() : §0!b§
      {
         return this.§^!Z§;
      }
      
      public function get §00§() : §2"%§
      {
         return this.§<B§;
      }
      
      protected function get §9!§() : §=!]§
      {
         return this.§%C§;
      }
      
      public function get §5s§() : int
      {
         return §;Z§;
      }
   }
}
