package §_-FQ§
{
   import § get§.§_-pD§;
   import §_-Ay§.§_-nw§;
   import §_-Cy§.Texture;
   import §_-Jm§.§_-o3§;
   import §_-PP§.§_-Tg§;
   import §_-PP§.§_-qC§;
   import §_-PS§.§_-sq§;
   import §_-UX§.Sprite;
   import §_-UX§.§_-2S§;
   import §_-ex§.§_-mR§;
   import §_-rQ§.§_-Fv§;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import §with§.§_-AZ§;
   import §with§.§_-O2§;
   
   public class §_-Vg§
   {
      
      public static const §_-Tj§:int = 0;
      
      public static const §_-E§:int = 1;
      
      public static const §_-2T§:int = 2;
      
      public static const §_-jr§:int = 3;
      
      public static const §_-Jk§:int = 5;
      
      public static const §_-md§:int = 3151368;
      
      private static const §_-3V§:int = 8;
      
      private static const §_-jN§:int = 0;
      
      public static const §_-3w§:Number = 46.25;
      
      public static const §_-v9§:Number = 52.5;
      
      private static var §_-yL§:Texture;
      
      private static var §_-fe§:Texture;
      
      public static const §_-aP§:Number = 0.4;
       
      
      public var §_-6q§:§_-7W§;
      
      public var mX:Number;
      
      public var mY:Number;
      
      public var §_-Lg§:Number;
      
      private var §_-TN§:Number;
      
      private var §_-og§:Number;
      
      private var §_-GL§:Number;
      
      private var §_-83§:Number;
      
      public var §_-1V§:Number;
      
      public var §_-vf§:Boolean = false;
      
      private var §_-8v§:Number;
      
      public var §_-KC§:Vector.<§_-ym§>;
      
      protected var §_-Dn§:int;
      
      public var §_-79§:int;
      
      public var §_-Ji§:Number;
      
      public var §_-5U§:§_-UX§.Sprite;
      
      public var §_-NN§:int = 0;
      
      public var §_-6y§:Number = 0;
      
      public var §_-d-§:Array;
      
      public var §_-X8§:Array;
      
      public var mSlingShotState:int;
      
      public var §_-xh§:Boolean;
      
      public var mDragging:Boolean = false;
      
      private var §_-I3§:Boolean = false;
      
      public var §_-yT§:Number;
      
      private var §_-bB§:§_-UX§.Sprite;
      
      private var mRopeBack1:§_-2S§;
      
      private var mRopeFront1:§_-2S§;
      
      private var mRopeBack2:§_-2S§;
      
      private var mRopeFront2:§_-2S§;
      
      private var §_-AL§:§_-UX§.Sprite;
      
      private var §_-Jy§:§_-UX§.Sprite;
      
      private var §_-np§:§_-UX§.Sprite;
      
      private var §_-7A§:§_-2S§;
      
      private var §_-P9§:§_-2S§;
      
      public function §_-Vg§(param1:§_-7W§, param2:§_-sq§, param3:§_-UX§.Sprite)
      {
         var _loc4_:§_-o3§ = null;
         this.§_-KC§ = new Vector.<§_-ym§>();
         super();
         this.§_-6q§ = param1;
         this.§_-bB§ = param3;
         if(param2)
         {
            this.setPosition(param2.§_-CF§,param2.§_-fm§);
            this.§_-iL§();
            for each(_loc4_ in param2.§_-KC§)
            {
               this.§_-tV§(_loc4_.id,_loc4_.x,_loc4_.y);
            }
            this.§_-Dn§ = 0;
            if(this.§_-KC§.length <= 0)
            {
               §_-mR§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.mX + " " + this.mY);
               this.§_-n4§(§_-jr§);
            }
            else
            {
               this.§_-n4§(§_-Tj§);
            }
         }
         else
         {
            §_-mR§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.§_-n4§(§_-jr§);
         }
         this.§_-xh§ = true;
         this.§_-yT§ = 0;
         this.§_-g6§();
         this.update(0,true);
      }
      
      public function get sprite() : §_-UX§.Sprite
      {
         return this.§_-bB§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§_-Dn§ < this.§_-KC§.length;
      }
      
      public function dispose() : void
      {
         while(this.§_-KC§.length > 0)
         {
            this.§_-ok§(0);
         }
         this.§_-KC§ = null;
         if(this.§_-bB§)
         {
            this.§_-bB§.dispose();
            this.§_-bB§ = null;
         }
         this.§_-5U§ = null;
         this.§_-d-§ = null;
         this.§_-X8§ = null;
      }
      
      public function §_-sz§(param1:String, param2:Number, param3:Number, param4:int = -1) : §_-ym§
      {
         var _loc5_:§_-ym§;
         (_loc5_ = this.§_-tV§(param1,param2,param3,param4)).§_-hz§();
         return _loc5_;
      }
      
      protected function §_-tV§(param1:String, param2:Number, param3:Number, param4:int = -1) : §_-ym§
      {
         var _loc5_:§_-ym§ = new §_-ym§(this,new §_-UX§.Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            this.§_-KC§.push(_loc5_);
         }
         else
         {
            this.§_-KC§.splice(param4,0,_loc5_);
         }
         this.§_-5U§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      protected function §_-n4§(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §_-Tj§)
         {
            this.§_-tA§();
            this.§_-Ji§ = 1000;
         }
         else if(this.mSlingShotState == §_-E§)
         {
            this.§_-tA§();
            this.§_-Ji§ = 0;
         }
         else if(this.mSlingShotState == §_-2T§)
         {
            this.§_-Ji§ = 10000;
            this.§_-I3§ = false;
            this.§_-tA§();
         }
         else if(this.mSlingShotState == §_-jr§)
         {
            this.§_-tA§();
            this.§_-Ji§ = 2000;
         }
         else if(this.mSlingShotState == §_-Jk§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§_-I3§ = false;
               this.§_-tA§();
               this.§_-KC§[this.§_-Dn§].setPosition(this.§_-GL§ - this.§_-KC§[this.§_-Dn§].radius * Math.cos(this.§_-6y§ / (180 / Math.PI)),this.§_-83§ + this.§_-KC§[this.§_-Dn§].radius * Math.sin(this.§_-6y§ / (180 / Math.PI)));
            }
            else
            {
               this.§_-tA§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §_-iT§() : §_-7W§
      {
         return this.§_-6q§;
      }
      
      public function §_-pg§() : Boolean
      {
         return this.mSlingShotState == §_-jr§ && this.§_-Ji§ <= 0;
      }
      
      private function §_-iL§() : void
      {
         var _loc1_:§_-Fv§ = this.§_-6q§.§_-FR§.§_-72§("SLINGSHOT");
         var _loc2_:Texture = _loc1_.getFrame(0).texture;
         var _loc3_:Texture = _loc1_.getFrame(1).texture;
         this.§_-7A§ = new §_-2S§(_loc2_);
         this.§_-P9§ = new §_-2S§(_loc3_);
         this.§_-mA§();
         this.§_-hU§();
         this.§_-5U§ = new §_-UX§.Sprite();
         this.§_-bB§.addChild(this.§_-7A§);
         this.§_-bB§.addChild(this.§_-AL§);
         this.§_-bB§.addChild(this.§_-5U§);
         this.§_-bB§.addChild(this.§_-np§);
         this.§_-bB§.addChild(this.§_-Jy§);
         this.§_-bB§.addChild(this.§_-P9§);
         this.§_-Lg§ = this.mY + 8.5;
      }
      
      public function §_-mA§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§_-TN§ = this.mX;
         this.§_-og§ = this.mY;
         this.§_-8v§ = 5;
         _loc1_ = null;
      }
      
      private function §_-hU§() : void
      {
         var _loc2_:flash.display.Sprite = null;
         var _loc3_:BitmapData = null;
         if(!§_-yL§)
         {
            §_-yL§ = this.§_-6q§.§_-xI§.§_-ka§(new BitmapData(2,2,false,§_-md§));
         }
         if(!§_-fe§)
         {
            _loc2_ = new §_-nw§.§_-Xm§("MovieClip_SlingHolder")();
            _loc3_ = new BitmapData(_loc2_.width,_loc2_.height,true,0);
            _loc3_.draw(_loc2_);
            §_-fe§ = this.§_-6q§.§_-xI§.§_-ka§(_loc3_);
         }
         this.§_-np§ = new §_-UX§.Sprite();
         var _loc1_:§_-2S§ = new §_-2S§(§_-fe§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         this.§_-np§.addChild(_loc1_);
         this.§_-AL§ = new §_-UX§.Sprite();
         this.mRopeBack1 = new §_-2S§(§_-yL§);
         this.mRopeBack2 = new §_-2S§(§_-yL§);
         this.§_-AL§.addChild(this.mRopeBack1);
         this.§_-AL§.addChild(this.mRopeBack2);
         this.§_-Jy§ = new §_-UX§.Sprite();
         this.mRopeFront1 = new §_-2S§(§_-yL§);
         this.mRopeFront2 = new §_-2S§(§_-yL§);
         this.§_-Jy§.addChild(this.mRopeFront1);
         this.§_-Jy§.addChild(this.mRopeFront2);
      }
      
      public function §_-uf§(param1:Number) : void
      {
         var _loc2_:Number = this.§_-83§ / §_-7W§.§_-hT§;
         var _loc3_:Number = this.§_-GL§ / §_-7W§.§_-hT§;
         var _loc4_:Number = 3.5 + 8 * ((this.§_-8v§ - this.§_-1V§) / this.§_-8v§);
         this.§_-np§.x = _loc3_;
         this.§_-np§.y = _loc2_;
         this.§_-np§.rotation = -this.§_-6y§ / (180 / Math.PI);
         this.§_-7A§.x = this.mX / §_-7W§.§_-hT§ - 3;
         this.§_-7A§.y = this.mY / §_-7W§.§_-hT§ - 30;
         this.§_-P9§.x = this.mX / §_-7W§.§_-hT§ - 30;
         this.§_-P9§.y = this.mY / §_-7W§.§_-hT§ - 30;
         this.§_-Jy§.x = this.mX / §_-7W§.§_-hT§ - 17;
         this.§_-Jy§.y = this.mY / §_-7W§.§_-hT§ + 5;
         this.§_-Jy§.rotation = Math.atan2(_loc2_ - this.§_-Jy§.y,_loc3_ - this.§_-Jy§.x);
         this.§_-AL§.x = this.mX / §_-7W§.§_-hT§ + 22;
         this.§_-AL§.y = this.mY / §_-7W§.§_-hT§;
         this.§_-AL§.rotation = Math.atan2(_loc2_ - this.§_-AL§.y,_loc3_ - this.§_-AL§.x);
         this.mRopeFront1.width = Math.sqrt(Math.pow(_loc3_ - this.§_-Jy§.x,2) + Math.pow(_loc2_ - this.§_-Jy§.y,2));
         this.mRopeBack1.width = Math.sqrt(Math.pow(_loc3_ - this.§_-AL§.x,2) + Math.pow(_loc2_ - this.§_-AL§.y,2));
         this.mRopeFront2.width = this.mRopeFront1.width;
         this.mRopeBack2.width = this.mRopeBack1.width;
         this.mRopeFront1.height = this.mRopeBack1.height = _loc4_;
         this.mRopeFront2.height = this.mRopeBack2.height = -_loc4_;
         this.§_-xh§ = false;
      }
      
      public function §_-0C§() : void
      {
         while(this.§_-KC§.length > 0)
         {
            this.§_-ok§(0,true);
         }
         this.§_-tV§("BIRD_SARDINE",this.mX,this.mY);
         this.§_-n4§(§_-2T§);
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.§_-n4§(§_-Jk§);
      }
      
      public function §_-tA§() : void
      {
         this.setNewCoordinatesForRubber(this.§_-TN§,this.§_-og§ + this.§_-8v§ / 8);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§_-GL§ == param1 && this.§_-83§ == param2)
         {
            return true;
         }
         this.§_-1V§ = Math.sqrt((param2 - this.§_-og§) * (param2 - this.§_-og§) + (param1 - this.§_-TN§) * (param1 - this.§_-TN§));
         if(this.§_-1V§ > this.§_-8v§)
         {
            if(param3)
            {
               this.§_-1V§ = Math.sqrt((this.§_-83§ - this.§_-og§) * (this.§_-83§ - this.§_-og§) + (this.§_-GL§ - this.§_-TN§) * (this.§_-GL§ - this.§_-TN§));
               return false;
            }
            param1 = this.§_-TN§ + this.§_-8v§ * (param1 - this.§_-TN§) / this.§_-1V§;
            param2 = this.§_-og§ + this.§_-8v§ * (param2 - this.§_-og§) / this.§_-1V§;
            this.§_-1V§ = this.§_-8v§;
         }
         this.§_-GL§ = param1;
         this.§_-83§ = param2;
         this.§_-6y§ = Math.atan2(-(this.§_-83§ - this.§_-og§),this.§_-GL§ - this.§_-TN§);
         this.§_-6y§ *= 180 / Math.PI;
         if(this.mDragging == false)
         {
            this.§_-GL§ = param1 - 0.7;
            this.§_-83§ = param2;
            this.§_-6y§ = -160;
         }
         _loc4_ = 12;
         _loc5_ = 5;
         _loc6_ = 4;
         _loc7_ = this.§_-8v§ / 2;
         if(this.§_-1V§ > _loc7_ && this.§_-6y§ > -90 - _loc4_ + _loc5_ && this.§_-6y§ < -90 + _loc4_ + _loc5_)
         {
            param1 = this.§_-TN§ + _loc7_ * (param1 - this.§_-TN§) / this.§_-1V§;
            param2 = this.§_-og§ + _loc7_ * (param2 - this.§_-og§) / this.§_-1V§;
            this.§_-1V§ = _loc7_;
            this.§_-GL§ = param1;
            this.§_-83§ = param2;
         }
         else if(this.§_-1V§ > _loc7_ && this.§_-6y§ > -90 - _loc4_ - _loc6_ + _loc5_ && this.§_-6y§ < -90 + _loc4_ + _loc6_ + _loc5_)
         {
            _loc8_ = _loc7_ + (this.§_-8v§ - _loc7_) * (Math.abs(this.§_-6y§ - -90 - _loc5_) - _loc4_) / _loc6_;
            param1 = this.§_-TN§ + _loc8_ * (param1 - this.§_-TN§) / this.§_-1V§;
            param2 = this.§_-og§ + _loc8_ * (param2 - this.§_-og§) / this.§_-1V§;
            this.§_-1V§ = _loc8_;
            this.§_-GL§ = param1;
            this.§_-83§ = param2;
         }
         if(this.§_-1V§ <= this.§_-8v§ * 0.45)
         {
            this.§_-vf§ = true;
         }
         else if(this.§_-vf§ && this.§_-1V§ >= this.§_-8v§ * 0.8)
         {
            §_-pD§.playSound("SlingshotStreched");
            this.§_-vf§ = false;
         }
         this.§_-xh§ = true;
         return true;
      }
      
      public function §_-y9§(param1:Number) : void
      {
         this.setPosition(this.mX,this.mY + param1);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Number = param1 - this.mX;
         this.mX = param1;
         var _loc5_:Number = param2 - this.mY;
         this.mY = param2;
         this.§_-Lg§ += _loc5_;
         this.§_-og§ += _loc5_;
         this.§_-83§ += _loc5_;
         this.§_-TN§ += _loc4_;
         this.§_-GL§ += _loc4_;
         if(param3)
         {
            this.§_-uf§(0);
         }
         this.§_-xh§ = true;
      }
      
      public function §_-Ff§(param1:Number) : §_-ym§
      {
         var _loc2_:§_-ym§ = null;
         _loc2_ = this.§_-KC§[this.§_-Dn§];
         _loc2_.§_-dl§ += param1;
         if(_loc2_.§_-dl§ < 1)
         {
            _loc2_.§_-dl§ = 1;
         }
         return _loc2_;
      }
      
      public function §_-Hj§(param1:Number) : §_-ym§
      {
         var _loc2_:§_-ym§ = null;
         _loc2_ = this.§_-KC§[this.§_-Dn§];
         if(_loc2_.§_-Zq§ == 0)
         {
            _loc2_.§_-Zq§ = 55;
         }
         _loc2_.§_-Zq§ += param1;
         if(_loc2_.§_-Zq§ > 120)
         {
            _loc2_.§_-Zq§ = 55;
         }
         return _loc2_;
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§_-ym§ = null;
         this.§_-oP§(param1);
         if(this.§_-xh§)
         {
            this.§_-uf§(param1);
         }
         this.§_-Ji§ -= param1;
         if(this.§_-Ji§ < 0)
         {
            this.§_-Ji§ = 0;
         }
         if(this.mSlingShotState != §_-jr§)
         {
            this.§_-48§(param1,param2);
            _loc3_ = null;
            if(this.§_-KC§.length > 0)
            {
               _loc3_ = this.§_-KC§[this.§_-Dn§];
            }
            if(_loc3_)
            {
               _loc3_.§_-yW§(param1);
            }
            if(!_loc3_)
            {
               this.§_-n4§(§_-jr§);
            }
            else if(this.mSlingShotState == §_-Tj§)
            {
               if(this.§_-Ji§ <= 0 && !this.§_-6q§.camera.isOnCastleView())
               {
                  this.§_-n4§(§_-E§);
                  _loc3_.§_-sS§();
               }
            }
            else if(this.mSlingShotState == §_-E§)
            {
               if(_loc3_.§_-Q4§)
               {
                  this.§_-n4§(§_-2T§);
               }
            }
            else if(this.mSlingShotState == §_-2T§)
            {
               _loc3_.setPosition(this.§_-GL§ - _loc3_.radius * Math.cos(this.§_-6y§ / (180 / Math.PI)),this.§_-83§ + _loc3_.radius * Math.sin(this.§_-6y§ / (180 / Math.PI)));
               if(this.§_-I3§)
               {
                  this.§_-OF§(this.§_-1V§ / this.§_-8v§,this.§_-6y§);
               }
            }
         }
      }
      
      public function §_-CM§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§_-ym§ = null;
         if(this.§_-KC§.length > 0)
         {
            _loc5_ = this.§_-KC§[this.§_-Dn§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2);
         this.§_-OF§(param3,param4);
      }
      
      private function §_-OF§(param1:Number, param2:Number) : void
      {
         var _loc3_:§_-ym§ = null;
         if(this.§_-KC§.length > 0)
         {
            _loc3_ = this.§_-KC§[this.§_-Dn§];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§_-I3§ = false;
         this.§_-6q§.§_-yu§(_loc3_,param1,param2);
         this.§_-ok§(this.§_-Dn§);
         var _loc4_:int = int(Math.random() * 3) + 1;
         §_-pD§.playSound("BirdShot" + _loc4_);
         if(this.§_-Dn§ >= this.§_-KC§.length)
         {
            this.§_-n4§(§_-jr§);
         }
         else
         {
            this.§_-n4§(§_-Tj§);
         }
      }
      
      public function §_-48§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§_-Dn§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.§_-KC§.length)
         {
            if(this.mSlingShotState == §_-Jk§)
            {
               this.§_-KC§[_loc4_].update(param1,true,param2);
            }
            else
            {
               this.§_-KC§[_loc4_].update(param1,false,param2);
            }
            _loc4_++;
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§_-ym§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§_-tA§();
         if(this.§_-79§ >= this.§_-KC§.length)
         {
            return false;
         }
         _loc1_ = this.§_-KC§[this.§_-79§];
         _loc2_ = §_-O2§.§_-k§(_loc1_.name).score;
         this.§_-6q§.addScore(_loc2_,§_-iw§.§_-1K§,true,_loc1_.mX,_loc1_.mY - 3,§_-qC§.§_-x7§(_loc1_.name));
         _loc1_.§_-Rh§(-1,true);
         ++this.§_-79§;
         return true;
      }
      
      public function §_-2k§() : int
      {
         var _loc2_:§_-ym§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§_-KC§)
         {
            _loc1_ += §_-O2§.§_-k§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §_-oP§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§_-yT§ >= 0)
         {
            this.§_-yT§ -= param1;
            if(this.§_-yT§ <= 0)
            {
               _loc2_ = this.§_-6q§.mLevelObjects.§_-jU§(this.§_-TN§,this.§_-Lg§);
               if(_loc2_ < 0)
               {
                  this.§_-y9§(0.1);
                  this.§_-yT§ = 0;
               }
               else if(!this.§_-6q§.mLevelObjects.getObject(_loc2_).§_-A4§)
               {
                  this.§_-yT§ = -1;
               }
               else if(this.§_-6q§.mLevelObjects.getObject(_loc2_).§_-AN§())
               {
                  this.§_-yT§ = 2000;
               }
               else
               {
                  this.§_-yT§ = 500;
               }
            }
         }
      }
      
      public function §_-hH§(param1:Number, param2:Number) : void
      {
         this.§_-bB§.x = -param1;
         this.§_-bB§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §_-2T§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §_-2T§ && this.§_-1V§ > this.§_-8v§ * §_-aP§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.§_-n4§(§_-2T§);
         var _loc1_:§_-ym§ = this.§_-KC§[this.§_-Dn§];
         _loc1_.§_-Rh§(§_-AZ§.§_-Lv§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§_-ym§ = this.§_-KC§[this.§_-Dn§];
         _loc1_.§_-Rh§(§_-AZ§.§_-ej§);
      }
      
      public function shoot() : void
      {
         this.§_-I3§ = true;
      }
      
      protected function §_-ok§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§_-ym§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.§_-KC§[param1])
         {
            _loc3_ = this.§_-KC§[param1];
            this.§_-5U§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§_-Pb§(this.§_-KC§[param1]);
            }
            _loc3_.dispose();
            this.§_-KC§[param1] = null;
         }
         this.§_-KC§.splice(param1,1);
      }
      
      public function §_-Pb§(param1:§_-ym§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §_-7W§.§_-hT§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §_-7W§.§_-hT§) + Math.random() * -_loc8_ * 2;
            this.§_-6q§.§_-sk§.§_-Eo§(§_-qC§.§_-T6§,§_-Tg§.§_-U1§,§_-qC§.§_-L4§,param1.mX + _loc7_,param1.mY + _loc8_,1500,"",§_-qC§.§_-rI§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§_-6q§.§_-sk§.§_-Eo§(§_-qC§.§_-ns§,§_-Tg§.§_-U1§,§_-qC§.§_-L4§,param1.mX,param1.mY,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function §_-k5§(param1:§_-ym§) : void
      {
         this.§_-ok§(this.§_-KC§.indexOf(param1));
      }
      
      public function §_-g6§() : void
      {
         var _loc2_:§_-ym§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§_-ym§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§_-KC§.length - 1)
         {
            _loc3_ = Math.sqrt((this.mX - this.§_-KC§[_loc1_].mX) * (this.mX - this.§_-KC§[_loc1_].mX) + (this.mY - this.§_-KC§[_loc1_].mY) * (this.mY - this.§_-KC§[_loc1_].mY));
            if((_loc4_ = Math.sqrt((this.mX - this.§_-KC§[_loc1_ + 1].mX) * (this.mX - this.§_-KC§[_loc1_ + 1].mX) + (this.mY - this.§_-KC§[_loc1_ + 1].mY) * (this.mY - this.§_-KC§[_loc1_ + 1].mY))) < _loc3_)
            {
               _loc5_ = this.§_-KC§[_loc1_];
               this.§_-KC§.splice(_loc1_,1);
               this.§_-KC§.splice(_loc1_ + 1,0,_loc5_);
               _loc1_ = Math.max(-1,_loc1_ - 2);
            }
            _loc1_++;
         }
         while(this.§_-5U§.numChildren > 0)
         {
            this.§_-5U§.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.§_-KC§.length)
         {
            _loc2_ = this.§_-KC§[_loc1_];
            this.§_-5U§.addChildAt(_loc2_.sprite,0);
            _loc1_++;
         }
      }
      
      public function §_-SY§(param1:Number, param2:Number) : §_-ym§
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§_-KC§.length)
         {
            if(this.§_-KC§[_loc3_])
            {
               if(this.§_-KC§[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.§_-KC§[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function §_-lb§(param1:Number, param2:Number) : §_-Vg§
      {
         if(param1 >= this.mX - this.§_-8v§ / 4 && param1 <= this.mX + this.§_-8v§ / 4 && param2 >= this.mY - this.§_-8v§ / 4 && this.mY <= this.§_-Lg§)
         {
            return this;
         }
         return null;
      }
      
      public function §_-1O§(param1:§_-sq§) : void
      {
         var _loc3_:§_-ym§ = null;
         var _loc4_:§_-o3§ = null;
         param1.§_-CF§ = this.mX;
         param1.§_-fm§ = this.mY;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§_-KC§.length)
         {
            _loc3_ = this.§_-KC§[_loc2_];
            (_loc4_ = new §_-o3§()).x = _loc3_.mX;
            _loc4_.y = _loc3_.mY;
            _loc4_.id = _loc3_.name;
            param1.§_-KC§.push(_loc4_);
            _loc2_++;
         }
      }
      
      public function §_-6T§() : void
      {
         while(this.§_-KC§.length > 0)
         {
            this.§_-k5§(this.§_-KC§[0]);
         }
      }
      
      public function §_-Q8§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§_-KC§.length)
         {
            if(this.§_-KC§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§_-KC§[_loc4_]);
            }
            _loc4_++;
         }
         if(this.mX > param1.x && this.mX < param2.x && this.mY > param1.y && this.mY < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §_-tK§() : Array
      {
         return [this.§_-P9§,this.§_-7A§];
      }
      
      public function §_-x6§(param1:String, param2:Number, param3:Number) : §_-ym§
      {
         var _loc4_:§_-ym§ = this.§_-tV§(param1,param2,param3);
         this.§_-g6§();
         return _loc4_;
      }
      
      public function §_-xR§() : Number
      {
         return this.§_-KC§.length;
      }
   }
}
