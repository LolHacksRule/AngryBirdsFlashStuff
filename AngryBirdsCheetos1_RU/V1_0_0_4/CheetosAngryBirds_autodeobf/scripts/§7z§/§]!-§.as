package §7z§
{
   import § T§.§"!2§;
   import § T§.§1!'§;
   import § T§.§1M§;
   import § T§.§4$§;
   import §!4§.§0m§;
   import §!4§.§^!_§;
   import §#!H§.§7V§;
   import §#!O§.§0P§;
   import §'q§.§,v§;
   import §+!U§.§]q§;
   import §-!_§.§+!A§;
   import §-!_§.§?!!§;
   import §1!A§.DisplayObject;
   import §1!A§.Sprite;
   import §5!K§.b2Vec2;
   import §7!0§.§`g§;
   import §8K§.§,!'§;
   import §8K§.§>g§;
   import §8K§.§package§;
   import §;!X§.§7`§;
   import §=q§.§+! §;
   import §=q§.§9c§;
   import §=q§.§<!,§;
   import §=q§.§?X§;
   import §]+§.§+?§;
   import §^!&§.§;C§;
   import §^3§.§6Y§;
   import §`M§.§'C§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §]!-§
   {
      
      private static const §+M§:int = 20;
      
      public static const §&!1§:Number = §7`§.§1=§;
      
      public static const §6!%§:Number = §7`§.§@!#§;
      
      public static const §>C§:Number = 1 / 20;
      
      public static const §?!O§:Number = §7`§.§@!#§ * §>C§;
      
      public static const §@=§:Number = §&!1§ * §>C§;
      
      public static const §[!7§:§6Y§ = new §6Y§(13 - 3);
      
      protected static var §<!>§:String = §?X§.§'%§;
       
      
      protected var §]c§:§1!'§;
      
      private var §1!D§:§"!2§;
      
      private var §3w§:Array = null;
      
      protected var §]%§:§,v§;
      
      public var mLevelEngine:§&2§;
      
      protected var §0]§:§1K§;
      
      protected var §%'§:§7V§;
      
      protected var §6!&§:§0!D§;
      
      protected var §else§:§0m§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §'t§:Boolean = false;
      
      protected var §]!?§:Boolean = false;
      
      protected var §3!#§:Boolean = false;
      
      public var §!o§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §<!7§:Number;
      
      public var §;!]§:Number;
      
      private var §,!4§:Number;
      
      public var §2!6§:§9c§;
      
      public var §>7§:Boolean = false;
      
      private var §[!F§:§]Z§;
      
      private var §,@§:Sprite;
      
      protected var §]!Y§:§?X§;
      
      protected var §[B§:§0P§ = null;
      
      private var §-7§:EventDispatcher;
      
      private var §-h§:Array;
      
      private var §#!E§:Array;
      
      protected var §'N§:§'C§;
      
      private var §0!7§:§`g§;
      
      protected var §2!_§:§>g§;
      
      protected var §5r§:§,!'§;
      
      private var §&0§:§package§;
      
      private var § §:§package§;
      
      private var §6!N§:§package§;
      
      private var §7!'§:Stage;
      
      private var §^!^§:§"3§;
      
      protected var §@^§:§+?§;
      
      protected var §!!F§:§+?§;
      
      protected var §9[§:Number = 0.0;
      
      protected var §[!I§:String;
      
      private var §?<§:Boolean;
      
      protected var §1!N§:Boolean;
      
      protected var §>!L§:uint = 1.417339207E9;
      
      public var §6!"§:Boolean;
      
      public function §]!-§(param1:Stage)
      {
         this.§#!E§ = [];
         super();
         this.§-7§ = new EventDispatcher();
         this.§2!6§ = new §9c§();
         this.§7!'§ = param1;
         this.§2!_§ = §>g§.§[P§;
         this.§5r§ = this.initAnimationManager(this.§2!_§);
         this.§&0§ = this.§ "§();
         this.§ § = this.§,x§();
         this.§6!N§ = this.§4,§();
         var _loc2_:Stage3D = param1.stage3Ds[0];
         this.§'N§ = new §'C§(§]Z§,param1,new Rectangle(0,0,§7`§.§1=§,§7`§.§@!#§),_loc2_);
         §7`§.§7!A§.addEventListener(Event.ENTER_FRAME,this.§'N§.§0!'§);
         _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§%X§,false,0,true);
         this.§'N§.§+!&§ = false;
         this.§'N§.enableErrorChecking = false;
         this.§'N§.§>G§ = 2;
         this.§'N§.§=H§();
      }
      
      public static function §&6§(param1:§"!2§, param2:§"!2§) : Number
      {
         var _loc3_:Number = param1.§!!3§ - param2.§!!3§;
         var _loc4_:Number = param1.§6D§ - param2.§6D§;
         return §2J§(_loc3_,_loc4_);
      }
      
      public static function §2J§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         if(!this.§,@§ && this.§!!6§)
         {
            this.§,@§ = this.§[!F§.§^!5§;
         }
         return this.§,@§;
      }
      
      public function get §!!6§() : Sprite
      {
         if(!this.§[!F§)
         {
            this.§[!F§ = this.§'N§.§"!T§ as §]Z§;
            this.§[!F§.§6R§ = false;
         }
         return this.§[!F§;
      }
      
      private function get §,!#§() : DisplayObject
      {
         if(this.§!!6§)
         {
            return (this.§!!6§ as §]Z§).§,!#§;
         }
         return null;
      }
      
      public function get §]]§() : §,!'§
      {
         return this.§5r§;
      }
      
      public function get §^!"§() : §>g§
      {
         return this.§2!_§;
      }
      
      public function get camera() : §7V§
      {
         return this.§%'§;
      }
      
      public function get objects() : §1!'§
      {
         return this.§]c§;
      }
      
      public function get particles() : §0m§
      {
         return this.§else§;
      }
      
      public function get background() : §,v§
      {
         return this.§]%§;
      }
      
      public function get slingshot() : §0!D§
      {
         return this.§6!&§;
      }
      
      public function get activeObject() : §"!2§
      {
         return this.§1!D§;
      }
      
      public function get §7Y§() : §1K§
      {
         return this.§0]§;
      }
      
      public function get stage() : Stage
      {
         return this.§7!'§;
      }
      
      public function get §1!§() : §package§
      {
         return this.§6!N§;
      }
      
      protected function get §?!1§() : §package§
      {
         return this.§&0§;
      }
      
      public function set activeObject(param1:§"!2§) : void
      {
         this.§1!D§ = param1;
      }
      
      public function set §`;§(param1:Boolean) : void
      {
         this.§1!N§ = param1;
      }
      
      public function clear() : void
      {
         if(this.§0!7§)
         {
            this.§0!7§.dispose();
         }
         if(this.§2!_§)
         {
            this.§2!_§.dispose();
         }
         if(this.§&0§ && this.§&0§.§^!"§)
         {
            this.§&0§.§^!"§.dispose();
         }
         if(this.§6!N§ && this.§6!N§.§^!"§)
         {
            this.§6!N§.§^!"§.dispose();
         }
         if(this.§'N§)
         {
            this.§'N§.dispose();
         }
      }
      
      protected function § "§() : §package§
      {
         return null;
      }
      
      protected function §,x§() : §package§
      {
         return null;
      }
      
      protected function §4,§() : §package§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§>g§) : §,!'§
      {
         return new §,!'§(param1);
      }
      
      public function §8!-§(param1:Boolean) : void
      {
         if(§'C§.§3b§)
         {
            if(param1)
            {
               §'C§.§3b§.start();
            }
            else
            {
               §'C§.§3b§.stop();
               §'C§.§3b§.color = 0;
            }
         }
      }
      
      public function §5[§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function §9Z§(param1:§0P§) : void
      {
         if(this.§[B§ != null)
         {
            this.§[B§.removeEventListeners();
         }
         this.§[B§ = param1;
         if(this.mReadyToRun)
         {
            this.§[B§.addEventListeners();
         }
      }
      
      public function §54§() : §+?§
      {
         return this.§@^§;
      }
      
      public function §0o§(param1:§`g§, param2:Array, param3:Function) : void
      {
         this.§0!7§ = param1;
         var _loc4_:int = this.§0!7§.§&F§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§2!_§.§[!>§(this.§0!7§.§8!W§(_loc5_));
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§-7§.addEventListener(Event.INIT,param3);
            this.§#!E§.push(param3);
         }
         if(this.§0b§(param2))
         {
            this.§`Y§();
         }
      }
      
      private function §0b§(param1:Array) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.§2!_§.§#+§())
         {
            _loc2_ = this.§2!_§.§3l§ / 1000;
            _loc3_ = this.§2!_§.§6!O§ / 1000;
            §;C§.log("\n\nMain texture manager memory usage:\n   textures " + _loc2_ + " kilobytes\n   bitmaps " + _loc3_ + " kilobytes\n\n");
            this.initializeAnimations(param1);
            return true;
         }
         this.§-h§ = param1.concat();
         return false;
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         this.§5r§.initializeAnimations(param1);
      }
      
      private function §%X§(param1:Event) : void
      {
         this.§2!_§.§`1§();
         if(this.§?!1§ && this.§?!1§.§^!"§)
         {
            this.§?!1§.§^!"§.§`1§();
         }
         if(this.§1!§ && this.§1!§.§^!"§)
         {
            this.§1!§.§^!"§.§`1§();
         }
         if(this.§-h§)
         {
            this.§0b§(this.§-h§);
            this.§-h§ = null;
            this.§`Y§();
         }
         if(this.§[B§ != null && this.mReadyToRun)
         {
            this.§[B§.addEventListeners();
         }
         if(this.§&0§)
         {
            this.§&0§.§#+§();
         }
         if(this.§6!N§)
         {
            if(this.§6!N§.§^!"§)
            {
               this.§6!N§.§^!"§.§`1§();
               this.§6!N§.§#+§();
            }
         }
      }
      
      private function §`Y§() : void
      {
         this.§-7§.dispatchEvent(new Event(Event.INIT));
         this.§,^§();
      }
      
      private function §,^§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§#!E§)
         {
            this.§-7§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§#!E§ = [];
      }
      
      public function init(param1:§?X§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§0]§ = new §1K§(this,param1);
         this.§%'§ = this.§05§(param1);
         this.§<!7§ = 0;
         this.§;!]§ = 0;
         this.§,!4§ = 0;
         this.§?<§ = false;
         this.mReadyToRun = false;
         this.§'t§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         §<!>§ = param1.theme;
         this.§]!Y§ = param1;
         this.§]!?§ = this.§!!%§(param1.theme);
         this.§3!#§ = this.§#G§(param1.theme);
         if(this.§]!?§ && this.§3!#§)
         {
            this.§7x§(param1);
         }
         else
         {
            this.§2!X§(param1.theme);
         }
         this.initReplay();
         §3a§.init();
      }
      
      protected function initReplay() : void
      {
         this.§@^§ = new §+?§(§<!,§.§1D§);
      }
      
      protected function §!!%§(param1:String) : Boolean
      {
         if(this.§&0§)
         {
            return false;
         }
         return true;
      }
      
      protected function §#G§(param1:String) : Boolean
      {
         var _loc2_:§+!A§ = null;
         if(this.§ §)
         {
            _loc2_ = §?!!§.§2!U§(param1);
            if(_loc2_)
            {
               if(_loc2_.§31§ && !this.§ §.§3"§(_loc2_.§31§))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function §2!X§(param1:String) : void
      {
         var _loc2_:§+!A§ = null;
         if(this.§&0§ && !this.§!!%§(param1))
         {
            this.§&0§.removeEventListener(Event.COMPLETE,this.§6'§);
            this.§&0§.removeEventListener(Event.CANCEL,this.§!r§);
            this.§&0§.addEventListener(Event.COMPLETE,this.§6'§);
            this.§&0§.addEventListener(Event.CANCEL,this.§!r§);
            this.§&0§.§;B§(param1);
         }
         if(this.§ § && !this.§#G§(param1))
         {
            this.§ §.removeEventListener(Event.COMPLETE,this.§"!&§);
            this.§ §.removeEventListener(Event.CANCEL,this.§^!R§);
            this.§ §.addEventListener(Event.COMPLETE,this.§"!&§);
            this.§ §.addEventListener(Event.CANCEL,this.§^!R§);
            _loc2_ = §?!!§.§2!U§(param1);
            if(_loc2_)
            {
               this.§ §.§;B§(_loc2_.§31§);
            }
         }
      }
      
      private function §6'§(param1:Event) : void
      {
         this.§&0§.removeEventListener(Event.COMPLETE,this.§6'§);
         this.§&0§.removeEventListener(Event.CANCEL,this.§!r§);
         this.§]!?§ = true;
         if(this.§]!?§ && this.§3!#§)
         {
            this.§7x§(this.§]!Y§);
         }
      }
      
      private function §!r§(param1:Event) : void
      {
         this.§&0§.removeEventListener(Event.COMPLETE,this.§6'§);
         this.§&0§.removeEventListener(Event.CANCEL,this.§!r§);
         this.§'t§ = true;
      }
      
      private function §"!&§(param1:Event) : void
      {
         this.§&0§.removeEventListener(Event.COMPLETE,this.§"!&§);
         this.§&0§.removeEventListener(Event.CANCEL,this.§^!R§);
         this.§3!#§ = true;
         if(this.§]!?§ && this.§3!#§)
         {
            this.§7x§(this.§]!Y§);
         }
      }
      
      private function §^!R§(param1:Event) : void
      {
         this.§&0§.removeEventListener(Event.COMPLETE,this.§"!&§);
         this.§&0§.removeEventListener(Event.CANCEL,this.§^!R§);
         this.§3!#§ = true;
         if(this.§]!?§ && this.§3!#§)
         {
            this.§7x§(this.§]!Y§);
         }
      }
      
      public function get §#!P§() : §>g§
      {
         return this.§2!_§;
      }
      
      protected function §7x§(param1:§?X§) : void
      {
         this.§1!N§ = false;
         this.§6!"§ = false;
         if(§'C§.§&=§)
         {
            §'C§.§&=§.speed = 1;
         }
         this.mLevelEngine = new §&2§(this);
         this.§]%§ = this.§>!6§(param1.theme,this.§0]§.§-q§ / §>C§,this.§#!P§,this.§%'§.§ case§());
         this.§]%§.§0!&§(§7`§.§+x§());
         this.§]c§ = this.initLevelObjectManager(param1);
         this.§6!&§ = this.initLevelSlingshot(param1);
         this.§else§ = this.§[d§(this.§5r§,this.§2!_§);
         this.§%'§.init();
         this.§"`§();
         this.loadPreviousReplayData();
         this.mReadyToRun = true;
         if(this.§[B§)
         {
            this.§[B§.addEventListeners();
         }
      }
      
      protected function loadPreviousReplayData() : void
      {
         if(this.§[!I§)
         {
            this.§!!F§ = §+?§.§7x§(this.§[!I§);
            this.§!!F§.speed = 1;
            this.§!!F§.play();
            this.§9[§ = -1000;
            this.§[!I§ = null;
         }
      }
      
      public function § =§(param1:String) : void
      {
         this.§[!I§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§!!F§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§!!F§)
         {
            if(param1)
            {
               this.§!!F§.speed = Math.min(this.§!!F§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§!!F§.speed = Math.max(this.§!!F§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§!!F§)
         {
            this.§!!F§.speed = 1;
         }
      }
      
      protected function initLevelObjectManager(param1:§?X§) : §1!'§
      {
         return new §1!'§(this,param1,new Sprite());
      }
      
      protected function §05§(param1:§?X§) : §7V§
      {
         return new §7V§(this,param1);
      }
      
      protected function §>!6§(param1:String, param2:Number, param3:§>g§, param4:Number) : §,v§
      {
         return new §,v§(param1,param2,param3,param4);
      }
      
      protected function initLevelSlingshot(param1:§?X§) : §0!D§
      {
         return new §0!D§(this,param1,new Sprite());
      }
      
      protected function §[d§(param1:§,!'§, param2:§>g§) : §0m§
      {
         return new §0m§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§?X§ = this.§3!Q§();
         var _loc4_:§+! §;
         (_loc4_ = new §+! §()).left = 0;
         _loc4_.top = -§7V§.§?d§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §7V§.§?d§;
         _loc4_.right = _loc4_.left + §7V§.§^o§;
         _loc4_.y = -13.929;
         _loc4_.x = §7V§.§^o§;
         _loc4_.id = §7V§.§8!F§;
         _loc3_.§9!Y§(_loc4_);
         var _loc5_:§+! §;
         (_loc5_ = new §+! §()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §7V§.§^o§;
         _loc5_.bottom = _loc5_.top + §7V§.§?d§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §7V§.§^o§ / 2;
         _loc5_.id = §7V§.§0!#§;
         _loc3_.§9!Y§(_loc5_);
         this.§]C§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§<!>§ != null)
         {
            _loc3_.theme = §<!>§;
         }
         this.init(_loc3_);
      }
      
      protected function §]C§(param1:§?X§, param2:Boolean) : void
      {
         if(param2)
         {
            this.§&z§(param1);
         }
      }
      
      protected function §3!Q§() : §?X§
      {
         var _loc1_:§?X§ = new §?X§();
         _loc1_.§9L§ = -12;
         return new §?X§();
      }
      
      protected function §%6§() : Number
      {
         this.§>!L§ ^= this.§>!L§ << 21;
         this.§>!L§ ^= this.§>!L§ >>> 35;
         this.§>!L§ ^= this.§>!L§ << 4;
         return this.§>!L§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §&z§(param1:§?X§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§]q§ = null;
         this.§>!L§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§%6§() * 5;
               (_loc5_ = new §]q§()).x = 30 + _loc3_ * 10 + this.§%6§() * 9;
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
                  _loc5_.angle = 45 - this.§%6§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§%6§() * 3 - _loc3_ * 8;
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
                  _loc5_.angle = this.§%6§() * 360;
               }
               param1.addObject(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      private function §8G§() : void
      {
      }
      
      public function §"`§() : void
      {
         if(§,v§.§#9§)
         {
            this.§1N§(this.§]%§.§%G§,false);
         }
         this.§1N§(this.§else§.§[,§(§0m§.§#w§),false);
         this.§1N§(this.§else§.§[,§(§0m§.§#4§),true);
         this.§1N§(this.§else§.§[,§(§0m§.§%h§),true);
         this.§1N§(this.§]c§.§[8§,true);
         this.§1N§(this.§6!&§.sprite,true);
         this.§1N§(this.§else§.§[,§(§0m§.§=!T§),true);
         this.§1N§(this.§]%§.§#I§,false);
         if(§,v§.§#9§)
         {
            this.§1N§(this.§]%§.§-[§,false);
         }
         this.§1N§(this.§else§.§[,§(§0m§.§ !K§),true);
      }
      
      private function §1N§(param1:Sprite, param2:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(param1);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         param1 /= §7`§.§%u§;
         param2 /= §7`§.§%u§;
         _loc3_.x = (param1 / §7V§.§+"§ + this.§%'§.§+v§ - §7V§.§?!0§ / §7V§.§+"§) * §>C§;
         _loc3_.y = (param2 / §7V§.§+"§ + this.§%'§.§?!Y§ - §7V§.§^!I§ / §7V§.§+"§) * §>C§;
         return _loc3_;
      }
      
      public function §8P§(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / §>C§ + §7V§.§?!0§ / §7V§.§+"§ - this.§%'§.§+v§) * §7V§.§+"§;
         _loc3_.y = (param2 / §>C§ + §7V§.§^!I§ / §7V§.§+"§ - this.§%'§.§?!Y§) * §7V§.§+"§;
         var _loc4_:Number = Math.max(§7`§.§%u§,§7`§.§4h§);
         _loc3_.x *= _loc4_;
         _loc3_.y *= _loc4_;
         return _loc3_;
      }
      
      public function §1!$§(param1:String, param2:Number, param3:Number) : void
      {
         this.§]c§.addObject(param1,param2,param3);
      }
      
      public function §!3§() : void
      {
         if(this.§,!#§)
         {
            this.§,!#§.visible = true;
            this.§,!#§.alpha = 0;
         }
         this.§!o§ = 0;
      }
      
      public function §3R§() : void
      {
         this.§^!^§ = new §"3§(§5b§.§`,§,§5b§.§@J§);
      }
      
      public function §1w§() : void
      {
         this.§^!^§ = null;
      }
      
      public function clearLevel() : void
      {
         if(this.§]%§)
         {
            this.§]%§.dispose();
            this.§]%§ = null;
         }
         if(this.§]c§)
         {
            this.§]c§.dispose();
            this.§]c§ = null;
            this.§1!D§ = null;
         }
         if(this.mLevelEngine)
         {
            if(!this.mLevelEngine.§<!5§)
            {
            }
            this.mLevelEngine.clear();
            this.mLevelEngine = null;
         }
         if(this.§0]§)
         {
            this.§0]§.clear();
            this.§0]§ = null;
         }
         if(this.§6!&§)
         {
            this.§6!&§.dispose();
            this.§6!&§ = null;
         }
         if(this.§%'§)
         {
            this.§%'§.clear();
            this.§%'§ = null;
         }
         if(this.§else§)
         {
            this.§else§.dispose();
            this.§else§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§<!7§ = 0;
         this.§;!]§ = 0;
         this.mReadyToRun = false;
         this.§?<§ = false;
         this.§!o§ = §5b§.§&!&§;
         if(this.§!!6§)
         {
            (this.§!!6§ as §]Z§).§ !#§.x = 0;
            (this.§!!6§ as §]Z§).§ !#§.y = 0;
         }
         if(this.§,!#§)
         {
            this.§,!#§.visible = false;
         }
         this.§!!F§ = null;
         this.§@^§ = null;
         if(this.§&0§)
         {
            this.§&0§.removeEventListener(Event.COMPLETE,this.§6'§);
            this.§&0§.removeEventListener(Event.CANCEL,this.§!r§);
         }
         if(this.§ §)
         {
            this.§ §.removeEventListener(Event.COMPLETE,this.§"!&§);
            this.§ §.removeEventListener(Event.CANCEL,this.§^!R§);
         }
         this.§,^§();
         if(§'C§.§3b§)
         {
            §'C§.§3b§.color = 0;
         }
         if(this.§[B§)
         {
            this.§[B§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver() : void
      {
      }
      
      public function §3g§() : String
      {
         if(this.§@^§)
         {
            return this.§@^§.toString();
         }
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         if(!this.mReadyToRun || !§'C§.§61§())
         {
            return 0;
         }
         if(this.§!!F§ && this.§!!F§.§6F§)
         {
            return this.§<z§(param1,param2,param3);
         }
         return this.§&!,§(param1,true,param2,param3);
      }
      
      protected function §&!,§(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         if(this.§1!N§)
         {
            param1 *= 0.2;
            if(§'C§.§&=§)
            {
               §'C§.§&=§.speed = 0.2;
            }
         }
         var _loc5_:Number = 0;
         this.§;!]§ += param1;
         if(param3)
         {
            this.§<!7§ += param1;
            _loc5_ = this.mLevelEngine.§'!_§(this.§<!7§);
            this.§6!&§.update(param1,param4);
            this.§<!7§ = _loc5_;
         }
         else
         {
            this.§]c§.§@u§(param1);
            this.§<!7§ = 0;
         }
         if(param2)
         {
            this.§2V§(param1,_loc5_);
         }
         return param1;
      }
      
      private function §<z§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc5_:Number = NaN;
         var _loc4_:Number = §&2§.§>2§ * 1000;
         if(this.§!!F§)
         {
            param1 *= this.§!!F§.speed;
            _loc5_ = this.§;!]§ + param1;
            while(this.§;!]§ + _loc4_ < _loc5_)
            {
               if(this.§;!]§ + _loc4_ > this.§9[§)
               {
                  this.§!!F§.step(this);
                  this.§9[§ += _loc4_;
               }
               this.§&!,§(_loc4_,false,param2,param3);
            }
            if(_loc5_ > this.§9[§ + _loc4_)
            {
               this.§!!F§.step(this);
               this.§9[§ += _loc4_;
            }
            if(this.§;!]§ < _loc5_)
            {
               this.§&!,§(_loc5_ - this.§;!]§,true,param2,param3);
            }
            return param1;
         }
         return this.§&!,§(_loc4_,true,param2,param3);
      }
      
      private function §2V§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.§]%§.update(param1);
         this.§]c§.§01§(param1,param2);
         this.§6f§();
         if(this.§!o§ < §5b§.§&!&§)
         {
            this.§!o§ += param1;
            _loc3_ = §5b§.§&!&§ / 2;
            _loc4_ = (-Math.abs(this.§!o§ - _loc3_) + _loc3_) * (§5b§.§#X§ / _loc3_);
            if(this.§,!#§)
            {
               this.§,!#§.alpha = _loc4_;
            }
         }
         else if(this.§,!#§)
         {
            this.§,!#§.visible = false;
         }
         if(this.§^!^§)
         {
            if(!this.§^!^§.§1-§(this.§%'§,param1))
            {
               this.§1w§();
            }
         }
         this.§%'§.§'J§(param1);
         this.mLevelEngine.§1k§();
         this.§else§.update(param1);
      }
      
      public function §,X§(param1:Number) : void
      {
         this.objects.§@u§(param1 * 1000);
         this.objects.§4M§(param1 * 1000);
         this.§-p§();
      }
      
      public function §6f§() : void
      {
         var _loc1_:§"!2§ = null;
         if(this.§;!]§ > this.§,!4§ + 1000 / 30)
         {
            if(this.§3w§ != null)
            {
               for each(_loc1_ in this.§3w§)
               {
                  _loc1_.addTrail();
               }
            }
            this.§,!4§ = this.§;!]§;
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§"!2§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.§]c§.isPigsAlive(true))
            {
               _loc2_ = this.§]c§.§@!X§(true);
               _loc2_.§9t§.mTryToScream = §4$§.§,!;§;
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§]c§.§]!&§());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            if(this.§]c§.isPigsAlive(true))
            {
               _loc2_ = this.§]c§.§@!X§(true);
               _loc2_.§9t§.mTryToBlink = §4$§.§-!6§;
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§]c§.§]!&§());
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §^!_§.§+N§;
         }
         §3a§.addScore(param1,param2);
         this.§[B§.addScore(param1);
         if(param3 && param1 > 0 && !this.§6!"§)
         {
            this.§7u§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §7u§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §^!_§.§%@§;
         }
         this.§else§.addParticle(§^!_§.§`X§,§0m§.§ !K§,§^!_§.§7!7§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §&;§(param1:§"!2§) : void
      {
         if(this.§3w§ == null)
         {
            this.§3w§ = new Array();
         }
         this.§3w§.push(param1);
      }
      
      public function §2!?§() : void
      {
         this.§6!&§.§2!?§();
         this.§]c§.§4I§();
         this.§6!"§ = true;
      }
      
      public function §5F§(param1:§"!2§) : void
      {
         this.§else§.§ !'§(§0m§.§#w§);
         if(this.§3w§.indexOf(param1) >= 0)
         {
            this.§3w§.splice(this.§3w§.indexOf(param1),1);
         }
         if(this.§3w§.length == 0)
         {
            this.§3w§ = null;
         }
      }
      
      public function §6!J§(param1:§&!>§, param2:Number, param3:Number) : void
      {
         this.§1!D§ = this.§]c§.addObject(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
         var _loc4_:Number = param1.name.toUpperCase() == "BIRD_GREEN" ? Number(§0!D§.§%&§) : Number(§0!D§.§^!W§);
         if(param1.§4!T§ > 1)
         {
            this.§1!D§.§-!F§(param1.§4!T§);
            this.§1!D§.§9t§.§+6§();
         }
         if(param1.§-w§ != 0)
         {
            _loc4_ = param1.§-w§;
         }
         var _loc5_:Number = -_loc4_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc6_:Number = _loc4_ * param2 * Math.sin(param3 / (180 / Math.PI));
         this.§1!D§.§,!9§(new b2Vec2(_loc5_,_loc6_),false,true);
         this.camera.§3!G§(§7V§.§6]§);
         if(this.§@^§)
         {
            this.§@^§.§6!J§(this.mLevelEngine.currentStep,param1.x,param1.y,param2,param3);
         }
      }
      
      public function activatePowerup() : void
      {
         this.§?<§ = true;
      }
      
      private function §-p§() : void
      {
         if(!this.§?<§)
         {
            return;
         }
         this.§?<§ = false;
         if(this.activeObject is §1M§ && !(this.activeObject as §1M§).§#!2§)
         {
            if(this.activeObject.activateSpecialPower(this.§<R§))
            {
               this.§>7§ = true;
            }
         }
         else
         {
            this.§]c§.§'M§();
         }
         if(this.§@^§)
         {
            this.§@^§.§+%§(this.mLevelEngine.currentStep);
         }
      }
      
      public function §<B§() : void
      {
         this.§]c§.§<B§();
      }
      
      public function get() : void
      {
         this.§]c§.§=B§();
      }
      
      public function §!x§() : §?X§
      {
         var _loc1_:§?X§ = new §?X§();
         _loc1_.§&j§ = this.§]!Y§.§&j§;
         _loc1_.§2B§ = this.§]!Y§.§2B§;
         this.§%'§.§5!=§(_loc1_);
         this.§]c§.§&!I§(_loc1_);
         this.§6!&§.§0K§(_loc1_);
         _loc1_.theme = this.§]%§.§[v§();
         return _loc1_;
      }
      
      public function §^8§() : int
      {
         return this.§]!Y§.§2B§;
      }
      
      public function §@!E§() : int
      {
         return this.§]!Y§.§&j§;
      }
      
      public function §8S§(param1:int) : void
      {
         this.§]!Y§.§2B§ = param1;
      }
      
      public function §>^§(param1:int) : void
      {
         this.§]!Y§.§&j§ = param1;
      }
      
      public function §1P§(param1:Number, param2:Number) : void
      {
         if(this.§[!F§)
         {
            this.§[!F§.§"^§(param1,param2);
         }
         if(this.§%'§)
         {
            this.§%'§.§'J§(0);
         }
      }
      
      public function get §1B§() : §?X§
      {
         return this.§]!Y§;
      }
      
      public function get §<R§() : §1!'§
      {
         return this.§]c§;
      }
      
      protected function get §>E§() : §'C§
      {
         return this.§'N§;
      }
      
      public function get §2!J§() : int
      {
         return §+M§;
      }
   }
}
