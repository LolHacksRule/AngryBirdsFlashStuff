package §2z§
{
   import § !3§.§!X§;
   import § in§.§^$§;
   import §!v§.§7[§;
   import §#!T§.§&2§;
   import §+!#§.§ q§;
   import §+!#§.§"!6§;
   import §+!#§.§9!5§;
   import §+!#§.§@!!§;
   import §,p§.§=u§;
   import §0!&§.§!'§;
   import §0!&§.§3!O§;
   import §0!&§.§>!1§;
   import §0!&§.§@=§;
   import §0!=§.b2Vec2;
   import §1!+§.§1![§;
   import §1!+§.§`!N§;
   import §7b§.§8!]§;
   import §9!4§.§&l§;
   import §9!?§.§@!3§;
   import §=!E§.DisplayObject;
   import §=!E§.Sprite;
   import §?!R§.§?k§;
   import §]!C§.§!y§;
   import §]!C§.§0!d§;
   import §]!C§.§2<§;
   import §^t§.§<;§;
   import §^t§.§[I§;
   import §`!L§.§]!L§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §2!U§
   {
      
      private static const §9!3§:int = 20;
      
      public static const §2!M§:Number = §&2§.§8!G§;
      
      public static const §1^§:Number = §&2§.§>!?§;
      
      public static const §&%§:Number = 1 / 20;
      
      public static const §?T§:Number = §&2§.§>!?§ * §&%§;
      
      public static const §9!M§:Number = §2!M§ * §&%§;
      
      public static const §2m§:§@!3§ = new §@!3§(13 - 3);
      
      public static var § §:Number = 1;
      
      protected static var §[!T§:String = §!'§.§5[§;
       
      
      protected var §,f§:§"!6§;
      
      private var §8V§:§9!5§;
      
      private var §1>§:Array = null;
      
      protected var §38§:§=u§;
      
      public var mLevelEngine:§@!Z§;
      
      protected var §-!O§:§6w§;
      
      protected var §>y§:§&l§;
      
      protected var §?!"§:§@!N§;
      
      protected var §'!^§:§<;§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §]N§:Boolean = false;
      
      protected var §^z§:Boolean = false;
      
      protected var §6!_§:Boolean = false;
      
      public var §<z§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §<q§:Number;
      
      public var §?!!§:Number;
      
      private var §3b§:Number;
      
      public var §,!"§:§>!1§;
      
      public var §;!^§:Boolean = false;
      
      private var §?&§:§1W§;
      
      private var §'!<§:Sprite;
      
      protected var §[n§:§!'§;
      
      protected var §=!?§:§8!]§ = null;
      
      private var §'!,§:EventDispatcher;
      
      private var §^!-§:Array;
      
      private var §=%§:Array;
      
      protected var §6r§:§7[§;
      
      private var §4!Z§:§]!L§;
      
      protected var §>8§:§0!d§;
      
      protected var §[!1§:§!y§;
      
      private var §0L§:§2<§;
      
      private var §@d§:§2<§;
      
      private var §&!_§:§2<§;
      
      private var §8_§:Stage;
      
      private var §;!A§:§<B§;
      
      protected var §9!,§:§^$§;
      
      protected var §6![§:§^$§;
      
      protected var §use §:Number = 0.0;
      
      protected var §2!A§:String;
      
      private var §-?§:Boolean;
      
      protected var §true §:Boolean;
      
      protected var §1!5§:uint = 1.417339207E9;
      
      public var §3B§:Boolean;
      
      public function §2!U§(param1:Stage)
      {
         this.§=%§ = [];
         super();
         this.§'!,§ = new EventDispatcher();
         this.§,!"§ = new §>!1§();
         this.§8_§ = param1;
         this.§>8§ = §0!d§.§=,§;
         this.§[!1§ = this.initAnimationManager(this.§>8§);
         this.§0L§ = this.initThemeGraphicsManager();
         this.§@d§ = this.§6!+§();
         this.§&!_§ = this.§0w§();
         var _loc2_:Stage3D = param1.stage3Ds[0];
         this.§6r§ = new §7[§(§1W§,param1,new Rectangle(0,0,§&2§.§8!G§,§&2§.§>!?§),_loc2_);
         §&2§.§1A§.addEventListener(Event.ENTER_FRAME,this.§6r§.§!<§);
         _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§+!%§,false,0,true);
         this.§6r§.simulateMultitouch = false;
         this.§6r§.enableErrorChecking = false;
         this.§6r§.§=O§ = 2;
         this.§6r§.§[!M§();
      }
      
      public static function §5S§(param1:§9!5§, param2:§9!5§) : Number
      {
         var _loc3_:Number = param1.§-!@§ - param2.§-!@§;
         var _loc4_:Number = param1.§'M§ - param2.§'M§;
         return §!!#§(_loc3_,_loc4_);
      }
      
      public static function §!!#§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         if(!this.§'!<§ && this.§&s§)
         {
            this.§'!<§ = this.§?&§.§+!`§;
         }
         return this.§'!<§;
      }
      
      public function get §&s§() : Sprite
      {
         if(!this.§?&§)
         {
            this.§?&§ = this.§6r§.§5!+§ as §1W§;
            this.§?&§.§@N§ = false;
         }
         return this.§?&§;
      }
      
      private function get §6!R§() : DisplayObject
      {
         if(this.§&s§)
         {
            return (this.§&s§ as §1W§).§6!R§;
         }
         return null;
      }
      
      public function get §=_§() : §!y§
      {
         return this.§[!1§;
      }
      
      public function get textureManager() : §0!d§
      {
         return this.§>8§;
      }
      
      public function get camera() : §&l§
      {
         return this.§>y§;
      }
      
      public function get objects() : §"!6§
      {
         return this.§,f§;
      }
      
      public function get particles() : §<;§
      {
         return this.§'!^§;
      }
      
      public function get background() : §=u§
      {
         return this.§38§;
      }
      
      public function get slingshot() : §@!N§
      {
         return this.§?!"§;
      }
      
      public function get activeObject() : §9!5§
      {
         return this.§8V§;
      }
      
      public function get §@!a§() : §6w§
      {
         return this.§-!O§;
      }
      
      public function get stage() : Stage
      {
         return this.§8_§;
      }
      
      public function get §=f§() : §2<§
      {
         return this.§&!_§;
      }
      
      protected function get §7!V§() : §2<§
      {
         return this.§0L§;
      }
      
      public function set activeObject(param1:§9!5§) : void
      {
         this.§8V§ = param1;
      }
      
      public function set §?!<§(param1:Boolean) : void
      {
         this.§true § = param1;
      }
      
      public function clear() : void
      {
         if(this.§4!Z§)
         {
            this.§4!Z§.dispose();
         }
         if(this.§>8§)
         {
            this.§>8§.dispose();
         }
         if(this.§0L§ && this.§0L§.textureManager)
         {
            this.§0L§.textureManager.dispose();
         }
         if(this.§&!_§ && this.§&!_§.textureManager)
         {
            this.§&!_§.textureManager.dispose();
         }
         if(this.§6r§)
         {
            this.§6r§.dispose();
         }
      }
      
      protected function initThemeGraphicsManager() : §2<§
      {
         return null;
      }
      
      protected function §6!+§() : §2<§
      {
         return null;
      }
      
      protected function §0w§() : §2<§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§0!d§) : §!y§
      {
         return new §!y§(param1);
      }
      
      public function §5h§(param1:Boolean) : void
      {
         if(§7[§.§&!J§)
         {
            if(param1)
            {
               §7[§.§&!J§.start();
            }
            else
            {
               §7[§.§&!J§.stop();
               §7[§.§&!J§.color = 0;
            }
         }
      }
      
      public function §-H§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function §9![§(param1:§8!]§) : void
      {
         if(this.§=!?§ != null)
         {
            this.§=!?§.removeEventListeners();
         }
         this.§=!?§ = param1;
         if(this.mReadyToRun)
         {
            this.§=!?§.addEventListeners();
         }
      }
      
      public function §^X§() : §^$§
      {
         return this.§9!,§;
      }
      
      public function §[!4§(param1:§]!L§, param2:Array, param3:Function) : void
      {
         this.§4!Z§ = param1;
         var _loc4_:int = this.§4!Z§.§4%§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§>8§.§#!Q§(this.§4!Z§.§ !P§(_loc5_));
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§'!,§.addEventListener(Event.INIT,param3);
            this.§=%§.push(param3);
         }
         if(this.§[!<§(param2))
         {
            this.§%c§();
         }
      }
      
      private function §[!<§(param1:Array) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.§>8§.§-!M§())
         {
            _loc2_ = this.§>8§.§,]§ / 1000;
            _loc3_ = this.§>8§.§]!J§ / 1000;
            §!X§.log("\n\nMain texture manager memory usage:\n   textures " + _loc2_ + " kilobytes\n   bitmaps " + _loc3_ + " kilobytes\n\n");
            this.initializeAnimations(param1);
            return true;
         }
         this.§^!-§ = param1.concat();
         return false;
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         this.§[!1§.initializeAnimations(param1);
      }
      
      private function §+!%§(param1:Event) : void
      {
         this.§>8§.§;!;§();
         if(this.§7!V§ && this.§7!V§.textureManager)
         {
            this.§7!V§.textureManager.§;!;§();
         }
         if(this.§=f§ && this.§=f§.textureManager)
         {
            this.§=f§.textureManager.§;!;§();
         }
         if(this.§^!-§)
         {
            this.§[!<§(this.§^!-§);
            this.§^!-§ = null;
            this.§%c§();
         }
         if(this.§=!?§ != null && this.mReadyToRun)
         {
            this.§=!?§.addEventListeners();
         }
         if(this.§0L§)
         {
            this.§0L§.§-!M§();
         }
         if(this.§&!_§)
         {
            if(this.§&!_§.textureManager)
            {
               this.§&!_§.textureManager.§;!;§();
               this.§&!_§.§-!M§();
            }
         }
      }
      
      private function §%c§() : void
      {
         this.§'!,§.dispatchEvent(new Event(Event.INIT));
         this.§0!'§();
      }
      
      private function §0!'§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§=%§)
         {
            this.§'!,§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§=%§ = [];
      }
      
      public function init(param1:§!'§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§-!O§ = new §6w§(this,param1);
         this.§>y§ = this.§3F§(param1);
         this.§<q§ = 0;
         this.§?!!§ = 0;
         this.§3b§ = 0;
         this.§-?§ = false;
         this.mReadyToRun = false;
         this.§]N§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         §[!T§ = param1.theme;
         this.§[n§ = param1;
         this.§^z§ = this.§^_§(param1.theme);
         this.§6!_§ = this.§6!!§(param1.theme);
         if(this.§^z§ && this.§6!_§)
         {
            this.initialize(param1);
         }
         else
         {
            this.§+! §(param1.theme);
         }
         this.initReplay();
         §^!8§.init();
      }
      
      protected function initReplay() : void
      {
         this.§9!,§ = new §^$§(§@=§.§!!S§);
      }
      
      protected function §^_§(param1:String) : Boolean
      {
         if(this.§0L§)
         {
            return false;
         }
         return true;
      }
      
      protected function §6!!§(param1:String) : Boolean
      {
         var _loc2_:§`!N§ = null;
         if(this.§@d§)
         {
            _loc2_ = §1![§.§4r§(param1);
            if(_loc2_)
            {
               if(_loc2_.§!o§ && !this.§@d§.§-F§(_loc2_.§!o§))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function §+! §(param1:String) : void
      {
         var _loc2_:§`!N§ = null;
         if(this.§0L§ && !this.§^_§(param1))
         {
            this.§0L§.removeEventListener(Event.COMPLETE,this.§<!%§);
            this.§0L§.removeEventListener(Event.CANCEL,this.§>>§);
            this.§0L§.addEventListener(Event.COMPLETE,this.§<!%§);
            this.§0L§.addEventListener(Event.CANCEL,this.§>>§);
            this.§0L§.§ r§(param1);
         }
         if(this.§@d§ && !this.§6!!§(param1))
         {
            this.§@d§.removeEventListener(Event.COMPLETE,this.§&G§);
            this.§@d§.removeEventListener(Event.CANCEL,this.§0r§);
            this.§@d§.addEventListener(Event.COMPLETE,this.§&G§);
            this.§@d§.addEventListener(Event.CANCEL,this.§0r§);
            _loc2_ = §1![§.§4r§(param1);
            if(_loc2_)
            {
               this.§@d§.§ r§(_loc2_.§!o§);
            }
         }
      }
      
      private function §<!%§(param1:Event) : void
      {
         this.§0L§.removeEventListener(Event.COMPLETE,this.§<!%§);
         this.§0L§.removeEventListener(Event.CANCEL,this.§>>§);
         this.§^z§ = true;
         if(this.§^z§ && this.§6!_§)
         {
            this.initialize(this.§[n§);
         }
      }
      
      private function §>>§(param1:Event) : void
      {
         this.§0L§.removeEventListener(Event.COMPLETE,this.§<!%§);
         this.§0L§.removeEventListener(Event.CANCEL,this.§>>§);
         this.§]N§ = true;
      }
      
      private function §&G§(param1:Event) : void
      {
         this.§0L§.removeEventListener(Event.COMPLETE,this.§&G§);
         this.§0L§.removeEventListener(Event.CANCEL,this.§0r§);
         this.§6!_§ = true;
         if(this.§^z§ && this.§6!_§)
         {
            this.initialize(this.§[n§);
         }
      }
      
      private function §0r§(param1:Event) : void
      {
         this.§0L§.removeEventListener(Event.COMPLETE,this.§&G§);
         this.§0L§.removeEventListener(Event.CANCEL,this.§0r§);
         this.§6!_§ = true;
         if(this.§^z§ && this.§6!_§)
         {
            this.initialize(this.§[n§);
         }
      }
      
      public function get backgroundTextureManager() : §0!d§
      {
         return this.§>8§;
      }
      
      protected function initialize(param1:§!'§) : void
      {
         this.§true § = false;
         this.§3B§ = false;
         if(§7[§.§=!$§)
         {
            §7[§.§=!$§.speed = 1;
         }
         this.mLevelEngine = new §@!Z§(this);
         this.§38§ = this.§7!Y§(param1.theme,this.§-!O§.§<k§ / §&%§,this.backgroundTextureManager,this.§>y§.§'h§());
         this.§38§.§[!N§(§&2§.§9O§());
         this.§,f§ = this.initLevelObjectManager(param1);
         this.§?!"§ = this.initLevelSlingshot(param1);
         this.§'!^§ = this.initParticleManager(this.§[!1§,this.§>8§);
         this.§>y§.init();
         this.§!!%§();
         this.loadPreviousReplayData();
         this.mReadyToRun = true;
         if(this.§=!?§)
         {
            this.§=!?§.addEventListeners();
         }
      }
      
      protected function loadPreviousReplayData() : void
      {
         if(this.§2!A§)
         {
            this.§6![§ = §^$§.initialize(this.§2!A§);
            this.§6![§.speed = 1;
            this.§6![§.play();
            this.§use § = -1000;
            this.§2!A§ = null;
         }
      }
      
      public function §6!^§(param1:String) : void
      {
         this.§2!A§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§6![§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§6![§)
         {
            if(param1)
            {
               this.§6![§.speed = Math.min(this.§6![§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§6![§.speed = Math.max(this.§6![§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§6![§)
         {
            this.§6![§.speed = 1;
         }
      }
      
      protected function initLevelObjectManager(param1:§!'§) : §"!6§
      {
         return new §"!6§(this,param1,new Sprite());
      }
      
      protected function §3F§(param1:§!'§) : §&l§
      {
         return new §&l§(this,param1);
      }
      
      protected function §7!Y§(param1:String, param2:Number, param3:§0!d§, param4:Number) : §=u§
      {
         return new §=u§(param1,param2,param3,param4);
      }
      
      protected function initLevelSlingshot(param1:§!'§) : §@!N§
      {
         return new §@!N§(this,param1,new Sprite());
      }
      
      protected function initParticleManager(param1:§!y§, param2:§0!d§) : §<;§
      {
         return new §<;§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§!'§ = this.preProcessLevel();
         var _loc4_:§3!O§;
         (_loc4_ = new §3!O§()).left = 0;
         _loc4_.top = -§&l§.§'I§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §&l§.§'I§;
         _loc4_.right = _loc4_.left + §&l§.§6O§;
         _loc4_.y = -13.929;
         _loc4_.x = §&l§.§6O§;
         _loc4_.id = §&l§.§9@§;
         _loc3_.§=g§(_loc4_);
         var _loc5_:§3!O§;
         (_loc5_ = new §3!O§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §&l§.§6O§;
         _loc5_.bottom = _loc5_.top + §&l§.§'I§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §&l§.§6O§ / 2;
         _loc5_.id = §&l§.§,l§;
         _loc3_.§=g§(_loc5_);
         this.§%5§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§[!T§ != null)
         {
            _loc3_.theme = §[!T§;
         }
         this.init(_loc3_);
      }
      
      protected function §%5§(param1:§!'§, param2:Boolean) : void
      {
         if(param2)
         {
            this.§'<§(param1);
         }
      }
      
      protected function preProcessLevel() : §!'§
      {
         var _loc1_:§!'§ = new §!'§();
         _loc1_.§41§ = -12;
         return new §!'§();
      }
      
      protected function §=z§() : Number
      {
         this.§1!5§ ^= this.§1!5§ << 21;
         this.§1!5§ ^= this.§1!5§ >>> 35;
         this.§1!5§ ^= this.§1!5§ << 4;
         return this.§1!5§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §'<§(param1:§!'§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§?k§ = null;
         this.§1!5§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§=z§() * 5;
               (_loc5_ = new §?k§()).x = 30 + _loc3_ * 10 + this.§=z§() * 9;
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
                  _loc5_.angle = 45 - this.§=z§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§=z§() * 3 - _loc3_ * 8;
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
                  _loc5_.angle = this.§=z§() * 360;
               }
               param1.§?W§(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      private function §?L§() : void
      {
      }
      
      public function §!!%§() : void
      {
         if(§=u§.§?n§)
         {
            this.§"_§(this.§38§.§,!I§,false);
         }
         this.§"_§(this.§'!^§.§]P§(§<;§.§[!7§),false);
         this.§"_§(this.§'!^§.§]P§(§<;§.§&v§),true);
         this.§"_§(this.§'!^§.§]P§(§<;§.§'!4§),true);
         this.§"_§(this.§,f§.§&!'§,true);
         this.§"_§(this.§?!"§.sprite,true);
         this.§"_§(this.§'!^§.§]P§(§<;§.§&!=§),true);
         this.§"_§(this.§38§.§%!J§,false);
         if(§=u§.§?n§)
         {
            this.§"_§(this.§38§.§8?§,false);
         }
         this.§"_§(this.§'!^§.§]P§(§<;§.§]]§),true);
      }
      
      private function §"_§(param1:Sprite, param2:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(param1);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         param1 /= §&2§.§]!`§;
         param2 /= §&2§.§]!`§;
         _loc3_.x = (param1 / §&l§.§3H§ + this.§>y§.§,u§ - §&l§.§in § / §&l§.§3H§) * §&%§;
         _loc3_.y = (param2 / §&l§.§3H§ + this.§>y§.§1!B§ - §&l§.§+!L§ / §&l§.§3H§) * §&%§;
         return _loc3_;
      }
      
      public function §`!§(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / §&%§ + §&l§.§in § / §&l§.§3H§ - this.§>y§.§,u§) * §&l§.§3H§;
         _loc3_.y = (param2 / §&%§ + §&l§.§+!L§ / §&l§.§3H§ - this.§>y§.§1!B§) * §&l§.§3H§;
         var _loc4_:Number = Math.max(§&2§.§]!`§,§&2§.§ `§);
         _loc3_.x *= _loc4_;
         _loc3_.y *= _loc4_;
         return _loc3_;
      }
      
      public function §?!9§(param1:String, param2:Number, param3:Number) : void
      {
         this.§,f§.§?W§(param1,param2,param3);
      }
      
      public function §+!B§() : void
      {
         if(this.§6!R§)
         {
            this.§6!R§.visible = true;
            this.§6!R§.alpha = 0;
         }
         this.§<z§ = 0;
      }
      
      public function §!!I§() : void
      {
         this.§;!A§ = new §<B§(§9!a§.§7L§,§9!a§.§`d§);
      }
      
      public function §@!'§() : void
      {
         this.§;!A§ = null;
      }
      
      public function clearLevel() : void
      {
         if(this.§38§)
         {
            this.§38§.dispose();
            this.§38§ = null;
         }
         if(this.§,f§)
         {
            this.§,f§.dispose();
            this.§,f§ = null;
            this.§8V§ = null;
         }
         if(this.mLevelEngine)
         {
            if(!this.mLevelEngine.§?f§)
            {
            }
            this.mLevelEngine.clear();
            this.mLevelEngine = null;
         }
         if(this.§-!O§)
         {
            this.§-!O§.clear();
            this.§-!O§ = null;
         }
         if(this.§?!"§)
         {
            this.§?!"§.dispose();
            this.§?!"§ = null;
         }
         if(this.§>y§)
         {
            this.§>y§.clear();
            this.§>y§ = null;
         }
         if(this.§'!^§)
         {
            this.§'!^§.dispose();
            this.§'!^§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§<q§ = 0;
         this.§?!!§ = 0;
         this.mReadyToRun = false;
         this.§-?§ = false;
         this.§<z§ = §9!a§.§<!9§;
         if(this.§&s§)
         {
            (this.§&s§ as §1W§).§9I§.x = 0;
            (this.§&s§ as §1W§).§9I§.y = 0;
         }
         if(this.§6!R§)
         {
            this.§6!R§.visible = false;
         }
         this.§6![§ = null;
         this.§9!,§ = null;
         if(this.§0L§)
         {
            this.§0L§.removeEventListener(Event.COMPLETE,this.§<!%§);
            this.§0L§.removeEventListener(Event.CANCEL,this.§>>§);
         }
         if(this.§@d§)
         {
            this.§@d§.removeEventListener(Event.COMPLETE,this.§&G§);
            this.§@d§.removeEventListener(Event.CANCEL,this.§0r§);
         }
         this.§0!'§();
         if(§7[§.§&!J§)
         {
            §7[§.§&!J§.color = 0;
         }
         if(this.§=!?§)
         {
            this.§=!?§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver() : void
      {
      }
      
      public function §&!d§() : String
      {
         if(this.§9!,§)
         {
            return this.§9!,§.toString();
         }
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         if(!this.mReadyToRun || !§7[§.§"!§())
         {
            return 0;
         }
         if(this.§6![§ && this.§6![§.§6!W§)
         {
            return this.§=Z§(param1,param2,param3);
         }
         return this.§'Y§(param1,true,param2,param3);
      }
      
      protected function §'Y§(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         if(this.§true §)
         {
            param1 *= 0.2;
            if(§7[§.§=!$§)
            {
               §7[§.§=!$§.speed = 0.2;
            }
         }
         var _loc5_:Number = 0;
         this.§?!!§ += param1;
         if(param3)
         {
            this.§<q§ += param1;
            _loc5_ = this.mLevelEngine.§%!f§(this.§<q§);
            this.§?!"§.update(param1,param4);
            this.§<q§ = _loc5_;
         }
         else
         {
            this.§,f§.§`6§(param1);
            this.§<q§ = 0;
         }
         if(param2)
         {
            this.§1!T§(param1,_loc5_);
         }
         return param1;
      }
      
      private function §=Z§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc5_:Number = NaN;
         var _loc4_:Number = §@!Z§.§!!V§ * 1000;
         if(this.§6![§)
         {
            param1 *= this.§6![§.speed;
            _loc5_ = this.§?!!§ + param1;
            while(this.§?!!§ + _loc4_ < _loc5_)
            {
               if(this.§?!!§ + _loc4_ > this.§use §)
               {
                  this.§6![§.step(this);
                  this.§use § += _loc4_;
               }
               this.§'Y§(_loc4_,false,param2,param3);
            }
            if(_loc5_ > this.§use § + _loc4_)
            {
               this.§6![§.step(this);
               this.§use § += _loc4_;
            }
            if(this.§?!!§ < _loc5_)
            {
               this.§'Y§(_loc5_ - this.§?!!§,true,param2,param3);
            }
            return param1;
         }
         return this.§'Y§(_loc4_,true,param2,param3);
      }
      
      private function §1!T§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.§38§.update(param1);
         this.§,f§.§;G§(param1,param2);
         this.§ 9§();
         if(this.§<z§ < §9!a§.§<!9§)
         {
            this.§<z§ += param1;
            _loc3_ = §9!a§.§<!9§ / 2;
            _loc4_ = (-Math.abs(this.§<z§ - _loc3_) + _loc3_) * (§9!a§.§3U§ / _loc3_);
            if(this.§6!R§)
            {
               this.§6!R§.alpha = _loc4_;
            }
         }
         else if(this.§6!R§)
         {
            this.§6!R§.visible = false;
         }
         if(this.§;!A§)
         {
            if(!this.§;!A§.§<!Q§(this.§>y§,param1))
            {
               this.§@!'§();
            }
         }
         this.§>y§.§8i§(param1);
         this.mLevelEngine.§^!&§();
         this.§'!^§.update(param1);
      }
      
      public function §?!X§(param1:Number) : void
      {
         this.objects.§`6§(param1 * 1000);
         this.objects.§71§(param1 * 1000);
         this.§1@§();
      }
      
      public function § 9§() : void
      {
         var _loc1_:§9!5§ = null;
         if(this.§?!!§ > this.§3b§ + 1000 / 30)
         {
            if(this.§1>§ != null)
            {
               for each(_loc1_ in this.§1>§)
               {
                  _loc1_.addTrail();
               }
            }
            this.§3b§ = this.§?!!§;
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§9!5§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.§,f§.isPigsAlive(true))
            {
               _loc2_ = this.§,f§.§?3§(true);
               _loc2_.§8!E§.mTryToScream = §@!!§.§#1§;
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§,f§.§9W§());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            if(this.§,f§.isPigsAlive(true))
            {
               _loc2_ = this.§,f§.§?3§(true);
               _loc2_.§8!E§.mTryToBlink = §@!!§.§-h§;
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§,f§.§9W§());
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §[I§.§6+§;
         }
         §^!8§.addScore(param1,param2);
         this.§=!?§.addScore(param1);
         if(param3 && param1 > 0 && !this.§3B§)
         {
            this.§'P§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §'P§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §[I§.§>u§;
         }
         this.§'!^§.addParticle(§[I§.§>X§,§<;§.§]]§,§[I§.§<S§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §!!"§(param1:§9!5§) : void
      {
         if(this.§1>§ == null)
         {
            this.§1>§ = new Array();
         }
         this.§1>§.push(param1);
      }
      
      public function §;7§() : void
      {
         this.§?!"§.§;7§();
         this.§,f§.§ !"§();
         this.§3B§ = true;
      }
      
      public function §@n§(param1:§9!5§) : void
      {
         this.§'!^§.§ !!§(§<;§.§[!7§);
         if(this.§1>§.indexOf(param1) >= 0)
         {
            this.§1>§.splice(this.§1>§.indexOf(param1),1);
         }
         if(this.§1>§.length == 0)
         {
            this.§1>§ = null;
         }
      }
      
      public function §5V§(param1:§]'§, param2:Number, param3:Number) : void
      {
         this.§8V§ = this.§,f§.§?W§(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
         var _loc4_:Number = param1.name.toUpperCase() == "BIRD_GREEN" ? Number(§@!N§.§=!R§) : Number(§@!N§.BIRD_LAUNCH_FORCE);
         if(param1.§1s§ > 1)
         {
            this.§8V§.§1!^§(param1.§1s§);
            this.§8V§.§8!E§.§3!c§();
         }
         if(param1.§2!8§ != 0)
         {
            _loc4_ = param1.§2!8§;
         }
         var _loc5_:Number = -_loc4_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc6_:Number = _loc4_ * param2 * Math.sin(param3 / (180 / Math.PI));
         this.§8V§.§2!-§(new b2Vec2(_loc5_,_loc6_),false,true);
         this.camera.§;a§(§&l§.§ !B§);
         if(this.§9!,§)
         {
            this.§9!,§.§5V§(this.mLevelEngine.currentStep,param1.x,param1.y,param2,param3);
         }
      }
      
      public function activatePowerup() : void
      {
         this.§-?§ = true;
      }
      
      private function §1@§() : void
      {
         if(!this.§-?§)
         {
            return;
         }
         this.§-?§ = false;
         if(this.activeObject is § q§ && !(this.activeObject as § q§).§#!S§)
         {
            if(this.activeObject.activateSpecialPower(this.§&[§))
            {
               this.§;!^§ = true;
            }
         }
         else
         {
            this.§,f§.§ !4§();
         }
         if(this.§9!,§)
         {
            this.§9!,§.§#!F§(this.mLevelEngine.currentStep);
         }
      }
      
      public function §8-§() : void
      {
         this.§,f§.§8-§();
      }
      
      public function §-[§() : void
      {
         this.§,f§.§5a§();
      }
      
      public function §2Z§() : §!'§
      {
         var _loc1_:§!'§ = new §!'§();
         _loc1_.§4!W§ = this.§[n§.§4!W§;
         _loc1_.§>!V§ = this.§[n§.§>!V§;
         this.§>y§.§+o§(_loc1_);
         this.§,f§.§@G§(_loc1_);
         this.§?!"§.§5w§(_loc1_);
         _loc1_.theme = this.§38§.§9l§();
         return _loc1_;
      }
      
      public function §8X§() : int
      {
         return this.§[n§.§>!V§;
      }
      
      public function §=B§() : int
      {
         return this.§[n§.§4!W§;
      }
      
      public function set(param1:int) : void
      {
         this.§[n§.§>!V§ = param1;
      }
      
      public function §>%§(param1:int) : void
      {
         this.§[n§.§4!W§ = param1;
      }
      
      public function §'$§(param1:Number, param2:Number) : void
      {
         if(this.§?&§)
         {
            this.§?&§.§2!3§(param1,param2);
         }
         if(this.§>y§)
         {
            this.§>y§.§8i§(0);
         }
      }
      
      public function get §4c§() : §!'§
      {
         return this.§[n§;
      }
      
      public function get §&[§() : §"!6§
      {
         return this.§,f§;
      }
      
      protected function get §5K§() : §7[§
      {
         return this.§6r§;
      }
      
      public function get §[R§() : int
      {
         return §9!3§;
      }
   }
}
