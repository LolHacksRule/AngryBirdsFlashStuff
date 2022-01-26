package §_-Kz§
{
   import §_-GY§.Sprite;
   import §_-GY§.§_-4W§;
   import §_-GY§.§_-Bf§;
   import §_-MP§.§_-BI§;
   import §_-Ny§.§_-xJ§;
   import §_-Sr§.§_-Jq§;
   import §_-Sr§.§_-K-§;
   import §_-TV§.§_-Sk§;
   import §_-TV§.§_-gb§;
   import §_-VH§.§_-X6§;
   import §_-aA§.§_-I0§;
   import §_-my§.§_-GX§;
   import §_-my§.§_-uG§;
   import §_-yp§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §_-hD§
   {
      
      public static const §_-ed§:int = 0;
      
      public static const §_-Oc§:int = 1;
      
      public static const §_-Ez§:int = 2;
      
      public static const §_-Xw§:int = 3;
      
      public static const §_-Vv§:int = 5;
      
      public static const §_-YX§:int = 3151368;
      
      protected static const §_-xp§:int = 8;
      
      protected static const §_-VP§:int = 0;
      
      public static const §_-7M§:Number = 46.25;
      
      public static const §_-iM§:Number = 52.5;
      
      protected static var §_-ad§:Texture;
      
      public static const §_-ZC§:Number = 0.4;
       
      
      public var §_-GF§:§_-c3§;
      
      public var mX:Number;
      
      public var mY:Number;
      
      public var §_-Th§:Number;
      
      protected var §_-bt§:Number;
      
      protected var §_-4U§:Number;
      
      protected var §_-QG§:Number;
      
      protected var §_-sZ§:Number;
      
      public var §_-tt§:Number;
      
      public var §_-1L§:Boolean = false;
      
      protected var §_-q8§:Number;
      
      public var §_-Mg§:Vector.<§_-FY§>;
      
      public var §_-fy§:int;
      
      public var §_-0-1§:int;
      
      public var §_-w-§:Number;
      
      public var §_-kB§:Sprite;
      
      public var §_-7I§:int = 0;
      
      public var §_-0-f§:Number = 0;
      
      public var §_-w6§:Array;
      
      public var §_-7K§:Array;
      
      public var mSlingShotState:int;
      
      public var §_-we§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §_-kf§:Boolean = false;
      
      public var §_-3C§:Number;
      
      protected var §_-xQ§:Sprite;
      
      protected var §_-7t§:§_-Bf§;
      
      protected var §_-0e§:§_-Bf§;
      
      protected var §_-KW§:Sprite;
      
      protected var §_-z8§:Sprite;
      
      protected var §_-ys§:Sprite;
      
      protected var §_-Id§:§_-4W§;
      
      protected var §_-wI§:§_-4W§;
      
      public function §_-hD§(param1:§_-c3§, param2:§_-BI§, param3:Sprite)
      {
         var _loc4_:§_-xJ§ = null;
         this.§_-Mg§ = new Vector.<§_-FY§>();
         super();
         this.§_-GF§ = param1;
         this.§_-xQ§ = param3;
         if(param2)
         {
            this.setPosition(param2.§_-Ov§,param2.§_-kI§);
            this.§_-G3§();
            for each(_loc4_ in param2.§_-Mg§)
            {
               this.§_-Mf§(_loc4_.id,_loc4_.x,_loc4_.y);
            }
            this.§_-fy§ = 0;
            if(this.§_-Mg§.length <= 0)
            {
               §_-I0§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.mX + " " + this.mY);
               this.§_-ZL§(§_-Xw§);
            }
            else
            {
               this.§_-ZL§(§_-ed§);
            }
         }
         else
         {
            §_-I0§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.§_-ZL§(§_-Xw§);
         }
         this.§_-3C§ = 0;
         this.§_-cJ§();
         this.update(0,true);
         this.§_-Qm§();
         this.§_-T8§(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§_-xQ§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§_-fy§ < this.§_-Mg§.length;
      }
      
      public function dispose() : void
      {
         while(this.§_-Mg§.length > 0)
         {
            this.§_-MS§(0);
         }
         this.§_-Mg§ = null;
         if(this.§_-xQ§)
         {
            this.§_-xQ§.dispose();
            this.§_-xQ§ = null;
         }
         this.§_-kB§ = null;
         this.§_-w6§ = null;
         this.§_-7K§ = null;
      }
      
      public function §_-Ib§(param1:String, param2:Number, param3:Number, param4:int = -1) : §_-FY§
      {
         var _loc5_:§_-FY§;
         (_loc5_ = this.§_-Mf§(param1,param2,param3,param4)).§_-p7§();
         return _loc5_;
      }
      
      protected function §_-Mf§(param1:String, param2:Number, param3:Number, param4:int = -1) : §_-FY§
      {
         var _loc5_:§_-FY§ = new §_-FY§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            this.§_-Mg§.push(_loc5_);
         }
         else
         {
            this.§_-Mg§.splice(param4,0,_loc5_);
         }
         this.§_-kB§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function §_-ZL§(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §_-ed§)
         {
            this.§_-RI§();
            this.§_-w-§ = 1000;
         }
         else if(this.mSlingShotState == §_-Oc§)
         {
            this.§_-RI§();
            this.§_-w-§ = 0;
         }
         else if(this.mSlingShotState == §_-Ez§)
         {
            this.§_-w-§ = 10000;
            this.§_-kf§ = false;
            this.§_-RI§();
         }
         else if(this.mSlingShotState == §_-Xw§)
         {
            this.§_-RI§();
            this.§_-w-§ = 2000;
         }
         else if(this.mSlingShotState == §_-Vv§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§_-kf§ = false;
               this.§_-RI§();
               this.§_-Mg§[this.§_-fy§].setPosition(this.§_-QG§ - this.§_-Mg§[this.§_-fy§].radius * Math.cos(this.§_-0-f§ / (180 / Math.PI)),this.§_-sZ§ + this.§_-Mg§[this.§_-fy§].radius * Math.sin(this.§_-0-f§ / (180 / Math.PI)));
            }
            else
            {
               this.§_-RI§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §_-I6§() : §_-c3§
      {
         return this.§_-GF§;
      }
      
      public function §_-Ms§() : Boolean
      {
         return this.mSlingShotState == §_-Xw§ && this.§_-w-§ <= 0;
      }
      
      private function §_-G3§() : void
      {
         var _loc1_:§_-uG§ = this.§_-GF§.§_-oR§.§_-VW§("SLINGSHOT");
         var _loc2_:§_-GX§ = _loc1_.getFrame(0);
         var _loc3_:§_-GX§ = _loc1_.getFrame(1);
         this.§_-Id§ = new §_-4W§(_loc2_.texture);
         this.§_-Id§.scaleX = _loc2_.scale;
         this.§_-Id§.scaleY = _loc2_.scale;
         this.§_-wI§ = new §_-4W§(_loc3_.texture);
         this.§_-wI§.scaleX = _loc3_.scale;
         this.§_-wI§.scaleY = _loc3_.scale;
         this.§_-OU§();
         this.§_-Lk§();
         this.§_-kB§ = new Sprite();
         this.§_-xQ§.addChild(this.§_-Id§);
         this.§_-xQ§.addChild(this.§_-KW§);
         this.§_-xQ§.addChild(this.§_-kB§);
         this.§_-xQ§.addChild(this.§_-ys§);
         this.§_-xQ§.addChild(this.§_-z8§);
         this.§_-xQ§.addChild(this.§_-wI§);
         this.§_-Th§ = this.mY + 8.5;
      }
      
      public function §_-OU§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§_-bt§ = this.mX;
         this.§_-4U§ = this.mY;
         this.§_-q8§ = §_-kK§.§_-cg§;
         _loc1_ = null;
      }
      
      protected function §_-Lk§() : void
      {
         var _loc2_:BitmapData = null;
         if(!§_-ad§)
         {
            _loc2_ = new BitmapData(18,26,true,4281341704);
            §_-ad§ = this.§_-GF§.§_-3q§.§_-Z4§(_loc2_);
         }
         this.§_-ys§ = new Sprite();
         var _loc1_:§_-4W§ = new §_-4W§(§_-ad§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         this.§_-ys§.addChild(_loc1_);
         this.§_-KW§ = new Sprite();
         this.§_-7t§ = new §_-Bf§(2,2,§_-YX§);
         this.§_-KW§.addChild(this.§_-7t§);
         this.§_-z8§ = new Sprite();
         this.§_-0e§ = new §_-Bf§(2,2,§_-YX§);
         this.§_-z8§.addChild(this.§_-0e§);
      }
      
      public function §_-T8§(param1:Number) : void
      {
         var _loc2_:Number = this.§_-sZ§ / §_-c3§.§_-GA§;
         var _loc3_:Number = this.§_-QG§ / §_-c3§.§_-GA§;
         var _loc4_:Number = 3.5 + 8 * ((this.§_-q8§ - this.§_-tt§) / this.§_-q8§);
         this.§_-ys§.x = _loc3_;
         this.§_-ys§.y = _loc2_;
         this.§_-ys§.rotation = -this.§_-0-f§ / (180 / Math.PI);
         this.§_-Id§.x = this.mX / §_-c3§.§_-GA§ - 3;
         this.§_-Id§.y = this.mY / §_-c3§.§_-GA§ - 30;
         this.§_-wI§.x = this.mX / §_-c3§.§_-GA§ - 30;
         this.§_-wI§.y = this.mY / §_-c3§.§_-GA§ - 30;
         this.§_-z8§.x = this.mX / §_-c3§.§_-GA§ - 17;
         this.§_-z8§.y = this.mY / §_-c3§.§_-GA§ + 5;
         this.§_-z8§.rotation = Math.atan2(_loc2_ - this.§_-z8§.y,_loc3_ - this.§_-z8§.x);
         this.§_-KW§.x = this.mX / §_-c3§.§_-GA§ + 22;
         this.§_-KW§.y = this.mY / §_-c3§.§_-GA§;
         this.§_-KW§.rotation = Math.atan2(_loc2_ - this.§_-KW§.y,_loc3_ - this.§_-KW§.x);
         this.§_-0e§.width = Math.sqrt(Math.pow(_loc3_ - this.§_-z8§.x,2) + Math.pow(_loc2_ - this.§_-z8§.y,2));
         this.§_-7t§.width = Math.sqrt(Math.pow(_loc3_ - this.§_-KW§.x,2) + Math.pow(_loc2_ - this.§_-KW§.y,2));
         this.§_-0e§.height = this.§_-7t§.height = _loc4_ * 2;
         this.§_-0e§.y = -this.§_-0e§.height / 2;
         this.§_-7t§.y = -this.§_-7t§.height / 2;
         this.§_-we§ = false;
      }
      
      public function §_-WL§() : void
      {
         while(this.§_-Mg§.length > 0)
         {
            this.§_-MS§(0,true);
         }
         this.§_-Mn§();
         this.§_-Mf§("BIRD_SARDINE",this.mX,this.mY);
         this.§_-ZL§(§_-Ez§);
      }
      
      protected function §_-Mn§() : void
      {
         §_-X6§.playSound("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.§_-ZL§(§_-Vv§);
      }
      
      public function §_-RI§() : void
      {
         this.setNewCoordinatesForRubber(this.§_-bt§,this.§_-4U§ + this.§_-q8§ / 8);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§_-QG§ == param1 && this.§_-sZ§ == param2)
         {
            return true;
         }
         this.§_-tt§ = Math.sqrt((param2 - this.§_-4U§) * (param2 - this.§_-4U§) + (param1 - this.§_-bt§) * (param1 - this.§_-bt§));
         if(this.§_-tt§ > this.§_-q8§)
         {
            if(param3)
            {
               this.§_-tt§ = Math.sqrt((this.§_-sZ§ - this.§_-4U§) * (this.§_-sZ§ - this.§_-4U§) + (this.§_-QG§ - this.§_-bt§) * (this.§_-QG§ - this.§_-bt§));
               return false;
            }
            param1 = this.§_-bt§ + this.§_-q8§ * (param1 - this.§_-bt§) / this.§_-tt§;
            param2 = this.§_-4U§ + this.§_-q8§ * (param2 - this.§_-4U§) / this.§_-tt§;
            this.§_-tt§ = this.§_-q8§;
         }
         this.§_-QG§ = param1;
         this.§_-sZ§ = param2;
         this.§_-0-f§ = Math.atan2(-(this.§_-sZ§ - this.§_-4U§),this.§_-QG§ - this.§_-bt§);
         this.§_-0-f§ *= 180 / Math.PI;
         if(this.mDragging == false)
         {
            this.§_-QG§ = param1 - 0.7;
            this.§_-sZ§ = param2;
            this.§_-0-f§ = -160;
         }
         _loc4_ = 12;
         _loc5_ = 5;
         _loc6_ = 4;
         _loc7_ = this.§_-q8§ / 2;
         if(this.§_-tt§ > _loc7_ && this.§_-0-f§ > -90 - _loc4_ + _loc5_ && this.§_-0-f§ < -90 + _loc4_ + _loc5_)
         {
            param1 = this.§_-bt§ + _loc7_ * (param1 - this.§_-bt§) / this.§_-tt§;
            param2 = this.§_-4U§ + _loc7_ * (param2 - this.§_-4U§) / this.§_-tt§;
            this.§_-tt§ = _loc7_;
            this.§_-QG§ = param1;
            this.§_-sZ§ = param2;
         }
         else if(this.§_-tt§ > _loc7_ && this.§_-0-f§ > -90 - _loc4_ - _loc6_ + _loc5_ && this.§_-0-f§ < -90 + _loc4_ + _loc6_ + _loc5_)
         {
            _loc8_ = _loc7_ + (this.§_-q8§ - _loc7_) * (Math.abs(this.§_-0-f§ - -90 - _loc5_) - _loc4_) / _loc6_;
            param1 = this.§_-bt§ + _loc8_ * (param1 - this.§_-bt§) / this.§_-tt§;
            param2 = this.§_-4U§ + _loc8_ * (param2 - this.§_-4U§) / this.§_-tt§;
            this.§_-tt§ = _loc8_;
            this.§_-QG§ = param1;
            this.§_-sZ§ = param2;
         }
         if(this.§_-tt§ <= this.§_-q8§ * 0.45)
         {
            this.§_-1L§ = true;
         }
         else if(this.§_-1L§ && this.§_-tt§ >= this.§_-q8§ * 0.8)
         {
            this.§_-Hy§();
            this.§_-1L§ = false;
         }
         this.§_-we§ = true;
         return true;
      }
      
      protected function §_-Hy§() : void
      {
         §_-X6§.playSound("SlingshotStreched");
      }
      
      public function §_-FK§(param1:Number) : void
      {
         this.setPosition(this.mX,this.mY + param1);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Number = param1 - this.mX;
         this.mX = param1;
         var _loc5_:Number = param2 - this.mY;
         this.mY = param2;
         this.§_-Th§ += _loc5_;
         this.§_-4U§ += _loc5_;
         this.§_-sZ§ += _loc5_;
         this.§_-bt§ += _loc4_;
         this.§_-QG§ += _loc4_;
         if(param3)
         {
            this.§_-T8§(0);
         }
         this.§_-we§ = true;
      }
      
      public function §_-N4§() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§_-FY§ = null;
         _loc2_ = this.§_-Mg§[this.§_-fy§];
         var _loc3_:Number = this.§_-tt§ / this.§_-q8§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§_-hD§.§_-iM§) : Number(§_-hD§.§_-7M§);
         }
         return _loc1_ * _loc3_;
      }
      
      public function §_-QV§() : Point
      {
         var _loc1_:§_-FY§ = null;
         if(this.§_-Mg§.length > this.§_-fy§)
         {
            _loc1_ = this.§_-Mg§[this.§_-fy§];
            return new Point(_loc1_.mX,_loc1_.mY);
         }
         return null;
      }
      
      public function §_-6i§() : Point
      {
         return new Point(this.§_-bt§,this.§_-4U§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§_-FY§ = null;
         this.§_-Di§(param1);
         if(this.§_-we§)
         {
            this.§_-T8§(param1);
         }
         this.§_-w-§ -= param1;
         if(this.§_-w-§ < 0)
         {
            this.§_-w-§ = 0;
         }
         if(this.mSlingShotState != §_-Xw§)
         {
            this.§_-NR§(param1,param2);
            _loc3_ = null;
            if(this.§_-Mg§.length > 0)
            {
               _loc3_ = this.§_-Mg§[this.§_-fy§];
            }
            if(_loc3_)
            {
               _loc3_.§_-EQ§(param1);
            }
            if(!_loc3_)
            {
               this.§_-ZL§(§_-Xw§);
            }
            else if(this.mSlingShotState == §_-ed§)
            {
               if(this.§_-w-§ <= 0)
               {
                  this.§_-ZL§(§_-Oc§);
                  _loc3_.§_-Xf§();
               }
            }
            else if(this.mSlingShotState == §_-Oc§)
            {
               if(_loc3_.§_-wg§)
               {
                  this.§_-ZL§(§_-Ez§);
               }
            }
            else if(this.mSlingShotState == §_-Ez§)
            {
               _loc3_.setPosition(this.§_-QG§ - _loc3_.radius * Math.cos(this.§_-0-f§ / (180 / Math.PI)),this.§_-sZ§ + _loc3_.radius * Math.sin(this.§_-0-f§ / (180 / Math.PI)));
               if(this.§_-kf§)
               {
                  this.§_-lX§(this.§_-tt§ / this.§_-q8§,this.§_-0-f§);
               }
            }
         }
      }
      
      public function §_-99§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§_-FY§ = null;
         if(this.§_-Mg§.length > 0)
         {
            _loc5_ = this.§_-Mg§[this.§_-fy§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2);
         this.§_-lX§(param3,param4);
      }
      
      protected function §_-lX§(param1:Number, param2:Number) : void
      {
         var _loc3_:§_-FY§ = null;
         if(this.§_-Mg§.length > 0)
         {
            _loc3_ = this.§_-Mg§[this.§_-fy§];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§_-kf§ = false;
         this.§_-GF§.§_-Oa§(_loc3_,param1,param2);
         this.§_-MS§(this.§_-fy§,_loc3_.§_-k5§ > 0);
         this.§_-ML§();
         if(this.§_-fy§ >= this.§_-Mg§.length)
         {
            this.§_-ZL§(§_-Xw§);
         }
         else
         {
            this.§_-ZL§(§_-ed§);
         }
      }
      
      protected function §_-ML§() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §_-X6§.playSound("BirdShot" + _loc1_);
      }
      
      public function §_-NR§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§_-fy§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.§_-Mg§.length)
         {
            if(this.mSlingShotState == §_-Vv§)
            {
               this.§_-Mg§[_loc4_].update(param1,true,param2);
            }
            else
            {
               this.§_-Mg§[_loc4_].update(param1,false,param2);
            }
            _loc4_++;
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§_-FY§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§_-RI§();
         if(this.§_-0-1§ >= this.§_-Mg§.length)
         {
            return false;
         }
         _loc1_ = this.§_-Mg§[this.§_-0-1§];
         _loc2_ = §_-gb§.§_-iR§(_loc1_.name).score;
         this.§_-GF§.addScore(_loc2_,§_-bv§.§_-25§,true,_loc1_.mX,_loc1_.mY - 3,§_-K-§.§_-eM§(_loc1_.name));
         _loc1_.§_-kL§(-1,true);
         ++this.§_-0-1§;
         return true;
      }
      
      public function §_-rT§() : int
      {
         var _loc2_:§_-FY§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§_-Mg§)
         {
            _loc1_ += §_-gb§.§_-iR§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §_-Di§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§_-3C§ >= 0)
         {
            this.§_-3C§ -= param1;
            if(this.§_-3C§ <= 0)
            {
               _loc2_ = this.§_-GF§.objects.§_-V6§(this.§_-bt§,this.§_-Th§);
               if(_loc2_ < 0)
               {
                  this.§_-FK§(0.1);
                  this.§_-3C§ = 0;
               }
               else if(!this.§_-GF§.objects.§_-mv§(_loc2_).§_-HG§)
               {
                  this.§_-3C§ = -1;
               }
               else if(this.§_-GF§.objects.§_-mv§(_loc2_).§_-9q§())
               {
                  this.§_-3C§ = 2000;
               }
               else
               {
                  this.§_-3C§ = 500;
               }
            }
         }
      }
      
      public function §_-Qm§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 1000;
         do
         {
            _loc2_ = this.§_-GF§.objects.§_-V6§(this.§_-bt§,this.§_-Th§);
            if(_loc2_ != -1)
            {
               break;
            }
            this.§_-FK§(0.1);
         }
         while(_loc1_-- > 0);
         
         this.§_-3C§ = -1;
      }
      
      public function §_-n0§(param1:Number, param2:Number) : void
      {
         this.§_-xQ§.x = -param1;
         this.§_-xQ§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §_-Ez§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §_-Ez§ && this.§_-tt§ > this.§_-q8§ * §_-ZC§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.§_-ZL§(§_-Ez§);
         var _loc1_:§_-FY§ = this.§_-Mg§[this.§_-fy§];
         _loc1_.§_-kL§(§_-Sk§.§_-3l§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§_-FY§ = this.§_-Mg§[this.§_-fy§];
         _loc1_.§_-kL§(§_-Sk§.§_-0-P§);
      }
      
      public function shoot() : void
      {
         this.§_-kf§ = true;
      }
      
      protected function §_-MS§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§_-FY§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.§_-Mg§[param1])
         {
            _loc3_ = this.§_-Mg§[param1];
            this.§_-kB§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§_-Pc§(this.§_-Mg§[param1]);
            }
            _loc3_.dispose();
            this.§_-Mg§[param1] = null;
         }
         this.§_-Mg§.splice(param1,1);
      }
      
      public function §_-Pc§(param1:§_-FY§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §_-c3§.§_-GA§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §_-c3§.§_-GA§) + Math.random() * -_loc8_ * 2;
            this.§_-GF§.particles.addParticle(§_-K-§.§_-b9§,§_-Jq§.§_-0-§,§_-K-§.§_-AI§,param1.mX + _loc7_,param1.mY + _loc8_,1500,"",§_-K-§.§_-2U§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§_-GF§.particles.addParticle(§_-K-§.§_-yv§,§_-Jq§.§_-0-§,§_-K-§.§_-AI§,param1.mX,param1.mY,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function §_-TC§(param1:§_-FY§) : void
      {
         this.§_-MS§(this.§_-Mg§.indexOf(param1));
      }
      
      public function §_-cJ§() : void
      {
         var _loc2_:§_-FY§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§_-FY§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§_-Mg§.length - 1)
         {
            _loc3_ = Math.sqrt((this.mX - this.§_-Mg§[_loc1_].mX) * (this.mX - this.§_-Mg§[_loc1_].mX) + (this.mY - this.§_-Mg§[_loc1_].mY) * (this.mY - this.§_-Mg§[_loc1_].mY));
            if((_loc4_ = Math.sqrt((this.mX - this.§_-Mg§[_loc1_ + 1].mX) * (this.mX - this.§_-Mg§[_loc1_ + 1].mX) + (this.mY - this.§_-Mg§[_loc1_ + 1].mY) * (this.mY - this.§_-Mg§[_loc1_ + 1].mY))) < _loc3_)
            {
               _loc5_ = this.§_-Mg§[_loc1_];
               this.§_-Mg§.splice(_loc1_,1);
               this.§_-Mg§.splice(_loc1_ + 1,0,_loc5_);
               _loc1_ = Math.max(-1,_loc1_ - 2);
            }
            _loc1_++;
         }
         while(this.§_-kB§.numChildren > 0)
         {
            this.§_-kB§.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.§_-Mg§.length)
         {
            _loc2_ = this.§_-Mg§[_loc1_];
            this.§_-kB§.addChildAt(_loc2_.sprite,0);
            _loc1_++;
         }
      }
      
      public function §_-gX§(param1:Number, param2:Number) : §_-FY§
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§_-Mg§.length)
         {
            if(this.§_-Mg§[_loc3_])
            {
               if(this.§_-Mg§[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.§_-Mg§[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function §_-cq§(param1:Number, param2:Number) : §_-hD§
      {
         if(param1 >= this.mX - this.§_-q8§ / 4 && param1 <= this.mX + this.§_-q8§ / 4 && param2 >= this.mY - this.§_-q8§ / 4 && this.mY <= this.§_-Th§)
         {
            return this;
         }
         return null;
      }
      
      public function §_-Ze§(param1:§_-BI§) : void
      {
         var _loc3_:§_-FY§ = null;
         var _loc4_:§_-xJ§ = null;
         param1.§_-Ov§ = this.mX;
         param1.§_-kI§ = this.mY;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§_-Mg§.length)
         {
            _loc3_ = this.§_-Mg§[_loc2_];
            (_loc4_ = new §_-xJ§()).x = _loc3_.mX;
            _loc4_.y = _loc3_.mY;
            _loc4_.id = _loc3_.name;
            param1.§_-Mg§.push(_loc4_);
            _loc2_++;
         }
      }
      
      public function §_-lc§() : void
      {
         while(this.§_-Mg§.length > 0)
         {
            this.§_-TC§(this.§_-Mg§[0]);
         }
      }
      
      public function §_-JN§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§_-Mg§.length)
         {
            if(this.§_-Mg§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§_-Mg§[_loc4_]);
            }
            _loc4_++;
         }
         if(this.mX > param1.x && this.mX < param2.x && this.mY > param1.y && this.mY < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §_-74§() : Array
      {
         return [this.§_-wI§,this.§_-Id§];
      }
      
      public function §_-H2§(param1:String, param2:Number, param3:Number) : §_-FY§
      {
         var _loc4_:§_-FY§ = this.§_-Mf§(param1,param2,param3);
         this.§_-cJ§();
         return _loc4_;
      }
      
      public function §_-Lt§() : Number
      {
         return this.§_-Mg§.length;
      }
   }
}
