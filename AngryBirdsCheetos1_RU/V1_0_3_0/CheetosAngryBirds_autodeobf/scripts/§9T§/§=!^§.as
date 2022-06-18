package §9T§
{
   import §+!E§.§,E§;
   import §+!E§.§>!E§;
   import §+!^§.§'Y§;
   import §+R§.§9x§;
   import §+d§.§!F§;
   import §7!P§.§-3§;
   import §8!C§.§%v§;
   import §8!C§.§2!4§;
   import §8E§.§%!0§;
   import §9!a§.DisplayObject;
   import §9!a§.Sprite;
   import §=!,§.§9![§;
   import §=!F§.§'e§;
   import §=0§.§ !C§;
   import §=0§.§>>§;
   import §=0§.§>O§;
   import §>!H§.§^!<§;
   import §>N§.§"u§;
   import §[>§.§'!'§;
   import §[>§.§;J§;
   import §[>§.§]S§;
   import §[>§.§`,§;
   import §[R§.b2Vec2;
   import §^9§.§!K§;
   import §^9§.§3A§;
   import §^9§.§4!6§;
   import §^9§.§[!L§;
   import §`!W§.§9k§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §=!^§
   {
      
      private static const §8![§:int = 20;
      
      public static const §@3§:Number = §'Y§.§8o§;
      
      public static const §4!1§:Number = §'Y§.§&I§;
      
      public static const §4#§:Number = 1 / 20;
      
      public static const §1N§:Number = §'Y§.§&I§ * §4#§;
      
      public static const §05§:Number = §@3§ * §4#§;
      
      public static const §=;§:§!F§ = new §!F§(13 - 3);
      
      public static var §15§:Number = 1;
      
      protected static var §"!S§:String = §3A§.§7_§;
       
      
      protected var §<!%§:§'!'§;
      
      private var §&!a§:§`,§;
      
      private var §@a§:Array = null;
      
      protected var §@2§:§'e§;
      
      public var mLevelEngine:§&,§;
      
      protected var §95§:§,S§;
      
      protected var §;!a§:§9![§;
      
      protected var §1!8§:§#!4§;
      
      protected var § !S§:§2!4§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §,!J§:Boolean = false;
      
      protected var §,d§:Boolean = false;
      
      protected var §8!%§:Boolean = false;
      
      public var §"B§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §3!;§:Number;
      
      public var §!!E§:Number;
      
      private var §9!I§:Number;
      
      public var §5!T§:§4!6§;
      
      public var §?!2§:Boolean = false;
      
      private var §5i§:§1!O§;
      
      private var §6!,§:Sprite;
      
      protected var §+!4§:§3A§;
      
      protected var §+!7§:§%!0§ = null;
      
      private var §&!,§:EventDispatcher;
      
      private var §;C§:Array;
      
      private var §<H§:Array;
      
      protected var §7!N§:§"u§;
      
      private var §#=§:§9x§;
      
      protected var §<!P§:§>O§;
      
      protected var §6y§:§ !C§;
      
      private var §6#§:§>>§;
      
      private var §7!F§:§>>§;
      
      private var §+W§:§>>§;
      
      private var §@'§:Stage;
      
      private var §5O§:§,!§;
      
      protected var §;;§:§9k§;
      
      protected var §%u§:§9k§;
      
      protected var §3-§:Number = 0.0;
      
      protected var §,?§:String;
      
      private var §;`§:Boolean;
      
      protected var §9Y§:Boolean;
      
      protected var §32§:uint = 1.417339207E9;
      
      public var §]!J§:Boolean;
      
      public function §=!^§(param1:Stage)
      {
         this.§<H§ = [];
         super();
         this.§&!,§ = new EventDispatcher();
         this.§5!T§ = new §4!6§();
         this.§@'§ = param1;
         this.§<!P§ = §>O§.§<?§;
         this.§6y§ = this.initAnimationManager(this.§<!P§);
         this.§6#§ = this.§2;§();
         this.§7!F§ = this.§3!T§();
         this.§+W§ = this.§7!!§();
         var _loc2_:Stage3D = param1.stage3Ds[0];
         this.§7!N§ = new §"u§(§1!O§,param1,new Rectangle(0,0,§'Y§.§8o§,§'Y§.§&I§),_loc2_);
         §'Y§.§1!&§.addEventListener(Event.ENTER_FRAME,this.§7!N§.§+!T§);
         _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§3!?§,false,0,true);
         this.§7!N§.§9L§ = false;
         this.§7!N§.enableErrorChecking = false;
         this.§7!N§.§<!A§ = 2;
         this.§7!N§.§"!X§();
      }
      
      public static function §6!H§(param1:§`,§, param2:§`,§) : Number
      {
         var _loc3_:Number = param1.§3`§ - param2.§3`§;
         var _loc4_:Number = param1.§3!0§ - param2.§3!0§;
         return §6!K§(_loc3_,_loc4_);
      }
      
      public static function §6!K§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         if(!this.§6!,§ && this.§5I§)
         {
            this.§6!,§ = this.§5i§.§0!R§;
         }
         return this.§6!,§;
      }
      
      public function get §5I§() : Sprite
      {
         if(!this.§5i§)
         {
            this.§5i§ = this.§7!N§.§+'§ as §1!O§;
            this.§5i§.§`!M§ = false;
         }
         return this.§5i§;
      }
      
      private function get §+!"§() : DisplayObject
      {
         if(this.§5I§)
         {
            return (this.§5I§ as §1!O§).§+!"§;
         }
         return null;
      }
      
      public function get §'!;§() : § !C§
      {
         return this.§6y§;
      }
      
      public function get §!c§() : §>O§
      {
         return this.§<!P§;
      }
      
      public function get camera() : §9![§
      {
         return this.§;!a§;
      }
      
      public function get objects() : §'!'§
      {
         return this.§<!%§;
      }
      
      public function get particles() : §2!4§
      {
         return this.§ !S§;
      }
      
      public function get background() : §'e§
      {
         return this.§@2§;
      }
      
      public function get slingshot() : §#!4§
      {
         return this.§1!8§;
      }
      
      public function get activeObject() : §`,§
      {
         return this.§&!a§;
      }
      
      public function get §5!V§() : §,S§
      {
         return this.§95§;
      }
      
      public function get stage() : Stage
      {
         return this.§@'§;
      }
      
      public function get §[!2§() : §>>§
      {
         return this.§+W§;
      }
      
      protected function get §=!P§() : §>>§
      {
         return this.§6#§;
      }
      
      public function set activeObject(param1:§`,§) : void
      {
         this.§&!a§ = param1;
      }
      
      public function set §3,§(param1:Boolean) : void
      {
         this.§9Y§ = param1;
      }
      
      public function clear() : void
      {
         if(this.§#=§)
         {
            this.§#=§.dispose();
         }
         if(this.§<!P§)
         {
            this.§<!P§.dispose();
         }
         if(this.§6#§ && this.§6#§.§!c§)
         {
            this.§6#§.§!c§.dispose();
         }
         if(this.§+W§ && this.§+W§.§!c§)
         {
            this.§+W§.§!c§.dispose();
         }
         if(this.§7!N§)
         {
            this.§7!N§.dispose();
         }
      }
      
      protected function §2;§() : §>>§
      {
         return null;
      }
      
      protected function §3!T§() : §>>§
      {
         return null;
      }
      
      protected function §7!!§() : §>>§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§>O§) : § !C§
      {
         return new § !C§(param1);
      }
      
      public function §[!F§(param1:Boolean) : void
      {
         if(§"u§.§-2§)
         {
            if(param1)
            {
               §"u§.§-2§.start();
            }
            else
            {
               §"u§.§-2§.stop();
               §"u§.§-2§.color = 0;
            }
         }
      }
      
      public function §]I§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function §9!C§(param1:§%!0§) : void
      {
         if(this.§+!7§ != null)
         {
            this.§+!7§.removeEventListeners();
         }
         this.§+!7§ = param1;
         if(this.mReadyToRun)
         {
            this.§+!7§.addEventListeners();
         }
      }
      
      public function §6!`§() : §9k§
      {
         return this.§;;§;
      }
      
      public function §0$§(param1:§9x§, param2:Array, param3:Function) : void
      {
         this.§#=§ = param1;
         var _loc4_:int = this.§#=§.§finally§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§<!P§.§"e§(this.§#=§.§5v§(_loc5_));
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§&!,§.addEventListener(Event.INIT,param3);
            this.§<H§.push(param3);
         }
         if(this.§^u§(param2))
         {
            this.§`b§();
         }
      }
      
      private function §^u§(param1:Array) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.§<!P§.§'6§())
         {
            _loc2_ = this.§<!P§.§4e§ / 1000;
            _loc3_ = this.§<!P§.§`R§ / 1000;
            §-3§.log("\n\nMain texture manager memory usage:\n   textures " + _loc2_ + " kilobytes\n   bitmaps " + _loc3_ + " kilobytes\n\n");
            this.initializeAnimations(param1);
            return true;
         }
         this.§;C§ = param1.concat();
         return false;
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         this.§6y§.initializeAnimations(param1);
      }
      
      private function §3!?§(param1:Event) : void
      {
         this.§<!P§.§"R§();
         if(this.§=!P§ && this.§=!P§.§!c§)
         {
            this.§=!P§.§!c§.§"R§();
         }
         if(this.§[!2§ && this.§[!2§.§!c§)
         {
            this.§[!2§.§!c§.§"R§();
         }
         if(this.§;C§)
         {
            this.§^u§(this.§;C§);
            this.§;C§ = null;
            this.§`b§();
         }
         if(this.§+!7§ != null && this.mReadyToRun)
         {
            this.§+!7§.addEventListeners();
         }
         if(this.§6#§)
         {
            this.§6#§.§'6§();
         }
         if(this.§+W§)
         {
            if(this.§+W§.§!c§)
            {
               this.§+W§.§!c§.§"R§();
               this.§+W§.§'6§();
            }
         }
      }
      
      private function §`b§() : void
      {
         this.§&!,§.dispatchEvent(new Event(Event.INIT));
         this.§4!_§();
      }
      
      private function §4!_§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§<H§)
         {
            this.§&!,§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§<H§ = [];
      }
      
      public function init(param1:§3A§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§95§ = new §,S§(this,param1);
         this.§;!a§ = this.§<C§(param1);
         this.§3!;§ = 0;
         this.§!!E§ = 0;
         this.§9!I§ = 0;
         this.§;`§ = false;
         this.mReadyToRun = false;
         this.§,!J§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         §"!S§ = param1.theme;
         this.§+!4§ = param1;
         this.§,d§ = this.§+!O§(param1.theme);
         this.§8!%§ = this.§^H§(param1.theme);
         if(this.§,d§ && this.§8!%§)
         {
            this.§!f§(param1);
         }
         else
         {
            this.§9>§(param1.theme);
         }
         this.initReplay();
         §2s§.init();
      }
      
      protected function initReplay() : void
      {
         this.§;;§ = new §9k§(§[!L§.§^!X§);
      }
      
      protected function §+!O§(param1:String) : Boolean
      {
         if(this.§6#§)
         {
            return false;
         }
         return true;
      }
      
      protected function §^H§(param1:String) : Boolean
      {
         var _loc2_:§,E§ = null;
         if(this.§7!F§)
         {
            _loc2_ = §>!E§.§%!4§(param1);
            if(_loc2_)
            {
               if(_loc2_.§+!0§ && !this.§7!F§.§#!B§(_loc2_.§+!0§))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function §9>§(param1:String) : void
      {
         var _loc2_:§,E§ = null;
         if(this.§6#§ && !this.§+!O§(param1))
         {
            this.§6#§.removeEventListener(Event.COMPLETE,this.§^b§);
            this.§6#§.removeEventListener(Event.CANCEL,this.§'t§);
            this.§6#§.addEventListener(Event.COMPLETE,this.§^b§);
            this.§6#§.addEventListener(Event.CANCEL,this.§'t§);
            this.§6#§.§>!`§(param1);
         }
         if(this.§7!F§ && !this.§^H§(param1))
         {
            this.§7!F§.removeEventListener(Event.COMPLETE,this.§>l§);
            this.§7!F§.removeEventListener(Event.CANCEL,this.§]!P§);
            this.§7!F§.addEventListener(Event.COMPLETE,this.§>l§);
            this.§7!F§.addEventListener(Event.CANCEL,this.§]!P§);
            _loc2_ = §>!E§.§%!4§(param1);
            if(_loc2_)
            {
               this.§7!F§.§>!`§(_loc2_.§+!0§);
            }
         }
      }
      
      private function §^b§(param1:Event) : void
      {
         this.§6#§.removeEventListener(Event.COMPLETE,this.§^b§);
         this.§6#§.removeEventListener(Event.CANCEL,this.§'t§);
         this.§,d§ = true;
         if(this.§,d§ && this.§8!%§)
         {
            this.§!f§(this.§+!4§);
         }
      }
      
      private function §'t§(param1:Event) : void
      {
         this.§6#§.removeEventListener(Event.COMPLETE,this.§^b§);
         this.§6#§.removeEventListener(Event.CANCEL,this.§'t§);
         this.§,!J§ = true;
      }
      
      private function §>l§(param1:Event) : void
      {
         this.§6#§.removeEventListener(Event.COMPLETE,this.§>l§);
         this.§6#§.removeEventListener(Event.CANCEL,this.§]!P§);
         this.§8!%§ = true;
         if(this.§,d§ && this.§8!%§)
         {
            this.§!f§(this.§+!4§);
         }
      }
      
      private function §]!P§(param1:Event) : void
      {
         this.§6#§.removeEventListener(Event.COMPLETE,this.§>l§);
         this.§6#§.removeEventListener(Event.CANCEL,this.§]!P§);
         this.§8!%§ = true;
         if(this.§,d§ && this.§8!%§)
         {
            this.§!f§(this.§+!4§);
         }
      }
      
      public function get § set§() : §>O§
      {
         return this.§<!P§;
      }
      
      protected function §!f§(param1:§3A§) : void
      {
         this.§9Y§ = false;
         this.§]!J§ = false;
         if(§"u§.§4f§)
         {
            §"u§.§4f§.speed = 1;
         }
         this.mLevelEngine = new §&,§(this);
         this.§@2§ = this.§-G§(param1.theme,this.§95§.§?!$§ / §4#§,this.§ set§,this.§;!a§.§9!#§());
         this.§@2§.§2!;§(§'Y§.§2,§());
         this.§<!%§ = this.initLevelObjectManager(param1);
         this.§1!8§ = this.initLevelSlingshot(param1);
         this.§ !S§ = this.§9A§(this.§6y§,this.§<!P§);
         this.§;!a§.init();
         this.§2!Q§();
         this.loadPreviousReplayData();
         this.mReadyToRun = true;
         if(this.§+!7§)
         {
            this.§+!7§.addEventListeners();
         }
      }
      
      protected function loadPreviousReplayData() : void
      {
         if(this.§,?§)
         {
            this.§%u§ = §9k§.§!f§(this.§,?§);
            this.§%u§.speed = 1;
            this.§%u§.play();
            this.§3-§ = -1000;
            this.§,?§ = null;
         }
      }
      
      public function §]-§(param1:String) : void
      {
         this.§,?§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§%u§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§%u§)
         {
            if(param1)
            {
               this.§%u§.speed = Math.min(this.§%u§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§%u§.speed = Math.max(this.§%u§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§%u§)
         {
            this.§%u§.speed = 1;
         }
      }
      
      protected function initLevelObjectManager(param1:§3A§) : §'!'§
      {
         return new §'!'§(this,param1,new Sprite());
      }
      
      protected function §<C§(param1:§3A§) : §9![§
      {
         return new §9![§(this,param1);
      }
      
      protected function §-G§(param1:String, param2:Number, param3:§>O§, param4:Number) : §'e§
      {
         return new §'e§(param1,param2,param3,param4);
      }
      
      protected function initLevelSlingshot(param1:§3A§) : §#!4§
      {
         return new §#!4§(this,param1,new Sprite());
      }
      
      protected function §9A§(param1:§ !C§, param2:§>O§) : §2!4§
      {
         return new §2!4§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§3A§ = this.§5C§();
         var _loc4_:§!K§;
         (_loc4_ = new §!K§()).left = 0;
         _loc4_.top = -§9![§.§>0§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §9![§.§>0§;
         _loc4_.right = _loc4_.left + §9![§.§4a§;
         _loc4_.y = -13.929;
         _loc4_.x = §9![§.§4a§;
         _loc4_.id = §9![§.§2!^§;
         _loc3_.§01§(_loc4_);
         var _loc5_:§!K§;
         (_loc5_ = new §!K§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §9![§.§4a§;
         _loc5_.bottom = _loc5_.top + §9![§.§>0§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §9![§.§4a§ / 2;
         _loc5_.id = §9![§.§5H§;
         _loc3_.§01§(_loc5_);
         this.§9!$§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§"!S§ != null)
         {
            _loc3_.theme = §"!S§;
         }
         this.init(_loc3_);
      }
      
      protected function §9!$§(param1:§3A§, param2:Boolean) : void
      {
         if(param2)
         {
            this.§>3§(param1);
         }
      }
      
      protected function §5C§() : §3A§
      {
         var _loc1_:§3A§ = new §3A§();
         _loc1_.§[T§ = -12;
         return new §3A§();
      }
      
      protected function §?!M§() : Number
      {
         this.§32§ ^= this.§32§ << 21;
         this.§32§ ^= this.§32§ >>> 35;
         this.§32§ ^= this.§32§ << 4;
         return this.§32§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §>3§(param1:§3A§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§^!<§ = null;
         this.§32§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§?!M§() * 5;
               (_loc5_ = new §^!<§()).x = 30 + _loc3_ * 10 + this.§?!M§() * 9;
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
                  _loc5_.angle = 45 - this.§?!M§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§?!M§() * 3 - _loc3_ * 8;
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
                  _loc5_.angle = this.§?!M§() * 360;
               }
               param1.addObject(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      private function §'m§() : void
      {
      }
      
      public function §2!Q§() : void
      {
         if(§'e§.§5!,§)
         {
            this.§?!<§(this.§@2§.§7%§,false);
         }
         this.§?!<§(this.§ !S§.§4!X§(§2!4§.§'0§),false);
         this.§?!<§(this.§ !S§.§4!X§(§2!4§.§ !N§),true);
         this.§?!<§(this.§ !S§.§4!X§(§2!4§.§@!P§),true);
         this.§?!<§(this.§<!%§.§?2§,true);
         this.§?!<§(this.§1!8§.sprite,true);
         this.§?!<§(this.§ !S§.§4!X§(§2!4§.§8!Q§),true);
         this.§?!<§(this.§@2§.§]U§,false);
         if(§'e§.§5!,§)
         {
            this.§?!<§(this.§@2§.§ !T§,false);
         }
         this.§?!<§(this.§ !S§.§4!X§(§2!4§.§6N§),true);
      }
      
      private function §?!<§(param1:Sprite, param2:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(param1);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         param1 /= §'Y§.§;x§;
         param2 /= §'Y§.§;x§;
         _loc3_.x = (param1 / §9![§.§+g§ + this.§;!a§.§;g§ - §9![§.§1`§ / §9![§.§+g§) * §4#§;
         _loc3_.y = (param2 / §9![§.§+g§ + this.§;!a§.§]]§ - §9![§.§!!5§ / §9![§.§+g§) * §4#§;
         return _loc3_;
      }
      
      public function §=!G§(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / §4#§ + §9![§.§1`§ / §9![§.§+g§ - this.§;!a§.§;g§) * §9![§.§+g§;
         _loc3_.y = (param2 / §4#§ + §9![§.§!!5§ / §9![§.§+g§ - this.§;!a§.§]]§) * §9![§.§+g§;
         var _loc4_:Number = Math.max(§'Y§.§;x§,§'Y§.§=!a§);
         _loc3_.x *= _loc4_;
         _loc3_.y *= _loc4_;
         return _loc3_;
      }
      
      public function §3B§(param1:String, param2:Number, param3:Number) : void
      {
         this.§<!%§.addObject(param1,param2,param3);
      }
      
      public function §4&§() : void
      {
         if(this.§+!"§)
         {
            this.§+!"§.visible = true;
            this.§+!"§.alpha = 0;
         }
         this.§"B§ = 0;
      }
      
      public function §?c§() : void
      {
         this.§5O§ = new §,!§(§'_§.§-!F§,§'_§.§#y§);
      }
      
      public function §6w§() : void
      {
         this.§5O§ = null;
      }
      
      public function clearLevel() : void
      {
         if(this.§@2§)
         {
            this.§@2§.dispose();
            this.§@2§ = null;
         }
         if(this.§<!%§)
         {
            this.§<!%§.dispose();
            this.§<!%§ = null;
            this.§&!a§ = null;
         }
         if(this.mLevelEngine)
         {
            if(!this.mLevelEngine.§'!Z§)
            {
            }
            this.mLevelEngine.clear();
            this.mLevelEngine = null;
         }
         if(this.§95§)
         {
            this.§95§.clear();
            this.§95§ = null;
         }
         if(this.§1!8§)
         {
            this.§1!8§.dispose();
            this.§1!8§ = null;
         }
         if(this.§;!a§)
         {
            this.§;!a§.clear();
            this.§;!a§ = null;
         }
         if(this.§ !S§)
         {
            this.§ !S§.dispose();
            this.§ !S§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§3!;§ = 0;
         this.§!!E§ = 0;
         this.mReadyToRun = false;
         this.§;`§ = false;
         this.§"B§ = §'_§.§?;§;
         if(this.§5I§)
         {
            (this.§5I§ as §1!O§).§1!#§.x = 0;
            (this.§5I§ as §1!O§).§1!#§.y = 0;
         }
         if(this.§+!"§)
         {
            this.§+!"§.visible = false;
         }
         this.§%u§ = null;
         this.§;;§ = null;
         if(this.§6#§)
         {
            this.§6#§.removeEventListener(Event.COMPLETE,this.§^b§);
            this.§6#§.removeEventListener(Event.CANCEL,this.§'t§);
         }
         if(this.§7!F§)
         {
            this.§7!F§.removeEventListener(Event.COMPLETE,this.§>l§);
            this.§7!F§.removeEventListener(Event.CANCEL,this.§]!P§);
         }
         this.§4!_§();
         if(§"u§.§-2§)
         {
            §"u§.§-2§.color = 0;
         }
         if(this.§+!7§)
         {
            this.§+!7§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver() : void
      {
      }
      
      public function § !3§() : String
      {
         if(this.§;;§)
         {
            return this.§;;§.toString();
         }
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         if(!this.mReadyToRun || !§"u§.§9b§())
         {
            return 0;
         }
         if(this.§%u§ && this.§%u§.§7`§)
         {
            return this.§<!C§(param1,param2,param3);
         }
         return this.§''§(param1,true,param2,param3);
      }
      
      protected function §''§(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         if(this.§9Y§)
         {
            param1 *= 0.2;
            if(§"u§.§4f§)
            {
               §"u§.§4f§.speed = 0.2;
            }
         }
         var _loc5_:Number = 0;
         this.§!!E§ += param1;
         if(param3)
         {
            this.§3!;§ += param1;
            _loc5_ = this.mLevelEngine.§1!-§(this.§3!;§);
            this.§1!8§.update(param1,param4);
            this.§3!;§ = _loc5_;
         }
         else
         {
            this.§<!%§.§,!X§(param1);
            this.§3!;§ = 0;
         }
         if(param2)
         {
            this.§'§(param1,_loc5_);
         }
         return param1;
      }
      
      private function §<!C§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc5_:Number = NaN;
         var _loc4_:Number = §&,§.§0p§ * 1000;
         if(this.§%u§)
         {
            param1 *= this.§%u§.speed;
            _loc5_ = this.§!!E§ + param1;
            while(this.§!!E§ + _loc4_ < _loc5_)
            {
               if(this.§!!E§ + _loc4_ > this.§3-§)
               {
                  this.§%u§.step(this);
                  this.§3-§ += _loc4_;
               }
               this.§''§(_loc4_,false,param2,param3);
            }
            if(_loc5_ > this.§3-§ + _loc4_)
            {
               this.§%u§.step(this);
               this.§3-§ += _loc4_;
            }
            if(this.§!!E§ < _loc5_)
            {
               this.§''§(_loc5_ - this.§!!E§,true,param2,param3);
            }
            return param1;
         }
         return this.§''§(_loc4_,true,param2,param3);
      }
      
      private function §'§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.§@2§.update(param1);
         this.§<!%§.§[l§(param1,param2);
         this.§="§();
         if(this.§"B§ < §'_§.§?;§)
         {
            this.§"B§ += param1;
            _loc3_ = §'_§.§?;§ / 2;
            _loc4_ = (-Math.abs(this.§"B§ - _loc3_) + _loc3_) * (§'_§.§&D§ / _loc3_);
            if(this.§+!"§)
            {
               this.§+!"§.alpha = _loc4_;
            }
         }
         else if(this.§+!"§)
         {
            this.§+!"§.visible = false;
         }
         if(this.§5O§)
         {
            if(!this.§5O§.§9!]§(this.§;!a§,param1))
            {
               this.§6w§();
            }
         }
         this.§;!a§.§1!2§(param1);
         this.mLevelEngine.§@!E§();
         this.§ !S§.update(param1);
      }
      
      public function §?f§(param1:Number) : void
      {
         this.objects.§,!X§(param1 * 1000);
         this.objects.§8-§(param1 * 1000);
         this.§+X§();
      }
      
      public function §="§() : void
      {
         var _loc1_:§`,§ = null;
         if(this.§!!E§ > this.§9!I§ + 1000 / 30)
         {
            if(this.§@a§ != null)
            {
               for each(_loc1_ in this.§@a§)
               {
                  _loc1_.addTrail();
               }
            }
            this.§9!I§ = this.§!!E§;
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§`,§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.§<!%§.isPigsAlive(true))
            {
               _loc2_ = this.§<!%§.§!R§(true);
               _loc2_.§#!9§.mTryToScream = §]S§.§]T§;
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§<!%§.§#!6§());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            if(this.§<!%§.isPigsAlive(true))
            {
               _loc2_ = this.§<!%§.§!R§(true);
               _loc2_.§#!9§.mTryToBlink = §]S§.§9V§;
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§<!%§.§#!6§());
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §%v§.§1!^§;
         }
         §2s§.addScore(param1,param2);
         this.§+!7§.addScore(param1);
         if(param3 && param1 > 0 && !this.§]!J§)
         {
            this.§?D§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §?D§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §%v§.§?T§;
         }
         this.§ !S§.addParticle(§%v§.§7b§,§2!4§.§6N§,§%v§.§]P§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §^!O§(param1:§`,§) : void
      {
         if(this.§@a§ == null)
         {
            this.§@a§ = new Array();
         }
         this.§@a§.push(param1);
      }
      
      public function §+y§() : void
      {
         this.§1!8§.§+y§();
         this.§<!%§.§+!G§();
         this.§]!J§ = true;
      }
      
      public function §3r§(param1:§`,§) : void
      {
         this.§ !S§.§>d§(§2!4§.§'0§);
         if(this.§@a§.indexOf(param1) >= 0)
         {
            this.§@a§.splice(this.§@a§.indexOf(param1),1);
         }
         if(this.§@a§.length == 0)
         {
            this.§@a§ = null;
         }
      }
      
      public function §#o§(param1:§%!_§, param2:Number, param3:Number) : void
      {
         this.§&!a§ = this.§<!%§.addObject(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
         var _loc4_:Number = param1.name.toUpperCase() == "BIRD_GREEN" ? Number(§#!4§.§>K§) : Number(§#!4§.§0=§);
         if(param1.§`E§ > 1)
         {
            this.§&!a§.§9!@§(param1.§`E§);
            this.§&!a§.§#!9§.§%!5§();
         }
         if(param1.§@!S§ != 0)
         {
            _loc4_ = param1.§@!S§;
         }
         var _loc5_:Number = -_loc4_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc6_:Number = _loc4_ * param2 * Math.sin(param3 / (180 / Math.PI));
         this.§&!a§.§4r§(new b2Vec2(_loc5_,_loc6_),false,true);
         this.camera.§8W§(§9![§.§7!A§);
         if(this.§;;§)
         {
            this.§;;§.§#o§(this.mLevelEngine.currentStep,param1.x,param1.y,param2,param3);
         }
      }
      
      public function activatePowerup() : void
      {
         this.§;`§ = true;
      }
      
      private function §+X§() : void
      {
         if(!this.§;`§)
         {
            return;
         }
         this.§;`§ = false;
         if(this.activeObject is §;J§ && !(this.activeObject as §;J§).§`!K§)
         {
            if(this.activeObject.activateSpecialPower(this.§,G§))
            {
               this.§?!2§ = true;
            }
         }
         else
         {
            this.§<!%§.§`l§();
         }
         if(this.§;;§)
         {
            this.§;;§.§=t§(this.mLevelEngine.currentStep);
         }
      }
      
      public function §3a§() : void
      {
         this.§<!%§.§3a§();
      }
      
      public function §3!H§() : void
      {
         this.§<!%§.§continue§();
      }
      
      public function §;!I§() : §3A§
      {
         var _loc1_:§3A§ = new §3A§();
         _loc1_.§8!I§ = this.§+!4§.§8!I§;
         _loc1_.§9N§ = this.§+!4§.§9N§;
         this.§;!a§.get(_loc1_);
         this.§<!%§.§@F§(_loc1_);
         this.§1!8§.§;!5§(_loc1_);
         _loc1_.theme = this.§@2§.§^a§();
         return _loc1_;
      }
      
      public function §;m§() : int
      {
         return this.§+!4§.§9N§;
      }
      
      public function §&!4§() : int
      {
         return this.§+!4§.§8!I§;
      }
      
      public function §[9§(param1:int) : void
      {
         this.§+!4§.§9N§ = param1;
      }
      
      public function §&!M§(param1:int) : void
      {
         this.§+!4§.§8!I§ = param1;
      }
      
      public function §;!3§(param1:Number, param2:Number) : void
      {
         if(this.§5i§)
         {
            this.§5i§.§12§(param1,param2);
         }
         if(this.§;!a§)
         {
            this.§;!a§.§1!2§(0);
         }
      }
      
      public function get §'b§() : §3A§
      {
         return this.§+!4§;
      }
      
      public function get §,G§() : §'!'§
      {
         return this.§<!%§;
      }
      
      protected function get §#W§() : §"u§
      {
         return this.§7!N§;
      }
      
      public function get §2v§() : int
      {
         return §8![§;
      }
   }
}
