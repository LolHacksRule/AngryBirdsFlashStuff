package §8!`§
{
   import § !F§.§?Z§;
   import §"!P§.§8!N§;
   import §"k§.§02§;
   import §"k§.§1s§;
   import §"k§.§]I§;
   import §%!^§.§1B§;
   import §'D§.§8e§;
   import §'O§.§>q§;
   import §-!§.§-§;
   import §0H§.§!Z§;
   import §0H§.§0!&§;
   import §0H§.§1+§;
   import §0H§.§7M§;
   import §1!§.§@!Q§;
   import §3q§.b2Vec2;
   import §6-§.§3R§;
   import §;!Q§.DisplayObject;
   import §;!Q§.Sprite;
   import §<J§.§&L§;
   import §<J§.§8!^§;
   import §@!?§.§9Z§;
   import §]!D§.§,!@§;
   import §]!D§.§?!9§;
   import §]!D§.§@!]§;
   import §]!D§.§]!R§;
   import §`;§.§5i§;
   import §`;§.§[E§;
   import §`V§.§-!6§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §4J§
   {
      
      private static const §`%§:int = 20;
      
      public static const §7G§:Number = §@!Q§.§`!N§;
      
      public static const §;!4§:Number = §@!Q§.§1!9§;
      
      public static const §<W§:Number = 1 / 20;
      
      public static const §3=§:Number = §@!Q§.§1!9§ * §<W§;
      
      public static const §^@§:Number = §7G§ * §<W§;
      
      public static const §<+§:§>q§ = new §>q§(13 - 3);
      
      protected static var §8!$§:String = §0!&§.§1!L§;
       
      
      protected var §;!9§:§?!9§;
      
      private var §]!N§:§@!]§;
      
      private var §5!F§:Array = null;
      
      protected var §^z§:§1B§;
      
      public var mLevelEngine:§8s§;
      
      protected var §5!_§:§5!C§;
      
      protected var §!9§:§9Z§;
      
      protected var §1i§:§%t§;
      
      protected var § !Q§:§5i§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §@9§:Boolean = false;
      
      protected var §,!J§:Boolean = false;
      
      protected var §!!D§:Boolean = false;
      
      public var §7!>§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §8S§:Number;
      
      public var §@x§:Number;
      
      private var §9C§:Number;
      
      public var §,_§:§!Z§;
      
      public var §7,§:Boolean = false;
      
      private var §7o§:§'9§;
      
      private var §+>§:Sprite;
      
      protected var §3<§:§0!&§;
      
      protected var §"G§:§?Z§ = null;
      
      private var §]+§:EventDispatcher;
      
      private var §`!P§:Array;
      
      private var §=!S§:Array;
      
      protected var §2"§:§-§;
      
      private var §2?§:§3R§;
      
      protected var §^L§:§02§;
      
      protected var §9J§:§1s§;
      
      private var §44§:§]I§;
      
      private var §`!F§:§]I§;
      
      private var §>S§:§]I§;
      
      private var §4M§:Stage;
      
      private var §7!7§:§+!X§;
      
      protected var §9!#§:§-!6§;
      
      protected var §[!#§:§-!6§;
      
      protected var §=R§:Number = 0.0;
      
      protected var §#!+§:String;
      
      private var §&!S§:Boolean;
      
      protected var §1!F§:Boolean;
      
      protected var §false§:uint = 1.417339207E9;
      
      public var §>!§:Boolean;
      
      public function §4J§(param1:Stage)
      {
         this.§=!S§ = [];
         super();
         this.§]+§ = new EventDispatcher();
         this.§,_§ = new §!Z§();
         this.§4M§ = param1;
         this.§^L§ = §02§.§!!8§;
         this.§9J§ = this.initAnimationManager(this.§^L§);
         this.§44§ = this.§8V§();
         this.§`!F§ = this.§""§();
         this.§>S§ = this.§`!3§();
         var _loc2_:Stage3D = param1.stage3Ds[0];
         this.§2"§ = new §-§(§'9§,param1,new Rectangle(0,0,§@!Q§.§`!N§,§@!Q§.§1!9§),_loc2_);
         §@!Q§.§'x§.addEventListener(Event.ENTER_FRAME,this.§2"§.§in§);
         _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§0C§,false,0,true);
         this.§2"§.§]!,§ = false;
         this.§2"§.enableErrorChecking = false;
         this.§2"§.§;4§ = 2;
         this.§2"§.§6!4§();
      }
      
      public static function §<G§(param1:§@!]§, param2:§@!]§) : Number
      {
         var _loc3_:Number = param1.§%g§ - param2.§%g§;
         var _loc4_:Number = param1.§,!V§ - param2.§,!V§;
         return §+I§(_loc3_,_loc4_);
      }
      
      public static function §+I§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         if(!this.§+>§ && this.§2!&§)
         {
            this.§+>§ = this.§7o§.§0S§;
         }
         return this.§+>§;
      }
      
      public function get §2!&§() : Sprite
      {
         if(!this.§7o§)
         {
            this.§7o§ = this.§2"§.§^P§ as §'9§;
            this.§7o§.§+!T§ = false;
         }
         return this.§7o§;
      }
      
      private function get §5!'§() : DisplayObject
      {
         if(this.§2!&§)
         {
            return (this.§2!&§ as §'9§).§5!'§;
         }
         return null;
      }
      
      public function get §+!a§() : §1s§
      {
         return this.§9J§;
      }
      
      public function get §>?§() : §02§
      {
         return this.§^L§;
      }
      
      public function get camera() : §9Z§
      {
         return this.§!9§;
      }
      
      public function get objects() : §?!9§
      {
         return this.§;!9§;
      }
      
      public function get particles() : §5i§
      {
         return this.§ !Q§;
      }
      
      public function get background() : §1B§
      {
         return this.§^z§;
      }
      
      public function get slingshot() : §%t§
      {
         return this.§1i§;
      }
      
      public function get activeObject() : §@!]§
      {
         return this.§]!N§;
      }
      
      public function get §[!_§() : §5!C§
      {
         return this.§5!_§;
      }
      
      public function get stage() : Stage
      {
         return this.§4M§;
      }
      
      public function get §=!4§() : §]I§
      {
         return this.§>S§;
      }
      
      protected function get §,6§() : §]I§
      {
         return this.§44§;
      }
      
      public function set activeObject(param1:§@!]§) : void
      {
         this.§]!N§ = param1;
      }
      
      public function set §<!<§(param1:Boolean) : void
      {
         this.§1!F§ = param1;
      }
      
      public function clear() : void
      {
         if(this.§2?§)
         {
            this.§2?§.dispose();
         }
         if(this.§^L§)
         {
            this.§^L§.dispose();
         }
         if(this.§44§ && this.§44§.§>?§)
         {
            this.§44§.§>?§.dispose();
         }
         if(this.§>S§ && this.§>S§.§>?§)
         {
            this.§>S§.§>?§.dispose();
         }
         if(this.§2"§)
         {
            this.§2"§.dispose();
         }
      }
      
      protected function §8V§() : §]I§
      {
         return null;
      }
      
      protected function §""§() : §]I§
      {
         return null;
      }
      
      protected function §`!3§() : §]I§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§02§) : §1s§
      {
         return new §1s§(param1);
      }
      
      public function §?!J§(param1:Boolean) : void
      {
         if(§-§.§-G§)
         {
            if(param1)
            {
               §-§.§-G§.start();
            }
            else
            {
               §-§.§-G§.stop();
               §-§.§-G§.color = 0;
            }
         }
      }
      
      public function §9<§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function §5"§(param1:§?Z§) : void
      {
         if(this.§"G§ != null)
         {
            this.§"G§.removeEventListeners();
         }
         this.§"G§ = param1;
         if(this.mReadyToRun)
         {
            this.§"G§.addEventListeners();
         }
      }
      
      public function §5!K§() : §-!6§
      {
         return this.§9!#§;
      }
      
      public function §=!>§(param1:§3R§, param2:Array, param3:Function) : void
      {
         this.§2?§ = param1;
         var _loc4_:int = this.§2?§.§0<§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§^L§.§3$§(this.§2?§.§[>§(_loc5_));
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§]+§.addEventListener(Event.INIT,param3);
            this.§=!S§.push(param3);
         }
         if(this.§<!C§(param2))
         {
            this.§-O§();
         }
      }
      
      private function §<!C§(param1:Array) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.§^L§.§!2§())
         {
            _loc2_ = this.§^L§.§1_§ / 1000;
            _loc3_ = this.§^L§.§4!2§ / 1000;
            §8e§.log("\n\nMain texture manager memory usage:\n   textures " + _loc2_ + " kilobytes\n   bitmaps " + _loc3_ + " kilobytes\n\n");
            this.initializeAnimations(param1);
            return true;
         }
         this.§`!P§ = param1.concat();
         return false;
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         this.§9J§.initializeAnimations(param1);
      }
      
      private function §0C§(param1:Event) : void
      {
         this.§^L§.§!t§();
         if(this.§,6§ && this.§,6§.§>?§)
         {
            this.§,6§.§>?§.§!t§();
         }
         if(this.§=!4§ && this.§=!4§.§>?§)
         {
            this.§=!4§.§>?§.§!t§();
         }
         if(this.§`!P§)
         {
            this.§<!C§(this.§`!P§);
            this.§`!P§ = null;
            this.§-O§();
         }
         if(this.§"G§ != null && this.mReadyToRun)
         {
            this.§"G§.addEventListeners();
         }
         if(this.§44§)
         {
            this.§44§.§!2§();
         }
         if(this.§>S§)
         {
            if(this.§>S§.§>?§)
            {
               this.§>S§.§>?§.§!t§();
               this.§>S§.§!2§();
            }
         }
      }
      
      private function §-O§() : void
      {
         this.§]+§.dispatchEvent(new Event(Event.INIT));
         this.§;z§();
      }
      
      private function §;z§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§=!S§)
         {
            this.§]+§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§=!S§ = [];
      }
      
      public function init(param1:§0!&§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§5!_§ = new §5!C§(this,param1);
         this.§!9§ = this.§35§(param1);
         this.§8S§ = 0;
         this.§@x§ = 0;
         this.§9C§ = 0;
         this.§&!S§ = false;
         this.mReadyToRun = false;
         this.§@9§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         §8!$§ = param1.theme;
         this.§3<§ = param1;
         this.§,!J§ = this.§@!"§(param1.theme);
         this.§!!D§ = this.§>A§(param1.theme);
         if(this.§,!J§ && this.§!!D§)
         {
            this.§-W§(param1);
         }
         else
         {
            this.§>+§(param1.theme);
         }
         this.initReplay();
         §%G§.init();
      }
      
      protected function initReplay() : void
      {
         this.§9!#§ = new §-!6§(§7M§.§9-§);
      }
      
      protected function §@!"§(param1:String) : Boolean
      {
         if(this.§44§)
         {
            return false;
         }
         return true;
      }
      
      protected function §>A§(param1:String) : Boolean
      {
         var _loc2_:§8!^§ = null;
         if(this.§`!F§)
         {
            _loc2_ = §&L§.§'!C§(param1);
            if(_loc2_)
            {
               if(_loc2_.§2!T§ && !this.§`!F§.§&i§(_loc2_.§2!T§))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function §>+§(param1:String) : void
      {
         var _loc2_:§8!^§ = null;
         if(this.§44§ && !this.§@!"§(param1))
         {
            this.§44§.removeEventListener(Event.COMPLETE,this.native);
            this.§44§.removeEventListener(Event.CANCEL,this.§23§);
            this.§44§.addEventListener(Event.COMPLETE,this.native);
            this.§44§.addEventListener(Event.CANCEL,this.§23§);
            this.§44§.§5!3§(param1);
         }
         if(this.§`!F§ && !this.§>A§(param1))
         {
            this.§`!F§.removeEventListener(Event.COMPLETE,this.§!z§);
            this.§`!F§.removeEventListener(Event.CANCEL,this.§,w§);
            this.§`!F§.addEventListener(Event.COMPLETE,this.§!z§);
            this.§`!F§.addEventListener(Event.CANCEL,this.§,w§);
            _loc2_ = §&L§.§'!C§(param1);
            if(_loc2_)
            {
               this.§`!F§.§5!3§(_loc2_.§2!T§);
            }
         }
      }
      
      private function native(param1:Event) : void
      {
         this.§44§.removeEventListener(Event.COMPLETE,this.native);
         this.§44§.removeEventListener(Event.CANCEL,this.§23§);
         this.§,!J§ = true;
         if(this.§,!J§ && this.§!!D§)
         {
            this.§-W§(this.§3<§);
         }
      }
      
      private function §23§(param1:Event) : void
      {
         this.§44§.removeEventListener(Event.COMPLETE,this.native);
         this.§44§.removeEventListener(Event.CANCEL,this.§23§);
         this.§@9§ = true;
      }
      
      private function §!z§(param1:Event) : void
      {
         this.§44§.removeEventListener(Event.COMPLETE,this.§!z§);
         this.§44§.removeEventListener(Event.CANCEL,this.§,w§);
         this.§!!D§ = true;
         if(this.§,!J§ && this.§!!D§)
         {
            this.§-W§(this.§3<§);
         }
      }
      
      private function §,w§(param1:Event) : void
      {
         this.§44§.removeEventListener(Event.COMPLETE,this.§!z§);
         this.§44§.removeEventListener(Event.CANCEL,this.§,w§);
         this.§!!D§ = true;
         if(this.§,!J§ && this.§!!D§)
         {
            this.§-W§(this.§3<§);
         }
      }
      
      public function get §"! §() : §02§
      {
         return this.§^L§;
      }
      
      protected function §-W§(param1:§0!&§) : void
      {
         this.§1!F§ = false;
         this.§>!§ = false;
         if(§-§.§'L§)
         {
            §-§.§'L§.speed = 1;
         }
         this.mLevelEngine = new §8s§(this);
         this.§^z§ = this.§#?§(param1.theme,this.§5!_§.§,!3§ / §<W§,this.§"! §,this.§!9§.§+m§());
         this.§^z§.§&H§(§@!Q§.§@5§());
         this.§;!9§ = this.initLevelObjectManager(param1);
         this.§1i§ = this.initLevelSlingshot(param1);
         this.§ !Q§ = this.§1!J§(this.§9J§,this.§^L§);
         this.§!9§.init();
         this.§&R§();
         this.loadPreviousReplayData();
         this.mReadyToRun = true;
         if(this.§"G§)
         {
            this.§"G§.addEventListeners();
         }
      }
      
      protected function loadPreviousReplayData() : void
      {
         if(this.§#!+§)
         {
            this.§[!#§ = §-!6§.§-W§(this.§#!+§);
            this.§[!#§.speed = 1;
            this.§[!#§.play();
            this.§=R§ = -1000;
            this.§#!+§ = null;
         }
      }
      
      public function §@!O§(param1:String) : void
      {
         this.§#!+§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§[!#§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§[!#§)
         {
            if(param1)
            {
               this.§[!#§.speed = Math.min(this.§[!#§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§[!#§.speed = Math.max(this.§[!#§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§[!#§)
         {
            this.§[!#§.speed = 1;
         }
      }
      
      protected function initLevelObjectManager(param1:§0!&§) : §?!9§
      {
         return new §?!9§(this,param1,new Sprite());
      }
      
      protected function §35§(param1:§0!&§) : §9Z§
      {
         return new §9Z§(this,param1);
      }
      
      protected function §#?§(param1:String, param2:Number, param3:§02§, param4:Number) : §1B§
      {
         return new §1B§(param1,param2,param3,param4);
      }
      
      protected function initLevelSlingshot(param1:§0!&§) : §%t§
      {
         return new §%t§(this,param1,new Sprite());
      }
      
      protected function §1!J§(param1:§1s§, param2:§02§) : §5i§
      {
         return new §5i§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§0!&§ = this.§[F§();
         var _loc4_:§1+§;
         (_loc4_ = new §1+§()).left = 0;
         _loc4_.top = -§9Z§.§+!8§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §9Z§.§+!8§;
         _loc4_.right = _loc4_.left + §9Z§.§&W§;
         _loc4_.y = -13.929;
         _loc4_.x = §9Z§.§&W§;
         _loc4_.id = §9Z§.§`!I§;
         _loc3_.§!!H§(_loc4_);
         var _loc5_:§1+§;
         (_loc5_ = new §1+§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §9Z§.§&W§;
         _loc5_.bottom = _loc5_.top + §9Z§.§+!8§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §9Z§.§&W§ / 2;
         _loc5_.id = §9Z§.§`!M§;
         _loc3_.§!!H§(_loc5_);
         this.§6k§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§8!$§ != null)
         {
            _loc3_.theme = §8!$§;
         }
         this.init(_loc3_);
      }
      
      protected function §6k§(param1:§0!&§, param2:Boolean) : void
      {
         if(param2)
         {
            this.§%D§(param1);
         }
      }
      
      protected function §[F§() : §0!&§
      {
         var _loc1_:§0!&§ = new §0!&§();
         _loc1_.§@h§ = -12;
         return new §0!&§();
      }
      
      protected function §,h§() : Number
      {
         this.§false§ ^= this.§false§ << 21;
         this.§false§ ^= this.§false§ >>> 35;
         this.§false§ ^= this.§false§ << 4;
         return this.§false§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §%D§(param1:§0!&§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§8!N§ = null;
         this.§false§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§,h§() * 5;
               (_loc5_ = new §8!N§()).x = 30 + _loc3_ * 10 + this.§,h§() * 9;
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
                  _loc5_.angle = 45 - this.§,h§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§,h§() * 3 - _loc3_ * 8;
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
                  _loc5_.angle = this.§,h§() * 360;
               }
               param1.addObject(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      private function §!G§() : void
      {
      }
      
      public function §&R§() : void
      {
         if(§1B§.§'u§)
         {
            this.§&F§(this.§^z§.§5!J§,false);
         }
         this.§&F§(this.§ !Q§.§1!5§(§5i§.§>t§),false);
         this.§&F§(this.§ !Q§.§1!5§(§5i§.§;?§),true);
         this.§&F§(this.§ !Q§.§1!5§(§5i§.§,A§),true);
         this.§&F§(this.§;!9§.§]v§,true);
         this.§&F§(this.§1i§.sprite,true);
         this.§&F§(this.§ !Q§.§1!5§(§5i§.§-!D§),true);
         this.§&F§(this.§^z§.§3O§,false);
         if(§1B§.§'u§)
         {
            this.§&F§(this.§^z§.§ z§,false);
         }
         this.§&F§(this.§ !Q§.§1!5§(§5i§.§@§),true);
      }
      
      private function §&F§(param1:Sprite, param2:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(param1);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         param1 /= §@!Q§.§'!§;
         param2 /= §@!Q§.§'!§;
         _loc3_.x = (param1 / §9Z§.§9t§ + this.§!9§.§`a§ - §9Z§.§3!`§ / §9Z§.§9t§) * §<W§;
         _loc3_.y = (param2 / §9Z§.§9t§ + this.§!9§.§^!Z§ - §9Z§.§^!<§ / §9Z§.§9t§) * §<W§;
         return _loc3_;
      }
      
      public function §<!Y§(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / §<W§ + §9Z§.§3!`§ / §9Z§.§9t§ - this.§!9§.§`a§) * §9Z§.§9t§;
         _loc3_.y = (param2 / §<W§ + §9Z§.§^!<§ / §9Z§.§9t§ - this.§!9§.§^!Z§) * §9Z§.§9t§;
         var _loc4_:Number = Math.max(§@!Q§.§'!§,§@!Q§.§2!M§);
         _loc3_.x *= _loc4_;
         _loc3_.y *= _loc4_;
         return _loc3_;
      }
      
      public function §5!;§(param1:String, param2:Number, param3:Number) : void
      {
         this.§;!9§.addObject(param1,param2,param3);
      }
      
      public function §@r§() : void
      {
         if(this.§5!'§)
         {
            this.§5!'§.visible = true;
            this.§5!'§.alpha = 0;
         }
         this.§7!>§ = 0;
      }
      
      public function §<!=§() : void
      {
         this.§7!7§ = new §+!X§(§7I§.§6Z§,§7I§.§=!-§);
      }
      
      public function §%!$§() : void
      {
         this.§7!7§ = null;
      }
      
      public function clearLevel() : void
      {
         if(this.§^z§)
         {
            this.§^z§.dispose();
            this.§^z§ = null;
         }
         if(this.§;!9§)
         {
            this.§;!9§.dispose();
            this.§;!9§ = null;
            this.§]!N§ = null;
         }
         if(this.mLevelEngine)
         {
            if(!this.mLevelEngine.§[1§)
            {
            }
            this.mLevelEngine.clear();
            this.mLevelEngine = null;
         }
         if(this.§5!_§)
         {
            this.§5!_§.clear();
            this.§5!_§ = null;
         }
         if(this.§1i§)
         {
            this.§1i§.dispose();
            this.§1i§ = null;
         }
         if(this.§!9§)
         {
            this.§!9§.clear();
            this.§!9§ = null;
         }
         if(this.§ !Q§)
         {
            this.§ !Q§.dispose();
            this.§ !Q§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§8S§ = 0;
         this.§@x§ = 0;
         this.mReadyToRun = false;
         this.§&!S§ = false;
         this.§7!>§ = §7I§.§1!,§;
         if(this.§2!&§)
         {
            (this.§2!&§ as §'9§).§8!%§.x = 0;
            (this.§2!&§ as §'9§).§8!%§.y = 0;
         }
         if(this.§5!'§)
         {
            this.§5!'§.visible = false;
         }
         this.§[!#§ = null;
         this.§9!#§ = null;
         if(this.§44§)
         {
            this.§44§.removeEventListener(Event.COMPLETE,this.native);
            this.§44§.removeEventListener(Event.CANCEL,this.§23§);
         }
         if(this.§`!F§)
         {
            this.§`!F§.removeEventListener(Event.COMPLETE,this.§!z§);
            this.§`!F§.removeEventListener(Event.CANCEL,this.§,w§);
         }
         this.§;z§();
         if(§-§.§-G§)
         {
            §-§.§-G§.color = 0;
         }
         if(this.§"G§)
         {
            this.§"G§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver() : void
      {
      }
      
      public function §3Y§() : String
      {
         if(this.§9!#§)
         {
            return this.§9!#§.toString();
         }
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         if(!this.mReadyToRun || !§-§.§@a§())
         {
            return 0;
         }
         if(this.§[!#§ && this.§[!#§.§'!S§)
         {
            return this.§%!H§(param1,param2,param3);
         }
         return this.§6i§(param1,true,param2,param3);
      }
      
      protected function §6i§(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         if(this.§1!F§)
         {
            param1 *= 0.2;
            if(§-§.§'L§)
            {
               §-§.§'L§.speed = 0.2;
            }
         }
         var _loc5_:Number = 0;
         this.§@x§ += param1;
         if(param3)
         {
            this.§8S§ += param1;
            _loc5_ = this.mLevelEngine.§#D§(this.§8S§);
            this.§1i§.update(param1,param4);
            this.§8S§ = _loc5_;
         }
         else
         {
            this.§;!9§.§?!R§(param1);
            this.§8S§ = 0;
         }
         if(param2)
         {
            this.§&T§(param1,_loc5_);
         }
         return param1;
      }
      
      private function §%!H§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc5_:Number = NaN;
         var _loc4_:Number = §8s§.§",§ * 1000;
         if(this.§[!#§)
         {
            param1 *= this.§[!#§.speed;
            _loc5_ = this.§@x§ + param1;
            while(this.§@x§ + _loc4_ < _loc5_)
            {
               if(this.§@x§ + _loc4_ > this.§=R§)
               {
                  this.§[!#§.step(this);
                  this.§=R§ += _loc4_;
               }
               this.§6i§(_loc4_,false,param2,param3);
            }
            if(_loc5_ > this.§=R§ + _loc4_)
            {
               this.§[!#§.step(this);
               this.§=R§ += _loc4_;
            }
            if(this.§@x§ < _loc5_)
            {
               this.§6i§(_loc5_ - this.§@x§,true,param2,param3);
            }
            return param1;
         }
         return this.§6i§(_loc4_,true,param2,param3);
      }
      
      private function §&T§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.§^z§.update(param1);
         this.§;!9§.§ u§(param1,param2);
         this.§3x§();
         if(this.§7!>§ < §7I§.§1!,§)
         {
            this.§7!>§ += param1;
            _loc3_ = §7I§.§1!,§ / 2;
            _loc4_ = (-Math.abs(this.§7!>§ - _loc3_) + _loc3_) * (§7I§.§0N§ / _loc3_);
            if(this.§5!'§)
            {
               this.§5!'§.alpha = _loc4_;
            }
         }
         else if(this.§5!'§)
         {
            this.§5!'§.visible = false;
         }
         if(this.§7!7§)
         {
            if(!this.§7!7§.§ 4§(this.§!9§,param1))
            {
               this.§%!$§();
            }
         }
         this.§!9§.§#K§(param1);
         this.mLevelEngine.§@!;§();
         this.§ !Q§.update(param1);
      }
      
      public function §#Q§(param1:Number) : void
      {
         this.objects.§?!R§(param1 * 1000);
         this.objects.§6§(param1 * 1000);
         this.§4!1§();
      }
      
      public function §3x§() : void
      {
         var _loc1_:§@!]§ = null;
         if(this.§@x§ > this.§9C§ + 1000 / 30)
         {
            if(this.§5!F§ != null)
            {
               for each(_loc1_ in this.§5!F§)
               {
                  _loc1_.addTrail();
               }
            }
            this.§9C§ = this.§@x§;
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§@!]§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.§;!9§.isPigsAlive(true))
            {
               _loc2_ = this.§;!9§.§#c§(true);
               _loc2_.§`T§.mTryToScream = §]!R§.§<_§;
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§;!9§.§]F§());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            if(this.§;!9§.isPigsAlive(true))
            {
               _loc2_ = this.§;!9§.§#c§(true);
               _loc2_.§`T§.mTryToBlink = §]!R§.§<'§;
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§;!9§.§]F§());
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §[E§.§,! §;
         }
         §%G§.addScore(param1,param2);
         this.§"G§.addScore(param1);
         if(param3 && param1 > 0 && !this.§>!§)
         {
            this.§>!Z§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §>!Z§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §[E§.§@B§;
         }
         this.§ !Q§.addParticle(§[E§.§+Z§,§5i§.§@§,§[E§.§%7§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §8!O§(param1:§@!]§) : void
      {
         if(this.§5!F§ == null)
         {
            this.§5!F§ = new Array();
         }
         this.§5!F§.push(param1);
      }
      
      public function §9b§() : void
      {
         this.§1i§.§9b§();
         this.§;!9§.§,m§();
         this.§>!§ = true;
      }
      
      public function §8P§(param1:§@!]§) : void
      {
         this.§ !Q§.§<!9§(§5i§.§>t§);
         if(this.§5!F§.indexOf(param1) >= 0)
         {
            this.§5!F§.splice(this.§5!F§.indexOf(param1),1);
         }
         if(this.§5!F§.length == 0)
         {
            this.§5!F§ = null;
         }
      }
      
      public function §7L§(param1:§3!Q§, param2:Number, param3:Number) : void
      {
         this.§]!N§ = this.§;!9§.addObject(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
         var _loc4_:Number = param1.name.toUpperCase() == "BIRD_GREEN" ? Number(§%t§.§=g§) : Number(§%t§.§7U§);
         if(param1.§3!G§ > 1)
         {
            this.§]!N§.§8!,§(param1.§3!G§);
            this.§]!N§.§`T§.§"!%§();
         }
         if(param1.§,g§ != 0)
         {
            _loc4_ = param1.§,g§;
         }
         var _loc5_:Number = -_loc4_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc6_:Number = _loc4_ * param2 * Math.sin(param3 / (180 / Math.PI));
         this.§]!N§.§]n§(new b2Vec2(_loc5_,_loc6_),false,true);
         this.camera.§,'§(§9Z§.§8Q§);
         if(this.§9!#§)
         {
            this.§9!#§.§7L§(this.mLevelEngine.currentStep,param1.x,param1.y,param2,param3);
         }
      }
      
      public function activatePowerup() : void
      {
         this.§&!S§ = true;
      }
      
      private function §4!1§() : void
      {
         if(!this.§&!S§)
         {
            return;
         }
         this.§&!S§ = false;
         if(this.activeObject is §,!@§ && !(this.activeObject as §,!@§).§-g§)
         {
            if(this.activeObject.activateSpecialPower(this.§"!X§))
            {
               this.§7,§ = true;
            }
         }
         else
         {
            this.§;!9§.§>!4§();
         }
         if(this.§9!#§)
         {
            this.§9!#§.§extends§(this.mLevelEngine.currentStep);
         }
      }
      
      public function §]!6§() : void
      {
         this.§;!9§.§]!6§();
      }
      
      public function §^!?§() : void
      {
         this.§;!9§.§@L§();
      }
      
      public function §[!0§() : §0!&§
      {
         var _loc1_:§0!&§ = new §0!&§();
         _loc1_.§ !L§ = this.§3<§.§ !L§;
         _loc1_.§ !W§ = this.§3<§.§ !W§;
         this.§!9§.§6n§(_loc1_);
         this.§;!9§.§<!O§(_loc1_);
         this.§1i§.§%K§(_loc1_);
         _loc1_.theme = this.§^z§.§<I§();
         return _loc1_;
      }
      
      public function §%!Z§() : int
      {
         return this.§3<§.§ !W§;
      }
      
      public function §`!0§() : int
      {
         return this.§3<§.§ !L§;
      }
      
      public function §,0§(param1:int) : void
      {
         this.§3<§.§ !W§ = param1;
      }
      
      public function §>!Y§(param1:int) : void
      {
         this.§3<§.§ !L§ = param1;
      }
      
      public function §[A§(param1:Number, param2:Number) : void
      {
         if(this.§7o§)
         {
            this.§7o§.§>3§(param1,param2);
         }
         if(this.§!9§)
         {
            this.§!9§.§#K§(0);
         }
      }
      
      public function get §7D§() : §0!&§
      {
         return this.§3<§;
      }
      
      public function get §"!X§() : §?!9§
      {
         return this.§;!9§;
      }
      
      protected function get §<!K§() : §-§
      {
         return this.§2"§;
      }
      
      public function get §&@§() : int
      {
         return §`%§;
      }
   }
}
