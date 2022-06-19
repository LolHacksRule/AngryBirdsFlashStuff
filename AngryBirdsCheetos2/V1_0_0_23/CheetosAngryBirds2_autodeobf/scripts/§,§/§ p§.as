package §,§
{
   import § g§.§;!N§;
   import §!V§.§!!i§;
   import §&!8§.§%$§;
   import §&!8§.§+!6§;
   import §&!8§.§[g§;
   import §&!8§.§]V§;
   import §&<§.§<g§;
   import §+!9§.§1!3§;
   import §+!9§.§6!N§;
   import §+6§.§7i§;
   import §,!K§.§[V§;
   import §1!4§.§7!?§;
   import §1!4§.§do§;
   import §6!H§.b2Vec2;
   import §6;§.§%[§;
   import §9t§.§&!W§;
   import §9t§.§5t§;
   import §9t§.§=!>§;
   import §;A§.§]!A§;
   import §<a§.§2!P§;
   import §>^§.§!6§;
   import §^a§.DisplayObject;
   import §^a§.Sprite;
   import §`![§.§!!K§;
   import §`![§.§-!N§;
   import §`![§.§5!b§;
   import §`![§.§@;§;
   import §`h§.§@!Z§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class § p§
   {
      
      private static const §'!1§:int = 20;
      
      public static const §=j§:Number = §@!Z§.§?!L§;
      
      public static const §3!G§:Number = §@!Z§.§"r§;
      
      public static const §]!E§:Number = 1 / 20;
      
      public static const §[!,§:Number = §@!Z§.§"r§ * §]!E§;
      
      public static const §78§:Number = §=j§ * §]!E§;
      
      public static const §5k§:§!!i§ = new §!!i§(13 - 3);
      
      public static var §=d§:Number = 1;
      
      protected static var §9!?§:String = §!!K§.§,]§;
       
      
      protected var §-D§:§+!6§;
      
      private var §,T§:§[g§;
      
      private var §@P§:Array = null;
      
      protected var §"I§:§<g§;
      
      public var mLevelEngine:§!f§;
      
      protected var §'!7§:§?s§;
      
      protected var §1!Z§:§[V§;
      
      protected var §4M§:§7!N§;
      
      protected var §^6§:§do§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §?T§:Boolean = false;
      
      protected var §;!K§:Boolean = false;
      
      protected var §;!g§:Boolean = false;
      
      public var §[!4§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §4j§:Number;
      
      public var §5!H§:Number;
      
      private var §<I§:Number;
      
      public var §82§:§-!N§;
      
      public var §;$§:Boolean = false;
      
      private var §>!6§:§1!D§;
      
      private var §0!C§:Sprite;
      
      protected var §3!h§:§!!K§;
      
      protected var §%!N§:§;!N§ = null;
      
      private var §`!#§:EventDispatcher;
      
      private var § !f§:Array;
      
      private var §'!L§:Array;
      
      protected var §+7§:§%[§;
      
      private var §+K§:§7i§;
      
      protected var §>!K§:§=!>§;
      
      protected var §^H§:§&!W§;
      
      private var §6g§:§5t§;
      
      private var §"!D§:§5t§;
      
      private var §1]§:§5t§;
      
      private var §!H§:Stage;
      
      private var §<9§:§@!%§;
      
      protected var §96§:§2!P§;
      
      protected var §@D§:§2!P§;
      
      protected var §`!e§:Number = 0.0;
      
      protected var §1N§:String;
      
      private var §&!§:Boolean;
      
      protected var §!!M§:Boolean;
      
      protected var §0v§:uint = 1.417339207E9;
      
      public var §;!3§:Boolean;
      
      public function § p§(param1:Stage)
      {
         this.§'!L§ = [];
         super();
         this.§`!#§ = new EventDispatcher();
         this.§82§ = new §-!N§();
         this.§!H§ = param1;
         this.§>!K§ = §=!>§.§'I§;
         this.§^H§ = this.initAnimationManager(this.§>!K§);
         this.§6g§ = this.§2%§();
         this.§"!D§ = this.§[I§();
         this.§1]§ = this.§8q§();
         var _loc2_:Stage3D = param1.stage3Ds[0];
         this.§+7§ = new §%[§(§1!D§,param1,new Rectangle(0,0,§@!Z§.§?!L§,§@!Z§.§"r§),_loc2_);
         §@!Z§.§^Y§.addEventListener(Event.ENTER_FRAME,this.§+7§.§,,§);
         _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§&!S§,false,0,true);
         this.§+7§.§^F§ = false;
         this.§+7§.enableErrorChecking = false;
         this.§+7§.§&G§ = 2;
         this.§+7§.§ !a§();
      }
      
      public static function §`8§(param1:§[g§, param2:§[g§) : Number
      {
         var _loc3_:Number = param1.§,!b§ - param2.§,!b§;
         var _loc4_:Number = param1.§-I§ - param2.§-I§;
         return §=w§(_loc3_,_loc4_);
      }
      
      public static function §=w§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         if(!this.§0!C§ && this.§&!-§)
         {
            this.§0!C§ = this.§>!6§.§%P§;
         }
         return this.§0!C§;
      }
      
      public function get §&!-§() : Sprite
      {
         if(!this.§>!6§)
         {
            this.§>!6§ = this.§+7§.§-h§ as §1!D§;
            this.§>!6§.§;o§ = false;
         }
         return this.§>!6§;
      }
      
      private function get §,%§() : DisplayObject
      {
         if(this.§&!-§)
         {
            return (this.§&!-§ as §1!D§).§,%§;
         }
         return null;
      }
      
      public function get §#U§() : §&!W§
      {
         return this.§^H§;
      }
      
      public function get §],§() : §=!>§
      {
         return this.§>!K§;
      }
      
      public function get camera() : §[V§
      {
         return this.§1!Z§;
      }
      
      public function get objects() : §+!6§
      {
         return this.§-D§;
      }
      
      public function get particles() : §do§
      {
         return this.§^6§;
      }
      
      public function get background() : §<g§
      {
         return this.§"I§;
      }
      
      public function get slingshot() : §7!N§
      {
         return this.§4M§;
      }
      
      public function get activeObject() : §[g§
      {
         return this.§,T§;
      }
      
      public function get §@2§() : §?s§
      {
         return this.§'!7§;
      }
      
      public function get stage() : Stage
      {
         return this.§!H§;
      }
      
      public function get §>!f§() : §5t§
      {
         return this.§1]§;
      }
      
      protected function get §9!7§() : §5t§
      {
         return this.§6g§;
      }
      
      public function set activeObject(param1:§[g§) : void
      {
         this.§,T§ = param1;
      }
      
      public function set §"$§(param1:Boolean) : void
      {
         this.§!!M§ = param1;
      }
      
      public function clear() : void
      {
         if(this.§+K§)
         {
            this.§+K§.dispose();
         }
         if(this.§>!K§)
         {
            this.§>!K§.dispose();
         }
         if(this.§6g§ && this.§6g§.§],§)
         {
            this.§6g§.§],§.dispose();
         }
         if(this.§1]§ && this.§1]§.§],§)
         {
            this.§1]§.§],§.dispose();
         }
         if(this.§+7§)
         {
            this.§+7§.dispose();
         }
      }
      
      protected function §2%§() : §5t§
      {
         return null;
      }
      
      protected function §[I§() : §5t§
      {
         return null;
      }
      
      protected function §8q§() : §5t§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§=!>§) : §&!W§
      {
         return new §&!W§(param1);
      }
      
      public function §;!i§(param1:Boolean) : void
      {
         if(§%[§.§`1§)
         {
            if(param1)
            {
               §%[§.§`1§.start();
            }
            else
            {
               §%[§.§`1§.stop();
               §%[§.§`1§.color = 0;
            }
         }
      }
      
      public function §%d§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function §3!D§() : §;!N§
      {
         return this.§%!N§;
      }
      
      public function §=!2§(param1:§;!N§) : void
      {
         if(this.§%!N§ != null)
         {
            this.§%!N§.removeEventListeners();
         }
         this.§%!N§ = param1;
         if(this.mReadyToRun)
         {
            this.§%!N§.addEventListeners();
         }
      }
      
      public function §&;§() : §2!P§
      {
         return this.§96§;
      }
      
      public function §9S§(param1:§7i§, param2:Array, param3:Function) : void
      {
         this.§+K§ = param1;
         var _loc4_:int = this.§+K§.§-x§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§>!K§.§;Y§(this.§+K§.§[j§(_loc5_));
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§`!#§.addEventListener(Event.INIT,param3);
            this.§'!L§.push(param3);
         }
         if(this.§8!_§(param2))
         {
            this.§5c§();
         }
      }
      
      private function §8!_§(param1:Array) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.§>!K§.§<h§())
         {
            _loc2_ = this.§>!K§.§true§ / 1000;
            _loc3_ = this.§>!K§.§?^§ / 1000;
            §!6§.log("\n\nMain texture manager memory usage:\n   textures " + _loc2_ + " kilobytes\n   bitmaps " + _loc3_ + " kilobytes\n\n");
            this.initializeAnimations(param1);
            return true;
         }
         this.§ !f§ = param1.concat();
         return false;
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         this.§^H§.initializeAnimations(param1);
      }
      
      private function §&!S§(param1:Event) : void
      {
         this.§>!K§.§3Z§();
         if(this.§9!7§ && this.§9!7§.§],§)
         {
            this.§9!7§.§],§.§3Z§();
         }
         if(this.§>!f§ && this.§>!f§.§],§)
         {
            this.§>!f§.§],§.§3Z§();
         }
         if(this.§ !f§)
         {
            this.§8!_§(this.§ !f§);
            this.§ !f§ = null;
            this.§5c§();
         }
         if(this.§%!N§ != null && this.mReadyToRun)
         {
            this.§%!N§.addEventListeners();
         }
         if(this.§6g§)
         {
            this.§6g§.§<h§();
         }
         if(this.§1]§)
         {
            if(this.§1]§.§],§)
            {
               this.§1]§.§],§.§3Z§();
               this.§1]§.§<h§();
            }
         }
      }
      
      private function §5c§() : void
      {
         this.§`!#§.dispatchEvent(new Event(Event.INIT));
         this.§>!a§();
      }
      
      private function §>!a§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§'!L§)
         {
            this.§`!#§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§'!L§ = [];
      }
      
      public function init(param1:§!!K§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§'!7§ = new §?s§(this,param1);
         this.§1!Z§ = this.§4i§(param1);
         this.§4j§ = 0;
         this.§5!H§ = 0;
         this.§<I§ = 0;
         this.§&!§ = false;
         this.mReadyToRun = false;
         this.§?T§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         §9!?§ = param1.theme;
         this.§3!h§ = param1;
         this.§;!K§ = this.§,v§(param1.theme);
         this.§;!g§ = this.§9!D§(param1.theme);
         if(this.§;!K§ && this.§;!g§)
         {
            this.§,a§(param1);
         }
         else
         {
            this.§"l§(param1.theme);
         }
         this.initReplay();
         §'-§.init();
      }
      
      protected function initReplay() : void
      {
         this.§96§ = new §2!P§(§@;§.§6!K§);
      }
      
      protected function §,v§(param1:String) : Boolean
      {
         if(this.§6g§)
         {
            return false;
         }
         return true;
      }
      
      protected function §9!D§(param1:String) : Boolean
      {
         var _loc2_:§1!3§ = null;
         if(this.§"!D§)
         {
            _loc2_ = §6!N§.§'!U§(param1);
            if(_loc2_)
            {
               if(_loc2_.§>Z§ && !this.§"!D§.§!!Y§(_loc2_.§>Z§))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function §"l§(param1:String) : void
      {
         var _loc2_:§1!3§ = null;
         if(this.§6g§ && !this.§,v§(param1))
         {
            this.§6g§.removeEventListener(Event.COMPLETE,this.§=!e§);
            this.§6g§.removeEventListener(Event.CANCEL,this.§"J§);
            this.§6g§.addEventListener(Event.COMPLETE,this.§=!e§);
            this.§6g§.addEventListener(Event.CANCEL,this.§"J§);
            this.§6g§.§,A§(param1);
         }
         if(this.§"!D§ && !this.§9!D§(param1))
         {
            this.§"!D§.removeEventListener(Event.COMPLETE,this.§9I§);
            this.§"!D§.removeEventListener(Event.CANCEL,this.§2&§);
            this.§"!D§.addEventListener(Event.COMPLETE,this.§9I§);
            this.§"!D§.addEventListener(Event.CANCEL,this.§2&§);
            _loc2_ = §6!N§.§'!U§(param1);
            if(_loc2_)
            {
               this.§"!D§.§,A§(_loc2_.§>Z§);
            }
         }
      }
      
      private function §=!e§(param1:Event) : void
      {
         this.§6g§.removeEventListener(Event.COMPLETE,this.§=!e§);
         this.§6g§.removeEventListener(Event.CANCEL,this.§"J§);
         this.§;!K§ = true;
         if(this.§;!K§ && this.§;!g§)
         {
            this.§,a§(this.§3!h§);
         }
      }
      
      private function §"J§(param1:Event) : void
      {
         this.§6g§.removeEventListener(Event.COMPLETE,this.§=!e§);
         this.§6g§.removeEventListener(Event.CANCEL,this.§"J§);
         this.§?T§ = true;
      }
      
      private function §9I§(param1:Event) : void
      {
         this.§6g§.removeEventListener(Event.COMPLETE,this.§9I§);
         this.§6g§.removeEventListener(Event.CANCEL,this.§2&§);
         this.§;!g§ = true;
         if(this.§;!K§ && this.§;!g§)
         {
            this.§,a§(this.§3!h§);
         }
      }
      
      private function §2&§(param1:Event) : void
      {
         this.§6g§.removeEventListener(Event.COMPLETE,this.§9I§);
         this.§6g§.removeEventListener(Event.CANCEL,this.§2&§);
         this.§;!g§ = true;
         if(this.§;!K§ && this.§;!g§)
         {
            this.§,a§(this.§3!h§);
         }
      }
      
      public function get §-!7§() : §=!>§
      {
         return this.§>!K§;
      }
      
      protected function §,a§(param1:§!!K§) : void
      {
         this.§!!M§ = false;
         this.§;!3§ = false;
         if(§%[§.§6+§)
         {
            §%[§.§6+§.speed = 1;
         }
         this.mLevelEngine = new §!f§(this);
         this.§"I§ = this.§?!e§(param1.theme,this.§'!7§.§-S§ / §]!E§,this.§-!7§,this.§1!Z§.§%;§());
         this.§"I§.§1L§(§@!Z§.§4!X§());
         this.§-D§ = this.initLevelObjectManager(param1);
         this.§4M§ = this.initLevelSlingshot(param1);
         this.§^6§ = this.§]l§(this.§^H§,this.§>!K§);
         this.§1!Z§.init();
         this.§^7§();
         this.loadPreviousReplayData();
         this.mReadyToRun = true;
         if(this.§%!N§)
         {
            this.§%!N§.addEventListeners();
         }
      }
      
      protected function loadPreviousReplayData() : void
      {
         if(this.§1N§)
         {
            this.§@D§ = §2!P§.§,a§(this.§1N§);
            this.§@D§.speed = 1;
            this.§@D§.play();
            this.§`!e§ = -1000;
            this.§1N§ = null;
         }
      }
      
      public function §=!S§(param1:String) : void
      {
         this.§1N§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§@D§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§@D§)
         {
            if(param1)
            {
               this.§@D§.speed = Math.min(this.§@D§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§@D§.speed = Math.max(this.§@D§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§@D§)
         {
            this.§@D§.speed = 1;
         }
      }
      
      protected function initLevelObjectManager(param1:§!!K§) : §+!6§
      {
         return new §+!6§(this,param1,new Sprite());
      }
      
      protected function §4i§(param1:§!!K§) : §[V§
      {
         return new §[V§(this,param1);
      }
      
      protected function §?!e§(param1:String, param2:Number, param3:§=!>§, param4:Number) : §<g§
      {
         return new §<g§(param1,param2,param3,param4);
      }
      
      protected function initLevelSlingshot(param1:§!!K§) : §7!N§
      {
         return new §7!N§(this,param1,new Sprite());
      }
      
      protected function §]l§(param1:§&!W§, param2:§=!>§) : §do§
      {
         return new §do§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§!!K§ = this.§=!a§();
         var _loc4_:§5!b§;
         (_loc4_ = new §5!b§()).left = 0;
         _loc4_.top = -§[V§.§7!T§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §[V§.§7!T§;
         _loc4_.right = _loc4_.left + §[V§.§`"§;
         _loc4_.y = -13.929;
         _loc4_.x = §[V§.§`"§;
         _loc4_.id = §[V§.§&J§;
         _loc3_.§1s§(_loc4_);
         var _loc5_:§5!b§;
         (_loc5_ = new §5!b§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §[V§.§`"§;
         _loc5_.bottom = _loc5_.top + §[V§.§7!T§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §[V§.§`"§ / 2;
         _loc5_.id = §[V§.§6!B§;
         _loc3_.§1s§(_loc5_);
         this.§@!f§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§9!?§ != null)
         {
            _loc3_.theme = §9!?§;
         }
         this.init(_loc3_);
      }
      
      protected function §@!f§(param1:§!!K§, param2:Boolean) : void
      {
         if(param2)
         {
            this.addFallingBirds(param1);
         }
      }
      
      protected function §=!a§() : §!!K§
      {
         var _loc1_:§!!K§ = new §!!K§();
         _loc1_.§'f§ = -12;
         return new §!!K§();
      }
      
      protected function §>C§() : Number
      {
         this.§0v§ ^= this.§0v§ << 21;
         this.§0v§ ^= this.§0v§ >>> 35;
         this.§0v§ ^= this.§0v§ << 4;
         return this.§0v§ * (1 / uint.MAX_VALUE);
      }
      
      protected function addFallingBirds(param1:§!!K§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§]!A§ = null;
         this.§0v§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§>C§() * 5;
               (_loc5_ = new §]!A§()).x = 30 + _loc3_ * 10 + this.§>C§() * 9;
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
                  _loc5_.angle = 45 - this.§>C§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§>C§() * 3 - _loc3_ * 8;
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
                  _loc5_.angle = this.§>C§() * 360;
               }
               param1.addObject(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      public function §^7§() : void
      {
         if(§<g§.§4!R§)
         {
            this.§?!M§(this.§"I§.§9!6§,false);
         }
         this.§?!M§(this.§^6§.§#!g§(§do§.§`!Z§),false);
         this.§?!M§(this.§^6§.§#!g§(§do§.§[N§),true);
         this.§?!M§(this.§^6§.§#!g§(§do§.§&!d§),true);
         this.§?!M§(this.§-D§.§#!^§,true);
         this.§?!M§(this.§4M§.sprite,true);
         this.§?!M§(this.§^6§.§#!g§(§do§.§+!c§),true);
         this.§?!M§(this.§"I§.§7J§,false);
         if(§<g§.§4!R§)
         {
            this.§?!M§(this.§"I§.§]X§,false);
         }
         this.§?!M§(this.§^6§.§#!g§(§do§.§+Z§),true);
      }
      
      protected function §?!M§(param1:Sprite, param2:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(param1);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         param1 /= §@!Z§.§<X§;
         param2 /= §@!Z§.§<X§;
         _loc3_.x = (param1 / §[V§.§+!>§ + this.§1!Z§.§44§ - §[V§.§]!^§ / §[V§.§+!>§) * §]!E§;
         _loc3_.y = (param2 / §[V§.§+!>§ + this.§1!Z§.§#8§ - §[V§.§!!g§ / §[V§.§+!>§) * §]!E§;
         return _loc3_;
      }
      
      public function §=!A§(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / §]!E§ + §[V§.§]!^§ / §[V§.§+!>§ - this.§1!Z§.§44§) * §[V§.§+!>§;
         _loc3_.y = (param2 / §]!E§ + §[V§.§!!g§ / §[V§.§+!>§ - this.§1!Z§.§#8§) * §[V§.§+!>§;
         var _loc4_:Number = Math.max(§@!Z§.§<X§,§@!Z§.§5I§);
         _loc3_.x *= _loc4_;
         _loc3_.y *= _loc4_;
         return _loc3_;
      }
      
      public function §;!X§(param1:String, param2:Number, param3:Number) : void
      {
         this.§-D§.addObject(param1,param2,param3);
      }
      
      public function §24§() : void
      {
         if(this.§,%§)
         {
            this.§,%§.visible = true;
            this.§,%§.alpha = 0;
         }
         this.§[!4§ = 0;
      }
      
      public function §,!V§() : void
      {
         this.§<9§ = new §@!%§(§?9§.§;!d§,§?9§.§9V§);
      }
      
      public function §<3§() : void
      {
         this.§<9§ = null;
      }
      
      public function clearLevel() : void
      {
         if(this.§"I§)
         {
            this.§"I§.dispose();
            this.§"I§ = null;
         }
         if(this.§-D§)
         {
            this.§-D§.dispose();
            this.§-D§ = null;
            this.§,T§ = null;
         }
         if(this.mLevelEngine)
         {
            if(!this.mLevelEngine.§9!;§)
            {
            }
            this.mLevelEngine.clear();
            this.mLevelEngine = null;
         }
         if(this.§'!7§)
         {
            this.§'!7§.clear();
            this.§'!7§ = null;
         }
         if(this.§4M§)
         {
            this.§4M§.dispose();
            this.§4M§ = null;
         }
         if(this.§1!Z§)
         {
            this.§1!Z§.clear();
            this.§1!Z§ = null;
         }
         if(this.§^6§)
         {
            this.§^6§.dispose();
            this.§^6§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§4j§ = 0;
         this.§5!H§ = 0;
         this.mReadyToRun = false;
         this.§&!§ = false;
         this.§[!4§ = §?9§.§,C§;
         if(this.§&!-§)
         {
            (this.§&!-§ as §1!D§).§<!#§.x = 0;
            (this.§&!-§ as §1!D§).§<!#§.y = 0;
         }
         if(this.§,%§)
         {
            this.§,%§.visible = false;
         }
         this.§@D§ = null;
         this.§96§ = null;
         if(this.§6g§)
         {
            this.§6g§.removeEventListener(Event.COMPLETE,this.§=!e§);
            this.§6g§.removeEventListener(Event.CANCEL,this.§"J§);
         }
         if(this.§"!D§)
         {
            this.§"!D§.removeEventListener(Event.COMPLETE,this.§9I§);
            this.§"!D§.removeEventListener(Event.CANCEL,this.§2&§);
         }
         this.§>!a§();
         if(§%[§.§`1§)
         {
            §%[§.§`1§.color = 0;
         }
         if(this.§%!N§)
         {
            this.§%!N§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver() : void
      {
      }
      
      public function §[!J§() : String
      {
         if(this.§96§)
         {
            return this.§96§.toString();
         }
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         if(!this.mReadyToRun || !§%[§.§2U§())
         {
            return 0;
         }
         if(this.§@D§ && this.§@D§.§`!N§)
         {
            return this.§=;§(param1,param2,param3);
         }
         return this.§+!U§(param1,true,param2,param3);
      }
      
      protected function §+!U§(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         if(this.§!!M§)
         {
            param1 *= 0.2;
            if(§%[§.§6+§)
            {
               §%[§.§6+§.speed = 0.2;
            }
         }
         var _loc5_:Number = 0;
         this.§5!H§ += param1;
         if(param3)
         {
            this.§4j§ += param1;
            _loc5_ = this.mLevelEngine.§^T§(this.§4j§);
            this.§4M§.update(param1,param4);
            this.§4j§ = _loc5_;
         }
         else
         {
            this.§-D§.§2!4§(param1);
            this.§4j§ = 0;
         }
         if(param2)
         {
            this.§,!O§(param1,_loc5_);
         }
         return param1;
      }
      
      private function §=;§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc5_:Number = NaN;
         var _loc4_:Number = §!f§.§`!;§ * 1000;
         if(this.§@D§)
         {
            param1 *= this.§@D§.speed;
            _loc5_ = this.§5!H§ + param1;
            while(this.§5!H§ + _loc4_ < _loc5_)
            {
               if(this.§5!H§ + _loc4_ > this.§`!e§)
               {
                  this.§@D§.step(this);
                  this.§`!e§ += _loc4_;
               }
               this.§+!U§(_loc4_,false,param2,param3);
            }
            if(_loc5_ > this.§`!e§ + _loc4_)
            {
               this.§@D§.step(this);
               this.§`!e§ += _loc4_;
            }
            if(this.§5!H§ < _loc5_)
            {
               this.§+!U§(_loc5_ - this.§5!H§,true,param2,param3);
            }
            return param1;
         }
         return this.§+!U§(_loc4_,true,param2,param3);
      }
      
      private function §,!O§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.§"I§.update(param1);
         this.§-D§.§5m§(param1,param2);
         this.§'=§();
         if(this.§[!4§ < §?9§.§,C§)
         {
            this.§[!4§ += param1;
            _loc3_ = §?9§.§,C§ / 2;
            _loc4_ = (-Math.abs(this.§[!4§ - _loc3_) + _loc3_) * (§?9§.§5!]§ / _loc3_);
            if(this.§,%§)
            {
               this.§,%§.alpha = _loc4_;
            }
         }
         else if(this.§,%§)
         {
            this.§,%§.visible = false;
         }
         if(this.§<9§)
         {
            if(!this.§<9§.§0!S§(this.§1!Z§,param1))
            {
               this.§<3§();
            }
         }
         this.§1!Z§.§'!'§(param1);
         this.mLevelEngine.§"]§();
         this.§^6§.update(param1);
      }
      
      public function §@v§(param1:Number) : void
      {
         this.objects.§2!4§(param1 * 1000);
         this.objects.§6u§(param1 * 1000);
         this.§!&§();
      }
      
      public function §'=§() : void
      {
         var _loc1_:§[g§ = null;
         if(this.§5!H§ > this.§<I§ + 1000 / 30)
         {
            if(this.§@P§ != null)
            {
               for each(_loc1_ in this.§@P§)
               {
                  _loc1_.addTrail();
               }
            }
            this.§<I§ = this.§5!H§;
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§[g§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.§-D§.isPigsAlive(true))
            {
               _loc2_ = this.§-D§.§9D§(true);
               if(_loc2_)
               {
                  _loc2_.§5d§.mTryToScream = §%$§.§&!D§;
                  this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§-D§.§=!P§());
               }
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            if(this.§-D§.isPigsAlive(true))
            {
               _loc2_ = this.§-D§.§9D§(true);
               if(_loc2_)
               {
                  _loc2_.§5d§.mTryToBlink = §%$§.§7I§;
                  this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§-D§.§=!P§());
               }
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §7!?§.§%!>§;
         }
         §'-§.addScore(param1,param2);
         this.§%!N§.addScore(param1);
         if(param3 && param1 > 0 && !this.§;!3§)
         {
            this.§=!T§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §=!T§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §7!?§.§'!!§;
         }
         this.§^6§.addParticle(§7!?§.§@I§,§do§.§+Z§,§7!?§.§"L§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §?!C§(param1:§[g§) : void
      {
         if(this.§@P§ == null)
         {
            this.§@P§ = new Array();
         }
         this.§@P§.push(param1);
      }
      
      public function §8§() : void
      {
         this.§4M§.§8§();
         this.§-D§.§&l§();
         this.§;!3§ = true;
      }
      
      public function §,3§(param1:§[g§) : void
      {
         this.§^6§.§#9§(§do§.§`!Z§);
         if(this.§@P§.indexOf(param1) >= 0)
         {
            this.§@P§.splice(this.§@P§.indexOf(param1),1);
         }
         if(this.§@P§.length == 0)
         {
            this.§@P§ = null;
         }
      }
      
      public function §1!f§(param1:§ 3§, param2:Number, param3:Number) : void
      {
         this.§,T§ = this.§-D§.addObject(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
         var _loc4_:Number = param1.name.toUpperCase() == "BIRD_GREEN" ? Number(§7!N§.§"O§) : Number(§7!N§.§0C§);
         if(param1.§<!J§ > 1)
         {
            this.§,T§.§!!3§(param1.§<!J§);
            this.§,T§.§5d§.§ !T§();
         }
         if(param1.§8M§ != 0)
         {
            _loc4_ = param1.§8M§;
         }
         var _loc5_:Number = -_loc4_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc6_:Number = _loc4_ * param2 * Math.sin(param3 / (180 / Math.PI));
         this.§,T§.§5! §(new b2Vec2(_loc5_,_loc6_),false,true);
         this.camera.§%!E§(§[V§.§"!-§);
         if(this.§96§)
         {
            this.§96§.§1!f§(this.mLevelEngine.currentStep,param1.x,param1.y,param2,param3);
         }
      }
      
      public function activatePowerup() : void
      {
         this.§&!§ = true;
      }
      
      private function §!&§() : void
      {
         if(!this.§&!§)
         {
            return;
         }
         this.§&!§ = false;
         if(this.activeObject is §]V§ && !(this.activeObject as §]V§).§,B§)
         {
            if(this.activeObject.activateSpecialPower(this.§7!h§))
            {
               this.§;$§ = true;
            }
         }
         else
         {
            this.§-D§.§&!!§();
         }
         if(this.§96§)
         {
            this.§96§.§;!2§(this.mLevelEngine.currentStep);
         }
      }
      
      public function §5!M§() : void
      {
         this.§-D§.§5!M§();
      }
      
      public function §2!`§() : void
      {
         this.§-D§.§66§();
      }
      
      public function §]6§() : §!!K§
      {
         var _loc1_:§!!K§ = new §!!K§();
         _loc1_.§8Z§ = this.§3!h§.§8Z§;
         _loc1_.§!!<§ = this.§3!h§.§!!<§;
         this.§1!Z§.§5!T§(_loc1_);
         this.§-D§.§&!=§(_loc1_);
         this.§4M§.§]!Q§(_loc1_);
         _loc1_.theme = this.§"I§.§0!-§();
         return _loc1_;
      }
      
      public function §#d§() : int
      {
         return this.§3!h§.§!!<§;
      }
      
      public function §4m§() : int
      {
         return this.§3!h§.§8Z§;
      }
      
      public function §<4§(param1:int) : void
      {
         this.§3!h§.§!!<§ = param1;
      }
      
      public function §&X§(param1:int) : void
      {
         this.§3!h§.§8Z§ = param1;
      }
      
      public function §9!0§(param1:Number, param2:Number) : void
      {
         if(this.§>!6§)
         {
            this.§>!6§.§%x§(param1,param2);
         }
         if(this.§1!Z§)
         {
            this.§1!Z§.§'!'§(0);
         }
      }
      
      public function get §import§() : §!!K§
      {
         return this.§3!h§;
      }
      
      public function get §7!h§() : §+!6§
      {
         return this.§-D§;
      }
      
      protected function get §#@§() : §%[§
      {
         return this.§+7§;
      }
      
      public function get §2m§() : int
      {
         return §'!1§;
      }
   }
}
