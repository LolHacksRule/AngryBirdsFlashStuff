package §_-2r§
{
   import §_-5p§.§_-4§;
   import §_-5p§.§_-b1§;
   import §_-Dk§.Texture;
   import §_-Ls§.Sprite;
   import §_-Ls§.§_-Nd§;
   import §_-Ls§.§_-nY§;
   import §_-T8§.§_-GI§;
   import §_-U0§.§_-tF§;
   import §_-X§.§_-6g§;
   import §_-cb§.§_-0B§;
   import §_-p5§.§_-ZO§;
   import §_-p5§.§_-lM§;
   import §_-we§.§_-5J§;
   import §_-we§.§_-yB§;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §_-Qo§
   {
      
      public static const §_-bV§:int = 0;
      
      public static const §_-pW§:int = 1;
      
      public static const §_-oS§:int = 2;
      
      public static const §_-Iz§:int = 3;
      
      public static const §_-vR§:int = 5;
      
      public static const §_-sB§:int = 3151368;
      
      protected static const §_-e8§:int = 8;
      
      protected static const §_-0-§:int = 0;
      
      public static const §_-ck§:Number = 46.25;
      
      public static const §_-VI§:Number = 52.5;
      
      protected static var §_-HL§:Texture;
      
      public static const §_-Pi§:Number = 0.4;
       
      
      public var §_-5F§:§_-sn§;
      
      public var mX:Number;
      
      public var mY:Number;
      
      public var §_-0-R§:Number;
      
      protected var §_-R6§:Number;
      
      protected var §_-WE§:Number;
      
      protected var §_-Zl§:Number;
      
      protected var §_-vO§:Number;
      
      public var §_-Fa§:Number;
      
      public var §_-6N§:Boolean = false;
      
      protected var §_-f9§:Number;
      
      public var §_-a6§:Vector.<§_-9j§>;
      
      public var §_-I1§:int;
      
      public var §_-pl§:int;
      
      public var §_-3j§:Number;
      
      public var §_-rg§:Sprite;
      
      public var §_-Lo§:int = 0;
      
      public var §_-bG§:Number = 0;
      
      public var §_-po§:Array;
      
      public var §_-SY§:Array;
      
      public var mSlingShotState:int;
      
      public var § else§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §_-HU§:Boolean = false;
      
      public var §_-OB§:Number;
      
      protected var §_-S0§:Sprite;
      
      protected var §_-iv§:§_-nY§;
      
      protected var §_-l§:§_-nY§;
      
      protected var §_-se§:Sprite;
      
      protected var §_-kk§:Sprite;
      
      protected var §_-Vl§:Sprite;
      
      protected var §_-xk§:§_-Nd§;
      
      protected var §_-Ez§:§_-Nd§;
      
      public function §_-Qo§(param1:§_-sn§, param2:§_-GI§, param3:Sprite)
      {
         var _loc4_:§_-6g§ = null;
         this.§_-a6§ = new Vector.<§_-9j§>();
         super();
         this.§_-5F§ = param1;
         this.§_-S0§ = param3;
         if(param2)
         {
            this.setPosition(param2.§_-0-f§,param2.§_-DL§);
            this.§_-GB§();
            for each(_loc4_ in param2.§_-a6§)
            {
               this.§_-BW§(_loc4_.id,_loc4_.x,_loc4_.y);
            }
            this.§_-I1§ = 0;
            if(this.§_-a6§.length <= 0)
            {
               §_-tF§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.mX + " " + this.mY);
               this.§_-Xi§(§_-Iz§);
            }
            else
            {
               this.§_-Xi§(§_-bV§);
            }
         }
         else
         {
            §_-tF§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.§_-Xi§(§_-Iz§);
         }
         this.§_-OB§ = 0;
         this.§_-Ih§();
         this.update(0,true);
         this.§_-tZ§();
         this.§_-Vp§(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§_-S0§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§_-I1§ < this.§_-a6§.length;
      }
      
      public function dispose() : void
      {
         while(this.§_-a6§.length > 0)
         {
            this.§_-PC§(0);
         }
         this.§_-a6§ = null;
         if(this.§_-S0§)
         {
            this.§_-S0§.dispose();
            this.§_-S0§ = null;
         }
         this.§_-rg§ = null;
         this.§_-po§ = null;
         this.§_-SY§ = null;
      }
      
      public function §_-C0§(param1:String, param2:Number, param3:Number, param4:int = -1) : §_-9j§
      {
         var _loc5_:§_-9j§;
         (_loc5_ = this.§_-BW§(param1,param2,param3,param4)).§_-Hg§();
         return _loc5_;
      }
      
      protected function §_-BW§(param1:String, param2:Number, param3:Number, param4:int = -1) : §_-9j§
      {
         var _loc5_:§_-9j§ = new §_-9j§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            this.§_-a6§.push(_loc5_);
         }
         else
         {
            this.§_-a6§.splice(param4,0,_loc5_);
         }
         this.§_-rg§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function §_-Xi§(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §_-bV§)
         {
            this.§_-he§();
            this.§_-3j§ = 1000;
         }
         else if(this.mSlingShotState == §_-pW§)
         {
            this.§_-he§();
            this.§_-3j§ = 0;
         }
         else if(this.mSlingShotState == §_-oS§)
         {
            this.§_-3j§ = 10000;
            this.§_-HU§ = false;
            this.§_-he§();
         }
         else if(this.mSlingShotState == §_-Iz§)
         {
            this.§_-he§();
            this.§_-3j§ = 2000;
         }
         else if(this.mSlingShotState == §_-vR§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§_-HU§ = false;
               this.§_-he§();
               this.§_-a6§[this.§_-I1§].setPosition(this.§_-Zl§ - this.§_-a6§[this.§_-I1§].radius * Math.cos(this.§_-bG§ / (180 / Math.PI)),this.§_-vO§ + this.§_-a6§[this.§_-I1§].radius * Math.sin(this.§_-bG§ / (180 / Math.PI)));
            }
            else
            {
               this.§_-he§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §_-cM§() : §_-sn§
      {
         return this.§_-5F§;
      }
      
      public function §_-QW§() : Boolean
      {
         return this.mSlingShotState == §_-Iz§ && this.§_-3j§ <= 0;
      }
      
      private function §_-GB§() : void
      {
         var _loc1_:§_-b1§ = this.§_-5F§.§_-fl§.§_-sJ§("SLINGSHOT");
         var _loc2_:§_-4§ = _loc1_.getFrame(0);
         var _loc3_:§_-4§ = _loc1_.getFrame(1);
         this.§_-xk§ = new §_-Nd§(_loc2_.texture);
         this.§_-xk§.scaleX = _loc2_.scale;
         this.§_-xk§.scaleY = _loc2_.scale;
         this.§_-Ez§ = new §_-Nd§(_loc3_.texture);
         this.§_-Ez§.scaleX = _loc3_.scale;
         this.§_-Ez§.scaleY = _loc3_.scale;
         this.§null §();
         this.§_-Mh§();
         this.§_-rg§ = new Sprite();
         this.§_-S0§.addChild(this.§_-xk§);
         this.§_-S0§.addChild(this.§_-se§);
         this.§_-S0§.addChild(this.§_-rg§);
         this.§_-S0§.addChild(this.§_-Vl§);
         this.§_-S0§.addChild(this.§_-kk§);
         this.§_-S0§.addChild(this.§_-Ez§);
         this.§_-0-R§ = this.mY + 8.5;
      }
      
      public function §null §() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§_-R6§ = this.mX;
         this.§_-WE§ = this.mY;
         this.§_-f9§ = §_-nb§.§_-g6§;
         _loc1_ = null;
      }
      
      protected function §_-Mh§() : void
      {
         var _loc2_:BitmapData = null;
         if(!§_-HL§)
         {
            _loc2_ = new BitmapData(18,26,true,4281341704);
            §_-HL§ = this.§_-5F§.§_-aJ§.§_-0p§(_loc2_);
         }
         this.§_-Vl§ = new Sprite();
         var _loc1_:§_-Nd§ = new §_-Nd§(§_-HL§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         this.§_-Vl§.addChild(_loc1_);
         this.§_-se§ = new Sprite();
         this.§_-iv§ = new §_-nY§(2,2,§_-sB§);
         this.§_-se§.addChild(this.§_-iv§);
         this.§_-kk§ = new Sprite();
         this.§_-l§ = new §_-nY§(2,2,§_-sB§);
         this.§_-kk§.addChild(this.§_-l§);
      }
      
      public function §_-Vp§(param1:Number) : void
      {
         var _loc2_:Number = this.§_-vO§ / §_-sn§.§_-5Y§;
         var _loc3_:Number = this.§_-Zl§ / §_-sn§.§_-5Y§;
         var _loc4_:Number = 3.5 + 8 * ((this.§_-f9§ - this.§_-Fa§) / this.§_-f9§);
         this.§_-Vl§.x = _loc3_;
         this.§_-Vl§.y = _loc2_;
         this.§_-Vl§.rotation = -this.§_-bG§ / (180 / Math.PI);
         this.§_-xk§.x = this.mX / §_-sn§.§_-5Y§ - 3;
         this.§_-xk§.y = this.mY / §_-sn§.§_-5Y§ - 30;
         this.§_-Ez§.x = this.mX / §_-sn§.§_-5Y§ - 30;
         this.§_-Ez§.y = this.mY / §_-sn§.§_-5Y§ - 30;
         this.§_-kk§.x = this.mX / §_-sn§.§_-5Y§ - 17;
         this.§_-kk§.y = this.mY / §_-sn§.§_-5Y§ + 5;
         this.§_-kk§.rotation = Math.atan2(_loc2_ - this.§_-kk§.y,_loc3_ - this.§_-kk§.x);
         this.§_-se§.x = this.mX / §_-sn§.§_-5Y§ + 22;
         this.§_-se§.y = this.mY / §_-sn§.§_-5Y§;
         this.§_-se§.rotation = Math.atan2(_loc2_ - this.§_-se§.y,_loc3_ - this.§_-se§.x);
         this.§_-l§.width = Math.sqrt(Math.pow(_loc3_ - this.§_-kk§.x,2) + Math.pow(_loc2_ - this.§_-kk§.y,2));
         this.§_-iv§.width = Math.sqrt(Math.pow(_loc3_ - this.§_-se§.x,2) + Math.pow(_loc2_ - this.§_-se§.y,2));
         this.§_-l§.height = this.§_-iv§.height = _loc4_ * 2;
         this.§_-l§.y = -this.§_-l§.height / 2;
         this.§_-iv§.y = -this.§_-iv§.height / 2;
         this.§ else§ = false;
      }
      
      public function §_-43§() : void
      {
         while(this.§_-a6§.length > 0)
         {
            this.§_-PC§(0,true);
         }
         this.§_-I-§();
         this.§_-BW§("BIRD_SARDINE",this.mX,this.mY);
         this.§_-Xi§(§_-oS§);
      }
      
      protected function §_-I-§() : void
      {
         §_-0B§.playSound("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.§_-Xi§(§_-vR§);
      }
      
      public function §_-he§() : void
      {
         this.setNewCoordinatesForRubber(this.§_-R6§,this.§_-WE§ + this.§_-f9§ / 8);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§_-Zl§ == param1 && this.§_-vO§ == param2)
         {
            return true;
         }
         this.§_-Fa§ = Math.sqrt((param2 - this.§_-WE§) * (param2 - this.§_-WE§) + (param1 - this.§_-R6§) * (param1 - this.§_-R6§));
         if(this.§_-Fa§ > this.§_-f9§)
         {
            if(param3)
            {
               this.§_-Fa§ = Math.sqrt((this.§_-vO§ - this.§_-WE§) * (this.§_-vO§ - this.§_-WE§) + (this.§_-Zl§ - this.§_-R6§) * (this.§_-Zl§ - this.§_-R6§));
               return false;
            }
            param1 = this.§_-R6§ + this.§_-f9§ * (param1 - this.§_-R6§) / this.§_-Fa§;
            param2 = this.§_-WE§ + this.§_-f9§ * (param2 - this.§_-WE§) / this.§_-Fa§;
            this.§_-Fa§ = this.§_-f9§;
         }
         this.§_-Zl§ = param1;
         this.§_-vO§ = param2;
         this.§_-bG§ = Math.atan2(-(this.§_-vO§ - this.§_-WE§),this.§_-Zl§ - this.§_-R6§);
         this.§_-bG§ *= 180 / Math.PI;
         if(this.mDragging == false)
         {
            this.§_-Zl§ = param1 - 0.7;
            this.§_-vO§ = param2;
            this.§_-bG§ = -160;
         }
         _loc4_ = 12;
         _loc5_ = 5;
         _loc6_ = 4;
         _loc7_ = this.§_-f9§ / 2;
         if(this.§_-Fa§ > _loc7_ && this.§_-bG§ > -90 - _loc4_ + _loc5_ && this.§_-bG§ < -90 + _loc4_ + _loc5_)
         {
            param1 = this.§_-R6§ + _loc7_ * (param1 - this.§_-R6§) / this.§_-Fa§;
            param2 = this.§_-WE§ + _loc7_ * (param2 - this.§_-WE§) / this.§_-Fa§;
            this.§_-Fa§ = _loc7_;
            this.§_-Zl§ = param1;
            this.§_-vO§ = param2;
         }
         else if(this.§_-Fa§ > _loc7_ && this.§_-bG§ > -90 - _loc4_ - _loc6_ + _loc5_ && this.§_-bG§ < -90 + _loc4_ + _loc6_ + _loc5_)
         {
            _loc8_ = _loc7_ + (this.§_-f9§ - _loc7_) * (Math.abs(this.§_-bG§ - -90 - _loc5_) - _loc4_) / _loc6_;
            param1 = this.§_-R6§ + _loc8_ * (param1 - this.§_-R6§) / this.§_-Fa§;
            param2 = this.§_-WE§ + _loc8_ * (param2 - this.§_-WE§) / this.§_-Fa§;
            this.§_-Fa§ = _loc8_;
            this.§_-Zl§ = param1;
            this.§_-vO§ = param2;
         }
         if(this.§_-Fa§ <= this.§_-f9§ * 0.45)
         {
            this.§_-6N§ = true;
         }
         else if(this.§_-6N§ && this.§_-Fa§ >= this.§_-f9§ * 0.8)
         {
            this.§_-Ua§();
            this.§_-6N§ = false;
         }
         this.§ else§ = true;
         return true;
      }
      
      protected function §_-Ua§() : void
      {
         §_-0B§.playSound("SlingshotStreched");
      }
      
      public function §_-Fg§(param1:Number) : void
      {
         this.setPosition(this.mX,this.mY + param1);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Number = param1 - this.mX;
         this.mX = param1;
         var _loc5_:Number = param2 - this.mY;
         this.mY = param2;
         this.§_-0-R§ += _loc5_;
         this.§_-WE§ += _loc5_;
         this.§_-vO§ += _loc5_;
         this.§_-R6§ += _loc4_;
         this.§_-Zl§ += _loc4_;
         if(param3)
         {
            this.§_-Vp§(0);
         }
         this.§ else§ = true;
      }
      
      public function §for§() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§_-9j§ = null;
         _loc2_ = this.§_-a6§[this.§_-I1§];
         var _loc3_:Number = this.§_-Fa§ / this.§_-f9§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§_-Qo§.§_-VI§) : Number(§_-Qo§.§_-ck§);
         }
         return _loc1_ * _loc3_;
      }
      
      public function §_-r-§() : Point
      {
         var _loc1_:§_-9j§ = null;
         if(this.§_-a6§.length > this.§_-I1§)
         {
            _loc1_ = this.§_-a6§[this.§_-I1§];
            return new Point(_loc1_.mX,_loc1_.mY);
         }
         return null;
      }
      
      public function §_-A4§() : Point
      {
         return new Point(this.§_-R6§,this.§_-WE§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§_-9j§ = null;
         this.§_-eu§(param1);
         if(this.§ else§)
         {
            this.§_-Vp§(param1);
         }
         this.§_-3j§ -= param1;
         if(this.§_-3j§ < 0)
         {
            this.§_-3j§ = 0;
         }
         if(this.mSlingShotState != §_-Iz§)
         {
            this.§_-G3§(param1,param2);
            _loc3_ = null;
            if(this.§_-a6§.length > 0)
            {
               _loc3_ = this.§_-a6§[this.§_-I1§];
            }
            if(_loc3_)
            {
               _loc3_.§_-HD§(param1);
            }
            if(!_loc3_)
            {
               this.§_-Xi§(§_-Iz§);
            }
            else if(this.mSlingShotState == §_-bV§)
            {
               if(this.§_-3j§ <= 0)
               {
                  this.§_-Xi§(§_-pW§);
                  _loc3_.§_-YR§();
               }
            }
            else if(this.mSlingShotState == §_-pW§)
            {
               if(_loc3_.§_-qu§)
               {
                  this.§_-Xi§(§_-oS§);
               }
            }
            else if(this.mSlingShotState == §_-oS§)
            {
               _loc3_.setPosition(this.§_-Zl§ - _loc3_.radius * Math.cos(this.§_-bG§ / (180 / Math.PI)),this.§_-vO§ + _loc3_.radius * Math.sin(this.§_-bG§ / (180 / Math.PI)));
               if(this.§_-HU§)
               {
                  this.§_-lL§(this.§_-Fa§ / this.§_-f9§,this.§_-bG§);
               }
            }
         }
      }
      
      public function §_-tQ§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§_-9j§ = null;
         if(this.§_-a6§.length > 0)
         {
            _loc5_ = this.§_-a6§[this.§_-I1§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2);
         this.§_-lL§(param3,param4);
      }
      
      protected function §_-lL§(param1:Number, param2:Number) : void
      {
         var _loc3_:§_-9j§ = null;
         if(this.§_-a6§.length > 0)
         {
            _loc3_ = this.§_-a6§[this.§_-I1§];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§_-HU§ = false;
         this.§_-5F§.§_-Dl§(_loc3_,param1,param2);
         this.§_-PC§(this.§_-I1§,_loc3_.§_-Cm§ > 0);
         this.§_-ra§();
         if(this.§_-I1§ >= this.§_-a6§.length)
         {
            this.§_-Xi§(§_-Iz§);
         }
         else
         {
            this.§_-Xi§(§_-bV§);
         }
      }
      
      protected function §_-ra§() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §_-0B§.playSound("BirdShot" + _loc1_);
      }
      
      public function §_-G3§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§_-I1§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.§_-a6§.length)
         {
            if(this.mSlingShotState == §_-vR§)
            {
               this.§_-a6§[_loc4_].update(param1,true,param2);
            }
            else
            {
               this.§_-a6§[_loc4_].update(param1,false,param2);
            }
            _loc4_++;
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§_-9j§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§_-he§();
         if(this.§_-pl§ >= this.§_-a6§.length)
         {
            return false;
         }
         _loc1_ = this.§_-a6§[this.§_-pl§];
         _loc2_ = §_-lM§.§_-0-i§(_loc1_.name).score;
         this.§_-5F§.addScore(_loc2_,§_-fU§.§_-vU§,true,_loc1_.mX,_loc1_.mY - 3,§_-yB§.§_-7T§(_loc1_.name));
         _loc1_.§_-Yj§(-1,true);
         ++this.§_-pl§;
         return true;
      }
      
      public function §_-Vq§() : int
      {
         var _loc2_:§_-9j§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§_-a6§)
         {
            _loc1_ += §_-lM§.§_-0-i§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §_-eu§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§_-OB§ >= 0)
         {
            this.§_-OB§ -= param1;
            if(this.§_-OB§ <= 0)
            {
               _loc2_ = this.§_-5F§.objects.§_-SD§(this.§_-R6§,this.§_-0-R§);
               if(_loc2_ < 0)
               {
                  this.§_-Fg§(0.1);
                  this.§_-OB§ = 0;
               }
               else if(!this.§_-5F§.objects.§_-28§(_loc2_).§do §)
               {
                  this.§_-OB§ = -1;
               }
               else if(this.§_-5F§.objects.§_-28§(_loc2_).§_-UQ§())
               {
                  this.§_-OB§ = 2000;
               }
               else
               {
                  this.§_-OB§ = 500;
               }
            }
         }
      }
      
      public function §_-tZ§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 1000;
         do
         {
            _loc2_ = this.§_-5F§.objects.§_-SD§(this.§_-R6§,this.§_-0-R§);
            if(_loc2_ != -1)
            {
               break;
            }
            this.§_-Fg§(0.1);
         }
         while(_loc1_-- > 0);
         
         this.§_-OB§ = -1;
      }
      
      public function § for§(param1:Number, param2:Number) : void
      {
         this.§_-S0§.x = -param1;
         this.§_-S0§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §_-oS§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §_-oS§ && this.§_-Fa§ > this.§_-f9§ * §_-Pi§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.§_-Xi§(§_-oS§);
         var _loc1_:§_-9j§ = this.§_-a6§[this.§_-I1§];
         _loc1_.§_-Yj§(§_-ZO§.§_-xa§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§_-9j§ = this.§_-a6§[this.§_-I1§];
         _loc1_.§_-Yj§(§_-ZO§.§_-qO§);
      }
      
      public function shoot() : void
      {
         this.§_-HU§ = true;
      }
      
      protected function §_-PC§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§_-9j§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.§_-a6§[param1])
         {
            _loc3_ = this.§_-a6§[param1];
            this.§_-rg§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§_-JY§(this.§_-a6§[param1]);
            }
            _loc3_.dispose();
            this.§_-a6§[param1] = null;
         }
         this.§_-a6§.splice(param1,1);
      }
      
      public function §_-JY§(param1:§_-9j§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §_-sn§.§_-5Y§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §_-sn§.§_-5Y§) + Math.random() * -_loc8_ * 2;
            this.§_-5F§.particles.addParticle(§_-yB§.§_-PD§,§_-5J§.§_-2S§,§_-yB§.§_-7K§,param1.mX + _loc7_,param1.mY + _loc8_,1500,"",§_-yB§.§_-zC§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§_-5F§.particles.addParticle(§_-yB§.§_-LP§,§_-5J§.§_-2S§,§_-yB§.§_-7K§,param1.mX,param1.mY,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function §_-XB§(param1:§_-9j§) : void
      {
         this.§_-PC§(this.§_-a6§.indexOf(param1));
      }
      
      public function §_-Ih§() : void
      {
         var _loc2_:§_-9j§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§_-9j§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§_-a6§.length - 1)
         {
            _loc3_ = Math.sqrt((this.mX - this.§_-a6§[_loc1_].mX) * (this.mX - this.§_-a6§[_loc1_].mX) + (this.mY - this.§_-a6§[_loc1_].mY) * (this.mY - this.§_-a6§[_loc1_].mY));
            if((_loc4_ = Math.sqrt((this.mX - this.§_-a6§[_loc1_ + 1].mX) * (this.mX - this.§_-a6§[_loc1_ + 1].mX) + (this.mY - this.§_-a6§[_loc1_ + 1].mY) * (this.mY - this.§_-a6§[_loc1_ + 1].mY))) < _loc3_)
            {
               _loc5_ = this.§_-a6§[_loc1_];
               this.§_-a6§.splice(_loc1_,1);
               this.§_-a6§.splice(_loc1_ + 1,0,_loc5_);
               _loc1_ = Math.max(-1,_loc1_ - 2);
            }
            _loc1_++;
         }
         while(this.§_-rg§.numChildren > 0)
         {
            this.§_-rg§.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.§_-a6§.length)
         {
            _loc2_ = this.§_-a6§[_loc1_];
            this.§_-rg§.addChildAt(_loc2_.sprite,0);
            _loc1_++;
         }
      }
      
      public function §_-Nm§(param1:Number, param2:Number) : §_-9j§
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§_-a6§.length)
         {
            if(this.§_-a6§[_loc3_])
            {
               if(this.§_-a6§[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.§_-a6§[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function §_-I8§(param1:Number, param2:Number) : §_-Qo§
      {
         if(param1 >= this.mX - this.§_-f9§ / 4 && param1 <= this.mX + this.§_-f9§ / 4 && param2 >= this.mY - this.§_-f9§ / 4 && this.mY <= this.§_-0-R§)
         {
            return this;
         }
         return null;
      }
      
      public function §_-jj§(param1:§_-GI§) : void
      {
         var _loc3_:§_-9j§ = null;
         var _loc4_:§_-6g§ = null;
         param1.§_-0-f§ = this.mX;
         param1.§_-DL§ = this.mY;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§_-a6§.length)
         {
            _loc3_ = this.§_-a6§[_loc2_];
            (_loc4_ = new §_-6g§()).x = _loc3_.mX;
            _loc4_.y = _loc3_.mY;
            _loc4_.id = _loc3_.name;
            param1.§_-a6§.push(_loc4_);
            _loc2_++;
         }
      }
      
      public function §_-NM§() : void
      {
         while(this.§_-a6§.length > 0)
         {
            this.§_-XB§(this.§_-a6§[0]);
         }
      }
      
      public function §_-R3§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§_-a6§.length)
         {
            if(this.§_-a6§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§_-a6§[_loc4_]);
            }
            _loc4_++;
         }
         if(this.mX > param1.x && this.mX < param2.x && this.mY > param1.y && this.mY < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §_-0L§() : Array
      {
         return [this.§_-Ez§,this.§_-xk§];
      }
      
      public function §_-tD§(param1:String, param2:Number, param3:Number) : §_-9j§
      {
         var _loc4_:§_-9j§ = this.§_-BW§(param1,param2,param3);
         this.§_-Ih§();
         return _loc4_;
      }
      
      public function §_-G§() : Number
      {
         return this.§_-a6§.length;
      }
   }
}
