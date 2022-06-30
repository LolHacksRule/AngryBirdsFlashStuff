package § d§
{
   import § !_§.b2Vec2;
   import §"§.§"@§;
   import §"§.§2z§;
   import §"W§.§0f§;
   import §"W§.§7!6§;
   import §"W§.§;N§;
   import §"W§.§?!T§;
   import §#!f§.DisplayObject;
   import §#!f§.Sprite;
   import §0i§.§]_§;
   import §1w§.§,3§;
   import §1y§.§&!B§;
   import §2!@§.§,Z§;
   import §2!@§.§;!Z§;
   import §2+§.§]n§;
   import §3!§.§'!?§;
   import §3!§.§-e§;
   import §3!§.§9i§;
   import §3r§.§1S§;
   import §8! §.§ G§;
   import §8! §.§#z§;
   import §8! §.§1_§;
   import §8! §.§^!F§;
   import §<<§.§#!T§;
   import §>!F§.§9!Z§;
   import §>0§.§;-§;
   import §@!"§.§'!^§;
   import §@!H§.§-f§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §'!"§
   {
      
      private static const §@Z§:int = 20;
      
      public static const §5!;§:Number = §9!Z§.§,e§;
      
      public static const §20§:Number = §9!Z§.§5§;
      
      public static const §#3§:Number = 1 / 20;
      
      public static const §>6§:Number = §9!Z§.§5§ * §#3§;
      
      public static const §]!A§:Number = §5!;§ * §#3§;
      
      public static const §5H§:§1S§ = new §1S§(13 - 3);
      
      public static var §[!A§:Number = 1;
      
      protected static var §<!%§:String = §1_§.§[§;
       
      
      protected var §-![§:§?!T§;
      
      private var §1!S§:§;N§;
      
      private var §]!I§:Array = null;
      
      protected var §]R§:§]n§;
      
      public var mLevelEngine:§0!F§;
      
      protected var §[$§:§+=§;
      
      protected var §@=§:§-f§;
      
      protected var §3=§:§3§;
      
      protected var § case§:§"@§;
      
      public var mReadyToRun:Boolean = false;
      
      public var § !c§:Boolean = false;
      
      protected var §^G§:Boolean = false;
      
      protected var § K§:Boolean = false;
      
      public var §]P§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §<!H§:Number;
      
      public var §1z§:Number;
      
      private var §?!E§:Number;
      
      public var §0M§:§ G§;
      
      public var § !,§:Boolean = false;
      
      private var §@!8§:§9B§;
      
      private var §1U§:Sprite;
      
      protected var §+!e§:§1_§;
      
      protected var §6!F§:§#!T§ = null;
      
      private var §66§:EventDispatcher;
      
      private var §=!9§:Array;
      
      private var §5!K§:Array;
      
      protected var §6%§:§&!B§;
      
      private var §!E§:§;-§;
      
      protected var §-!<§:§-e§;
      
      protected var §#!=§:§9i§;
      
      private var §9!O§:§'!?§;
      
      private var §=r§:§'!?§;
      
      private var §?J§:§'!?§;
      
      private var §%!$§:Stage;
      
      private var §'!7§:§=l§;
      
      protected var §7!9§:§,3§;
      
      protected var §2@§:§,3§;
      
      protected var §8@§:Number = 0.0;
      
      protected var §,_§:String;
      
      private var §2f§:Boolean;
      
      protected var §9!^§:Boolean;
      
      protected var §]@§:uint = 1.417339207E9;
      
      public var §6G§:Boolean;
      
      public function §'!"§(param1:Stage)
      {
         this.§5!K§ = [];
         super();
         this.§66§ = new EventDispatcher();
         this.§0M§ = new § G§();
         this.§%!$§ = param1;
         this.§-!<§ = §-e§.§,!U§;
         this.§#!=§ = this.initAnimationManager(this.§-!<§);
         this.§9!O§ = this.initThemeGraphicsManager();
         this.§=r§ = this.§3!K§();
         this.§?J§ = this.§0l§();
         var _loc2_:Stage3D = param1.stage3Ds[0];
         this.§6%§ = new §&!B§(§9B§,param1,new Rectangle(0,0,§9!Z§.§,e§,§9!Z§.§5§),_loc2_);
         §9!Z§.§85§.addEventListener(Event.ENTER_FRAME,this.§6%§.§-!e§);
         _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§#!1§,false,0,true);
         this.§6%§.simulateMultitouch = false;
         this.§6%§.enableErrorChecking = false;
         this.§6%§.§6u§ = 2;
         this.§6%§.§^&§();
      }
      
      public static function §>t§(param1:§;N§, param2:§;N§) : Number
      {
         var _loc3_:Number = param1.§",§ - param2.§",§;
         var _loc4_:Number = param1.§^!U§ - param2.§^!U§;
         return §+q§(_loc3_,_loc4_);
      }
      
      public static function §+q§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         if(!this.§1U§ && this.§!h§)
         {
            this.§1U§ = this.§@!8§.§1K§;
         }
         return this.§1U§;
      }
      
      public function get §!h§() : Sprite
      {
         if(!this.§@!8§)
         {
            this.§@!8§ = this.§6%§.§?!V§ as §9B§;
            this.§@!8§.§4!W§ = false;
         }
         return this.§@!8§;
      }
      
      private function get §]x§() : DisplayObject
      {
         if(this.§!h§)
         {
            return (this.§!h§ as §9B§).§]x§;
         }
         return null;
      }
      
      public function get §4!2§() : §9i§
      {
         return this.§#!=§;
      }
      
      public function get textureManager() : §-e§
      {
         return this.§-!<§;
      }
      
      public function get camera() : §-f§
      {
         return this.§@=§;
      }
      
      public function get objects() : §?!T§
      {
         return this.§-![§;
      }
      
      public function get particles() : §"@§
      {
         return this.§ case§;
      }
      
      public function get background() : §]n§
      {
         return this.§]R§;
      }
      
      public function get slingshot() : §3§
      {
         return this.§3=§;
      }
      
      public function get activeObject() : §;N§
      {
         return this.§1!S§;
      }
      
      public function get §=!E§() : §+=§
      {
         return this.§[$§;
      }
      
      public function get stage() : Stage
      {
         return this.§%!$§;
      }
      
      public function get §]7§() : §'!?§
      {
         return this.§?J§;
      }
      
      protected function get §;§() : §'!?§
      {
         return this.§9!O§;
      }
      
      public function set activeObject(param1:§;N§) : void
      {
         this.§1!S§ = param1;
      }
      
      public function set §!!=§(param1:Boolean) : void
      {
         this.§9!^§ = param1;
      }
      
      public function clear() : void
      {
         if(this.§!E§)
         {
            this.§!E§.dispose();
         }
         if(this.§-!<§)
         {
            this.§-!<§.dispose();
         }
         if(this.§9!O§ && this.§9!O§.textureManager)
         {
            this.§9!O§.textureManager.dispose();
         }
         if(this.§?J§ && this.§?J§.textureManager)
         {
            this.§?J§.textureManager.dispose();
         }
         if(this.§6%§)
         {
            this.§6%§.dispose();
         }
      }
      
      protected function initThemeGraphicsManager() : §'!?§
      {
         return null;
      }
      
      protected function §3!K§() : §'!?§
      {
         return null;
      }
      
      protected function §0l§() : §'!?§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§-e§) : §9i§
      {
         return new §9i§(param1);
      }
      
      public function §8t§(param1:Boolean) : void
      {
         if(§&!B§.§^8§)
         {
            if(param1)
            {
               §&!B§.§^8§.start();
            }
            else
            {
               §&!B§.§^8§.stop();
               §&!B§.§^8§.color = 0;
            }
         }
      }
      
      public function §5!=§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function §5q§(param1:§#!T§) : void
      {
         if(this.§6!F§ != null)
         {
            this.§6!F§.removeEventListeners();
         }
         this.§6!F§ = param1;
         if(this.mReadyToRun)
         {
            this.§6!F§.addEventListeners();
         }
      }
      
      public function §3C§() : §,3§
      {
         return this.§7!9§;
      }
      
      public function §5C§(param1:§;-§, param2:Array, param3:Function) : void
      {
         this.§!E§ = param1;
         var _loc4_:int = this.§!E§.§1n§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§-!<§.§>A§(this.§!E§.§?!0§(_loc5_));
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§66§.addEventListener(Event.INIT,param3);
            this.§5!K§.push(param3);
         }
         if(this.dynamic(param2))
         {
            this.§"A§();
         }
      }
      
      private function dynamic(param1:Array) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.§-!<§.§?P§())
         {
            _loc2_ = this.§-!<§.§[!#§ / 1000;
            _loc3_ = this.§-!<§.§>S§ / 1000;
            §]_§.log("\n\nMain texture manager memory usage:\n   textures " + _loc2_ + " kilobytes\n   bitmaps " + _loc3_ + " kilobytes\n\n");
            this.initializeAnimations(param1);
            return true;
         }
         this.§=!9§ = param1.concat();
         return false;
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         this.§#!=§.initializeAnimations(param1);
      }
      
      private function §#!1§(param1:Event) : void
      {
         this.§-!<§.§-!D§();
         if(this.§;§ && this.§;§.textureManager)
         {
            this.§;§.textureManager.§-!D§();
         }
         if(this.§]7§ && this.§]7§.textureManager)
         {
            this.§]7§.textureManager.§-!D§();
         }
         if(this.§=!9§)
         {
            this.dynamic(this.§=!9§);
            this.§=!9§ = null;
            this.§"A§();
         }
         if(this.§6!F§ != null && this.mReadyToRun)
         {
            this.§6!F§.addEventListeners();
         }
         if(this.§9!O§)
         {
            this.§9!O§.§?P§();
         }
         if(this.§?J§)
         {
            if(this.§?J§.textureManager)
            {
               this.§?J§.textureManager.§-!D§();
               this.§?J§.§?P§();
            }
         }
      }
      
      private function §"A§() : void
      {
         this.§66§.dispatchEvent(new Event(Event.INIT));
         this.§4=§();
      }
      
      private function §4=§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§5!K§)
         {
            this.§66§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§5!K§ = [];
      }
      
      public function init(param1:§1_§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§[$§ = new §+=§(this,param1);
         this.§@=§ = this.§,![§(param1);
         this.§<!H§ = 0;
         this.§1z§ = 0;
         this.§?!E§ = 0;
         this.§2f§ = false;
         this.mReadyToRun = false;
         this.§ !c§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         §<!%§ = param1.theme;
         this.§+!e§ = param1;
         this.§^G§ = this.§5E§(param1.theme);
         this.§ K§ = this.§#+§(param1.theme);
         if(this.§^G§ && this.§ K§)
         {
            this.initialize(param1);
         }
         else
         {
            this.§&!&§(param1.theme);
         }
         this.initReplay();
         §]!_§.init();
      }
      
      protected function initReplay() : void
      {
         this.§7!9§ = new §,3§(§#z§.§@k§);
      }
      
      protected function §5E§(param1:String) : Boolean
      {
         if(this.§9!O§)
         {
            return false;
         }
         return true;
      }
      
      protected function §#+§(param1:String) : Boolean
      {
         var _loc2_:§,Z§ = null;
         if(this.§=r§)
         {
            _loc2_ = §;!Z§.§9!V§(param1);
            if(_loc2_)
            {
               if(_loc2_.§@4§ && !this.§=r§.§&x§(_loc2_.§@4§))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function §&!&§(param1:String) : void
      {
         var _loc2_:§,Z§ = null;
         if(this.§9!O§ && !this.§5E§(param1))
         {
            this.§9!O§.removeEventListener(Event.COMPLETE,this.§ J§);
            this.§9!O§.removeEventListener(Event.CANCEL,this.§^!a§);
            this.§9!O§.addEventListener(Event.COMPLETE,this.§ J§);
            this.§9!O§.addEventListener(Event.CANCEL,this.§^!a§);
            this.§9!O§.§,T§(param1);
         }
         if(this.§=r§ && !this.§#+§(param1))
         {
            this.§=r§.removeEventListener(Event.COMPLETE,this.§8!J§);
            this.§=r§.removeEventListener(Event.CANCEL,this.§2P§);
            this.§=r§.addEventListener(Event.COMPLETE,this.§8!J§);
            this.§=r§.addEventListener(Event.CANCEL,this.§2P§);
            _loc2_ = §;!Z§.§9!V§(param1);
            if(_loc2_)
            {
               this.§=r§.§,T§(_loc2_.§@4§);
            }
         }
      }
      
      private function § J§(param1:Event) : void
      {
         this.§9!O§.removeEventListener(Event.COMPLETE,this.§ J§);
         this.§9!O§.removeEventListener(Event.CANCEL,this.§^!a§);
         this.§^G§ = true;
         if(this.§^G§ && this.§ K§)
         {
            this.initialize(this.§+!e§);
         }
      }
      
      private function §^!a§(param1:Event) : void
      {
         this.§9!O§.removeEventListener(Event.COMPLETE,this.§ J§);
         this.§9!O§.removeEventListener(Event.CANCEL,this.§^!a§);
         this.§ !c§ = true;
      }
      
      private function §8!J§(param1:Event) : void
      {
         this.§9!O§.removeEventListener(Event.COMPLETE,this.§8!J§);
         this.§9!O§.removeEventListener(Event.CANCEL,this.§2P§);
         this.§ K§ = true;
         if(this.§^G§ && this.§ K§)
         {
            this.initialize(this.§+!e§);
         }
      }
      
      private function §2P§(param1:Event) : void
      {
         this.§9!O§.removeEventListener(Event.COMPLETE,this.§8!J§);
         this.§9!O§.removeEventListener(Event.CANCEL,this.§2P§);
         this.§ K§ = true;
         if(this.§^G§ && this.§ K§)
         {
            this.initialize(this.§+!e§);
         }
      }
      
      public function get backgroundTextureManager() : §-e§
      {
         return this.§-!<§;
      }
      
      protected function initialize(param1:§1_§) : void
      {
         this.§9!^§ = false;
         this.§6G§ = false;
         if(§&!B§.§[q§)
         {
            §&!B§.§[q§.speed = 1;
         }
         this.mLevelEngine = new §0!F§(this);
         this.§]R§ = this.§]!=§(param1.theme,this.§[$§.§9%§ / §#3§,this.backgroundTextureManager,this.§@=§.§`y§());
         this.§]R§.§,;§(§9!Z§.§null §());
         this.§-![§ = this.initLevelObjectManager(param1);
         this.§3=§ = this.initLevelSlingshot(param1);
         this.§ case§ = this.initParticleManager(this.§#!=§,this.§-!<§);
         this.§@=§.init();
         this.§3!J§();
         this.loadPreviousReplayData();
         this.mReadyToRun = true;
         if(this.§6!F§)
         {
            this.§6!F§.addEventListeners();
         }
      }
      
      protected function loadPreviousReplayData() : void
      {
         if(this.§,_§)
         {
            this.§2@§ = §,3§.initialize(this.§,_§);
            this.§2@§.speed = 1;
            this.§2@§.play();
            this.§8@§ = -1000;
            this.§,_§ = null;
         }
      }
      
      public function §8!]§(param1:String) : void
      {
         this.§,_§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§2@§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§2@§)
         {
            if(param1)
            {
               this.§2@§.speed = Math.min(this.§2@§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§2@§.speed = Math.max(this.§2@§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§2@§)
         {
            this.§2@§.speed = 1;
         }
      }
      
      protected function initLevelObjectManager(param1:§1_§) : §?!T§
      {
         return new §?!T§(this,param1,new Sprite());
      }
      
      protected function §,![§(param1:§1_§) : §-f§
      {
         return new §-f§(this,param1);
      }
      
      protected function §]!=§(param1:String, param2:Number, param3:§-e§, param4:Number) : §]n§
      {
         return new §]n§(param1,param2,param3,param4);
      }
      
      protected function initLevelSlingshot(param1:§1_§) : §3§
      {
         return new §3§(this,param1,new Sprite());
      }
      
      protected function initParticleManager(param1:§9i§, param2:§-e§) : §"@§
      {
         return new §"@§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§1_§ = this.preProcessLevel();
         var _loc4_:§^!F§;
         (_loc4_ = new §^!F§()).left = 0;
         _loc4_.top = -§-f§.§9"§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §-f§.§9"§;
         _loc4_.right = _loc4_.left + §-f§.§'7§;
         _loc4_.y = -13.929;
         _loc4_.x = §-f§.§'7§;
         _loc4_.id = §-f§.§3!Q§;
         _loc3_.§7S§(_loc4_);
         var _loc5_:§^!F§;
         (_loc5_ = new §^!F§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §-f§.§'7§;
         _loc5_.bottom = _loc5_.top + §-f§.§9"§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §-f§.§'7§ / 2;
         _loc5_.id = §-f§.§#!G§;
         _loc3_.§7S§(_loc5_);
         this.§-p§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§<!%§ != null)
         {
            _loc3_.theme = §<!%§;
         }
         this.init(_loc3_);
      }
      
      protected function §-p§(param1:§1_§, param2:Boolean) : void
      {
         if(param2)
         {
            this.§2J§(param1);
         }
      }
      
      protected function preProcessLevel() : §1_§
      {
         var _loc1_:§1_§ = new §1_§();
         _loc1_.§^x§ = -12;
         return new §1_§();
      }
      
      protected function §<L§() : Number
      {
         this.§]@§ ^= this.§]@§ << 21;
         this.§]@§ ^= this.§]@§ >>> 35;
         this.§]@§ ^= this.§]@§ << 4;
         return this.§]@§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §2J§(param1:§1_§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§'!^§ = null;
         this.§]@§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§<L§() * 5;
               (_loc5_ = new §'!^§()).x = 30 + _loc3_ * 10 + this.§<L§() * 9;
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
                  _loc5_.angle = 45 - this.§<L§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§<L§() * 3 - _loc3_ * 8;
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
                  _loc5_.angle = this.§<L§() * 360;
               }
               param1.§3!1§(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      private function §!!_§() : void
      {
      }
      
      public function §3!J§() : void
      {
         if(§]n§.§=z§)
         {
            this.§4!&§(this.§]R§.§<8§,false);
         }
         this.§4!&§(this.§ case§.§+!&§(§"@§.§0!8§),false);
         this.§4!&§(this.§ case§.§+!&§(§"@§.§,!Y§),true);
         this.§4!&§(this.§ case§.§+!&§(§"@§.§5$§),true);
         this.§4!&§(this.§-![§.§#6§,true);
         this.§4!&§(this.§3=§.sprite,true);
         this.§4!&§(this.§ case§.§+!&§(§"@§.§6^§),true);
         this.§4!&§(this.§]R§.§3H§,false);
         if(§]n§.§=z§)
         {
            this.§4!&§(this.§]R§.§%!]§,false);
         }
         this.§4!&§(this.§ case§.§+!&§(§"@§.§-!`§),true);
      }
      
      private function §4!&§(param1:Sprite, param2:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(param1);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         param1 /= §9!Z§.§0!6§;
         param2 /= §9!Z§.§0!6§;
         _loc3_.x = (param1 / §-f§.§%!@§ + this.§@=§.§6!5§ - §-f§.§&!H§ / §-f§.§%!@§) * §#3§;
         _loc3_.y = (param2 / §-f§.§%!@§ + this.§@=§.§-M§ - §-f§.§'z§ / §-f§.§%!@§) * §#3§;
         return _loc3_;
      }
      
      public function §<1§(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / §#3§ + §-f§.§&!H§ / §-f§.§%!@§ - this.§@=§.§6!5§) * §-f§.§%!@§;
         _loc3_.y = (param2 / §#3§ + §-f§.§'z§ / §-f§.§%!@§ - this.§@=§.§-M§) * §-f§.§%!@§;
         var _loc4_:Number = Math.max(§9!Z§.§0!6§,§9!Z§.§+C§);
         _loc3_.x *= _loc4_;
         _loc3_.y *= _loc4_;
         return _loc3_;
      }
      
      public function §-!'§(param1:String, param2:Number, param3:Number) : void
      {
         this.§-![§.§3!1§(param1,param2,param3);
      }
      
      public function §1O§() : void
      {
         if(this.§]x§)
         {
            this.§]x§.visible = true;
            this.§]x§.alpha = 0;
         }
         this.§]P§ = 0;
      }
      
      public function §68§() : void
      {
         this.§'!7§ = new §=l§(§&!S§.§`!d§,§&!S§.§`p§);
      }
      
      public function §8!F§() : void
      {
         this.§'!7§ = null;
      }
      
      public function clearLevel() : void
      {
         if(this.§]R§)
         {
            this.§]R§.dispose();
            this.§]R§ = null;
         }
         if(this.§-![§)
         {
            this.§-![§.dispose();
            this.§-![§ = null;
            this.§1!S§ = null;
         }
         if(this.mLevelEngine)
         {
            if(!this.mLevelEngine.§&k§)
            {
            }
            this.mLevelEngine.clear();
            this.mLevelEngine = null;
         }
         if(this.§[$§)
         {
            this.§[$§.clear();
            this.§[$§ = null;
         }
         if(this.§3=§)
         {
            this.§3=§.dispose();
            this.§3=§ = null;
         }
         if(this.§@=§)
         {
            this.§@=§.clear();
            this.§@=§ = null;
         }
         if(this.§ case§)
         {
            this.§ case§.dispose();
            this.§ case§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§<!H§ = 0;
         this.§1z§ = 0;
         this.mReadyToRun = false;
         this.§2f§ = false;
         this.§]P§ = §&!S§.§%K§;
         if(this.§!h§)
         {
            (this.§!h§ as §9B§).§=n§.x = 0;
            (this.§!h§ as §9B§).§=n§.y = 0;
         }
         if(this.§]x§)
         {
            this.§]x§.visible = false;
         }
         this.§2@§ = null;
         this.§7!9§ = null;
         if(this.§9!O§)
         {
            this.§9!O§.removeEventListener(Event.COMPLETE,this.§ J§);
            this.§9!O§.removeEventListener(Event.CANCEL,this.§^!a§);
         }
         if(this.§=r§)
         {
            this.§=r§.removeEventListener(Event.COMPLETE,this.§8!J§);
            this.§=r§.removeEventListener(Event.CANCEL,this.§2P§);
         }
         this.§4=§();
         if(§&!B§.§^8§)
         {
            §&!B§.§^8§.color = 0;
         }
         if(this.§6!F§)
         {
            this.§6!F§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver() : void
      {
      }
      
      public function §implements§() : String
      {
         if(this.§7!9§)
         {
            return this.§7!9§.toString();
         }
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         if(!this.mReadyToRun || !§&!B§.§`Y§())
         {
            return 0;
         }
         if(this.§2@§ && this.§2@§.§0m§)
         {
            return this.§-K§(param1,param2,param3);
         }
         return this.§&5§(param1,true,param2,param3);
      }
      
      protected function §&5§(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         if(this.§9!^§)
         {
            param1 *= 0.2;
            if(§&!B§.§[q§)
            {
               §&!B§.§[q§.speed = 0.2;
            }
         }
         var _loc5_:Number = 0;
         this.§1z§ += param1;
         if(param3)
         {
            this.§<!H§ += param1;
            _loc5_ = this.mLevelEngine.§2r§(this.§<!H§);
            this.§3=§.update(param1,param4);
            this.§<!H§ = _loc5_;
         }
         else
         {
            this.§-![§.§0Y§(param1);
            this.§<!H§ = 0;
         }
         if(param2)
         {
            this.§^_§(param1,_loc5_);
         }
         return param1;
      }
      
      private function §-K§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc5_:Number = NaN;
         var _loc4_:Number = §0!F§.§+o§ * 1000;
         if(this.§2@§)
         {
            param1 *= this.§2@§.speed;
            _loc5_ = this.§1z§ + param1;
            while(this.§1z§ + _loc4_ < _loc5_)
            {
               if(this.§1z§ + _loc4_ > this.§8@§)
               {
                  this.§2@§.step(this);
                  this.§8@§ += _loc4_;
               }
               this.§&5§(_loc4_,false,param2,param3);
            }
            if(_loc5_ > this.§8@§ + _loc4_)
            {
               this.§2@§.step(this);
               this.§8@§ += _loc4_;
            }
            if(this.§1z§ < _loc5_)
            {
               this.§&5§(_loc5_ - this.§1z§,true,param2,param3);
            }
            return param1;
         }
         return this.§&5§(_loc4_,true,param2,param3);
      }
      
      private function §^_§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.§]R§.update(param1);
         this.§-![§.§^!N§(param1,param2);
         this.§1>§();
         if(this.§]P§ < §&!S§.§%K§)
         {
            this.§]P§ += param1;
            _loc3_ = §&!S§.§%K§ / 2;
            _loc4_ = (-Math.abs(this.§]P§ - _loc3_) + _loc3_) * (§&!S§.§7! § / _loc3_);
            if(this.§]x§)
            {
               this.§]x§.alpha = _loc4_;
            }
         }
         else if(this.§]x§)
         {
            this.§]x§.visible = false;
         }
         if(this.§'!7§)
         {
            if(!this.§'!7§.§5,§(this.§@=§,param1))
            {
               this.§8!F§();
            }
         }
         this.§@=§.§@!!§(param1);
         this.mLevelEngine.§6§();
         this.§ case§.update(param1);
      }
      
      public function §<!a§(param1:Number) : void
      {
         this.objects.§0Y§(param1 * 1000);
         this.objects.§6I§(param1 * 1000);
         this.§,9§();
      }
      
      public function §1>§() : void
      {
         var _loc1_:§;N§ = null;
         if(this.§1z§ > this.§?!E§ + 1000 / 30)
         {
            if(this.§]!I§ != null)
            {
               for each(_loc1_ in this.§]!I§)
               {
                  _loc1_.addTrail();
               }
            }
            this.§?!E§ = this.§1z§;
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§;N§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.§-![§.isPigsAlive(true))
            {
               _loc2_ = this.§-![§.§1H§(true);
               _loc2_.§%f§.mTryToScream = §0f§.§![§;
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§-![§.§^]§());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            if(this.§-![§.isPigsAlive(true))
            {
               _loc2_ = this.§-![§.§1H§(true);
               _loc2_.§%f§.mTryToBlink = §0f§.§]!e§;
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§-![§.§^]§());
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §2z§.§]!U§;
         }
         §]!_§.addScore(param1,param2);
         this.§6!F§.addScore(param1);
         if(param3 && param1 > 0 && !this.§6G§)
         {
            this.§0"§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §0"§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §2z§.§6!Z§;
         }
         this.§ case§.addParticle(§2z§.§7X§,§"@§.§-!`§,§2z§.§,L§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §6S§(param1:§;N§) : void
      {
         if(this.§]!I§ == null)
         {
            this.§]!I§ = new Array();
         }
         this.§]!I§.push(param1);
      }
      
      public function §9!d§() : void
      {
         this.§3=§.§9!d§();
         this.§-![§.§]r§();
         this.§6G§ = true;
      }
      
      public function § !B§(param1:§;N§) : void
      {
         this.§ case§.§@!4§(§"@§.§0!8§);
         if(this.§]!I§.indexOf(param1) >= 0)
         {
            this.§]!I§.splice(this.§]!I§.indexOf(param1),1);
         }
         if(this.§]!I§.length == 0)
         {
            this.§]!I§ = null;
         }
      }
      
      public function §!Y§(param1:§=!,§, param2:Number, param3:Number) : void
      {
         this.§1!S§ = this.§-![§.§3!1§(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
         var _loc4_:Number = param1.name.toUpperCase() == "BIRD_GREEN" ? Number(§3§.§3@§) : Number(§3§.BIRD_LAUNCH_FORCE);
         if(param1.§`!W§ > 1)
         {
            this.§1!S§.§1!Z§(param1.§`!W§);
            this.§1!S§.§%f§.§3!M§();
         }
         if(param1.§^!O§ != 0)
         {
            _loc4_ = param1.§^!O§;
         }
         var _loc5_:Number = -_loc4_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc6_:Number = _loc4_ * param2 * Math.sin(param3 / (180 / Math.PI));
         this.§1!S§.§+!@§(new b2Vec2(_loc5_,_loc6_),false,true);
         this.camera.§2!R§(§-f§.§"!5§);
         if(this.§7!9§)
         {
            this.§7!9§.§!Y§(this.mLevelEngine.currentStep,param1.x,param1.y,param2,param3);
         }
      }
      
      public function activatePowerup() : void
      {
         this.§2f§ = true;
      }
      
      private function §,9§() : void
      {
         if(!this.§2f§)
         {
            return;
         }
         this.§2f§ = false;
         if(this.activeObject is §7!6§ && !(this.activeObject as §7!6§).§]!V§)
         {
            if(this.activeObject.activateSpecialPower(this.§6A§))
            {
               this.§ !,§ = true;
            }
         }
         else
         {
            this.§-![§.§+Y§();
         }
         if(this.§7!9§)
         {
            this.§7!9§.§?a§(this.mLevelEngine.currentStep);
         }
      }
      
      public function §5o§() : void
      {
         this.§-![§.§5o§();
      }
      
      public function §>![§() : void
      {
         this.§-![§.§3!&§();
      }
      
      public function §1J§() : §1_§
      {
         var _loc1_:§1_§ = new §1_§();
         _loc1_.§?!4§ = this.§+!e§.§?!4§;
         _loc1_.§]!@§ = this.§+!e§.§]!@§;
         this.§@=§.§4!?§(_loc1_);
         this.§-![§.§@!b§(_loc1_);
         this.§3=§.§73§(_loc1_);
         _loc1_.theme = this.§]R§.§'V§();
         return _loc1_;
      }
      
      public function §7s§() : int
      {
         return this.§+!e§.§]!@§;
      }
      
      public function §#!]§() : int
      {
         return this.§+!e§.§?!4§;
      }
      
      public function §?X§(param1:int) : void
      {
         this.§+!e§.§]!@§ = param1;
      }
      
      public function §&!a§(param1:int) : void
      {
         this.§+!e§.§?!4§ = param1;
      }
      
      public function §#l§(param1:Number, param2:Number) : void
      {
         if(this.§@!8§)
         {
            this.§@!8§.§^!b§(param1,param2);
         }
         if(this.§@=§)
         {
            this.§@=§.§@!!§(0);
         }
      }
      
      public function get §7+§() : §1_§
      {
         return this.§+!e§;
      }
      
      public function get §6A§() : §?!T§
      {
         return this.§-![§;
      }
      
      protected function get §60§() : §&!B§
      {
         return this.§6%§;
      }
      
      public function get §'!I§() : int
      {
         return §@Z§;
      }
   }
}
