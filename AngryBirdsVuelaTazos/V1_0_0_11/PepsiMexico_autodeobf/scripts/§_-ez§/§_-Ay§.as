package §_-ez§
{
   import §_-Ah§.§_-b§;
   import §_-Bp§.§_-5N§;
   import §_-Bp§.§_-Po§;
   import §_-ST§.§_-T6§;
   import §_-ST§.§_-fK§;
   import §_-ST§.§_-oF§;
   import §_-Vq§.§_-dI§;
   import §_-Vq§.§_-gu§;
   import §_-Xc§.§_-w7§;
   import §_-Y-§.§_-JB§;
   import §_-Y-§.§_-Wl§;
   import §_-Y-§.§_-ZB§;
   import §_-d5§.§_-6Y§;
   import §_-hz§.§_-aa§;
   import §_-mQ§.§_-tm§;
   import §_-th§.§_-WF§;
   import §_-vO§.DisplayObject;
   import §_-vO§.Sprite;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §_-Ay§
   {
      
      public static const §_-vr§:Number = §_-b§.§_-iX§;
      
      public static const §_-8K§:Number = §_-b§.§_-q§;
      
      public static const §_-G0§:Number = 1 / 20;
      
      public static const §_-E0§:Number = §_-b§.§_-q§ * §_-G0§;
      
      public static const §_-QD§:Number = §_-vr§ * §_-G0§;
      
      public static const §_-nf§:int = 10;
      
      public static const §_-2Z§:Boolean = true;
      
      protected static var §_-nY§:String = "";
       
      
      public var mLevelObjects:§_-oF§;
      
      public var mActiveObject:§_-fK§;
      
      public var §_-sh§:Array = null;
      
      public var §_-c§:§_-tm§;
      
      public var §_-dv§:§_-Z2§;
      
      public var §_-k8§:§_-H1§;
      
      private var §_-rw§:§_-8g§;
      
      public var mLevelSlingshot:§_-nt§;
      
      public var §_-Rh§:§_-dI§;
      
      public var §_-90§:Boolean = false;
      
      public var §_-ba§:Number = 1500;
      
      public var §_-NS§:Number = 2400;
      
      public var §_-KC§:Number = 0;
      
      public var §_-DG§:Number = 0.2;
      
      public var §_-bd§:Number = 8.8;
      
      public var mPigsAnimationTimer1:Number;
      
      public var mPigsAnimationTimer2:Number;
      
      public var §_-v9§:Number;
      
      public var §_-1a§:Number;
      
      public var §set §:§_-JB§;
      
      public var mTrailSpecial:Boolean = false;
      
      public var §_-bE§:Sprite = null;
      
      public const §_-tj§:int = 2;
      
      public var §_-Md§:int = 0;
      
      private var §_-WJ§:§_-QP§;
      
      private var §_-4q§:Sprite;
      
      private var §_-E1§:Vector.<Sprite>;
      
      private var §_-4a§:§_-aa§ = null;
      
      private var §class§:EventDispatcher;
      
      private var §_-GP§:Array;
      
      private var §_-tF§:Array;
      
      private var §_-hK§:§_-6Y§;
      
      private var §_-XW§:§_-w7§;
      
      private var §_-aH§:§_-5N§;
      
      private var §_-CP§:§_-Po§;
      
      private var mStage:Stage;
      
      private var §_-9s§:uint = 1.417339207E9;
      
      public function §_-Ay§(param1:Stage)
      {
         this.§_-tF§ = [];
         super();
         this.§class§ = new EventDispatcher();
         this.§set § = new §_-JB§();
         this.mStage = param1;
         this.§_-aH§ = §_-5N§.§_-9v§;
         this.§_-CP§ = this.§_-C-§(this.§_-aH§);
         var _loc2_:Stage3D = param1.stage3Ds[0];
         _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§_-ak§,false,0,true);
         this.§_-hK§ = new §_-6Y§(§_-QP§,param1,new Rectangle(0,0,§_-b§.§_-iX§,§_-b§.§_-q§),_loc2_);
         this.§_-hK§.§_-mY§ = false;
         this.§_-hK§.enableErrorChecking = false;
         this.§_-hK§.§_-Es§ = 2;
      }
      
      public static function §_-FI§(param1:§_-fK§, param2:§_-fK§) : Number
      {
         var _loc3_:Number = param1.§_-g-§ - param2.§_-g-§;
         var _loc4_:Number = param1.§_-3l§ - param2.§_-3l§;
         return §_-Il§(_loc3_,_loc4_);
      }
      
      public static function §_-Il§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         if(!this.§_-4q§ && this.§_-Dv§)
         {
            this.§_-4q§ = this.§_-WJ§.§_-DQ§;
            if(this.§_-4q§)
            {
               if(§_-6Y§.§_-rs§)
               {
                  this.§_-E1§ = new Vector.<Sprite>();
               }
            }
         }
         return this.§_-4q§;
      }
      
      public function get §_-Dv§() : Sprite
      {
         if(!this.§_-WJ§)
         {
            this.§_-WJ§ = this.§_-hK§.§_-nb§ as §_-QP§;
         }
         return this.§_-WJ§;
      }
      
      private function get §_-5u§() : DisplayObject
      {
         if(this.§_-Dv§)
         {
            return (this.§_-Dv§ as §_-QP§).§_-5u§;
         }
         return null;
      }
      
      public function get §_-wg§() : §_-Po§
      {
         return this.§_-CP§;
      }
      
      public function get §_-si§() : §_-5N§
      {
         return this.§_-aH§;
      }
      
      protected function §_-C-§(param1:§_-5N§) : §_-Po§
      {
         return new §_-Po§(param1);
      }
      
      public function §_-uw§(param1:Boolean) : void
      {
         if(this.§_-Dv§)
         {
            this.§_-Dv§.visible = param1;
         }
      }
      
      public function §_-j3§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function §_-DZ§(param1:§_-aa§) : void
      {
         if(this.§_-4a§ != null)
         {
            this.§_-4a§.§_-D7§();
         }
         this.§_-4a§ = param1;
         this.§_-4a§.addEventListeners();
      }
      
      public function §_-rU§(param1:§_-w7§, param2:Array, param3:Function) : void
      {
         this.§_-XW§ = param1;
         var _loc4_:int = this.§_-XW§.§_-96§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§_-aH§.§_-0q§(this.§_-XW§.§_-JD§(_loc5_));
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§class§.addEventListener(Event.INIT,param3);
            this.§_-tF§.push(param3);
         }
         if(this.§_-U8§(param2))
         {
            this.§_-IU§();
         }
      }
      
      private function §_-U8§(param1:Array) : Boolean
      {
         if(this.§_-aH§.§_-gv§())
         {
            this.§_-v0§(param1);
            return true;
         }
         this.§_-GP§ = param1.concat();
         return false;
      }
      
      private function §_-v0§(param1:Array) : void
      {
         this.§_-CP§.§_-v0§(param1);
      }
      
      private function §_-ak§(param1:Event) : void
      {
         this.§_-aH§.§_-cf§();
         if(this.§_-GP§)
         {
            this.§_-U8§(this.§_-GP§);
            this.§_-GP§ = null;
            this.§_-IU§();
         }
         if(this.§_-4a§ != null)
         {
            this.§_-4a§.addEventListeners();
         }
      }
      
      private function §_-IU§() : void
      {
         this.§class§.dispatchEvent(new Event(Event.INIT));
         this.§_-0j§();
      }
      
      private function §_-0j§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§_-tF§)
         {
            this.§class§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§_-tF§ = [];
      }
      
      public function init(param1:§_-Wl§) : void
      {
         if(this.§_-90§)
         {
            this.clearLevel();
         }
         this.§_-k8§ = new §_-H1§(this,param1);
         this.§_-dv§ = new §_-Z2§(this);
         this.§_-c§ = new §_-tm§(param1.§_-W8§,this.§_-k8§.§_-4p§ / §_-G0§,this.§_-CP§,this.§_-aH§);
         this.§_-c§.§_-UH§(§_-b§.§_-5d§());
         this.mLevelObjects = this.§_-Ie§(param1);
         this.mLevelSlingshot = this.§_-jK§(param1);
         this.§_-Rh§ = new §_-dI§(this.§_-CP§,this.§_-aH§);
         this.§_-rw§ = new §_-8g§(this,param1);
         this.§_-8w§();
         this.§_-v9§ = 0;
         this.§_-1a§ = 0;
         this.§_-90§ = true;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         §_-nY§ = param1.§_-W8§;
      }
      
      protected function §_-Ie§(param1:§_-Wl§) : §_-oF§
      {
         return new §_-oF§(this,param1,new Sprite());
      }
      
      protected function §_-jK§(param1:§_-Wl§) : §_-nt§
      {
         return new §_-nt§(this,param1,new Sprite());
      }
      
      public function initEmptyEnvironment() : void
      {
         if(this.§_-90§)
         {
            this.clearLevel();
         }
         var _loc1_:§_-Wl§ = new §_-Wl§();
         _loc1_.§_-Ya§ = -12;
         var _loc2_:§_-ZB§ = new §_-ZB§();
         _loc2_.left = 0;
         _loc2_.top = -§_-8g§.§_-pu§ / 10 * 8;
         _loc2_.bottom = _loc2_.top + §_-8g§.§_-pu§;
         _loc2_.right = _loc2_.left + §_-8g§.§_-nD§;
         _loc2_.y = -13.929;
         _loc2_.x = §_-8g§.§_-nD§;
         _loc2_.id = §_-8g§.§_-xB§;
         _loc1_.§_-Jc§.push(_loc2_);
         var _loc3_:§_-ZB§ = new §_-ZB§();
         _loc3_.top = _loc2_.top;
         _loc3_.bottom = _loc2_.bottom;
         _loc3_.left = 150;
         _loc3_.right = _loc3_.left + §_-8g§.§_-nD§;
         _loc3_.bottom = _loc3_.top + §_-8g§.§_-pu§;
         _loc3_.y = _loc2_.y;
         _loc3_.x = _loc3_.left + §_-8g§.§_-nD§ / 2;
         _loc3_.id = §_-8g§.§_-v7§;
         _loc1_.§_-Jc§.push(_loc3_);
         this.§_-2t§(_loc1_);
         _loc1_.§_-W8§ = §_-nY§;
         this.init(_loc1_);
      }
      
      private function §_-US§() : Number
      {
         this.§_-9s§ ^= this.§_-9s§ << 21;
         this.§_-9s§ ^= this.§_-9s§ >>> 35;
         this.§_-9s§ ^= this.§_-9s§ << 4;
         return this.§_-9s§ * (1 / uint.MAX_VALUE);
      }
      
      private function §_-2t§(param1:§_-Wl§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§_-WF§ = null;
         this.§_-9s§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§_-US§() * 5;
               (_loc5_ = new §_-WF§()).x = 30 + _loc3_ * 10 + this.§_-US§() * 9;
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
                  _loc5_.angle = 45 - this.§_-US§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§_-US§() * 3 - _loc3_ * 8;
                  if((_loc4_ = (_loc3_ * _loc3_ + _loc2_ * _loc3_ + _loc2_) % 5) == 0)
                  {
                     _loc5_.id = "BIRD_BLACK";
                  }
                  else if(_loc4_ < 3)
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
                  _loc5_.angle = this.§_-US§() * 360;
               }
               param1.§_-rp§.push(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      private function §_-0E§() : void
      {
      }
      
      public function §_-8w§() : void
      {
         this.§_-bq§(this.§_-c§.§_-6n§,true);
         if(§_-tm§.§_-dp§)
         {
            this.§_-bq§(this.§_-c§.§_-1H§,false);
         }
         this.§_-bq§(this.§_-Rh§.§_-kd§(§_-dI§.§_-fN§),true);
         this.§_-bq§(this.§_-Rh§.§_-kd§(§_-dI§.§_-Gs§),true);
         this.§_-bq§(this.mLevelObjects.§_-l0§,true);
         this.§_-bq§(this.mLevelSlingshot.sprite,true);
         this.§_-bq§(this.§_-Rh§.§_-kd§(§_-dI§.§_-Hw§),true);
         if(§_-tm§.§_-dp§)
         {
            this.§_-bq§(this.§_-c§.§_-Iw§,true);
         }
         this.§_-bq§(this.§_-Rh§.§_-kd§(§_-dI§.§_-1m§),true);
         if(!§_-Z2§.§_-6I§)
         {
         }
      }
      
      private function §_-bq§(param1:Sprite, param2:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(param1);
         }
         if(param2 && this.§_-E1§)
         {
            this.§_-E1§.push(param1);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         param1 /= §_-b§.§_-Hu§;
         param2 /= §_-b§.§_-Hu§;
         _loc3_.x = (param1 / §_-8g§.§_-YI§ + this.§_-rw§.§_-UN§ - §_-8g§.§_-1e§ / §_-8g§.§_-YI§) * §_-G0§;
         _loc3_.y = (param2 / §_-8g§.§_-YI§ + this.§_-rw§.§_-1D§ - §_-8g§.§_-Va§ / §_-8g§.§_-YI§) * §_-G0§;
         return _loc3_;
      }
      
      public function §_-6y§(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / §_-G0§ + §_-8g§.§_-1e§ / §_-8g§.§_-YI§ - this.§_-rw§.§_-UN§) * §_-8g§.§_-YI§;
         _loc3_.y = (param2 / §_-G0§ + §_-8g§.§_-Va§ / §_-8g§.§_-YI§ - this.§_-rw§.§_-1D§) * §_-8g§.§_-YI§;
         _loc3_.x *= §_-b§.§_-q-§;
         _loc3_.y *= §_-b§.§_-q-§;
         return _loc3_;
      }
      
      public function §_-CQ§(param1:String, param2:Number, param3:Number) : void
      {
         this.mLevelObjects.§_-S5§(param1,param2,param3);
      }
      
      public function §_-ec§() : void
      {
         if(this.§_-5u§)
         {
            this.§_-5u§.visible = true;
            this.§_-5u§.alpha = 0;
         }
         this.§_-ba§ = 0;
      }
      
      public function §_-i1§() : void
      {
         this.§_-NS§ = 0;
         this.§_-KC§ = 0;
         this.§_-DG§ = §_-np§.§_-PW§;
         this.§_-bd§ = §_-np§.§ do§;
      }
      
      public function clearLevel() : void
      {
         var _loc1_:Sprite = null;
         if(this.§_-c§)
         {
            this.§_-c§.dispose();
            this.§_-c§ = null;
         }
         if(this.mLevelObjects)
         {
            this.mLevelObjects.dispose();
            this.mLevelObjects = null;
            this.mActiveObject = null;
         }
         if(this.§_-E1§)
         {
            for each(_loc1_ in this.§_-E1§)
            {
               _loc1_.dispose();
            }
            this.§_-E1§ = new Vector.<Sprite>();
         }
         if(this.§_-dv§)
         {
            if(!this.§_-dv§.§_-NR§)
            {
            }
            this.§_-dv§.clear();
            this.§_-dv§ = null;
         }
         if(this.§_-k8§)
         {
            this.§_-k8§.clear();
            this.§_-k8§ = null;
         }
         if(this.mLevelSlingshot)
         {
            this.mLevelSlingshot.dispose();
            this.mLevelSlingshot = null;
         }
         if(this.§_-rw§)
         {
            this.§_-rw§.clear();
            this.§_-rw§ = null;
         }
         if(this.§_-Rh§)
         {
            this.§_-Rh§.dispose();
            this.§_-Rh§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§_-v9§ = 0;
         this.§_-1a§ = 0;
         this.§_-90§ = false;
         this.§_-ba§ = §_-np§.§_-3L§;
         this.§_-NS§ = §_-np§.§_-ss§;
         this.§_-KC§ = 0;
         this.§_-DG§ = §_-np§.§_-PW§;
         this.§_-bd§ = §_-np§.§ do§;
         if(this.§_-Dv§)
         {
            (this.§_-Dv§ as §_-QP§).§_-Fi§.x = 0;
            (this.§_-Dv§ as §_-QP§).§_-Fi§.y = 0;
         }
         if(this.§_-5u§)
         {
            this.§_-5u§.visible = false;
         }
         this.§_-0j§();
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Sprite = null;
         if(!this.§_-90§ || !§_-6Y§.§_-AT§())
         {
            return;
         }
         var _loc4_:Number = 0;
         var _loc5_:Number = 0;
         this.§_-1a§ += param1;
         if(param2)
         {
            this.§_-v9§ += param1;
            _loc5_ = this.§_-dv§.§_-U2§(this.§_-v9§);
            _loc4_ = this.§_-dv§.§_-br§;
         }
         else
         {
            this.mLevelObjects.§_-j0§();
            _loc4_ = param1;
            this.§_-v9§ = 0;
         }
         this.§_-v9§ = _loc5_;
         if(this.§_-sh§)
         {
            if(this.mTrailSpecial)
            {
               this.§_-Md§ = 0;
            }
            if(this.§_-Md§ == 0)
            {
               this.§_-1-§();
            }
            this.§_-Md§ = (this.§_-Md§ + 1) % this.§_-tj§;
         }
         if(this.§_-ba§ < §_-np§.§_-3L§)
         {
            this.§_-ba§ += param1;
            _loc6_ = §_-np§.§_-3L§ / 2;
            _loc7_ = (-Math.abs(this.§_-ba§ - _loc6_) + _loc6_) * (§_-np§.§_-1X§ / _loc6_);
            if(this.§_-5u§)
            {
               this.§_-5u§.alpha = _loc7_;
            }
         }
         else if(this.§_-5u§)
         {
            this.§_-5u§.visible = false;
         }
         if(this.§_-NS§ < §_-np§.§_-ss§)
         {
            this.§_-NS§ += param1;
            this.§_-QC§(param1);
         }
         this.mLevelObjects.§_-U5§(param1,_loc5_);
         this.§_-rw§.§_-2i§(param1);
         this.§_-dv§.§_-bB§();
         if(param2)
         {
            this.mLevelSlingshot.update(param1,param3);
         }
         this.§_-Rh§.update(param1);
         if(this.§_-E1§)
         {
            for each(_loc8_ in this.§_-E1§)
            {
               _loc8_.flatten();
            }
         }
      }
      
      public function §_-1-§() : void
      {
         var _loc1_:§_-fK§ = null;
         if(this.§_-sh§ != null)
         {
            for each(_loc1_ in this.§_-sh§)
            {
               _loc1_.addTrail();
            }
         }
      }
      
      private function §_-QC§(param1:Number) : void
      {
         this.§_-KC§ += this.§_-DG§;
         var _loc2_:Number = param1 / §_-np§.§_-6P§ * this.§_-bd§ * Math.sin(Math.PI / 4 + this.§_-KC§ * 2 * Math.PI);
         var _loc3_:Number = param1 / §_-np§.§_-6P§ * this.§_-bd§ * Math.sin(this.§_-KC§ * 2.1 * Math.PI);
         this.§_-bd§ -= param1 * §_-np§.§ do§ / §_-np§.§_-ss§;
         this.§_-DG§ -= param1 * §_-np§.§_-PW§ / §_-np§.§_-ss§;
         this.§_-rw§.§_-K4§(_loc2_,_loc3_);
         this.§_-rw§.§_-Ha§();
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§_-fK§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.mLevelObjects.isPigsAlive(true))
            {
               _loc2_ = this.mLevelObjects.§_-mP§(true);
               _loc2_.§_-ds§.mTryToScream = §_-T6§.§_-JK§;
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.mLevelObjects.§_-oT§());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            if(this.mLevelObjects.isPigsAlive(true))
            {
               _loc2_ = this.mLevelObjects.§_-mP§(true);
               _loc2_.§_-ds§.mTryToBlink = §_-T6§.§_-1R§;
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.mLevelObjects.§_-oT§());
            }
         }
      }
      
      public function addScore(param1:int, param2:Boolean = false, param3:Number = 0, param4:Number = 0, param5:int = -9999) : void
      {
         if(param5 == -9999)
         {
            param5 = §_-gu§.§_-CL§;
         }
         this.§_-4a§.addScore(param1);
         if(param2 && param1 > 0)
         {
            this.§_-nC§(param1.toString(),param3,param4,800,param5,0,0);
         }
      }
      
      public function §_-nC§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §_-gu§.§_-HD§;
         }
         this.§_-Rh§.§_-2b§(§_-gu§.§_-ft§,§_-dI§.§_-1m§,§_-gu§.§_-E§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §_-VZ§() : void
      {
         if(!§_-2Z§)
         {
            return;
         }
         if(this.§_-bE§)
         {
         }
      }
      
      public function §_-cp§() : void
      {
         if(this.§_-bE§)
         {
            this.§_-bE§ = null;
         }
      }
      
      public function §_-Go§(param1:§_-fK§) : void
      {
         if(this.§_-sh§ == null)
         {
            this.§_-sh§ = new Array();
         }
         this.§_-sh§.push(param1);
      }
      
      public function §_-Js§() : void
      {
         this.mLevelSlingshot.§_-Js§();
         this.mLevelObjects.mSardineCanAdded = true;
      }
      
      public function §_-MR§(param1:§_-fK§) : void
      {
         this.§_-Rh§.§_-2B§(§_-dI§.§_-fN§);
         if(this.§_-sh§.indexOf(param1) >= 0)
         {
            this.§_-sh§.splice(this.§_-sh§.indexOf(param1),1);
         }
         if(this.§_-sh§.length == 0)
         {
            this.§_-sh§ = null;
         }
      }
      
      public function §_-lW§() : void
      {
         this.mLevelObjects.§_-lW§();
      }
      
      public function §_-oz§() : void
      {
         this.mLevelObjects.§_-H7§();
      }
      
      public function get camera() : §_-8g§
      {
         return this.§_-rw§;
      }
      
      public function get objects() : §_-oF§
      {
         return this.mLevelObjects;
      }
      
      public function get particles() : §_-dI§
      {
         return this.§_-Rh§;
      }
      
      public function get background() : §_-tm§
      {
         return this.§_-c§;
      }
      
      public function get slingshot() : §_-nt§
      {
         return this.mLevelSlingshot;
      }
      
      public function getActiveObject() : §_-fK§
      {
         return this.mActiveObject;
      }
      
      public function get §_-9S§() : §_-H1§
      {
         return this.§_-k8§;
      }
      
      public function §_-H-§() : §_-Wl§
      {
         var _loc1_:§_-Wl§ = new §_-Wl§();
         this.§_-rw§.§_-Jf§(_loc1_);
         this.mLevelObjects.§_-XF§(_loc1_);
         this.mLevelSlingshot.§_-e3§(_loc1_);
         _loc1_.§_-W8§ = this.§_-c§.§_-tY§();
         return _loc1_;
      }
      
      public function get stage() : Stage
      {
         return this.mStage;
      }
      
      public function §_-0U§(param1:Number, param2:Number) : void
      {
         if(this.§_-WJ§)
         {
            this.§_-WJ§.§_-ly§(param1,param2);
         }
      }
   }
}
