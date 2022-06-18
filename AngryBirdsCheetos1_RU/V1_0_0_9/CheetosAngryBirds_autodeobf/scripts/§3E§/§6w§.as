package §3E§
{
   import §!U§.§'!8§;
   import §"!@§.§&;§;
   import §"!@§.§3!+§;
   import §"!@§.§=d§;
   import §"!@§.§]8§;
   import §"!E§.§]p§;
   import §#!P§.§#A§;
   import §#!P§.§1!Y§;
   import §#!P§.§2!W§;
   import §#!P§.§`v§;
   import §'!S§.§,!%§;
   import §'>§.§!B§;
   import §'>§.§>!M§;
   import §'b§.§"^§;
   import §,!E§.§[+§;
   import §-!6§.§>I§;
   import §0!F§.§8!;§;
   import §27§.§ M§;
   import §27§.§4+§;
   import §7!U§.§2!7§;
   import §7u§.DisplayObject;
   import §7u§.Sprite;
   import §8x§.§;;§;
   import §;U§.b2Vec2;
   import §^$§.§^!B§;
   import §`!B§.§'I§;
   import §`!B§.§;r§;
   import §`!B§.§=m§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §6w§
   {
      
      private static const §@A§:int = 20;
      
      public static const §9X§:Number = §2!7§.§'s§;
      
      public static const §%A§:Number = §2!7§.§&!8§;
      
      public static const §?!^§:Number = 1 / 20;
      
      public static const §,y§:Number = §2!7§.§&!8§ * §?!^§;
      
      public static const §1!,§:Number = §9X§ * §?!^§;
      
      public static const §5'§:§8!;§ = new §8!;§(13 - 3);
      
      public static var §%9§:Number = 1;
      
      protected static var §;^§:String = §&;§.§,!J§;
       
      
      protected var §;]§:§#A§;
      
      private var § ,§:§2!W§;
      
      private var § A§:Array = null;
      
      protected var §6!2§:§;;§;
      
      public var mLevelEngine:§<W§;
      
      protected var §-!&§:§<!9§;
      
      protected var §!L§:§'!8§;
      
      protected var §=l§:§]Y§;
      
      protected var §+B§:§ M§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §;!]§:Boolean = false;
      
      protected var §<A§:Boolean = false;
      
      protected var §5]§:Boolean = false;
      
      public var §`p§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §'3§:Number;
      
      public var §5!R§:Number;
      
      private var §@]§:Number;
      
      public var §;!,§:§=d§;
      
      public var §8n§:Boolean = false;
      
      private var §>_§:§`J§;
      
      private var §^!G§:Sprite;
      
      protected var §7Z§:§&;§;
      
      protected var §[`§:§]p§ = null;
      
      private var §var§:EventDispatcher;
      
      private var §1s§:Array;
      
      private var §<D§:Array;
      
      protected var §=!C§:§,!%§;
      
      private var §4!5§:§"^§;
      
      protected var §7!W§:§=m§;
      
      protected var §-I§:§'I§;
      
      private var §?5§:§;r§;
      
      private var §^!F§:§;r§;
      
      private var § F§:§;r§;
      
      private var §3!Z§:Stage;
      
      private var §,$§:§@B§;
      
      protected var §!K§:§^!B§;
      
      protected var §,;§:§^!B§;
      
      protected var §0N§:Number = 0.0;
      
      protected var §0P§:String;
      
      private var §]Z§:Boolean;
      
      protected var §3H§:Boolean;
      
      protected var §==§:uint = 1.417339207E9;
      
      public var §>-§:Boolean;
      
      public function §6w§(param1:Stage)
      {
         this.§<D§ = [];
         super();
         this.§var§ = new EventDispatcher();
         this.§;!,§ = new §=d§();
         this.§3!Z§ = param1;
         this.§7!W§ = §=m§.§!5§;
         this.§-I§ = this.initAnimationManager(this.§7!W§);
         this.§?5§ = this.§`"§();
         this.§^!F§ = this.§=!,§();
         this.§ F§ = this.§]o§();
         var _loc2_:Stage3D = param1.stage3Ds[0];
         this.§=!C§ = new §,!%§(§`J§,param1,new Rectangle(0,0,§2!7§.§'s§,§2!7§.§&!8§),_loc2_);
         §2!7§.§6'§.addEventListener(Event.ENTER_FRAME,this.§=!C§.§;!3§);
         _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§[!8§,false,0,true);
         this.§=!C§.§<!I§ = false;
         this.§=!C§.enableErrorChecking = false;
         this.§=!C§.§49§ = 2;
         this.§=!C§.§#T§();
      }
      
      public static function §!I§(param1:§2!W§, param2:§2!W§) : Number
      {
         var _loc3_:Number = param1.§2!!§ - param2.§2!!§;
         var _loc4_:Number = param1.§%`§ - param2.§%`§;
         return §8^§(_loc3_,_loc4_);
      }
      
      public static function §8^§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         if(!this.§^!G§ && this.§@j§)
         {
            this.§^!G§ = this.§>_§.§5;§;
         }
         return this.§^!G§;
      }
      
      public function get §@j§() : Sprite
      {
         if(!this.§>_§)
         {
            this.§>_§ = this.§=!C§.§7!I§ as §`J§;
            this.§>_§.§^!Y§ = false;
         }
         return this.§>_§;
      }
      
      private function get §,!G§() : DisplayObject
      {
         if(this.§@j§)
         {
            return (this.§@j§ as §`J§).§,!G§;
         }
         return null;
      }
      
      public function get §]q§() : §'I§
      {
         return this.§-I§;
      }
      
      public function get §59§() : §=m§
      {
         return this.§7!W§;
      }
      
      public function get camera() : §'!8§
      {
         return this.§!L§;
      }
      
      public function get objects() : §#A§
      {
         return this.§;]§;
      }
      
      public function get particles() : § M§
      {
         return this.§+B§;
      }
      
      public function get background() : §;;§
      {
         return this.§6!2§;
      }
      
      public function get slingshot() : §]Y§
      {
         return this.§=l§;
      }
      
      public function get activeObject() : §2!W§
      {
         return this.§ ,§;
      }
      
      public function get §[2§() : §<!9§
      {
         return this.§-!&§;
      }
      
      public function get stage() : Stage
      {
         return this.§3!Z§;
      }
      
      public function get §@c§() : §;r§
      {
         return this.§ F§;
      }
      
      protected function get §'!<§() : §;r§
      {
         return this.§?5§;
      }
      
      public function set activeObject(param1:§2!W§) : void
      {
         this.§ ,§ = param1;
      }
      
      public function set §@l§(param1:Boolean) : void
      {
         this.§3H§ = param1;
      }
      
      public function clear() : void
      {
         if(this.§4!5§)
         {
            this.§4!5§.dispose();
         }
         if(this.§7!W§)
         {
            this.§7!W§.dispose();
         }
         if(this.§?5§ && this.§?5§.§59§)
         {
            this.§?5§.§59§.dispose();
         }
         if(this.§ F§ && this.§ F§.§59§)
         {
            this.§ F§.§59§.dispose();
         }
         if(this.§=!C§)
         {
            this.§=!C§.dispose();
         }
      }
      
      protected function §`"§() : §;r§
      {
         return null;
      }
      
      protected function §=!,§() : §;r§
      {
         return null;
      }
      
      protected function §]o§() : §;r§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§=m§) : §'I§
      {
         return new §'I§(param1);
      }
      
      public function §@4§(param1:Boolean) : void
      {
         if(§,!%§.§]!C§)
         {
            if(param1)
            {
               §,!%§.§]!C§.start();
            }
            else
            {
               §,!%§.§]!C§.stop();
               §,!%§.§]!C§.color = 0;
            }
         }
      }
      
      public function §4h§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function §`!@§(param1:§]p§) : void
      {
         if(this.§[`§ != null)
         {
            this.§[`§.removeEventListeners();
         }
         this.§[`§ = param1;
         if(this.mReadyToRun)
         {
            this.§[`§.addEventListeners();
         }
      }
      
      public function §4^§() : §^!B§
      {
         return this.§!K§;
      }
      
      public function §@!M§(param1:§"^§, param2:Array, param3:Function) : void
      {
         this.§4!5§ = param1;
         var _loc4_:int = this.§4!5§.§1d§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§7!W§.§"![§(this.§4!5§.§`!Y§(_loc5_));
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§var§.addEventListener(Event.INIT,param3);
            this.§<D§.push(param3);
         }
         if(this.§"]§(param2))
         {
            this.§+F§();
         }
      }
      
      private function §"]§(param1:Array) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.§7!W§.§7d§())
         {
            _loc2_ = this.§7!W§.§`!T§ / 1000;
            _loc3_ = this.§7!W§.§=p§ / 1000;
            §>I§.log("\n\nMain texture manager memory usage:\n   textures " + _loc2_ + " kilobytes\n   bitmaps " + _loc3_ + " kilobytes\n\n");
            this.initializeAnimations(param1);
            return true;
         }
         this.§1s§ = param1.concat();
         return false;
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         this.§-I§.initializeAnimations(param1);
      }
      
      private function §[!8§(param1:Event) : void
      {
         this.§7!W§.§-M§();
         if(this.§'!<§ && this.§'!<§.§59§)
         {
            this.§'!<§.§59§.§-M§();
         }
         if(this.§@c§ && this.§@c§.§59§)
         {
            this.§@c§.§59§.§-M§();
         }
         if(this.§1s§)
         {
            this.§"]§(this.§1s§);
            this.§1s§ = null;
            this.§+F§();
         }
         if(this.§[`§ != null && this.mReadyToRun)
         {
            this.§[`§.addEventListeners();
         }
         if(this.§?5§)
         {
            this.§?5§.§7d§();
         }
         if(this.§ F§)
         {
            if(this.§ F§.§59§)
            {
               this.§ F§.§59§.§-M§();
               this.§ F§.§7d§();
            }
         }
      }
      
      private function §+F§() : void
      {
         this.§var§.dispatchEvent(new Event(Event.INIT));
         this.§+!O§();
      }
      
      private function §+!O§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§<D§)
         {
            this.§var§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§<D§ = [];
      }
      
      public function init(param1:§&;§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§-!&§ = new §<!9§(this,param1);
         this.§!L§ = this.§^p§(param1);
         this.§'3§ = 0;
         this.§5!R§ = 0;
         this.§@]§ = 0;
         this.§]Z§ = false;
         this.mReadyToRun = false;
         this.§;!]§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         §;^§ = param1.theme;
         this.§7Z§ = param1;
         this.§<A§ = this.§]I§(param1.theme);
         this.§5]§ = this.§9!Y§(param1.theme);
         if(this.§<A§ && this.§5]§)
         {
            this.§8j§(param1);
         }
         else
         {
            this.§]!0§(param1.theme);
         }
         this.initReplay();
         §7!+§.init();
      }
      
      protected function initReplay() : void
      {
         this.§!K§ = new §^!B§(§3!+§.§%2§);
      }
      
      protected function §]I§(param1:String) : Boolean
      {
         if(this.§?5§)
         {
            return false;
         }
         return true;
      }
      
      protected function §9!Y§(param1:String) : Boolean
      {
         var _loc2_:§!B§ = null;
         if(this.§^!F§)
         {
            _loc2_ = §>!M§.§@!`§(param1);
            if(_loc2_)
            {
               if(_loc2_.§4!W§ && !this.§^!F§.§4!Z§(_loc2_.§4!W§))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function §]!0§(param1:String) : void
      {
         var _loc2_:§!B§ = null;
         if(this.§?5§ && !this.§]I§(param1))
         {
            this.§?5§.removeEventListener(Event.COMPLETE,this.§!p§);
            this.§?5§.removeEventListener(Event.CANCEL,this.§%! §);
            this.§?5§.addEventListener(Event.COMPLETE,this.§!p§);
            this.§?5§.addEventListener(Event.CANCEL,this.§%! §);
            this.§?5§.§'-§(param1);
         }
         if(this.§^!F§ && !this.§9!Y§(param1))
         {
            this.§^!F§.removeEventListener(Event.COMPLETE,this.§5!0§);
            this.§^!F§.removeEventListener(Event.CANCEL,this.§8!"§);
            this.§^!F§.addEventListener(Event.COMPLETE,this.§5!0§);
            this.§^!F§.addEventListener(Event.CANCEL,this.§8!"§);
            _loc2_ = §>!M§.§@!`§(param1);
            if(_loc2_)
            {
               this.§^!F§.§'-§(_loc2_.§4!W§);
            }
         }
      }
      
      private function §!p§(param1:Event) : void
      {
         this.§?5§.removeEventListener(Event.COMPLETE,this.§!p§);
         this.§?5§.removeEventListener(Event.CANCEL,this.§%! §);
         this.§<A§ = true;
         if(this.§<A§ && this.§5]§)
         {
            this.§8j§(this.§7Z§);
         }
      }
      
      private function §%! §(param1:Event) : void
      {
         this.§?5§.removeEventListener(Event.COMPLETE,this.§!p§);
         this.§?5§.removeEventListener(Event.CANCEL,this.§%! §);
         this.§;!]§ = true;
      }
      
      private function §5!0§(param1:Event) : void
      {
         this.§?5§.removeEventListener(Event.COMPLETE,this.§5!0§);
         this.§?5§.removeEventListener(Event.CANCEL,this.§8!"§);
         this.§5]§ = true;
         if(this.§<A§ && this.§5]§)
         {
            this.§8j§(this.§7Z§);
         }
      }
      
      private function §8!"§(param1:Event) : void
      {
         this.§?5§.removeEventListener(Event.COMPLETE,this.§5!0§);
         this.§?5§.removeEventListener(Event.CANCEL,this.§8!"§);
         this.§5]§ = true;
         if(this.§<A§ && this.§5]§)
         {
            this.§8j§(this.§7Z§);
         }
      }
      
      public function get §8X§() : §=m§
      {
         return this.§7!W§;
      }
      
      protected function §8j§(param1:§&;§) : void
      {
         this.§3H§ = false;
         this.§>-§ = false;
         if(§,!%§.§7x§)
         {
            §,!%§.§7x§.speed = 1;
         }
         this.mLevelEngine = new §<W§(this);
         this.§6!2§ = this.§;W§(param1.theme,this.§-!&§.§@I§ / §?!^§,this.§8X§,this.§!L§.§8!B§());
         this.§6!2§.§9!O§(§2!7§.§^4§());
         this.§;]§ = this.initLevelObjectManager(param1);
         this.§=l§ = this.initLevelSlingshot(param1);
         this.§+B§ = this.§=2§(this.§-I§,this.§7!W§);
         this.§!L§.init();
         this.§<!Z§();
         this.loadPreviousReplayData();
         this.mReadyToRun = true;
         if(this.§[`§)
         {
            this.§[`§.addEventListeners();
         }
      }
      
      protected function loadPreviousReplayData() : void
      {
         if(this.§0P§)
         {
            this.§,;§ = §^!B§.§8j§(this.§0P§);
            this.§,;§.speed = 1;
            this.§,;§.play();
            this.§0N§ = -1000;
            this.§0P§ = null;
         }
      }
      
      public function §]!B§(param1:String) : void
      {
         this.§0P§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§,;§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§,;§)
         {
            if(param1)
            {
               this.§,;§.speed = Math.min(this.§,;§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§,;§.speed = Math.max(this.§,;§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§,;§)
         {
            this.§,;§.speed = 1;
         }
      }
      
      protected function initLevelObjectManager(param1:§&;§) : §#A§
      {
         return new §#A§(this,param1,new Sprite());
      }
      
      protected function §^p§(param1:§&;§) : §'!8§
      {
         return new §'!8§(this,param1);
      }
      
      protected function §;W§(param1:String, param2:Number, param3:§=m§, param4:Number) : §;;§
      {
         return new §;;§(param1,param2,param3,param4);
      }
      
      protected function initLevelSlingshot(param1:§&;§) : §]Y§
      {
         return new §]Y§(this,param1,new Sprite());
      }
      
      protected function §=2§(param1:§'I§, param2:§=m§) : § M§
      {
         return new § M§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§&;§ = this.§-P§();
         var _loc4_:§]8§;
         (_loc4_ = new §]8§()).left = 0;
         _loc4_.top = -§'!8§.§0!^§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §'!8§.§0!^§;
         _loc4_.right = _loc4_.left + §'!8§.§9!W§;
         _loc4_.y = -13.929;
         _loc4_.x = §'!8§.§9!W§;
         _loc4_.id = §'!8§.§"k§;
         _loc3_.§"V§(_loc4_);
         var _loc5_:§]8§;
         (_loc5_ = new §]8§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §'!8§.§9!W§;
         _loc5_.bottom = _loc5_.top + §'!8§.§0!^§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §'!8§.§9!W§ / 2;
         _loc5_.id = §'!8§.override;
         _loc3_.§"V§(_loc5_);
         this.§+T§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§;^§ != null)
         {
            _loc3_.theme = §;^§;
         }
         this.init(_loc3_);
      }
      
      protected function §+T§(param1:§&;§, param2:Boolean) : void
      {
         if(param2)
         {
            this.§[V§(param1);
         }
      }
      
      protected function §-P§() : §&;§
      {
         var _loc1_:§&;§ = new §&;§();
         _loc1_.§]!,§ = -12;
         return new §&;§();
      }
      
      protected function §1!&§() : Number
      {
         this.§==§ ^= this.§==§ << 21;
         this.§==§ ^= this.§==§ >>> 35;
         this.§==§ ^= this.§==§ << 4;
         return this.§==§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §[V§(param1:§&;§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§[+§ = null;
         this.§==§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§1!&§() * 5;
               (_loc5_ = new §[+§()).x = 30 + _loc3_ * 10 + this.§1!&§() * 9;
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
                  _loc5_.angle = 45 - this.§1!&§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§1!&§() * 3 - _loc3_ * 8;
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
                  _loc5_.angle = this.§1!&§() * 360;
               }
               param1.addObject(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      private function §[>§() : void
      {
      }
      
      public function §<!Z§() : void
      {
         if(§;;§.§'j§)
         {
            this.§0!<§(this.§6!2§.§^D§,false);
         }
         this.§0!<§(this.§+B§.§8l§(§ M§.§`!U§),false);
         this.§0!<§(this.§+B§.§8l§(§ M§.§>H§),true);
         this.§0!<§(this.§+B§.§8l§(§ M§.§7<§),true);
         this.§0!<§(this.§;]§.§>!%§,true);
         this.§0!<§(this.§=l§.sprite,true);
         this.§0!<§(this.§+B§.§8l§(§ M§.§&^§),true);
         this.§0!<§(this.§6!2§.§>6§,false);
         if(§;;§.§'j§)
         {
            this.§0!<§(this.§6!2§.§<F§,false);
         }
         this.§0!<§(this.§+B§.§8l§(§ M§.§[!&§),true);
      }
      
      private function §0!<§(param1:Sprite, param2:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(param1);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         param1 /= §2!7§.§!!D§;
         param2 /= §2!7§.§!!D§;
         _loc3_.x = (param1 / §'!8§.§3!0§ + this.§!L§.§;!D§ - §'!8§.§?d§ / §'!8§.§3!0§) * §?!^§;
         _loc3_.y = (param2 / §'!8§.§3!0§ + this.§!L§.§;m§ - §'!8§.§+'§ / §'!8§.§3!0§) * §?!^§;
         return _loc3_;
      }
      
      public function §%!?§(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / §?!^§ + §'!8§.§?d§ / §'!8§.§3!0§ - this.§!L§.§;!D§) * §'!8§.§3!0§;
         _loc3_.y = (param2 / §?!^§ + §'!8§.§+'§ / §'!8§.§3!0§ - this.§!L§.§;m§) * §'!8§.§3!0§;
         var _loc4_:Number = Math.max(§2!7§.§!!D§,§2!7§.§0m§);
         _loc3_.x *= _loc4_;
         _loc3_.y *= _loc4_;
         return _loc3_;
      }
      
      public function §,`§(param1:String, param2:Number, param3:Number) : void
      {
         this.§;]§.addObject(param1,param2,param3);
      }
      
      public function §=!5§() : void
      {
         if(this.§,!G§)
         {
            this.§,!G§.visible = true;
            this.§,!G§.alpha = 0;
         }
         this.§`p§ = 0;
      }
      
      public function §2!;§() : void
      {
         this.§,$§ = new §@B§(§!$§.§,D§,§!$§.§?O§);
      }
      
      public function §!=§() : void
      {
         this.§,$§ = null;
      }
      
      public function clearLevel() : void
      {
         if(this.§6!2§)
         {
            this.§6!2§.dispose();
            this.§6!2§ = null;
         }
         if(this.§;]§)
         {
            this.§;]§.dispose();
            this.§;]§ = null;
            this.§ ,§ = null;
         }
         if(this.mLevelEngine)
         {
            if(!this.mLevelEngine.§2!M§)
            {
            }
            this.mLevelEngine.clear();
            this.mLevelEngine = null;
         }
         if(this.§-!&§)
         {
            this.§-!&§.clear();
            this.§-!&§ = null;
         }
         if(this.§=l§)
         {
            this.§=l§.dispose();
            this.§=l§ = null;
         }
         if(this.§!L§)
         {
            this.§!L§.clear();
            this.§!L§ = null;
         }
         if(this.§+B§)
         {
            this.§+B§.dispose();
            this.§+B§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§'3§ = 0;
         this.§5!R§ = 0;
         this.mReadyToRun = false;
         this.§]Z§ = false;
         this.§`p§ = §!$§.§[7§;
         if(this.§@j§)
         {
            (this.§@j§ as §`J§).§;$§.x = 0;
            (this.§@j§ as §`J§).§;$§.y = 0;
         }
         if(this.§,!G§)
         {
            this.§,!G§.visible = false;
         }
         this.§,;§ = null;
         this.§!K§ = null;
         if(this.§?5§)
         {
            this.§?5§.removeEventListener(Event.COMPLETE,this.§!p§);
            this.§?5§.removeEventListener(Event.CANCEL,this.§%! §);
         }
         if(this.§^!F§)
         {
            this.§^!F§.removeEventListener(Event.COMPLETE,this.§5!0§);
            this.§^!F§.removeEventListener(Event.CANCEL,this.§8!"§);
         }
         this.§+!O§();
         if(§,!%§.§]!C§)
         {
            §,!%§.§]!C§.color = 0;
         }
         if(this.§[`§)
         {
            this.§[`§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver() : void
      {
      }
      
      public function §`5§() : String
      {
         if(this.§!K§)
         {
            return this.§!K§.toString();
         }
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         if(!this.mReadyToRun || !§,!%§.§2!V§())
         {
            return 0;
         }
         if(this.§,;§ && this.§,;§.§]!_§)
         {
            return this.§7§(param1,param2,param3);
         }
         return this.§8! §(param1,true,param2,param3);
      }
      
      protected function §8! §(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         if(this.§3H§)
         {
            param1 *= 0.2;
            if(§,!%§.§7x§)
            {
               §,!%§.§7x§.speed = 0.2;
            }
         }
         var _loc5_:Number = 0;
         this.§5!R§ += param1;
         if(param3)
         {
            this.§'3§ += param1;
            _loc5_ = this.mLevelEngine.§9!1§(this.§'3§);
            this.§=l§.update(param1,param4);
            this.§'3§ = _loc5_;
         }
         else
         {
            this.§;]§.§9g§(param1);
            this.§'3§ = 0;
         }
         if(param2)
         {
            this.§5!W§(param1,_loc5_);
         }
         return param1;
      }
      
      private function §7§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc5_:Number = NaN;
         var _loc4_:Number = §<W§.§ !3§ * 1000;
         if(this.§,;§)
         {
            param1 *= this.§,;§.speed;
            _loc5_ = this.§5!R§ + param1;
            while(this.§5!R§ + _loc4_ < _loc5_)
            {
               if(this.§5!R§ + _loc4_ > this.§0N§)
               {
                  this.§,;§.step(this);
                  this.§0N§ += _loc4_;
               }
               this.§8! §(_loc4_,false,param2,param3);
            }
            if(_loc5_ > this.§0N§ + _loc4_)
            {
               this.§,;§.step(this);
               this.§0N§ += _loc4_;
            }
            if(this.§5!R§ < _loc5_)
            {
               this.§8! §(_loc5_ - this.§5!R§,true,param2,param3);
            }
            return param1;
         }
         return this.§8! §(_loc4_,true,param2,param3);
      }
      
      private function §5!W§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.§6!2§.update(param1);
         this.§;]§.§ a§(param1,param2);
         this.§3!>§();
         if(this.§`p§ < §!$§.§[7§)
         {
            this.§`p§ += param1;
            _loc3_ = §!$§.§[7§ / 2;
            _loc4_ = (-Math.abs(this.§`p§ - _loc3_) + _loc3_) * (§!$§.§%!#§ / _loc3_);
            if(this.§,!G§)
            {
               this.§,!G§.alpha = _loc4_;
            }
         }
         else if(this.§,!G§)
         {
            this.§,!G§.visible = false;
         }
         if(this.§,$§)
         {
            if(!this.§,$§.§=!G§(this.§!L§,param1))
            {
               this.§!=§();
            }
         }
         this.§!L§.§!!K§(param1);
         this.mLevelEngine.§9J§();
         this.§+B§.update(param1);
      }
      
      public function §<2§(param1:Number) : void
      {
         this.objects.§9g§(param1 * 1000);
         this.objects.§[§(param1 * 1000);
         this.§&C§();
      }
      
      public function §3!>§() : void
      {
         var _loc1_:§2!W§ = null;
         if(this.§5!R§ > this.§@]§ + 1000 / 30)
         {
            if(this.§ A§ != null)
            {
               for each(_loc1_ in this.§ A§)
               {
                  _loc1_.addTrail();
               }
            }
            this.§@]§ = this.§5!R§;
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§2!W§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.§;]§.isPigsAlive(true))
            {
               _loc2_ = this.§;]§.§^!@§(true);
               _loc2_.§<k§.mTryToScream = §1!Y§.§0!P§;
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§;]§.§+!%§());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            if(this.§;]§.isPigsAlive(true))
            {
               _loc2_ = this.§;]§.§^!@§(true);
               _loc2_.§<k§.mTryToBlink = §1!Y§.§^_§;
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§;]§.§+!%§());
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §4+§.§5!!§;
         }
         §7!+§.addScore(param1,param2);
         this.§[`§.addScore(param1);
         if(param3 && param1 > 0 && !this.§>-§)
         {
            this.§'#§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §'#§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §4+§.§@3§;
         }
         this.§+B§.addParticle(§4+§.§^#§,§ M§.§[!&§,§4+§.§<!&§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §2!F§(param1:§2!W§) : void
      {
         if(this.§ A§ == null)
         {
            this.§ A§ = new Array();
         }
         this.§ A§.push(param1);
      }
      
      public function § case§() : void
      {
         this.§=l§.§ case§();
         this.§;]§.§`E§();
         this.§>-§ = true;
      }
      
      public function §&>§(param1:§2!W§) : void
      {
         this.§+B§.§]?§(§ M§.§`!U§);
         if(this.§ A§.indexOf(param1) >= 0)
         {
            this.§ A§.splice(this.§ A§.indexOf(param1),1);
         }
         if(this.§ A§.length == 0)
         {
            this.§ A§ = null;
         }
      }
      
      public function §]!F§(param1:§>o§, param2:Number, param3:Number) : void
      {
         this.§ ,§ = this.§;]§.addObject(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
         var _loc4_:Number = param1.name.toUpperCase() == "BIRD_GREEN" ? Number(§]Y§.§9!'§) : Number(§]Y§.§2!I§);
         if(param1.§&!Z§ > 1)
         {
            this.§ ,§.§"$§(param1.§&!Z§);
            this.§ ,§.§<k§.§]!>§();
         }
         if(param1.§1c§ != 0)
         {
            _loc4_ = param1.§1c§;
         }
         var _loc5_:Number = -_loc4_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc6_:Number = _loc4_ * param2 * Math.sin(param3 / (180 / Math.PI));
         this.§ ,§.§''§(new b2Vec2(_loc5_,_loc6_),false,true);
         this.camera.§?!G§(§'!8§.§-!2§);
         if(this.§!K§)
         {
            this.§!K§.§]!F§(this.mLevelEngine.currentStep,param1.x,param1.y,param2,param3);
         }
      }
      
      public function activatePowerup() : void
      {
         this.§]Z§ = true;
      }
      
      private function §&C§() : void
      {
         if(!this.§]Z§)
         {
            return;
         }
         this.§]Z§ = false;
         if(this.activeObject is §`v§ && !(this.activeObject as §`v§).§!N§)
         {
            if(this.activeObject.activateSpecialPower(this.§`Z§))
            {
               this.§8n§ = true;
            }
         }
         else
         {
            this.§;]§.§&!>§();
         }
         if(this.§!K§)
         {
            this.§!K§.§'Z§(this.mLevelEngine.currentStep);
         }
      }
      
      public function §0Z§() : void
      {
         this.§;]§.§0Z§();
      }
      
      public function §9k§() : void
      {
         this.§;]§.§[D§();
      }
      
      public function §?6§() : §&;§
      {
         var _loc1_:§&;§ = new §&;§();
         _loc1_.§07§ = this.§7Z§.§07§;
         _loc1_.§,H§ = this.§7Z§.§,H§;
         this.§!L§.§^!L§(_loc1_);
         this.§;]§.§@!C§(_loc1_);
         this.§=l§.§%N§(_loc1_);
         _loc1_.theme = this.§6!2§.§!v§();
         return _loc1_;
      }
      
      public function §-h§() : int
      {
         return this.§7Z§.§,H§;
      }
      
      public function §';§() : int
      {
         return this.§7Z§.§07§;
      }
      
      public function §2R§(param1:int) : void
      {
         this.§7Z§.§,H§ = param1;
      }
      
      public function §8i§(param1:int) : void
      {
         this.§7Z§.§07§ = param1;
      }
      
      public function §@!?§(param1:Number, param2:Number) : void
      {
         if(this.§>_§)
         {
            this.§>_§.§=!-§(param1,param2);
         }
         if(this.§!L§)
         {
            this.§!L§.§!!K§(0);
         }
      }
      
      public function get §+d§() : §&;§
      {
         return this.§7Z§;
      }
      
      public function get §`Z§() : §#A§
      {
         return this.§;]§;
      }
      
      protected function get §!!Z§() : §,!%§
      {
         return this.§=!C§;
      }
      
      public function get §9!0§() : int
      {
         return §@A§;
      }
   }
}
