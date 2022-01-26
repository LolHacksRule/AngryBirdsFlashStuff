package §_-ez§
{
   import §_-5x§.§_-8p§;
   import §_-B7§.§_-TP§;
   import §_-B7§.§_-cO§;
   import §_-Bp§.§_-wQ§;
   import §_-Q2§.Texture;
   import §_-Vq§.§_-dI§;
   import §_-Vq§.§_-gu§;
   import §_-Y-§.§_-Wl§;
   import §_-ZG§.§_-Ne§;
   import §_-dx§.b2Vec2;
   import §_-p7§.§_-WY§;
   import §_-th§.§_-EX§;
   import §_-vO§.Sprite;
   import §_-vO§.§_-OW§;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §_-nt§
   {
      
      private static var §_-oX§:Texture;
      
      private static var §_-LL§:Texture;
      
      public static const §_-By§:Number = 0.4;
      
      public static const §_-jW§:int = 3151368;
      
      public static const §_-DF§:int = 0;
      
      public static const §_-wf§:int = 1;
      
      public static const §_-6M§:int = 2;
      
      public static const §_-wF§:int = 3;
      
      public static const §_-kG§:int = 5;
      
      private static const §_-JY§:int = 8;
      
      private static const §_-C2§:int = 0;
      
      public static const §_-u9§:Number = 46.25;
      
      public static const §_-FO§:Number = 52.5;
       
      
      public var §_-9N§:§_-Ay§;
      
      public var mX:Number;
      
      public var mY:Number;
      
      public var §_-eo§:Number;
      
      private var §_-Ik§:Number;
      
      private var §_-dD§:Number;
      
      private var §_-V§:Number;
      
      private var §_-AX§:Number;
      
      public var §_-vU§:Number;
      
      public var §_-t8§:Boolean = false;
      
      public var §_-S6§:Number;
      
      public var mBirds:Vector.<§_-7m§>;
      
      public var mNextBirdIndex:int;
      
      public var §_-AZ§:int;
      
      public var §_-7Z§:Number;
      
      public var §_-AE§:§_-vO§.Sprite;
      
      public var §_-hG§:int = 0;
      
      public var §_-kH§:Number = 0;
      
      public var §_-6Q§:Array;
      
      public var §_-s2§:Array;
      
      public var mSlingShotState:int;
      
      public var §_-Wh§:Boolean;
      
      public var mDragging:Boolean = false;
      
      public var mShootTheBird:Boolean = false;
      
      public var §_-Dj§:Number;
      
      private var §_-0O§:§_-vO§.Sprite;
      
      private var §_-1V§:§_-OW§;
      
      private var §_-lB§:§_-OW§;
      
      private var §_-Cr§:§_-vO§.Sprite;
      
      private var §_-Uc§:§_-vO§.Sprite;
      
      private var §_-gD§:§_-vO§.Sprite;
      
      private var §_-PF§:§_-OW§;
      
      private var §_-Vv§:§_-OW§;
      
      public function §_-nt§(param1:§_-Ay§, param2:§_-Wl§, param3:§_-vO§.Sprite)
      {
         var _loc4_:§_-EX§ = null;
         this.mBirds = new Vector.<§_-7m§>();
         super();
         this.§_-9N§ = param1;
         this.§_-0O§ = param3;
         if(param2)
         {
            this.setPosition(param2.§_-KK§,param2.§_-Ya§);
            this.§_-Fp§();
            for each(_loc4_ in param2.mBirds)
            {
               this.§_-8E§(_loc4_.id,_loc4_.x,_loc4_.y);
            }
            this.mNextBirdIndex = 0;
            if(this.mBirds.length <= 0)
            {
               §_-Ne§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.mX + " " + this.mY);
               this.§_-lu§(§_-wF§);
            }
            else
            {
               this.§_-lu§(§_-DF§);
            }
         }
         else
         {
            §_-Ne§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.§_-lu§(§_-wF§);
         }
         this.§_-Wh§ = true;
         this.§_-Dj§ = 0;
         this.§_-Av§();
         this.update(0,true);
      }
      
      public function get sprite() : §_-vO§.Sprite
      {
         return this.§_-0O§;
      }
      
      public function dispose() : void
      {
         while(this.mBirds.length > 0)
         {
            this.§_-3p§(0);
         }
         this.mBirds = null;
         if(this.§_-0O§)
         {
            this.§_-0O§.dispose();
            this.§_-0O§ = null;
         }
         this.§_-AE§ = null;
         this.§_-6Q§ = null;
         this.§_-s2§ = null;
      }
      
      public function §_-NC§(param1:String, param2:Number, param3:Number, param4:int = -1) : §_-7m§
      {
         var _loc5_:§_-7m§;
         (_loc5_ = this.§_-8E§(param1,param2,param3,param4)).§_-qd§();
         return _loc5_;
      }
      
      protected function §_-8E§(param1:String, param2:Number, param3:Number, param4:int = -1) : §_-7m§
      {
         var _loc5_:§_-7m§ = new §_-7m§(this,new §_-vO§.Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            this.mBirds.push(_loc5_);
         }
         else
         {
            this.mBirds.splice(param4,0,_loc5_);
         }
         this.§_-AE§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      protected function §_-lu§(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §_-DF§)
         {
            this.setNewCoordinatesForRubber(this.§_-Ik§,this.§_-dD§ + this.§_-S6§ / 8);
            this.§_-7Z§ = 1000;
         }
         else if(this.mSlingShotState == §_-wf§)
         {
            this.setNewCoordinatesForRubber(this.§_-Ik§,this.§_-dD§ + this.§_-S6§ / 8);
            this.§_-7Z§ = 0;
         }
         else if(this.mSlingShotState == §_-6M§)
         {
            this.§_-7Z§ = 10000;
            this.mShootTheBird = false;
            this.setNewCoordinatesForRubber(this.§_-Ik§,this.§_-dD§ + this.§_-S6§ / 8);
         }
         else if(this.mSlingShotState == §_-wF§)
         {
            this.setNewCoordinatesForRubber(this.§_-Ik§,this.§_-dD§ + this.§_-S6§ / 8);
            this.§_-7Z§ = 2000;
         }
         else if(this.mSlingShotState == §_-kG§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.mShootTheBird = false;
               this.setNewCoordinatesForRubber(this.§_-Ik§,this.§_-dD§ + this.§_-S6§ / 8);
               this.mBirds[this.mNextBirdIndex].setPosition(this.§_-V§ - this.mBirds[this.mNextBirdIndex].radius * Math.cos(this.§_-kH§ / (180 / Math.PI)),this.§_-AX§ + this.mBirds[this.mNextBirdIndex].radius * Math.sin(this.§_-kH§ / (180 / Math.PI)));
            }
            this.setNewCoordinatesForRubber(this.§_-Ik§,this.§_-dD§ + this.§_-S6§ / 8);
         }
         this.mDragging = false;
      }
      
      public function get §_-vD§() : §_-Ay§
      {
         return this.§_-9N§;
      }
      
      public function §_-Hk§() : Boolean
      {
         return this.mSlingShotState == §_-wF§ && this.§_-7Z§ <= 0;
      }
      
      private function §_-Fp§() : void
      {
         var _loc1_:§_-wQ§ = this.§_-9N§.§_-wg§.§_-hS§("SLINGSHOT");
         var _loc2_:Texture = _loc1_.getFrame(0).texture;
         var _loc3_:Texture = _loc1_.getFrame(1).texture;
         this.§_-PF§ = new §_-OW§(_loc2_);
         this.§_-Vv§ = new §_-OW§(_loc3_);
         this.§_-Zw§();
         this.§_-WM§();
         this.§_-AE§ = new §_-vO§.Sprite();
         this.§_-0O§.addChild(this.§_-PF§);
         this.§_-0O§.addChild(this.§_-Cr§);
         this.§_-0O§.addChild(this.§_-AE§);
         this.§_-0O§.addChild(this.§_-gD§);
         this.§_-0O§.addChild(this.§_-Uc§);
         this.§_-0O§.addChild(this.§_-Vv§);
         this.§_-eo§ = this.mY + 8.5;
      }
      
      public function §_-Zw§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§_-Ik§ = this.mX;
         this.§_-dD§ = this.mY;
         this.§_-S6§ = 5;
         _loc1_ = null;
      }
      
      private function §_-WM§() : void
      {
         var _loc2_:flash.display.Sprite = null;
         var _loc3_:BitmapData = null;
         if(!§_-oX§)
         {
            §_-oX§ = this.§_-9N§.§_-si§.§_-pE§(new BitmapData(2,2,false,§_-jW§));
         }
         if(!§_-LL§)
         {
            _loc2_ = new §_-WY§.§_-fs§("MovieClip_SlingHolder")();
            _loc3_ = new BitmapData(_loc2_.width,_loc2_.height,true,0);
            _loc3_.draw(_loc2_);
            §_-LL§ = this.§_-9N§.§_-si§.§_-pE§(_loc3_);
         }
         this.§_-gD§ = new §_-vO§.Sprite();
         var _loc1_:§_-OW§ = new §_-OW§(§_-LL§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         this.§_-gD§.addChild(_loc1_);
         this.§_-Cr§ = new §_-vO§.Sprite();
         this.§_-1V§ = new §_-OW§(§_-oX§);
         this.§_-Cr§.addChild(this.§_-1V§);
         this.§_-Uc§ = new §_-vO§.Sprite();
         this.§_-lB§ = new §_-OW§(§_-oX§);
         this.§_-Uc§.addChild(this.§_-lB§);
      }
      
      public function §_-Gx§(param1:Number) : void
      {
         var _loc2_:Number = this.§_-AX§ / §_-Ay§.§_-G0§;
         var _loc3_:Number = this.§_-V§ / §_-Ay§.§_-G0§;
         var _loc4_:Number = 8 + 12 * ((this.§_-S6§ - this.§_-vU§) / this.§_-S6§);
         this.§_-gD§.x = _loc3_;
         this.§_-gD§.y = _loc2_;
         this.§_-gD§.rotation = -this.§_-kH§ / (180 / Math.PI);
         this.§_-PF§.x = this.mX / §_-Ay§.§_-G0§ - 3;
         this.§_-PF§.y = this.mY / §_-Ay§.§_-G0§ - 30;
         this.§_-Vv§.x = this.mX / §_-Ay§.§_-G0§ - 30;
         this.§_-Vv§.y = this.mY / §_-Ay§.§_-G0§ - 30 - 4;
         this.§_-Uc§.rotation = Math.atan2(_loc2_ - this.§_-Uc§.y,_loc3_ - this.§_-Uc§.x);
         var _loc5_:Number = Math.sin(this.§_-Uc§.rotation) * (_loc4_ / 2);
         this.§_-Uc§.x = this.mX / §_-Ay§.§_-G0§ - 17 + _loc5_;
         if(_loc3_ - 17 + _loc5_ > this.mX / this.§_-Uc§.x)
         {
            this.§_-Uc§.y = this.mY / §_-Ay§.§_-G0§ - _loc4_ / 2;
         }
         else
         {
            this.§_-Uc§.y = this.mY / §_-Ay§.§_-G0§ + _loc4_ / 2;
         }
         this.§_-Cr§.rotation = Math.atan2(_loc2_ - this.§_-Cr§.y,_loc3_ - this.§_-Cr§.x);
         var _loc6_:Number = Math.sin(this.§_-Cr§.rotation) * (_loc4_ / 2);
         this.§_-Cr§.x = this.mX / §_-Ay§.§_-G0§ + 22 + _loc6_;
         if(_loc3_ + 22 + _loc6_ > this.§_-Cr§.x)
         {
            this.§_-Cr§.y = this.mY / §_-Ay§.§_-G0§ - _loc4_ / 2;
         }
         else
         {
            this.§_-Cr§.y = this.mY / §_-Ay§.§_-G0§ + _loc4_ / 2;
         }
         this.§_-lB§.width = Math.sqrt(Math.pow(_loc3_ - this.§_-Uc§.x,2) + Math.pow(_loc2_ - this.§_-Uc§.y,2));
         this.§_-1V§.width = Math.sqrt(Math.pow(_loc3_ - this.§_-Cr§.x,2) + Math.pow(_loc2_ - this.§_-Cr§.y,2));
         this.§_-lB§.height = this.§_-1V§.height = _loc4_;
         this.§_-Wh§ = false;
      }
      
      public function §_-Js§() : void
      {
         while(this.mBirds.length > 0)
         {
            this.§_-3p§(0,true);
         }
         this.§_-8E§("BIRD_SARDINE",this.mX,this.mY);
         this.§_-lu§(§_-6M§);
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.§_-lu§(§_-kG§);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§_-V§ == param1 && this.§_-AX§ == param2)
         {
            return true;
         }
         this.§_-vU§ = Math.sqrt((param2 - this.§_-dD§) * (param2 - this.§_-dD§) + (param1 - this.§_-Ik§) * (param1 - this.§_-Ik§));
         if(this.§_-vU§ > this.§_-S6§)
         {
            if(param3)
            {
               this.§_-vU§ = Math.sqrt((this.§_-AX§ - this.§_-dD§) * (this.§_-AX§ - this.§_-dD§) + (this.§_-V§ - this.§_-Ik§) * (this.§_-V§ - this.§_-Ik§));
               return false;
            }
            param1 = this.§_-Ik§ + this.§_-S6§ * (param1 - this.§_-Ik§) / this.§_-vU§;
            param2 = this.§_-dD§ + this.§_-S6§ * (param2 - this.§_-dD§) / this.§_-vU§;
            this.§_-vU§ = this.§_-S6§;
         }
         this.§_-V§ = param1;
         this.§_-AX§ = param2;
         this.§_-kH§ = Math.atan2(-(this.§_-AX§ - this.§_-dD§),this.§_-V§ - this.§_-Ik§);
         this.§_-kH§ *= 180 / Math.PI;
         if(this.mDragging == false)
         {
            this.§_-V§ = param1 - 0.7;
            this.§_-AX§ = param2;
            this.§_-kH§ = -160;
         }
         _loc4_ = 12;
         _loc5_ = 5;
         _loc6_ = 4;
         _loc7_ = this.§_-S6§ / 2;
         if(this.§_-vU§ > _loc7_ && this.§_-kH§ > -90 - _loc4_ + _loc5_ && this.§_-kH§ < -90 + _loc4_ + _loc5_)
         {
            param1 = this.§_-Ik§ + _loc7_ * (param1 - this.§_-Ik§) / this.§_-vU§;
            param2 = this.§_-dD§ + _loc7_ * (param2 - this.§_-dD§) / this.§_-vU§;
            this.§_-vU§ = _loc7_;
            this.§_-V§ = param1;
            this.§_-AX§ = param2;
         }
         else if(this.§_-vU§ > _loc7_ && this.§_-kH§ > -90 - _loc4_ - _loc6_ + _loc5_ && this.§_-kH§ < -90 + _loc4_ + _loc6_ + _loc5_)
         {
            _loc8_ = _loc7_ + (this.§_-S6§ - _loc7_) * (Math.abs(this.§_-kH§ - -90 - _loc5_) - _loc4_) / _loc6_;
            param1 = this.§_-Ik§ + _loc8_ * (param1 - this.§_-Ik§) / this.§_-vU§;
            param2 = this.§_-dD§ + _loc8_ * (param2 - this.§_-dD§) / this.§_-vU§;
            this.§_-vU§ = _loc8_;
            this.§_-V§ = param1;
            this.§_-AX§ = param2;
         }
         if(this.§_-vU§ <= this.§_-S6§ * 0.45)
         {
            this.§_-t8§ = true;
         }
         else if(this.§_-t8§ && this.§_-vU§ >= this.§_-S6§ * 0.8)
         {
            §_-8p§.§_-rD§("SlingshotStreched");
            this.§_-t8§ = false;
         }
         this.§_-Wh§ = true;
         return true;
      }
      
      public function §_-be§(param1:Number) : void
      {
         this.setPosition(this.mX,this.mY + param1);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Number = param1 - this.mX;
         this.mX = param1;
         var _loc5_:Number = param2 - this.mY;
         this.mY = param2;
         this.§_-eo§ += _loc5_;
         this.§_-dD§ += _loc5_;
         this.§_-AX§ += _loc5_;
         this.§_-Ik§ += _loc4_;
         this.§_-V§ += _loc4_;
         if(param3)
         {
            this.§_-Gx§(0);
         }
         this.§_-Wh§ = true;
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§_-7m§ = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:int = 0;
         this.§_-Qy§(param1);
         if(this.§_-Wh§)
         {
            this.§_-Gx§(param1);
         }
         this.§_-7Z§ -= param1;
         if(this.§_-7Z§ < 0)
         {
            this.§_-7Z§ = 0;
         }
         if(this.mSlingShotState != §_-wF§)
         {
            this.§_-fE§(param1,param2);
            _loc3_ = null;
            if(this.mBirds.length > 0)
            {
               _loc3_ = this.mBirds[this.mNextBirdIndex];
            }
            if(_loc3_)
            {
               _loc3_.§_-jb§(param1);
            }
            if(!_loc3_)
            {
               this.§_-lu§(§_-wF§);
            }
            else if(this.mSlingShotState == §_-DF§)
            {
               if(this.§_-7Z§ <= 0 && !this.§_-9N§.camera.isOnCastleView())
               {
                  this.§_-lu§(§_-wf§);
                  _loc3_.§_-Ev§();
               }
            }
            else if(this.mSlingShotState == §_-wf§)
            {
               if(_loc3_.§_-hk§)
               {
                  this.§_-lu§(§_-6M§);
               }
            }
            else if(this.mSlingShotState == §_-6M§)
            {
               _loc3_.setPosition(this.§_-V§ - _loc3_.radius * Math.cos(this.§_-kH§ / (180 / Math.PI)),this.§_-AX§ + _loc3_.radius * Math.sin(this.§_-kH§ / (180 / Math.PI)));
               if(this.mShootTheBird)
               {
                  this.mDragging = false;
                  this.§_-9N§.mActiveObject = this.§_-9N§.mLevelObjects.§_-S5§(_loc3_.name,_loc3_.mX,_loc3_.mY,0,true);
                  this.§_-9N§.§_-Md§ = 0;
                  if(_loc3_.§_-3R§ > 1)
                  {
                     this.§_-9N§.mActiveObject.§_-eJ§(_loc3_.§_-3R§);
                     this.§_-9N§.mActiveObject.§_-ds§.§_-pM§();
                  }
                  _loc5_ = -(_loc4_ = _loc3_.name.toUpperCase() == "BIRD_GREEN" ? Number(§_-FO§) : Number(§_-u9§)) * this.§_-vU§ / this.§_-S6§ * Math.cos(this.§_-kH§ / (180 / Math.PI));
                  _loc6_ = _loc4_ * this.§_-vU§ / this.§_-S6§ * Math.sin(this.§_-kH§ / (180 / Math.PI));
                  this.§_-9N§.mActiveObject.§_-pK§(new b2Vec2(_loc5_,_loc6_),false,true);
                  this.§_-9N§.camera.§_-IZ§(§_-8g§.§_-7W§);
                  this.§_-3p§(this.mNextBirdIndex);
                  this.mShootTheBird = false;
                  _loc7_ = int(Math.random() * 3) + 1;
                  §_-8p§.§_-rD§("BirdShot" + _loc7_);
                  if(this.mNextBirdIndex >= this.mBirds.length)
                  {
                     this.§_-lu§(§_-wF§);
                  }
                  else
                  {
                     this.§_-lu§(§_-DF§);
                  }
               }
            }
         }
      }
      
      public function §_-fE§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.mNextBirdIndex;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.mBirds.length)
         {
            if(this.mSlingShotState == §_-kG§)
            {
               this.mBirds[_loc4_].update(param1,true,param2);
            }
            else
            {
               this.mBirds[_loc4_].update(param1,false,param2);
            }
            _loc4_++;
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§_-7m§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.setNewCoordinatesForRubber(this.§_-Ik§,this.§_-dD§ + this.§_-S6§ / 8);
         if(this.§_-AZ§ >= this.mBirds.length)
         {
            return false;
         }
         _loc1_ = this.mBirds[this.§_-AZ§];
         _loc2_ = §_-cO§.§_-9y§(_loc1_.name).score;
         this.§_-9N§.addScore(_loc2_,true,_loc1_.mX,_loc1_.mY - 3,§_-gu§.§_-L2§(_loc1_.name));
         _loc1_.§_-GO§(-1,true);
         ++this.§_-AZ§;
         return true;
      }
      
      public function §_-Qy§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§_-Dj§ >= 0)
         {
            this.§_-Dj§ -= param1;
            if(this.§_-Dj§ <= 0)
            {
               _loc2_ = this.§_-9N§.mLevelObjects.§_-k-§(this.§_-Ik§,this.§_-eo§);
               if(_loc2_ < 0)
               {
                  this.§_-be§(0.1);
                  this.§_-Dj§ = 0;
               }
               else if(!this.§_-9N§.mLevelObjects.getObject(_loc2_).§_-sB§)
               {
                  this.§_-Dj§ = -1;
               }
               else if(this.§_-9N§.mLevelObjects.getObject(_loc2_).§_-BS§())
               {
                  this.§_-Dj§ = 2000;
               }
               else
               {
                  this.§_-Dj§ = 500;
               }
            }
         }
      }
      
      public function §do§(param1:Number, param2:Number) : void
      {
         this.§_-0O§.x = -param1;
         this.§_-0O§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §_-6M§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §_-6M§ && this.§_-vU§ > this.§_-S6§ * §_-By§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.§_-lu§(§_-6M§);
         var _loc1_:§_-7m§ = this.mBirds[this.mNextBirdIndex];
         _loc1_.§_-GO§(§_-TP§.§_-en§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§_-7m§ = this.mBirds[this.mNextBirdIndex];
         _loc1_.§_-GO§(§_-TP§.§return§);
      }
      
      protected function §_-3p§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§_-7m§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.mBirds[param1])
         {
            _loc3_ = this.mBirds[param1];
            this.§_-AE§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§_-Yt§(this.mBirds[param1]);
            }
            _loc3_.dispose();
            this.mBirds[param1] = null;
         }
         this.mBirds.splice(param1,1);
      }
      
      public function §_-Yt§(param1:§_-7m§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §_-Ay§.§_-G0§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §_-Ay§.§_-G0§) + Math.random() * -_loc8_ * 2;
            this.§_-9N§.§_-Rh§.§_-2b§(§_-gu§.§_-Fr§,§_-dI§.§_-Hw§,§_-gu§.§_-Ii§,param1.mX + _loc7_,param1.mY + _loc8_,1500,"",§_-gu§.§_-kb§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§_-9N§.§_-Rh§.§_-2b§(§_-gu§.§_-LH§,§_-dI§.§_-Hw§,§_-gu§.§_-Ii§,param1.mX,param1.mY,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function §_-Td§(param1:§_-7m§) : void
      {
         this.§_-3p§(this.mBirds.indexOf(param1));
      }
      
      public function §_-Av§() : void
      {
         var _loc2_:§_-7m§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§_-7m§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.mBirds.length - 1)
         {
            _loc3_ = Math.sqrt((this.mX - this.mBirds[_loc1_].mX) * (this.mX - this.mBirds[_loc1_].mX) + (this.mY - this.mBirds[_loc1_].mY) * (this.mY - this.mBirds[_loc1_].mY));
            if((_loc4_ = Math.sqrt((this.mX - this.mBirds[_loc1_ + 1].mX) * (this.mX - this.mBirds[_loc1_ + 1].mX) + (this.mY - this.mBirds[_loc1_ + 1].mY) * (this.mY - this.mBirds[_loc1_ + 1].mY))) < _loc3_)
            {
               _loc5_ = this.mBirds[_loc1_];
               this.mBirds.splice(_loc1_,1);
               this.mBirds.splice(_loc1_ + 1,0,_loc5_);
               _loc1_ = Math.max(-1,_loc1_ - 2);
            }
            _loc1_++;
         }
         while(this.§_-AE§.numChildren > 0)
         {
            this.§_-AE§.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.mBirds.length)
         {
            _loc2_ = this.mBirds[_loc1_];
            this.§_-AE§.addChildAt(_loc2_.sprite,0);
            _loc1_++;
         }
      }
      
      public function §_-5p§(param1:Number, param2:Number) : §_-7m§
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.mBirds.length)
         {
            if(this.mBirds[_loc3_])
            {
               if(this.mBirds[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.mBirds[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function §_-on§(param1:Number, param2:Number) : §_-nt§
      {
         if(param1 >= this.mX - this.§_-S6§ / 4 && param1 <= this.mX + this.§_-S6§ / 4 && param2 >= this.mY - this.§_-S6§ / 4 && this.mY <= this.§_-eo§)
         {
            return this;
         }
         return null;
      }
      
      public function §_-e3§(param1:§_-Wl§) : void
      {
         var _loc3_:§_-7m§ = null;
         var _loc4_:§_-EX§ = null;
         param1.§_-KK§ = this.mX;
         param1.§_-Ya§ = this.mY;
         var _loc2_:Number = 0;
         while(_loc2_ < this.mBirds.length)
         {
            _loc3_ = this.mBirds[_loc2_];
            (_loc4_ = new §_-EX§()).x = _loc3_.mX;
            _loc4_.y = _loc3_.mY;
            _loc4_.id = _loc3_.name;
            param1.mBirds.push(_loc4_);
            _loc2_++;
         }
      }
      
      public function §_-7M§() : void
      {
         while(this.mBirds.length > 0)
         {
            this.§_-Td§(this.mBirds[0]);
         }
      }
      
      public function §_-Ax§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.mBirds.length)
         {
            if(this.mBirds[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.mBirds[_loc4_]);
            }
            _loc4_++;
         }
         if(this.mX > param1.x && this.mX < param2.x && this.mY > param1.y && this.mY < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §_-PK§() : Array
      {
         return [this.§_-Vv§,this.§_-PF§];
      }
      
      public function §_-UW§(param1:String, param2:Number, param3:Number) : §_-7m§
      {
         var _loc4_:§_-7m§ = this.§_-8E§(param1,param2,param3);
         this.§_-Av§();
         return _loc4_;
      }
      
      public function §_-82§() : Number
      {
         return this.mBirds.length;
      }
   }
}
