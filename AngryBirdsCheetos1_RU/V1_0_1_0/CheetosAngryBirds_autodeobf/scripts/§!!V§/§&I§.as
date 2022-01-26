package §!!V§
{
   import § t§.§?U§;
   import §"!S§.§"_§;
   import §"4§.§<h§;
   import §%t§.§@!%§;
   import §&!5§.DisplayObject;
   import §&!5§.Sprite;
   import §&!B§.b2Vec2;
   import §-D§.§[h§;
   import §6%§.§;w§;
   import §7k§.§#>§;
   import §8e§.§"!U§;
   import §8e§.§7!H§;
   import §9!2§.§!v§;
   import §9!2§.§'![§;
   import §9!2§.§0!5§;
   import §>!@§.§1A§;
   import §>8§.§#%§;
   import §>8§.§+!<§;
   import §>8§.§-!H§;
   import §>8§.§?2§;
   import §@-§.§-N§;
   import §@-§.§3!6§;
   import §]!+§.§";§;
   import §]!+§.§%j§;
   import §]!+§.§'§;
   import §]!+§.§`H§;
   import §^f§.§@!I§;
   import §`!@§.§^v§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §&I§
   {
      
      private static const §-!N§:int = 20;
      
      public static const §?!>§:Number = §"_§.§]!`§;
      
      public static const §'!=§:Number = §"_§.§-$§;
      
      public static const §]!H§:Number = 1 / 20;
      
      public static const §7P§:Number = §"_§.§-$§ * §]!H§;
      
      public static const §`!3§:Number = §?!>§ * §]!H§;
      
      public static const §#!`§:§^v§ = new §^v§(13 - 3);
      
      public static var §=! §:Number = 1;
      
      protected static var §@V§:String = §#%§.§+x§;
       
      
      protected var §+!>§:§'§;
      
      private var §?r§:§";§;
      
      private var §@!L§:Array = null;
      
      protected var §9!]§:§@!I§;
      
      public var mLevelEngine:§^=§;
      
      protected var §9H§:§@!§;
      
      protected var §<<§:§?U§;
      
      protected var §%f§:§<!>§;
      
      protected var §1J§:§7!H§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §+q§:Boolean = false;
      
      protected var §6!@§:Boolean = false;
      
      protected var §8D§:Boolean = false;
      
      public var §#-§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §&!=§:Number;
      
      public var §9!G§:Number;
      
      private var §"0§:Number;
      
      public var §"1§:§+!<§;
      
      public var §-![§:Boolean = false;
      
      private var §3k§:§-d§;
      
      private var §6!R§:Sprite;
      
      protected var §-!-§:§#%§;
      
      protected var §`%§:§[h§ = null;
      
      private var §5&§:EventDispatcher;
      
      private var §0I§:Array;
      
      private var §1!Q§:Array;
      
      protected var §9!S§:§<h§;
      
      private var §%!Y§:§#>§;
      
      protected var §5-§:§'![§;
      
      protected var §;!U§:§0!5§;
      
      private var §6a§:§!v§;
      
      private var §44§:§!v§;
      
      private var §%O§:§!v§;
      
      private var §%!7§:Stage;
      
      private var §0>§:§8w§;
      
      protected var §-!I§:§1A§;
      
      protected var §[e§:§1A§;
      
      protected var §?Q§:Number = 0.0;
      
      protected var §2!7§:String;
      
      private var §1![§:Boolean;
      
      protected var §[M§:Boolean;
      
      protected var §29§:uint = 1.417339207E9;
      
      public var §1>§:Boolean;
      
      public function §&I§(param1:Stage)
      {
         this.§1!Q§ = [];
         super();
         this.§5&§ = new EventDispatcher();
         this.§"1§ = new §+!<§();
         this.§%!7§ = param1;
         this.§5-§ = §'![§.§0E§;
         this.§;!U§ = this.initAnimationManager(this.§5-§);
         this.§6a§ = this.§ e§();
         this.§44§ = this.§@v§();
         this.§%O§ = this.§<S§();
         var _loc2_:Stage3D = param1.stage3Ds[0];
         this.§9!S§ = new §<h§(§-d§,param1,new Rectangle(0,0,§"_§.§]!`§,§"_§.§-$§),_loc2_);
         §"_§.§[!P§.addEventListener(Event.ENTER_FRAME,this.§9!S§.§,!^§);
         _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§=k§,false,0,true);
         this.§9!S§.§ 2§ = false;
         this.§9!S§.enableErrorChecking = false;
         this.§9!S§.§6!X§ = 2;
         this.§9!S§.§3q§();
      }
      
      public static function §6!"§(param1:§";§, param2:§";§) : Number
      {
         var _loc3_:Number = param1.§^N§ - param2.§^N§;
         var _loc4_:Number = param1.§&!^§ - param2.§&!^§;
         return §0!N§(_loc3_,_loc4_);
      }
      
      public static function §0!N§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         if(!this.§6!R§ && this.§2d§)
         {
            this.§6!R§ = this.§3k§.§]i§;
         }
         return this.§6!R§;
      }
      
      public function get §2d§() : Sprite
      {
         if(!this.§3k§)
         {
            this.§3k§ = this.§9!S§.§`q§ as §-d§;
            this.§3k§.§7!9§ = false;
         }
         return this.§3k§;
      }
      
      private function get §3!A§() : DisplayObject
      {
         if(this.§2d§)
         {
            return (this.§2d§ as §-d§).§3!A§;
         }
         return null;
      }
      
      public function get §&"§() : §0!5§
      {
         return this.§;!U§;
      }
      
      public function get §2!#§() : §'![§
      {
         return this.§5-§;
      }
      
      public function get camera() : §?U§
      {
         return this.§<<§;
      }
      
      public function get objects() : §'§
      {
         return this.§+!>§;
      }
      
      public function get particles() : §7!H§
      {
         return this.§1J§;
      }
      
      public function get background() : §@!I§
      {
         return this.§9!]§;
      }
      
      public function get slingshot() : §<!>§
      {
         return this.§%f§;
      }
      
      public function get activeObject() : §";§
      {
         return this.§?r§;
      }
      
      public function get §,Q§() : §@!§
      {
         return this.§9H§;
      }
      
      public function get stage() : Stage
      {
         return this.§%!7§;
      }
      
      public function get §"!2§() : §!v§
      {
         return this.§%O§;
      }
      
      protected function get §,n§() : §!v§
      {
         return this.§6a§;
      }
      
      public function set activeObject(param1:§";§) : void
      {
         this.§?r§ = param1;
      }
      
      public function set §7J§(param1:Boolean) : void
      {
         this.§[M§ = param1;
      }
      
      public function clear() : void
      {
         if(this.§%!Y§)
         {
            this.§%!Y§.dispose();
         }
         if(this.§5-§)
         {
            this.§5-§.dispose();
         }
         if(this.§6a§ && this.§6a§.§2!#§)
         {
            this.§6a§.§2!#§.dispose();
         }
         if(this.§%O§ && this.§%O§.§2!#§)
         {
            this.§%O§.§2!#§.dispose();
         }
         if(this.§9!S§)
         {
            this.§9!S§.dispose();
         }
      }
      
      protected function § e§() : §!v§
      {
         return null;
      }
      
      protected function §@v§() : §!v§
      {
         return null;
      }
      
      protected function §<S§() : §!v§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§'![§) : §0!5§
      {
         return new §0!5§(param1);
      }
      
      public function §[!U§(param1:Boolean) : void
      {
         if(§<h§.§%!]§)
         {
            if(param1)
            {
               §<h§.§%!]§.start();
            }
            else
            {
               §<h§.§%!]§.stop();
               §<h§.§%!]§.color = 0;
            }
         }
      }
      
      public function §+Y§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function §>!'§(param1:§[h§) : void
      {
         if(this.§`%§ != null)
         {
            this.§`%§.removeEventListeners();
         }
         this.§`%§ = param1;
         if(this.mReadyToRun)
         {
            this.§`%§.addEventListeners();
         }
      }
      
      public function §@c§() : §1A§
      {
         return this.§-!I§;
      }
      
      public function §?G§(param1:§#>§, param2:Array, param3:Function) : void
      {
         this.§%!Y§ = param1;
         var _loc4_:int = this.§%!Y§.§[Y§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§5-§.§?n§(this.§%!Y§.§]!1§(_loc5_));
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§5&§.addEventListener(Event.INIT,param3);
            this.§1!Q§.push(param3);
         }
         if(this.§5>§(param2))
         {
            this.§[!F§();
         }
      }
      
      private function §5>§(param1:Array) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.§5-§.§-!_§())
         {
            _loc2_ = this.§5-§.§`!%§ / 1000;
            _loc3_ = this.§5-§.§#<§ / 1000;
            §@!%§.log("\n\nMain texture manager memory usage:\n   textures " + _loc2_ + " kilobytes\n   bitmaps " + _loc3_ + " kilobytes\n\n");
            this.initializeAnimations(param1);
            return true;
         }
         this.§0I§ = param1.concat();
         return false;
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         this.§;!U§.initializeAnimations(param1);
      }
      
      private function §=k§(param1:Event) : void
      {
         this.§5-§.§<!F§();
         if(this.§,n§ && this.§,n§.§2!#§)
         {
            this.§,n§.§2!#§.§<!F§();
         }
         if(this.§"!2§ && this.§"!2§.§2!#§)
         {
            this.§"!2§.§2!#§.§<!F§();
         }
         if(this.§0I§)
         {
            this.§5>§(this.§0I§);
            this.§0I§ = null;
            this.§[!F§();
         }
         if(this.§`%§ != null && this.mReadyToRun)
         {
            this.§`%§.addEventListeners();
         }
         if(this.§6a§)
         {
            this.§6a§.§-!_§();
         }
         if(this.§%O§)
         {
            if(this.§%O§.§2!#§)
            {
               this.§%O§.§2!#§.§<!F§();
               this.§%O§.§-!_§();
            }
         }
      }
      
      private function §[!F§() : void
      {
         this.§5&§.dispatchEvent(new Event(Event.INIT));
         this.§>!5§();
      }
      
      private function §>!5§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§1!Q§)
         {
            this.§5&§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§1!Q§ = [];
      }
      
      public function init(param1:§#%§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§9H§ = new §@!§(this,param1);
         this.§<<§ = this.§4$§(param1);
         this.§&!=§ = 0;
         this.§9!G§ = 0;
         this.§"0§ = 0;
         this.§1![§ = false;
         this.mReadyToRun = false;
         this.§+q§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         §@V§ = param1.theme;
         this.§-!-§ = param1;
         this.§6!@§ = this.§#y§(param1.theme);
         this.§8D§ = this.§]!T§(param1.theme);
         if(this.§6!@§ && this.§8D§)
         {
            this.§?!V§(param1);
         }
         else
         {
            this.§8!;§(param1.theme);
         }
         this.initReplay();
         §[Q§.init();
      }
      
      protected function initReplay() : void
      {
         this.§-!I§ = new §1A§(§?2§.§=$§);
      }
      
      protected function §#y§(param1:String) : Boolean
      {
         if(this.§6a§)
         {
            return false;
         }
         return true;
      }
      
      protected function §]!T§(param1:String) : Boolean
      {
         var _loc2_:§3!6§ = null;
         if(this.§44§)
         {
            _loc2_ = §-N§.§'E§(param1);
            if(_loc2_)
            {
               if(_loc2_.§6!9§ && !this.§44§.§'`§(_loc2_.§6!9§))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function §8!;§(param1:String) : void
      {
         var _loc2_:§3!6§ = null;
         if(this.§6a§ && !this.§#y§(param1))
         {
            this.§6a§.removeEventListener(Event.COMPLETE,this.§=!K§);
            this.§6a§.removeEventListener(Event.CANCEL,this.§ !%§);
            this.§6a§.addEventListener(Event.COMPLETE,this.§=!K§);
            this.§6a§.addEventListener(Event.CANCEL,this.§ !%§);
            this.§6a§.§^#§(param1);
         }
         if(this.§44§ && !this.§]!T§(param1))
         {
            this.§44§.removeEventListener(Event.COMPLETE,this.§3!&§);
            this.§44§.removeEventListener(Event.CANCEL,this.§9Y§);
            this.§44§.addEventListener(Event.COMPLETE,this.§3!&§);
            this.§44§.addEventListener(Event.CANCEL,this.§9Y§);
            _loc2_ = §-N§.§'E§(param1);
            if(_loc2_)
            {
               this.§44§.§^#§(_loc2_.§6!9§);
            }
         }
      }
      
      private function §=!K§(param1:Event) : void
      {
         this.§6a§.removeEventListener(Event.COMPLETE,this.§=!K§);
         this.§6a§.removeEventListener(Event.CANCEL,this.§ !%§);
         this.§6!@§ = true;
         if(this.§6!@§ && this.§8D§)
         {
            this.§?!V§(this.§-!-§);
         }
      }
      
      private function § !%§(param1:Event) : void
      {
         this.§6a§.removeEventListener(Event.COMPLETE,this.§=!K§);
         this.§6a§.removeEventListener(Event.CANCEL,this.§ !%§);
         this.§+q§ = true;
      }
      
      private function §3!&§(param1:Event) : void
      {
         this.§6a§.removeEventListener(Event.COMPLETE,this.§3!&§);
         this.§6a§.removeEventListener(Event.CANCEL,this.§9Y§);
         this.§8D§ = true;
         if(this.§6!@§ && this.§8D§)
         {
            this.§?!V§(this.§-!-§);
         }
      }
      
      private function §9Y§(param1:Event) : void
      {
         this.§6a§.removeEventListener(Event.COMPLETE,this.§3!&§);
         this.§6a§.removeEventListener(Event.CANCEL,this.§9Y§);
         this.§8D§ = true;
         if(this.§6!@§ && this.§8D§)
         {
            this.§?!V§(this.§-!-§);
         }
      }
      
      public function get §`!`§() : §'![§
      {
         return this.§5-§;
      }
      
      protected function §?!V§(param1:§#%§) : void
      {
         this.§[M§ = false;
         this.§1>§ = false;
         if(§<h§.§4!J§)
         {
            §<h§.§4!J§.speed = 1;
         }
         this.mLevelEngine = new §^=§(this);
         this.§9!]§ = this.§22§(param1.theme,this.§9H§.§]!Z§ / §]!H§,this.§`!`§,this.§<<§.§+!9§());
         this.§9!]§.§,T§(§"_§.§!<§());
         this.§+!>§ = this.initLevelObjectManager(param1);
         this.§%f§ = this.initLevelSlingshot(param1);
         this.§1J§ = this.§6!7§(this.§;!U§,this.§5-§);
         this.§<<§.init();
         this.§[w§();
         this.loadPreviousReplayData();
         this.mReadyToRun = true;
         if(this.§`%§)
         {
            this.§`%§.addEventListeners();
         }
      }
      
      protected function loadPreviousReplayData() : void
      {
         if(this.§2!7§)
         {
            this.§[e§ = §1A§.§?!V§(this.§2!7§);
            this.§[e§.speed = 1;
            this.§[e§.play();
            this.§?Q§ = -1000;
            this.§2!7§ = null;
         }
      }
      
      public function §&0§(param1:String) : void
      {
         this.§2!7§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§[e§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§[e§)
         {
            if(param1)
            {
               this.§[e§.speed = Math.min(this.§[e§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§[e§.speed = Math.max(this.§[e§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§[e§)
         {
            this.§[e§.speed = 1;
         }
      }
      
      protected function initLevelObjectManager(param1:§#%§) : §'§
      {
         return new §'§(this,param1,new Sprite());
      }
      
      protected function §4$§(param1:§#%§) : §?U§
      {
         return new §?U§(this,param1);
      }
      
      protected function §22§(param1:String, param2:Number, param3:§'![§, param4:Number) : §@!I§
      {
         return new §@!I§(param1,param2,param3,param4);
      }
      
      protected function initLevelSlingshot(param1:§#%§) : §<!>§
      {
         return new §<!>§(this,param1,new Sprite());
      }
      
      protected function §6!7§(param1:§0!5§, param2:§'![§) : §7!H§
      {
         return new §7!H§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§#%§ = this.§2!>§();
         var _loc4_:§-!H§;
         (_loc4_ = new §-!H§()).left = 0;
         _loc4_.top = -§?U§.§1!R§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §?U§.§1!R§;
         _loc4_.right = _loc4_.left + §?U§.§0m§;
         _loc4_.y = -13.929;
         _loc4_.x = §?U§.§0m§;
         _loc4_.id = §?U§.§%!W§;
         _loc3_.§7!$§(_loc4_);
         var _loc5_:§-!H§;
         (_loc5_ = new §-!H§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §?U§.§0m§;
         _loc5_.bottom = _loc5_.top + §?U§.§1!R§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §?U§.§0m§ / 2;
         _loc5_.id = §?U§.§8!6§;
         _loc3_.§7!$§(_loc5_);
         this.§+z§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§@V§ != null)
         {
            _loc3_.theme = §@V§;
         }
         this.init(_loc3_);
      }
      
      protected function §+z§(param1:§#%§, param2:Boolean) : void
      {
         if(param2)
         {
            this.§[!7§(param1);
         }
      }
      
      protected function §2!>§() : §#%§
      {
         var _loc1_:§#%§ = new §#%§();
         _loc1_.§7j§ = -12;
         return new §#%§();
      }
      
      protected function §00§() : Number
      {
         this.§29§ ^= this.§29§ << 21;
         this.§29§ ^= this.§29§ >>> 35;
         this.§29§ ^= this.§29§ << 4;
         return this.§29§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §[!7§(param1:§#%§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§;w§ = null;
         this.§29§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§00§() * 5;
               (_loc5_ = new §;w§()).x = 30 + _loc3_ * 10 + this.§00§() * 9;
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
                  _loc5_.angle = 45 - this.§00§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§00§() * 3 - _loc3_ * 8;
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
                  _loc5_.angle = this.§00§() * 360;
               }
               param1.addObject(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      private function §!n§() : void
      {
      }
      
      public function §[w§() : void
      {
         if(§@!I§.§[I§)
         {
            this.§7![§(this.§9!]§.§4!V§,false);
         }
         this.§7![§(this.§1J§.§ E§(§7!H§.§,Y§),false);
         this.§7![§(this.§1J§.§ E§(§7!H§.§-Y§),true);
         this.§7![§(this.§1J§.§ E§(§7!H§.§'0§),true);
         this.§7![§(this.§+!>§.§&!Y§,true);
         this.§7![§(this.§%f§.sprite,true);
         this.§7![§(this.§1J§.§ E§(§7!H§.§]0§),true);
         this.§7![§(this.§9!]§.§2!5§,false);
         if(§@!I§.§[I§)
         {
            this.§7![§(this.§9!]§.§=G§,false);
         }
         this.§7![§(this.§1J§.§ E§(§7!H§.§#5§),true);
      }
      
      private function §7![§(param1:Sprite, param2:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(param1);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         param1 /= §"_§.§5[§;
         param2 /= §"_§.§5[§;
         _loc3_.x = (param1 / §?U§.§!q§ + this.§<<§.§]"§ - §?U§.§+g§ / §?U§.§!q§) * §]!H§;
         _loc3_.y = (param2 / §?U§.§!q§ + this.§<<§.§&!D§ - §?U§.§>!S§ / §?U§.§!q§) * §]!H§;
         return _loc3_;
      }
      
      public function §,;§(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / §]!H§ + §?U§.§+g§ / §?U§.§!q§ - this.§<<§.§]"§) * §?U§.§!q§;
         _loc3_.y = (param2 / §]!H§ + §?U§.§>!S§ / §?U§.§!q§ - this.§<<§.§&!D§) * §?U§.§!q§;
         var _loc4_:Number = Math.max(§"_§.§5[§,§"_§.§5o§);
         _loc3_.x *= _loc4_;
         _loc3_.y *= _loc4_;
         return _loc3_;
      }
      
      public function §?h§(param1:String, param2:Number, param3:Number) : void
      {
         this.§+!>§.addObject(param1,param2,param3);
      }
      
      public function §else §() : void
      {
         if(this.§3!A§)
         {
            this.§3!A§.visible = true;
            this.§3!A§.alpha = 0;
         }
         this.§#-§ = 0;
      }
      
      public function §7!]§() : void
      {
         this.§0>§ = new §8w§(§[K§.§0J§,§[K§.§>!<§);
      }
      
      public function §=w§() : void
      {
         this.§0>§ = null;
      }
      
      public function clearLevel() : void
      {
         if(this.§9!]§)
         {
            this.§9!]§.dispose();
            this.§9!]§ = null;
         }
         if(this.§+!>§)
         {
            this.§+!>§.dispose();
            this.§+!>§ = null;
            this.§?r§ = null;
         }
         if(this.mLevelEngine)
         {
            if(!this.mLevelEngine.§3G§)
            {
            }
            this.mLevelEngine.clear();
            this.mLevelEngine = null;
         }
         if(this.§9H§)
         {
            this.§9H§.clear();
            this.§9H§ = null;
         }
         if(this.§%f§)
         {
            this.§%f§.dispose();
            this.§%f§ = null;
         }
         if(this.§<<§)
         {
            this.§<<§.clear();
            this.§<<§ = null;
         }
         if(this.§1J§)
         {
            this.§1J§.dispose();
            this.§1J§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§&!=§ = 0;
         this.§9!G§ = 0;
         this.mReadyToRun = false;
         this.§1![§ = false;
         this.§#-§ = §[K§.§4!@§;
         if(this.§2d§)
         {
            (this.§2d§ as §-d§).§9!B§.x = 0;
            (this.§2d§ as §-d§).§9!B§.y = 0;
         }
         if(this.§3!A§)
         {
            this.§3!A§.visible = false;
         }
         this.§[e§ = null;
         this.§-!I§ = null;
         if(this.§6a§)
         {
            this.§6a§.removeEventListener(Event.COMPLETE,this.§=!K§);
            this.§6a§.removeEventListener(Event.CANCEL,this.§ !%§);
         }
         if(this.§44§)
         {
            this.§44§.removeEventListener(Event.COMPLETE,this.§3!&§);
            this.§44§.removeEventListener(Event.CANCEL,this.§9Y§);
         }
         this.§>!5§();
         if(§<h§.§%!]§)
         {
            §<h§.§%!]§.color = 0;
         }
         if(this.§`%§)
         {
            this.§`%§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver() : void
      {
      }
      
      public function §`J§() : String
      {
         if(this.§-!I§)
         {
            return this.§-!I§.toString();
         }
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         if(!this.mReadyToRun || !§<h§.§1[§())
         {
            return 0;
         }
         if(this.§[e§ && this.§[e§.§"U§)
         {
            return this.§&G§(param1,param2,param3);
         }
         return this.§-v§(param1,true,param2,param3);
      }
      
      protected function §-v§(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         if(this.§[M§)
         {
            param1 *= 0.2;
            if(§<h§.§4!J§)
            {
               §<h§.§4!J§.speed = 0.2;
            }
         }
         var _loc5_:Number = 0;
         this.§9!G§ += param1;
         if(param3)
         {
            this.§&!=§ += param1;
            _loc5_ = this.mLevelEngine.§^!C§(this.§&!=§);
            this.§%f§.update(param1,param4);
            this.§&!=§ = _loc5_;
         }
         else
         {
            this.§+!>§.§5e§(param1);
            this.§&!=§ = 0;
         }
         if(param2)
         {
            this.§2l§(param1,_loc5_);
         }
         return param1;
      }
      
      private function §&G§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc5_:Number = NaN;
         var _loc4_:Number = §^=§.§`M§ * 1000;
         if(this.§[e§)
         {
            param1 *= this.§[e§.speed;
            _loc5_ = this.§9!G§ + param1;
            while(this.§9!G§ + _loc4_ < _loc5_)
            {
               if(this.§9!G§ + _loc4_ > this.§?Q§)
               {
                  this.§[e§.step(this);
                  this.§?Q§ += _loc4_;
               }
               this.§-v§(_loc4_,false,param2,param3);
            }
            if(_loc5_ > this.§?Q§ + _loc4_)
            {
               this.§[e§.step(this);
               this.§?Q§ += _loc4_;
            }
            if(this.§9!G§ < _loc5_)
            {
               this.§-v§(_loc5_ - this.§9!G§,true,param2,param3);
            }
            return param1;
         }
         return this.§-v§(_loc4_,true,param2,param3);
      }
      
      private function §2l§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.§9!]§.update(param1);
         this.§+!>§.§;<§(param1,param2);
         this.§+!E§();
         if(this.§#-§ < §[K§.§4!@§)
         {
            this.§#-§ += param1;
            _loc3_ = §[K§.§4!@§ / 2;
            _loc4_ = (-Math.abs(this.§#-§ - _loc3_) + _loc3_) * (§[K§.§,@§ / _loc3_);
            if(this.§3!A§)
            {
               this.§3!A§.alpha = _loc4_;
            }
         }
         else if(this.§3!A§)
         {
            this.§3!A§.visible = false;
         }
         if(this.§0>§)
         {
            if(!this.§0>§.§2q§(this.§<<§,param1))
            {
               this.§=w§();
            }
         }
         this.§<<§.§[W§(param1);
         this.mLevelEngine.§[!B§();
         this.§1J§.update(param1);
      }
      
      public function §>!T§(param1:Number) : void
      {
         this.objects.§5e§(param1 * 1000);
         this.objects.§[! §(param1 * 1000);
         this.§ ![§();
      }
      
      public function §+!E§() : void
      {
         var _loc1_:§";§ = null;
         if(this.§9!G§ > this.§"0§ + 1000 / 30)
         {
            if(this.§@!L§ != null)
            {
               for each(_loc1_ in this.§@!L§)
               {
                  _loc1_.addTrail();
               }
            }
            this.§"0§ = this.§9!G§;
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§";§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.§+!>§.isPigsAlive(true))
            {
               _loc2_ = this.§+!>§.§3!a§(true);
               _loc2_.§^!3§.mTryToScream = §%j§.§8f§;
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§+!>§.§6!P§());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            if(this.§+!>§.isPigsAlive(true))
            {
               _loc2_ = this.§+!>§.§3!a§(true);
               _loc2_.§^!3§.mTryToBlink = §%j§.§]J§;
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§+!>§.§6!P§());
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §"!U§.§&!?§;
         }
         §[Q§.addScore(param1,param2);
         this.§`%§.addScore(param1);
         if(param3 && param1 > 0 && !this.§1>§)
         {
            this.§2L§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §2L§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §"!U§.§'!V§;
         }
         this.§1J§.addParticle(§"!U§.§9!9§,§7!H§.§#5§,§"!U§.§7!2§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §7,§(param1:§";§) : void
      {
         if(this.§@!L§ == null)
         {
            this.§@!L§ = new Array();
         }
         this.§@!L§.push(param1);
      }
      
      public function §3!3§() : void
      {
         this.§%f§.§3!3§();
         this.§+!>§.§;!%§();
         this.§1>§ = true;
      }
      
      public function §,D§(param1:§";§) : void
      {
         this.§1J§.§;2§(§7!H§.§,Y§);
         if(this.§@!L§.indexOf(param1) >= 0)
         {
            this.§@!L§.splice(this.§@!L§.indexOf(param1),1);
         }
         if(this.§@!L§.length == 0)
         {
            this.§@!L§ = null;
         }
      }
      
      public function §8o§(param1:§%§, param2:Number, param3:Number) : void
      {
         this.§?r§ = this.§+!>§.addObject(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
         var _loc4_:Number = param1.name.toUpperCase() == "BIRD_GREEN" ? Number(§<!>§.§0@§) : Number(§<!>§.§<!#§);
         if(param1.§@8§ > 1)
         {
            this.§?r§.§6!'§(param1.§@8§);
            this.§?r§.§^!3§.§#=§();
         }
         if(param1.§6H§ != 0)
         {
            _loc4_ = param1.§6H§;
         }
         var _loc5_:Number = -_loc4_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc6_:Number = _loc4_ * param2 * Math.sin(param3 / (180 / Math.PI));
         this.§?r§.§6U§(new b2Vec2(_loc5_,_loc6_),false,true);
         this.camera.§4!'§(§?U§.§0n§);
         if(this.§-!I§)
         {
            this.§-!I§.§8o§(this.mLevelEngine.currentStep,param1.x,param1.y,param2,param3);
         }
      }
      
      public function activatePowerup() : void
      {
         this.§1![§ = true;
      }
      
      private function § ![§() : void
      {
         if(!this.§1![§)
         {
            return;
         }
         this.§1![§ = false;
         if(this.activeObject is §`H§ && !(this.activeObject as §`H§).§#!8§)
         {
            if(this.activeObject.activateSpecialPower(this.§@!T§))
            {
               this.§-![§ = true;
            }
         }
         else
         {
            this.§+!>§.§4!C§();
         }
         if(this.§-!I§)
         {
            this.§-!I§.§`Y§(this.mLevelEngine.currentStep);
         }
      }
      
      public function §!!W§() : void
      {
         this.§+!>§.§!!W§();
      }
      
      public function §0C§() : void
      {
         this.§+!>§.§0%§();
      }
      
      public function §@Y§() : §#%§
      {
         var _loc1_:§#%§ = new §#%§();
         _loc1_.§'!@§ = this.§-!-§.§'!@§;
         _loc1_.§"]§ = this.§-!-§.§"]§;
         this.§<<§.§<f§(_loc1_);
         this.§+!>§.§6!,§(_loc1_);
         this.§%f§.§;l§(_loc1_);
         _loc1_.theme = this.§9!]§.§#!,§();
         return _loc1_;
      }
      
      public function §<!S§() : int
      {
         return this.§-!-§.§"]§;
      }
      
      public function §;!&§() : int
      {
         return this.§-!-§.§'!@§;
      }
      
      public function § h§(param1:int) : void
      {
         this.§-!-§.§"]§ = param1;
      }
      
      public function § S§(param1:int) : void
      {
         this.§-!-§.§'!@§ = param1;
      }
      
      public function §>V§(param1:Number, param2:Number) : void
      {
         if(this.§3k§)
         {
            this.§3k§.§!I§(param1,param2);
         }
         if(this.§<<§)
         {
            this.§<<§.§[W§(0);
         }
      }
      
      public function get §<H§() : §#%§
      {
         return this.§-!-§;
      }
      
      public function get §@!T§() : §'§
      {
         return this.§+!>§;
      }
      
      protected function get §9c§() : §<h§
      {
         return this.§9!S§;
      }
      
      public function get §!!1§() : int
      {
         return §-!N§;
      }
   }
}
