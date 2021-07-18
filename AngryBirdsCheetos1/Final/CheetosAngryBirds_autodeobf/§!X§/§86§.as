package §!X§
{
   import § !G§.§ #§;
   import § `§.§2w§;
   import § `§.§5L§;
   import § `§.§const§;
   import §#!F§.§78§;
   import §%J§.§`u§;
   import §+3§.§ 7§;
   import §+3§.§`#§;
   import §,h§.§+0§;
   import §,h§.§0q§;
   import §,h§.§4!9§;
   import §,h§.§6M§;
   import §-!@§.§<!D§;
   import §0! §.§7o§;
   import §0! §.§<2§;
   import §0!G§.b2Vec2;
   import §31§.§%B§;
   import §=?§.§^!M§;
   import §?h§.§<I§;
   import §?m§.§7?§;
   import §@b§.§;M§;
   import §]!F§.§%H§;
   import §]!F§.§&!]§;
   import §]!F§.§'A§;
   import §]!F§.§7e§;
   import §]@§.DisplayObject;
   import §]@§.Sprite;
   import §`C§.§9!'§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §86§
   {
      
      private static const §4!A§:int = 20;
      
      public static const §super§:Number = §7?§.§;#§;
      
      public static const §=D§:Number = §7?§.§0h§;
      
      public static const §7!4§:Number = 1 / 20;
      
      public static const § !?§:Number = §7?§.§0h§ * §7!4§;
      
      public static const §[<§:Number = §super§ * §7!4§;
      
      public static const §@r§:§78§ = new §78§(13 - 3);
      
      protected static var §0!1§:String = §&!]§.§ get§;
       
      
      protected var §[!&§:§6M§;
      
      private var §"!Z§:§+0§;
      
      private var § s§:Array = null;
      
      protected var §4a§:§%B§;
      
      public var mLevelEngine:§,!'§;
      
      protected var §0o§:§ 6§;
      
      protected var §]!M§:§<I§;
      
      protected var §3V§:§#K§;
      
      protected var §+!Z§:§<2§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §;8§:Boolean = false;
      
      protected var §13§:Boolean = false;
      
      protected var §?Z§:Boolean = false;
      
      public var §2n§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §5!P§:Number;
      
      public var §#5§:Number;
      
      private var §=m§:Number;
      
      public var §#v§:§%H§;
      
      public var §+"§:Boolean = false;
      
      private var §0!^§:§7]§;
      
      private var §4!0§:Sprite;
      
      protected var §6!Q§:§&!]§;
      
      protected var §#!>§:§<!D§ = null;
      
      private var §;!>§:EventDispatcher;
      
      private var § !@§:Array;
      
      private var §=!+§:Array;
      
      protected var §,a§:§9!'§;
      
      private var §3z§:§;M§;
      
      protected var §8!M§:§2w§;
      
      protected var §>n§:§5L§;
      
      private var §==§:§const§;
      
      private var §=S§:§const§;
      
      private var §@I§:§const§;
      
      private var §6$§:Stage;
      
      private var §8!-§:§65§;
      
      protected var §;_§:§^!M§;
      
      protected var §5!>§:§^!M§;
      
      protected var § use§:Number = 0.0;
      
      protected var §#l§:String;
      
      private var §;1§:Boolean;
      
      protected var §&!+§:Boolean;
      
      protected var §^?§:uint = 1.417339207E9;
      
      public var §[4§:Boolean;
      
      public function §86§(param1:Stage)
      {
         this.§=!+§ = [];
         super();
         this.§;!>§ = new EventDispatcher();
         this.§#v§ = new §%H§();
         this.§6$§ = param1;
         this.§8!M§ = §2w§.§%!O§;
         this.§>n§ = this.initAnimationManager(this.§8!M§);
         this.§==§ = this.§8N§();
         this.§=S§ = this.§[!F§();
         this.§@I§ = this.§+!M§();
         var _loc2_:Stage3D = param1.stage3Ds[0];
         this.§,a§ = new §9!'§(§7]§,param1,new Rectangle(0,0,§7?§.§;#§,§7?§.§0h§),_loc2_);
         §7?§.§>!M§.addEventListener(Event.ENTER_FRAME,this.§,a§.§<!%§);
         _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§"$§,false,0,true);
         this.§,a§.§&?§ = false;
         this.§,a§.enableErrorChecking = false;
         this.§,a§.§">§ = 2;
         this.§,a§.§1!Y§();
      }
      
      public static function §6!M§(param1:§+0§, param2:§+0§) : Number
      {
         var _loc3_:Number = param1.§33§ - param2.§33§;
         var _loc4_:Number = param1.§&5§ - param2.§&5§;
         return §]a§(_loc3_,_loc4_);
      }
      
      public static function §]a§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         if(!this.§4!0§ && this.§#!Z§)
         {
            this.§4!0§ = this.§0!^§.§98§;
         }
         return this.§4!0§;
      }
      
      public function get §#!Z§() : Sprite
      {
         if(!this.§0!^§)
         {
            this.§0!^§ = this.§,a§.§'Q§ as §7]§;
            this.§0!^§.§^f§ = false;
         }
         return this.§0!^§;
      }
      
      private function get §%!X§() : DisplayObject
      {
         if(this.§#!Z§)
         {
            return (this.§#!Z§ as §7]§).§%!X§;
         }
         return null;
      }
      
      public function get §true§() : §5L§
      {
         return this.§>n§;
      }
      
      public function get §=]§() : §2w§
      {
         return this.§8!M§;
      }
      
      public function get camera() : §<I§
      {
         return this.§]!M§;
      }
      
      public function get objects() : §6M§
      {
         return this.§[!&§;
      }
      
      public function get particles() : §<2§
      {
         return this.§+!Z§;
      }
      
      public function get background() : §%B§
      {
         return this.§4a§;
      }
      
      public function get slingshot() : §#K§
      {
         return this.§3V§;
      }
      
      public function get activeObject() : §+0§
      {
         return this.§"!Z§;
      }
      
      public function get §%-§() : § 6§
      {
         return this.§0o§;
      }
      
      public function get stage() : Stage
      {
         return this.§6$§;
      }
      
      public function get §9m§() : §const§
      {
         return this.§@I§;
      }
      
      protected function get §=!'§() : §const§
      {
         return this.§==§;
      }
      
      public function set activeObject(param1:§+0§) : void
      {
         this.§"!Z§ = param1;
      }
      
      public function set §8_§(param1:Boolean) : void
      {
         this.§&!+§ = param1;
      }
      
      public function clear() : void
      {
         if(this.§3z§)
         {
            this.§3z§.dispose();
         }
         if(this.§8!M§)
         {
            this.§8!M§.dispose();
         }
         if(this.§==§ && this.§==§.§=]§)
         {
            this.§==§.§=]§.dispose();
         }
         if(this.§@I§ && this.§@I§.§=]§)
         {
            this.§@I§.§=]§.dispose();
         }
         if(this.§,a§)
         {
            this.§,a§.dispose();
         }
      }
      
      protected function §8N§() : §const§
      {
         return null;
      }
      
      protected function §[!F§() : §const§
      {
         return null;
      }
      
      protected function §+!M§() : §const§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§2w§) : §5L§
      {
         return new §5L§(param1);
      }
      
      public function §'![§(param1:Boolean) : void
      {
         if(§9!'§.§7!Z§)
         {
            if(param1)
            {
               §9!'§.§7!Z§.start();
            }
            else
            {
               §9!'§.§7!Z§.stop();
               §9!'§.§7!Z§.color = 0;
            }
         }
      }
      
      public function §@^§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function §-!P§(param1:§<!D§) : void
      {
         if(this.§#!>§ != null)
         {
            this.§#!>§.removeEventListeners();
         }
         this.§#!>§ = param1;
         if(this.mReadyToRun)
         {
            this.§#!>§.addEventListeners();
         }
      }
      
      public function §=8§() : §^!M§
      {
         return this.§;_§;
      }
      
      public function §9!§(param1:§;M§, param2:Array, param3:Function) : void
      {
         this.§3z§ = param1;
         var _loc4_:int = this.§3z§.§=_§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§8!M§.§7!<§(this.§3z§.§"T§(_loc5_));
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§;!>§.addEventListener(Event.INIT,param3);
            this.§=!+§.push(param3);
         }
         if(this.§'!5§(param2))
         {
            this.§,!#§();
         }
      }
      
      private function §'!5§(param1:Array) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.§8!M§.§+!^§())
         {
            _loc2_ = this.§8!M§.§[!G§ / 1000;
            _loc3_ = this.§8!M§.§4p§ / 1000;
            § #§.log("\n\nMain texture manager memory usage:\n   textures " + _loc2_ + " kilobytes\n   bitmaps " + _loc3_ + " kilobytes\n\n");
            this.initializeAnimations(param1);
            return true;
         }
         this.§ !@§ = param1.concat();
         return false;
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         this.§>n§.initializeAnimations(param1);
      }
      
      private function §"$§(param1:Event) : void
      {
         this.§8!M§.§6y§();
         if(this.§=!'§ && this.§=!'§.§=]§)
         {
            this.§=!'§.§=]§.§6y§();
         }
         if(this.§9m§ && this.§9m§.§=]§)
         {
            this.§9m§.§=]§.§6y§();
         }
         if(this.§ !@§)
         {
            this.§'!5§(this.§ !@§);
            this.§ !@§ = null;
            this.§,!#§();
         }
         if(this.§#!>§ != null && this.mReadyToRun)
         {
            this.§#!>§.addEventListeners();
         }
         if(this.§==§)
         {
            this.§==§.§+!^§();
         }
         if(this.§@I§)
         {
            if(this.§@I§.§=]§)
            {
               this.§@I§.§=]§.§6y§();
               this.§@I§.§+!^§();
            }
         }
      }
      
      private function §,!#§() : void
      {
         this.§;!>§.dispatchEvent(new Event(Event.INIT));
         this.§0f§();
      }
      
      private function §0f§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§=!+§)
         {
            this.§;!>§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§=!+§ = [];
      }
      
      public function init(param1:§&!]§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§0o§ = new § 6§(this,param1);
         this.§]!M§ = this.§18§(param1);
         this.§5!P§ = 0;
         this.§#5§ = 0;
         this.§=m§ = 0;
         this.§;1§ = false;
         this.mReadyToRun = false;
         this.§;8§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         §0!1§ = param1.theme;
         this.§6!Q§ = param1;
         this.§13§ = this.§2r§(param1.theme);
         this.§?Z§ = this.§&Y§(param1.theme);
         if(this.§13§ && this.§?Z§)
         {
            this.§&O§(param1);
         }
         else
         {
            this.§0I§(param1.theme);
         }
         this.initReplay();
         §7@§.init();
      }
      
      protected function initReplay() : void
      {
         this.§;_§ = new §^!M§(§7e§.§^"§);
      }
      
      protected function §2r§(param1:String) : Boolean
      {
         if(this.§==§)
         {
            return false;
         }
         return true;
      }
      
      protected function §&Y§(param1:String) : Boolean
      {
         var _loc2_:§`#§ = null;
         if(this.§=S§)
         {
            _loc2_ = § 7§.§[!>§(param1);
            if(_loc2_)
            {
               if(_loc2_.§5N§ && !this.§=S§.§return§(_loc2_.§5N§))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function §0I§(param1:String) : void
      {
         var _loc2_:§`#§ = null;
         if(this.§==§ && !this.§2r§(param1))
         {
            this.§==§.removeEventListener(Event.COMPLETE,this.§switch§);
            this.§==§.removeEventListener(Event.CANCEL,this.§8!2§);
            this.§==§.addEventListener(Event.COMPLETE,this.§switch§);
            this.§==§.addEventListener(Event.CANCEL,this.§8!2§);
            this.§==§.§>=§(param1);
         }
         if(this.§=S§ && !this.§&Y§(param1))
         {
            this.§=S§.removeEventListener(Event.COMPLETE,this.§5,§);
            this.§=S§.removeEventListener(Event.CANCEL,this.§[X§);
            this.§=S§.addEventListener(Event.COMPLETE,this.§5,§);
            this.§=S§.addEventListener(Event.CANCEL,this.§[X§);
            _loc2_ = § 7§.§[!>§(param1);
            if(_loc2_)
            {
               this.§=S§.§>=§(_loc2_.§5N§);
            }
         }
      }
      
      private function §switch§(param1:Event) : void
      {
         this.§==§.removeEventListener(Event.COMPLETE,this.§switch§);
         this.§==§.removeEventListener(Event.CANCEL,this.§8!2§);
         this.§13§ = true;
         if(this.§13§ && this.§?Z§)
         {
            this.§&O§(this.§6!Q§);
         }
      }
      
      private function §8!2§(param1:Event) : void
      {
         this.§==§.removeEventListener(Event.COMPLETE,this.§switch§);
         this.§==§.removeEventListener(Event.CANCEL,this.§8!2§);
         this.§;8§ = true;
      }
      
      private function §5,§(param1:Event) : void
      {
         this.§==§.removeEventListener(Event.COMPLETE,this.§5,§);
         this.§==§.removeEventListener(Event.CANCEL,this.§[X§);
         this.§?Z§ = true;
         if(this.§13§ && this.§?Z§)
         {
            this.§&O§(this.§6!Q§);
         }
      }
      
      private function §[X§(param1:Event) : void
      {
         this.§==§.removeEventListener(Event.COMPLETE,this.§5,§);
         this.§==§.removeEventListener(Event.CANCEL,this.§[X§);
         this.§?Z§ = true;
         if(this.§13§ && this.§?Z§)
         {
            this.§&O§(this.§6!Q§);
         }
      }
      
      public function get §7!_§() : §2w§
      {
         return this.§8!M§;
      }
      
      protected function §&O§(param1:§&!]§) : void
      {
         this.§&!+§ = false;
         this.§[4§ = false;
         if(§9!'§.§`!@§)
         {
            §9!'§.§`!@§.speed = 1;
         }
         this.mLevelEngine = new §,!'§(this);
         this.§4a§ = this.§,T§(param1.theme,this.§0o§.§[w§ / §7!4§,this.§7!_§,this.§]!M§.§6!0§());
         this.§4a§.§?B§(§7?§.§`!>§());
         this.§[!&§ = this.initLevelObjectManager(param1);
         this.§3V§ = this.initLevelSlingshot(param1);
         this.§+!Z§ = this.§-t§(this.§>n§,this.§8!M§);
         this.§]!M§.init();
         this.§in §();
         this.loadPreviousReplayData();
         this.mReadyToRun = true;
         if(this.§#!>§)
         {
            this.§#!>§.addEventListeners();
         }
      }
      
      protected function loadPreviousReplayData() : void
      {
         if(this.§#l§)
         {
            this.§5!>§ = §^!M§.§&O§(this.§#l§);
            this.§5!>§.speed = 1;
            this.§5!>§.play();
            this.§ use§ = -1000;
            this.§#l§ = null;
         }
      }
      
      public function §8#§(param1:String) : void
      {
         this.§#l§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§5!>§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§5!>§)
         {
            if(param1)
            {
               this.§5!>§.speed = Math.min(this.§5!>§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§5!>§.speed = Math.max(this.§5!>§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§5!>§)
         {
            this.§5!>§.speed = 1;
         }
      }
      
      protected function initLevelObjectManager(param1:§&!]§) : §6M§
      {
         return new §6M§(this,param1,new Sprite());
      }
      
      protected function §18§(param1:§&!]§) : §<I§
      {
         return new §<I§(this,param1);
      }
      
      protected function §,T§(param1:String, param2:Number, param3:§2w§, param4:Number) : §%B§
      {
         return new §%B§(param1,param2,param3,param4);
      }
      
      protected function initLevelSlingshot(param1:§&!]§) : §#K§
      {
         return new §#K§(this,param1,new Sprite());
      }
      
      protected function §-t§(param1:§5L§, param2:§2w§) : §<2§
      {
         return new §<2§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§&!]§ = this.§7B§();
         var _loc4_:§'A§;
         (_loc4_ = new §'A§()).left = 0;
         _loc4_.top = -§<I§.§0!2§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §<I§.§0!2§;
         _loc4_.right = _loc4_.left + §<I§.§]!;§;
         _loc4_.y = -13.929;
         _loc4_.x = §<I§.§]!;§;
         _loc4_.id = §<I§.§3!E§;
         _loc3_.§&[§(_loc4_);
         var _loc5_:§'A§;
         (_loc5_ = new §'A§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §<I§.§]!;§;
         _loc5_.bottom = _loc5_.top + §<I§.§0!2§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §<I§.§]!;§ / 2;
         _loc5_.id = §<I§.§,g§;
         _loc3_.§&[§(_loc5_);
         this.§'!,§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§0!1§ != null)
         {
            _loc3_.theme = §0!1§;
         }
         this.init(_loc3_);
      }
      
      protected function §'!,§(param1:§&!]§, param2:Boolean) : void
      {
         if(param2)
         {
            this.§0!5§(param1);
         }
      }
      
      protected function §7B§() : §&!]§
      {
         var _loc1_:§&!]§ = new §&!]§();
         _loc1_.§0!;§ = -12;
         return new §&!]§();
      }
      
      protected function §5j§() : Number
      {
         this.§^?§ ^= this.§^?§ << 21;
         this.§^?§ ^= this.§^?§ >>> 35;
         this.§^?§ ^= this.§^?§ << 4;
         return this.§^?§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §0!5§(param1:§&!]§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§`u§ = null;
         this.§^?§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§5j§() * 5;
               (_loc5_ = new §`u§()).x = 30 + _loc3_ * 10 + this.§5j§() * 9;
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
                  _loc5_.angle = 45 - this.§5j§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§5j§() * 3 - _loc3_ * 8;
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
                  _loc5_.angle = this.§5j§() * 360;
               }
               param1.addObject(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      private function §>>§() : void
      {
      }
      
      public function §in §() : void
      {
         if(§%B§.§0#§)
         {
            this.§"Q§(this.§4a§.§`!L§,false);
         }
         this.§"Q§(this.§+!Z§.§`Q§(§<2§.§`!J§),false);
         this.§"Q§(this.§+!Z§.§`Q§(§<2§.§&!H§),true);
         this.§"Q§(this.§+!Z§.§`Q§(§<2§.§^#§),true);
         this.§"Q§(this.§[!&§.§;!C§,true);
         this.§"Q§(this.§3V§.sprite,true);
         this.§"Q§(this.§+!Z§.§`Q§(§<2§.§]!X§),true);
         this.§"Q§(this.§4a§.§@Y§,false);
         if(§%B§.§0#§)
         {
            this.§"Q§(this.§4a§.§ !Y§,false);
         }
         this.§"Q§(this.§+!Z§.§`Q§(§<2§.§<X§),true);
         if(!§,!'§.§%!F§)
         {
         }
      }
      
      private function §"Q§(param1:Sprite, param2:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(param1);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         param1 /= §7?§.§&Z§;
         param2 /= §7?§.§&Z§;
         _loc3_.x = (param1 / §<I§.§,0§ + this.§]!M§.§[!L§ - §<I§.§5!S§ / §<I§.§,0§) * §7!4§;
         _loc3_.y = (param2 / §<I§.§,0§ + this.§]!M§.§<!F§ - §<I§.§+!G§ / §<I§.§,0§) * §7!4§;
         return _loc3_;
      }
      
      public function §]4§(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / §7!4§ + §<I§.§5!S§ / §<I§.§,0§ - this.§]!M§.§[!L§) * §<I§.§,0§;
         _loc3_.y = (param2 / §7!4§ + §<I§.§+!G§ / §<I§.§,0§ - this.§]!M§.§<!F§) * §<I§.§,0§;
         var _loc4_:Number = Math.max(§7?§.§&Z§,§7?§.§1H§);
         _loc3_.x *= _loc4_;
         _loc3_.y *= _loc4_;
         return _loc3_;
      }
      
      public function §]3§(param1:String, param2:Number, param3:Number) : void
      {
         this.§[!&§.addObject(param1,param2,param3);
      }
      
      public function §,!0§() : void
      {
         if(this.§%!X§)
         {
            this.§%!X§.visible = true;
            this.§%!X§.alpha = 0;
         }
         this.§2n§ = 0;
      }
      
      public function §<H§() : void
      {
         this.§8!-§ = new §65§(§!j§.§!2§,§!j§.§2!0§);
      }
      
      public function §^7§() : void
      {
         this.§8!-§ = null;
      }
      
      public function clearLevel() : void
      {
         if(this.§4a§)
         {
            this.§4a§.dispose();
            this.§4a§ = null;
         }
         if(this.§[!&§)
         {
            this.§[!&§.dispose();
            this.§[!&§ = null;
            this.§"!Z§ = null;
         }
         if(this.mLevelEngine)
         {
            if(!this.mLevelEngine.§?!X§)
            {
            }
            this.mLevelEngine.clear();
            this.mLevelEngine = null;
         }
         if(this.§0o§)
         {
            this.§0o§.clear();
            this.§0o§ = null;
         }
         if(this.§3V§)
         {
            this.§3V§.dispose();
            this.§3V§ = null;
         }
         if(this.§]!M§)
         {
            this.§]!M§.clear();
            this.§]!M§ = null;
         }
         if(this.§+!Z§)
         {
            this.§+!Z§.dispose();
            this.§+!Z§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§5!P§ = 0;
         this.§#5§ = 0;
         this.mReadyToRun = false;
         this.§;1§ = false;
         this.§2n§ = §!j§.§?M§;
         if(this.§#!Z§)
         {
            (this.§#!Z§ as §7]§).§ !N§.x = 0;
            (this.§#!Z§ as §7]§).§ !N§.y = 0;
         }
         if(this.§%!X§)
         {
            this.§%!X§.visible = false;
         }
         this.§5!>§ = null;
         this.§;_§ = null;
         if(this.§==§)
         {
            this.§==§.removeEventListener(Event.COMPLETE,this.§switch§);
            this.§==§.removeEventListener(Event.CANCEL,this.§8!2§);
         }
         if(this.§=S§)
         {
            this.§=S§.removeEventListener(Event.COMPLETE,this.§5,§);
            this.§=S§.removeEventListener(Event.CANCEL,this.§[X§);
         }
         this.§0f§();
         if(§9!'§.§7!Z§)
         {
            §9!'§.§7!Z§.color = 0;
         }
         if(this.§#!>§)
         {
            this.§#!>§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver() : void
      {
      }
      
      public function §^!N§() : String
      {
         if(this.§;_§)
         {
            return this.§;_§.toString();
         }
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         if(!this.mReadyToRun || !§9!'§.§%C§())
         {
            return 0;
         }
         if(this.§5!>§ && this.§5!>§.§#I§)
         {
            return this.§5a§(param1,param2,param3);
         }
         return this.§>!&§(param1,true,param2,param3);
      }
      
      protected function §>!&§(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         if(this.§&!+§)
         {
            param1 *= 0.2;
            if(§9!'§.§`!@§)
            {
               §9!'§.§`!@§.speed = 0.2;
            }
         }
         var _loc5_:Number = 0;
         this.§#5§ += param1;
         if(param3)
         {
            this.§5!P§ += param1;
            _loc5_ = this.mLevelEngine.§6!E§(this.§5!P§);
            this.§3V§.update(param1,param4);
            this.§5!P§ = _loc5_;
         }
         else
         {
            this.§[!&§.§2l§(param1);
            this.§5!P§ = 0;
         }
         if(param2)
         {
            this.§[!"§(param1,_loc5_);
         }
         return param1;
      }
      
      private function §5a§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc5_:Number = NaN;
         var _loc4_:Number = §,!'§.§false§ * 1000;
         if(this.§5!>§)
         {
            param1 *= this.§5!>§.speed;
            _loc5_ = this.§#5§ + param1;
            while(this.§#5§ + _loc4_ < _loc5_)
            {
               if(this.§#5§ + _loc4_ > this.§ use§)
               {
                  this.§5!>§.step(this);
                  this.§ use§ += _loc4_;
               }
               this.§>!&§(_loc4_,false,param2,param3);
            }
            if(_loc5_ > this.§ use§ + _loc4_)
            {
               this.§5!>§.step(this);
               this.§ use§ += _loc4_;
            }
            if(this.§#5§ < _loc5_)
            {
               this.§>!&§(_loc5_ - this.§#5§,true,param2,param3);
            }
            return param1;
         }
         return this.§>!&§(_loc4_,true,param2,param3);
      }
      
      private function §[!"§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.§4a§.update(param1);
         this.§[!&§.§<!@§(param1,param2);
         this.§`!0§();
         if(this.§2n§ < §!j§.§?M§)
         {
            this.§2n§ += param1;
            _loc3_ = §!j§.§?M§ / 2;
            _loc4_ = (-Math.abs(this.§2n§ - _loc3_) + _loc3_) * (§!j§.§`-§ / _loc3_);
            if(this.§%!X§)
            {
               this.§%!X§.alpha = _loc4_;
            }
         }
         else if(this.§%!X§)
         {
            this.§%!X§.visible = false;
         }
         if(this.§8!-§)
         {
            if(!this.§8!-§.§`X§(this.§]!M§,param1))
            {
               this.§^7§();
            }
         }
         this.§]!M§.§]!S§(param1);
         this.mLevelEngine.§2!@§();
         this.§+!Z§.update(param1);
      }
      
      public function §7!;§(param1:Number) : void
      {
         this.objects.§2l§(param1 * 1000);
         this.objects.§3!B§(param1 * 1000);
         this.§ set§();
      }
      
      public function §`!0§() : void
      {
         var _loc1_:§+0§ = null;
         if(this.§#5§ > this.§=m§ + 1000 / 30)
         {
            if(this.§ s§ != null)
            {
               for each(_loc1_ in this.§ s§)
               {
                  _loc1_.addTrail();
               }
            }
            this.§=m§ = this.§#5§;
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§+0§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.§[!&§.isPigsAlive(true))
            {
               _loc2_ = this.§[!&§.§+l§(true);
               _loc2_.§2P§.mTryToScream = §0q§.§<!6§;
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§[!&§.§%!-§());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            if(this.§[!&§.isPigsAlive(true))
            {
               _loc2_ = this.§[!&§.§+l§(true);
               _loc2_.§2P§.mTryToBlink = §0q§.§?r§;
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§[!&§.§%!-§());
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §7o§.§?2§;
         }
         §7@§.addScore(param1,param2);
         this.§#!>§.addScore(param1);
         if(param3 && param1 > 0 && !this.§[4§)
         {
            this.§`,§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §`,§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §7o§.§<!M§;
         }
         this.§+!Z§.addParticle(§7o§.§>!#§,§<2§.§<X§,§7o§.§%!C§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §7$§(param1:§+0§) : void
      {
         if(this.§ s§ == null)
         {
            this.§ s§ = new Array();
         }
         this.§ s§.push(param1);
      }
      
      public function §9K§() : void
      {
         this.§3V§.§9K§();
         this.§[!&§.§0!Q§();
         this.§[4§ = true;
      }
      
      public function §-M§(param1:§+0§) : void
      {
         this.§+!Z§.§-!9§(§<2§.§`!J§);
         if(this.§ s§.indexOf(param1) >= 0)
         {
            this.§ s§.splice(this.§ s§.indexOf(param1),1);
         }
         if(this.§ s§.length == 0)
         {
            this.§ s§ = null;
         }
      }
      
      public function §7_§(param1:§9k§, param2:Number, param3:Number) : void
      {
         this.§"!Z§ = this.§[!&§.addObject(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
         var _loc4_:Number = param1.name.toUpperCase() == "BIRD_GREEN" ? Number(§#K§.§ true§) : Number(§#K§.§3u§);
         if(param1.§3x§ > 1)
         {
            this.§"!Z§.§8!Z§(param1.§3x§);
            this.§"!Z§.§2P§.§2!>§();
         }
         if(param1.§2v§ != 0)
         {
            _loc4_ = param1.§2v§;
         }
         var _loc5_:Number = -_loc4_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc6_:Number = _loc4_ * param2 * Math.sin(param3 / (180 / Math.PI));
         this.§"!Z§.§`o§(new b2Vec2(_loc5_,_loc6_),false,true);
         this.camera.§-a§(§<I§.§0!'§);
         if(this.§;_§)
         {
            this.§;_§.§7_§(this.mLevelEngine.currentStep,param1.x,param1.y,param2,param3);
         }
      }
      
      public function activatePowerup() : void
      {
         this.§;1§ = true;
      }
      
      private function § set§() : void
      {
         if(!this.§;1§)
         {
            return;
         }
         this.§;1§ = false;
         if(this.activeObject is §4!9§ && !(this.activeObject as §4!9§).§;J§)
         {
            if(this.activeObject.activateSpecialPower(this.§<J§))
            {
               this.§+"§ = true;
            }
         }
         else
         {
            this.§[!&§.§&e§();
         }
         if(this.§;_§)
         {
            this.§;_§.§99§(this.mLevelEngine.currentStep);
         }
      }
      
      public function §>B§() : void
      {
         this.§[!&§.§>B§();
      }
      
      public function §;`§() : void
      {
         this.§[!&§.§<v§();
      }
      
      public function §"d§() : §&!]§
      {
         var _loc1_:§&!]§ = new §&!]§();
         _loc1_.§7z§ = this.§6!Q§.§7z§;
         _loc1_.§;!L§ = this.§6!Q§.§;!L§;
         this.§]!M§.§0§(_loc1_);
         this.§[!&§.§%!B§(_loc1_);
         this.§3V§.§-N§(_loc1_);
         _loc1_.theme = this.§4a§.§=M§();
         return _loc1_;
      }
      
      public function §8F§() : int
      {
         return this.§6!Q§.§;!L§;
      }
      
      public function §'P§() : int
      {
         return this.§6!Q§.§7z§;
      }
      
      public function §>,§(param1:int) : void
      {
         this.§6!Q§.§;!L§ = param1;
      }
      
      public function §^I§(param1:int) : void
      {
         this.§6!Q§.§7z§ = param1;
      }
      
      public function §`D§(param1:Number, param2:Number) : void
      {
         if(this.§0!^§)
         {
            this.§0!^§.§try§(param1,param2);
         }
         if(this.§]!M§)
         {
            this.§]!M§.§]!S§(0);
         }
      }
      
      public function get §;&§() : §&!]§
      {
         return this.§6!Q§;
      }
      
      public function get §<J§() : §6M§
      {
         return this.§[!&§;
      }
      
      protected function get §#!J§() : §9!'§
      {
         return this.§,a§;
      }
      
      public function get §"w§() : int
      {
         return §4!A§;
      }
   }
}
