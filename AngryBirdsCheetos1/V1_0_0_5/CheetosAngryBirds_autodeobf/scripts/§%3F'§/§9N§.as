package §?'§
{
   import §!!%§.§7!W§;
   import §!!%§.§?f§;
   import §!!R§.DisplayObject;
   import §!!R§.Sprite;
   import §!J§.§[&§;
   import §#K§.§!T§;
   import §#K§.§<!+§;
   import §#K§.§?I§;
   import §#K§.§^b§;
   import §#v§.§!!!§;
   import §#v§.§"d§;
   import §#v§.;
   import §#v§.§-!7§;
   import §&! §.§3!§;
   import §&!W§.§2z§;
   import §&!W§.§4W§;
   import §&!W§.§8!K§;
   import §&N§.§@,§;
   import §'!H§.§5,§;
   import §+B§.§5g§;
   import §3]§.§"§;
   import §3]§.§8[§;
   import §7W§.§ !+§;
   import §8!P§.§5p§;
   import §9h§.§,u§;
   import §=E§.b2Vec2;
   import §@!W§.§>!"§;
   import §]C§.§9!S§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §9N§
   {
      
      public static const § !4§:Number = §[&§.§"L§;
      
      public static const §?!=§:Number = §[&§.§#S§;
      
      public static const §8!5§:Number = 1 / 20;
      
      public static const §catch§:Number = §[&§.§#S§ * §8!5§;
      
      public static const §!!Z§:Number = § !4§ * §8!5§;
      
      public static const §01§:§3!§ = new §3!§(13 - 3);
      
      protected static var §#6§:String = §?I§.§<I§;
       
      
      protected var §9!%§:§-!7§;
      
      private var §49§:§#3§;
      
      private var §+!$§:Array = null;
      
      private var §9s§:§5g§;
      
      public var mLevelEngine:§'7§;
      
      private var §#A§:§`!7§;
      
      private var §;^§:§5p§;
      
      private var §=!+§:§'L§;
      
      private var §;o§:§7!W§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §&!#§:Boolean = false;
      
      private var §'u§:Boolean = false;
      
      private var §,!5§:Boolean = false;
      
      public var §^4§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §+!F§:Number;
      
      public var §1!7§:Number;
      
      private var §@3§:Number;
      
      public var §=e§:§!T§;
      
      public var §]!Q§:Boolean = false;
      
      private var §%w§:§[!,§;
      
      private var §6c§:Sprite;
      
      private var §-N§:§?I§;
      
      private var §5!S§:§9!S§ = null;
      
      private var §9q§:EventDispatcher;
      
      private var §>I§:Array;
      
      private var §3[§:Array;
      
      private var §`!%§:§ !+§;
      
      private var §>!S§:§5,§;
      
      private var §&U§:§8!K§;
      
      private var §5<§:§2z§;
      
      private var §6N§:§4W§;
      
      private var §%!E§:§4W§;
      
      private var §@S§:§4W§;
      
      private var §=v§:Stage;
      
      private var §-?§:§%!5§;
      
      protected var §'O§:§>!"§;
      
      protected var §&q§:§>!"§;
      
      protected var §`@§:Number = 0.0;
      
      protected var §^=§:String;
      
      private var §,$§:Boolean;
      
      private var §0!N§:Boolean;
      
      public var §?>§:Boolean;
      
      private var §-[§:uint = 1.417339207E9;
      
      public function §9N§(param1:Stage)
      {
         this.§3[§ = [];
         super();
         this.§9q§ = new EventDispatcher();
         this.§=e§ = new §!T§();
         this.§=v§ = param1;
         this.§&U§ = §8!K§.§-!U§;
         this.§5<§ = this.initAnimationManager(this.§&U§);
         this.§6N§ = this.§case §();
         this.§%!E§ = this.§8%§();
         this.§@S§ = this.get();
         var _loc2_:Stage3D = param1.stage3Ds[0];
         this.§`!%§ = new § !+§(§[!,§,param1,new Rectangle(0,0,§[&§.§"L§,§[&§.§#S§),_loc2_);
         §[&§.§;L§.§+!7§(this.§`!%§);
         _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§>D§,false,0,true);
         this.§`!%§.§-m§ = false;
         this.§`!%§.enableErrorChecking = false;
         this.§`!%§.§4m§ = 2;
         this.§`!%§.§3"§();
      }
      
      public static function §31§(param1:§#3§, param2:§#3§) : Number
      {
         var _loc3_:Number = param1.§2Z§ - param2.§2Z§;
         var _loc4_:Number = param1.§+-§ - param2.§+-§;
         return §86§(_loc3_,_loc4_);
      }
      
      public static function §86§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         if(!this.§6c§ && this.§6@§)
         {
            this.§6c§ = this.§%w§.§#w§;
         }
         return this.§6c§;
      }
      
      public function get §6@§() : Sprite
      {
         if(!this.§%w§)
         {
            this.§%w§ = this.§`!%§.§[!2§ as §[!,§;
            this.§%w§.§],§ = false;
         }
         return this.§%w§;
      }
      
      private function get §['§() : DisplayObject
      {
         if(this.§6@§)
         {
            return (this.§6@§ as §[!,§).§['§;
         }
         return null;
      }
      
      public function get §+S§() : §2z§
      {
         return this.§5<§;
      }
      
      public function get §"B§() : §8!K§
      {
         return this.§&U§;
      }
      
      public function get camera() : §5p§
      {
         return this.§;^§;
      }
      
      public function get objects() : §-!7§
      {
         return this.§9!%§;
      }
      
      public function get particles() : §7!W§
      {
         return this.§;o§;
      }
      
      public function get background() : §5g§
      {
         return this.§9s§;
      }
      
      public function get slingshot() : §'L§
      {
         return this.§=!+§;
      }
      
      public function get activeObject() : §#3§
      {
         return this.§49§;
      }
      
      public function get §#G§() : §`!7§
      {
         return this.§#A§;
      }
      
      public function get stage() : Stage
      {
         return this.§=v§;
      }
      
      public function get §null §() : §4W§
      {
         return this.§@S§;
      }
      
      protected function get §0D§() : §4W§
      {
         return this.§6N§;
      }
      
      public function set activeObject(param1:§#3§) : void
      {
         this.§49§ = param1;
      }
      
      public function set §;J§(param1:Boolean) : void
      {
         this.§0!N§ = param1;
      }
      
      public function clear() : void
      {
         if(this.§>!S§)
         {
            this.§>!S§.dispose();
         }
         if(this.§&U§)
         {
            this.§&U§.dispose();
         }
         if(this.§6N§ && this.§6N§.§"B§)
         {
            this.§6N§.§"B§.dispose();
         }
         if(this.§@S§ && this.§@S§.§"B§)
         {
            this.§@S§.§"B§.dispose();
         }
         if(this.§`!%§)
         {
            this.§`!%§.dispose();
         }
      }
      
      protected function §case §() : §4W§
      {
         return null;
      }
      
      protected function §8%§() : §4W§
      {
         return null;
      }
      
      protected function get() : §4W§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§8!K§) : §2z§
      {
         return new §2z§(param1);
      }
      
      public function §1K§(param1:Boolean) : void
      {
         if(§ !+§.§ Z§)
         {
            if(param1)
            {
               § !+§.§ Z§.start();
            }
            else
            {
               § !+§.§ Z§.stop();
               § !+§.§ Z§.color = 0;
            }
         }
      }
      
      public function §>!D§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function §2P§(param1:§9!S§) : void
      {
         if(this.§5!S§ != null)
         {
            this.§5!S§.removeEventListeners();
         }
         this.§5!S§ = param1;
         if(this.mReadyToRun)
         {
            this.§5!S§.addEventListeners();
         }
      }
      
      public function §"C§() : §>!"§
      {
         return this.§'O§;
      }
      
      public function §<!5§(param1:§5,§, param2:Array, param3:Function) : void
      {
         this.§>!S§ = param1;
         var _loc4_:int = this.§>!S§.§2"§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§&U§.§<!H§(this.§>!S§.§0!L§(_loc5_));
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§9q§.addEventListener(Event.INIT,param3);
            this.§3[§.push(param3);
         }
         if(this.§%!Z§(param2))
         {
            this.§3!%§();
         }
      }
      
      private function §%!Z§(param1:Array) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.§&U§.§2S§())
         {
            _loc2_ = this.§&U§.§@D§ / 1000;
            _loc3_ = this.§&U§.§^,§ / 1000;
            §@,§.log("\n\nMain texture manager memory usage:\n   textures " + _loc2_ + " kilobytes\n   bitmaps " + _loc3_ + " kilobytes\n\n");
            this.initializeAnimations(param1);
            return true;
         }
         this.§>I§ = param1.concat();
         return false;
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         this.§5<§.initializeAnimations(param1);
      }
      
      private function §>D§(param1:Event) : void
      {
         this.§&U§.§0i§();
         if(this.§0D§ && this.§0D§.§"B§)
         {
            this.§0D§.§"B§.§0i§();
         }
         if(this.§null § && this.§null §.§"B§)
         {
            this.§null §.§"B§.§0i§();
         }
         if(this.§>I§)
         {
            this.§%!Z§(this.§>I§);
            this.§>I§ = null;
            this.§3!%§();
         }
         if(this.§5!S§ != null && this.mReadyToRun)
         {
            this.§5!S§.addEventListeners();
         }
         if(this.§6N§)
         {
            this.§6N§.§2S§();
         }
         if(this.§@S§)
         {
            if(this.§@S§.§"B§)
            {
               this.§@S§.§"B§.§0i§();
               this.§@S§.§2S§();
            }
         }
      }
      
      private function §3!%§() : void
      {
         this.§9q§.dispatchEvent(new Event(Event.INIT));
         this.§4U§();
      }
      
      private function §4U§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§3[§)
         {
            this.§9q§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§3[§ = [];
      }
      
      public function init(param1:§?I§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§#A§ = new §`!7§(this,param1);
         this.§;^§ = this.§'!'§(param1);
         this.§+!F§ = 0;
         this.§1!7§ = 0;
         this.§@3§ = 0;
         this.§,$§ = false;
         this.mReadyToRun = false;
         this.§&!#§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         §#6§ = param1.theme;
         this.§-N§ = param1;
         this.§'u§ = this.§07§(param1.theme);
         this.§,!5§ = this.§2C§(param1.theme);
         if(this.§'u§ && this.§,!5§)
         {
            this.§<!E§(param1);
         }
         else
         {
            this.§<z§(param1.theme);
         }
         this.initReplay();
         §74§.init();
      }
      
      protected function initReplay() : void
      {
         this.§'O§ = new §>!"§(§<!+§.§^R§);
      }
      
      protected function §07§(param1:String) : Boolean
      {
         if(this.§6N§)
         {
            return false;
         }
         return true;
      }
      
      protected function §2C§(param1:String) : Boolean
      {
         var _loc2_:§"§ = null;
         if(this.§%!E§)
         {
            _loc2_ = §8[§.§8V§(param1);
            if(_loc2_)
            {
               if(_loc2_.§&!D§ && !this.§%!E§.§^e§(_loc2_.§&!D§))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function §<z§(param1:String) : void
      {
         var _loc2_:§"§ = null;
         if(this.§6N§ && !this.§07§(param1))
         {
            this.§6N§.removeEventListener(Event.COMPLETE,this.§6!4§);
            this.§6N§.removeEventListener(Event.CANCEL,this.§>v§);
            this.§6N§.addEventListener(Event.COMPLETE,this.§6!4§);
            this.§6N§.addEventListener(Event.CANCEL,this.§>v§);
            this.§6N§.§[?§(param1);
         }
         if(this.§%!E§ && !this.§2C§(param1))
         {
            this.§%!E§.removeEventListener(Event.COMPLETE,this.§[!E§);
            this.§%!E§.removeEventListener(Event.CANCEL,this.§^!A§);
            this.§%!E§.addEventListener(Event.COMPLETE,this.§[!E§);
            this.§%!E§.addEventListener(Event.CANCEL,this.§^!A§);
            _loc2_ = §8[§.§8V§(param1);
            if(_loc2_)
            {
               this.§%!E§.§[?§(_loc2_.§&!D§);
            }
         }
      }
      
      private function §6!4§(param1:Event) : void
      {
         this.§6N§.removeEventListener(Event.COMPLETE,this.§6!4§);
         this.§6N§.removeEventListener(Event.CANCEL,this.§>v§);
         this.§'u§ = true;
         if(this.§'u§ && this.§,!5§)
         {
            this.§<!E§(this.§-N§);
         }
      }
      
      private function §>v§(param1:Event) : void
      {
         this.§6N§.removeEventListener(Event.COMPLETE,this.§6!4§);
         this.§6N§.removeEventListener(Event.CANCEL,this.§>v§);
         this.§&!#§ = true;
      }
      
      private function §[!E§(param1:Event) : void
      {
         this.§6N§.removeEventListener(Event.COMPLETE,this.§[!E§);
         this.§6N§.removeEventListener(Event.CANCEL,this.§^!A§);
         this.§,!5§ = true;
         if(this.§'u§ && this.§,!5§)
         {
            this.§<!E§(this.§-N§);
         }
      }
      
      private function §^!A§(param1:Event) : void
      {
         this.§6N§.removeEventListener(Event.COMPLETE,this.§[!E§);
         this.§6N§.removeEventListener(Event.CANCEL,this.§^!A§);
         this.§,!5§ = true;
         if(this.§'u§ && this.§,!5§)
         {
            this.§<!E§(this.§-N§);
         }
      }
      
      public function get §?G§() : §8!K§
      {
         return this.§&U§;
      }
      
      private function §<!E§(param1:§?I§) : void
      {
         this.§0!N§ = false;
         this.§?>§ = false;
         if(§ !+§.§?!L§)
         {
            § !+§.§?!L§.speed = 1;
         }
         this.mLevelEngine = new §'7§(this);
         this.§9s§ = this.§ else§(param1.theme,this.§#A§.§@y§ / §8!5§,this.§?G§,this.§;^§.§@j§());
         this.§9s§.§@!-§(§[&§.§'a§());
         this.§9!%§ = this.initLevelObjectManager(param1);
         this.§=!+§ = this.initLevelSlingshot(param1);
         this.§;o§ = this.§1_§(this.§5<§,this.§&U§);
         this.§;^§.init();
         this.§9!P§();
         this.loadPreviousReplayData();
         this.mReadyToRun = true;
         if(this.§5!S§)
         {
            this.§5!S§.addEventListeners();
         }
      }
      
      protected function loadPreviousReplayData() : void
      {
         if(this.§^=§)
         {
            this.§&q§ = §>!"§.§<!E§(this.§^=§);
            this.§&q§.speed = 1;
            this.§&q§.play();
            this.§`@§ = -1000;
            this.§^=§ = null;
         }
      }
      
      public function §4w§(param1:String) : void
      {
         this.§^=§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§&q§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§&q§)
         {
            if(param1)
            {
               this.§&q§.speed = Math.min(this.§&q§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§&q§.speed = Math.max(this.§&q§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§&q§)
         {
            this.§&q§.speed = 1;
         }
      }
      
      protected function initLevelObjectManager(param1:§?I§) : §-!7§
      {
         return new §-!7§(this,param1,new Sprite());
      }
      
      protected function §'!'§(param1:§?I§) : §5p§
      {
         return new §5p§(this,param1);
      }
      
      protected function § else§(param1:String, param2:Number, param3:§8!K§, param4:Number) : §5g§
      {
         return new §5g§(param1,param2,param3,param4);
      }
      
      protected function initLevelSlingshot(param1:§?I§) : §'L§
      {
         return new §'L§(this,param1,new Sprite());
      }
      
      protected function §1_§(param1:§2z§, param2:§8!K§) : §7!W§
      {
         return new §7!W§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = true) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§?I§ = new §?I§();
         _loc3_.§4Y§ = -12;
         var _loc4_:§^b§;
         (_loc4_ = new §^b§()).left = 0;
         _loc4_.top = -§5p§.§8u§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §5p§.§8u§;
         _loc4_.right = _loc4_.left + §5p§.§6! §;
         _loc4_.y = -13.929;
         _loc4_.x = §5p§.§6! §;
         _loc4_.id = §5p§.§9!,§;
         _loc3_.§2j§.push(_loc4_);
         var _loc5_:§^b§;
         (_loc5_ = new §^b§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §5p§.§6! §;
         _loc5_.bottom = _loc5_.top + §5p§.§8u§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §5p§.§6! § / 2;
         _loc5_.id = §5p§.§ x§;
         _loc3_.§2j§.push(_loc5_);
         if(param2)
         {
            this.§=!Z§(_loc3_);
         }
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§#6§ != null)
         {
            _loc3_.theme = §#6§;
         }
         this.init(_loc3_);
      }
      
      private function §]+§() : Number
      {
         this.§-[§ ^= this.§-[§ << 21;
         this.§-[§ ^= this.§-[§ >>> 35;
         this.§-[§ ^= this.§-[§ << 4;
         return this.§-[§ * (1 / uint.MAX_VALUE);
      }
      
      private function §=!Z§(param1:§?I§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§,u§ = null;
         this.§-[§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§]+§() * 5;
               (_loc5_ = new §,u§()).x = 30 + _loc3_ * 10 + this.§]+§() * 9;
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
                  _loc5_.angle = 45 - this.§]+§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§]+§() * 3 - _loc3_ * 8;
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
                  _loc5_.angle = this.§]+§() * 360;
               }
               param1.§%!&§.push(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      private function §<r§() : void
      {
      }
      
      public function §9!P§() : void
      {
         if(§5g§.§,7§)
         {
            this.§>r§(this.§9s§.§41§,false);
         }
         this.§>r§(this.§;o§.§0!"§(§7!W§.§>!P§),false);
         this.§>r§(this.§;o§.§0!"§(§7!W§.§&!>§),true);
         this.§>r§(this.§;o§.§0!"§(§7!W§.§`!+§),true);
         this.§>r§(this.§9!%§.§[!M§,true);
         this.§>r§(this.§=!+§.sprite,true);
         this.§>r§(this.§;o§.§0!"§(§7!W§.§'>§),true);
         this.§>r§(this.§9s§.§[!B§,false);
         if(§5g§.§,7§)
         {
            this.§>r§(this.§9s§.§+#§,false);
         }
         this.§>r§(this.§;o§.§0!"§(§7!W§.§-!;§),true);
         if(!§'7§.§5!2§)
         {
         }
      }
      
      private function §>r§(param1:Sprite, param2:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(param1);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         param1 /= §[&§.§8n§;
         param2 /= §[&§.§8n§;
         _loc3_.x = (param1 / §5p§.§ !T§ + this.§;^§.§02§ - §5p§.§7n§ / §5p§.§ !T§) * §8!5§;
         _loc3_.y = (param2 / §5p§.§ !T§ + this.§;^§.§ !,§ - §5p§.§&!N§ / §5p§.§ !T§) * §8!5§;
         return _loc3_;
      }
      
      public function §[e§(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / §8!5§ + §5p§.§7n§ / §5p§.§ !T§ - this.§;^§.§02§) * §5p§.§ !T§;
         _loc3_.y = (param2 / §8!5§ + §5p§.§&!N§ / §5p§.§ !T§ - this.§;^§.§ !,§) * §5p§.§ !T§;
         var _loc4_:Number = Math.max(§[&§.§8n§,§[&§.§6!H§);
         _loc3_.x *= _loc4_;
         _loc3_.y *= _loc4_;
         return _loc3_;
      }
      
      public function §2!$§(param1:String, param2:Number, param3:Number) : void
      {
         this.§9!%§.addObject(param1,param2,param3);
      }
      
      public function §?e§() : void
      {
         if(this.§['§)
         {
            this.§['§.visible = true;
            this.§['§.alpha = 0;
         }
         this.§^4§ = 0;
      }
      
      public function §80§() : void
      {
         this.§-?§ = new §%!5§(§1V§.§[g§,§1V§.§#!G§);
      }
      
      public function §8!&§() : void
      {
         this.§-?§ = null;
      }
      
      public function clearLevel() : void
      {
         if(this.§9s§)
         {
            this.§9s§.dispose();
            this.§9s§ = null;
         }
         if(this.§9!%§)
         {
            this.§9!%§.dispose();
            this.§9!%§ = null;
            this.§49§ = null;
         }
         if(this.mLevelEngine)
         {
            if(!this.mLevelEngine.§4r§)
            {
            }
            this.mLevelEngine.clear();
            this.mLevelEngine = null;
         }
         if(this.§#A§)
         {
            this.§#A§.clear();
            this.§#A§ = null;
         }
         if(this.§=!+§)
         {
            this.§=!+§.dispose();
            this.§=!+§ = null;
         }
         if(this.§;^§)
         {
            this.§;^§.clear();
            this.§;^§ = null;
         }
         if(this.§;o§)
         {
            this.§;o§.dispose();
            this.§;o§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§+!F§ = 0;
         this.§1!7§ = 0;
         this.mReadyToRun = false;
         this.§,$§ = false;
         this.§^4§ = §1V§.§^5§;
         if(this.§6@§)
         {
            (this.§6@§ as §[!,§).§85§.x = 0;
            (this.§6@§ as §[!,§).§85§.y = 0;
         }
         if(this.§['§)
         {
            this.§['§.visible = false;
         }
         this.§&q§ = null;
         this.§'O§ = null;
         if(this.§6N§)
         {
            this.§6N§.removeEventListener(Event.COMPLETE,this.§6!4§);
            this.§6N§.removeEventListener(Event.CANCEL,this.§>v§);
         }
         if(this.§%!E§)
         {
            this.§%!E§.removeEventListener(Event.COMPLETE,this.§[!E§);
            this.§%!E§.removeEventListener(Event.CANCEL,this.§^!A§);
         }
         this.§4U§();
         if(§ !+§.§ Z§)
         {
            § !+§.§ Z§.color = 0;
         }
         if(this.§5!S§)
         {
            this.§5!S§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver() : void
      {
      }
      
      public function §!8§() : String
      {
         if(this.§'O§)
         {
            return this.§'O§.toString();
         }
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         if(!this.mReadyToRun || !§ !+§.§=2§())
         {
            return 0;
         }
         if(this.§&q§ && this.§&q§.§?!5§)
         {
            return this.§;8§(param1,param2,param3);
         }
         return this.§>q§(param1,true,param2,param3);
      }
      
      protected function §>q§(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         if(this.§0!N§)
         {
            param1 *= 0.2;
            if(§ !+§.§?!L§)
            {
               § !+§.§?!L§.speed = 0.2;
            }
         }
         var _loc5_:Number = 0;
         this.§1!7§ += param1;
         if(param3)
         {
            this.§+!F§ += param1;
            _loc5_ = this.mLevelEngine.§7D§(this.§+!F§);
            this.§=!+§.update(param1,param4);
            this.§+!F§ = _loc5_;
         }
         else
         {
            this.§9!%§.§>Z§();
            this.§+!F§ = 0;
         }
         if(param2)
         {
            this.§"!,§(param1,_loc5_);
         }
         return param1;
      }
      
      private function §;8§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc5_:Number = NaN;
         var _loc4_:Number = §'7§.§"!G§ * 1000;
         if(this.§&q§)
         {
            param1 *= this.§&q§.speed;
            _loc5_ = this.§1!7§ + param1;
            while(this.§1!7§ + _loc4_ < _loc5_)
            {
               if(this.§1!7§ + _loc4_ > this.§`@§)
               {
                  this.§&q§.step(this);
                  this.§`@§ += _loc4_;
               }
               this.§>q§(_loc4_,false,param2,param3);
            }
            if(_loc5_ > this.§`@§ + _loc4_)
            {
               this.§&q§.step(this);
               this.§`@§ += _loc4_;
            }
            if(this.§1!7§ < _loc5_)
            {
               this.§>q§(_loc5_ - this.§1!7§,true,param2,param3);
            }
            return param1;
         }
         return this.§>q§(_loc4_,true,param2,param3);
      }
      
      private function §"!,§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.§9s§.update(param1);
         this.§9!%§.§'!P§(param1,param2);
         this.§@!U§();
         if(this.§^4§ < §1V§.§^5§)
         {
            this.§^4§ += param1;
            _loc3_ = §1V§.§^5§ / 2;
            _loc4_ = (-Math.abs(this.§^4§ - _loc3_) + _loc3_) * (§1V§.§9c§ / _loc3_);
            if(this.§['§)
            {
               this.§['§.alpha = _loc4_;
            }
         }
         else if(this.§['§)
         {
            this.§['§.visible = false;
         }
         if(this.§-?§)
         {
            if(!this.§-?§.§>Y§(this.§;^§,param1))
            {
               this.§8!&§();
            }
         }
         this.§;^§.§&G§(param1);
         this.mLevelEngine.§8K§();
         this.§;o§.update(param1);
      }
      
      public function §8z§(param1:Number) : void
      {
         this.objects.§>Z§();
         this.objects.§?!H§(param1 * 1000);
         this.§ c§();
      }
      
      public function §@!U§() : void
      {
         var _loc1_:§#3§ = null;
         if(this.§1!7§ > this.§@3§ + 1000 / 30)
         {
            if(this.§+!$§ != null)
            {
               for each(_loc1_ in this.§+!$§)
               {
                  _loc1_.addTrail();
               }
            }
            this.§@3§ = this.§1!7§;
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§#3§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.§9!%§.isPigsAlive(true))
            {
               _loc2_ = this.§9!%§.§>1§(true);
               _loc2_.§5-§.mTryToScream = §"d§.§1!&§;
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§9!%§.§^H§());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            if(this.§9!%§.isPigsAlive(true))
            {
               _loc2_ = this.§9!%§.§>1§(true);
               _loc2_.§5-§.mTryToBlink = §"d§.§>!G§;
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§9!%§.§^H§());
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §?f§.§#!9§;
         }
         §74§.addScore(param1,param2);
         this.§5!S§.addScore(param1);
         if(param3 && param1 > 0 && !this.§?>§)
         {
            this.§7H§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §7H§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §?f§.§!A§;
         }
         this.§;o§.addParticle(§?f§.§<M§,§7!W§.§-!;§,§?f§.§[H§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §!G§(param1:§#3§) : void
      {
         if(this.§+!$§ == null)
         {
            this.§+!$§ = new Array();
         }
         this.§+!$§.push(param1);
      }
      
      public function §+!'§() : void
      {
         this.§=!+§.§+!'§();
         this.§9!%§.mSardineCanAdded = true;
         this.§?>§ = true;
      }
      
      public function §6!A§(param1:§#3§) : void
      {
         this.§;o§.§+A§(§7!W§.§>!P§);
         if(this.§+!$§.indexOf(param1) >= 0)
         {
            this.§+!$§.splice(this.§+!$§.indexOf(param1),1);
         }
         if(this.§+!$§.length == 0)
         {
            this.§+!$§ = null;
         }
      }
      
      public function §>!O§(param1:§[!N§, param2:Number, param3:Number) : void
      {
         this.§49§ = this.§9!%§.addObject(param1.name,param1.mX,param1.mY,0,true,false,true,param1.scale);
         var _loc4_:Number = param1.name.toUpperCase() == "BIRD_GREEN" ? Number(§'L§.§1p§) : Number(§'L§.§^z§);
         if(param1.§!y§ > 1)
         {
            this.§49§.§5!@§(param1.§!y§);
            this.§49§.§5-§.§!!S§();
         }
         if(param1.§6A§ != 0)
         {
            _loc4_ = param1.§6A§;
         }
         var _loc5_:Number = -_loc4_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc6_:Number = _loc4_ * param2 * Math.sin(param3 / (180 / Math.PI));
         this.§49§.§?!"§(new b2Vec2(_loc5_,_loc6_),false,true);
         this.camera.§^!7§(§5p§.§!!§);
         if(this.§'O§)
         {
            this.§'O§.§>!O§(this.mLevelEngine.currentStep,param1.mX,param1.mY,param2,param3);
         }
      }
      
      public function activatePowerup() : void
      {
         this.§,$§ = true;
      }
      
      private function § c§() : void
      {
         if(!this.§,$§)
         {
            return;
         }
         this.§,$§ = false;
         if(this.activeObject is §!!!§ && !(this.activeObject as §!!!§).§@A§)
         {
            if(this.activeObject.activateSpecialPower(this.§,8§))
            {
               this.§]!Q§ = true;
            }
         }
         else
         {
            this.§9!%§.§switch§();
         }
         if(this.§'O§)
         {
            this.§'O§.§8!"§(this.mLevelEngine.currentStep);
         }
      }
      
      public function §while§() : void
      {
         this.§9!%§.§while§();
      }
      
      public function §10§() : void
      {
         this.§9!%§.§5;§();
      }
      
      public function §@!O§() : §?I§
      {
         var _loc1_:§?I§ = new §?I§();
         _loc1_.§<!D§ = this.§-N§.§<!D§;
         _loc1_.§8H§ = this.§-N§.§8H§;
         this.§;^§.§=!H§(_loc1_);
         this.§9!%§.§"!2§(_loc1_);
         this.§=!+§.§@7§(_loc1_);
         _loc1_.theme = this.§9s§.§''§();
         return _loc1_;
      }
      
      public function §'!9§(param1:int) : void
      {
         this.§-N§.§8H§ = param1;
      }
      
      public function §^!0§(param1:int) : void
      {
         this.§-N§.§<!D§ = param1;
      }
      
      public function §8"§(param1:Number, param2:Number) : void
      {
         if(this.§%w§)
         {
            this.§%w§.§!3§(param1,param2);
         }
         if(this.§;^§)
         {
            this.§;^§.§&G§(0);
         }
      }
      
      public function get §]!;§() : §?I§
      {
         return this.§-N§;
      }
      
      public function get §,8§() : §-!7§
      {
         return this.§9!%§;
      }
   }
}
