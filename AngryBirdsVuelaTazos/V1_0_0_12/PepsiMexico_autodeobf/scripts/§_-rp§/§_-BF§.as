package §_-rp§
{
   import §_-1P§.§_-uT§;
   import §_-9z§.b2Vec2;
   import §_-DS§.§_-Aa§;
   import §_-DS§.§_-t0§;
   import §_-H2§.§_-Z§;
   import §_-H2§.§_-i7§;
   import §_-RG§.§_-HT§;
   import §_-S4§.Texture;
   import §_-Su§.§_-Xk§;
   import §_-am§.§_-XJ§;
   import §_-pF§.Sprite;
   import §_-pF§.§_-gY§;
   import §_-vA§.§_-XO§;
   import §_-wa§.§_-k§;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §_-BF§
   {
      
      private static var §_-QV§:Texture;
      
      private static var §_-V2§:Texture;
      
      public static const §_-9j§:Number = 0.4;
      
      public static const §_-ds§:int = 3151368;
      
      public static const §_-Ba§:int = 0;
      
      public static const §_-CF§:int = 1;
      
      public static const §_-ls§:int = 2;
      
      public static const §_-q1§:int = 3;
      
      public static const §_-PA§:int = 5;
      
      private static const §_-Ld§:int = 8;
      
      private static const §_-Gd§:int = 0;
      
      public static const §_-kf§:Number = 46.25;
      
      public static const §_-EQ§:Number = 52.5;
       
      
      public var §_-fE§:§_-c5§;
      
      public var mX:Number;
      
      public var mY:Number;
      
      public var §_-Bo§:Number;
      
      private var §_-Ea§:Number;
      
      private var §_-T4§:Number;
      
      private var §_-A6§:Number;
      
      private var §_-Ta§:Number;
      
      public var §_-Qj§:Number;
      
      public var §_-qx§:Boolean = false;
      
      public var §_-3m§:Number;
      
      public var mBirds:Vector.<§_-cl§>;
      
      public var mNextBirdIndex:int;
      
      public var §_-tu§:int;
      
      public var §_-8B§:Number;
      
      public var §_-Ip§:§_-pF§.Sprite;
      
      public var §_-EX§:int = 0;
      
      public var §_-dL§:Number = 0;
      
      public var §_-TO§:Array;
      
      public var §_-87§:Array;
      
      public var mSlingShotState:int;
      
      public var §_-Jj§:Boolean;
      
      public var mDragging:Boolean = false;
      
      public var mShootTheBird:Boolean = false;
      
      public var §_-Ww§:Number;
      
      private var §_-C8§:§_-pF§.Sprite;
      
      private var mRopeBack1:§_-gY§;
      
      private var mRopeFront1:§_-gY§;
      
      private var mRopeBack2:§_-gY§;
      
      private var mRopeFront2:§_-gY§;
      
      private var §_-Y5§:§_-pF§.Sprite;
      
      private var §_-QB§:§_-pF§.Sprite;
      
      private var §_-0f§:§_-pF§.Sprite;
      
      private var §_-BN§:§_-gY§;
      
      private var §_-Dg§:§_-gY§;
      
      public function §_-BF§(param1:§_-c5§, param2:§_-Xk§, param3:§_-pF§.Sprite)
      {
         var _loc4_:§_-k§ = null;
         this.mBirds = new Vector.<§_-cl§>();
         super();
         this.§_-fE§ = param1;
         this.§_-C8§ = param3;
         if(param2)
         {
            this.setPosition(param2.§_-Lc§,param2.§_-rG§);
            this.§_-VB§();
            for each(_loc4_ in param2.mBirds)
            {
               this.§_-4Q§(_loc4_.id,_loc4_.x,_loc4_.y);
            }
            this.mNextBirdIndex = 0;
            if(this.mBirds.length <= 0)
            {
               §_-HT§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.mX + " " + this.mY);
               this.§_-ow§(§_-q1§);
            }
            else
            {
               this.§_-ow§(§_-Ba§);
            }
         }
         else
         {
            §_-HT§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.§_-ow§(§_-q1§);
         }
         this.§_-Jj§ = true;
         this.§_-Ww§ = 0;
         this.§_-jJ§();
         this.update(0,true);
      }
      
      public function get sprite() : §_-pF§.Sprite
      {
         return this.§_-C8§;
      }
      
      public function dispose() : void
      {
         while(this.mBirds.length > 0)
         {
            this.§_-7u§(0);
         }
         this.mBirds = null;
         if(this.§_-C8§)
         {
            this.§_-C8§.dispose();
            this.§_-C8§ = null;
         }
         this.§_-Ip§ = null;
         this.§_-TO§ = null;
         this.§_-87§ = null;
      }
      
      public function §_-ki§(param1:String, param2:Number, param3:Number, param4:int = -1) : §_-cl§
      {
         var _loc5_:§_-cl§;
         (_loc5_ = this.§_-4Q§(param1,param2,param3,param4)).§_-co§();
         return _loc5_;
      }
      
      protected function §_-4Q§(param1:String, param2:Number, param3:Number, param4:int = -1) : §_-cl§
      {
         var _loc5_:§_-cl§ = new §_-cl§(this,new §_-pF§.Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            this.mBirds.push(_loc5_);
         }
         else
         {
            this.mBirds.splice(param4,0,_loc5_);
         }
         this.§_-Ip§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      protected function §_-ow§(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §_-Ba§)
         {
            this.setNewCoordinatesForRubber(this.§_-Ea§,this.§_-T4§ + this.§_-3m§ / 8);
            this.§_-8B§ = 1000;
         }
         else if(this.mSlingShotState == §_-CF§)
         {
            this.setNewCoordinatesForRubber(this.§_-Ea§,this.§_-T4§ + this.§_-3m§ / 8);
            this.§_-8B§ = 0;
         }
         else if(this.mSlingShotState == §_-ls§)
         {
            this.§_-8B§ = 10000;
            this.mShootTheBird = false;
            this.setNewCoordinatesForRubber(this.§_-Ea§,this.§_-T4§ + this.§_-3m§ / 8);
         }
         else if(this.mSlingShotState == §_-q1§)
         {
            this.setNewCoordinatesForRubber(this.§_-Ea§,this.§_-T4§ + this.§_-3m§ / 8);
            this.§_-8B§ = 2000;
         }
         else if(this.mSlingShotState == §_-PA§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.mShootTheBird = false;
               this.setNewCoordinatesForRubber(this.§_-Ea§,this.§_-T4§ + this.§_-3m§ / 8);
               this.mBirds[this.mNextBirdIndex].setPosition(this.§_-A6§ - this.mBirds[this.mNextBirdIndex].radius * Math.cos(this.§_-dL§ / (180 / Math.PI)),this.§_-Ta§ + this.mBirds[this.mNextBirdIndex].radius * Math.sin(this.§_-dL§ / (180 / Math.PI)));
            }
            else
            {
               this.setNewCoordinatesForRubber(this.§_-Ea§,this.§_-T4§ + this.§_-3m§ / 8);
            }
         }
         this.mDragging = false;
      }
      
      public function get §_-2U§() : §_-c5§
      {
         return this.§_-fE§;
      }
      
      public function §_-qD§() : Boolean
      {
         return this.mSlingShotState == §_-q1§ && this.§_-8B§ <= 0;
      }
      
      private function §_-VB§() : void
      {
         var _loc1_:§_-uT§ = this.§_-fE§.§_-hF§.§_-9B§("SLINGSHOT");
         var _loc2_:Texture = _loc1_.getFrame(0).texture;
         var _loc3_:Texture = _loc1_.getFrame(1).texture;
         this.§_-BN§ = new §_-gY§(_loc2_);
         this.§_-Dg§ = new §_-gY§(_loc3_);
         this.§_-Mc§();
         this.§_-1J§();
         this.§_-Ip§ = new §_-pF§.Sprite();
         this.§_-C8§.addChild(this.§_-BN§);
         this.§_-C8§.addChild(this.§_-Y5§);
         this.§_-C8§.addChild(this.§_-Ip§);
         this.§_-C8§.addChild(this.§_-0f§);
         this.§_-C8§.addChild(this.§_-QB§);
         this.§_-C8§.addChild(this.§_-Dg§);
         this.§_-Bo§ = this.mY + 8.5;
      }
      
      public function §_-Mc§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§_-Ea§ = this.mX;
         this.§_-T4§ = this.mY;
         this.§_-3m§ = 5;
         _loc1_ = null;
      }
      
      private function §_-1J§() : void
      {
         var _loc2_:flash.display.Sprite = null;
         var _loc3_:BitmapData = null;
         if(!§_-QV§)
         {
            §_-QV§ = this.§_-fE§.§_-2I§.§_-8R§(new BitmapData(2,2,false,§_-ds§));
         }
         if(!§_-V2§)
         {
            _loc2_ = new §_-XO§.§_-O3§("MovieClip_SlingHolder")();
            _loc3_ = new BitmapData(_loc2_.width,_loc2_.height,true,0);
            _loc3_.draw(_loc2_);
            §_-V2§ = this.§_-fE§.§_-2I§.§_-8R§(_loc3_);
         }
         this.§_-0f§ = new §_-pF§.Sprite();
         var _loc1_:§_-gY§ = new §_-gY§(§_-V2§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         this.§_-0f§.addChild(_loc1_);
         this.§_-Y5§ = new §_-pF§.Sprite();
         this.mRopeBack1 = new §_-gY§(§_-QV§);
         this.mRopeBack2 = new §_-gY§(§_-QV§);
         this.§_-Y5§.addChild(this.mRopeBack1);
         this.§_-Y5§.addChild(this.mRopeBack2);
         this.§_-QB§ = new §_-pF§.Sprite();
         this.mRopeFront1 = new §_-gY§(§_-QV§);
         this.mRopeFront2 = new §_-gY§(§_-QV§);
         this.§_-QB§.addChild(this.mRopeFront1);
         this.§_-QB§.addChild(this.mRopeFront2);
      }
      
      public function §_-T8§(param1:Number) : void
      {
         var _loc2_:Number = this.§_-Ta§ / §_-c5§.§_-Wa§;
         var _loc3_:Number = this.§_-A6§ / §_-c5§.§_-Wa§;
         var _loc4_:Number = 3.5 + 8 * ((this.§_-3m§ - this.§_-Qj§) / this.§_-3m§);
         this.§_-0f§.x = _loc3_;
         this.§_-0f§.y = _loc2_;
         this.§_-0f§.rotation = -this.§_-dL§ / (180 / Math.PI);
         this.§_-BN§.x = this.mX / §_-c5§.§_-Wa§ - 3;
         this.§_-BN§.y = this.mY / §_-c5§.§_-Wa§ - 30;
         this.§_-Dg§.x = this.mX / §_-c5§.§_-Wa§ - 30;
         this.§_-Dg§.y = this.mY / §_-c5§.§_-Wa§ - 30;
         this.§_-QB§.rotation = Math.atan2(_loc2_ - this.§_-QB§.y,_loc3_ - this.§_-QB§.x);
         this.§_-QB§.x = this.mX / §_-c5§.§_-Wa§ - 17;
         this.§_-QB§.y = this.mY / §_-c5§.§_-Wa§ + 5;
         this.§_-Y5§.rotation = Math.atan2(_loc2_ - this.§_-Y5§.y,_loc3_ - this.§_-Y5§.x);
         this.§_-Y5§.x = this.mX / §_-c5§.§_-Wa§ + 22;
         this.§_-Y5§.y = this.mY / §_-c5§.§_-Wa§;
         this.mRopeFront1.width = Math.sqrt(Math.pow(_loc3_ - this.§_-QB§.x,2) + Math.pow(_loc2_ - this.§_-QB§.y,2));
         this.mRopeBack1.width = Math.sqrt(Math.pow(_loc3_ - this.§_-Y5§.x,2) + Math.pow(_loc2_ - this.§_-Y5§.y,2));
         this.mRopeFront2.width = this.mRopeFront1.width;
         this.mRopeBack2.width = this.mRopeBack1.width;
         this.mRopeFront1.height = this.mRopeBack1.height = _loc4_;
         this.mRopeFront2.height = this.mRopeBack2.height = -_loc4_;
         this.§_-Jj§ = false;
      }
      
      public function §_-6i§() : void
      {
         while(this.mBirds.length > 0)
         {
            this.§_-7u§(0,true);
         }
         this.§_-4Q§("BIRD_SARDINE",this.mX,this.mY);
         this.§_-ow§(§_-ls§);
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.§_-ow§(§_-PA§);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§_-A6§ == param1 && this.§_-Ta§ == param2)
         {
            return true;
         }
         this.§_-Qj§ = Math.sqrt((param2 - this.§_-T4§) * (param2 - this.§_-T4§) + (param1 - this.§_-Ea§) * (param1 - this.§_-Ea§));
         if(this.§_-Qj§ > this.§_-3m§)
         {
            if(param3)
            {
               this.§_-Qj§ = Math.sqrt((this.§_-Ta§ - this.§_-T4§) * (this.§_-Ta§ - this.§_-T4§) + (this.§_-A6§ - this.§_-Ea§) * (this.§_-A6§ - this.§_-Ea§));
               return false;
            }
            param1 = this.§_-Ea§ + this.§_-3m§ * (param1 - this.§_-Ea§) / this.§_-Qj§;
            param2 = this.§_-T4§ + this.§_-3m§ * (param2 - this.§_-T4§) / this.§_-Qj§;
            this.§_-Qj§ = this.§_-3m§;
         }
         this.§_-A6§ = param1;
         this.§_-Ta§ = param2;
         this.§_-dL§ = Math.atan2(-(this.§_-Ta§ - this.§_-T4§),this.§_-A6§ - this.§_-Ea§);
         this.§_-dL§ *= 180 / Math.PI;
         if(this.mDragging == false)
         {
            this.§_-A6§ = param1 - 0.7;
            this.§_-Ta§ = param2;
            this.§_-dL§ = -160;
         }
         _loc4_ = 12;
         _loc5_ = 5;
         _loc6_ = 4;
         _loc7_ = this.§_-3m§ / 2;
         if(this.§_-Qj§ > _loc7_ && this.§_-dL§ > -90 - _loc4_ + _loc5_ && this.§_-dL§ < -90 + _loc4_ + _loc5_)
         {
            param1 = this.§_-Ea§ + _loc7_ * (param1 - this.§_-Ea§) / this.§_-Qj§;
            param2 = this.§_-T4§ + _loc7_ * (param2 - this.§_-T4§) / this.§_-Qj§;
            this.§_-Qj§ = _loc7_;
            this.§_-A6§ = param1;
            this.§_-Ta§ = param2;
         }
         else if(this.§_-Qj§ > _loc7_ && this.§_-dL§ > -90 - _loc4_ - _loc6_ + _loc5_ && this.§_-dL§ < -90 + _loc4_ + _loc6_ + _loc5_)
         {
            _loc8_ = _loc7_ + (this.§_-3m§ - _loc7_) * (Math.abs(this.§_-dL§ - -90 - _loc5_) - _loc4_) / _loc6_;
            param1 = this.§_-Ea§ + _loc8_ * (param1 - this.§_-Ea§) / this.§_-Qj§;
            param2 = this.§_-T4§ + _loc8_ * (param2 - this.§_-T4§) / this.§_-Qj§;
            this.§_-Qj§ = _loc8_;
            this.§_-A6§ = param1;
            this.§_-Ta§ = param2;
         }
         if(this.§_-Qj§ <= this.§_-3m§ * 0.45)
         {
            this.§_-qx§ = true;
         }
         else if(this.§_-qx§ && this.§_-Qj§ >= this.§_-3m§ * 0.8)
         {
            §_-XJ§.§_-aW§("SlingshotStreched");
            this.§_-qx§ = false;
         }
         this.§_-Jj§ = true;
         return true;
      }
      
      public function §_-W1§(param1:Number) : void
      {
         this.setPosition(this.mX,this.mY + param1);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Number = param1 - this.mX;
         this.mX = param1;
         var _loc5_:Number = param2 - this.mY;
         this.mY = param2;
         this.§_-Bo§ += _loc5_;
         this.§_-T4§ += _loc5_;
         this.§_-Ta§ += _loc5_;
         this.§_-Ea§ += _loc4_;
         this.§_-A6§ += _loc4_;
         if(param3)
         {
            this.§_-T8§(0);
         }
         this.§_-Jj§ = true;
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§_-cl§ = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         this.§_-U§(param1);
         if(this.§_-Jj§)
         {
            this.§_-T8§(param1);
         }
         this.§_-8B§ -= param1;
         if(this.§_-8B§ < 0)
         {
            this.§_-8B§ = 0;
         }
         if(this.mSlingShotState != §_-q1§)
         {
            this.§_-vZ§(param1,param2);
            _loc3_ = null;
            if(this.mBirds.length > 0)
            {
               _loc3_ = this.mBirds[this.mNextBirdIndex];
            }
            if(_loc3_)
            {
               _loc3_.§_-2z§(param1);
            }
            if(!_loc3_)
            {
               this.§_-ow§(§_-q1§);
            }
            else if(this.mSlingShotState == §_-Ba§)
            {
               if(this.§_-8B§ <= 0 && !this.§_-fE§.camera.isOnCastleView())
               {
                  this.§_-ow§(§_-CF§);
                  _loc3_.§_-Sl§();
               }
            }
            else if(this.mSlingShotState == §_-CF§)
            {
               if(_loc3_.§_-BD§)
               {
                  this.§_-ow§(§_-ls§);
               }
            }
            else if(this.mSlingShotState == §_-ls§)
            {
               _loc3_.setPosition(this.§_-A6§ - _loc3_.radius * Math.cos(this.§_-dL§ / (180 / Math.PI)),this.§_-Ta§ + _loc3_.radius * Math.sin(this.§_-dL§ / (180 / Math.PI)));
               if(this.mShootTheBird)
               {
                  this.mDragging = false;
                  this.§_-fE§.mActiveObject = this.§_-fE§.mLevelObjects.§_-Iq§(_loc3_.name,_loc3_.mX,_loc3_.mY,0,true);
                  this.§_-fE§.§_-ig§ = 0;
                  if(_loc3_.§_-FK§ > 1)
                  {
                     this.§_-fE§.mActiveObject.§_-bH§(_loc3_.§_-FK§);
                     this.§_-fE§.mActiveObject.§use§.§_-Fm§();
                  }
                  _loc5_ = -(_loc4_ = _loc3_.name.toUpperCase() == "BIRD_GREEN" ? Number(§_-EQ§) : Number(§_-kf§)) * this.§_-Qj§ / this.§_-3m§ * Math.cos(this.§_-dL§ / (180 / Math.PI));
                  _loc6_ = _loc4_ * this.§_-Qj§ / this.§_-3m§ * Math.sin(this.§_-dL§ / (180 / Math.PI));
                  this.§_-fE§.mActiveObject.§_-jl§(new b2Vec2(_loc5_,_loc6_),false,true);
                  this.§_-fE§.camera.§_-pN§(§_-Hz§.§_-Pj§);
                  this.§_-7u§(this.mNextBirdIndex);
                  this.mShootTheBird = false;
                  §_-XJ§.§_-Wd§("BirdShot3");
                  if(this.mNextBirdIndex >= this.mBirds.length)
                  {
                     this.§_-ow§(§_-q1§);
                  }
                  else
                  {
                     this.§_-ow§(§_-Ba§);
                  }
               }
            }
         }
      }
      
      public function §_-vZ§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.mNextBirdIndex;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.mBirds.length)
         {
            if(this.mSlingShotState == §_-PA§)
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
         var _loc1_:§_-cl§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.setNewCoordinatesForRubber(this.§_-Ea§,this.§_-T4§ + this.§_-3m§ / 8);
         if(this.§_-tu§ >= this.mBirds.length)
         {
            return false;
         }
         _loc1_ = this.mBirds[this.§_-tu§];
         _loc2_ = §_-Z§.§_-5d§(_loc1_.name).score;
         this.§_-fE§.addScore(_loc2_,true,_loc1_.mX,_loc1_.mY - 3,§_-Aa§.§_-2H§(_loc1_.name));
         _loc1_.§_-SV§(-1,true);
         ++this.§_-tu§;
         return true;
      }
      
      public function §_-U§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§_-Ww§ >= 0)
         {
            this.§_-Ww§ -= param1;
            if(this.§_-Ww§ <= 0)
            {
               _loc2_ = this.§_-fE§.mLevelObjects.§_-kY§(this.§_-Ea§,this.§_-Bo§);
               if(_loc2_ < 0)
               {
                  this.§_-W1§(0.1);
                  this.§_-Ww§ = 0;
               }
               else if(!this.§_-fE§.mLevelObjects.getObject(_loc2_).§_-oJ§)
               {
                  this.§_-Ww§ = -1;
               }
               else if(this.§_-fE§.mLevelObjects.getObject(_loc2_).§_-Vm§())
               {
                  this.§_-Ww§ = 2000;
               }
               else
               {
                  this.§_-Ww§ = 500;
               }
            }
         }
      }
      
      public function §_-ty§(param1:Number, param2:Number) : void
      {
         this.§_-C8§.x = -param1;
         this.§_-C8§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §_-ls§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §_-ls§ && this.§_-Qj§ > this.§_-3m§ * §_-9j§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.§_-ow§(§_-ls§);
         var _loc1_:§_-cl§ = this.mBirds[this.mNextBirdIndex];
         _loc1_.§_-SV§(§_-i7§.§_-G2§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§_-cl§ = this.mBirds[this.mNextBirdIndex];
         _loc1_.§_-SV§(§_-i7§.§_-ed§);
      }
      
      protected function §_-7u§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§_-cl§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.mBirds[param1])
         {
            _loc3_ = this.mBirds[param1];
            this.§_-Ip§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§_-GM§(this.mBirds[param1]);
            }
            _loc3_.dispose();
            this.mBirds[param1] = null;
         }
         this.mBirds.splice(param1,1);
      }
      
      public function §_-GM§(param1:§_-cl§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §_-c5§.§_-Wa§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §_-c5§.§_-Wa§) + Math.random() * -_loc8_ * 2;
            this.§_-fE§.§_-AC§.§_-RE§(§_-Aa§.§_-GF§,§_-t0§.§_-FQ§,§_-Aa§.include,param1.mX + _loc7_,param1.mY + _loc8_,1500,"",§_-Aa§.§_-Am§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§_-fE§.§_-AC§.§_-RE§(§_-Aa§.§_-a9§,§_-t0§.§_-FQ§,§_-Aa§.include,param1.mX,param1.mY,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function §_-5H§(param1:§_-cl§) : void
      {
         this.§_-7u§(this.mBirds.indexOf(param1));
      }
      
      public function §_-jJ§() : void
      {
         var _loc2_:§_-cl§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§_-cl§ = null;
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
         while(this.§_-Ip§.numChildren > 0)
         {
            this.§_-Ip§.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.mBirds.length)
         {
            _loc2_ = this.mBirds[_loc1_];
            this.§_-Ip§.addChildAt(_loc2_.sprite,0);
            _loc1_++;
         }
      }
      
      public function §_-PN§(param1:Number, param2:Number) : §_-cl§
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
      
      public function §_-CL§(param1:Number, param2:Number) : §_-BF§
      {
         if(param1 >= this.mX - this.§_-3m§ / 4 && param1 <= this.mX + this.§_-3m§ / 4 && param2 >= this.mY - this.§_-3m§ / 4 && this.mY <= this.§_-Bo§)
         {
            return this;
         }
         return null;
      }
      
      public function §_-JB§(param1:§_-Xk§) : void
      {
         var _loc3_:§_-cl§ = null;
         var _loc4_:§_-k§ = null;
         param1.§_-Lc§ = this.mX;
         param1.§_-rG§ = this.mY;
         var _loc2_:Number = 0;
         while(_loc2_ < this.mBirds.length)
         {
            _loc3_ = this.mBirds[_loc2_];
            (_loc4_ = new §_-k§()).x = _loc3_.mX;
            _loc4_.y = _loc3_.mY;
            _loc4_.id = _loc3_.name;
            param1.mBirds.push(_loc4_);
            _loc2_++;
         }
      }
      
      public function §_-FV§() : void
      {
         while(this.mBirds.length > 0)
         {
            this.§_-5H§(this.mBirds[0]);
         }
      }
      
      public function §_-By§(param1:Point, param2:Point) : Array
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
      
      public function §_-q2§() : Array
      {
         return [this.§_-Dg§,this.§_-BN§];
      }
      
      public function §_-9X§(param1:String, param2:Number, param3:Number) : §_-cl§
      {
         var _loc4_:§_-cl§ = this.§_-4Q§(param1,param2,param3);
         this.§_-jJ§();
         return _loc4_;
      }
      
      public function §_-P7§() : Number
      {
         return this.mBirds.length;
      }
   }
}
