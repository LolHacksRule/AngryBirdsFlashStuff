package §_-TG§
{
   import §_-0BH§.§_-FK§;
   import §_-0Dg§.§_-0BD§;
   import §_-0Ea§.§_-AY§;
   import §_-6E§.§ var§;
   import §_-8d§.§_-0FF§;
   import §_-8d§.§_-Ew§;
   import §_-8d§.§_-tA§;
   import §_-9T§.§_-0D7§;
   import §_-9T§.§_-xG§;
   import §_-Ga§.LevelManager;
   import §_-Ga§.§_-2w§;
   import §_-Ga§.§_-bm§;
   import §_-Ga§.§_-qQ§;
   import §_-JK§.§_-S2§;
   import §_-N3§.§_-Hv§;
   import §_-N3§.§_-Zc§;
   import §_-Yp§.b2Vec2;
   import §_-by§.§_-CE§;
   import §_-eS§.§_-BK§;
   import §_-lt§.§_-05W§;
   import §_-lt§.§_-30§;
   import §_-lt§.§_-Fh§;
   import §_-lt§.§_-eZ§;
   import §_-qO§.§ in§;
   import §_-uY§.DisplayObject;
   import §_-uY§.Sprite;
   import §_-vJ§.§_-OI§;
   import §_-z-§.§_-sX§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §_-00u§
   {
      
      private static const §_-eD§:int = 20;
      
      public static const §_-F1§:Number = § in§.§_-W8§;
      
      public static const §_-IE§:Number = § in§.§_-Kj§;
      
      public static const §_-lY§:Number = 1 / 20;
      
      public static const §_-V3§:Number = § in§.§_-Kj§ * §_-lY§;
      
      public static const §_-b2§:Number = §_-F1§ * §_-lY§;
      
      public static const §_-KE§:§_-BK§ = new §_-BK§(13 - 3);
      
      protected static var §for§:String = §_-bm§.§_-0A0§;
       
      
      protected var §_-9u§:§_-30§;
      
      private var §_-e2§:§_-eZ§;
      
      private var §_-71§:Array = null;
      
      protected var §_-fG§:§_-OI§;
      
      public var mLevelEngine:§_-O0§;
      
      protected var §_-3h§:§_-pD§;
      
      protected var §_-jC§:§_-S2§;
      
      protected var §_-mT§:§_-E0§;
      
      protected var §_-4i§:§_-Zc§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §_-033§:Boolean = false;
      
      protected var §_-XR§:Boolean = false;
      
      protected var §_-AT§:Boolean = false;
      
      public var §_-hr§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §_-Ak§:Number;
      
      public var §_-Dn§:Number;
      
      private var §_-yU§:Number;
      
      public var §switch§:§_-qQ§;
      
      public var §_-02W§:Boolean = false;
      
      private var §_-vP§:§_-2u§;
      
      private var §_-0-x§:Sprite;
      
      protected var §_-096§:§_-bm§;
      
      protected var §_-yQ§:§_-0BD§ = null;
      
      private var §_-Rr§:EventDispatcher;
      
      private var §_-0AA§:Array;
      
      private var §_-vK§:Array;
      
      protected var §_-00f§:§_-AY§;
      
      private var §_-k1§:§ var§;
      
      protected var §_-00g§:§_-0FF§;
      
      protected var §_-P4§:§_-Ew§;
      
      private var §_-ym§:§_-tA§;
      
      private var §_-BN§:§_-tA§;
      
      private var §_-yV§:§_-tA§;
      
      private var §_-qN§:Stage;
      
      private var §_-lo§:§_-06K§;
      
      protected var §_-fZ§:§_-sX§;
      
      protected var §_-Ko§:§_-sX§;
      
      protected var §_-Jb§:Number = 0.0;
      
      protected var §_-2l§:String;
      
      private var §_-F0§:Boolean;
      
      protected var §_-fp§:Boolean;
      
      protected var §_-T2§:uint = 1.417339207E9;
      
      public var §_-wt§:Boolean;
      
      public function §_-00u§(param1:Stage)
      {
         this.§_-vK§ = [];
         super();
         this.§_-Rr§ = new EventDispatcher();
         this.§switch§ = new §_-qQ§();
         this.§_-qN§ = param1;
         this.§_-00g§ = §_-0FF§.§_-3S§;
         this.§_-P4§ = this.initAnimationManager(this.§_-00g§);
         this.§_-ym§ = this.initThemeGraphicsManager();
         this.§_-BN§ = this.initThemeSoundsManager();
         this.§_-yV§ = this.initCutSceneManager();
         var _loc2_:Stage3D = param1.stage3Ds[0];
         this.§_-00f§ = new §_-AY§(§_-2u§,param1,new Rectangle(0,0,§ in§.§_-W8§,§ in§.§_-Kj§),_loc2_);
         § in§.§_-HY§.addEventListener(Event.ENTER_FRAME,this.§_-00f§.onEnterFrame);
         _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§_-Hs§,false,0,true);
         this.§_-00f§.§_-0J§ = false;
         this.§_-00f§.enableErrorChecking = false;
         this.§_-00f§.§_-SU§ = 2;
         this.§_-00f§.§_-uN§();
      }
      
      public static function §_-0g§(param1:§_-eZ§, param2:§_-eZ§) : Number
      {
         var _loc3_:Number = param1.§_-dB§ - param2.§_-dB§;
         var _loc4_:Number = param1.§_-5X§ - param2.§_-5X§;
         return §_-PU§(_loc3_,_loc4_);
      }
      
      public static function §_-PU§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         if(!this.§_-0-x§ && this.§_-LM§)
         {
            this.§_-0-x§ = this.§_-vP§.§_-9A§;
         }
         return this.§_-0-x§;
      }
      
      public function get §_-LM§() : Sprite
      {
         if(!this.§_-vP§)
         {
            this.§_-vP§ = this.§_-00f§.§_-Uz§ as §_-2u§;
            this.§_-vP§.§_-xd§ = false;
         }
         return this.§_-vP§;
      }
      
      private function get §_-06T§() : DisplayObject
      {
         if(this.§_-LM§)
         {
            return (this.§_-LM§ as §_-2u§).§_-06T§;
         }
         return null;
      }
      
      public function get animationManager() : §_-Ew§
      {
         return this.§_-P4§;
      }
      
      public function get textureManager() : §_-0FF§
      {
         return this.§_-00g§;
      }
      
      public function get camera() : §_-S2§
      {
         return this.§_-jC§;
      }
      
      public function get objects() : §_-30§
      {
         return this.§_-9u§;
      }
      
      public function get particles() : §_-Zc§
      {
         return this.§_-4i§;
      }
      
      public function get background() : §_-OI§
      {
         return this.§_-fG§;
      }
      
      public function get slingshot() : §_-E0§
      {
         return this.§_-mT§;
      }
      
      public function get activeObject() : §_-eZ§
      {
         return this.§_-e2§;
      }
      
      public function get §_-Uv§() : §_-pD§
      {
         return this.§_-3h§;
      }
      
      public function get stage() : Stage
      {
         return this.§_-qN§;
      }
      
      public function get §_-04t§() : §_-tA§
      {
         return this.§_-yV§;
      }
      
      protected function get §_-SV§() : §_-tA§
      {
         return this.§_-ym§;
      }
      
      public function set activeObject(param1:§_-eZ§) : void
      {
         this.§_-e2§ = param1;
      }
      
      public function set §_-0EU§(param1:Boolean) : void
      {
         this.§_-fp§ = param1;
      }
      
      public function clear() : void
      {
         if(this.§_-k1§)
         {
            this.§_-k1§.dispose();
         }
         if(this.§_-00g§)
         {
            this.§_-00g§.dispose();
         }
         if(this.§_-ym§ && this.§_-ym§.textureManager)
         {
            this.§_-ym§.textureManager.dispose();
         }
         if(this.§_-yV§ && this.§_-yV§.textureManager)
         {
            this.§_-yV§.textureManager.dispose();
         }
         if(this.§_-00f§)
         {
            this.§_-00f§.dispose();
         }
      }
      
      protected function initThemeGraphicsManager() : §_-tA§
      {
         return null;
      }
      
      protected function initThemeSoundsManager() : §_-tA§
      {
         return null;
      }
      
      protected function initCutSceneManager() : §_-tA§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§_-0FF§) : §_-Ew§
      {
         return new §_-Ew§(param1);
      }
      
      public function §_-Vf§(param1:Boolean) : void
      {
         if(§_-AY§.§_-un§)
         {
            if(param1)
            {
               §_-AY§.§_-un§.start();
            }
            else
            {
               §_-AY§.§_-un§.stop();
               §_-AY§.§_-un§.color = 0;
            }
         }
      }
      
      public function §_-TQ§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function setController(param1:§_-0BD§) : void
      {
         if(this.§_-yQ§ != null)
         {
            this.§_-yQ§.removeEventListeners();
         }
         this.§_-yQ§ = param1;
         if(this.mReadyToRun)
         {
            this.§_-yQ§.addEventListeners();
         }
      }
      
      public function §_-02L§() : §_-sX§
      {
         return this.§_-fZ§;
      }
      
      public function §_-041§(param1:§ var§, param2:Array, param3:Function) : void
      {
         this.§_-k1§ = param1;
         var _loc4_:int = this.§_-k1§.§_-iE§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§_-00g§.§_-sG§(this.§_-k1§.§_-0Cv§(_loc5_));
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§_-Rr§.addEventListener(Event.INIT,param3);
            this.§_-vK§.push(param3);
         }
         if(this.§_-uC§(param2))
         {
            this.§_-KJ§();
         }
      }
      
      private function §_-uC§(param1:Array) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.§_-00g§.§_-G9§())
         {
            _loc2_ = this.§_-00g§.§_-RF§ / 1000;
            _loc3_ = this.§_-00g§.§_-0DC§ / 1000;
            §_-FK§.log("\n\nMain texture manager memory usage:\n   textures " + _loc2_ + " kilobytes\n   bitmaps " + _loc3_ + " kilobytes\n\n");
            this.initializeAnimations(param1);
            return true;
         }
         this.§_-0AA§ = param1.concat();
         return false;
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         this.§_-P4§.initializeAnimations(param1);
      }
      
      private function §_-Hs§(param1:Event) : void
      {
         this.§_-00g§.§_-tN§();
         if(this.§_-SV§ && this.§_-SV§.textureManager)
         {
            this.§_-SV§.textureManager.§_-tN§();
         }
         if(this.§_-04t§ && this.§_-04t§.textureManager)
         {
            this.§_-04t§.textureManager.§_-tN§();
         }
         if(this.§_-0AA§)
         {
            this.§_-uC§(this.§_-0AA§);
            this.§_-0AA§ = null;
            this.§_-KJ§();
         }
         if(this.§_-yQ§ != null && this.mReadyToRun)
         {
            this.§_-yQ§.addEventListeners();
         }
         if(this.§_-ym§)
         {
            this.§_-ym§.§_-G9§();
         }
         if(this.§_-yV§)
         {
            if(this.§_-yV§.textureManager)
            {
               this.§_-yV§.textureManager.§_-tN§();
               this.§_-yV§.§_-G9§();
            }
         }
      }
      
      private function §_-KJ§() : void
      {
         this.§_-Rr§.dispatchEvent(new Event(Event.INIT));
         this.§_-RP§();
      }
      
      private function §_-RP§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§_-vK§)
         {
            this.§_-Rr§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§_-vK§ = [];
      }
      
      public function init(param1:§_-bm§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§_-3h§ = new §_-pD§(this,param1);
         this.§_-jC§ = this.§_-oB§(param1);
         this.§_-Ak§ = 0;
         this.§_-Dn§ = 0;
         this.§_-yU§ = 0;
         this.§_-F0§ = false;
         this.mReadyToRun = false;
         this.§_-033§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         §for§ = param1.theme;
         this.§_-096§ = param1;
         this.§_-XR§ = this.§_-8p§(param1.theme);
         this.§_-AT§ = this.§_-EQ§(param1.theme);
         if(this.§_-XR§ && this.§_-AT§)
         {
            this.initialize(param1);
         }
         else
         {
            this.§finally§(param1.theme);
         }
         this.§_-g3§();
         §_-40§.init();
      }
      
      protected function §_-g3§() : void
      {
         this.§_-fZ§ = new §_-sX§(LevelManager.§_-HM§);
      }
      
      protected function §_-8p§(param1:String) : Boolean
      {
         if(this.§_-ym§)
         {
            return false;
         }
         return true;
      }
      
      protected function §_-EQ§(param1:String) : Boolean
      {
         var _loc2_:§_-0D7§ = null;
         if(this.§_-BN§)
         {
            _loc2_ = §_-xG§.§_-lv§(param1);
            if(_loc2_)
            {
               if(_loc2_.§_-2z§ && !this.§_-BN§.§_-wY§(_loc2_.§_-2z§))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function §finally§(param1:String) : void
      {
         var _loc2_:§_-0D7§ = null;
         if(this.§_-ym§ && !this.§_-8p§(param1))
         {
            this.§_-ym§.removeEventListener(Event.COMPLETE,this.§_-zq§);
            this.§_-ym§.removeEventListener(Event.CANCEL,this.§_-A-§);
            this.§_-ym§.addEventListener(Event.COMPLETE,this.§_-zq§);
            this.§_-ym§.addEventListener(Event.CANCEL,this.§_-A-§);
            this.§_-ym§.§_-r7§(param1);
         }
         if(this.§_-BN§ && !this.§_-EQ§(param1))
         {
            this.§_-BN§.removeEventListener(Event.COMPLETE,this.§_-0K§);
            this.§_-BN§.removeEventListener(Event.CANCEL,this.§_-0Dy§);
            this.§_-BN§.addEventListener(Event.COMPLETE,this.§_-0K§);
            this.§_-BN§.addEventListener(Event.CANCEL,this.§_-0Dy§);
            _loc2_ = §_-xG§.§_-lv§(param1);
            if(_loc2_)
            {
               this.§_-BN§.§_-r7§(_loc2_.§_-2z§);
            }
         }
      }
      
      private function §_-zq§(param1:Event) : void
      {
         this.§_-ym§.removeEventListener(Event.COMPLETE,this.§_-zq§);
         this.§_-ym§.removeEventListener(Event.CANCEL,this.§_-A-§);
         this.§_-XR§ = true;
         if(this.§_-XR§ && this.§_-AT§)
         {
            this.initialize(this.§_-096§);
         }
      }
      
      private function §_-A-§(param1:Event) : void
      {
         this.§_-ym§.removeEventListener(Event.COMPLETE,this.§_-zq§);
         this.§_-ym§.removeEventListener(Event.CANCEL,this.§_-A-§);
         this.§_-033§ = true;
      }
      
      private function §_-0K§(param1:Event) : void
      {
         this.§_-ym§.removeEventListener(Event.COMPLETE,this.§_-0K§);
         this.§_-ym§.removeEventListener(Event.CANCEL,this.§_-0Dy§);
         this.§_-AT§ = true;
         if(this.§_-XR§ && this.§_-AT§)
         {
            this.initialize(this.§_-096§);
         }
      }
      
      private function §_-0Dy§(param1:Event) : void
      {
         this.§_-ym§.removeEventListener(Event.COMPLETE,this.§_-0K§);
         this.§_-ym§.removeEventListener(Event.CANCEL,this.§_-0Dy§);
         this.§_-AT§ = true;
         if(this.§_-XR§ && this.§_-AT§)
         {
            this.initialize(this.§_-096§);
         }
      }
      
      public function get backgroundTextureManager() : §_-0FF§
      {
         return this.§_-00g§;
      }
      
      protected function initialize(param1:§_-bm§) : void
      {
         this.§_-fp§ = false;
         this.§_-wt§ = false;
         if(§_-AY§.§_-CK§)
         {
            §_-AY§.§_-CK§.speed = 1;
         }
         this.mLevelEngine = new §_-O0§(this);
         this.§_-fG§ = this.initLevelBackground(param1.theme,this.§_-3h§.§_-GV§ / §_-lY§,this.backgroundTextureManager,this.§_-jC§.§_-fw§());
         this.§_-fG§.§_-bN§(§ in§.§_-0-I§());
         this.§_-9u§ = this.initLevelObjectManager(param1);
         this.§_-mT§ = this.initLevelSlingshot(param1);
         this.§_-4i§ = this.§_-0ES§(this.§_-P4§,this.§_-00g§);
         this.§_-jC§.init();
         this.§_-0-o§();
         this.§_-0-f§();
         this.mReadyToRun = true;
         if(this.§_-yQ§)
         {
            this.§_-yQ§.addEventListeners();
         }
      }
      
      protected function §_-0-f§() : void
      {
         if(this.§_-2l§)
         {
            this.§_-Ko§ = §_-sX§.initialize(this.§_-2l§);
            this.§_-Ko§.speed = 1;
            this.§_-Ko§.play();
            this.§_-Jb§ = -1000;
            this.§_-2l§ = null;
         }
      }
      
      public function §_-lF§(param1:String) : void
      {
         this.§_-2l§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§_-Ko§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§_-Ko§)
         {
            if(param1)
            {
               this.§_-Ko§.speed = Math.min(this.§_-Ko§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§_-Ko§.speed = Math.max(this.§_-Ko§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§_-Ko§)
         {
            this.§_-Ko§.speed = 1;
         }
      }
      
      protected function initLevelObjectManager(param1:§_-bm§) : §_-30§
      {
         return new §_-30§(this,param1,new Sprite());
      }
      
      protected function §_-oB§(param1:§_-bm§) : §_-S2§
      {
         return new §_-S2§(this,param1);
      }
      
      protected function initLevelBackground(param1:String, param2:Number, param3:§_-0FF§, param4:Number) : §_-OI§
      {
         return new §_-OI§(param1,param2,param3,param4);
      }
      
      protected function initLevelSlingshot(param1:§_-bm§) : §_-E0§
      {
         return new §_-E0§(this,param1,new Sprite());
      }
      
      protected function §_-0ES§(param1:§_-Ew§, param2:§_-0FF§) : §_-Zc§
      {
         return new §_-Zc§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§_-bm§ = this.§_-uK§();
         var _loc4_:§_-2w§;
         (_loc4_ = new §_-2w§()).left = 0;
         _loc4_.top = -§_-S2§.§_-u-§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §_-S2§.§_-u-§;
         _loc4_.right = _loc4_.left + §_-S2§.§_-U9§;
         _loc4_.y = -13.929;
         _loc4_.x = §_-S2§.§_-U9§;
         _loc4_.id = §_-S2§.§_-Ky§;
         _loc3_.§_-03T§(_loc4_);
         var _loc5_:§_-2w§;
         (_loc5_ = new §_-2w§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §_-S2§.§_-U9§;
         _loc5_.bottom = _loc5_.top + §_-S2§.§_-u-§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §_-S2§.§_-U9§ / 2;
         _loc5_.id = §_-S2§.§_-05X§;
         _loc3_.§_-03T§(_loc5_);
         this.§_-0BU§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§for§ != null)
         {
            _loc3_.theme = §for§;
         }
         this.init(_loc3_);
      }
      
      protected function §_-0BU§(param1:§_-bm§, param2:Boolean) : void
      {
         if(param2)
         {
            this.§package§(param1);
         }
      }
      
      protected function §_-uK§() : §_-bm§
      {
         var _loc1_:§_-bm§ = new §_-bm§();
         _loc1_.§_-Rc§ = -12;
         return new §_-bm§();
      }
      
      protected function §_-2H§() : Number
      {
         this.§_-T2§ ^= this.§_-T2§ << 21;
         this.§_-T2§ ^= this.§_-T2§ >>> 35;
         this.§_-T2§ ^= this.§_-T2§ << 4;
         return this.§_-T2§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §package§(param1:§_-bm§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§_-CE§ = null;
         this.§_-T2§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§_-2H§() * 5;
               (_loc5_ = new §_-CE§()).x = 30 + _loc3_ * 10 + this.§_-2H§() * 9;
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
                  _loc5_.angle = 45 - this.§_-2H§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§_-2H§() * 3 - _loc3_ * 8;
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
                  _loc5_.angle = this.§_-2H§() * 360;
               }
               param1.addObject(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      private function §_-cd§() : void
      {
      }
      
      public function §_-0-o§() : void
      {
         if(§_-OI§.§_-Vj§)
         {
            this.§_-De§(this.§_-fG§.§_-pH§,false);
         }
         this.§_-De§(this.§_-4i§.§_-Ry§(§_-Zc§.§_-zS§),false);
         this.§_-De§(this.§_-4i§.§_-Ry§(§_-Zc§.§_-WZ§),true);
         this.§_-De§(this.§_-4i§.§_-Ry§(§_-Zc§.§_-sa§),true);
         this.§_-De§(this.§_-9u§.§_-ar§,true);
         this.§_-De§(this.§_-mT§.sprite,true);
         this.§_-De§(this.§_-4i§.§_-Ry§(§_-Zc§.§_-MP§),true);
         this.§_-De§(this.§_-fG§.§_-xH§,false);
         if(§_-OI§.§_-Vj§)
         {
            this.§_-De§(this.§_-fG§.§_-BL§,false);
         }
         this.§_-De§(this.§_-4i§.§_-Ry§(§_-Zc§.§_-zj§),true);
         if(!§_-O0§.§_-EN§)
         {
         }
      }
      
      private function §_-De§(param1:Sprite, param2:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(param1);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         param1 /= § in§.§_-57§;
         param2 /= § in§.§_-57§;
         _loc3_.x = (param1 / §_-S2§.§_-4-§ + this.§_-jC§.§_-jV§ - §_-S2§.§_-qy§ / §_-S2§.§_-4-§) * §_-lY§;
         _loc3_.y = (param2 / §_-S2§.§_-4-§ + this.§_-jC§.§_-2m§ - §_-S2§.§_-w6§ / §_-S2§.§_-4-§) * §_-lY§;
         return _loc3_;
      }
      
      public function §_-ew§(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / §_-lY§ + §_-S2§.§_-qy§ / §_-S2§.§_-4-§ - this.§_-jC§.§_-jV§) * §_-S2§.§_-4-§;
         _loc3_.y = (param2 / §_-lY§ + §_-S2§.§_-w6§ / §_-S2§.§_-4-§ - this.§_-jC§.§_-2m§) * §_-S2§.§_-4-§;
         var _loc4_:Number = Math.max(§ in§.§_-57§,§ in§.§_-Sr§);
         _loc3_.x *= _loc4_;
         _loc3_.y *= _loc4_;
         return _loc3_;
      }
      
      public function §_-kK§(param1:String, param2:Number, param3:Number) : void
      {
         this.§_-9u§.addObject(param1,param2,param3);
      }
      
      public function §_-ET§() : void
      {
         if(this.§_-06T§)
         {
            this.§_-06T§.visible = true;
            this.§_-06T§.alpha = 0;
         }
         this.§_-hr§ = 0;
      }
      
      public function §_-07i§() : void
      {
         this.§_-lo§ = new §_-06K§(§_-L8§.§_-0Ca§,§_-L8§.§_-ty§);
      }
      
      public function §_-Qu§() : void
      {
         this.§_-lo§ = null;
      }
      
      public function clearLevel() : void
      {
         if(this.§_-fG§)
         {
            this.§_-fG§.dispose();
            this.§_-fG§ = null;
         }
         if(this.§_-9u§)
         {
            this.§_-9u§.dispose();
            this.§_-9u§ = null;
            this.§_-e2§ = null;
         }
         if(this.mLevelEngine)
         {
            if(!this.mLevelEngine.§_-6s§)
            {
            }
            this.mLevelEngine.clear();
            this.mLevelEngine = null;
         }
         if(this.§_-3h§)
         {
            this.§_-3h§.clear();
            this.§_-3h§ = null;
         }
         if(this.§_-mT§)
         {
            this.§_-mT§.dispose();
            this.§_-mT§ = null;
         }
         if(this.§_-jC§)
         {
            this.§_-jC§.clear();
            this.§_-jC§ = null;
         }
         if(this.§_-4i§)
         {
            this.§_-4i§.dispose();
            this.§_-4i§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§_-Ak§ = 0;
         this.§_-Dn§ = 0;
         this.mReadyToRun = false;
         this.§_-F0§ = false;
         this.§_-hr§ = §_-L8§.§_-oT§;
         if(this.§_-LM§)
         {
            (this.§_-LM§ as §_-2u§).§_-Ly§.x = 0;
            (this.§_-LM§ as §_-2u§).§_-Ly§.y = 0;
         }
         if(this.§_-06T§)
         {
            this.§_-06T§.visible = false;
         }
         this.§_-Ko§ = null;
         this.§_-fZ§ = null;
         if(this.§_-ym§)
         {
            this.§_-ym§.removeEventListener(Event.COMPLETE,this.§_-zq§);
            this.§_-ym§.removeEventListener(Event.CANCEL,this.§_-A-§);
         }
         if(this.§_-BN§)
         {
            this.§_-BN§.removeEventListener(Event.COMPLETE,this.§_-0K§);
            this.§_-BN§.removeEventListener(Event.CANCEL,this.§_-0Dy§);
         }
         this.§_-RP§();
         if(§_-AY§.§_-un§)
         {
            §_-AY§.§_-un§.color = 0;
         }
         if(this.§_-yQ§)
         {
            this.§_-yQ§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver() : void
      {
      }
      
      public function §_-Kd§() : String
      {
         if(this.§_-fZ§)
         {
            return this.§_-fZ§.toString();
         }
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         if(!this.mReadyToRun || !§_-AY§.§_-Ow§())
         {
            return 0;
         }
         if(this.§_-Ko§ && this.§_-Ko§.§_-3t§)
         {
            return this.§_-GZ§(param1,param2,param3);
         }
         return this.updateWithTime(param1,true,param2,param3);
      }
      
      protected function updateWithTime(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         if(this.§_-fp§)
         {
            param1 *= 0.2;
            if(§_-AY§.§_-CK§)
            {
               §_-AY§.§_-CK§.speed = 0.2;
            }
         }
         var _loc5_:Number = 0;
         this.§_-Dn§ += param1;
         if(param3)
         {
            this.§_-Ak§ += param1;
            _loc5_ = this.mLevelEngine.§_-6h§(this.§_-Ak§);
            this.§_-mT§.update(param1,param4);
            this.§_-Ak§ = _loc5_;
         }
         else
         {
            this.§_-9u§.§_-8h§(param1);
            this.§_-Ak§ = 0;
         }
         if(param2)
         {
            this.§_-LE§(param1,_loc5_);
         }
         return param1;
      }
      
      private function §_-GZ§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc5_:Number = NaN;
         var _loc4_:Number = §_-O0§.§_-C-§ * 1000;
         if(this.§_-Ko§)
         {
            param1 *= this.§_-Ko§.speed;
            _loc5_ = this.§_-Dn§ + param1;
            while(this.§_-Dn§ + _loc4_ < _loc5_)
            {
               if(this.§_-Dn§ + _loc4_ > this.§_-Jb§)
               {
                  this.§_-Ko§.step(this);
                  this.§_-Jb§ += _loc4_;
               }
               this.updateWithTime(_loc4_,false,param2,param3);
            }
            if(_loc5_ > this.§_-Jb§ + _loc4_)
            {
               this.§_-Ko§.step(this);
               this.§_-Jb§ += _loc4_;
            }
            if(this.§_-Dn§ < _loc5_)
            {
               this.updateWithTime(_loc5_ - this.§_-Dn§,true,param2,param3);
            }
            return param1;
         }
         return this.updateWithTime(_loc4_,true,param2,param3);
      }
      
      private function §_-LE§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.§_-fG§.update(param1);
         this.§_-9u§.§_-x0§(param1,param2);
         this.§_-pN§();
         if(this.§_-hr§ < §_-L8§.§_-oT§)
         {
            this.§_-hr§ += param1;
            _loc3_ = §_-L8§.§_-oT§ / 2;
            _loc4_ = (-Math.abs(this.§_-hr§ - _loc3_) + _loc3_) * (§_-L8§.§_-bR§ / _loc3_);
            if(this.§_-06T§)
            {
               this.§_-06T§.alpha = _loc4_;
            }
         }
         else if(this.§_-06T§)
         {
            this.§_-06T§.visible = false;
         }
         if(this.§_-lo§)
         {
            if(!this.§_-lo§.§_-JO§(this.§_-jC§,param1))
            {
               this.§_-Qu§();
            }
         }
         this.§_-jC§.§_-q7§(param1);
         this.mLevelEngine.§_-08U§();
         this.§_-4i§.update(param1);
      }
      
      public function handleEngineUpdateStep(param1:Number) : void
      {
         this.objects.§_-8h§(param1 * 1000);
         this.objects.§_-09C§(param1 * 1000);
         this.§_-04X§();
      }
      
      public function §_-pN§() : void
      {
         var _loc1_:§_-eZ§ = null;
         if(this.§_-Dn§ > this.§_-yU§ + 1000 / 30)
         {
            if(this.§_-71§ != null)
            {
               for each(_loc1_ in this.§_-71§)
               {
                  _loc1_.addTrail();
               }
            }
            this.§_-yU§ = this.§_-Dn§;
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§_-eZ§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.§_-9u§.isPigsAlive(true))
            {
               _loc2_ = this.§_-9u§.§_-6f§(true);
               _loc2_.§_-U-§.mTryToScream = §_-05W§.§_-0C9§;
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§_-9u§.§_-yq§());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            if(this.§_-9u§.isPigsAlive(true))
            {
               _loc2_ = this.§_-9u§.§_-6f§(true);
               _loc2_.§_-U-§.mTryToBlink = §_-05W§.§_-Og§;
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§_-9u§.§_-yq§());
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §_-Hv§.§_-bP§;
         }
         §_-40§.addScore(param1,param2);
         this.§_-yQ§.addScore(param1);
         if(param3 && param1 > 0 && !this.§_-wt§)
         {
            this.§_-8u§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §_-8u§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §_-Hv§.§_-rq§;
         }
         this.§_-4i§.§_-0EQ§(§_-Hv§.§_-Pq§,§_-Zc§.§_-zj§,§_-Hv§.§_-5K§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §_-I5§(param1:§_-eZ§) : void
      {
         if(this.§_-71§ == null)
         {
            this.§_-71§ = new Array();
         }
         this.§_-71§.push(param1);
      }
      
      public function useMightyEagle() : void
      {
         this.§_-mT§.useMightyEagle();
         this.§_-9u§.§_-87§();
         this.§_-wt§ = true;
      }
      
      public function §_-5Q§(param1:§_-eZ§) : void
      {
         this.§_-4i§.§_-cF§(§_-Zc§.§_-zS§);
         if(this.§_-71§.indexOf(param1) >= 0)
         {
            this.§_-71§.splice(this.§_-71§.indexOf(param1),1);
         }
         if(this.§_-71§.length == 0)
         {
            this.§_-71§ = null;
         }
      }
      
      public function §_-QL§(param1:§_-pR§, param2:Number, param3:Number) : void
      {
         this.§_-e2§ = this.§_-9u§.addObject(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
         var _loc4_:Number = param1.name.toUpperCase() == "BIRD_GREEN" ? Number(§_-E0§.BIRD_LAUNCH_FORCE_GREEN) : Number(§_-E0§.BIRD_LAUNCH_FORCE);
         if(param1.§_-IX§ > 1)
         {
            this.§_-e2§.§_-Px§(param1.§_-IX§);
            this.§_-e2§.§_-U-§.§_-XU§();
         }
         if(param1.§_-PV§ != 0)
         {
            _loc4_ = param1.§_-PV§;
         }
         var _loc5_:Number = -_loc4_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc6_:Number = _loc4_ * param2 * Math.sin(param3 / (180 / Math.PI));
         this.§_-e2§.§_-To§(new b2Vec2(_loc5_,_loc6_),false,true);
         this.camera.§_-Hg§(§_-S2§.§_-0Co§);
         if(this.§_-fZ§)
         {
            this.§_-fZ§.§_-QL§(this.mLevelEngine.§_-5s§,param1.x,param1.y,param2,param3);
         }
      }
      
      public function activatePowerup() : void
      {
         this.§_-F0§ = true;
      }
      
      private function §_-04X§() : void
      {
         if(!this.§_-F0§)
         {
            return;
         }
         this.§_-F0§ = false;
         if(this.activeObject is §_-Fh§ && !(this.activeObject as §_-Fh§).§_-rV§)
         {
            if(this.activeObject.activateSpecialPower(this.§_-3V§))
            {
               this.§_-02W§ = true;
            }
         }
         else
         {
            this.§_-9u§.§_-At§();
         }
         if(this.§_-fZ§)
         {
            this.§_-fZ§.§_-R§(this.mLevelEngine.§_-5s§);
         }
      }
      
      public function §_-Fi§() : void
      {
         this.§_-9u§.§_-Fi§();
      }
      
      public function §_-Lv§() : void
      {
         this.§_-9u§.§_-S9§();
      }
      
      public function §_-Kv§() : §_-bm§
      {
         var _loc1_:§_-bm§ = new §_-bm§();
         _loc1_.§_-iC§ = this.§_-096§.§_-iC§;
         _loc1_.§_-Td§ = this.§_-096§.§_-Td§;
         this.§_-jC§.§_-Mr§(_loc1_);
         this.§_-9u§.§_-U6§(_loc1_);
         this.§_-mT§.§_-aF§(_loc1_);
         _loc1_.theme = this.§_-fG§.§_-hZ§();
         return _loc1_;
      }
      
      public function §_-zR§() : int
      {
         return this.§_-096§.§_-Td§;
      }
      
      public function §_-tB§() : int
      {
         return this.§_-096§.§_-iC§;
      }
      
      public function §_-q2§(param1:int) : void
      {
         this.§_-096§.§_-Td§ = param1;
      }
      
      public function §_-09W§(param1:int) : void
      {
         this.§_-096§.§_-iC§ = param1;
      }
      
      public function §_-tE§(param1:Number, param2:Number) : void
      {
         if(this.§_-vP§)
         {
            this.§_-vP§.§_-eb§(param1,param2);
         }
         if(this.§_-jC§)
         {
            this.§_-jC§.§_-q7§(0);
         }
      }
      
      public function get §_-bG§() : §_-bm§
      {
         return this.§_-096§;
      }
      
      public function get §_-3V§() : §_-30§
      {
         return this.§_-9u§;
      }
      
      protected function get starling() : §_-AY§
      {
         return this.§_-00f§;
      }
      
      public function get §_-2O§() : int
      {
         return §_-eD§;
      }
   }
}
