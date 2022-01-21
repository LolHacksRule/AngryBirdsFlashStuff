package §3!@§
{
   import § !%§.§!!&§;
   import § !%§.§7!>§;
   import § !%§.§`!F§;
   import § !Y§.§2#§;
   import § %§.§`M§;
   import § 6§.§^;§;
   import § 6§.§`!P§;
   import §!U§.§2d§;
   import §"$§.§ !,§;
   import §&c§.DisplayObject;
   import §&c§.Sprite;
   import §0,§.b2Vec2;
   import §4!%§.§`!I§;
   import §5K§.§[C§;
   import §?!§.§%o§;
   import §?!§.§0!@§;
   import §?!§.§>!4§;
   import §?!§.§]!%§;
   import §?!P§.§4!-§;
   import §?!P§.§65§;
   import §?I§.§'e§;
   import §[!L§.§^j§;
   import §]o§.§8I§;
   import §^U§.§3$§;
   import §finally§.§"0§;
   import §finally§.§8k§;
   import §finally§.§@z§;
   import §finally§.§`!h§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class § s§
   {
      
      private static const §2f§:int = 20;
      
      public static const §3!i§:Number = §2#§.§#@§;
      
      public static const §,!3§:Number = §2#§.§#k§;
      
      public static const §<!h§:Number = 1 / 20;
      
      public static const §0r§:Number = §2#§.§#k§ * §<!h§;
      
      public static const §"#§:Number = §3!i§ * §<!h§;
      
      public static const §9!b§:§'e§ = new §'e§(13 - 3);
      
      public static var §0;§:Number = 1;
      
      protected static var §3#§:String = §@z§.§4d§;
       
      
      protected var §8§:§>!4§;
      
      private var §]"§:§%o§;
      
      private var §3!D§:Array = null;
      
      protected var §!!M§:§8I§;
      
      public var mLevelEngine:§'=§;
      
      protected var §3^§:§?4§;
      
      protected var §-m§:§3$§;
      
      protected var §]]§:§49§;
      
      protected var §<!9§:§4!-§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §,r§:Boolean = false;
      
      protected var §?-§:Boolean = false;
      
      protected var §?Y§:Boolean = false;
      
      public var §4H§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §2x§:Number;
      
      public var §6§:Number;
      
      private var §;5§:Number;
      
      public var §-!+§:§"0§;
      
      public var §^E§:Boolean = false;
      
      private var §5J§:§6!4§;
      
      private var §6i§:Sprite;
      
      protected var §<!$§:§@z§;
      
      protected var §,!c§:§^j§ = null;
      
      private var §^&§:EventDispatcher;
      
      private var §0s§:Array;
      
      private var §'#§:Array;
      
      protected var §'T§:§`M§;
      
      private var §>!k§:§2d§;
      
      protected var §9M§:§7!>§;
      
      protected var §2X§:§!!&§;
      
      private var §8!2§:§`!F§;
      
      private var §%i§:§`!F§;
      
      private var §7!&§:§`!F§;
      
      private var §=n§:Stage;
      
      private var §,w§:§"R§;
      
      protected var §=h§:§`!I§;
      
      protected var §,s§:§`!I§;
      
      protected var §<!3§:Number = 0.0;
      
      protected var §=! §:String;
      
      private var §9J§:Boolean;
      
      protected var §3t§:Boolean;
      
      protected var §^u§:uint = 1.417339207E9;
      
      public var §[<§:Boolean;
      
      public function § s§(param1:Stage)
      {
         this.§'#§ = [];
         super();
         this.§^&§ = new EventDispatcher();
         this.§-!+§ = new §"0§();
         this.§=n§ = param1;
         this.§9M§ = §7!>§.§@!7§;
         this.§2X§ = this.initAnimationManager(this.§9M§);
         this.§8!2§ = this.initThemeGraphicsManager();
         this.§%i§ = this.§8E§();
         this.§7!&§ = this.§??§();
         var _loc2_:Stage3D = param1.stage3Ds[0];
         this.§'T§ = new §`M§(§6!4§,param1,new Rectangle(0,0,§2#§.§#@§,§2#§.§#k§),_loc2_);
         §2#§.§>§.addEventListener(Event.ENTER_FRAME,this.§'T§.§0W§);
         _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§[b§,false,0,true);
         this.§'T§.simulateMultitouch = false;
         this.§'T§.enableErrorChecking = false;
         this.§'T§.§4?§ = 2;
         this.§'T§.§+f§();
      }
      
      public static function §]!m§(param1:§%o§, param2:§%o§) : Number
      {
         var _loc3_:Number = param1.§'!^§ - param2.§'!^§;
         var _loc4_:Number = param1.§!y§ - param2.§!y§;
         return §;!l§(_loc3_,_loc4_);
      }
      
      public static function §;!l§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         if(!this.§6i§ && this.§3y§)
         {
            this.§6i§ = this.§5J§.§1=§;
         }
         return this.§6i§;
      }
      
      public function get §3y§() : Sprite
      {
         if(!this.§5J§)
         {
            this.§5J§ = this.§'T§.§else§ as §6!4§;
            this.§5J§.§8m§ = false;
         }
         return this.§5J§;
      }
      
      private function get §5!I§() : DisplayObject
      {
         if(this.§3y§)
         {
            return (this.§3y§ as §6!4§).§5!I§;
         }
         return null;
      }
      
      public function get animationManager() : §!!&§
      {
         return this.§2X§;
      }
      
      public function get textureManager() : §7!>§
      {
         return this.§9M§;
      }
      
      public function get camera() : §3$§
      {
         return this.§-m§;
      }
      
      public function get objects() : §>!4§
      {
         return this.§8§;
      }
      
      public function get particles() : §4!-§
      {
         return this.§<!9§;
      }
      
      public function get background() : §8I§
      {
         return this.§!!M§;
      }
      
      public function get slingshot() : §49§
      {
         return this.§]]§;
      }
      
      public function get activeObject() : §%o§
      {
         return this.§]"§;
      }
      
      public function get §1c§() : §?4§
      {
         return this.§3^§;
      }
      
      public function get stage() : Stage
      {
         return this.§=n§;
      }
      
      public function get §"!f§() : §`!F§
      {
         return this.§7!&§;
      }
      
      protected function get §1!S§() : §`!F§
      {
         return this.§8!2§;
      }
      
      public function set activeObject(param1:§%o§) : void
      {
         this.§]"§ = param1;
      }
      
      public function set §get §(param1:Boolean) : void
      {
         this.§3t§ = param1;
      }
      
      public function clear() : void
      {
         if(this.§>!k§)
         {
            this.§>!k§.dispose();
         }
         if(this.§9M§)
         {
            this.§9M§.dispose();
         }
         if(this.§8!2§ && this.§8!2§.textureManager)
         {
            this.§8!2§.textureManager.dispose();
         }
         if(this.§7!&§ && this.§7!&§.textureManager)
         {
            this.§7!&§.textureManager.dispose();
         }
         if(this.§'T§)
         {
            this.§'T§.dispose();
         }
      }
      
      protected function initThemeGraphicsManager() : §`!F§
      {
         return null;
      }
      
      protected function §8E§() : §`!F§
      {
         return null;
      }
      
      protected function §??§() : §`!F§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§7!>§) : §!!&§
      {
         return new §!!&§(param1);
      }
      
      public function §0f§(param1:Boolean) : void
      {
         if(§`M§.§93§)
         {
            if(param1)
            {
               §`M§.§93§.start();
            }
            else
            {
               §`M§.§93§.stop();
               §`M§.§93§.color = 0;
            }
         }
      }
      
      public function §5$§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function setController(param1:§^j§) : void
      {
         if(this.§,!c§ != null)
         {
            this.§,!c§.removeEventListeners();
         }
         this.§,!c§ = param1;
         if(this.mReadyToRun)
         {
            this.§,!c§.addEventListeners();
         }
      }
      
      public function §8'§() : §`!I§
      {
         return this.§=h§;
      }
      
      public function §%!M§(param1:§2d§, param2:Array, param3:Function) : void
      {
         this.§>!k§ = param1;
         var _loc4_:int = this.§>!k§.§8!$§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§9M§.§8R§(this.§>!k§.§`Z§(_loc5_));
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§^&§.addEventListener(Event.INIT,param3);
            this.§'#§.push(param3);
         }
         if(this.§0!+§(param2))
         {
            this.§%h§();
         }
      }
      
      private function §0!+§(param1:Array) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.§9M§.§0%§())
         {
            _loc2_ = this.§9M§.§`!V§ / 1000;
            _loc3_ = this.§9M§.§,Z§ / 1000;
            §[C§.log("\n\nMain texture manager memory usage:\n   textures " + _loc2_ + " kilobytes\n   bitmaps " + _loc3_ + " kilobytes\n\n");
            this.initializeAnimations(param1);
            return true;
         }
         this.§0s§ = param1.concat();
         return false;
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         this.§2X§.initializeAnimations(param1);
      }
      
      private function §[b§(param1:Event) : void
      {
         this.§9M§.§5C§();
         if(this.§1!S§ && this.§1!S§.textureManager)
         {
            this.§1!S§.textureManager.§5C§();
         }
         if(this.§"!f§ && this.§"!f§.textureManager)
         {
            this.§"!f§.textureManager.§5C§();
         }
         if(this.§0s§)
         {
            this.§0!+§(this.§0s§);
            this.§0s§ = null;
            this.§%h§();
         }
         if(this.§,!c§ != null && this.mReadyToRun)
         {
            this.§,!c§.addEventListeners();
         }
         if(this.§8!2§)
         {
            this.§8!2§.§0%§();
         }
         if(this.§7!&§)
         {
            if(this.§7!&§.textureManager)
            {
               this.§7!&§.textureManager.§5C§();
               this.§7!&§.§0%§();
            }
         }
      }
      
      private function §%h§() : void
      {
         this.§^&§.dispatchEvent(new Event(Event.INIT));
         this.§6J§();
      }
      
      private function §6J§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§'#§)
         {
            this.§^&§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§'#§ = [];
      }
      
      public function init(param1:§@z§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§3^§ = new §?4§(this,param1);
         this.§-m§ = this.initLevelCamera(param1);
         this.§2x§ = 0;
         this.§6§ = 0;
         this.§;5§ = 0;
         this.§9J§ = false;
         this.mReadyToRun = false;
         this.§,r§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         §3#§ = param1.theme;
         this.§<!$§ = param1;
         this.§?-§ = this.§^x§(param1.theme);
         this.§?Y§ = this.§^!j§(param1.theme);
         if(this.§?-§ && this.§?Y§)
         {
            this.initialize(param1);
         }
         else
         {
            this.§"!g§(param1.theme);
         }
         this.initReplay();
         §<!X§.init();
      }
      
      protected function initReplay() : void
      {
         this.§=h§ = new §`!I§(§8k§.§8h§);
      }
      
      protected function §^x§(param1:String) : Boolean
      {
         if(this.§8!2§)
         {
            return false;
         }
         return true;
      }
      
      protected function §^!j§(param1:String) : Boolean
      {
         var _loc2_:§`!P§ = null;
         if(this.§%i§)
         {
            _loc2_ = §^;§.§%!F§(param1);
            if(_loc2_)
            {
               if(_loc2_.§0!3§ && !this.§%i§.§]N§(_loc2_.§0!3§))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function §"!g§(param1:String) : void
      {
         var _loc2_:§`!P§ = null;
         if(this.§8!2§ && !this.§^x§(param1))
         {
            this.§8!2§.removeEventListener(Event.COMPLETE,this.§4`§);
            this.§8!2§.removeEventListener(Event.CANCEL,this.§&n§);
            this.§8!2§.addEventListener(Event.COMPLETE,this.§4`§);
            this.§8!2§.addEventListener(Event.CANCEL,this.§&n§);
            this.§8!2§.§<t§(param1);
         }
         if(this.§%i§ && !this.§^!j§(param1))
         {
            this.§%i§.removeEventListener(Event.COMPLETE,this.§<A§);
            this.§%i§.removeEventListener(Event.CANCEL,this.§#c§);
            this.§%i§.addEventListener(Event.COMPLETE,this.§<A§);
            this.§%i§.addEventListener(Event.CANCEL,this.§#c§);
            _loc2_ = §^;§.§%!F§(param1);
            if(_loc2_)
            {
               this.§%i§.§<t§(_loc2_.§0!3§);
            }
         }
      }
      
      private function §4`§(param1:Event) : void
      {
         this.§8!2§.removeEventListener(Event.COMPLETE,this.§4`§);
         this.§8!2§.removeEventListener(Event.CANCEL,this.§&n§);
         this.§?-§ = true;
         if(this.§?-§ && this.§?Y§)
         {
            this.initialize(this.§<!$§);
         }
      }
      
      private function §&n§(param1:Event) : void
      {
         this.§8!2§.removeEventListener(Event.COMPLETE,this.§4`§);
         this.§8!2§.removeEventListener(Event.CANCEL,this.§&n§);
         this.§,r§ = true;
      }
      
      private function §<A§(param1:Event) : void
      {
         this.§8!2§.removeEventListener(Event.COMPLETE,this.§<A§);
         this.§8!2§.removeEventListener(Event.CANCEL,this.§#c§);
         this.§?Y§ = true;
         if(this.§?-§ && this.§?Y§)
         {
            this.initialize(this.§<!$§);
         }
      }
      
      private function §#c§(param1:Event) : void
      {
         this.§8!2§.removeEventListener(Event.COMPLETE,this.§<A§);
         this.§8!2§.removeEventListener(Event.CANCEL,this.§#c§);
         this.§?Y§ = true;
         if(this.§?-§ && this.§?Y§)
         {
            this.initialize(this.§<!$§);
         }
      }
      
      public function get backgroundTextureManager() : §7!>§
      {
         return this.§9M§;
      }
      
      protected function initialize(param1:§@z§) : void
      {
         this.§3t§ = false;
         this.§[<§ = false;
         if(§`M§.§7!7§)
         {
            §`M§.§7!7§.speed = 1;
         }
         this.mLevelEngine = new §'=§(this);
         this.§!!M§ = this.initLevelBackground(param1.theme,this.§3^§.§"Z§ / §<!h§,this.backgroundTextureManager,this.§-m§.§,W§());
         this.§!!M§.§">§(§2#§.§1A§());
         this.§8§ = this.initLevelObjectManager(param1);
         this.§]]§ = this.initLevelSlingshot(param1);
         this.§<!9§ = this.initParticleManager(this.§2X§,this.§9M§);
         this.§-m§.init();
         this.§^!U§();
         this.loadPreviousReplayData();
         this.mReadyToRun = true;
         if(this.§,!c§)
         {
            this.§,!c§.addEventListeners();
         }
      }
      
      protected function loadPreviousReplayData() : void
      {
         if(this.§=! §)
         {
            this.§,s§ = §`!I§.initialize(this.§=! §);
            this.§,s§.speed = 1;
            this.§,s§.play();
            this.§<!3§ = -1000;
            this.§=! § = null;
         }
      }
      
      public function §<m§(param1:String) : void
      {
         this.§=! § = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§,s§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§,s§)
         {
            if(param1)
            {
               this.§,s§.speed = Math.min(this.§,s§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§,s§.speed = Math.max(this.§,s§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§,s§)
         {
            this.§,s§.speed = 1;
         }
      }
      
      protected function initLevelObjectManager(param1:§@z§) : §>!4§
      {
         return new §>!4§(this,param1,new Sprite());
      }
      
      protected function initLevelCamera(param1:§@z§) : §3$§
      {
         return new §3$§(this,param1);
      }
      
      protected function initLevelBackground(param1:String, param2:Number, param3:§7!>§, param4:Number) : §8I§
      {
         return new §8I§(param1,param2,param3,param4);
      }
      
      protected function initLevelSlingshot(param1:§@z§) : §49§
      {
         return new §49§(this,param1,new Sprite());
      }
      
      protected function initParticleManager(param1:§!!&§, param2:§7!>§) : §4!-§
      {
         return new §4!-§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§@z§ = this.preProcessLevel();
         var _loc4_:§`!h§;
         (_loc4_ = new §`!h§()).left = 0;
         _loc4_.top = -§3$§.§6W§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §3$§.§6W§;
         _loc4_.right = _loc4_.left + §3$§.§;!9§;
         _loc4_.y = -13.929;
         _loc4_.x = §3$§.§;!9§;
         _loc4_.id = §3$§.§?T§;
         _loc3_.§+r§(_loc4_);
         var _loc5_:§`!h§;
         (_loc5_ = new §`!h§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §3$§.§;!9§;
         _loc5_.bottom = _loc5_.top + §3$§.§6W§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §3$§.§;!9§ / 2;
         _loc5_.id = §3$§.§7!L§;
         _loc3_.§+r§(_loc5_);
         this.§"!a§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§3#§ != null)
         {
            _loc3_.theme = §3#§;
         }
         this.init(_loc3_);
      }
      
      protected function §"!a§(param1:§@z§, param2:Boolean) : void
      {
         if(param2)
         {
            this.§2r§(param1);
         }
      }
      
      protected function preProcessLevel() : §@z§
      {
         var _loc1_:§@z§ = new §@z§();
         _loc1_.§52§ = -12;
         return new §@z§();
      }
      
      protected function §2!c§() : Number
      {
         this.§^u§ ^= this.§^u§ << 21;
         this.§^u§ ^= this.§^u§ >>> 35;
         this.§^u§ ^= this.§^u§ << 4;
         return this.§^u§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §2r§(param1:§@z§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§ !,§ = null;
         this.§^u§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§2!c§() * 5;
               (_loc5_ = new § !,§()).x = 30 + _loc3_ * 10 + this.§2!c§() * 9;
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
                  _loc5_.angle = 45 - this.§2!c§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§2!c§() * 3 - _loc3_ * 8;
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
                  _loc5_.angle = this.§2!c§() * 360;
               }
               param1.§else §(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      private function §4§() : void
      {
      }
      
      public function §^!U§() : void
      {
         if(§8I§.§2@§)
         {
            this.§]!"§(this.§!!M§.§41§,false);
         }
         this.§]!"§(this.§<!9§.§5!K§(§4!-§.§'P§),false);
         this.§]!"§(this.§<!9§.§5!K§(§4!-§.§ <§),true);
         this.§]!"§(this.§<!9§.§5!K§(§4!-§.§4=§),true);
         this.§]!"§(this.§8§.§4!?§,true);
         this.§]!"§(this.§]]§.sprite,true);
         this.§]!"§(this.§<!9§.§5!K§(§4!-§.§&#§),true);
         this.§]!"§(this.§!!M§.§8! §,false);
         if(§8I§.§2@§)
         {
            this.§]!"§(this.§!!M§.§;B§,false);
         }
         this.§]!"§(this.§<!9§.§5!K§(§4!-§.§^!D§),true);
      }
      
      private function §]!"§(param1:Sprite, param2:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(param1);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         param1 /= §2#§.§`4§;
         param2 /= §2#§.§`4§;
         _loc3_.x = (param1 / §3$§.§?!=§ + this.§-m§.§8!^§ - §3$§.§2!d§ / §3$§.§?!=§) * §<!h§;
         _loc3_.y = (param2 / §3$§.§?!=§ + this.§-m§.§!O§ - §3$§.§4!,§ / §3$§.§?!=§) * §<!h§;
         return _loc3_;
      }
      
      public function §12§(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / §<!h§ + §3$§.§2!d§ / §3$§.§?!=§ - this.§-m§.§8!^§) * §3$§.§?!=§;
         _loc3_.y = (param2 / §<!h§ + §3$§.§4!,§ / §3$§.§?!=§ - this.§-m§.§!O§) * §3$§.§?!=§;
         var _loc4_:Number = Math.max(§2#§.§`4§,§2#§.§2"§);
         _loc3_.x *= _loc4_;
         _loc3_.y *= _loc4_;
         return _loc3_;
      }
      
      public function §2<§(param1:String, param2:Number, param3:Number) : void
      {
         this.§8§.§else §(param1,param2,param3);
      }
      
      public function §[T§() : void
      {
         if(this.§5!I§)
         {
            this.§5!I§.visible = true;
            this.§5!I§.alpha = 0;
         }
         this.§4H§ = 0;
      }
      
      public function §88§() : void
      {
         this.§,w§ = new §"R§(§'!0§.§%!C§,§'!0§.§&!b§);
      }
      
      public function §&§() : void
      {
         this.§,w§ = null;
      }
      
      public function clearLevel() : void
      {
         if(this.§!!M§)
         {
            this.§!!M§.dispose();
            this.§!!M§ = null;
         }
         if(this.§8§)
         {
            this.§8§.dispose();
            this.§8§ = null;
            this.§]"§ = null;
         }
         if(this.mLevelEngine)
         {
            if(!this.mLevelEngine.§]!^§)
            {
            }
            this.mLevelEngine.clear();
            this.mLevelEngine = null;
         }
         if(this.§3^§)
         {
            this.§3^§.clear();
            this.§3^§ = null;
         }
         if(this.§]]§)
         {
            this.§]]§.dispose();
            this.§]]§ = null;
         }
         if(this.§-m§)
         {
            this.§-m§.clear();
            this.§-m§ = null;
         }
         if(this.§<!9§)
         {
            this.§<!9§.dispose();
            this.§<!9§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§2x§ = 0;
         this.§6§ = 0;
         this.mReadyToRun = false;
         this.§9J§ = false;
         this.§4H§ = §'!0§.§'!;§;
         if(this.§3y§)
         {
            (this.§3y§ as §6!4§).§+I§.x = 0;
            (this.§3y§ as §6!4§).§+I§.y = 0;
         }
         if(this.§5!I§)
         {
            this.§5!I§.visible = false;
         }
         this.§,s§ = null;
         this.§=h§ = null;
         if(this.§8!2§)
         {
            this.§8!2§.removeEventListener(Event.COMPLETE,this.§4`§);
            this.§8!2§.removeEventListener(Event.CANCEL,this.§&n§);
         }
         if(this.§%i§)
         {
            this.§%i§.removeEventListener(Event.COMPLETE,this.§<A§);
            this.§%i§.removeEventListener(Event.CANCEL,this.§#c§);
         }
         this.§6J§();
         if(§`M§.§93§)
         {
            §`M§.§93§.color = 0;
         }
         if(this.§,!c§)
         {
            this.§,!c§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver() : void
      {
      }
      
      public function §39§() : String
      {
         if(this.§=h§)
         {
            return this.§=h§.toString();
         }
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         if(!this.mReadyToRun || !§`M§.§2!8§())
         {
            return 0;
         }
         if(this.§,s§ && this.§,s§.§8!N§)
         {
            return this.§`!N§(param1,param2,param3);
         }
         return this.updateWithTime(param1,true,param2,param3);
      }
      
      protected function updateWithTime(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         if(this.§3t§)
         {
            param1 *= 0.2;
            if(§`M§.§7!7§)
            {
               §`M§.§7!7§.speed = 0.2;
            }
         }
         var _loc5_:Number = 0;
         this.§6§ += param1;
         if(param3)
         {
            this.§2x§ += param1;
            _loc5_ = this.mLevelEngine.§5g§(this.§2x§);
            this.§]]§.update(param1,param4);
            this.§2x§ = _loc5_;
         }
         else
         {
            this.§8§.§9!+§(param1);
            this.§2x§ = 0;
         }
         if(param2)
         {
            this.§&K§(param1,_loc5_);
         }
         return param1;
      }
      
      private function §`!N§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc5_:Number = NaN;
         var _loc4_:Number = §'=§.§+o§ * 1000;
         if(this.§,s§)
         {
            param1 *= this.§,s§.speed;
            _loc5_ = this.§6§ + param1;
            while(this.§6§ + _loc4_ < _loc5_)
            {
               if(this.§6§ + _loc4_ > this.§<!3§)
               {
                  this.§,s§.step(this);
                  this.§<!3§ += _loc4_;
               }
               this.updateWithTime(_loc4_,false,param2,param3);
            }
            if(_loc5_ > this.§<!3§ + _loc4_)
            {
               this.§,s§.step(this);
               this.§<!3§ += _loc4_;
            }
            if(this.§6§ < _loc5_)
            {
               this.updateWithTime(_loc5_ - this.§6§,true,param2,param3);
            }
            return param1;
         }
         return this.updateWithTime(_loc4_,true,param2,param3);
      }
      
      private function §&K§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.§!!M§.update(param1);
         this.§8§.§=R§(param1,param2);
         this.§3!Y§();
         if(this.§4H§ < §'!0§.§'!;§)
         {
            this.§4H§ += param1;
            _loc3_ = §'!0§.§'!;§ / 2;
            _loc4_ = (-Math.abs(this.§4H§ - _loc3_) + _loc3_) * (§'!0§.§1!C§ / _loc3_);
            if(this.§5!I§)
            {
               this.§5!I§.alpha = _loc4_;
            }
         }
         else if(this.§5!I§)
         {
            this.§5!I§.visible = false;
         }
         if(this.§,w§)
         {
            if(!this.§,w§.§<!p§(this.§-m§,param1))
            {
               this.§&§();
            }
         }
         this.§-m§.§?;§(param1);
         this.mLevelEngine.§6!,§();
         this.§<!9§.update(param1);
      }
      
      public function handleEngineUpdateStep(param1:Number) : void
      {
         this.objects.§9!+§(param1 * 1000);
         this.objects.updateLevelObjectsComplete(param1 * 1000);
         this.§<3§();
      }
      
      public function §3!Y§() : void
      {
         var _loc1_:§%o§ = null;
         if(this.§6§ > this.§;5§ + 1000 / 30)
         {
            if(this.§3!D§ != null)
            {
               for each(_loc1_ in this.§3!D§)
               {
                  _loc1_.addTrail();
               }
            }
            this.§;5§ = this.§6§;
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§%o§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.§8§.isPigsAlive(true))
            {
               _loc2_ = this.§8§.§4!T§(true);
               _loc2_.§-s§.mTryToScream = §0!@§.§!s§;
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§8§.§@!=§());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            if(this.§8§.isPigsAlive(true))
            {
               _loc2_ = this.§8§.§4!T§(true);
               _loc2_.§-s§.mTryToBlink = §0!@§.§<!+§;
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§8§.§@!=§());
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §65§.§1-§;
         }
         §<!X§.addScore(param1,param2);
         this.§,!c§.addScore(param1);
         if(param3 && param1 > 0 && !this.§[<§)
         {
            this.§;!k§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §;!k§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §65§.§3I§;
         }
         this.§<!9§.§ D§(§65§.§!!N§,§4!-§.§^!D§,§65§.§@!0§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §%5§(param1:§%o§) : void
      {
         if(this.§3!D§ == null)
         {
            this.§3!D§ = new Array();
         }
         this.§3!D§.push(param1);
      }
      
      public function §;o§() : void
      {
         this.§]]§.§;o§();
         this.§8§.§&!=§();
         this.§[<§ = true;
      }
      
      public function §%m§(param1:§%o§) : void
      {
         this.§<!9§.§!!m§(§4!-§.§'P§);
         if(this.§3!D§.indexOf(param1) >= 0)
         {
            this.§3!D§.splice(this.§3!D§.indexOf(param1),1);
         }
         if(this.§3!D§.length == 0)
         {
            this.§3!D§ = null;
         }
      }
      
      public function §89§(param1:§^!c§, param2:Number, param3:Number) : void
      {
         this.§]"§ = this.§8§.§else §(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
         var _loc4_:Number = param1.name.toUpperCase() == "BIRD_GREEN" ? Number(§49§.BIRD_LAUNCH_FORCE_GREEN) : Number(§49§.BIRD_LAUNCH_FORCE);
         if(param1.§'!@§ > 1)
         {
            this.§]"§.§4!9§(param1.§'!@§);
            this.§]"§.§-s§.§0!&§();
         }
         if(param1.§'N§ != 0)
         {
            _loc4_ = param1.§'N§;
         }
         var _loc5_:Number = -_loc4_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc6_:Number = _loc4_ * param2 * Math.sin(param3 / (180 / Math.PI));
         this.§]"§.§!!D§(new b2Vec2(_loc5_,_loc6_),false,true);
         this.camera.setAction(§3$§.§'!O§);
         if(this.§=h§)
         {
            this.§=h§.§89§(this.mLevelEngine.§@+§,param1.x,param1.y,param2,param3);
         }
      }
      
      public function activatePowerup() : void
      {
         this.§9J§ = true;
      }
      
      private function §<3§() : void
      {
         if(!this.§9J§)
         {
            return;
         }
         this.§9J§ = false;
         if(this.activeObject is §]!%§ && !(this.activeObject as §]!%§).§'!$§)
         {
            if(this.activeObject.activateSpecialPower(this.§^!8§))
            {
               this.§^E§ = true;
            }
         }
         else
         {
            this.§8§.§6G§();
         }
         if(this.§=h§)
         {
            this.§=h§.§;!,§(this.mLevelEngine.§@+§);
         }
      }
      
      public function §=M§() : void
      {
         this.§8§.§=M§();
      }
      
      public function §]!J§() : void
      {
         this.§8§.§!'§();
      }
      
      public function §7M§() : §@z§
      {
         var _loc1_:§@z§ = new §@z§();
         _loc1_.§4h§ = this.§<!$§.§4h§;
         _loc1_.§"!M§ = this.§<!$§.§"!M§;
         this.§-m§.§]!`§(_loc1_);
         this.§8§.§#!g§(_loc1_);
         this.§]]§.§function§(_loc1_);
         _loc1_.theme = this.§!!M§.§,T§();
         return _loc1_;
      }
      
      public function §`,§() : int
      {
         return this.§<!$§.§"!M§;
      }
      
      public function §1!2§() : int
      {
         return this.§<!$§.§4h§;
      }
      
      public function §[7§(param1:int) : void
      {
         this.§<!$§.§"!M§ = param1;
      }
      
      public function §`!Q§(param1:int) : void
      {
         this.§<!$§.§4h§ = param1;
      }
      
      public function §;!`§(param1:Number, param2:Number) : void
      {
         if(this.§5J§)
         {
            this.§5J§.§,!M§(param1,param2);
         }
         if(this.§-m§)
         {
            this.§-m§.§?;§(0);
         }
      }
      
      public function get §<! §() : §@z§
      {
         return this.§<!$§;
      }
      
      public function get §^!8§() : §>!4§
      {
         return this.§8§;
      }
      
      protected function get §%"§() : §`M§
      {
         return this.§'T§;
      }
      
      public function get §50§() : int
      {
         return §2f§;
      }
   }
}
