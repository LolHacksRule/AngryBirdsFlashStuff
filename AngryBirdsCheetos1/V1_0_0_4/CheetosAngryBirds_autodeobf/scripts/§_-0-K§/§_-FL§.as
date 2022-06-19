package §_-0-K§
{
   import §_-0-r§.§_-Nu§;
   import §_-4I§.§_-Aw§;
   import §_-4I§.§_-ok§;
   import §_-4I§.§_-v8§;
   import §_-5b§.§_-Mm§;
   import §_-5b§.§_-Vj§;
   import §_-5b§.§_-sy§;
   import §_-5b§.§_-z2§;
   import §_-DG§.§_-GH§;
   import §_-Fk§.§_-8E§;
   import §_-Fk§.§_-Cb§;
   import §_-Fk§.§_-ON§;
   import §_-Fk§.§_-lp§;
   import §_-KM§.§_-0A§;
   import §_-Lw§.§_-RT§;
   import §_-Lw§.§_-hQ§;
   import §_-TX§.§_-0X§;
   import §_-Vn§.b2Vec2;
   import §_-aD§.§_-Y5§;
   import §_-be§.§_-1v§;
   import §_-dD§.§_-Dk§;
   import §_-o§.§_-Qs§;
   import §_-o§.§_-a0§;
   import §_-r6§.§_-Oy§;
   import §_-yz§.§_-zJ§;
   import §case §.DisplayObject;
   import §case §.Sprite;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import override.§_-Eu§;
   
   public class §_-FL§
   {
      
      public static const §_-DA§:Number = §_-0X§.§_-I0§;
      
      public static const §_-Tz§:Number = §_-0X§.§_-ZV§;
      
      public static const §_-NU§:Number = 1 / 20;
      
      public static const §_-7-§:Number = §_-0X§.§_-ZV§ * §_-NU§;
      
      public static const §_-Cj§:Number = §_-DA§ * §_-NU§;
      
      public static const §_-zA§:§_-Y5§ = new §_-Y5§(13 - 3);
      
      protected static var §_-pj§:String = §_-Vj§.§_-n2§;
       
      
      protected var §_-p1§:§_-lp§;
      
      private var §_-u8§:§_-Cb§;
      
      private var §_-lt§:Array = null;
      
      private var §_-Jr§:§_-Nu§;
      
      public var mLevelEngine:§_-4i§;
      
      private var §_-014§:§_-Fx§;
      
      private var §_-1t§:§_-Eu§;
      
      private var each:§_-xV§;
      
      private var §_-UQ§:§_-RT§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §_-cr§:Boolean = false;
      
      private var §function§:Boolean = false;
      
      private var §_-9F§:Boolean = false;
      
      public var §_-oa§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §_-UF§:Number;
      
      public var §_-mL§:Number;
      
      private var §_-eB§:Number;
      
      public var §_-WS§:§_-sy§;
      
      public var §_-rk§:Boolean = false;
      
      private var §_-MR§:§_-nH§;
      
      private var §_-U3§:Sprite;
      
      private var §_-00k§:§_-Vj§;
      
      private var §_-x0§:§_-1v§ = null;
      
      private var §_-uM§:EventDispatcher;
      
      private var §_-cy§:Array;
      
      private var §_-d9§:Array;
      
      private var §_-Jl§:§_-0A§;
      
      private var §_-Ef§:§_-GH§;
      
      private var §_-BB§:§_-v8§;
      
      private var §_-Ms§:§_-ok§;
      
      private var §_-3S§:§_-Aw§;
      
      private var §_-9w§:§_-Aw§;
      
      private var §_-su§:§_-Aw§;
      
      private var §_-aX§:Stage;
      
      private var §_-sq§:§_-008§;
      
      protected var §_-PZ§:§_-Dk§;
      
      protected var §in §:§_-Dk§;
      
      protected var §_-8w§:Number = 0.0;
      
      protected var §_-g0§:String;
      
      private var §_-9C§:Boolean;
      
      private var §_-UA§:Boolean;
      
      public var §_-Zy§:Boolean;
      
      private var §_-58§:uint = 1.417339207E9;
      
      public function §_-FL§(param1:Stage)
      {
         this.§_-d9§ = [];
         super();
         this.§_-uM§ = new EventDispatcher();
         this.§_-WS§ = new §_-sy§();
         this.§_-aX§ = param1;
         this.§_-BB§ = §_-v8§.§_-yU§;
         this.§_-Ms§ = this.initAnimationManager(this.§_-BB§);
         this.§_-3S§ = this.§_-UN§();
         this.§_-9w§ = this.§_-Gj§();
         this.§_-su§ = this.§_-0-M§();
         var _loc2_:Stage3D = param1.stage3Ds[0];
         this.§_-Jl§ = new §_-0A§(§_-nH§,param1,new Rectangle(0,0,§_-0X§.§_-I0§,§_-0X§.§_-ZV§),_loc2_);
         §_-0X§.§_-wL§.§_-jn§(this.§_-Jl§);
         _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§_-DW§,false,0,true);
         this.§_-Jl§.§_-B9§ = false;
         this.§_-Jl§.enableErrorChecking = false;
         this.§_-Jl§.§_-yl§ = 2;
         this.§_-Jl§.§_-IC§();
      }
      
      public static function §_-nn§(param1:§_-Cb§, param2:§_-Cb§) : Number
      {
         var _loc3_:Number = param1.§_-Ks§ - param2.§_-Ks§;
         var _loc4_:Number = param1.§_-jS§ - param2.§_-jS§;
         return §_-KO§(_loc3_,_loc4_);
      }
      
      public static function §_-KO§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         if(!this.§_-U3§ && this.§_-0-q§)
         {
            this.§_-U3§ = this.§_-MR§.§_-Ap§;
         }
         return this.§_-U3§;
      }
      
      public function get §_-0-q§() : Sprite
      {
         if(!this.§_-MR§)
         {
            this.§_-MR§ = this.§_-Jl§.§_-Ca§ as §_-nH§;
            this.§_-MR§.§_-IX§ = false;
         }
         return this.§_-MR§;
      }
      
      private function get §_-Ru§() : DisplayObject
      {
         if(this.§_-0-q§)
         {
            return (this.§_-0-q§ as §_-nH§).§_-Ru§;
         }
         return null;
      }
      
      public function get §_-Un§() : §_-ok§
      {
         return this.§_-Ms§;
      }
      
      public function get §_-91§() : §_-v8§
      {
         return this.§_-BB§;
      }
      
      public function get camera() : §_-Eu§
      {
         return this.§_-1t§;
      }
      
      public function get objects() : §_-lp§
      {
         return this.§_-p1§;
      }
      
      public function get particles() : §_-RT§
      {
         return this.§_-UQ§;
      }
      
      public function get background() : §_-Nu§
      {
         return this.§_-Jr§;
      }
      
      public function get slingshot() : §_-xV§
      {
         return this.each;
      }
      
      public function get activeObject() : §_-Cb§
      {
         return this.§_-u8§;
      }
      
      public function get §_-v5§() : §_-Fx§
      {
         return this.§_-014§;
      }
      
      public function get stage() : Stage
      {
         return this.§_-aX§;
      }
      
      public function get §_-Fb§() : §_-Aw§
      {
         return this.§_-su§;
      }
      
      protected function get §_-vg§() : §_-Aw§
      {
         return this.§_-3S§;
      }
      
      public function set activeObject(param1:§_-Cb§) : void
      {
         this.§_-u8§ = param1;
      }
      
      public function set §_-BN§(param1:Boolean) : void
      {
         this.§_-UA§ = param1;
      }
      
      public function clear() : void
      {
         if(this.§_-Ef§)
         {
            this.§_-Ef§.dispose();
         }
         if(this.§_-BB§)
         {
            this.§_-BB§.dispose();
         }
         if(this.§_-3S§ && this.§_-3S§.§_-91§)
         {
            this.§_-3S§.§_-91§.dispose();
         }
         if(this.§_-su§ && this.§_-su§.§_-91§)
         {
            this.§_-su§.§_-91§.dispose();
         }
         if(this.§_-Jl§)
         {
            this.§_-Jl§.dispose();
         }
      }
      
      protected function §_-UN§() : §_-Aw§
      {
         return null;
      }
      
      protected function §_-Gj§() : §_-Aw§
      {
         return null;
      }
      
      protected function §_-0-M§() : §_-Aw§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§_-v8§) : §_-ok§
      {
         return new §_-ok§(param1);
      }
      
      public function §_-JY§(param1:Boolean) : void
      {
         if(§_-0A§.§_-bz§)
         {
            if(param1)
            {
               §_-0A§.§_-bz§.start();
            }
            else
            {
               §_-0A§.§_-bz§.stop();
               §_-0A§.§_-bz§.color = 0;
            }
         }
      }
      
      public function §_-Bk§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function §_-6P§(param1:§_-1v§) : void
      {
         if(this.§_-x0§ != null)
         {
            this.§_-x0§.removeEventListeners();
         }
         this.§_-x0§ = param1;
         if(this.mReadyToRun)
         {
            this.§_-x0§.addEventListeners();
         }
      }
      
      public function §_-BR§() : §_-Dk§
      {
         return this.§_-PZ§;
      }
      
      public function §_-qs§(param1:§_-GH§, param2:Array, param3:Function) : void
      {
         this.§_-Ef§ = param1;
         var _loc4_:int = this.§_-Ef§.§_-6d§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§_-BB§.§_-kx§(this.§_-Ef§.§_-o4§(_loc5_));
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§_-uM§.addEventListener(Event.INIT,param3);
            this.§_-d9§.push(param3);
         }
         if(this.§_-K8§(param2))
         {
            this.§_-J§();
         }
      }
      
      private function §_-K8§(param1:Array) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.§_-BB§.§_-dR§())
         {
            _loc2_ = this.§_-BB§.§_-1R§ / 1000;
            _loc3_ = this.§_-BB§.§_-L-§ / 1000;
            §_-Oy§.log("\n\nMain texture manager memory usage:\n   textures " + _loc2_ + " kilobytes\n   bitmaps " + _loc3_ + " kilobytes\n\n");
            this.initializeAnimations(param1);
            return true;
         }
         this.§_-cy§ = param1.concat();
         return false;
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         this.§_-Ms§.initializeAnimations(param1);
      }
      
      private function §_-DW§(param1:Event) : void
      {
         this.§_-BB§.§_-6p§();
         if(this.§_-vg§ && this.§_-vg§.§_-91§)
         {
            this.§_-vg§.§_-91§.§_-6p§();
         }
         if(this.§_-Fb§ && this.§_-Fb§.§_-91§)
         {
            this.§_-Fb§.§_-91§.§_-6p§();
         }
         if(this.§_-cy§)
         {
            this.§_-K8§(this.§_-cy§);
            this.§_-cy§ = null;
            this.§_-J§();
         }
         if(this.§_-x0§ != null && this.mReadyToRun)
         {
            this.§_-x0§.addEventListeners();
         }
         if(this.§_-3S§)
         {
            this.§_-3S§.§_-dR§();
         }
         if(this.§_-su§)
         {
            if(this.§_-su§.§_-91§)
            {
               this.§_-su§.§_-91§.§_-6p§();
               this.§_-su§.§_-dR§();
            }
         }
      }
      
      private function §_-J§() : void
      {
         this.§_-uM§.dispatchEvent(new Event(Event.INIT));
         this.§_-Dq§();
      }
      
      private function §_-Dq§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§_-d9§)
         {
            this.§_-uM§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§_-d9§ = [];
      }
      
      public function init(param1:§_-Vj§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§_-014§ = new §_-Fx§(this,param1);
         this.§_-1t§ = this.§_-K§(param1);
         this.§_-UF§ = 0;
         this.§_-mL§ = 0;
         this.§_-eB§ = 0;
         this.§_-9C§ = false;
         this.mReadyToRun = false;
         this.§_-cr§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         §_-pj§ = param1.theme;
         this.§_-00k§ = param1;
         this.§function§ = this.§var §(param1.theme);
         this.§_-9F§ = this.§_-W9§(param1.theme);
         if(this.§function§ && this.§_-9F§)
         {
            this.§_-sY§(param1);
         }
         else
         {
            this.§_-Dx§(param1.theme);
         }
         this.initReplay();
         §_-8r§.init();
      }
      
      protected function initReplay() : void
      {
         this.§_-PZ§ = new §_-Dk§(§_-Mm§.§_-Kw§);
      }
      
      protected function §var §(param1:String) : Boolean
      {
         if(this.§_-3S§)
         {
            return false;
         }
         return true;
      }
      
      protected function §_-W9§(param1:String) : Boolean
      {
         var _loc2_:§_-Qs§ = null;
         if(this.§_-9w§)
         {
            _loc2_ = §_-a0§.§_-00p§(param1);
            if(_loc2_)
            {
               if(_loc2_.§_-Pn§ && !this.§_-9w§.§_-yf§(_loc2_.§_-Pn§))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function §_-Dx§(param1:String) : void
      {
         var _loc2_:§_-Qs§ = null;
         if(this.§_-3S§ && !this.§var §(param1))
         {
            this.§_-3S§.removeEventListener(Event.COMPLETE,this.§_-Ln§);
            this.§_-3S§.removeEventListener(Event.CANCEL,this.§_-5u§);
            this.§_-3S§.addEventListener(Event.COMPLETE,this.§_-Ln§);
            this.§_-3S§.addEventListener(Event.CANCEL,this.§_-5u§);
            this.§_-3S§.§_-9h§(param1);
         }
         if(this.§_-9w§ && !this.§_-W9§(param1))
         {
            this.§_-9w§.removeEventListener(Event.COMPLETE,this.§_-84§);
            this.§_-9w§.removeEventListener(Event.CANCEL,this.§_-fK§);
            this.§_-9w§.addEventListener(Event.COMPLETE,this.§_-84§);
            this.§_-9w§.addEventListener(Event.CANCEL,this.§_-fK§);
            _loc2_ = §_-a0§.§_-00p§(param1);
            if(_loc2_)
            {
               this.§_-9w§.§_-9h§(_loc2_.§_-Pn§);
            }
         }
      }
      
      private function §_-Ln§(param1:Event) : void
      {
         this.§_-3S§.removeEventListener(Event.COMPLETE,this.§_-Ln§);
         this.§_-3S§.removeEventListener(Event.CANCEL,this.§_-5u§);
         this.§function§ = true;
         if(this.§function§ && this.§_-9F§)
         {
            this.§_-sY§(this.§_-00k§);
         }
      }
      
      private function §_-5u§(param1:Event) : void
      {
         this.§_-3S§.removeEventListener(Event.COMPLETE,this.§_-Ln§);
         this.§_-3S§.removeEventListener(Event.CANCEL,this.§_-5u§);
         this.§_-cr§ = true;
      }
      
      private function §_-84§(param1:Event) : void
      {
         this.§_-3S§.removeEventListener(Event.COMPLETE,this.§_-84§);
         this.§_-3S§.removeEventListener(Event.CANCEL,this.§_-fK§);
         this.§_-9F§ = true;
         if(this.§function§ && this.§_-9F§)
         {
            this.§_-sY§(this.§_-00k§);
         }
      }
      
      private function §_-fK§(param1:Event) : void
      {
         this.§_-3S§.removeEventListener(Event.COMPLETE,this.§_-84§);
         this.§_-3S§.removeEventListener(Event.CANCEL,this.§_-fK§);
         this.§_-9F§ = true;
         if(this.§function§ && this.§_-9F§)
         {
            this.§_-sY§(this.§_-00k§);
         }
      }
      
      public function get §_-M3§() : §_-v8§
      {
         return this.§_-BB§;
      }
      
      private function §_-sY§(param1:§_-Vj§) : void
      {
         this.§_-UA§ = false;
         this.§_-Zy§ = false;
         if(§_-0A§.§with§)
         {
            §_-0A§.§with§.speed = 1;
         }
         this.mLevelEngine = new §_-4i§(this);
         this.§_-Jr§ = this.§_-8p§(param1.theme,this.§_-014§.§_-gM§ / §_-NU§,this.§_-M3§,this.§_-1t§.§_-004§());
         this.§_-Jr§.§_-ci§(§_-0X§.§_-U§());
         this.§_-p1§ = this.initLevelObjectManager(param1);
         this.each = this.initLevelSlingshot(param1);
         this.§_-UQ§ = this.§_-5G§(this.§_-Ms§,this.§_-BB§);
         this.§_-1t§.init();
         this.§_-m2§();
         this.loadPreviousReplayData();
         this.mReadyToRun = true;
         if(this.§_-x0§)
         {
            this.§_-x0§.addEventListeners();
         }
      }
      
      protected function loadPreviousReplayData() : void
      {
         if(this.§_-g0§)
         {
            this.§in § = §_-Dk§.§_-sY§(this.§_-g0§);
            this.§in §.speed = 1;
            this.§in §.play();
            this.§_-8w§ = -1000;
            this.§_-g0§ = null;
         }
      }
      
      public function §_-VP§(param1:String) : void
      {
         this.§_-g0§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§in § != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§in §)
         {
            if(param1)
            {
               this.§in §.speed = Math.min(this.§in §.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§in §.speed = Math.max(this.§in §.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§in §)
         {
            this.§in §.speed = 1;
         }
      }
      
      protected function initLevelObjectManager(param1:§_-Vj§) : §_-lp§
      {
         return new §_-lp§(this,param1,new Sprite());
      }
      
      protected function §_-K§(param1:§_-Vj§) : §_-Eu§
      {
         return new §_-Eu§(this,param1);
      }
      
      protected function §_-8p§(param1:String, param2:Number, param3:§_-v8§, param4:Number) : §_-Nu§
      {
         return new §_-Nu§(param1,param2,param3,param4);
      }
      
      protected function initLevelSlingshot(param1:§_-Vj§) : §_-xV§
      {
         return new §_-xV§(this,param1,new Sprite());
      }
      
      protected function §_-5G§(param1:§_-ok§, param2:§_-v8§) : §_-RT§
      {
         return new §_-RT§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = true) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§_-Vj§ = new §_-Vj§();
         _loc3_.§_-Iw§ = -12;
         var _loc4_:§_-z2§;
         (_loc4_ = new §_-z2§()).left = 0;
         _loc4_.top = -§_-Eu§.§_-TD§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §_-Eu§.§_-TD§;
         _loc4_.right = _loc4_.left + §_-Eu§.§_-Z0§;
         _loc4_.y = -13.929;
         _loc4_.x = §_-Eu§.§_-Z0§;
         _loc4_.id = §_-Eu§.§_-iS§;
         _loc3_.§_-K3§.push(_loc4_);
         var _loc5_:§_-z2§;
         (_loc5_ = new §_-z2§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §_-Eu§.§_-Z0§;
         _loc5_.bottom = _loc5_.top + §_-Eu§.§_-TD§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §_-Eu§.§_-Z0§ / 2;
         _loc5_.id = §_-Eu§.§_-qN§;
         _loc3_.§_-K3§.push(_loc5_);
         if(param2)
         {
            this.§_-eR§(_loc3_);
         }
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§_-pj§ != null)
         {
            _loc3_.theme = §_-pj§;
         }
         this.init(_loc3_);
      }
      
      private function §_-CK§() : Number
      {
         this.§_-58§ ^= this.§_-58§ << 21;
         this.§_-58§ ^= this.§_-58§ >>> 35;
         this.§_-58§ ^= this.§_-58§ << 4;
         return this.§_-58§ * (1 / uint.MAX_VALUE);
      }
      
      private function §_-eR§(param1:§_-Vj§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§_-zJ§ = null;
         this.§_-58§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§_-CK§() * 5;
               (_loc5_ = new §_-zJ§()).x = 30 + _loc3_ * 10 + this.§_-CK§() * 9;
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
                  _loc5_.angle = 45 - this.§_-CK§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§_-CK§() * 3 - _loc3_ * 8;
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
                  _loc5_.angle = this.§_-CK§() * 360;
               }
               param1.§_-3P§.push(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      private function §_-rn§() : void
      {
      }
      
      public function §_-m2§() : void
      {
         if(§_-Nu§.§_-H1§)
         {
            this.§_-mF§(this.§_-Jr§.§_-5Y§,false);
         }
         this.§_-mF§(this.§_-UQ§.§_-Lv§(§_-RT§.§_-cE§),false);
         this.§_-mF§(this.§_-UQ§.§_-Lv§(§_-RT§.§_-E6§),true);
         this.§_-mF§(this.§_-UQ§.§_-Lv§(§_-RT§.§_-GD§),true);
         this.§_-mF§(this.§_-p1§.§_-oJ§,true);
         this.§_-mF§(this.each.sprite,true);
         this.§_-mF§(this.§_-UQ§.§_-Lv§(§_-RT§.§_-MU§),true);
         this.§_-mF§(this.§_-Jr§.§_-SG§,false);
         if(§_-Nu§.§_-H1§)
         {
            this.§_-mF§(this.§_-Jr§.§for§,false);
         }
         this.§_-mF§(this.§_-UQ§.§_-Lv§(§_-RT§.§_-Wq§),true);
         if(!§_-4i§.§_-c2§)
         {
         }
      }
      
      private function §_-mF§(param1:Sprite, param2:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(param1);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         param1 /= §_-0X§.§_-Al§;
         param2 /= §_-0X§.§_-Al§;
         _loc3_.x = (param1 / §_-Eu§.§_-Ae§ + this.§_-1t§.§_-a-§ - §_-Eu§.§_-hh§ / §_-Eu§.§_-Ae§) * §_-NU§;
         _loc3_.y = (param2 / §_-Eu§.§_-Ae§ + this.§_-1t§.§_-Wh§ - §_-Eu§.§_-uV§ / §_-Eu§.§_-Ae§) * §_-NU§;
         return _loc3_;
      }
      
      public function §_-FX§(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / §_-NU§ + §_-Eu§.§_-hh§ / §_-Eu§.§_-Ae§ - this.§_-1t§.§_-a-§) * §_-Eu§.§_-Ae§;
         _loc3_.y = (param2 / §_-NU§ + §_-Eu§.§_-uV§ / §_-Eu§.§_-Ae§ - this.§_-1t§.§_-Wh§) * §_-Eu§.§_-Ae§;
         var _loc4_:Number = Math.max(§_-0X§.§_-Al§,§_-0X§.§_-6-§);
         _loc3_.x *= _loc4_;
         _loc3_.y *= _loc4_;
         return _loc3_;
      }
      
      public function §_-3V§(param1:String, param2:Number, param3:Number) : void
      {
         this.§_-p1§.addObject(param1,param2,param3);
      }
      
      public function §_-3y§() : void
      {
         if(this.§_-Ru§)
         {
            this.§_-Ru§.visible = true;
            this.§_-Ru§.alpha = 0;
         }
         this.§_-oa§ = 0;
      }
      
      public function §_-pm§() : void
      {
         this.§_-sq§ = new §_-008§(§_-Yj§.§_-WN§,§_-Yj§.§_-4p§);
      }
      
      public function §_-YC§() : void
      {
         this.§_-sq§ = null;
      }
      
      public function clearLevel() : void
      {
         if(this.§_-Jr§)
         {
            this.§_-Jr§.dispose();
            this.§_-Jr§ = null;
         }
         if(this.§_-p1§)
         {
            this.§_-p1§.dispose();
            this.§_-p1§ = null;
            this.§_-u8§ = null;
         }
         if(this.mLevelEngine)
         {
            if(!this.mLevelEngine.§_-gw§)
            {
            }
            this.mLevelEngine.clear();
            this.mLevelEngine = null;
         }
         if(this.§_-014§)
         {
            this.§_-014§.clear();
            this.§_-014§ = null;
         }
         if(this.each)
         {
            this.each.dispose();
            this.each = null;
         }
         if(this.§_-1t§)
         {
            this.§_-1t§.clear();
            this.§_-1t§ = null;
         }
         if(this.§_-UQ§)
         {
            this.§_-UQ§.dispose();
            this.§_-UQ§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§_-UF§ = 0;
         this.§_-mL§ = 0;
         this.mReadyToRun = false;
         this.§_-9C§ = false;
         this.§_-oa§ = §_-Yj§.§_-NX§;
         if(this.§_-0-q§)
         {
            (this.§_-0-q§ as §_-nH§).§_-te§.x = 0;
            (this.§_-0-q§ as §_-nH§).§_-te§.y = 0;
         }
         if(this.§_-Ru§)
         {
            this.§_-Ru§.visible = false;
         }
         this.§in § = null;
         this.§_-PZ§ = null;
         if(this.§_-3S§)
         {
            this.§_-3S§.removeEventListener(Event.COMPLETE,this.§_-Ln§);
            this.§_-3S§.removeEventListener(Event.CANCEL,this.§_-5u§);
         }
         if(this.§_-9w§)
         {
            this.§_-9w§.removeEventListener(Event.COMPLETE,this.§_-84§);
            this.§_-9w§.removeEventListener(Event.CANCEL,this.§_-fK§);
         }
         this.§_-Dq§();
         if(§_-0A§.§_-bz§)
         {
            §_-0A§.§_-bz§.color = 0;
         }
         if(this.§_-x0§)
         {
            this.§_-x0§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver() : void
      {
      }
      
      public function §_-Nl§() : String
      {
         if(this.§_-PZ§)
         {
            return this.§_-PZ§.toString();
         }
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         if(!this.mReadyToRun || !§_-0A§.§_-bT§())
         {
            return 0;
         }
         if(this.§in § && this.§in §.§_-Ll§)
         {
            return this.§_-zz§(param1,param2,param3);
         }
         return this.§_-3b§(param1,true,param2,param3);
      }
      
      protected function §_-3b§(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         if(this.§_-UA§)
         {
            param1 *= 0.2;
            if(§_-0A§.§with§)
            {
               §_-0A§.§with§.speed = 0.2;
            }
         }
         var _loc5_:Number = 0;
         this.§_-mL§ += param1;
         if(param3)
         {
            this.§_-UF§ += param1;
            _loc5_ = this.mLevelEngine.§_-Yc§(this.§_-UF§);
            this.each.update(param1,param4);
            this.§_-UF§ = _loc5_;
         }
         else
         {
            this.§_-p1§.§_-Q5§();
            this.§_-UF§ = 0;
         }
         if(param2)
         {
            this.§_-ca§(param1,_loc5_);
         }
         return param1;
      }
      
      private function §_-zz§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc5_:Number = NaN;
         var _loc4_:Number = §_-4i§.§_-RH§ * 1000;
         if(this.§in §)
         {
            param1 *= this.§in §.speed;
            _loc5_ = this.§_-mL§ + param1;
            while(this.§_-mL§ + _loc4_ < _loc5_)
            {
               if(this.§_-mL§ + _loc4_ > this.§_-8w§)
               {
                  this.§in §.step(this);
                  this.§_-8w§ += _loc4_;
               }
               this.§_-3b§(_loc4_,false,param2,param3);
            }
            if(_loc5_ > this.§_-8w§ + _loc4_)
            {
               this.§in §.step(this);
               this.§_-8w§ += _loc4_;
            }
            if(this.§_-mL§ < _loc5_)
            {
               this.§_-3b§(_loc5_ - this.§_-mL§,true,param2,param3);
            }
            return param1;
         }
         return this.§_-3b§(_loc4_,true,param2,param3);
      }
      
      private function §_-ca§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.§_-Jr§.update(param1);
         this.§_-p1§.§_-jz§(param1,param2);
         this.§_-ED§();
         if(this.§_-oa§ < §_-Yj§.§_-NX§)
         {
            this.§_-oa§ += param1;
            _loc3_ = §_-Yj§.§_-NX§ / 2;
            _loc4_ = (-Math.abs(this.§_-oa§ - _loc3_) + _loc3_) * (§_-Yj§.§_-XJ§ / _loc3_);
            if(this.§_-Ru§)
            {
               this.§_-Ru§.alpha = _loc4_;
            }
         }
         else if(this.§_-Ru§)
         {
            this.§_-Ru§.visible = false;
         }
         if(this.§_-sq§)
         {
            if(!this.§_-sq§.§_-JT§(this.§_-1t§,param1))
            {
               this.§_-YC§();
            }
         }
         this.§_-1t§.§_-po§(param1);
         this.mLevelEngine.§_-HH§();
         this.§_-UQ§.update(param1);
      }
      
      public function §_-00Z§(param1:Number) : void
      {
         this.objects.§_-Q5§();
         this.objects.§_-ya§(param1 * 1000);
         this.§_-1I§();
      }
      
      public function §_-ED§() : void
      {
         var _loc1_:§_-Cb§ = null;
         if(this.§_-mL§ > this.§_-eB§ + 1000 / 30)
         {
            if(this.§_-lt§ != null)
            {
               for each(_loc1_ in this.§_-lt§)
               {
                  _loc1_.addTrail();
               }
            }
            this.§_-eB§ = this.§_-mL§;
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§_-Cb§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.§_-p1§.isPigsAlive(true))
            {
               _loc2_ = this.§_-p1§.§_-Bz§(true);
               _loc2_.§_-Rh§.mTryToScream = §_-8E§.§_-b7§;
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§_-p1§.§_-yX§());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            if(this.§_-p1§.isPigsAlive(true))
            {
               _loc2_ = this.§_-p1§.§_-Bz§(true);
               _loc2_.§_-Rh§.mTryToBlink = §_-8E§.§_-Ra§;
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§_-p1§.§_-yX§());
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §_-hQ§.§_-An§;
         }
         §_-8r§.addScore(param1,param2);
         this.§_-x0§.addScore(param1);
         if(param3 && param1 > 0 && !this.§_-Zy§)
         {
            this.§_-2V§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §_-2V§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §_-hQ§.§_-9J§;
         }
         this.§_-UQ§.addParticle(§_-hQ§.§_-Mq§,§_-RT§.§_-Wq§,§_-hQ§.§_-oo§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §_-32§(param1:§_-Cb§) : void
      {
         if(this.§_-lt§ == null)
         {
            this.§_-lt§ = new Array();
         }
         this.§_-lt§.push(param1);
      }
      
      public function §_-jT§() : void
      {
         this.each.§_-jT§();
         this.§_-p1§.mSardineCanAdded = true;
         this.§_-Zy§ = true;
      }
      
      public function §_-qW§(param1:§_-Cb§) : void
      {
         this.§_-UQ§.§_-Cv§(§_-RT§.§_-cE§);
         if(this.§_-lt§.indexOf(param1) >= 0)
         {
            this.§_-lt§.splice(this.§_-lt§.indexOf(param1),1);
         }
         if(this.§_-lt§.length == 0)
         {
            this.§_-lt§ = null;
         }
      }
      
      public function §_-eY§(param1:§_-ZK§, param2:Number, param3:Number) : void
      {
         this.§_-u8§ = this.§_-p1§.addObject(param1.name,param1.mX,param1.mY,0,true,false,true,param1.scale);
         var _loc4_:Number = param1.name.toUpperCase() == "BIRD_GREEN" ? Number(§_-xV§.§_-0-6§) : Number(§_-xV§.§_-ul§);
         if(param1.§_-RX§ > 1)
         {
            this.§_-u8§.§_-oT§(param1.§_-RX§);
            this.§_-u8§.§_-Rh§.§_-xX§();
         }
         if(param1.§_-Dw§ != 0)
         {
            _loc4_ = param1.§_-Dw§;
         }
         var _loc5_:Number = -_loc4_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc6_:Number = _loc4_ * param2 * Math.sin(param3 / (180 / Math.PI));
         this.§_-u8§.§_-fC§(new b2Vec2(_loc5_,_loc6_),false,true);
         this.camera.§_-LR§(§_-Eu§.§_-dc§);
         if(this.§_-PZ§)
         {
            this.§_-PZ§.§_-eY§(this.mLevelEngine.currentStep,param1.mX,param1.mY,param2,param3);
         }
      }
      
      public function activatePowerup() : void
      {
         this.§_-9C§ = true;
      }
      
      private function §_-1I§() : void
      {
         if(!this.§_-9C§)
         {
            return;
         }
         this.§_-9C§ = false;
         if(this.activeObject is §_-ON§ && !(this.activeObject as §_-ON§).§null§)
         {
            if(this.activeObject.activateSpecialPower(this.§_-Jb§))
            {
               this.§_-rk§ = true;
            }
         }
         else
         {
            this.§_-p1§.§_-ZY§();
         }
         if(this.§_-PZ§)
         {
            this.§_-PZ§.§_-Zn§(this.mLevelEngine.currentStep);
         }
      }
      
      public function §_-vo§() : void
      {
         this.§_-p1§.§_-vo§();
      }
      
      public function §_-ms§() : void
      {
         this.§_-p1§.§_-PH§();
      }
      
      public function §_-DL§() : §_-Vj§
      {
         var _loc1_:§_-Vj§ = new §_-Vj§();
         _loc1_.§_-pr§ = this.§_-00k§.§_-pr§;
         _loc1_.§_-pL§ = this.§_-00k§.§_-pL§;
         this.§_-1t§.§_-NY§(_loc1_);
         this.§_-p1§.§_-Or§(_loc1_);
         this.each.§_-en§(_loc1_);
         _loc1_.theme = this.§_-Jr§.§_-tA§();
         return _loc1_;
      }
      
      public function §_-Cw§(param1:int) : void
      {
         this.§_-00k§.§_-pL§ = param1;
      }
      
      public function §_-00R§(param1:int) : void
      {
         this.§_-00k§.§_-pr§ = param1;
      }
      
      public function §_-006§(param1:Number, param2:Number) : void
      {
         if(this.§_-MR§)
         {
            this.§_-MR§.§_-m0§(param1,param2);
         }
         if(this.§_-1t§)
         {
            this.§_-1t§.§_-po§(0);
         }
      }
      
      public function get §_-mT§() : §_-Vj§
      {
         return this.§_-00k§;
      }
      
      public function get §_-Jb§() : §_-lp§
      {
         return this.§_-p1§;
      }
   }
}
