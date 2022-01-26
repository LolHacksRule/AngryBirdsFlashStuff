package §_-0y§
{
   import §_-3P§.§_-ry§;
   import §_-7o§.§_-Kd§;
   import §_-7o§.§_-w7§;
   import §_-KS§.§_-3l§;
   import §_-Zl§.b2Vec2;
   import §_-ec§.§_-GK§;
   import §_-hR§.§_-bJ§;
   import §_-hR§.§_-c§;
   import §_-hT§.§_-4r§;
   import §_-jY§.Texture;
   import §_-oZ§.§_-JH§;
   import §_-ot§.§_-o6§;
   import §_-se§.Sprite;
   import §_-se§.§_-N§;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §_-ZB§
   {
      
      private static var §_-IV§:Texture;
      
      private static var §_-Oz§:Texture;
      
      public static const §_-co§:Number = 0.4;
      
      public static const §_-f2§:int = 3151368;
      
      public static const §_-5C§:int = 0;
      
      public static const §_-qG§:int = 1;
      
      public static const §_-je§:int = 2;
      
      public static const §_-GG§:int = 3;
      
      public static const §_-mC§:int = 5;
      
      private static const §_-gS§:int = 8;
      
      private static const §_-U5§:int = 0;
      
      public static const §_-uF§:Number = 46.25;
      
      public static const §_-BI§:Number = 52.5;
       
      
      public var §_-Ia§:§_-B3§;
      
      public var mX:Number;
      
      public var mY:Number;
      
      public var §_-vN§:Number;
      
      private var §_-vq§:Number;
      
      private var §_-96§:Number;
      
      private var §_-9b§:Number;
      
      private var §_-YZ§:Number;
      
      public var §_-ni§:Number;
      
      public var §_-lI§:Boolean = false;
      
      public var §_-U7§:Number;
      
      public var mBirds:Vector.<§_-YK§>;
      
      public var mNextBirdIndex:int;
      
      public var §_-8-§:int;
      
      public var §_-6l§:Number;
      
      public var §_-O§:§_-se§.Sprite;
      
      public var §_-3T§:int = 0;
      
      public var §_-1P§:Number = 0;
      
      public var §_-Df§:Array;
      
      public var §_-uH§:Array;
      
      public var mSlingShotState:int;
      
      public var §_-fc§:Boolean;
      
      public var mDragging:Boolean = false;
      
      public var mShootTheBird:Boolean = false;
      
      public var §_-WF§:Number;
      
      private var §_-Pj§:§_-se§.Sprite;
      
      private var §_-vL§:§_-N§;
      
      private var §_-wa§:§_-N§;
      
      private var §_-ab§:§_-se§.Sprite;
      
      private var §_-KN§:§_-se§.Sprite;
      
      private var §_-I5§:§_-se§.Sprite;
      
      private var §_-vE§:§_-N§;
      
      private var §_-Mm§:§_-N§;
      
      public function §_-ZB§(param1:§_-B3§, param2:§_-ry§, param3:§_-se§.Sprite)
      {
         var _loc4_:§_-4r§ = null;
         this.mBirds = new Vector.<§_-YK§>();
         super();
         this.§_-Ia§ = param1;
         this.§_-Pj§ = param3;
         if(param2)
         {
            this.setPosition(param2.§_-7R§,param2.§_-0Y§);
            this.§_-50§();
            for each(_loc4_ in param2.mBirds)
            {
               this.§_-aK§(_loc4_.id,_loc4_.x,_loc4_.y);
            }
            this.mNextBirdIndex = 0;
            if(this.mBirds.length <= 0)
            {
               §_-o6§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.mX + " " + this.mY);
               this.§_-lO§(§_-GG§);
            }
            else
            {
               this.§_-lO§(§_-5C§);
            }
         }
         else
         {
            §_-o6§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.§_-lO§(§_-GG§);
         }
         this.§_-fc§ = true;
         this.§_-WF§ = 0;
         this.§_-hi§();
         this.update(0,true);
      }
      
      public function get sprite() : §_-se§.Sprite
      {
         return this.§_-Pj§;
      }
      
      public function dispose() : void
      {
         while(this.mBirds.length > 0)
         {
            this.§_-H5§(0);
         }
         this.mBirds = null;
         if(this.§_-Pj§)
         {
            this.§_-Pj§.dispose();
            this.§_-Pj§ = null;
         }
         this.§_-O§ = null;
         this.§_-Df§ = null;
         this.§_-uH§ = null;
      }
      
      public function §_-E3§(param1:String, param2:Number, param3:Number, param4:int = -1) : §_-YK§
      {
         var _loc5_:§_-YK§;
         (_loc5_ = this.§_-aK§(param1,param2,param3,param4)).§_-II§();
         return _loc5_;
      }
      
      protected function §_-aK§(param1:String, param2:Number, param3:Number, param4:int = -1) : §_-YK§
      {
         var _loc5_:§_-YK§ = new §_-YK§(this,new §_-se§.Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            this.mBirds.push(_loc5_);
         }
         else
         {
            this.mBirds.splice(param4,0,_loc5_);
         }
         this.§_-O§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      protected function §_-lO§(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §_-5C§)
         {
            this.setNewCoordinatesForRubber(this.§_-vq§,this.§_-96§ + this.§_-U7§ / 8);
            this.§_-6l§ = 1000;
         }
         else if(this.mSlingShotState == §_-qG§)
         {
            this.setNewCoordinatesForRubber(this.§_-vq§,this.§_-96§ + this.§_-U7§ / 8);
            this.§_-6l§ = 0;
         }
         else if(this.mSlingShotState == §_-je§)
         {
            this.§_-6l§ = 10000;
            this.mShootTheBird = false;
            this.setNewCoordinatesForRubber(this.§_-vq§,this.§_-96§ + this.§_-U7§ / 8);
         }
         else if(this.mSlingShotState == §_-GG§)
         {
            this.setNewCoordinatesForRubber(this.§_-vq§,this.§_-96§ + this.§_-U7§ / 8);
            this.§_-6l§ = 2000;
         }
         else if(this.mSlingShotState == §_-mC§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.mShootTheBird = false;
               this.setNewCoordinatesForRubber(this.§_-vq§,this.§_-96§ + this.§_-U7§ / 8);
               this.mBirds[this.mNextBirdIndex].setPosition(this.§_-9b§ - this.mBirds[this.mNextBirdIndex].radius * Math.cos(this.§_-1P§ / (180 / Math.PI)),this.§_-YZ§ + this.mBirds[this.mNextBirdIndex].radius * Math.sin(this.§_-1P§ / (180 / Math.PI)));
            }
            this.setNewCoordinatesForRubber(this.§_-vq§,this.§_-96§ + this.§_-U7§ / 8);
         }
         this.mDragging = false;
      }
      
      public function get §_-HA§() : §_-B3§
      {
         return this.§_-Ia§;
      }
      
      public function §_-t5§() : Boolean
      {
         return this.mSlingShotState == §_-GG§ && this.§_-6l§ <= 0;
      }
      
      private function §_-50§() : void
      {
         var _loc1_:§_-3l§ = this.§_-Ia§.§_-b5§.§_-bs§("SLINGSHOT");
         var _loc2_:Texture = _loc1_.getFrame(0).texture;
         var _loc3_:Texture = _loc1_.getFrame(1).texture;
         this.§_-vE§ = new §_-N§(_loc2_);
         this.§_-Mm§ = new §_-N§(_loc3_);
         this.§_-hb§();
         this.§_-IF§();
         this.§_-O§ = new §_-se§.Sprite();
         this.§_-Pj§.addChild(this.§_-vE§);
         this.§_-Pj§.addChild(this.§_-ab§);
         this.§_-Pj§.addChild(this.§_-O§);
         this.§_-Pj§.addChild(this.§_-I5§);
         this.§_-Pj§.addChild(this.§_-KN§);
         this.§_-Pj§.addChild(this.§_-Mm§);
         this.§_-vN§ = this.mY + 8.5;
      }
      
      public function §_-hb§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§_-vq§ = this.mX;
         this.§_-96§ = this.mY;
         this.§_-U7§ = 5;
         _loc1_ = null;
      }
      
      private function §_-IF§() : void
      {
         var _loc2_:flash.display.Sprite = null;
         var _loc3_:BitmapData = null;
         if(!§_-IV§)
         {
            §_-IV§ = this.§_-Ia§.§_-WT§.§_-2V§(new BitmapData(2,2,false,§_-f2§));
         }
         if(!§_-Oz§)
         {
            _loc2_ = new §_-GK§.§_-dR§("MovieClip_SlingHolder")();
            _loc3_ = new BitmapData(_loc2_.width,_loc2_.height,true,0);
            _loc3_.draw(_loc2_);
            §_-Oz§ = this.§_-Ia§.§_-WT§.§_-2V§(_loc3_);
         }
         this.§_-I5§ = new §_-se§.Sprite();
         var _loc1_:§_-N§ = new §_-N§(§_-Oz§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         this.§_-I5§.addChild(_loc1_);
         this.§_-ab§ = new §_-se§.Sprite();
         this.§_-vL§ = new §_-N§(§_-IV§);
         this.§_-ab§.addChild(this.§_-vL§);
         this.§_-KN§ = new §_-se§.Sprite();
         this.§_-wa§ = new §_-N§(§_-IV§);
         this.§_-KN§.addChild(this.§_-wa§);
      }
      
      public function §_-tM§(param1:Number) : void
      {
         var _loc2_:Number = this.§_-YZ§ / §_-B3§.§_-s8§;
         var _loc3_:Number = this.§_-9b§ / §_-B3§.§_-s8§;
         var _loc4_:Number = 8 + 12 * ((this.§_-U7§ - this.§_-ni§) / this.§_-U7§);
         this.§_-I5§.x = _loc3_;
         this.§_-I5§.y = _loc2_;
         this.§_-I5§.rotation = -this.§_-1P§ / (180 / Math.PI);
         this.§_-vE§.x = this.mX / §_-B3§.§_-s8§ - 3;
         this.§_-vE§.y = this.mY / §_-B3§.§_-s8§ - 30;
         this.§_-Mm§.x = this.mX / §_-B3§.§_-s8§ - 30;
         this.§_-Mm§.y = this.mY / §_-B3§.§_-s8§ - 30 - 4;
         this.§_-KN§.rotation = Math.atan2(_loc2_ - this.§_-KN§.y,_loc3_ - this.§_-KN§.x);
         var _loc5_:Number = Math.sin(this.§_-KN§.rotation) * (_loc4_ / 2);
         this.§_-KN§.x = this.mX / §_-B3§.§_-s8§ - 17 + _loc5_;
         if(_loc3_ - 17 + _loc5_ > this.mX / this.§_-KN§.x)
         {
            this.§_-KN§.y = this.mY / §_-B3§.§_-s8§ - _loc4_ / 2;
         }
         else
         {
            this.§_-KN§.y = this.mY / §_-B3§.§_-s8§ + _loc4_ / 2;
         }
         this.§_-ab§.rotation = Math.atan2(_loc2_ - this.§_-ab§.y,_loc3_ - this.§_-ab§.x);
         var _loc6_:Number = Math.sin(this.§_-ab§.rotation) * (_loc4_ / 2);
         this.§_-ab§.x = this.mX / §_-B3§.§_-s8§ + 22 + _loc6_;
         if(_loc3_ + 22 + _loc6_ > this.§_-ab§.x)
         {
            this.§_-ab§.y = this.mY / §_-B3§.§_-s8§ - _loc4_ / 2;
         }
         else
         {
            this.§_-ab§.y = this.mY / §_-B3§.§_-s8§ + _loc4_ / 2;
         }
         this.§_-wa§.width = Math.sqrt(Math.pow(_loc3_ - this.§_-KN§.x,2) + Math.pow(_loc2_ - this.§_-KN§.y,2));
         this.§_-vL§.width = Math.sqrt(Math.pow(_loc3_ - this.§_-ab§.x,2) + Math.pow(_loc2_ - this.§_-ab§.y,2));
         this.§_-wa§.height = this.§_-vL§.height = _loc4_;
         this.§_-fc§ = false;
      }
      
      public function §_-0R§() : void
      {
         while(this.mBirds.length > 0)
         {
            this.§_-H5§(0,true);
         }
         this.§_-aK§("BIRD_SARDINE",this.mX,this.mY);
         this.§_-lO§(§_-je§);
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.§_-lO§(§_-mC§);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§_-9b§ == param1 && this.§_-YZ§ == param2)
         {
            return true;
         }
         this.§_-ni§ = Math.sqrt((param2 - this.§_-96§) * (param2 - this.§_-96§) + (param1 - this.§_-vq§) * (param1 - this.§_-vq§));
         if(this.§_-ni§ > this.§_-U7§)
         {
            if(param3)
            {
               this.§_-ni§ = Math.sqrt((this.§_-YZ§ - this.§_-96§) * (this.§_-YZ§ - this.§_-96§) + (this.§_-9b§ - this.§_-vq§) * (this.§_-9b§ - this.§_-vq§));
               return false;
            }
            param1 = this.§_-vq§ + this.§_-U7§ * (param1 - this.§_-vq§) / this.§_-ni§;
            param2 = this.§_-96§ + this.§_-U7§ * (param2 - this.§_-96§) / this.§_-ni§;
            this.§_-ni§ = this.§_-U7§;
         }
         this.§_-9b§ = param1;
         this.§_-YZ§ = param2;
         this.§_-1P§ = Math.atan2(-(this.§_-YZ§ - this.§_-96§),this.§_-9b§ - this.§_-vq§);
         this.§_-1P§ *= 180 / Math.PI;
         if(this.mDragging == false)
         {
            this.§_-9b§ = param1 - 0.7;
            this.§_-YZ§ = param2;
            this.§_-1P§ = -160;
         }
         _loc4_ = 12;
         _loc5_ = 5;
         _loc6_ = 4;
         _loc7_ = this.§_-U7§ / 2;
         if(this.§_-ni§ > _loc7_ && this.§_-1P§ > -90 - _loc4_ + _loc5_ && this.§_-1P§ < -90 + _loc4_ + _loc5_)
         {
            param1 = this.§_-vq§ + _loc7_ * (param1 - this.§_-vq§) / this.§_-ni§;
            param2 = this.§_-96§ + _loc7_ * (param2 - this.§_-96§) / this.§_-ni§;
            this.§_-ni§ = _loc7_;
            this.§_-9b§ = param1;
            this.§_-YZ§ = param2;
         }
         else if(this.§_-ni§ > _loc7_ && this.§_-1P§ > -90 - _loc4_ - _loc6_ + _loc5_ && this.§_-1P§ < -90 + _loc4_ + _loc6_ + _loc5_)
         {
            _loc8_ = _loc7_ + (this.§_-U7§ - _loc7_) * (Math.abs(this.§_-1P§ - -90 - _loc5_) - _loc4_) / _loc6_;
            param1 = this.§_-vq§ + _loc8_ * (param1 - this.§_-vq§) / this.§_-ni§;
            param2 = this.§_-96§ + _loc8_ * (param2 - this.§_-96§) / this.§_-ni§;
            this.§_-ni§ = _loc8_;
            this.§_-9b§ = param1;
            this.§_-YZ§ = param2;
         }
         if(this.§_-ni§ <= this.§_-U7§ * 0.45)
         {
            this.§_-lI§ = true;
         }
         else if(this.§_-lI§ && this.§_-ni§ >= this.§_-U7§ * 0.8)
         {
            §_-JH§.§_-A3§("SlingshotStreched");
            this.§_-lI§ = false;
         }
         this.§_-fc§ = true;
         return true;
      }
      
      public function §_-Pc§(param1:Number) : void
      {
         this.setPosition(this.mX,this.mY + param1);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Number = param1 - this.mX;
         this.mX = param1;
         var _loc5_:Number = param2 - this.mY;
         this.mY = param2;
         this.§_-vN§ += _loc5_;
         this.§_-96§ += _loc5_;
         this.§_-YZ§ += _loc5_;
         this.§_-vq§ += _loc4_;
         this.§_-9b§ += _loc4_;
         if(param3)
         {
            this.§_-tM§(0);
         }
         this.§_-fc§ = true;
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§_-YK§ = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:int = 0;
         this.§_-l9§(param1);
         if(this.§_-fc§)
         {
            this.§_-tM§(param1);
         }
         this.§_-6l§ -= param1;
         if(this.§_-6l§ < 0)
         {
            this.§_-6l§ = 0;
         }
         if(this.mSlingShotState != §_-GG§)
         {
            this.§_-x1§(param1,param2);
            _loc3_ = null;
            if(this.mBirds.length > 0)
            {
               _loc3_ = this.mBirds[this.mNextBirdIndex];
            }
            if(_loc3_)
            {
               _loc3_.§_-wx§(param1);
            }
            if(!_loc3_)
            {
               this.§_-lO§(§_-GG§);
            }
            else if(this.mSlingShotState == §_-5C§)
            {
               if(this.§_-6l§ <= 0 && !this.§_-Ia§.camera.isOnCastleView())
               {
                  this.§_-lO§(§_-qG§);
                  _loc3_.§_-Z0§();
               }
            }
            else if(this.mSlingShotState == §_-qG§)
            {
               if(_loc3_.§_-CJ§)
               {
                  this.§_-lO§(§_-je§);
               }
            }
            else if(this.mSlingShotState == §_-je§)
            {
               _loc3_.setPosition(this.§_-9b§ - _loc3_.radius * Math.cos(this.§_-1P§ / (180 / Math.PI)),this.§_-YZ§ + _loc3_.radius * Math.sin(this.§_-1P§ / (180 / Math.PI)));
               if(this.mShootTheBird)
               {
                  this.mDragging = false;
                  this.§_-Ia§.mActiveObject = this.§_-Ia§.mLevelObjects.§_-08§(_loc3_.name,_loc3_.mX,_loc3_.mY,0,true);
                  this.§_-Ia§.§_-PX§ = 0;
                  if(_loc3_.§_-6r§ > 1)
                  {
                     this.§_-Ia§.mActiveObject.§_-kV§(_loc3_.§_-6r§);
                     this.§_-Ia§.mActiveObject.§_-LF§.§_-V-§();
                  }
                  _loc5_ = -(_loc4_ = _loc3_.name.toUpperCase() == "BIRD_GREEN" ? Number(§_-BI§) : Number(§_-uF§)) * this.§_-ni§ / this.§_-U7§ * Math.cos(this.§_-1P§ / (180 / Math.PI));
                  _loc6_ = _loc4_ * this.§_-ni§ / this.§_-U7§ * Math.sin(this.§_-1P§ / (180 / Math.PI));
                  this.§_-Ia§.mActiveObject.§_-Lb§(new b2Vec2(_loc5_,_loc6_),false,true);
                  this.§_-Ia§.camera.§_-Qn§(§_-Y4§.§_-pm§);
                  this.§_-H5§(this.mNextBirdIndex);
                  this.mShootTheBird = false;
                  _loc7_ = int(Math.random() * 3) + 1;
                  §_-JH§.§_-A3§("BirdShot" + _loc7_);
                  if(this.mNextBirdIndex >= this.mBirds.length)
                  {
                     this.§_-lO§(§_-GG§);
                  }
                  else
                  {
                     this.§_-lO§(§_-5C§);
                  }
               }
            }
         }
      }
      
      public function §_-x1§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.mNextBirdIndex;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.mBirds.length)
         {
            if(this.mSlingShotState == §_-mC§)
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
         var _loc1_:§_-YK§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.setNewCoordinatesForRubber(this.§_-vq§,this.§_-96§ + this.§_-U7§ / 8);
         if(this.§_-8-§ >= this.mBirds.length)
         {
            return false;
         }
         _loc1_ = this.mBirds[this.§_-8-§];
         _loc2_ = §_-bJ§.§_-hL§(_loc1_.name).score;
         this.§_-Ia§.addScore(_loc2_,true,_loc1_.mX,_loc1_.mY - 3,§_-w7§.§_-B-§(_loc1_.name));
         _loc1_.§_-AO§(-1,true);
         ++this.§_-8-§;
         return true;
      }
      
      public function §_-l9§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§_-WF§ >= 0)
         {
            this.§_-WF§ -= param1;
            if(this.§_-WF§ <= 0)
            {
               _loc2_ = this.§_-Ia§.mLevelObjects.§_-Vd§(this.§_-vq§,this.§_-vN§);
               if(_loc2_ < 0)
               {
                  this.§_-Pc§(0.1);
                  this.§_-WF§ = 0;
               }
               else if(!this.§_-Ia§.mLevelObjects.getObject(_loc2_).§_-Yk§)
               {
                  this.§_-WF§ = -1;
               }
               else if(this.§_-Ia§.mLevelObjects.getObject(_loc2_).§_-LB§())
               {
                  this.§_-WF§ = 2000;
               }
               else
               {
                  this.§_-WF§ = 500;
               }
            }
         }
      }
      
      public function §_-Go§(param1:Number, param2:Number) : void
      {
         this.§_-Pj§.x = -param1;
         this.§_-Pj§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §_-je§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §_-je§ && this.§_-ni§ > this.§_-U7§ * §_-co§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.§_-lO§(§_-je§);
         var _loc1_:§_-YK§ = this.mBirds[this.mNextBirdIndex];
         _loc1_.§_-AO§(§_-c§.§_-BQ§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§_-YK§ = this.mBirds[this.mNextBirdIndex];
         _loc1_.§_-AO§(§_-c§.§_-ME§);
      }
      
      protected function §_-H5§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§_-YK§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.mBirds[param1])
         {
            _loc3_ = this.mBirds[param1];
            this.§_-O§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§_-Ut§(this.mBirds[param1]);
            }
            _loc3_.dispose();
            this.mBirds[param1] = null;
         }
         this.mBirds.splice(param1,1);
      }
      
      public function §_-Ut§(param1:§_-YK§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §_-B3§.§_-s8§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §_-B3§.§_-s8§) + Math.random() * -_loc8_ * 2;
            this.§_-Ia§.§_-29§.§_-4V§(§_-w7§.§_-Hl§,§_-Kd§.§_-vR§,§_-w7§.§_-Or§,param1.mX + _loc7_,param1.mY + _loc8_,1500,"",§_-w7§.§_-MH§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§_-Ia§.§_-29§.§_-4V§(§_-w7§.§_-gj§,§_-Kd§.§_-vR§,§_-w7§.§_-Or§,param1.mX,param1.mY,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function §_-Ma§(param1:§_-YK§) : void
      {
         this.§_-H5§(this.mBirds.indexOf(param1));
      }
      
      public function §_-hi§() : void
      {
         var _loc2_:§_-YK§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§_-YK§ = null;
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
         while(this.§_-O§.numChildren > 0)
         {
            this.§_-O§.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.mBirds.length)
         {
            _loc2_ = this.mBirds[_loc1_];
            this.§_-O§.addChildAt(_loc2_.sprite,0);
            _loc1_++;
         }
      }
      
      public function §_-Nt§(param1:Number, param2:Number) : §_-YK§
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
      
      public function §_-Vb§(param1:Number, param2:Number) : §_-ZB§
      {
         if(param1 >= this.mX - this.§_-U7§ / 4 && param1 <= this.mX + this.§_-U7§ / 4 && param2 >= this.mY - this.§_-U7§ / 4 && this.mY <= this.§_-vN§)
         {
            return this;
         }
         return null;
      }
      
      public function §_-9J§(param1:§_-ry§) : void
      {
         var _loc3_:§_-YK§ = null;
         var _loc4_:§_-4r§ = null;
         param1.§_-7R§ = this.mX;
         param1.§_-0Y§ = this.mY;
         var _loc2_:Number = 0;
         while(_loc2_ < this.mBirds.length)
         {
            _loc3_ = this.mBirds[_loc2_];
            (_loc4_ = new §_-4r§()).x = _loc3_.mX;
            _loc4_.y = _loc3_.mY;
            _loc4_.id = _loc3_.name;
            param1.mBirds.push(_loc4_);
            _loc2_++;
         }
      }
      
      public function §_-va§() : void
      {
         while(this.mBirds.length > 0)
         {
            this.§_-Ma§(this.mBirds[0]);
         }
      }
      
      public function §_-g4§(param1:Point, param2:Point) : Array
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
      
      public function §_-x0§() : Array
      {
         return [this.§_-Mm§,this.§_-vE§];
      }
      
      public function §_-lf§(param1:String, param2:Number, param3:Number) : §_-YK§
      {
         var _loc4_:§_-YK§ = this.§_-aK§(param1,param2,param3);
         this.§_-hi§();
         return _loc4_;
      }
      
      public function §_-gx§() : Number
      {
         return this.mBirds.length;
      }
   }
}
