package §_-TG§
{
   import §_-0BH§.§_-FK§;
   import §_-0DG§.§_-09t§;
   import §_-0DG§.§_-a2§;
   import §_-4g§.§_-pX§;
   import §_-8d§.§_-J§;
   import §_-8d§.§_-vz§;
   import §_-Ga§.§_-bm§;
   import §_-N3§.§_-Hv§;
   import §_-N3§.§_-Zc§;
   import §_-by§.§_-Tr§;
   import §_-uY§.Sprite;
   import §_-uY§.§_-09b§;
   import §_-uY§.§_-2p§;
   import §_-z4§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §_-E0§
   {
      
      public static const §_-ex§:int = 0;
      
      public static const §_-Zj§:int = 1;
      
      public static const §_-03t§:int = 2;
      
      public static const §_-yK§:int = 3;
      
      public static const §_-pu§:int = 5;
      
      public static const §_-rO§:int = 3151368;
      
      protected static const §_-Ut§:int = 8;
      
      protected static const §_-zg§:int = 0;
      
      public static const BIRD_LAUNCH_FORCE:Number = 46.25;
      
      public static const BIRD_LAUNCH_FORCE_GREEN:Number = 52.5;
      
      protected static const §_-KG§:Number = -0.7;
      
      protected static const §_-RU§:Number = 0;
      
      protected static var §_-QK§:Texture;
      
      public static const §_-0Al§:Number = 0.4;
       
      
      public var §_-6A§:§_-00u§;
      
      public var §_-c§:Number;
      
      public var §_-l1§:Number;
      
      public var §_-0En§:Number;
      
      protected var §_-ut§:Number;
      
      protected var §_-jY§:Number;
      
      protected var §_-Tn§:Number;
      
      protected var §_-08N§:Number;
      
      public var §_-7P§:Number;
      
      public var §_-M4§:Boolean = false;
      
      protected var §_-Fn§:Number;
      
      public var §_-j9§:Vector.<§_-pR§>;
      
      public var §_-eE§:int;
      
      public var §_-b§:int;
      
      public var §_-0CK§:Number;
      
      public var §_-wx§:Sprite;
      
      public var §_-Yy§:int = 0;
      
      public var §_-AU§:Number = 0;
      
      public var §_-oy§:Array;
      
      public var §_-lp§:Array;
      
      public var mSlingShotState:int;
      
      public var §_-0Dz§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §_-Js§:Boolean = false;
      
      public var §_-Rl§:Number;
      
      protected var §_-FQ§:Sprite;
      
      protected var §_-08a§:§_-2p§;
      
      protected var §_-03K§:§_-2p§;
      
      protected var §_-0A8§:Sprite;
      
      protected var §_-0B6§:Sprite;
      
      protected var §_-O-§:Sprite;
      
      protected var §_-hP§:§_-09b§;
      
      protected var §_-0Bj§:§_-09b§;
      
      private var §_-fN§:Number = 0;
      
      private var §_-em§:int = 0;
      
      protected var §_-CF§:Number = -0.7;
      
      protected var §_-NG§:Number = 0;
      
      public function §_-E0§(param1:§_-00u§, param2:§_-bm§, param3:Sprite)
      {
         var _loc4_:int = 0;
         var _loc5_:§_-Tr§ = null;
         this.§_-j9§ = new Vector.<§_-pR§>();
         super();
         this.§_-6A§ = param1;
         this.§_-FQ§ = param3;
         if(param2)
         {
            this.setPosition(param2.§_-7M§,param2.§_-Rc§);
            this.§_-6l§();
            _loc4_ = 0;
            while(_loc4_ < param2.§_-9m§)
            {
               _loc5_ = param2.§_-gz§(_loc4_);
               this.§_-01V§(_loc5_.id,_loc5_.x,_loc5_.y);
               _loc4_++;
            }
            this.§_-em§ = this.§_-LO§();
            this.§_-eE§ = 0;
            if(this.§_-j9§.length <= 0)
            {
               §_-FK§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§_-c§ + " " + this.§_-l1§);
               this.§_-05e§(§_-yK§);
            }
            else
            {
               this.§_-05e§(§_-ex§);
            }
         }
         else
         {
            §_-FK§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.§_-05e§(§_-yK§);
         }
         this.§_-Rl§ = 0;
         this.§_-Lo§();
         this.update(0,true);
         this.§_-0Ee§();
         this.updateAnimations(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§_-FQ§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§_-fN§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§_-eE§ < this.§_-j9§.length;
      }
      
      public function dispose() : void
      {
         while(this.§_-j9§.length > 0)
         {
            this.§_-N6§(0);
         }
         this.§_-j9§ = null;
         if(this.§_-FQ§)
         {
            this.§_-FQ§.dispose();
            this.§_-FQ§ = null;
         }
         this.§_-wx§ = null;
         this.§_-oy§ = null;
         this.§_-lp§ = null;
      }
      
      public function §_-v4§(param1:String, param2:Number, param3:Number, param4:int = -1) : §_-pR§
      {
         var _loc5_:§_-pR§;
         (_loc5_ = this.§_-01V§(param1,param2,param3,param4)).§_-0A4§();
         return _loc5_;
      }
      
      protected function §_-01V§(param1:String, param2:Number, param3:Number, param4:int = -1) : §_-pR§
      {
         var _loc5_:§_-pR§ = new §_-pR§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            this.§_-j9§.push(_loc5_);
         }
         else
         {
            this.§_-j9§.splice(param4,0,_loc5_);
         }
         this.§_-wx§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function §_-05e§(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §_-ex§)
         {
            this.§_-Tf§();
            this.§_-0CK§ = 1000;
         }
         else if(this.mSlingShotState == §_-Zj§)
         {
            this.§_-Tf§();
            this.§_-0CK§ = 0;
         }
         else if(this.mSlingShotState == §_-03t§)
         {
            this.§_-0CK§ = 10000;
            this.§_-Js§ = false;
            this.§_-Tf§();
         }
         else if(this.mSlingShotState == §_-yK§)
         {
            this.§_-Tf§();
            this.§_-0CK§ = 2000;
         }
         else if(this.mSlingShotState == §_-pu§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§_-Js§ = false;
               this.§_-Tf§();
               this.§_-j9§[this.§_-eE§].setPosition(this.§_-Tn§ - this.§_-j9§[this.§_-eE§].radius * Math.cos(this.§_-AU§ / (180 / Math.PI)),this.§_-08N§ + this.§_-j9§[this.§_-eE§].radius * Math.sin(this.§_-AU§ / (180 / Math.PI)));
            }
            else
            {
               this.§_-Tf§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §_-0AM§() : §_-00u§
      {
         return this.§_-6A§;
      }
      
      public function §_-8A§() : Boolean
      {
         return this.mSlingShotState == §_-yK§ && this.§_-0CK§ <= 0;
      }
      
      private function §_-6l§() : void
      {
         var _loc1_:§_-J§ = this.getSlingshotAnimation();
         var _loc2_:§_-vz§ = _loc1_.getFrame(0);
         var _loc3_:§_-vz§ = _loc1_.getFrame(1);
         this.§_-hP§ = new §_-09b§(_loc2_.texture);
         this.§_-hP§.scaleX = _loc2_.scale;
         this.§_-hP§.scaleY = _loc2_.scale;
         this.§_-0Bj§ = new §_-09b§(_loc3_.texture);
         this.§_-0Bj§.scaleX = _loc3_.scale;
         this.§_-0Bj§.scaleY = _loc3_.scale;
         this.§_-N4§();
         this.§_-yR§();
         this.§_-wx§ = new Sprite();
         this.§_-FQ§.addChild(this.§_-hP§);
         this.§_-FQ§.addChild(this.§_-0A8§);
         this.§_-FQ§.addChild(this.§_-wx§);
         this.§_-FQ§.addChild(this.§_-O-§);
         this.§_-FQ§.addChild(this.§_-0B6§);
         this.§_-FQ§.addChild(this.§_-0Bj§);
         this.§_-0En§ = this.§_-l1§ + 8.5;
      }
      
      protected function getSlingshotAnimation() : §_-J§
      {
         return this.§_-6A§.animationManager.getAnimation("SLINGSHOT");
      }
      
      public function §_-N4§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§_-ut§ = this.§_-c§;
         this.§_-jY§ = this.§_-l1§;
         this.§_-Fn§ = §_-L8§.§_-Cr§;
         _loc1_ = null;
      }
      
      protected function §_-yR§() : void
      {
         var _loc2_:BitmapData = null;
         if(!§_-QK§)
         {
            _loc2_ = new BitmapData(18,26,true,4281341704);
            §_-QK§ = this.§_-6A§.textureManager.getTextureFromBitmapData(_loc2_);
         }
         this.§_-O-§ = new Sprite();
         var _loc1_:§_-09b§ = new §_-09b§(§_-QK§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         this.§_-O-§.addChild(_loc1_);
         this.§_-0A8§ = new Sprite();
         this.§_-08a§ = new §_-2p§(2,2,§_-rO§);
         this.§_-0A8§.addChild(this.§_-08a§);
         this.§_-0B6§ = new Sprite();
         this.§_-03K§ = new §_-2p§(2,2,§_-rO§);
         this.§_-0B6§.addChild(this.§_-03K§);
      }
      
      public function updateAnimations(param1:Number) : void
      {
         var _loc2_:Number = this.§_-08N§ / §_-00u§.§_-lY§;
         var _loc3_:Number = this.§_-Tn§ / §_-00u§.§_-lY§;
         var _loc4_:Number = 3.5 + 8 * ((this.§_-Fn§ - this.§_-7P§) / this.§_-Fn§);
         this.§_-O-§.x = _loc3_;
         this.§_-O-§.y = _loc2_;
         this.§_-O-§.rotation = -this.§_-AU§ / (180 / Math.PI);
         this.§_-hP§.x = this.§_-c§ / §_-00u§.§_-lY§ - 3;
         this.§_-hP§.y = this.§_-l1§ / §_-00u§.§_-lY§ - 30;
         this.§_-0Bj§.x = this.§_-c§ / §_-00u§.§_-lY§ - 30;
         this.§_-0Bj§.y = this.§_-l1§ / §_-00u§.§_-lY§ - 30;
         this.§_-0B6§.x = this.§_-c§ / §_-00u§.§_-lY§ - 17;
         this.§_-0B6§.y = this.§_-l1§ / §_-00u§.§_-lY§ + 5;
         this.§_-0B6§.rotation = Math.atan2(_loc2_ - this.§_-0B6§.y,_loc3_ - this.§_-0B6§.x);
         this.§_-0A8§.x = this.§_-c§ / §_-00u§.§_-lY§ + 22;
         this.§_-0A8§.y = this.§_-l1§ / §_-00u§.§_-lY§;
         this.§_-0A8§.rotation = Math.atan2(_loc2_ - this.§_-0A8§.y,_loc3_ - this.§_-0A8§.x);
         this.§_-03K§.width = Math.sqrt(Math.pow(_loc3_ - this.§_-0B6§.x,2) + Math.pow(_loc2_ - this.§_-0B6§.y,2));
         this.§_-08a§.width = Math.sqrt(Math.pow(_loc3_ - this.§_-0A8§.x,2) + Math.pow(_loc2_ - this.§_-0A8§.y,2));
         this.§_-03K§.height = this.§_-08a§.height = _loc4_ * 2;
         this.§_-03K§.y = -this.§_-03K§.height / 2;
         this.§_-08a§.y = -this.§_-08a§.height / 2;
         this.§_-0Dz§ = false;
      }
      
      public function useMightyEagle() : void
      {
         while(this.§_-j9§.length > 0)
         {
            this.§_-N6§(0,true);
         }
         this.§_-0F2§();
         this.§_-01V§("BIRD_SARDINE",this.§_-c§,this.§_-l1§);
         this.§_-05e§(§_-03t§);
      }
      
      protected function §_-0F2§() : void
      {
         §_-pX§.playSound("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.§_-05e§(§_-pu§);
      }
      
      public function §_-Tf§() : void
      {
         this.setNewCoordinatesForRubber(this.§_-ut§,this.§_-jY§ + this.§_-Fn§ / 8);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§_-Tn§ == param1 && this.§_-08N§ == param2)
         {
            return true;
         }
         this.§_-7P§ = Math.sqrt((param2 - this.§_-jY§) * (param2 - this.§_-jY§) + (param1 - this.§_-ut§) * (param1 - this.§_-ut§));
         if(this.§_-7P§ > this.§_-Fn§)
         {
            if(param3)
            {
               this.§_-7P§ = Math.sqrt((this.§_-08N§ - this.§_-jY§) * (this.§_-08N§ - this.§_-jY§) + (this.§_-Tn§ - this.§_-ut§) * (this.§_-Tn§ - this.§_-ut§));
               return false;
            }
            param1 = this.§_-ut§ + this.§_-Fn§ * (param1 - this.§_-ut§) / this.§_-7P§;
            param2 = this.§_-jY§ + this.§_-Fn§ * (param2 - this.§_-jY§) / this.§_-7P§;
            this.§_-7P§ = this.§_-Fn§;
         }
         this.§_-Tn§ = param1;
         this.§_-08N§ = param2;
         this.§_-AU§ = Math.atan2(-(this.§_-08N§ - this.§_-jY§),this.§_-Tn§ - this.§_-ut§);
         this.§_-AU§ *= 180 / Math.PI;
         if(this.mDragging == false)
         {
            this.§_-Tn§ = param1 + this.§_-CF§;
            this.§_-08N§ = param2 + this.§_-NG§;
            this.§_-AU§ = -160;
         }
         _loc4_ = 12;
         _loc5_ = 5;
         _loc6_ = 4;
         _loc7_ = this.§_-Fn§ / 2;
         if(this.§_-7P§ > _loc7_ && this.§_-AU§ > -90 - _loc4_ + _loc5_ && this.§_-AU§ < -90 + _loc4_ + _loc5_)
         {
            param1 = this.§_-ut§ + _loc7_ * (param1 - this.§_-ut§) / this.§_-7P§;
            param2 = this.§_-jY§ + _loc7_ * (param2 - this.§_-jY§) / this.§_-7P§;
            this.§_-7P§ = _loc7_;
            this.§_-Tn§ = param1;
            this.§_-08N§ = param2;
         }
         else if(this.§_-7P§ > _loc7_ && this.§_-AU§ > -90 - _loc4_ - _loc6_ + _loc5_ && this.§_-AU§ < -90 + _loc4_ + _loc6_ + _loc5_)
         {
            _loc8_ = _loc7_ + (this.§_-Fn§ - _loc7_) * (Math.abs(this.§_-AU§ - -90 - _loc5_) - _loc4_) / _loc6_;
            param1 = this.§_-ut§ + _loc8_ * (param1 - this.§_-ut§) / this.§_-7P§;
            param2 = this.§_-jY§ + _loc8_ * (param2 - this.§_-jY§) / this.§_-7P§;
            this.§_-7P§ = _loc8_;
            this.§_-Tn§ = param1;
            this.§_-08N§ = param2;
         }
         if(this.§_-7P§ <= this.§_-Fn§ * 0.45)
         {
            this.§_-M4§ = true;
         }
         else if(this.§_-M4§ && this.§_-7P§ >= this.§_-Fn§ * 0.8)
         {
            this.§_-q1§();
            this.§_-M4§ = false;
         }
         this.§_-0Dz§ = true;
         return true;
      }
      
      protected function §_-q1§() : void
      {
         §_-pX§.playSound("SlingshotStreched");
      }
      
      public function §_-0Ct§(param1:Number) : void
      {
         this.setPosition(this.§_-c§,this.§_-l1§ + param1);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Number = param1 - this.§_-c§;
         this.§_-c§ = param1;
         var _loc5_:Number = param2 - this.§_-l1§;
         this.§_-l1§ = param2;
         this.§_-0En§ += _loc5_;
         this.§_-jY§ += _loc5_;
         this.§_-08N§ += _loc5_;
         this.§_-ut§ += _loc4_;
         this.§_-Tn§ += _loc4_;
         if(param3)
         {
            this.updateAnimations(0);
         }
         this.§_-0Dz§ = true;
      }
      
      public function getLaunchSpeed() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§_-pR§ = null;
         _loc2_ = this.§_-j9§[this.§_-eE§];
         var _loc3_:Number = this.§_-7P§ / this.§_-Fn§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§_-E0§.BIRD_LAUNCH_FORCE_GREEN) : Number(§_-E0§.BIRD_LAUNCH_FORCE);
         }
         return _loc1_ * _loc3_;
      }
      
      public function §_-03l§() : Point
      {
         var _loc1_:§_-pR§ = null;
         if(this.§_-j9§.length > this.§_-eE§)
         {
            _loc1_ = this.§_-j9§[this.§_-eE§];
            return new Point(_loc1_.x,_loc1_.y);
         }
         return null;
      }
      
      public function §_-DY§() : Point
      {
         return new Point(this.§_-ut§,this.§_-jY§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§_-pR§ = null;
         this.§_-aT§(param1);
         if(this.§_-0Dz§)
         {
            this.updateAnimations(param1);
         }
         this.§_-0CK§ -= param1;
         if(this.§_-0CK§ < 0)
         {
            this.§_-0CK§ = 0;
         }
         if(this.mSlingShotState != §_-yK§)
         {
            this.§_-ER§(param1,param2);
            _loc3_ = null;
            if(this.§_-j9§.length > 0)
            {
               _loc3_ = this.§_-j9§[this.§_-eE§];
            }
            if(_loc3_)
            {
               _loc3_.§_-U§(param1);
            }
            if(!_loc3_)
            {
               this.§_-05e§(§_-yK§);
            }
            else if(this.mSlingShotState == §_-ex§)
            {
               if(this.§_-0CK§ <= 0)
               {
                  this.§_-05e§(§_-Zj§);
                  _loc3_.§_-dI§();
               }
            }
            else if(this.mSlingShotState == §_-Zj§)
            {
               if(_loc3_.§_-1l§)
               {
                  this.§_-05e§(§_-03t§);
               }
            }
            else if(this.mSlingShotState == §_-03t§)
            {
               _loc3_.setPosition(this.§_-Tn§ - _loc3_.radius * Math.cos(this.§_-AU§ / (180 / Math.PI)),this.§_-08N§ + _loc3_.radius * Math.sin(this.§_-AU§ / (180 / Math.PI)));
               if(this.§_-Js§)
               {
                  this.§_-q0§(this.§_-7P§ / this.§_-Fn§,this.§_-AU§);
               }
            }
         }
      }
      
      public function §_-IY§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§_-pR§ = null;
         if(this.§_-j9§.length > 0)
         {
            _loc5_ = this.§_-j9§[this.§_-eE§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2);
         this.§_-q0§(param3,param4);
      }
      
      protected function §_-q0§(param1:Number, param2:Number) : void
      {
         var _loc3_:§_-pR§ = null;
         this.§_-CF§ = §_-KG§;
         this.§_-NG§ = §_-RU§;
         if(this.§_-j9§.length > 0)
         {
            _loc3_ = this.§_-j9§[this.§_-eE§];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§_-Js§ = false;
         this.§_-fN§ = new Date().time;
         this.§_-6A§.§_-QL§(_loc3_,param1,param2);
         this.§_-N6§(this.§_-eE§,_loc3_.§_-PV§ > 0);
         this.playBirdShotSound();
         if(this.§_-eE§ >= this.§_-j9§.length)
         {
            this.§_-05e§(§_-yK§);
         }
         else
         {
            this.§_-05e§(§_-ex§);
         }
      }
      
      protected function playBirdShotSound() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §_-pX§.playSound("BirdShot" + _loc1_);
      }
      
      public function §_-ER§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§_-eE§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.§_-j9§.length)
         {
            if(this.mSlingShotState == §_-pu§)
            {
               this.§_-j9§[_loc4_].update(param1,true,param2);
            }
            else
            {
               this.§_-j9§[_loc4_].update(param1,false,param2);
            }
            _loc4_++;
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§_-pR§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§_-Tf§();
         if(this.§_-b§ >= this.§_-j9§.length)
         {
            return false;
         }
         _loc1_ = this.§_-j9§[this.§_-b§];
         _loc2_ = §_-09t§.§_-yf§(_loc1_.name).score;
         this.§_-6A§.addScore(_loc2_,§_-40§.§_-Rz§,true,_loc1_.x,_loc1_.y - 3,§_-Hv§.§_-04e§(_loc1_.name));
         _loc1_.§_-G5§(-1,true);
         ++this.§_-b§;
         return true;
      }
      
      public function §_-LO§() : int
      {
         var _loc2_:§_-pR§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§_-j9§)
         {
            _loc1_ += §_-09t§.§_-yf§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §_-KF§() : int
      {
         return this.§_-em§;
      }
      
      public function §_-aT§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§_-Rl§ >= 0)
         {
            this.§_-Rl§ -= param1;
            if(this.§_-Rl§ <= 0)
            {
               _loc2_ = this.§_-6A§.objects.§_-1X§(this.§_-ut§,this.§_-0En§);
               if(_loc2_ < 0)
               {
                  this.§_-0Ct§(0.1);
                  this.§_-Rl§ = 0;
               }
               else if(!this.§_-6A§.objects.§_-086§(_loc2_).§_-0Cj§)
               {
                  this.§_-Rl§ = -1;
               }
               else if(this.§_-6A§.objects.§_-086§(_loc2_).§_-01F§())
               {
                  this.§_-Rl§ = 2000;
               }
               else
               {
                  this.§_-Rl§ = 500;
               }
            }
         }
      }
      
      public function §_-0Ee§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 1000;
         do
         {
            _loc2_ = this.§_-6A§.objects.§_-1X§(this.§_-ut§,this.§_-0En§);
            if(_loc2_ != -1)
            {
               break;
            }
            this.§_-0Ct§(0.1);
         }
         while(_loc1_-- > 0);
         
         this.§_-Rl§ = -1;
      }
      
      public function §_-12§(param1:Number, param2:Number) : void
      {
         this.§_-FQ§.x = -param1;
         this.§_-FQ§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §_-03t§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §_-03t§ && this.§_-7P§ > this.§_-Fn§ * §_-0Al§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.§_-05e§(§_-03t§);
         var _loc1_:§_-pR§ = this.§_-j9§[this.§_-eE§];
         _loc1_.§_-G5§(§_-a2§.§_-GK§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§_-pR§ = this.§_-j9§[this.§_-eE§];
         _loc1_.§_-G5§(§_-a2§.§_-02X§);
      }
      
      public function shoot() : void
      {
         this.§_-Js§ = true;
      }
      
      protected function §_-N6§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§_-pR§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.§_-j9§[param1])
         {
            _loc3_ = this.§_-j9§[param1];
            this.§_-wx§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§_-FE§(this.§_-j9§[param1]);
            }
            _loc3_.dispose();
            this.§_-j9§[param1] = null;
         }
         this.§_-j9§.splice(param1,1);
      }
      
      public function §_-FE§(param1:§_-pR§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §_-00u§.§_-lY§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §_-00u§.§_-lY§) + Math.random() * -_loc8_ * 2;
            this.§_-6A§.particles.§_-0EQ§(§_-Hv§.§_-gA§,§_-Zc§.§_-MP§,§_-Hv§.§_-vg§,param1.x + _loc7_,param1.y + _loc8_,1500,"",§_-Hv§.§_-08L§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§_-6A§.particles.§_-0EQ§(§_-Hv§.§_-0AR§,§_-Zc§.§_-MP§,§_-Hv§.§_-vg§,param1.x,param1.y,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function §_-zn§(param1:§_-pR§) : void
      {
         this.§_-N6§(this.§_-j9§.indexOf(param1));
      }
      
      public function §_-Lo§() : void
      {
         var _loc2_:§_-pR§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§_-pR§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§_-j9§.length - 1)
         {
            _loc3_ = Math.sqrt((this.§_-c§ - this.§_-j9§[_loc1_].x) * (this.§_-c§ - this.§_-j9§[_loc1_].x) + (this.§_-l1§ - this.§_-j9§[_loc1_].y) * (this.§_-l1§ - this.§_-j9§[_loc1_].y));
            if((_loc4_ = Math.sqrt((this.§_-c§ - this.§_-j9§[_loc1_ + 1].x) * (this.§_-c§ - this.§_-j9§[_loc1_ + 1].x) + (this.§_-l1§ - this.§_-j9§[_loc1_ + 1].y) * (this.§_-l1§ - this.§_-j9§[_loc1_ + 1].y))) < _loc3_)
            {
               _loc5_ = this.§_-j9§[_loc1_];
               this.§_-j9§.splice(_loc1_,1);
               this.§_-j9§.splice(_loc1_ + 1,0,_loc5_);
               _loc1_ = Math.max(-1,_loc1_ - 2);
            }
            _loc1_++;
         }
         while(this.§_-wx§.numChildren > 0)
         {
            this.§_-wx§.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.§_-j9§.length)
         {
            _loc2_ = this.§_-j9§[_loc1_];
            this.§_-wx§.addChildAt(_loc2_.sprite,0);
            _loc1_++;
         }
      }
      
      public function §_-bS§(param1:Number, param2:Number) : §_-pR§
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§_-j9§.length)
         {
            if(this.§_-j9§[_loc3_])
            {
               if(this.§_-j9§[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.§_-j9§[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function §_-0Cq§(param1:Number, param2:Number) : §_-E0§
      {
         if(param1 >= this.§_-c§ - this.§_-Fn§ / 4 && param1 <= this.§_-c§ + this.§_-Fn§ / 4 && param2 >= this.§_-l1§ - this.§_-Fn§ / 4 && this.§_-l1§ <= this.§_-0En§)
         {
            return this;
         }
         return null;
      }
      
      public function §_-aF§(param1:§_-bm§) : void
      {
         var _loc3_:§_-pR§ = null;
         var _loc4_:§_-Tr§ = null;
         param1.§_-7M§ = this.§_-c§;
         param1.§_-Rc§ = this.§_-l1§;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§_-j9§.length)
         {
            _loc3_ = this.§_-j9§[_loc2_];
            (_loc4_ = new §_-Tr§()).x = _loc3_.x;
            _loc4_.y = _loc3_.y;
            _loc4_.id = _loc3_.name;
            param1.§_-0AY§(_loc4_);
            _loc2_++;
         }
      }
      
      public function §_-3z§() : void
      {
         while(this.§_-j9§.length > 0)
         {
            this.§_-zn§(this.§_-j9§[0]);
         }
      }
      
      public function §_-wL§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§_-j9§.length)
         {
            if(this.§_-j9§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§_-j9§[_loc4_]);
            }
            _loc4_++;
         }
         if(this.§_-c§ > param1.x && this.§_-c§ < param2.x && this.§_-l1§ > param1.y && this.§_-l1§ < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §_-ly§() : Array
      {
         return [this.§_-0Bj§,this.§_-hP§];
      }
      
      public function §_-wC§(param1:String, param2:Number, param3:Number) : §_-pR§
      {
         var _loc4_:§_-pR§ = this.§_-01V§(param1,param2,param3);
         this.§_-Lo§();
         return _loc4_;
      }
      
      public function §_-0Cp§() : Number
      {
         return this.§_-j9§.length;
      }
   }
}
