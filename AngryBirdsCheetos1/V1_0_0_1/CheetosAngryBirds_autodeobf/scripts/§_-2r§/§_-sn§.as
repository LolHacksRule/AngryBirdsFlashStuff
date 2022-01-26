package §_-2r§
{
   import §_-5i§.§_-U1§;
   import §_-5p§.§_-Kf§;
   import §_-5p§.§_-Kn§;
   import §_-5p§.§set §;
   import §_-8r§.§_-oK§;
   import §_-Ls§.DisplayObject;
   import §_-Ls§.Sprite;
   import §_-SQ§.§break§;
   import §_-T8§.§_-GI§;
   import §_-T8§.§_-M7§;
   import §_-T8§.§_-Sa§;
   import §_-T8§.§_-Yr§;
   import §_-TC§.§_-uk§;
   import §_-U0§.§_-tF§;
   import §_-X§.§_-PL§;
   import §_-bl§.§_-Ie§;
   import §_-bl§.§_-S4§;
   import §_-bl§.§_-Td§;
   import §_-bl§.§_-ag§;
   import §_-cP§.b2Vec2;
   import §_-dH§.§_-9E§;
   import §_-gC§.§_-XR§;
   import §_-gL§.§_-UR§;
   import §_-gL§.§_-w6§;
   import §_-vB§.§_-Kk§;
   import §_-wO§.§_-IC§;
   import §_-we§.§_-5J§;
   import §_-we§.§_-yB§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §_-sn§
   {
      
      public static const §_-MH§:Number = §_-XR§.§_-jC§;
      
      public static const §_-ne§:Number = §_-XR§.§_-0-3§;
      
      public static const §_-5Y§:Number = 1 / 20;
      
      public static const §_-By§:Number = §_-XR§.§_-0-3§ * §_-5Y§;
      
      public static const §_-T3§:Number = §_-MH§ * §_-5Y§;
      
      public static const §_-m9§:§_-IC§ = new §_-IC§(13 - 3);
      
      protected static var §_-FT§:String = §_-GI§.§_-7c§;
       
      
      protected var §_-5h§:§_-S4§;
      
      private var §_-zv§:§_-Ie§;
      
      private var §_-sx§:Array = null;
      
      private var §_-7n§:§_-oK§;
      
      public var mLevelEngine:§_-r1§;
      
      private var §_-p0§:§_-XE§;
      
      private var §_-F3§:§_-uk§;
      
      private var §_-sD§:§_-Qo§;
      
      private var §_-lt§:§_-5J§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §_-jn§:Boolean = false;
      
      private var §_-wC§:Boolean = false;
      
      private var §_-3X§:Boolean = false;
      
      public var §_-OA§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §_-22§:Number;
      
      public var §_-Wy§:Number;
      
      private var §_-qd§:Number;
      
      public var §_-8b§:§_-M7§;
      
      public var §_-8q§:Boolean = false;
      
      private var §_-OP§:§_-rW§;
      
      private var §_-HR§:Sprite;
      
      private var §_-hf§:§_-GI§;
      
      private var §_-00B§:§_-U1§ = null;
      
      private var §_-pX§:EventDispatcher;
      
      private var §null§:Array;
      
      private var §_-WU§:Array;
      
      private var §_-nf§:§_-Kk§;
      
      private var §_-BX§:§_-9E§;
      
      private var §_-S7§:§_-Kf§;
      
      private var §_-Ax§:§_-Kn§;
      
      private var §_-bq§:§set §;
      
      private var §_-oP§:§set §;
      
      private var §_-jR§:§set §;
      
      private var mStage:Stage;
      
      private var §_-AB§:§_-z-§;
      
      protected var §_-Jm§:§break§;
      
      protected var §_-4u§:§break§;
      
      protected var §_-Jl§:Number = 0.0;
      
      protected var §_-2x§:String;
      
      private var §_-3S§:Boolean;
      
      private var §_-FA§:Boolean;
      
      public var §_-CF§:Boolean;
      
      private var §_-1M§:uint = 1.417339207E9;
      
      public function §_-sn§(param1:Stage)
      {
         this.§_-WU§ = [];
         super();
         this.§_-pX§ = new EventDispatcher();
         this.§_-8b§ = new §_-M7§();
         this.mStage = param1;
         this.§_-S7§ = §_-Kf§.§var §;
         this.§_-Ax§ = this.initAnimationManager(this.§_-S7§);
         this.§_-bq§ = this.§_-lF§();
         this.§_-oP§ = this.§_-jP§();
         this.§_-jR§ = this.§_-zF§();
         var _loc2_:Stage3D = param1.stage3Ds[0];
         this.§_-nf§ = new §_-Kk§(§_-rW§,param1,new Rectangle(0,0,§_-XR§.§_-jC§,§_-XR§.§_-0-3§),_loc2_);
         _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§_-Me§,false,0,true);
         this.§_-nf§.§_-BQ§ = false;
         this.§_-nf§.enableErrorChecking = false;
         this.§_-nf§.§_-Nr§ = 2;
         this.§_-nf§.§_-nK§();
      }
      
      public static function §_-Xf§(param1:§_-Ie§, param2:§_-Ie§) : Number
      {
         var _loc3_:Number = param1.§_-hM§ - param2.§_-hM§;
         var _loc4_:Number = param1.§_-nn§ - param2.§_-nn§;
         return §_-9W§(_loc3_,_loc4_);
      }
      
      public static function §_-9W§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         if(!this.§_-HR§ && this.§_-lY§)
         {
            this.§_-HR§ = this.§_-OP§.§_-I5§;
         }
         return this.§_-HR§;
      }
      
      public function get §_-lY§() : Sprite
      {
         if(!this.§_-OP§)
         {
            this.§_-OP§ = this.§_-nf§.§_-6h§ as §_-rW§;
            this.§_-OP§.§_-K2§ = false;
         }
         return this.§_-OP§;
      }
      
      private function get §_-mK§() : DisplayObject
      {
         if(this.§_-lY§)
         {
            return (this.§_-lY§ as §_-rW§).§_-mK§;
         }
         return null;
      }
      
      public function get §_-fl§() : §_-Kn§
      {
         return this.§_-Ax§;
      }
      
      public function get §_-aJ§() : §_-Kf§
      {
         return this.§_-S7§;
      }
      
      public function get camera() : §_-uk§
      {
         return this.§_-F3§;
      }
      
      public function get objects() : §_-S4§
      {
         return this.§_-5h§;
      }
      
      public function get particles() : §_-5J§
      {
         return this.§_-lt§;
      }
      
      public function get background() : §_-oK§
      {
         return this.§_-7n§;
      }
      
      public function get slingshot() : §_-Qo§
      {
         return this.§_-sD§;
      }
      
      public function get activeObject() : §_-Ie§
      {
         return this.§_-zv§;
      }
      
      public function get §_-BV§() : §_-XE§
      {
         return this.§_-p0§;
      }
      
      public function get stage() : Stage
      {
         return this.mStage;
      }
      
      public function get §_-Mw§() : §set §
      {
         return this.§_-jR§;
      }
      
      protected function get §_-dV§() : §set §
      {
         return this.§_-bq§;
      }
      
      public function set activeObject(param1:§_-Ie§) : void
      {
         this.§_-zv§ = param1;
      }
      
      public function set §_-x7§(param1:Boolean) : void
      {
         this.§_-FA§ = param1;
      }
      
      protected function §_-lF§() : §set §
      {
         return null;
      }
      
      protected function §_-jP§() : §set §
      {
         return null;
      }
      
      protected function §_-zF§() : §set §
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§_-Kf§) : §_-Kn§
      {
         return new §_-Kn§(param1);
      }
      
      public function §_-1m§(param1:Boolean) : void
      {
         if(§_-Kk§.§_-NR§)
         {
            if(param1)
            {
               §_-Kk§.§_-NR§.start();
            }
            else
            {
               §_-Kk§.§_-NR§.stop();
               §_-Kk§.§_-NR§.color = 0;
            }
         }
      }
      
      public function §_-P0§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function §_-Sx§(param1:§_-U1§) : void
      {
         if(this.§_-00B§ != null)
         {
            this.§_-00B§.removeEventListeners();
         }
         this.§_-00B§ = param1;
         if(this.mReadyToRun)
         {
            this.§_-00B§.addEventListeners();
         }
      }
      
      public function §_-cs§() : §break§
      {
         return this.§_-Jm§;
      }
      
      public function §_-qr§(param1:§_-9E§, param2:Array, param3:Function) : void
      {
         this.§_-BX§ = param1;
         var _loc4_:int = this.§_-BX§.§_-Pt§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§_-S7§.§_-sp§(this.§_-BX§.§_-Yu§(_loc5_));
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§_-pX§.addEventListener(Event.INIT,param3);
            this.§_-WU§.push(param3);
         }
         if(this.§_-xS§(param2))
         {
            this.§_-4J§();
         }
      }
      
      private function §_-xS§(param1:Array) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.§_-S7§.§_-9g§())
         {
            _loc2_ = this.§_-S7§.§_-FP§ / 1000;
            _loc3_ = this.§_-S7§.§_-8N§ / 1000;
            §_-tF§.log("\n\nMain texture manager memory usage:\n   textures " + _loc2_ + " kilobytes\n   bitmaps " + _loc3_ + " kilobytes\n\n");
            this.initializeAnimations(param1);
            return true;
         }
         this.§null§ = param1.concat();
         return false;
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         this.§_-Ax§.initializeAnimations(param1);
      }
      
      private function §_-Me§(param1:Event) : void
      {
         this.§_-S7§.§_-0-c§();
         if(this.§_-dV§ && this.§_-dV§.§_-aJ§)
         {
            this.§_-dV§.§_-aJ§.§_-0-c§();
         }
         if(this.§_-Mw§ && this.§_-Mw§.§_-aJ§)
         {
            this.§_-Mw§.§_-aJ§.§_-0-c§();
         }
         if(this.§null§)
         {
            this.§_-xS§(this.§null§);
            this.§null§ = null;
            this.§_-4J§();
         }
         if(this.§_-00B§ != null && this.mReadyToRun)
         {
            this.§_-00B§.addEventListeners();
         }
         if(this.§_-bq§)
         {
            this.§_-bq§.§_-9g§();
         }
         if(this.§_-jR§)
         {
            if(this.§_-jR§.§_-aJ§)
            {
               this.§_-jR§.§_-aJ§.§_-0-c§();
               this.§_-jR§.§_-9g§();
            }
         }
      }
      
      private function §_-4J§() : void
      {
         this.§_-pX§.dispatchEvent(new Event(Event.INIT));
         this.§_-LB§();
      }
      
      private function §_-LB§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§_-WU§)
         {
            this.§_-pX§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§_-WU§ = [];
      }
      
      public function init(param1:§_-GI§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§_-p0§ = new §_-XE§(this,param1);
         this.§_-F3§ = this.§_-Pk§(param1);
         this.§_-22§ = 0;
         this.§_-Wy§ = 0;
         this.§_-qd§ = 0;
         this.§_-3S§ = false;
         this.mReadyToRun = false;
         this.§_-jn§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         §_-FT§ = param1.theme;
         this.§_-hf§ = param1;
         this.§_-wC§ = this.§_-LL§(param1.theme);
         this.§_-3X§ = this.§_-3E§(param1.theme);
         if(this.§_-wC§ && this.§_-3X§)
         {
            this.§_-Eh§(param1);
         }
         else
         {
            this.§_-Lx§(param1.theme);
         }
         this.initReplay();
         §_-fU§.init();
      }
      
      protected function initReplay() : void
      {
         this.§_-Jm§ = new §break§(§_-Sa§.§_-LZ§);
      }
      
      protected function §_-LL§(param1:String) : Boolean
      {
         if(this.§_-bq§)
         {
            return false;
         }
         return true;
      }
      
      protected function §_-3E§(param1:String) : Boolean
      {
         var _loc2_:§_-w6§ = null;
         if(this.§_-oP§)
         {
            _loc2_ = §_-UR§.§_-ON§(param1);
            if(_loc2_)
            {
               if(_loc2_.§_-zm§ && !this.§_-oP§.§function§(_loc2_.§_-zm§))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function §_-Lx§(param1:String) : void
      {
         var _loc2_:§_-w6§ = null;
         if(this.§_-bq§ && !this.§_-LL§(param1))
         {
            this.§_-bq§.removeEventListener(Event.COMPLETE,this.§_-Q8§);
            this.§_-bq§.removeEventListener(Event.CANCEL,this.§_-6c§);
            this.§_-bq§.addEventListener(Event.COMPLETE,this.§_-Q8§);
            this.§_-bq§.addEventListener(Event.CANCEL,this.§_-6c§);
            this.§_-bq§.§_-tf§(param1);
         }
         if(this.§_-oP§ && !this.§_-3E§(param1))
         {
            this.§_-oP§.removeEventListener(Event.COMPLETE,this.§_-Ze§);
            this.§_-oP§.removeEventListener(Event.CANCEL,this.§_-Ml§);
            this.§_-oP§.addEventListener(Event.COMPLETE,this.§_-Ze§);
            this.§_-oP§.addEventListener(Event.CANCEL,this.§_-Ml§);
            _loc2_ = §_-UR§.§_-ON§(param1);
            if(_loc2_)
            {
               this.§_-oP§.§_-tf§(_loc2_.§_-zm§);
            }
         }
      }
      
      private function §_-Q8§(param1:Event) : void
      {
         this.§_-bq§.removeEventListener(Event.COMPLETE,this.§_-Q8§);
         this.§_-bq§.removeEventListener(Event.CANCEL,this.§_-6c§);
         this.§_-wC§ = true;
         if(this.§_-wC§ && this.§_-3X§)
         {
            this.§_-Eh§(this.§_-hf§);
         }
      }
      
      private function §_-6c§(param1:Event) : void
      {
         this.§_-bq§.removeEventListener(Event.COMPLETE,this.§_-Q8§);
         this.§_-bq§.removeEventListener(Event.CANCEL,this.§_-6c§);
         this.§_-jn§ = true;
      }
      
      private function §_-Ze§(param1:Event) : void
      {
         this.§_-bq§.removeEventListener(Event.COMPLETE,this.§_-Ze§);
         this.§_-bq§.removeEventListener(Event.CANCEL,this.§_-Ml§);
         this.§_-3X§ = true;
         if(this.§_-wC§ && this.§_-3X§)
         {
            this.§_-Eh§(this.§_-hf§);
         }
      }
      
      private function §_-Ml§(param1:Event) : void
      {
         this.§_-bq§.removeEventListener(Event.COMPLETE,this.§_-Ze§);
         this.§_-bq§.removeEventListener(Event.CANCEL,this.§_-Ml§);
         this.§_-3X§ = true;
         if(this.§_-wC§ && this.§_-3X§)
         {
            this.§_-Eh§(this.§_-hf§);
         }
      }
      
      public function get §_-VR§() : §_-Kf§
      {
         return this.§_-S7§;
      }
      
      private function §_-Eh§(param1:§_-GI§) : void
      {
         this.§_-FA§ = false;
         this.§_-CF§ = false;
         if(§_-Kk§.§_-qh§)
         {
            §_-Kk§.§_-qh§.speed = 1;
         }
         this.mLevelEngine = new §_-r1§(this);
         this.§_-7n§ = this.§_-wl§(param1.theme,this.§_-p0§.§use§ / §_-5Y§,this.§_-VR§,this.§_-F3§.§_-bu§());
         this.§_-7n§.§_-ww§(§_-XR§.§_-s§());
         this.§_-5h§ = this.initLevelObjectManager(param1);
         this.§_-sD§ = this.initLevelSlingshot(param1);
         this.§_-lt§ = this.§_-04§(this.§_-Ax§,this.§_-S7§);
         this.§_-F3§.init();
         this.§_-vx§();
         this.loadPreviousReplayData();
         this.mReadyToRun = true;
         if(this.§_-00B§)
         {
            this.§_-00B§.addEventListeners();
         }
      }
      
      protected function loadPreviousReplayData() : void
      {
         if(this.§_-2x§)
         {
            this.§_-4u§ = §break§.§_-Eh§(this.§_-2x§);
            this.§_-4u§.speed = 1;
            this.§_-4u§.play();
            this.§_-Jl§ = -1000;
            this.§_-2x§ = null;
         }
      }
      
      public function §_-oJ§(param1:String) : void
      {
         this.§_-2x§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§_-4u§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§_-4u§)
         {
            if(param1)
            {
               this.§_-4u§.speed = Math.min(this.§_-4u§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§_-4u§.speed = Math.max(this.§_-4u§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§_-4u§)
         {
            this.§_-4u§.speed = 1;
         }
      }
      
      protected function initLevelObjectManager(param1:§_-GI§) : §_-S4§
      {
         return new §_-S4§(this,param1,new Sprite());
      }
      
      protected function §_-Pk§(param1:§_-GI§) : §_-uk§
      {
         return new §_-uk§(this,param1);
      }
      
      protected function §_-wl§(param1:String, param2:Number, param3:§_-Kf§, param4:Number) : §_-oK§
      {
         return new §_-oK§(param1,param2,param3,param4);
      }
      
      protected function initLevelSlingshot(param1:§_-GI§) : §_-Qo§
      {
         return new §_-Qo§(this,param1,new Sprite());
      }
      
      protected function §_-04§(param1:§_-Kn§, param2:§_-Kf§) : §_-5J§
      {
         return new §_-5J§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = true) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§_-GI§ = new §_-GI§();
         _loc3_.§_-DL§ = -12;
         var _loc4_:§_-Yr§;
         (_loc4_ = new §_-Yr§()).left = 0;
         _loc4_.top = -§_-uk§.§_-mO§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §_-uk§.§_-mO§;
         _loc4_.right = _loc4_.left + §_-uk§.§_-0s§;
         _loc4_.y = -13.929;
         _loc4_.x = §_-uk§.§_-0s§;
         _loc4_.id = §_-uk§.§_-KE§;
         _loc3_.§_-nL§.push(_loc4_);
         var _loc5_:§_-Yr§;
         (_loc5_ = new §_-Yr§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §_-uk§.§_-0s§;
         _loc5_.bottom = _loc5_.top + §_-uk§.§_-mO§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §_-uk§.§_-0s§ / 2;
         _loc5_.id = §_-uk§.§_-4Y§;
         _loc3_.§_-nL§.push(_loc5_);
         if(param2)
         {
            this.§_-83§(_loc3_);
         }
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§_-FT§ != null)
         {
            _loc3_.theme = §_-FT§;
         }
         this.init(_loc3_);
      }
      
      private function §_-Gs§() : Number
      {
         this.§_-1M§ ^= this.§_-1M§ << 21;
         this.§_-1M§ ^= this.§_-1M§ >>> 35;
         this.§_-1M§ ^= this.§_-1M§ << 4;
         return this.§_-1M§ * (1 / uint.MAX_VALUE);
      }
      
      private function §_-83§(param1:§_-GI§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§_-PL§ = null;
         this.§_-1M§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§_-Gs§() * 5;
               (_loc5_ = new §_-PL§()).x = 30 + _loc3_ * 10 + this.§_-Gs§() * 9;
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
                  _loc5_.angle = 45 - this.§_-Gs§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§_-Gs§() * 3 - _loc3_ * 8;
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
                  _loc5_.angle = this.§_-Gs§() * 360;
               }
               param1.§_-l0§.push(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      private function §_-LX§() : void
      {
      }
      
      public function §_-vx§() : void
      {
         if(§_-oK§.§_-M2§)
         {
            this.§_-6C§(this.§_-7n§.§_-cU§,false);
         }
         this.§_-6C§(this.§_-lt§.§_-v-§(§_-5J§.§_-Uc§),false);
         this.§_-6C§(this.§_-lt§.§_-v-§(§_-5J§.§_-aB§),true);
         this.§_-6C§(this.§_-lt§.§_-v-§(§_-5J§.§_-r§),true);
         this.§_-6C§(this.§_-5h§.§_-wQ§,true);
         this.§_-6C§(this.§_-sD§.sprite,true);
         this.§_-6C§(this.§_-lt§.§_-v-§(§_-5J§.§_-2S§),true);
         this.§_-6C§(this.§_-7n§.§_-1D§,false);
         if(§_-oK§.§_-M2§)
         {
            this.§_-6C§(this.§_-7n§.§_-XX§,false);
         }
         this.§_-6C§(this.§_-lt§.§_-v-§(§_-5J§.§_-Ju§),true);
         if(!§_-r1§.§_-Sb§)
         {
         }
      }
      
      private function §_-6C§(param1:Sprite, param2:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(param1);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         param1 /= §_-XR§.§_-BS§;
         param2 /= §_-XR§.§_-BS§;
         _loc3_.x = (param1 / §_-uk§.§_-gJ§ + this.§_-F3§.§_-Rs§ - §_-uk§.§_-j4§ / §_-uk§.§_-gJ§) * §_-5Y§;
         _loc3_.y = (param2 / §_-uk§.§_-gJ§ + this.§_-F3§.§_-Nb§ - §_-uk§.§_-iS§ / §_-uk§.§_-gJ§) * §_-5Y§;
         return _loc3_;
      }
      
      public function §_-DX§(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / §_-5Y§ + §_-uk§.§_-j4§ / §_-uk§.§_-gJ§ - this.§_-F3§.§_-Rs§) * §_-uk§.§_-gJ§;
         _loc3_.y = (param2 / §_-5Y§ + §_-uk§.§_-iS§ / §_-uk§.§_-gJ§ - this.§_-F3§.§_-Nb§) * §_-uk§.§_-gJ§;
         var _loc4_:Number = Math.max(§_-XR§.§_-BS§,§_-XR§.§_-Rt§);
         _loc3_.x *= _loc4_;
         _loc3_.y *= _loc4_;
         return _loc3_;
      }
      
      public function §_-mp§(param1:String, param2:Number, param3:Number) : void
      {
         this.§_-5h§.addObject(param1,param2,param3);
      }
      
      public function §_-n§() : void
      {
         if(this.§_-mK§)
         {
            this.§_-mK§.visible = true;
            this.§_-mK§.alpha = 0;
         }
         this.§_-OA§ = 0;
      }
      
      public function §_-5A§() : void
      {
         this.§_-AB§ = new §_-z-§(§_-nb§.§_-wL§,§_-nb§.§_-EF§);
      }
      
      public function §_-8Z§() : void
      {
         this.§_-AB§ = null;
      }
      
      public function clearLevel() : void
      {
         if(this.§_-7n§)
         {
            this.§_-7n§.dispose();
            this.§_-7n§ = null;
         }
         if(this.§_-5h§)
         {
            this.§_-5h§.dispose();
            this.§_-5h§ = null;
            this.§_-zv§ = null;
         }
         if(this.mLevelEngine)
         {
            if(!this.mLevelEngine.§_-u1§)
            {
            }
            this.mLevelEngine.clear();
            this.mLevelEngine = null;
         }
         if(this.§_-p0§)
         {
            this.§_-p0§.clear();
            this.§_-p0§ = null;
         }
         if(this.§_-sD§)
         {
            this.§_-sD§.dispose();
            this.§_-sD§ = null;
         }
         if(this.§_-F3§)
         {
            this.§_-F3§.clear();
            this.§_-F3§ = null;
         }
         if(this.§_-lt§)
         {
            this.§_-lt§.dispose();
            this.§_-lt§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§_-22§ = 0;
         this.§_-Wy§ = 0;
         this.mReadyToRun = false;
         this.§_-3S§ = false;
         this.§_-OA§ = §_-nb§.§_-zD§;
         if(this.§_-lY§)
         {
            (this.§_-lY§ as §_-rW§).§_-vb§.x = 0;
            (this.§_-lY§ as §_-rW§).§_-vb§.y = 0;
         }
         if(this.§_-mK§)
         {
            this.§_-mK§.visible = false;
         }
         this.§_-4u§ = null;
         this.§_-Jm§ = null;
         if(this.§_-bq§)
         {
            this.§_-bq§.removeEventListener(Event.COMPLETE,this.§_-Q8§);
            this.§_-bq§.removeEventListener(Event.CANCEL,this.§_-6c§);
         }
         if(this.§_-oP§)
         {
            this.§_-oP§.removeEventListener(Event.COMPLETE,this.§_-Ze§);
            this.§_-oP§.removeEventListener(Event.CANCEL,this.§_-Ml§);
         }
         this.§_-LB§();
         if(§_-Kk§.§_-NR§)
         {
            §_-Kk§.§_-NR§.color = 0;
         }
         if(this.§_-00B§)
         {
            this.§_-00B§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver() : void
      {
      }
      
      public function §_-yo§() : String
      {
         if(this.§_-Jm§)
         {
            return this.§_-Jm§.toString();
         }
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         if(!this.mReadyToRun || !§_-Kk§.§_-tl§())
         {
            return 0;
         }
         if(this.§_-4u§ && this.§_-4u§.§_-5k§)
         {
            return this.§_-aj§(param1,param2,param3);
         }
         return this.§_-eE§(param1,true,param2,param3);
      }
      
      protected function §_-eE§(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         if(this.§_-FA§)
         {
            param1 *= 0.2;
            if(§_-Kk§.§_-qh§)
            {
               §_-Kk§.§_-qh§.speed = 0.2;
            }
         }
         var _loc5_:Number = 0;
         this.§_-Wy§ += param1;
         if(param3)
         {
            this.§_-22§ += param1;
            _loc5_ = this.mLevelEngine.§_-IL§(this.§_-22§);
            this.§_-sD§.update(param1,param4);
            this.§_-22§ = _loc5_;
         }
         else
         {
            this.§_-5h§.§_-56§();
            this.§_-22§ = 0;
         }
         if(param2)
         {
            this.§_-zI§(param1,_loc5_);
         }
         return param1;
      }
      
      private function §_-aj§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc5_:Number = NaN;
         var _loc4_:Number = §_-r1§.§_-Tv§ * 1000;
         if(this.§_-4u§)
         {
            param1 *= this.§_-4u§.speed;
            _loc5_ = this.§_-Wy§ + param1;
            while(this.§_-Wy§ + _loc4_ < _loc5_)
            {
               if(this.§_-Wy§ + _loc4_ > this.§_-Jl§)
               {
                  this.§_-4u§.step(this);
                  this.§_-Jl§ += _loc4_;
               }
               this.§_-eE§(_loc4_,false,param2,param3);
            }
            if(_loc5_ > this.§_-Jl§ + _loc4_)
            {
               this.§_-4u§.step(this);
               this.§_-Jl§ += _loc4_;
            }
            if(this.§_-Wy§ < _loc5_)
            {
               this.§_-eE§(_loc5_ - this.§_-Wy§,true,param2,param3);
            }
            return param1;
         }
         return this.§_-eE§(_loc4_,true,param2,param3);
      }
      
      private function §_-zI§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.§_-7n§.update(param1);
         this.§_-5h§.§_-53§(param1,param2);
         this.§_-m1§();
         if(this.§_-OA§ < §_-nb§.§_-zD§)
         {
            this.§_-OA§ += param1;
            _loc3_ = §_-nb§.§_-zD§ / 2;
            _loc4_ = (-Math.abs(this.§_-OA§ - _loc3_) + _loc3_) * (§_-nb§.§_-ze§ / _loc3_);
            if(this.§_-mK§)
            {
               this.§_-mK§.alpha = _loc4_;
            }
         }
         else if(this.§_-mK§)
         {
            this.§_-mK§.visible = false;
         }
         if(this.§_-AB§)
         {
            if(!this.§_-AB§.§_-hn§(this.§_-F3§,param1))
            {
               this.§_-8Z§();
            }
         }
         this.§_-F3§.§_-2F§(param1);
         this.mLevelEngine.§_-dw§();
         this.§_-lt§.update(param1);
      }
      
      public function §_-IE§(param1:Number) : void
      {
         this.objects.§_-56§();
         this.objects.§_-nH§(param1 * 1000);
         this.§_-5N§();
      }
      
      public function §_-m1§() : void
      {
         var _loc1_:§_-Ie§ = null;
         if(this.§_-Wy§ > this.§_-qd§ + 1000 / 30)
         {
            if(this.§_-sx§ != null)
            {
               for each(_loc1_ in this.§_-sx§)
               {
                  _loc1_.addTrail();
               }
            }
            this.§_-qd§ = this.§_-Wy§;
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§_-Ie§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.§_-5h§.isPigsAlive(true))
            {
               _loc2_ = this.§_-5h§.§_-bm§(true);
               _loc2_.§_-KI§.mTryToScream = §_-Td§.§_-2u§;
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§_-5h§.§_-AP§());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            if(this.§_-5h§.isPigsAlive(true))
            {
               _loc2_ = this.§_-5h§.§_-bm§(true);
               _loc2_.§_-KI§.mTryToBlink = §_-Td§.§_-Na§;
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§_-5h§.§_-AP§());
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §_-yB§.§_-In§;
         }
         §_-fU§.addScore(param1,param2);
         this.§_-00B§.addScore(param1);
         if(param3 && param1 > 0 && !this.§_-CF§)
         {
            this.§_-SC§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §_-SC§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §_-yB§.§_-1j§;
         }
         this.§_-lt§.addParticle(§_-yB§.§_-y8§,§_-5J§.§_-Ju§,§_-yB§.§_-TI§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §_-B3§(param1:§_-Ie§) : void
      {
         if(this.§_-sx§ == null)
         {
            this.§_-sx§ = new Array();
         }
         this.§_-sx§.push(param1);
      }
      
      public function §_-43§() : void
      {
         this.§_-sD§.§_-43§();
         this.§_-5h§.mSardineCanAdded = true;
         this.§_-CF§ = true;
      }
      
      public function §_-0Q§(param1:§_-Ie§) : void
      {
         this.§_-lt§.§_-uX§(§_-5J§.§_-Uc§);
         if(this.§_-sx§.indexOf(param1) >= 0)
         {
            this.§_-sx§.splice(this.§_-sx§.indexOf(param1),1);
         }
         if(this.§_-sx§.length == 0)
         {
            this.§_-sx§ = null;
         }
      }
      
      public function §_-Dl§(param1:§_-9j§, param2:Number, param3:Number) : void
      {
         this.§_-zv§ = this.§_-5h§.addObject(param1.name,param1.mX,param1.mY,0,true,false,true,param1.scale);
         var _loc4_:Number = param1.name.toUpperCase() == "BIRD_GREEN" ? Number(§_-Qo§.§_-VI§) : Number(§_-Qo§.§_-ck§);
         if(param1.§_-5G§ > 1)
         {
            this.§_-zv§.§_-re§(param1.§_-5G§);
            this.§_-zv§.§_-KI§.§_-ot§();
         }
         if(param1.§_-Cm§ != 0)
         {
            _loc4_ = param1.§_-Cm§;
         }
         var _loc5_:Number = -_loc4_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc6_:Number = _loc4_ * param2 * Math.sin(param3 / (180 / Math.PI));
         this.§_-zv§.§_-d9§(new b2Vec2(_loc5_,_loc6_),false,true);
         this.camera.§_-hR§(§_-uk§.§_-ca§);
         if(this.§_-Jm§)
         {
            this.§_-Jm§.§_-Dl§(this.mLevelEngine.currentStep,param1.mX,param1.mY,param2,param3);
         }
      }
      
      public function activatePowerup() : void
      {
         this.§_-3S§ = true;
      }
      
      private function §_-5N§() : void
      {
         if(!this.§_-3S§)
         {
            return;
         }
         this.§_-3S§ = false;
         if(this.activeObject is §_-ag§ && !(this.activeObject as §_-ag§).§_-YL§)
         {
            if(this.activeObject.activateSpecialPower(this.§_-VX§))
            {
               this.§_-8q§ = true;
            }
         }
         else
         {
            this.§_-5h§.§_-pg§();
         }
         if(this.§_-Jm§)
         {
            this.§_-Jm§.§_-XT§(this.mLevelEngine.currentStep);
         }
      }
      
      public function §_-xU§() : void
      {
         this.§_-5h§.§_-xU§();
      }
      
      public function §_-Rh§() : void
      {
         this.§_-5h§.§_-s3§();
      }
      
      public function §_-ya§() : §_-GI§
      {
         var _loc1_:§_-GI§ = new §_-GI§();
         _loc1_.§_-oT§ = this.§_-hf§.§_-oT§;
         _loc1_.§_-W6§ = this.§_-hf§.§_-W6§;
         this.§_-F3§.§_-GW§(_loc1_);
         this.§_-5h§.§_-r6§(_loc1_);
         this.§_-sD§.§_-jj§(_loc1_);
         _loc1_.theme = this.§_-7n§.§_-7f§();
         return _loc1_;
      }
      
      public function §_-cm§(param1:int) : void
      {
         this.§_-hf§.§_-W6§ = param1;
      }
      
      public function §_-mF§(param1:int) : void
      {
         this.§_-hf§.§_-oT§ = param1;
      }
      
      public function §_-2t§(param1:Number, param2:Number) : void
      {
         if(this.§_-OP§)
         {
            this.§_-OP§.§_-Ej§(param1,param2);
         }
         if(this.§_-F3§)
         {
            this.§_-F3§.§_-2F§(0);
         }
      }
      
      public function get §_-OW§() : §_-GI§
      {
         return this.§_-hf§;
      }
      
      public function get §_-VX§() : §_-S4§
      {
         return this.§_-5h§;
      }
   }
}
