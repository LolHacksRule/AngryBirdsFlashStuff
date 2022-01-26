package §0V§
{
   import § !b§.§&!'§;
   import § A§.§#K§;
   import § N§.§]M§;
   import §&=§.§4!K§;
   import §,+§.§@!E§;
   import §1!"§.§3!>§;
   import §1!"§.§=!D§;
   import §3§.DisplayObject;
   import §3§.Sprite;
   import §39§.§-W§;
   import §39§.§2e§;
   import §39§.§=R§;
   import §39§.§`!Y§;
   import §3d§.§,Q§;
   import §3d§.§20§;
   import §3d§.§6!7§;
   import §3d§.§@?§;
   import §8-§.§,!P§;
   import §94§.§&!7§;
   import §=?§.§>?§;
   import §>X§.§"^§;
   import §>X§.§7!%§;
   import §^=§.§0b§;
   import §^Q§.§,^§;
   import §^q§.b2Vec2;
   import §`n§.§#H§;
   import §`n§.§2!"§;
   import §`n§.§[R§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §`!O§
   {
      
      private static const §'3§:int = 20;
      
      public static const §<M§:Number = §,^§.§=!#§;
      
      public static const §80§:Number = §,^§.§,n§;
      
      public static const §?!O§:Number = 1 / 20;
      
      public static const §"!`§:Number = §,^§.§,n§ * §?!O§;
      
      public static const §;!-§:Number = §<M§ * §?!O§;
      
      public static const §50§:§@!E§ = new §@!E§(13 - 3);
      
      public static var §0!_§:Number = 1;
      
      protected static var §7=§:String = §=R§.§%!#§;
       
      
      protected var §%!X§:§@?§;
      
      private var §1§:§20§;
      
      private var §7w§:Array = null;
      
      protected var §`!a§:§0b§;
      
      public var mLevelEngine:§#B§;
      
      protected var §3!E§:§?0§;
      
      protected var §+P§:§,!P§;
      
      protected var §,5§:§^K§;
      
      protected var §'b§:§"^§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §&b§:Boolean = false;
      
      protected var §#!&§:Boolean = false;
      
      protected var §^!`§:Boolean = false;
      
      public var §3m§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §get §:Number;
      
      public var §-!a§:Number;
      
      private var §9!_§:Number;
      
      public var §5B§:§`!Y§;
      
      public var §@!8§:Boolean = false;
      
      private var § !6§:§73§;
      
      private var §>F§:Sprite;
      
      protected var §9!D§:§=R§;
      
      protected var §71§:§#K§ = null;
      
      private var §,§:EventDispatcher;
      
      private var §<o§:Array;
      
      private var §"!;§:Array;
      
      protected var §'!+§:§&!7§;
      
      private var §9'§:§&!'§;
      
      protected var §4=§:§#H§;
      
      protected var § D§:§2!"§;
      
      private var §9!V§:§[R§;
      
      private var §0B§:§[R§;
      
      private var §`g§:§[R§;
      
      private var §^4§:Stage;
      
      private var §87§:§-j§;
      
      protected var §>r§:§4!K§;
      
      protected var §]U§:§4!K§;
      
      protected var §5<§:Number = 0.0;
      
      protected var §#j§:String;
      
      private var §`f§:Boolean;
      
      protected var §'!G§:Boolean;
      
      protected var §6!P§:uint = 1.417339207E9;
      
      public var §4x§:Boolean;
      
      public function §`!O§(param1:Stage)
      {
         this.§"!;§ = [];
         super();
         this.§,§ = new EventDispatcher();
         this.§5B§ = new §`!Y§();
         this.§^4§ = param1;
         this.§4=§ = §#H§.§%b§;
         this.§ D§ = this.initAnimationManager(this.§4=§);
         this.§9!V§ = this.§"!&§();
         this.§0B§ = this.§#!8§();
         this.§`g§ = this.§%C§();
         var _loc2_:Stage3D = param1.stage3Ds[0];
         this.§'!+§ = new §&!7§(§73§,param1,new Rectangle(0,0,§,^§.§=!#§,§,^§.§,n§),_loc2_);
         §,^§.§?D§.addEventListener(Event.ENTER_FRAME,this.§'!+§.§[!Y§);
         _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§2![§,false,0,true);
         this.§'!+§.§;&§ = false;
         this.§'!+§.enableErrorChecking = false;
         this.§'!+§.§<!b§ = 2;
         this.§'!+§.§2%§();
      }
      
      public static function §'F§(param1:§20§, param2:§20§) : Number
      {
         var _loc3_:Number = param1.§"v§ - param2.§"v§;
         var _loc4_:Number = param1.§8!C§ - param2.§8!C§;
         return §%8§(_loc3_,_loc4_);
      }
      
      public static function §%8§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         if(!this.§>F§ && this.§>T§)
         {
            this.§>F§ = this.§ !6§.§&^§;
         }
         return this.§>F§;
      }
      
      public function get §>T§() : Sprite
      {
         if(!this.§ !6§)
         {
            this.§ !6§ = this.§'!+§.§0!4§ as §73§;
            this.§ !6§.§#U§ = false;
         }
         return this.§ !6§;
      }
      
      private function get §^!2§() : DisplayObject
      {
         if(this.§>T§)
         {
            return (this.§>T§ as §73§).§^!2§;
         }
         return null;
      }
      
      public function get §2!N§() : §2!"§
      {
         return this.§ D§;
      }
      
      public function get §1S§() : §#H§
      {
         return this.§4=§;
      }
      
      public function get camera() : §,!P§
      {
         return this.§+P§;
      }
      
      public function get objects() : §@?§
      {
         return this.§%!X§;
      }
      
      public function get particles() : §"^§
      {
         return this.§'b§;
      }
      
      public function get background() : §0b§
      {
         return this.§`!a§;
      }
      
      public function get slingshot() : §^K§
      {
         return this.§,5§;
      }
      
      public function get activeObject() : §20§
      {
         return this.§1§;
      }
      
      public function get §-6§() : §?0§
      {
         return this.§3!E§;
      }
      
      public function get stage() : Stage
      {
         return this.§^4§;
      }
      
      public function get §^p§() : §[R§
      {
         return this.§`g§;
      }
      
      protected function get §<Q§() : §[R§
      {
         return this.§9!V§;
      }
      
      public function set activeObject(param1:§20§) : void
      {
         this.§1§ = param1;
      }
      
      public function set §47§(param1:Boolean) : void
      {
         this.§'!G§ = param1;
      }
      
      public function clear() : void
      {
         if(this.§9'§)
         {
            this.§9'§.dispose();
         }
         if(this.§4=§)
         {
            this.§4=§.dispose();
         }
         if(this.§9!V§ && this.§9!V§.§1S§)
         {
            this.§9!V§.§1S§.dispose();
         }
         if(this.§`g§ && this.§`g§.§1S§)
         {
            this.§`g§.§1S§.dispose();
         }
         if(this.§'!+§)
         {
            this.§'!+§.dispose();
         }
      }
      
      protected function §"!&§() : §[R§
      {
         return null;
      }
      
      protected function §#!8§() : §[R§
      {
         return null;
      }
      
      protected function §%C§() : §[R§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§#H§) : §2!"§
      {
         return new §2!"§(param1);
      }
      
      public function §5W§(param1:Boolean) : void
      {
         if(§&!7§.§>!M§)
         {
            if(param1)
            {
               §&!7§.§>!M§.start();
            }
            else
            {
               §&!7§.§>!M§.stop();
               §&!7§.§>!M§.color = 0;
            }
         }
      }
      
      public function §@!_§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function §"1§(param1:§#K§) : void
      {
         if(this.§71§ != null)
         {
            this.§71§.removeEventListeners();
         }
         this.§71§ = param1;
         if(this.mReadyToRun)
         {
            this.§71§.addEventListeners();
         }
      }
      
      public function §=q§() : §4!K§
      {
         return this.§>r§;
      }
      
      public function §;!W§(param1:§&!'§, param2:Array, param3:Function) : void
      {
         this.§9'§ = param1;
         var _loc4_:int = this.§9'§.§?8§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§4=§.§3!-§(this.§9'§.§&8§(_loc5_));
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§,§.addEventListener(Event.INIT,param3);
            this.§"!;§.push(param3);
         }
         if(this.§"S§(param2))
         {
            this.§5!2§();
         }
      }
      
      private function §"S§(param1:Array) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.§4=§.§44§())
         {
            _loc2_ = this.§4=§.§<[§ / 1000;
            _loc3_ = this.§4=§.§0J§ / 1000;
            §]M§.log("\n\nMain texture manager memory usage:\n   textures " + _loc2_ + " kilobytes\n   bitmaps " + _loc3_ + " kilobytes\n\n");
            this.initializeAnimations(param1);
            return true;
         }
         this.§<o§ = param1.concat();
         return false;
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         this.§ D§.initializeAnimations(param1);
      }
      
      private function §2![§(param1:Event) : void
      {
         this.§4=§.§,!T§();
         if(this.§<Q§ && this.§<Q§.§1S§)
         {
            this.§<Q§.§1S§.§,!T§();
         }
         if(this.§^p§ && this.§^p§.§1S§)
         {
            this.§^p§.§1S§.§,!T§();
         }
         if(this.§<o§)
         {
            this.§"S§(this.§<o§);
            this.§<o§ = null;
            this.§5!2§();
         }
         if(this.§71§ != null && this.mReadyToRun)
         {
            this.§71§.addEventListeners();
         }
         if(this.§9!V§)
         {
            this.§9!V§.§44§();
         }
         if(this.§`g§)
         {
            if(this.§`g§.§1S§)
            {
               this.§`g§.§1S§.§,!T§();
               this.§`g§.§44§();
            }
         }
      }
      
      private function §5!2§() : void
      {
         this.§,§.dispatchEvent(new Event(Event.INIT));
         this.§]v§();
      }
      
      private function §]v§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§"!;§)
         {
            this.§,§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§"!;§ = [];
      }
      
      public function init(param1:§=R§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§3!E§ = new §?0§(this,param1);
         this.§+P§ = this.§1N§(param1);
         this.§get § = 0;
         this.§-!a§ = 0;
         this.§9!_§ = 0;
         this.§`f§ = false;
         this.mReadyToRun = false;
         this.§&b§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         §7=§ = param1.theme;
         this.§9!D§ = param1;
         this.§#!&§ = this.§7Z§(param1.theme);
         this.§^!`§ = this.§[! §(param1.theme);
         if(this.§#!&§ && this.§^!`§)
         {
            this.§5M§(param1);
         }
         else
         {
            this.§5!N§(param1.theme);
         }
         this.initReplay();
         §;9§.init();
      }
      
      protected function initReplay() : void
      {
         this.§>r§ = new §4!K§(§-W§.§,[§);
      }
      
      protected function §7Z§(param1:String) : Boolean
      {
         if(this.§9!V§)
         {
            return false;
         }
         return true;
      }
      
      protected function §[! §(param1:String) : Boolean
      {
         var _loc2_:§=!D§ = null;
         if(this.§0B§)
         {
            _loc2_ = §3!>§.§?!&§(param1);
            if(_loc2_)
            {
               if(_loc2_.§6!=§ && !this.§0B§.§-0§(_loc2_.§6!=§))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function §5!N§(param1:String) : void
      {
         var _loc2_:§=!D§ = null;
         if(this.§9!V§ && !this.§7Z§(param1))
         {
            this.§9!V§.removeEventListener(Event.COMPLETE,this.§+-§);
            this.§9!V§.removeEventListener(Event.CANCEL,this.§=!3§);
            this.§9!V§.addEventListener(Event.COMPLETE,this.§+-§);
            this.§9!V§.addEventListener(Event.CANCEL,this.§=!3§);
            this.§9!V§.§?!W§(param1);
         }
         if(this.§0B§ && !this.§[! §(param1))
         {
            this.§0B§.removeEventListener(Event.COMPLETE,this.§+!,§);
            this.§0B§.removeEventListener(Event.CANCEL,this.§]!Y§);
            this.§0B§.addEventListener(Event.COMPLETE,this.§+!,§);
            this.§0B§.addEventListener(Event.CANCEL,this.§]!Y§);
            _loc2_ = §3!>§.§?!&§(param1);
            if(_loc2_)
            {
               this.§0B§.§?!W§(_loc2_.§6!=§);
            }
         }
      }
      
      private function §+-§(param1:Event) : void
      {
         this.§9!V§.removeEventListener(Event.COMPLETE,this.§+-§);
         this.§9!V§.removeEventListener(Event.CANCEL,this.§=!3§);
         this.§#!&§ = true;
         if(this.§#!&§ && this.§^!`§)
         {
            this.§5M§(this.§9!D§);
         }
      }
      
      private function §=!3§(param1:Event) : void
      {
         this.§9!V§.removeEventListener(Event.COMPLETE,this.§+-§);
         this.§9!V§.removeEventListener(Event.CANCEL,this.§=!3§);
         this.§&b§ = true;
      }
      
      private function §+!,§(param1:Event) : void
      {
         this.§9!V§.removeEventListener(Event.COMPLETE,this.§+!,§);
         this.§9!V§.removeEventListener(Event.CANCEL,this.§]!Y§);
         this.§^!`§ = true;
         if(this.§#!&§ && this.§^!`§)
         {
            this.§5M§(this.§9!D§);
         }
      }
      
      private function §]!Y§(param1:Event) : void
      {
         this.§9!V§.removeEventListener(Event.COMPLETE,this.§+!,§);
         this.§9!V§.removeEventListener(Event.CANCEL,this.§]!Y§);
         this.§^!`§ = true;
         if(this.§#!&§ && this.§^!`§)
         {
            this.§5M§(this.§9!D§);
         }
      }
      
      public function get §8D§() : §#H§
      {
         return this.§4=§;
      }
      
      protected function §5M§(param1:§=R§) : void
      {
         this.§'!G§ = false;
         this.§4x§ = false;
         if(§&!7§.§ h§)
         {
            §&!7§.§ h§.speed = 1;
         }
         this.mLevelEngine = new §#B§(this);
         this.§`!a§ = this.§2F§(param1.theme,this.§3!E§.§+!Z§ / §?!O§,this.§8D§,this.§+P§.§?,§());
         this.§`!a§.§ !F§(§,^§.§2w§());
         this.§%!X§ = this.initLevelObjectManager(param1);
         this.§,5§ = this.initLevelSlingshot(param1);
         this.§'b§ = this.§use §(this.§ D§,this.§4=§);
         this.§+P§.init();
         this.§ T§();
         this.loadPreviousReplayData();
         this.mReadyToRun = true;
         if(this.§71§)
         {
            this.§71§.addEventListeners();
         }
      }
      
      protected function loadPreviousReplayData() : void
      {
         if(this.§#j§)
         {
            this.§]U§ = §4!K§.§5M§(this.§#j§);
            this.§]U§.speed = 1;
            this.§]U§.play();
            this.§5<§ = -1000;
            this.§#j§ = null;
         }
      }
      
      public function §]!@§(param1:String) : void
      {
         this.§#j§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§]U§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§]U§)
         {
            if(param1)
            {
               this.§]U§.speed = Math.min(this.§]U§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§]U§.speed = Math.max(this.§]U§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§]U§)
         {
            this.§]U§.speed = 1;
         }
      }
      
      protected function initLevelObjectManager(param1:§=R§) : §@?§
      {
         return new §@?§(this,param1,new Sprite());
      }
      
      protected function §1N§(param1:§=R§) : §,!P§
      {
         return new §,!P§(this,param1);
      }
      
      protected function §2F§(param1:String, param2:Number, param3:§#H§, param4:Number) : §0b§
      {
         return new §0b§(param1,param2,param3,param4);
      }
      
      protected function initLevelSlingshot(param1:§=R§) : §^K§
      {
         return new §^K§(this,param1,new Sprite());
      }
      
      protected function §use §(param1:§2!"§, param2:§#H§) : §"^§
      {
         return new §"^§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§=R§ = this.§`!`§();
         var _loc4_:§2e§;
         (_loc4_ = new §2e§()).left = 0;
         _loc4_.top = -§,!P§.§^h§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §,!P§.§^h§;
         _loc4_.right = _loc4_.left + §,!P§.§&U§;
         _loc4_.y = -13.929;
         _loc4_.x = §,!P§.§&U§;
         _loc4_.id = §,!P§.§`!?§;
         _loc3_.§^7§(_loc4_);
         var _loc5_:§2e§;
         (_loc5_ = new §2e§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §,!P§.§&U§;
         _loc5_.bottom = _loc5_.top + §,!P§.§^h§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §,!P§.§&U§ / 2;
         _loc5_.id = §,!P§.§93§;
         _loc3_.§^7§(_loc5_);
         this.§75§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§7=§ != null)
         {
            _loc3_.theme = §7=§;
         }
         this.init(_loc3_);
      }
      
      protected function §75§(param1:§=R§, param2:Boolean) : void
      {
         if(param2)
         {
            this.§<!N§(param1);
         }
      }
      
      protected function §`!`§() : §=R§
      {
         var _loc1_:§=R§ = new §=R§();
         _loc1_.§`!§ = -12;
         return new §=R§();
      }
      
      protected function §-!Y§() : Number
      {
         this.§6!P§ ^= this.§6!P§ << 21;
         this.§6!P§ ^= this.§6!P§ >>> 35;
         this.§6!P§ ^= this.§6!P§ << 4;
         return this.§6!P§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §<!N§(param1:§=R§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§>?§ = null;
         this.§6!P§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§-!Y§() * 5;
               (_loc5_ = new §>?§()).x = 30 + _loc3_ * 10 + this.§-!Y§() * 9;
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
                  _loc5_.angle = 45 - this.§-!Y§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§-!Y§() * 3 - _loc3_ * 8;
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
                  _loc5_.angle = this.§-!Y§() * 360;
               }
               param1.addObject(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      private function §%!<§() : void
      {
      }
      
      public function § T§() : void
      {
         if(§0b§.§`6§)
         {
            this.§##§(this.§`!a§.§ 2§,false);
         }
         this.§##§(this.§'b§.§,!0§(§"^§.§4<§),false);
         this.§##§(this.§'b§.§,!0§(§"^§.§ $§),true);
         this.§##§(this.§'b§.§,!0§(§"^§.§4H§),true);
         this.§##§(this.§%!X§.§"b§,true);
         this.§##§(this.§,5§.sprite,true);
         this.§##§(this.§'b§.§,!0§(§"^§.§<!L§),true);
         this.§##§(this.§`!a§.§%=§,false);
         if(§0b§.§`6§)
         {
            this.§##§(this.§`!a§.§14§,false);
         }
         this.§##§(this.§'b§.§,!0§(§"^§.§<!H§),true);
      }
      
      private function §##§(param1:Sprite, param2:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(param1);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         param1 /= §,^§.§^!a§;
         param2 /= §,^§.§^!a§;
         _loc3_.x = (param1 / §,!P§.§#!"§ + this.§+P§.§>k§ - §,!P§.§+!5§ / §,!P§.§#!"§) * §?!O§;
         _loc3_.y = (param2 / §,!P§.§#!"§ + this.§+P§.§<O§ - §,!P§.§^!B§ / §,!P§.§#!"§) * §?!O§;
         return _loc3_;
      }
      
      public function §3!`§(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / §?!O§ + §,!P§.§+!5§ / §,!P§.§#!"§ - this.§+P§.§>k§) * §,!P§.§#!"§;
         _loc3_.y = (param2 / §?!O§ + §,!P§.§^!B§ / §,!P§.§#!"§ - this.§+P§.§<O§) * §,!P§.§#!"§;
         var _loc4_:Number = Math.max(§,^§.§^!a§,§,^§.§=%§);
         _loc3_.x *= _loc4_;
         _loc3_.y *= _loc4_;
         return _loc3_;
      }
      
      public function §>m§(param1:String, param2:Number, param3:Number) : void
      {
         this.§%!X§.addObject(param1,param2,param3);
      }
      
      public function §@$§() : void
      {
         if(this.§^!2§)
         {
            this.§^!2§.visible = true;
            this.§^!2§.alpha = 0;
         }
         this.§3m§ = 0;
      }
      
      public function §'!H§() : void
      {
         this.§87§ = new §-j§(§6d§.§]P§,§6d§.§2!U§);
      }
      
      public function §9!K§() : void
      {
         this.§87§ = null;
      }
      
      public function clearLevel() : void
      {
         if(this.§`!a§)
         {
            this.§`!a§.dispose();
            this.§`!a§ = null;
         }
         if(this.§%!X§)
         {
            this.§%!X§.dispose();
            this.§%!X§ = null;
            this.§1§ = null;
         }
         if(this.mLevelEngine)
         {
            if(!this.mLevelEngine.§=w§)
            {
            }
            this.mLevelEngine.clear();
            this.mLevelEngine = null;
         }
         if(this.§3!E§)
         {
            this.§3!E§.clear();
            this.§3!E§ = null;
         }
         if(this.§,5§)
         {
            this.§,5§.dispose();
            this.§,5§ = null;
         }
         if(this.§+P§)
         {
            this.§+P§.clear();
            this.§+P§ = null;
         }
         if(this.§'b§)
         {
            this.§'b§.dispose();
            this.§'b§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§get § = 0;
         this.§-!a§ = 0;
         this.mReadyToRun = false;
         this.§`f§ = false;
         this.§3m§ = §6d§.§]m§;
         if(this.§>T§)
         {
            (this.§>T§ as §73§).§3<§.x = 0;
            (this.§>T§ as §73§).§3<§.y = 0;
         }
         if(this.§^!2§)
         {
            this.§^!2§.visible = false;
         }
         this.§]U§ = null;
         this.§>r§ = null;
         if(this.§9!V§)
         {
            this.§9!V§.removeEventListener(Event.COMPLETE,this.§+-§);
            this.§9!V§.removeEventListener(Event.CANCEL,this.§=!3§);
         }
         if(this.§0B§)
         {
            this.§0B§.removeEventListener(Event.COMPLETE,this.§+!,§);
            this.§0B§.removeEventListener(Event.CANCEL,this.§]!Y§);
         }
         this.§]v§();
         if(§&!7§.§>!M§)
         {
            §&!7§.§>!M§.color = 0;
         }
         if(this.§71§)
         {
            this.§71§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver() : void
      {
      }
      
      public function §!!2§() : String
      {
         if(this.§>r§)
         {
            return this.§>r§.toString();
         }
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         if(!this.mReadyToRun || !§&!7§.§4!R§())
         {
            return 0;
         }
         if(this.§]U§ && this.§]U§.§6G§)
         {
            return this.§1@§(param1,param2,param3);
         }
         return this.§0e§(param1,true,param2,param3);
      }
      
      protected function §0e§(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         if(this.§'!G§)
         {
            param1 *= 0.2;
            if(§&!7§.§ h§)
            {
               §&!7§.§ h§.speed = 0.2;
            }
         }
         var _loc5_:Number = 0;
         this.§-!a§ += param1;
         if(param3)
         {
            this.§get § += param1;
            _loc5_ = this.mLevelEngine.§9!+§(this.§get §);
            this.§,5§.update(param1,param4);
            this.§get § = _loc5_;
         }
         else
         {
            this.§%!X§.§6T§(param1);
            this.§get § = 0;
         }
         if(param2)
         {
            this.§=L§(param1,_loc5_);
         }
         return param1;
      }
      
      private function §1@§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc5_:Number = NaN;
         var _loc4_:Number = §#B§.§>,§ * 1000;
         if(this.§]U§)
         {
            param1 *= this.§]U§.speed;
            _loc5_ = this.§-!a§ + param1;
            while(this.§-!a§ + _loc4_ < _loc5_)
            {
               if(this.§-!a§ + _loc4_ > this.§5<§)
               {
                  this.§]U§.step(this);
                  this.§5<§ += _loc4_;
               }
               this.§0e§(_loc4_,false,param2,param3);
            }
            if(_loc5_ > this.§5<§ + _loc4_)
            {
               this.§]U§.step(this);
               this.§5<§ += _loc4_;
            }
            if(this.§-!a§ < _loc5_)
            {
               this.§0e§(_loc5_ - this.§-!a§,true,param2,param3);
            }
            return param1;
         }
         return this.§0e§(_loc4_,true,param2,param3);
      }
      
      private function §=L§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.§`!a§.update(param1);
         this.§%!X§.§?w§(param1,param2);
         this.§6!a§();
         if(this.§3m§ < §6d§.§]m§)
         {
            this.§3m§ += param1;
            _loc3_ = §6d§.§]m§ / 2;
            _loc4_ = (-Math.abs(this.§3m§ - _loc3_) + _loc3_) * (§6d§.§5!]§ / _loc3_);
            if(this.§^!2§)
            {
               this.§^!2§.alpha = _loc4_;
            }
         }
         else if(this.§^!2§)
         {
            this.§^!2§.visible = false;
         }
         if(this.§87§)
         {
            if(!this.§87§.§7D§(this.§+P§,param1))
            {
               this.§9!K§();
            }
         }
         this.§+P§.§%2§(param1);
         this.mLevelEngine.§7!]§();
         this.§'b§.update(param1);
      }
      
      public function §9m§(param1:Number) : void
      {
         this.objects.§6T§(param1 * 1000);
         this.objects.§`!7§(param1 * 1000);
         this.§,!6§();
      }
      
      public function §6!a§() : void
      {
         var _loc1_:§20§ = null;
         if(this.§-!a§ > this.§9!_§ + 1000 / 30)
         {
            if(this.§7w§ != null)
            {
               for each(_loc1_ in this.§7w§)
               {
                  _loc1_.addTrail();
               }
            }
            this.§9!_§ = this.§-!a§;
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§20§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.§%!X§.isPigsAlive(true))
            {
               _loc2_ = this.§%!X§.§!y§(true);
               _loc2_.§5!@§.mTryToScream = §,Q§.§<!&§;
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§%!X§.§@!`§());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            if(this.§%!X§.isPigsAlive(true))
            {
               _loc2_ = this.§%!X§.§!y§(true);
               _loc2_.§5!@§.mTryToBlink = §,Q§.§+!]§;
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§%!X§.§@!`§());
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §7!%§.§%!§;
         }
         §;9§.addScore(param1,param2);
         this.§71§.addScore(param1);
         if(param3 && param1 > 0 && !this.§4x§)
         {
            this.§^! §(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §^! §(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §7!%§.§0O§;
         }
         this.§'b§.addParticle(§7!%§.§`!!§,§"^§.§<!H§,§7!%§.§3!7§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §7!J§(param1:§20§) : void
      {
         if(this.§7w§ == null)
         {
            this.§7w§ = new Array();
         }
         this.§7w§.push(param1);
      }
      
      public function §^^§() : void
      {
         this.§,5§.§^^§();
         this.§%!X§.§?!N§();
         this.§4x§ = true;
      }
      
      public function §8W§(param1:§20§) : void
      {
         this.§'b§.§<!C§(§"^§.§4<§);
         if(this.§7w§.indexOf(param1) >= 0)
         {
            this.§7w§.splice(this.§7w§.indexOf(param1),1);
         }
         if(this.§7w§.length == 0)
         {
            this.§7w§ = null;
         }
      }
      
      public function §77§(param1:§6!G§, param2:Number, param3:Number) : void
      {
         this.§1§ = this.§%!X§.addObject(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
         var _loc4_:Number = param1.name.toUpperCase() == "BIRD_GREEN" ? Number(§^K§.§7c§) : Number(§^K§.§+!O§);
         if(param1.§@]§ > 1)
         {
            this.§1§.§-K§(param1.§@]§);
            this.§1§.§5!@§.§+'§();
         }
         if(param1.§7v§ != 0)
         {
            _loc4_ = param1.§7v§;
         }
         var _loc5_:Number = -_loc4_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc6_:Number = _loc4_ * param2 * Math.sin(param3 / (180 / Math.PI));
         this.§1§.§,D§(new b2Vec2(_loc5_,_loc6_),false,true);
         this.camera.§>U§(§,!P§.§-!0§);
         if(this.§>r§)
         {
            this.§>r§.§77§(this.mLevelEngine.currentStep,param1.x,param1.y,param2,param3);
         }
      }
      
      public function activatePowerup() : void
      {
         this.§`f§ = true;
      }
      
      private function §,!6§() : void
      {
         if(!this.§`f§)
         {
            return;
         }
         this.§`f§ = false;
         if(this.activeObject is §6!7§ && !(this.activeObject as §6!7§).§4r§)
         {
            if(this.activeObject.activateSpecialPower(this.§1?§))
            {
               this.§@!8§ = true;
            }
         }
         else
         {
            this.§%!X§.§;!L§();
         }
         if(this.§>r§)
         {
            this.§>r§.§">§(this.mLevelEngine.currentStep);
         }
      }
      
      public function §-y§() : void
      {
         this.§%!X§.§-y§();
      }
      
      public function §4f§() : void
      {
         this.§%!X§.§2!%§();
      }
      
      public function §4>§() : §=R§
      {
         var _loc1_:§=R§ = new §=R§();
         _loc1_.§2m§ = this.§9!D§.§2m§;
         _loc1_.§5+§ = this.§9!D§.§5+§;
         this.§+P§.§3!L§(_loc1_);
         this.§%!X§.§>!B§(_loc1_);
         this.§,5§.§[!5§(_loc1_);
         _loc1_.theme = this.§`!a§.§ set§();
         return _loc1_;
      }
      
      public function §`T§() : int
      {
         return this.§9!D§.§5+§;
      }
      
      public function §8z§() : int
      {
         return this.§9!D§.§2m§;
      }
      
      public function §^!S§(param1:int) : void
      {
         this.§9!D§.§5+§ = param1;
      }
      
      public function §"p§(param1:int) : void
      {
         this.§9!D§.§2m§ = param1;
      }
      
      public function §]!J§(param1:Number, param2:Number) : void
      {
         if(this.§ !6§)
         {
            this.§ !6§.§1!Y§(param1,param2);
         }
         if(this.§+P§)
         {
            this.§+P§.§%2§(0);
         }
      }
      
      public function get §?!J§() : §=R§
      {
         return this.§9!D§;
      }
      
      public function get §1?§() : §@?§
      {
         return this.§%!X§;
      }
      
      protected function get §9!;§() : §&!7§
      {
         return this.§'!+§;
      }
      
      public function get §3+§() : int
      {
         return §'3§;
      }
   }
}
