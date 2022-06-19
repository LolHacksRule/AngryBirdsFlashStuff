package §_-Kz§
{
   import §_-7T§.§_-yJ§;
   import §_-94§.§_-si§;
   import §_-DN§.§_-2X§;
   import §_-F2§.b2Vec2;
   import §_-GY§.DisplayObject;
   import §_-GY§.Sprite;
   import §_-H-§.§_-qB§;
   import §_-IH§.§_-7l§;
   import §_-MP§.§_-BI§;
   import §_-MP§.§_-DW§;
   import §_-MP§.§_-N5§;
   import §_-MP§.§_-vz§;
   import §_-Me§.§_-61§;
   import §_-Ny§.§_-Sv§;
   import §_-Ob§.§_-4y§;
   import §_-Ob§.§_-NB§;
   import §_-Sr§.§_-Jq§;
   import §_-Sr§.§_-K-§;
   import §_-Ye§.§_-cP§;
   import §_-aA§.§_-I0§;
   import §_-fr§.§ else§;
   import §_-fr§.§_-FX§;
   import §_-fr§.§_-ZS§;
   import §_-fr§.§_-e9§;
   import §_-my§.§_-DQ§;
   import §_-my§.§_-Oi§;
   import §_-my§.§_-V0§;
   import §_-ux§.§_-im§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §_-c3§
   {
      
      public static const §_-6Y§:Number = §_-si§.§_-dI§;
      
      public static const §_-j0§:Number = §_-si§.§_-0R§;
      
      public static const §_-GA§:Number = 1 / 20;
      
      public static const §_-PL§:Number = §_-si§.§_-0R§ * §_-GA§;
      
      public static const §_-xh§:Number = §_-6Y§ * §_-GA§;
      
      public static const §_-a-§:§_-61§ = new §_-61§(13 - 3);
      
      protected static var §_-hL§:String = §_-BI§.§_-Hg§;
       
      
      protected var §_-cm§:§ else§;
      
      private var §_-0v§:§_-FX§;
      
      private var §_-y0§:Array = null;
      
      private var §_-o8§:§_-7l§;
      
      public var mLevelEngine:§_-Cg§;
      
      private var §_-yw§:§_-bo§;
      
      private var §_-Hl§:§_-yJ§;
      
      private var §_-ET§:§_-hD§;
      
      private var §_-zC§:§_-Jq§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §_-YV§:Boolean = false;
      
      private var §_-n1§:Boolean = false;
      
      private var §_-nK§:Boolean = false;
      
      public var §_-8D§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §_-PU§:Number;
      
      public var §_-sG§:Number;
      
      private var §_-qj§:Number;
      
      public var §_-8l§:§_-DW§;
      
      public var §_-qF§:Boolean = false;
      
      private var §_-LJ§:§_-vp§;
      
      private var §_-XZ§:Sprite;
      
      private var §_-kZ§:§_-BI§;
      
      private var §_-co§:§_-im§ = null;
      
      private var §_-He§:EventDispatcher;
      
      private var §_-8w§:Array;
      
      private var §_-a0§:Array;
      
      private var §_-Pu§:§_-cP§;
      
      private var §_-bc§:§_-2X§;
      
      private var §_-B1§:§_-V0§;
      
      private var §_-Ly§:§_-Oi§;
      
      private var §_-lA§:§_-DQ§;
      
      private var §_-Cl§:§_-DQ§;
      
      private var §_-YJ§:§_-DQ§;
      
      private var mStage:Stage;
      
      private var §_-Jt§:§_-ID§;
      
      protected var §_-iZ§:§_-qB§;
      
      protected var §_-ih§:§_-qB§;
      
      protected var §_-1P§:Number = 0.0;
      
      protected var §_-D§:String;
      
      private var §_-fZ§:Boolean;
      
      private var §_-Lq§:Boolean;
      
      public var §_-hc§:Boolean;
      
      private var §_-Ax§:uint = 1.417339207E9;
      
      public function §_-c3§(param1:Stage)
      {
         this.§_-a0§ = [];
         super();
         this.§_-He§ = new EventDispatcher();
         this.§_-8l§ = new §_-DW§();
         this.mStage = param1;
         this.§_-B1§ = §_-V0§.§_-0H§;
         this.§_-Ly§ = this.initAnimationManager(this.§_-B1§);
         this.§_-lA§ = this.§_-B§();
         this.§_-Cl§ = this.§_-ww§();
         this.§_-YJ§ = this.§_-r-§();
         var _loc2_:Stage3D = param1.stage3Ds[0];
         this.§_-Pu§ = new §_-cP§(§_-vp§,param1,new Rectangle(0,0,§_-si§.§_-dI§,§_-si§.§_-0R§),_loc2_);
         _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§_-yF§,false,0,true);
         this.§_-Pu§.§_-gS§ = false;
         this.§_-Pu§.enableErrorChecking = false;
         this.§_-Pu§.§_-oq§ = 2;
         this.§_-Pu§.§_-BA§();
      }
      
      public static function §_-DI§(param1:§_-FX§, param2:§_-FX§) : Number
      {
         var _loc3_:Number = param1.§_-he§ - param2.§_-he§;
         var _loc4_:Number = param1.§_-JY§ - param2.§_-JY§;
         return §_-FJ§(_loc3_,_loc4_);
      }
      
      public static function §_-FJ§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         if(!this.§_-XZ§ && this.§_-os§)
         {
            this.§_-XZ§ = this.§_-LJ§.§_-YF§;
         }
         return this.§_-XZ§;
      }
      
      public function get §_-os§() : Sprite
      {
         if(!this.§_-LJ§)
         {
            this.§_-LJ§ = this.§_-Pu§.§_-HV§ as §_-vp§;
            this.§_-LJ§.§_-6q§ = false;
         }
         return this.§_-LJ§;
      }
      
      private function get §_-E4§() : DisplayObject
      {
         if(this.§_-os§)
         {
            return (this.§_-os§ as §_-vp§).§_-E4§;
         }
         return null;
      }
      
      public function get §_-oR§() : §_-Oi§
      {
         return this.§_-Ly§;
      }
      
      public function get §_-3q§() : §_-V0§
      {
         return this.§_-B1§;
      }
      
      public function get camera() : §_-yJ§
      {
         return this.§_-Hl§;
      }
      
      public function get objects() : § else§
      {
         return this.§_-cm§;
      }
      
      public function get particles() : §_-Jq§
      {
         return this.§_-zC§;
      }
      
      public function get background() : §_-7l§
      {
         return this.§_-o8§;
      }
      
      public function get slingshot() : §_-hD§
      {
         return this.§_-ET§;
      }
      
      public function get activeObject() : §_-FX§
      {
         return this.§_-0v§;
      }
      
      public function get §_-6X§() : §_-bo§
      {
         return this.§_-yw§;
      }
      
      public function get stage() : Stage
      {
         return this.mStage;
      }
      
      public function get §_-St§() : §_-DQ§
      {
         return this.§_-YJ§;
      }
      
      protected function get §_-Cz§() : §_-DQ§
      {
         return this.§_-lA§;
      }
      
      public function set activeObject(param1:§_-FX§) : void
      {
         this.§_-0v§ = param1;
      }
      
      public function set §_-54§(param1:Boolean) : void
      {
         this.§_-Lq§ = param1;
      }
      
      protected function §_-B§() : §_-DQ§
      {
         return null;
      }
      
      protected function §_-ww§() : §_-DQ§
      {
         return null;
      }
      
      protected function §_-r-§() : §_-DQ§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§_-V0§) : §_-Oi§
      {
         return new §_-Oi§(param1);
      }
      
      public function §_-2c§(param1:Boolean) : void
      {
         if(§_-cP§.§_-004§)
         {
            if(param1)
            {
               §_-cP§.§_-004§.start();
            }
            else
            {
               §_-cP§.§_-004§.stop();
               §_-cP§.§_-004§.color = 0;
            }
         }
      }
      
      public function §_-bY§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function §_-Mr§(param1:§_-im§) : void
      {
         if(this.§_-co§ != null)
         {
            this.§_-co§.removeEventListeners();
         }
         this.§_-co§ = param1;
         if(this.mReadyToRun)
         {
            this.§_-co§.addEventListeners();
         }
      }
      
      public function §_-zg§() : §_-qB§
      {
         return this.§_-iZ§;
      }
      
      public function §_-rX§(param1:§_-2X§, param2:Array, param3:Function) : void
      {
         this.§_-bc§ = param1;
         var _loc4_:int = this.§_-bc§.§_-mL§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§_-B1§.§_-Uj§(this.§_-bc§.§_-4n§(_loc5_));
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§_-He§.addEventListener(Event.INIT,param3);
            this.§_-a0§.push(param3);
         }
         if(this.§_-sm§(param2))
         {
            this.§_-OD§();
         }
      }
      
      private function §_-sm§(param1:Array) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.§_-B1§.§_-Q5§())
         {
            _loc2_ = this.§_-B1§.§_-M3§ / 1000;
            _loc3_ = this.§_-B1§.§_-Nj§ / 1000;
            §_-I0§.log("\n\nMain texture manager memory usage:\n   textures " + _loc2_ + " kilobytes\n   bitmaps " + _loc3_ + " kilobytes\n\n");
            this.initializeAnimations(param1);
            return true;
         }
         this.§_-8w§ = param1.concat();
         return false;
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         this.§_-Ly§.initializeAnimations(param1);
      }
      
      private function §_-yF§(param1:Event) : void
      {
         this.§_-B1§.§_-3-§();
         if(this.§_-Cz§ && this.§_-Cz§.§_-3q§)
         {
            this.§_-Cz§.§_-3q§.§_-3-§();
         }
         if(this.§_-St§ && this.§_-St§.§_-3q§)
         {
            this.§_-St§.§_-3q§.§_-3-§();
         }
         if(this.§_-8w§)
         {
            this.§_-sm§(this.§_-8w§);
            this.§_-8w§ = null;
            this.§_-OD§();
         }
         if(this.§_-co§ != null && this.mReadyToRun)
         {
            this.§_-co§.addEventListeners();
         }
         if(this.§_-lA§)
         {
            this.§_-lA§.§_-Q5§();
         }
         if(this.§_-YJ§)
         {
            if(this.§_-YJ§.§_-3q§)
            {
               this.§_-YJ§.§_-3q§.§_-3-§();
               this.§_-YJ§.§_-Q5§();
            }
         }
      }
      
      private function §_-OD§() : void
      {
         this.§_-He§.dispatchEvent(new Event(Event.INIT));
         this.§_-Ig§();
      }
      
      private function §_-Ig§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§_-a0§)
         {
            this.§_-He§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§_-a0§ = [];
      }
      
      public function init(param1:§_-BI§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§_-yw§ = new §_-bo§(this,param1);
         this.§_-Hl§ = this.§_-XU§(param1);
         this.§_-PU§ = 0;
         this.§_-sG§ = 0;
         this.§_-qj§ = 0;
         this.§_-fZ§ = false;
         this.mReadyToRun = false;
         this.§_-YV§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         §_-hL§ = param1.theme;
         this.§_-kZ§ = param1;
         this.§_-n1§ = this.§_-SD§(param1.theme);
         this.§_-nK§ = this.§_-yi§(param1.theme);
         if(this.§_-n1§ && this.§_-nK§)
         {
            this.§_-9M§(param1);
         }
         else
         {
            this.§_-L9§(param1.theme);
         }
         this.initReplay();
         §_-bv§.init();
      }
      
      protected function initReplay() : void
      {
         this.§_-iZ§ = new §_-qB§(§_-N5§.§_-sI§);
      }
      
      protected function §_-SD§(param1:String) : Boolean
      {
         if(this.§_-lA§)
         {
            return false;
         }
         return true;
      }
      
      protected function §_-yi§(param1:String) : Boolean
      {
         var _loc2_:§_-NB§ = null;
         if(this.§_-Cl§)
         {
            _loc2_ = §_-4y§.§_-5g§(param1);
            if(_loc2_)
            {
               if(_loc2_.§_-bx§ && !this.§_-Cl§.§_-zT§(_loc2_.§_-bx§))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function §_-L9§(param1:String) : void
      {
         var _loc2_:§_-NB§ = null;
         if(this.§_-lA§ && !this.§_-SD§(param1))
         {
            this.§_-lA§.removeEventListener(Event.COMPLETE,this.§_-Z9§);
            this.§_-lA§.removeEventListener(Event.CANCEL,this.§_-qc§);
            this.§_-lA§.addEventListener(Event.COMPLETE,this.§_-Z9§);
            this.§_-lA§.addEventListener(Event.CANCEL,this.§_-qc§);
            this.§_-lA§.§_-c-§(param1);
         }
         if(this.§_-Cl§ && !this.§_-yi§(param1))
         {
            this.§_-Cl§.removeEventListener(Event.COMPLETE,this.§_-CG§);
            this.§_-Cl§.removeEventListener(Event.CANCEL,this.§_-yq§);
            this.§_-Cl§.addEventListener(Event.COMPLETE,this.§_-CG§);
            this.§_-Cl§.addEventListener(Event.CANCEL,this.§_-yq§);
            _loc2_ = §_-4y§.§_-5g§(param1);
            if(_loc2_)
            {
               this.§_-Cl§.§_-c-§(_loc2_.§_-bx§);
            }
         }
      }
      
      private function §_-Z9§(param1:Event) : void
      {
         this.§_-lA§.removeEventListener(Event.COMPLETE,this.§_-Z9§);
         this.§_-lA§.removeEventListener(Event.CANCEL,this.§_-qc§);
         this.§_-n1§ = true;
         if(this.§_-n1§ && this.§_-nK§)
         {
            this.§_-9M§(this.§_-kZ§);
         }
      }
      
      private function §_-qc§(param1:Event) : void
      {
         this.§_-lA§.removeEventListener(Event.COMPLETE,this.§_-Z9§);
         this.§_-lA§.removeEventListener(Event.CANCEL,this.§_-qc§);
         this.§_-YV§ = true;
      }
      
      private function §_-CG§(param1:Event) : void
      {
         this.§_-lA§.removeEventListener(Event.COMPLETE,this.§_-CG§);
         this.§_-lA§.removeEventListener(Event.CANCEL,this.§_-yq§);
         this.§_-nK§ = true;
         if(this.§_-n1§ && this.§_-nK§)
         {
            this.§_-9M§(this.§_-kZ§);
         }
      }
      
      private function §_-yq§(param1:Event) : void
      {
         this.§_-lA§.removeEventListener(Event.COMPLETE,this.§_-CG§);
         this.§_-lA§.removeEventListener(Event.CANCEL,this.§_-yq§);
         this.§_-nK§ = true;
         if(this.§_-n1§ && this.§_-nK§)
         {
            this.§_-9M§(this.§_-kZ§);
         }
      }
      
      public function get §_-q0§() : §_-V0§
      {
         return this.§_-B1§;
      }
      
      private function §_-9M§(param1:§_-BI§) : void
      {
         this.§_-Lq§ = false;
         this.§_-hc§ = false;
         if(§_-cP§.§_-Nz§)
         {
            §_-cP§.§_-Nz§.speed = 1;
         }
         this.mLevelEngine = new §_-Cg§(this);
         this.§_-o8§ = this.§_-Vg§(param1.theme,this.§_-yw§.§_-Ku§ / §_-GA§,this.§_-q0§,this.§_-Hl§.§_-H9§());
         this.§_-o8§.§_-uY§(§_-si§.§_-fJ§());
         this.§_-cm§ = this.initLevelObjectManager(param1);
         this.§_-ET§ = this.initLevelSlingshot(param1);
         this.§_-zC§ = this.§_-sz§(this.§_-Ly§,this.§_-B1§);
         this.§_-Hl§.init();
         this.§_-uM§();
         this.loadPreviousReplayData();
         this.mReadyToRun = true;
         if(this.§_-co§)
         {
            this.§_-co§.addEventListeners();
         }
      }
      
      protected function loadPreviousReplayData() : void
      {
         if(this.§_-D§)
         {
            this.§_-ih§ = §_-qB§.§_-9M§(this.§_-D§);
            this.§_-ih§.speed = 1;
            this.§_-ih§.play();
            this.§_-1P§ = -1000;
            this.§_-D§ = null;
         }
      }
      
      public function §_-es§(param1:String) : void
      {
         this.§_-D§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§_-ih§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§_-ih§)
         {
            if(param1)
            {
               this.§_-ih§.speed = Math.min(this.§_-ih§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§_-ih§.speed = Math.max(this.§_-ih§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§_-ih§)
         {
            this.§_-ih§.speed = 1;
         }
      }
      
      protected function initLevelObjectManager(param1:§_-BI§) : § else§
      {
         return new § else§(this,param1,new Sprite());
      }
      
      protected function §_-XU§(param1:§_-BI§) : §_-yJ§
      {
         return new §_-yJ§(this,param1);
      }
      
      protected function §_-Vg§(param1:String, param2:Number, param3:§_-V0§, param4:Number) : §_-7l§
      {
         return new §_-7l§(param1,param2,param3,param4);
      }
      
      protected function initLevelSlingshot(param1:§_-BI§) : §_-hD§
      {
         return new §_-hD§(this,param1,new Sprite());
      }
      
      protected function §_-sz§(param1:§_-Oi§, param2:§_-V0§) : §_-Jq§
      {
         return new §_-Jq§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = true) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§_-BI§ = new §_-BI§();
         _loc3_.§_-kI§ = -12;
         var _loc4_:§_-vz§;
         (_loc4_ = new §_-vz§()).left = 0;
         _loc4_.top = -§_-yJ§.§_-Sc§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §_-yJ§.§_-Sc§;
         _loc4_.right = _loc4_.left + §_-yJ§.§_-20§;
         _loc4_.y = -13.929;
         _loc4_.x = §_-yJ§.§_-20§;
         _loc4_.id = §_-yJ§.§_-UV§;
         _loc3_.§_-nc§.push(_loc4_);
         var _loc5_:§_-vz§;
         (_loc5_ = new §_-vz§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §_-yJ§.§_-20§;
         _loc5_.bottom = _loc5_.top + §_-yJ§.§_-Sc§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §_-yJ§.§_-20§ / 2;
         _loc5_.id = §_-yJ§.§_-Mx§;
         _loc3_.§_-nc§.push(_loc5_);
         if(param2)
         {
            this.§_-V1§(_loc3_);
         }
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§_-hL§ != null)
         {
            _loc3_.theme = §_-hL§;
         }
         this.init(_loc3_);
      }
      
      private function §_-83§() : Number
      {
         this.§_-Ax§ ^= this.§_-Ax§ << 21;
         this.§_-Ax§ ^= this.§_-Ax§ >>> 35;
         this.§_-Ax§ ^= this.§_-Ax§ << 4;
         return this.§_-Ax§ * (1 / uint.MAX_VALUE);
      }
      
      private function §_-V1§(param1:§_-BI§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§_-Sv§ = null;
         this.§_-Ax§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§_-83§() * 5;
               (_loc5_ = new §_-Sv§()).x = 30 + _loc3_ * 10 + this.§_-83§() * 9;
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
                  _loc5_.angle = 45 - this.§_-83§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§_-83§() * 3 - _loc3_ * 8;
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
                  _loc5_.angle = this.§_-83§() * 360;
               }
               param1.§_-uU§.push(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      private function §_-rG§() : void
      {
      }
      
      public function §_-uM§() : void
      {
         if(§_-7l§.§_-TP§)
         {
            this.§_-vS§(this.§_-o8§.§_-WP§,false);
         }
         this.§_-vS§(this.§_-zC§.§_-Ah§(§_-Jq§.§_-8E§),false);
         this.§_-vS§(this.§_-zC§.§_-Ah§(§_-Jq§.§_-Ml§),true);
         this.§_-vS§(this.§_-zC§.§_-Ah§(§_-Jq§.§_-6O§),true);
         this.§_-vS§(this.§_-cm§.§_-Sa§,true);
         this.§_-vS§(this.§_-ET§.sprite,true);
         this.§_-vS§(this.§_-zC§.§_-Ah§(§_-Jq§.§_-0-§),true);
         this.§_-vS§(this.§_-o8§.§_-er§,false);
         if(§_-7l§.§_-TP§)
         {
            this.§_-vS§(this.§_-o8§.§_-Jm§,false);
         }
         this.§_-vS§(this.§_-zC§.§_-Ah§(§_-Jq§.§_-rR§),true);
         if(!§_-Cg§.§_-S-§)
         {
         }
      }
      
      private function §_-vS§(param1:Sprite, param2:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(param1);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         param1 /= §_-si§.§_-gP§;
         param2 /= §_-si§.§_-gP§;
         _loc3_.x = (param1 / §_-yJ§.§_-rO§ + this.§_-Hl§.§_-wC§ - §_-yJ§.§_-gB§ / §_-yJ§.§_-rO§) * §_-GA§;
         _loc3_.y = (param2 / §_-yJ§.§_-rO§ + this.§_-Hl§.§_-CV§ - §_-yJ§.§_-Fo§ / §_-yJ§.§_-rO§) * §_-GA§;
         return _loc3_;
      }
      
      public function §_-ms§(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / §_-GA§ + §_-yJ§.§_-gB§ / §_-yJ§.§_-rO§ - this.§_-Hl§.§_-wC§) * §_-yJ§.§_-rO§;
         _loc3_.y = (param2 / §_-GA§ + §_-yJ§.§_-Fo§ / §_-yJ§.§_-rO§ - this.§_-Hl§.§_-CV§) * §_-yJ§.§_-rO§;
         var _loc4_:Number = Math.max(§_-si§.§_-gP§,§_-si§.§_-3a§);
         _loc3_.x *= _loc4_;
         _loc3_.y *= _loc4_;
         return _loc3_;
      }
      
      public function §_-FN§(param1:String, param2:Number, param3:Number) : void
      {
         this.§_-cm§.addObject(param1,param2,param3);
      }
      
      public function §_-ek§() : void
      {
         if(this.§_-E4§)
         {
            this.§_-E4§.visible = true;
            this.§_-E4§.alpha = 0;
         }
         this.§_-8D§ = 0;
      }
      
      public function §_-Ij§() : void
      {
         this.§_-Jt§ = new §_-ID§(§_-kK§.§_-U0§,§_-kK§.§_-XR§);
      }
      
      public function §_-Od§() : void
      {
         this.§_-Jt§ = null;
      }
      
      public function clearLevel() : void
      {
         if(this.§_-o8§)
         {
            this.§_-o8§.dispose();
            this.§_-o8§ = null;
         }
         if(this.§_-cm§)
         {
            this.§_-cm§.dispose();
            this.§_-cm§ = null;
            this.§_-0v§ = null;
         }
         if(this.mLevelEngine)
         {
            if(!this.mLevelEngine.§_-LC§)
            {
            }
            this.mLevelEngine.clear();
            this.mLevelEngine = null;
         }
         if(this.§_-yw§)
         {
            this.§_-yw§.clear();
            this.§_-yw§ = null;
         }
         if(this.§_-ET§)
         {
            this.§_-ET§.dispose();
            this.§_-ET§ = null;
         }
         if(this.§_-Hl§)
         {
            this.§_-Hl§.clear();
            this.§_-Hl§ = null;
         }
         if(this.§_-zC§)
         {
            this.§_-zC§.dispose();
            this.§_-zC§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§_-PU§ = 0;
         this.§_-sG§ = 0;
         this.mReadyToRun = false;
         this.§_-fZ§ = false;
         this.§_-8D§ = §_-kK§.§_-xS§;
         if(this.§_-os§)
         {
            (this.§_-os§ as §_-vp§).§_-zx§.x = 0;
            (this.§_-os§ as §_-vp§).§_-zx§.y = 0;
         }
         if(this.§_-E4§)
         {
            this.§_-E4§.visible = false;
         }
         this.§_-ih§ = null;
         this.§_-iZ§ = null;
         if(this.§_-lA§)
         {
            this.§_-lA§.removeEventListener(Event.COMPLETE,this.§_-Z9§);
            this.§_-lA§.removeEventListener(Event.CANCEL,this.§_-qc§);
         }
         if(this.§_-Cl§)
         {
            this.§_-Cl§.removeEventListener(Event.COMPLETE,this.§_-CG§);
            this.§_-Cl§.removeEventListener(Event.CANCEL,this.§_-yq§);
         }
         this.§_-Ig§();
         if(§_-cP§.§_-004§)
         {
            §_-cP§.§_-004§.color = 0;
         }
         if(this.§_-co§)
         {
            this.§_-co§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver() : void
      {
      }
      
      public function §_-lb§() : String
      {
         if(this.§_-iZ§)
         {
            return this.§_-iZ§.toString();
         }
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         if(!this.mReadyToRun || !§_-cP§.§_-Te§())
         {
            return 0;
         }
         if(this.§_-ih§ && this.§_-ih§.§_-96§)
         {
            return this.§_-01§(param1,param2,param3);
         }
         return this.§_-Vf§(param1,true,param2,param3);
      }
      
      protected function §_-Vf§(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         if(this.§_-Lq§)
         {
            param1 *= 0.2;
            if(§_-cP§.§_-Nz§)
            {
               §_-cP§.§_-Nz§.speed = 0.2;
            }
         }
         var _loc5_:Number = 0;
         this.§_-sG§ += param1;
         if(param3)
         {
            this.§_-PU§ += param1;
            _loc5_ = this.mLevelEngine.§_-7i§(this.§_-PU§);
            this.§_-ET§.update(param1,param4);
            this.§_-PU§ = _loc5_;
         }
         else
         {
            this.§_-cm§.§_-X1§();
            this.§_-PU§ = 0;
         }
         if(param2)
         {
            this.§_-fY§(param1,_loc5_);
         }
         return param1;
      }
      
      private function §_-01§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc5_:Number = NaN;
         var _loc4_:Number = §_-Cg§.§_-00H§ * 1000;
         if(this.§_-ih§)
         {
            param1 *= this.§_-ih§.speed;
            _loc5_ = this.§_-sG§ + param1;
            while(this.§_-sG§ + _loc4_ < _loc5_)
            {
               if(this.§_-sG§ + _loc4_ > this.§_-1P§)
               {
                  this.§_-ih§.step(this);
                  this.§_-1P§ += _loc4_;
               }
               this.§_-Vf§(_loc4_,false,param2,param3);
            }
            if(_loc5_ > this.§_-1P§ + _loc4_)
            {
               this.§_-ih§.step(this);
               this.§_-1P§ += _loc4_;
            }
            if(this.§_-sG§ < _loc5_)
            {
               this.§_-Vf§(_loc5_ - this.§_-sG§,true,param2,param3);
            }
            return param1;
         }
         return this.§_-Vf§(_loc4_,true,param2,param3);
      }
      
      private function §_-fY§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.§_-o8§.update(param1);
         this.§_-cm§.§_-J9§(param1,param2);
         this.§_-0P§();
         if(this.§_-8D§ < §_-kK§.§_-xS§)
         {
            this.§_-8D§ += param1;
            _loc3_ = §_-kK§.§_-xS§ / 2;
            _loc4_ = (-Math.abs(this.§_-8D§ - _loc3_) + _loc3_) * (§_-kK§.§_-L2§ / _loc3_);
            if(this.§_-E4§)
            {
               this.§_-E4§.alpha = _loc4_;
            }
         }
         else if(this.§_-E4§)
         {
            this.§_-E4§.visible = false;
         }
         if(this.§_-Jt§)
         {
            if(!this.§_-Jt§.§_-T4§(this.§_-Hl§,param1))
            {
               this.§_-Od§();
            }
         }
         this.§_-Hl§.§_-Gg§(param1);
         this.mLevelEngine.§_-od§();
         this.§_-zC§.update(param1);
      }
      
      public function §_-oU§(param1:Number) : void
      {
         this.objects.§_-X1§();
         this.objects.§_-QP§(param1 * 1000);
         this.§_-ov§();
      }
      
      public function §_-0P§() : void
      {
         var _loc1_:§_-FX§ = null;
         if(this.§_-sG§ > this.§_-qj§ + 1000 / 30)
         {
            if(this.§_-y0§ != null)
            {
               for each(_loc1_ in this.§_-y0§)
               {
                  _loc1_.addTrail();
               }
            }
            this.§_-qj§ = this.§_-sG§;
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§_-FX§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.§_-cm§.isPigsAlive(true))
            {
               _loc2_ = this.§_-cm§.§_-c4§(true);
               _loc2_.§_-9G§.mTryToScream = §_-e9§.§_-0-X§;
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§_-cm§.§_-m5§());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            if(this.§_-cm§.isPigsAlive(true))
            {
               _loc2_ = this.§_-cm§.§_-c4§(true);
               _loc2_.§_-9G§.mTryToBlink = §_-e9§.§finally§;
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§_-cm§.§_-m5§());
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §_-K-§.§_-CR§;
         }
         §_-bv§.addScore(param1,param2);
         this.§_-co§.addScore(param1);
         if(param3 && param1 > 0 && !this.§_-hc§)
         {
            this.§_-8U§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §_-8U§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §_-K-§.§_-TD§;
         }
         this.§_-zC§.addParticle(§_-K-§.§_-3J§,§_-Jq§.§_-rR§,§_-K-§.§_-XL§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §_-0Y§(param1:§_-FX§) : void
      {
         if(this.§_-y0§ == null)
         {
            this.§_-y0§ = new Array();
         }
         this.§_-y0§.push(param1);
      }
      
      public function §_-WL§() : void
      {
         this.§_-ET§.§_-WL§();
         this.§_-cm§.mSardineCanAdded = true;
         this.§_-hc§ = true;
      }
      
      public function §_-uy§(param1:§_-FX§) : void
      {
         this.§_-zC§.§_-Cn§(§_-Jq§.§_-8E§);
         if(this.§_-y0§.indexOf(param1) >= 0)
         {
            this.§_-y0§.splice(this.§_-y0§.indexOf(param1),1);
         }
         if(this.§_-y0§.length == 0)
         {
            this.§_-y0§ = null;
         }
      }
      
      public function §_-Oa§(param1:§_-FY§, param2:Number, param3:Number) : void
      {
         this.§_-0v§ = this.§_-cm§.addObject(param1.name,param1.mX,param1.mY,0,true,false,true,param1.scale);
         var _loc4_:Number = param1.name.toUpperCase() == "BIRD_GREEN" ? Number(§_-hD§.§_-iM§) : Number(§_-hD§.§_-7M§);
         if(param1.§_-g6§ > 1)
         {
            this.§_-0v§.§_-jq§(param1.§_-g6§);
            this.§_-0v§.§_-9G§.§_-aS§();
         }
         if(param1.§_-k5§ != 0)
         {
            _loc4_ = param1.§_-k5§;
         }
         var _loc5_:Number = -_loc4_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc6_:Number = _loc4_ * param2 * Math.sin(param3 / (180 / Math.PI));
         this.§_-0v§.§_-PP§(new b2Vec2(_loc5_,_loc6_),false,true);
         this.camera.§_-t§(§_-yJ§.§_-nF§);
         if(this.§_-iZ§)
         {
            this.§_-iZ§.§_-Oa§(this.mLevelEngine.currentStep,param1.mX,param1.mY,param2,param3);
         }
      }
      
      public function activatePowerup() : void
      {
         this.§_-fZ§ = true;
      }
      
      private function §_-ov§() : void
      {
         if(!this.§_-fZ§)
         {
            return;
         }
         this.§_-fZ§ = false;
         if(this.activeObject is §_-ZS§ && !(this.activeObject as §_-ZS§).§_-5p§)
         {
            if(this.activeObject.activateSpecialPower(this.§_-QS§))
            {
               this.§_-qF§ = true;
            }
         }
         else
         {
            this.§_-cm§.§_-NF§();
         }
         if(this.§_-iZ§)
         {
            this.§_-iZ§.§_-6c§(this.mLevelEngine.currentStep);
         }
      }
      
      public function §_-mf§() : void
      {
         this.§_-cm§.§_-mf§();
      }
      
      public function §_-qH§() : void
      {
         this.§_-cm§.§_-iU§();
      }
      
      public function §_-LL§() : §_-BI§
      {
         var _loc1_:§_-BI§ = new §_-BI§();
         _loc1_.§_-eC§ = this.§_-kZ§.§_-eC§;
         _loc1_.§_-YI§ = this.§_-kZ§.§_-YI§;
         this.§_-Hl§.§_-7a§(_loc1_);
         this.§_-cm§.§_-8k§(_loc1_);
         this.§_-ET§.§_-Ze§(_loc1_);
         _loc1_.theme = this.§_-o8§.§_-2x§();
         return _loc1_;
      }
      
      public function §_-9§(param1:int) : void
      {
         this.§_-kZ§.§_-YI§ = param1;
      }
      
      public function §_-a5§(param1:int) : void
      {
         this.§_-kZ§.§_-eC§ = param1;
      }
      
      public function §_-Mw§(param1:Number, param2:Number) : void
      {
         if(this.§_-LJ§)
         {
            this.§_-LJ§.§_-rK§(param1,param2);
         }
         if(this.§_-Hl§)
         {
            this.§_-Hl§.§_-Gg§(0);
         }
      }
      
      public function get §_-Zr§() : §_-BI§
      {
         return this.§_-kZ§;
      }
      
      public function get §_-QS§() : § else§
      {
         return this.§_-cm§;
      }
   }
}
