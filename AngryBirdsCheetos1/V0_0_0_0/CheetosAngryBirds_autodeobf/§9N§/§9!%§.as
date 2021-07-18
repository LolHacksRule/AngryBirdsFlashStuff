package §9N§
{
   import § !+§.§0Z§;
   import §!J§.§[&§;
   import §&! §.§3!§;
   import §'!H§.§5,§;
   import §,u§.§-!#§;
   import §-!7§.§&$§;
   import §-!7§.§'x§;
   import §-!7§.§@m§;
   import §-!7§.§^!1§;
   import §3]§.§"§;
   import §3]§.§8[§;
   import §4W§.§!]§;
   import §4W§.§3!@§;
   import §4W§.§9@§;
   import §5g§.§!!+§;
   import §5p§.§?M§;
   import §9"§.b2Vec2;
   import §<!+§.§!T§;
   import §<!+§.§[!!§;
   import §<!+§.§[j§;
   import §<!+§.§with§;
   import §>!"§.§"P§;
   import §?f§.§,v§;
   import §?f§.§-&§;
   import §@,§.§4h§;
   import §]C§.§9!S§;
   import §`a§.DisplayObject;
   import §`a§.Sprite;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §9!%§
   {
      
      public static const §?!=§:Number = §[&§.§"L§;
      
      public static const §8!5§:Number = §[&§.§#S§;
      
      public static const §catch§:Number = 1 / 20;
      
      public static const §!!Z§:Number = §[&§.§#S§ * §catch§;
      
      public static const §01§:Number = §?!=§ * §catch§;
      
      public static const §#6§:§3!§ = new §3!§(13 - 3);
      
      protected static var §31§:String = §with§.§+!-§;
       
      
      protected var §49§:§&$§;
      
      private var §+!$§:§@m§;
      
      private var §9s§:Array = null;
      
      private var §#A§:§!!+§;
      
      public var mLevelEngine:§0!4§;
      
      private var §;^§:§'!Q§;
      
      private var §=!+§:§?M§;
      
      private var §;o§:§;c§;
      
      private var §&!#§:§,v§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §'u§:Boolean = false;
      
      private var §,!5§:Boolean = false;
      
      private var §^4§:Boolean = false;
      
      public var §+!F§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §1!7§:Number;
      
      public var §@3§:Number;
      
      private var §=e§:Number;
      
      public var §]!Q§:§[j§;
      
      public var §%w§:Boolean = false;
      
      private var §6c§:§!! §;
      
      private var §-N§:Sprite;
      
      private var §5!S§:§with§;
      
      private var §9q§:§9!S§ = null;
      
      private var §>I§:EventDispatcher;
      
      private var §3[§:Array;
      
      private var §`!%§:Array;
      
      private var §>!S§:§0Z§;
      
      private var §&U§:§5,§;
      
      private var §5<§:§!]§;
      
      private var §6N§:§3!@§;
      
      private var §%!E§:§9@§;
      
      private var §=v§:§9@§;
      
      private var §@S§:§9@§;
      
      private var §-?§:Stage;
      
      private var §'O§:§!!$§;
      
      protected var §&q§:§"P§;
      
      protected var §`@§:§"P§;
      
      protected var §^=§:Number = 0.0;
      
      protected var §,$§:String;
      
      private var §0!N§:Boolean;
      
      private var §?>§:Boolean;
      
      public var §6@§:Boolean;
      
      private var §]+§:uint = 1.417339207E9;
      
      public function §9!%§(param1:Stage)
      {
         this.§`!%§ = [];
         super();
         this.§>I§ = new EventDispatcher();
         this.§]!Q§ = new §[j§();
         this.§-?§ = param1;
         this.§5<§ = §!]§.§!!L§;
         this.§6N§ = this.initAnimationManager(this.§5<§);
         this.§%!E§ = this.§8%§();
         this.§=v§ = this.get();
         this.§@S§ = this.§1K§();
         var _loc2_:Stage3D = param1.stage3Ds[0];
         this.§>!S§ = new §0Z§(§!! §,param1,new Rectangle(0,0,§[&§.§"L§,§[&§.§#S§),_loc2_);
         §[&§.§;L§.§]!P§(this.§>!S§);
         _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§3!%§,false,0,true);
         this.§>!S§.§4m§ = false;
         this.§>!S§.enableErrorChecking = false;
         this.§>!S§.§ l§ = 2;
         this.§>!S§.§+!"§();
      }
      
      public static function §86§(param1:§@m§, param2:§@m§) : Number
      {
         var _loc3_:Number = param1.§+-§ - param2.§+-§;
         var _loc4_:Number = param1.§9!V§ - param2.§9!V§;
         return §[!N§(_loc3_,_loc4_);
      }
      
      public static function §[!N§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         if(!this.§-N§ && this.§['§)
         {
            this.§-N§ = this.§6c§.§85§;
         }
         return this.§-N§;
      }
      
      public function get §['§() : Sprite
      {
         if(!this.§6c§)
         {
            this.§6c§ = this.§>!S§.§'w§ as §!! §;
            this.§6c§.§=!;§ = false;
         }
         return this.§6c§;
      }
      
      private function get §+S§() : DisplayObject
      {
         if(this.§['§)
         {
            return (this.§['§ as §!! §).§+S§;
         }
         return null;
      }
      
      public function get §"B§() : §3!@§
      {
         return this.§6N§;
      }
      
      public function get §#G§() : §!]§
      {
         return this.§5<§;
      }
      
      public function get camera() : §?M§
      {
         return this.§=!+§;
      }
      
      public function get objects() : §&$§
      {
         return this.§49§;
      }
      
      public function get particles() : §,v§
      {
         return this.§&!#§;
      }
      
      public function get background() : §!!+§
      {
         return this.§#A§;
      }
      
      public function get slingshot() : §;c§
      {
         return this.§;o§;
      }
      
      public function get activeObject() : §@m§
      {
         return this.§+!$§;
      }
      
      public function get §null §() : §'!Q§
      {
         return this.§;^§;
      }
      
      public function get stage() : Stage
      {
         return this.§-?§;
      }
      
      public function get §0D§() : §9@§
      {
         return this.§@S§;
      }
      
      protected function get §;J§() : §9@§
      {
         return this.§%!E§;
      }
      
      public function set activeObject(param1:§@m§) : void
      {
         this.§+!$§ = param1;
      }
      
      public function set §case §(param1:Boolean) : void
      {
         this.§?>§ = param1;
      }
      
      public function clear() : void
      {
         if(this.§&U§)
         {
            this.§&U§.dispose();
         }
         if(this.§5<§)
         {
            this.§5<§.dispose();
         }
         if(this.§%!E§ && this.§%!E§.§#G§)
         {
            this.§%!E§.§#G§.dispose();
         }
         if(this.§@S§ && this.§@S§.§#G§)
         {
            this.§@S§.§#G§.dispose();
         }
         if(this.§>!S§)
         {
            this.§>!S§.dispose();
         }
      }
      
      protected function §8%§() : §9@§
      {
         return null;
      }
      
      protected function get() : §9@§
      {
         return null;
      }
      
      protected function §1K§() : §9@§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§!]§) : §3!@§
      {
         return new §3!@§(param1);
      }
      
      public function §>!D§(param1:Boolean) : void
      {
         if(§0Z§.§4J§)
         {
            if(param1)
            {
               §0Z§.§4J§.start();
            }
            else
            {
               §0Z§.§4J§.stop();
               §0Z§.§4J§.color = 0;
            }
         }
      }
      
      public function §"C§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function §2P§(param1:§9!S§) : void
      {
         if(this.§9q§ != null)
         {
            this.§9q§.removeEventListeners();
         }
         this.§9q§ = param1;
         if(this.mReadyToRun)
         {
            this.§9q§.addEventListeners();
         }
      }
      
      public function §%!Z§() : §"P§
      {
         return this.§&q§;
      }
      
      public function §<!5§(param1:§5,§, param2:Array, param3:Function) : void
      {
         this.§&U§ = param1;
         var _loc4_:int = this.§&U§.§2"§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§5<§.§?1§(this.§&U§.§0!L§(_loc5_));
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§>I§.addEventListener(Event.INIT,param3);
            this.§`!%§.push(param3);
         }
         if(this.§>D§(param2))
         {
            this.§4U§();
         }
      }
      
      private function §>D§(param1:Array) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.§5<§.§8!K§())
         {
            _loc2_ = this.§5<§.§^,§ / 1000;
            _loc3_ = this.§5<§.§<!H§ / 1000;
            §4h§.log("\n\nMain texture manager memory usage:\n   textures " + _loc2_ + " kilobytes\n   bitmaps " + _loc3_ + " kilobytes\n\n");
            this.initializeAnimations(param1);
            return true;
         }
         this.§3[§ = param1.concat();
         return false;
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         this.§6N§.initializeAnimations(param1);
      }
      
      private function §3!%§(param1:Event) : void
      {
         this.§5<§.§"7§();
         if(this.§;J§ && this.§;J§.§#G§)
         {
            this.§;J§.§#G§.§"7§();
         }
         if(this.§0D§ && this.§0D§.§#G§)
         {
            this.§0D§.§#G§.§"7§();
         }
         if(this.§3[§)
         {
            this.§>D§(this.§3[§);
            this.§3[§ = null;
            this.§4U§();
         }
         if(this.§9q§ != null && this.mReadyToRun)
         {
            this.§9q§.addEventListeners();
         }
         if(this.§%!E§)
         {
            this.§%!E§.§8!K§();
         }
         if(this.§@S§)
         {
            if(this.§@S§.§#G§)
            {
               this.§@S§.§#G§.§"7§();
               this.§@S§.§8!K§();
            }
         }
      }
      
      private function §4U§() : void
      {
         this.§>I§.dispatchEvent(new Event(Event.INIT));
         this.§07§();
      }
      
      private function §07§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§`!%§)
         {
            this.§>I§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§`!%§ = [];
      }
      
      public function init(param1:§with§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§;^§ = new §'!Q§(this,param1);
         this.§=!+§ = this.§ else§(param1);
         this.§1!7§ = 0;
         this.§@3§ = 0;
         this.§=e§ = 0;
         this.§0!N§ = false;
         this.mReadyToRun = false;
         this.§'u§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         §31§ = param1.theme;
         this.§5!S§ = param1;
         this.§,!5§ = this.§2C§(param1.theme);
         this.§^4§ = this.§<z§(param1.theme);
         if(this.§,!5§ && this.§^4§)
         {
            this.§[I§(param1);
         }
         else
         {
            this.§6!4§(param1.theme);
         }
         this.initReplay();
         §^_§.init();
      }
      
      protected function initReplay() : void
      {
         this.§&q§ = new §"P§(§[!!§.§7!F§);
      }
      
      protected function §2C§(param1:String) : Boolean
      {
         if(this.§%!E§)
         {
            return false;
         }
         return true;
      }
      
      protected function §<z§(param1:String) : Boolean
      {
         var _loc2_:§"§ = null;
         if(this.§=v§)
         {
            _loc2_ = §8[§.§8V§(param1);
            if(_loc2_)
            {
               if(_loc2_.§&!D§ && !this.§=v§.§[?§(_loc2_.§&!D§))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function §6!4§(param1:String) : void
      {
         var _loc2_:§"§ = null;
         if(this.§%!E§ && !this.§2C§(param1))
         {
            this.§%!E§.removeEventListener(Event.COMPLETE,this.§>v§);
            this.§%!E§.removeEventListener(Event.CANCEL,this.§[!E§);
            this.§%!E§.addEventListener(Event.COMPLETE,this.§>v§);
            this.§%!E§.addEventListener(Event.CANCEL,this.§[!E§);
            this.§%!E§.§9=§(param1);
         }
         if(this.§=v§ && !this.§<z§(param1))
         {
            this.§=v§.removeEventListener(Event.COMPLETE,this.§^!A§);
            this.§=v§.removeEventListener(Event.CANCEL,this.§?G§);
            this.§=v§.addEventListener(Event.COMPLETE,this.§^!A§);
            this.§=v§.addEventListener(Event.CANCEL,this.§?G§);
            _loc2_ = §8[§.§8V§(param1);
            if(_loc2_)
            {
               this.§=v§.§9=§(_loc2_.§&!D§);
            }
         }
      }
      
      private function §>v§(param1:Event) : void
      {
         this.§%!E§.removeEventListener(Event.COMPLETE,this.§>v§);
         this.§%!E§.removeEventListener(Event.CANCEL,this.§[!E§);
         this.§,!5§ = true;
         if(this.§,!5§ && this.§^4§)
         {
            this.§[I§(this.§5!S§);
         }
      }
      
      private function §[!E§(param1:Event) : void
      {
         this.§%!E§.removeEventListener(Event.COMPLETE,this.§>v§);
         this.§%!E§.removeEventListener(Event.CANCEL,this.§[!E§);
         this.§'u§ = true;
      }
      
      private function §^!A§(param1:Event) : void
      {
         this.§%!E§.removeEventListener(Event.COMPLETE,this.§^!A§);
         this.§%!E§.removeEventListener(Event.CANCEL,this.§?G§);
         this.§^4§ = true;
         if(this.§,!5§ && this.§^4§)
         {
            this.§[I§(this.§5!S§);
         }
      }
      
      private function §?G§(param1:Event) : void
      {
         this.§%!E§.removeEventListener(Event.COMPLETE,this.§^!A§);
         this.§%!E§.removeEventListener(Event.CANCEL,this.§?G§);
         this.§^4§ = true;
         if(this.§,!5§ && this.§^4§)
         {
            this.§[I§(this.§5!S§);
         }
      }
      
      public function get §4w§() : §!]§
      {
         return this.§5<§;
      }
      
      private function §[I§(param1:§with§) : void
      {
         this.§?>§ = false;
         this.§6@§ = false;
         if(§0Z§.§-m§)
         {
            §0Z§.§-m§.speed = 1;
         }
         this.mLevelEngine = new §0!4§(this);
         this.§#A§ = this.§1_§(param1.theme,this.§;^§.§;U§ / §catch§,this.§4w§,this.§=!+§.§9L§());
         this.§#A§.§@!-§(§[&§.§'a§());
         this.§49§ = this.initLevelObjectManager(param1);
         this.§;o§ = this.initLevelSlingshot(param1);
         this.§&!#§ = this.§-[§(this.§6N§,this.§5<§);
         this.§=!+§.init();
         this.§>r§();
         this.loadPreviousReplayData();
         this.mReadyToRun = true;
         if(this.§9q§)
         {
            this.§9q§.addEventListeners();
         }
      }
      
      protected function loadPreviousReplayData() : void
      {
         if(this.§,$§)
         {
            this.§`@§ = §"P§.§[I§(this.§,$§);
            this.§`@§.speed = 1;
            this.§`@§.play();
            this.§^=§ = -1000;
            this.§,$§ = null;
         }
      }
      
      public function §'!'§(param1:String) : void
      {
         this.§,$§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§`@§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§`@§)
         {
            if(param1)
            {
               this.§`@§.speed = Math.min(this.§`@§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§`@§.speed = Math.max(this.§`@§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§`@§)
         {
            this.§`@§.speed = 1;
         }
      }
      
      protected function initLevelObjectManager(param1:§with§) : §&$§
      {
         return new §&$§(this,param1,new Sprite());
      }
      
      protected function § else§(param1:§with§) : §?M§
      {
         return new §?M§(this,param1);
      }
      
      protected function §1_§(param1:String, param2:Number, param3:§!]§, param4:Number) : §!!+§
      {
         return new §!!+§(param1,param2,param3,param4);
      }
      
      protected function initLevelSlingshot(param1:§with§) : §;c§
      {
         return new §;c§(this,param1,new Sprite());
      }
      
      protected function §-[§(param1:§3!@§, param2:§!]§) : §,v§
      {
         return new §,v§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = true) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§with§ = new §with§();
         _loc3_.§%!&§ = -12;
         var _loc4_:§!T§;
         (_loc4_ = new §!T§()).left = 0;
         _loc4_.top = -§?M§.§9!U§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §?M§.§9!U§;
         _loc4_.right = _loc4_.left + §?M§.§8u§;
         _loc4_.y = -13.929;
         _loc4_.x = §?M§.§8u§;
         _loc4_.id = §?M§.§7!6§;
         _loc3_.§'I§.push(_loc4_);
         var _loc5_:§!T§;
         (_loc5_ = new §!T§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §?M§.§8u§;
         _loc5_.bottom = _loc5_.top + §?M§.§9!U§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §?M§.§8u§ / 2;
         _loc5_.id = §?M§.§9!,§;
         _loc3_.§'I§.push(_loc5_);
         if(param2)
         {
            this.§<r§(_loc3_);
         }
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§31§ != null)
         {
            _loc3_.theme = §31§;
         }
         this.init(_loc3_);
      }
      
      private function §=!Z§() : Number
      {
         this.§]+§ ^= this.§]+§ << 21;
         this.§]+§ ^= this.§]+§ >>> 35;
         this.§]+§ ^= this.§]+§ << 4;
         return this.§]+§ * (1 / uint.MAX_VALUE);
      }
      
      private function §<r§(param1:§with§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§-!#§ = null;
         this.§]+§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§=!Z§() * 5;
               (_loc5_ = new §-!#§()).x = 30 + _loc3_ * 10 + this.§=!Z§() * 9;
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
                  _loc5_.angle = 45 - this.§=!Z§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§=!Z§() * 3 - _loc3_ * 8;
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
                  _loc5_.angle = this.§=!Z§() * 360;
               }
               param1.§@k§.push(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      private function §9!P§() : void
      {
      }
      
      public function §>r§() : void
      {
         if(§!!+§.§^!R§)
         {
            this.§[e§(this.§#A§.§+#§,false);
         }
         this.§[e§(this.§&!#§.§7q§(§,v§.§&!>§),false);
         this.§[e§(this.§&!#§.§7q§(§,v§.§`!+§),true);
         this.§[e§(this.§&!#§.§7q§(§,v§.§'>§),true);
         this.§[e§(this.§49§.§1!+§,true);
         this.§[e§(this.§;o§.sprite,true);
         this.§[e§(this.§&!#§.§7q§(§,v§.§-!;§),true);
         this.§[e§(this.§#A§.§41§,false);
         if(§!!+§.§^!R§)
         {
            this.§[e§(this.§#A§.§#H§,false);
         }
         this.§[e§(this.§&!#§.§7q§(§,v§.§"%§),true);
         if(!§0!4§.§ L§)
         {
         }
      }
      
      private function §[e§(param1:Sprite, param2:Boolean) : void
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
         _loc3_.x = (param1 / §?M§.§]5§ + this.§=!+§.§ !,§ - §?M§.§&!N§ / §?M§.§]5§) * §catch§;
         _loc3_.y = (param2 / §?M§.§]5§ + this.§=!+§.§^!9§ - §?M§.§]!Y§ / §?M§.§]5§) * §catch§;
         return _loc3_;
      }
      
      public function §2!$§(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / §catch§ + §?M§.§&!N§ / §?M§.§]5§ - this.§=!+§.§ !,§) * §?M§.§]5§;
         _loc3_.y = (param2 / §catch§ + §?M§.§]!Y§ / §?M§.§]5§ - this.§=!+§.§^!9§) * §?M§.§]5§;
         var _loc4_:Number = Math.max(§[&§.§8n§,§[&§.§6!H§);
         _loc3_.x *= _loc4_;
         _loc3_.y *= _loc4_;
         return _loc3_;
      }
      
      public function §?e§(param1:String, param2:Number, param3:Number) : void
      {
         this.§49§.addObject(param1,param2,param3);
      }
      
      public function §80§() : void
      {
         if(this.§+S§)
         {
            this.§+S§.visible = true;
            this.§+S§.alpha = 0;
         }
         this.§+!F§ = 0;
      }
      
      public function §8!&§() : void
      {
         this.§'O§ = new §!!$§(§&!V§.§#!G§,§&!V§.§-5§);
      }
      
      public function §!8§() : void
      {
         this.§'O§ = null;
      }
      
      public function clearLevel() : void
      {
         if(this.§#A§)
         {
            this.§#A§.dispose();
            this.§#A§ = null;
         }
         if(this.§49§)
         {
            this.§49§.dispose();
            this.§49§ = null;
            this.§+!$§ = null;
         }
         if(this.mLevelEngine)
         {
            if(!this.mLevelEngine.§0k§)
            {
            }
            this.mLevelEngine.clear();
            this.mLevelEngine = null;
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
         if(this.§=!+§)
         {
            this.§=!+§.clear();
            this.§=!+§ = null;
         }
         if(this.§&!#§)
         {
            this.§&!#§.dispose();
            this.§&!#§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§1!7§ = 0;
         this.§@3§ = 0;
         this.mReadyToRun = false;
         this.§0!N§ = false;
         this.§+!F§ = §&!V§.§9c§;
         if(this.§['§)
         {
            (this.§['§ as §!! §).§!3§.x = 0;
            (this.§['§ as §!! §).§!3§.y = 0;
         }
         if(this.§+S§)
         {
            this.§+S§.visible = false;
         }
         this.§`@§ = null;
         this.§&q§ = null;
         if(this.§%!E§)
         {
            this.§%!E§.removeEventListener(Event.COMPLETE,this.§>v§);
            this.§%!E§.removeEventListener(Event.CANCEL,this.§[!E§);
         }
         if(this.§=v§)
         {
            this.§=v§.removeEventListener(Event.COMPLETE,this.§^!A§);
            this.§=v§.removeEventListener(Event.CANCEL,this.§?G§);
         }
         this.§07§();
         if(§0Z§.§4J§)
         {
            §0Z§.§4J§.color = 0;
         }
         if(this.§9q§)
         {
            this.§9q§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver() : void
      {
      }
      
      public function §>q§() : String
      {
         if(this.§&q§)
         {
            return this.§&q§.toString();
         }
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         if(!this.mReadyToRun || !§0Z§.§ Z§())
         {
            return 0;
         }
         if(this.§`@§ && this.§`@§.§9y§)
         {
            return this.§"!,§(param1,param2,param3);
         }
         return this.§;8§(param1,true,param2,param3);
      }
      
      protected function §;8§(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         if(this.§?>§)
         {
            param1 *= 0.2;
            if(§0Z§.§-m§)
            {
               §0Z§.§-m§.speed = 0.2;
            }
         }
         var _loc5_:Number = 0;
         this.§@3§ += param1;
         if(param3)
         {
            this.§1!7§ += param1;
            _loc5_ = this.mLevelEngine.§1!X§(this.§1!7§);
            this.§;o§.update(param1,param4);
            this.§1!7§ = _loc5_;
         }
         else
         {
            this.§49§.§#P§();
            this.§1!7§ = 0;
         }
         if(param2)
         {
            this.§8z§(param1,_loc5_);
         }
         return param1;
      }
      
      private function §"!,§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc5_:Number = NaN;
         var _loc4_:Number = §0!4§.§+!G§ * 1000;
         if(this.§`@§)
         {
            param1 *= this.§`@§.speed;
            _loc5_ = this.§@3§ + param1;
            while(this.§@3§ + _loc4_ < _loc5_)
            {
               if(this.§@3§ + _loc4_ > this.§^=§)
               {
                  this.§`@§.step(this);
                  this.§^=§ += _loc4_;
               }
               this.§;8§(_loc4_,false,param2,param3);
            }
            if(_loc5_ > this.§^=§ + _loc4_)
            {
               this.§`@§.step(this);
               this.§^=§ += _loc4_;
            }
            if(this.§@3§ < _loc5_)
            {
               this.§;8§(_loc5_ - this.§@3§,true,param2,param3);
            }
            return param1;
         }
         return this.§;8§(_loc4_,true,param2,param3);
      }
      
      private function §8z§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.§#A§.update(param1);
         this.§49§.§>!=§(param1,param2);
         this.§7H§();
         if(this.§+!F§ < §&!V§.§9c§)
         {
            this.§+!F§ += param1;
            _loc3_ = §&!V§.§9c§ / 2;
            _loc4_ = (-Math.abs(this.§+!F§ - _loc3_) + _loc3_) * (§&!V§.§[g§ / _loc3_);
            if(this.§+S§)
            {
               this.§+S§.alpha = _loc4_;
            }
         }
         else if(this.§+S§)
         {
            this.§+S§.visible = false;
         }
         if(this.§'O§)
         {
            if(!this.§'O§.§>Y§(this.§=!+§,param1))
            {
               this.§!8§();
            }
         }
         this.§=!+§.§]b§(param1);
         this.mLevelEngine.§7D§();
         this.§&!#§.update(param1);
      }
      
      public function §@!U§(param1:Number) : void
      {
         this.objects.§#P§();
         this.objects.§`!"§(param1 * 1000);
         this.§while§();
      }
      
      public function §7H§() : void
      {
         var _loc1_:§@m§ = null;
         if(this.§@3§ > this.§=e§ + 1000 / 30)
         {
            if(this.§9s§ != null)
            {
               for each(_loc1_ in this.§9s§)
               {
                  _loc1_.addTrail();
               }
            }
            this.§=e§ = this.§@3§;
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§@m§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.§49§.isPigsAlive(true))
            {
               _loc2_ = this.§49§.§[!I§(true);
               _loc2_.§%n§.mTryToScream = §'x§.§ H§;
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§49§.§7e§());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            if(this.§49§.isPigsAlive(true))
            {
               _loc2_ = this.§49§.§[!I§(true);
               _loc2_.§%n§.mTryToBlink = §'x§.§@x§;
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§49§.§7e§());
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §-&§.§'=§;
         }
         §^_§.addScore(param1,param2);
         this.§9q§.addScore(param1);
         if(param3 && param1 > 0 && !this.§6@§)
         {
            this.§!G§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §!G§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §-&§.§[!0§;
         }
         this.§&!#§.addParticle(§-&§.§ %§,§,v§.§"%§,§-&§.§"z§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §+!'§(param1:§@m§) : void
      {
         if(this.§9s§ == null)
         {
            this.§9s§ = new Array();
         }
         this.§9s§.push(param1);
      }
      
      public function §6!A§() : void
      {
         this.§;o§.§6!A§();
         this.§49§.mSardineCanAdded = true;
         this.§6@§ = true;
      }
      
      public function § c§(param1:§@m§) : void
      {
         this.§&!#§.§0!"§(§,v§.§&!>§);
         if(this.§9s§.indexOf(param1) >= 0)
         {
            this.§9s§.splice(this.§9s§.indexOf(param1),1);
         }
         if(this.§9s§.length == 0)
         {
            this.§9s§ = null;
         }
      }
      
      public function §8!"§(param1:§8'§, param2:Number, param3:Number) : void
      {
         this.§+!$§ = this.§49§.addObject(param1.name,param1.mX,param1.mY,0,true,false,true,param1.scale);
         var _loc4_:Number = param1.name.toUpperCase() == "BIRD_GREEN" ? Number(§;c§.§-O§) : Number(§;c§.§1p§);
         if(param1.§^I§ > 1)
         {
            this.§+!$§.§&c§(param1.§^I§);
            this.§+!$§.§%n§.§6!F§();
         }
         if(param1.§1;§ != 0)
         {
            _loc4_ = param1.§1;§;
         }
         var _loc5_:Number = -_loc4_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc6_:Number = _loc4_ * param2 * Math.sin(param3 / (180 / Math.PI));
         this.§+!$§.§%!K§(new b2Vec2(_loc5_,_loc6_),false,true);
         this.camera.§99§(§?M§.§?q§);
         if(this.§&q§)
         {
            this.§&q§.§8!"§(this.mLevelEngine.currentStep,param1.mX,param1.mY,param2,param3);
         }
      }
      
      public function activatePowerup() : void
      {
         this.§0!N§ = true;
      }
      
      private function §while§() : void
      {
         if(!this.§0!N§)
         {
            return;
         }
         this.§0!N§ = false;
         if(this.activeObject is §^!1§ && !(this.activeObject as §^!1§).§]Z§)
         {
            if(this.activeObject.activateSpecialPower(this.§ !4§))
            {
               this.§%w§ = true;
            }
         }
         else
         {
            this.§49§.§9u§();
         }
         if(this.§&q§)
         {
            this.§&q§.§?!3§(this.mLevelEngine.currentStep);
         }
      }
      
      public function §10§() : void
      {
         this.§49§.§10§();
      }
      
      public function §@!O§() : void
      {
         this.§49§.§2n§();
      }
      
      public function §'!9§() : §with§
      {
         var _loc1_:§with§ = new §with§();
         _loc1_.§ !§ = this.§5!S§.§ !§;
         _loc1_.§<!D§ = this.§5!S§.§<!D§;
         this.§=!+§.§"4§(_loc1_);
         this.§49§.§=s§(_loc1_);
         this.§;o§.§ "§(_loc1_);
         _loc1_.theme = this.§#A§.§,7§();
         return _loc1_;
      }
      
      public function §^!0§(param1:int) : void
      {
         this.§5!S§.§<!D§ = param1;
      }
      
      public function §8"§(param1:int) : void
      {
         this.§5!S§.§ !§ = param1;
      }
      
      public function §]!;§(param1:Number, param2:Number) : void
      {
         if(this.§6c§)
         {
            this.§6c§.§'7§(param1,param2);
         }
         if(this.§=!+§)
         {
            this.§=!+§.§]b§(0);
         }
      }
      
      public function get §,8§() : §with§
      {
         return this.§5!S§;
      }
      
      public function get § !4§() : §&$§
      {
         return this.§49§;
      }
   }
}
