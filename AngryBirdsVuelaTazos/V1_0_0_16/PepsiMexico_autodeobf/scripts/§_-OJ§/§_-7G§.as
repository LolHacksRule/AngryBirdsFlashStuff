package §_-OJ§
{
   import §_-0S§.§_-z1§;
   import §_-4g§.Texture;
   import §_-Cx§.§_-Gb§;
   import §_-Cx§.§_-UW§;
   import §_-HU§.§_-6n§;
   import §_-HU§.§_-yP§;
   import §_-IG§.§_-Jx§;
   import §_-LP§.Sprite;
   import §_-LP§.§_-19§;
   import §_-Qx§.§_-Wv§;
   import §_-Ra§.§_-RO§;
   import §_-e3§.§_-54§;
   import §_-rQ§.§_-Ou§;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §_-7G§
   {
      
      public static const §_-wd§:int = 0;
      
      public static const §_-wr§:int = 1;
      
      public static const §_-AQ§:int = 2;
      
      public static const §var §:int = 3;
      
      public static const §_-p9§:int = 5;
      
      public static const §_-2H§:int = 3151368;
      
      private static const §_-6§:int = 8;
      
      private static const §_-Wg§:int = 0;
      
      public static const §_-st§:Number = 46.25;
      
      public static const §_-LQ§:Number = 52.5;
      
      private static var §_-qE§:Texture;
      
      private static var §_-TO§:Texture;
      
      public static const §_-6w§:Number = 0.4;
       
      
      public var §_-Ag§:§_-tL§;
      
      public var mX:Number;
      
      public var mY:Number;
      
      public var §_-t7§:Number;
      
      private var §_-k§:Number;
      
      private var §_-Gq§:Number;
      
      private var §_-2O§:Number;
      
      private var §_-cx§:Number;
      
      public var §_-4d§:Number;
      
      public var §_-Bm§:Boolean = false;
      
      private var §_-RE§:Number;
      
      public var §_-zK§:Vector.<§_-1W§>;
      
      protected var §_-95§:int;
      
      public var §_-P-§:int;
      
      public var §_-Hu§:Number;
      
      public var §_-WB§:§_-LP§.Sprite;
      
      public var §_-F3§:int = 0;
      
      public var §_-Aj§:Number = 0;
      
      public var §true §:Array;
      
      public var §_-lQ§:Array;
      
      public var mSlingShotState:int;
      
      public var §_-0e§:Boolean;
      
      public var mDragging:Boolean = false;
      
      private var §_-Ha§:Boolean = false;
      
      public var §_-wi§:Number;
      
      private var §_-Cv§:§_-LP§.Sprite;
      
      private var mRopeBack1:§_-19§;
      
      private var mRopeFront1:§_-19§;
      
      private var mRopeBack2:§_-19§;
      
      private var mRopeFront2:§_-19§;
      
      private var §_-cW§:§_-LP§.Sprite;
      
      private var §_-9g§:§_-LP§.Sprite;
      
      private var §_-K1§:§_-LP§.Sprite;
      
      private var §_-DY§:§_-19§;
      
      private var §_-1D§:§_-19§;
      
      public function §_-7G§(param1:§_-tL§, param2:§_-Wv§, param3:§_-LP§.Sprite)
      {
         var _loc4_:§_-Jx§ = null;
         this.§_-zK§ = new Vector.<§_-1W§>();
         super();
         this.§_-Ag§ = param1;
         this.§_-Cv§ = param3;
         if(param2)
         {
            this.setPosition(param2.§_-OI§,param2.§_-tP§);
            this.§_-Mq§();
            for each(_loc4_ in param2.§_-zK§)
            {
               this.§_-js§(_loc4_.id,_loc4_.x,_loc4_.y);
            }
            this.§_-95§ = 0;
            if(this.§_-zK§.length <= 0)
            {
               §_-54§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.mX + " " + this.mY);
               this.§_-Ea§(§var §);
            }
            else
            {
               this.§_-Ea§(§_-wd§);
            }
         }
         else
         {
            §_-54§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.§_-Ea§(§var §);
         }
         this.§_-0e§ = true;
         this.§_-wi§ = 0;
         this.§_-gK§();
         this.update(0,true);
      }
      
      public function get sprite() : §_-LP§.Sprite
      {
         return this.§_-Cv§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§_-95§ < this.§_-zK§.length;
      }
      
      public function dispose() : void
      {
         while(this.§_-zK§.length > 0)
         {
            this.§_-9i§(0);
         }
         this.§_-zK§ = null;
         if(this.§_-Cv§)
         {
            this.§_-Cv§.dispose();
            this.§_-Cv§ = null;
         }
         this.§_-WB§ = null;
         this.§true § = null;
         this.§_-lQ§ = null;
      }
      
      public function §_-dx§(param1:String, param2:Number, param3:Number, param4:int = -1) : §_-1W§
      {
         var _loc5_:§_-1W§;
         (_loc5_ = this.§_-js§(param1,param2,param3,param4)).§_-k-§();
         return _loc5_;
      }
      
      protected function §_-js§(param1:String, param2:Number, param3:Number, param4:int = -1) : §_-1W§
      {
         var _loc5_:§_-1W§ = new §_-1W§(this,new §_-LP§.Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            this.§_-zK§.push(_loc5_);
         }
         else
         {
            this.§_-zK§.splice(param4,0,_loc5_);
         }
         this.§_-WB§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      protected function §_-Ea§(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §_-wd§)
         {
            this.§_-A1§();
            this.§_-Hu§ = 1000;
         }
         else if(this.mSlingShotState == §_-wr§)
         {
            this.§_-A1§();
            this.§_-Hu§ = 0;
         }
         else if(this.mSlingShotState == §_-AQ§)
         {
            this.§_-Hu§ = 10000;
            this.§_-Ha§ = false;
            this.§_-A1§();
         }
         else if(this.mSlingShotState == §var §)
         {
            this.§_-A1§();
            this.§_-Hu§ = 2000;
         }
         else if(this.mSlingShotState == §_-p9§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§_-Ha§ = false;
               this.§_-A1§();
               this.§_-zK§[this.§_-95§].setPosition(this.§_-2O§ - this.§_-zK§[this.§_-95§].radius * Math.cos(this.§_-Aj§ / (180 / Math.PI)),this.§_-cx§ + this.§_-zK§[this.§_-95§].radius * Math.sin(this.§_-Aj§ / (180 / Math.PI)));
            }
            else
            {
               this.§_-A1§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §_-Bd§() : §_-tL§
      {
         return this.§_-Ag§;
      }
      
      public function §_-BU§() : Boolean
      {
         return this.mSlingShotState == §var § && this.§_-Hu§ <= 0;
      }
      
      private function §_-Mq§() : void
      {
         var _loc1_:§_-RO§ = this.§_-Ag§.§_-tJ§.§_-S-§("SLINGSHOT");
         var _loc2_:Texture = _loc1_.getFrame(0).texture;
         var _loc3_:Texture = _loc1_.getFrame(1).texture;
         this.§_-DY§ = new §_-19§(_loc2_);
         this.§_-1D§ = new §_-19§(_loc3_);
         this.§_-9S§();
         this.§_-bE§();
         this.§_-WB§ = new §_-LP§.Sprite();
         this.§_-Cv§.addChild(this.§_-DY§);
         this.§_-Cv§.addChild(this.§_-cW§);
         this.§_-Cv§.addChild(this.§_-WB§);
         this.§_-Cv§.addChild(this.§_-K1§);
         this.§_-Cv§.addChild(this.§_-9g§);
         this.§_-Cv§.addChild(this.§_-1D§);
         this.§_-t7§ = this.mY + 8.5;
      }
      
      public function §_-9S§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§_-k§ = this.mX;
         this.§_-Gq§ = this.mY;
         this.§_-RE§ = 5;
         _loc1_ = null;
      }
      
      private function §_-bE§() : void
      {
         var _loc2_:flash.display.Sprite = null;
         var _loc3_:BitmapData = null;
         if(!§_-qE§)
         {
            §_-qE§ = this.§_-Ag§.§_-JG§.§_-pz§(new BitmapData(2,2,false,§_-2H§));
         }
         if(!§_-TO§)
         {
            _loc2_ = new §_-z1§.§_-tn§("MovieClip_SlingHolder")();
            _loc3_ = new BitmapData(_loc2_.width,_loc2_.height,true,0);
            _loc3_.draw(_loc2_);
            §_-TO§ = this.§_-Ag§.§_-JG§.§_-pz§(_loc3_);
         }
         this.§_-K1§ = new §_-LP§.Sprite();
         var _loc1_:§_-19§ = new §_-19§(§_-TO§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         this.§_-K1§.addChild(_loc1_);
         this.§_-cW§ = new §_-LP§.Sprite();
         this.mRopeBack1 = new §_-19§(§_-qE§);
         this.mRopeBack2 = new §_-19§(§_-qE§);
         this.§_-cW§.addChild(this.mRopeBack1);
         this.§_-cW§.addChild(this.mRopeBack2);
         this.§_-9g§ = new §_-LP§.Sprite();
         this.mRopeFront1 = new §_-19§(§_-qE§);
         this.mRopeFront2 = new §_-19§(§_-qE§);
         this.§_-9g§.addChild(this.mRopeFront1);
         this.§_-9g§.addChild(this.mRopeFront2);
      }
      
      public function §_-tH§(param1:Number) : void
      {
         var _loc2_:Number = this.§_-cx§ / §_-tL§.§_-7m§;
         var _loc3_:Number = this.§_-2O§ / §_-tL§.§_-7m§;
         var _loc4_:Number = 3.5 + 8 * ((this.§_-RE§ - this.§_-4d§) / this.§_-RE§);
         this.§_-K1§.x = _loc3_;
         this.§_-K1§.y = _loc2_;
         this.§_-K1§.rotation = -this.§_-Aj§ / (180 / Math.PI);
         this.§_-DY§.x = this.mX / §_-tL§.§_-7m§ - 3;
         this.§_-DY§.y = this.mY / §_-tL§.§_-7m§ - 30;
         this.§_-1D§.x = this.mX / §_-tL§.§_-7m§ - 30;
         this.§_-1D§.y = this.mY / §_-tL§.§_-7m§ - 30;
         this.§_-9g§.x = this.mX / §_-tL§.§_-7m§ - 17;
         this.§_-9g§.y = this.mY / §_-tL§.§_-7m§ + 5;
         this.§_-9g§.rotation = Math.atan2(_loc2_ - this.§_-9g§.y,_loc3_ - this.§_-9g§.x);
         this.§_-cW§.x = this.mX / §_-tL§.§_-7m§ + 22;
         this.§_-cW§.y = this.mY / §_-tL§.§_-7m§;
         this.§_-cW§.rotation = Math.atan2(_loc2_ - this.§_-cW§.y,_loc3_ - this.§_-cW§.x);
         this.mRopeFront1.width = Math.sqrt(Math.pow(_loc3_ - this.§_-9g§.x,2) + Math.pow(_loc2_ - this.§_-9g§.y,2));
         this.mRopeBack1.width = Math.sqrt(Math.pow(_loc3_ - this.§_-cW§.x,2) + Math.pow(_loc2_ - this.§_-cW§.y,2));
         this.mRopeFront2.width = this.mRopeFront1.width;
         this.mRopeBack2.width = this.mRopeBack1.width;
         this.mRopeFront1.height = this.mRopeBack1.height = _loc4_;
         this.mRopeFront2.height = this.mRopeBack2.height = -_loc4_;
         this.§_-0e§ = false;
      }
      
      public function §_-mN§() : void
      {
         while(this.§_-zK§.length > 0)
         {
            this.§_-9i§(0,true);
         }
         this.§_-js§("BIRD_SARDINE",this.mX,this.mY);
         this.§_-Ea§(§_-AQ§);
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.§_-Ea§(§_-p9§);
      }
      
      public function §_-A1§() : void
      {
         this.setNewCoordinatesForRubber(this.§_-k§,this.§_-Gq§ + this.§_-RE§ / 8);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§_-2O§ == param1 && this.§_-cx§ == param2)
         {
            return true;
         }
         this.§_-4d§ = Math.sqrt((param2 - this.§_-Gq§) * (param2 - this.§_-Gq§) + (param1 - this.§_-k§) * (param1 - this.§_-k§));
         if(this.§_-4d§ > this.§_-RE§)
         {
            if(param3)
            {
               this.§_-4d§ = Math.sqrt((this.§_-cx§ - this.§_-Gq§) * (this.§_-cx§ - this.§_-Gq§) + (this.§_-2O§ - this.§_-k§) * (this.§_-2O§ - this.§_-k§));
               return false;
            }
            param1 = this.§_-k§ + this.§_-RE§ * (param1 - this.§_-k§) / this.§_-4d§;
            param2 = this.§_-Gq§ + this.§_-RE§ * (param2 - this.§_-Gq§) / this.§_-4d§;
            this.§_-4d§ = this.§_-RE§;
         }
         this.§_-2O§ = param1;
         this.§_-cx§ = param2;
         this.§_-Aj§ = Math.atan2(-(this.§_-cx§ - this.§_-Gq§),this.§_-2O§ - this.§_-k§);
         this.§_-Aj§ *= 180 / Math.PI;
         if(this.mDragging == false)
         {
            this.§_-2O§ = param1 - 0.7;
            this.§_-cx§ = param2;
            this.§_-Aj§ = -160;
         }
         _loc4_ = 12;
         _loc5_ = 5;
         _loc6_ = 4;
         _loc7_ = this.§_-RE§ / 2;
         if(this.§_-4d§ > _loc7_ && this.§_-Aj§ > -90 - _loc4_ + _loc5_ && this.§_-Aj§ < -90 + _loc4_ + _loc5_)
         {
            param1 = this.§_-k§ + _loc7_ * (param1 - this.§_-k§) / this.§_-4d§;
            param2 = this.§_-Gq§ + _loc7_ * (param2 - this.§_-Gq§) / this.§_-4d§;
            this.§_-4d§ = _loc7_;
            this.§_-2O§ = param1;
            this.§_-cx§ = param2;
         }
         else if(this.§_-4d§ > _loc7_ && this.§_-Aj§ > -90 - _loc4_ - _loc6_ + _loc5_ && this.§_-Aj§ < -90 + _loc4_ + _loc6_ + _loc5_)
         {
            _loc8_ = _loc7_ + (this.§_-RE§ - _loc7_) * (Math.abs(this.§_-Aj§ - -90 - _loc5_) - _loc4_) / _loc6_;
            param1 = this.§_-k§ + _loc8_ * (param1 - this.§_-k§) / this.§_-4d§;
            param2 = this.§_-Gq§ + _loc8_ * (param2 - this.§_-Gq§) / this.§_-4d§;
            this.§_-4d§ = _loc8_;
            this.§_-2O§ = param1;
            this.§_-cx§ = param2;
         }
         if(this.§_-4d§ <= this.§_-RE§ * 0.45)
         {
            this.§_-Bm§ = true;
         }
         else if(this.§_-Bm§ && this.§_-4d§ >= this.§_-RE§ * 0.8)
         {
            §_-Ou§.playSound("SlingshotStreched");
            this.§_-Bm§ = false;
         }
         this.§_-0e§ = true;
         return true;
      }
      
      public function §_-8W§(param1:Number) : void
      {
         this.setPosition(this.mX,this.mY + param1);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Number = param1 - this.mX;
         this.mX = param1;
         var _loc5_:Number = param2 - this.mY;
         this.mY = param2;
         this.§_-t7§ += _loc5_;
         this.§_-Gq§ += _loc5_;
         this.§_-cx§ += _loc5_;
         this.§_-k§ += _loc4_;
         this.§_-2O§ += _loc4_;
         if(param3)
         {
            this.§_-tH§(0);
         }
         this.§_-0e§ = true;
      }
      
      public function §_-aS§(param1:Number) : §_-1W§
      {
         var _loc2_:§_-1W§ = null;
         _loc2_ = this.§_-zK§[this.§_-95§];
         if(_loc2_.§_-rj§ < 1)
         {
            _loc2_.§_-rj§ = 1;
         }
         _loc2_.scale *= 1.1;
         _loc2_.scale *= 1.1;
         _loc2_.sprite.scaleX = _loc2_.scale;
         _loc2_.sprite.scaleY = _loc2_.scale;
         return _loc2_;
      }
      
      public function §_-He§(param1:Number) : §_-1W§
      {
         var _loc2_:§_-1W§ = null;
         _loc2_ = this.§_-zK§[this.§_-95§];
         if(_loc2_.§_-Rq§ == 0)
         {
            _loc2_.§_-Rq§ = 55;
         }
         _loc2_.§_-Rq§ += param1;
         if(_loc2_.§_-Rq§ > 120)
         {
            _loc2_.§_-Rq§ = 55;
         }
         return _loc2_;
      }
      
      public function §_-5X§() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§_-1W§ = null;
         _loc2_ = this.§_-zK§[this.§_-95§];
         var _loc3_:Number = this.§_-4d§ / this.§_-RE§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§_-7G§.§_-LQ§) : Number(§_-7G§.§_-st§);
            if(_loc2_ != null && _loc2_.§_-Rq§ > 0)
            {
               return _loc2_.§_-Rq§ * _loc3_;
            }
         }
         return _loc1_ * _loc3_;
      }
      
      public function §_-rO§() : Point
      {
         var _loc1_:§_-1W§ = null;
         if(this.§_-zK§.length > this.§_-95§)
         {
            _loc1_ = this.§_-zK§[this.§_-95§];
            return new Point(_loc1_.mX,_loc1_.mY);
         }
         return null;
      }
      
      public function §_-qF§() : Point
      {
         return new Point(this.§_-k§,this.§_-Gq§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§_-1W§ = null;
         this.§_-v-§(param1);
         if(this.§_-0e§)
         {
            this.§_-tH§(param1);
         }
         this.§_-Hu§ -= param1;
         if(this.§_-Hu§ < 0)
         {
            this.§_-Hu§ = 0;
         }
         if(this.mSlingShotState != §var §)
         {
            this.§_-nH§(param1,param2);
            _loc3_ = null;
            if(this.§_-zK§.length > 0)
            {
               _loc3_ = this.§_-zK§[this.§_-95§];
            }
            if(_loc3_)
            {
               _loc3_.§_-3-§(param1);
            }
            if(!_loc3_)
            {
               this.§_-Ea§(§var §);
            }
            else if(this.mSlingShotState == §_-wd§)
            {
               if(this.§_-Hu§ <= 0 && !this.§_-Ag§.camera.isOnCastleView())
               {
                  this.§_-Ea§(§_-wr§);
                  _loc3_.§_-18§();
               }
            }
            else if(this.mSlingShotState == §_-wr§)
            {
               if(_loc3_.§_-A4§)
               {
                  this.§_-Ea§(§_-AQ§);
               }
            }
            else if(this.mSlingShotState == §_-AQ§)
            {
               _loc3_.setPosition(this.§_-2O§ - _loc3_.radius * Math.cos(this.§_-Aj§ / (180 / Math.PI)),this.§_-cx§ + _loc3_.radius * Math.sin(this.§_-Aj§ / (180 / Math.PI)));
               if(this.§_-Ha§)
               {
                  this.§_-oM§(this.§_-4d§ / this.§_-RE§,this.§_-Aj§);
               }
            }
         }
      }
      
      public function §_-0-§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§_-1W§ = null;
         if(this.§_-zK§.length > 0)
         {
            _loc5_ = this.§_-zK§[this.§_-95§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2);
         this.§_-oM§(param3,param4);
      }
      
      private function §_-oM§(param1:Number, param2:Number) : void
      {
         var _loc3_:§_-1W§ = null;
         if(this.§_-zK§.length > 0)
         {
            _loc3_ = this.§_-zK§[this.§_-95§];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§_-Ha§ = false;
         this.§_-Ag§.§_-cQ§(_loc3_,param1,param2);
         this.§_-9i§(this.§_-95§);
         var _loc4_:int = int(Math.random() * 3) + 1;
         §_-Ou§.playSound("BirdShot" + _loc4_);
         if(this.§_-95§ >= this.§_-zK§.length)
         {
            this.§_-Ea§(§var §);
         }
         else
         {
            this.§_-Ea§(§_-wd§);
         }
      }
      
      public function §_-nH§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§_-95§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.§_-zK§.length)
         {
            if(this.mSlingShotState == §_-p9§)
            {
               this.§_-zK§[_loc4_].update(param1,true,param2);
            }
            else
            {
               this.§_-zK§[_loc4_].update(param1,false,param2);
            }
            _loc4_++;
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§_-1W§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§_-A1§();
         if(this.§_-P-§ >= this.§_-zK§.length)
         {
            return false;
         }
         _loc1_ = this.§_-zK§[this.§_-P-§];
         _loc2_ = §_-yP§.§_-nU§(_loc1_.name).score;
         this.§_-Ag§.addScore(_loc2_,§_-vI§.§_-Tc§,true,_loc1_.mX,_loc1_.mY - 3,§_-UW§.§_-yw§(_loc1_.name));
         _loc1_.§finally§(-1,true);
         ++this.§_-P-§;
         return true;
      }
      
      public function §_-59§() : int
      {
         var _loc2_:§_-1W§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§_-zK§)
         {
            _loc1_ += §_-yP§.§_-nU§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §_-v-§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§_-wi§ >= 0)
         {
            this.§_-wi§ -= param1;
            if(this.§_-wi§ <= 0)
            {
               _loc2_ = this.§_-Ag§.objects.§_-rH§(this.§_-k§,this.§_-t7§);
               if(_loc2_ < 0)
               {
                  this.§_-8W§(0.1);
                  this.§_-wi§ = 0;
               }
               else if(!this.§_-Ag§.objects.getObject(_loc2_).§_-Fi§)
               {
                  this.§_-wi§ = -1;
               }
               else if(this.§_-Ag§.objects.getObject(_loc2_).§_-AA§())
               {
                  this.§_-wi§ = 2000;
               }
               else
               {
                  this.§_-wi§ = 500;
               }
            }
         }
      }
      
      public function §_-lt§(param1:Number, param2:Number) : void
      {
         this.§_-Cv§.x = -param1;
         this.§_-Cv§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §_-AQ§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §_-AQ§ && this.§_-4d§ > this.§_-RE§ * §_-6w§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.§_-Ea§(§_-AQ§);
         var _loc1_:§_-1W§ = this.§_-zK§[this.§_-95§];
         _loc1_.§finally§(§_-6n§.§_-8q§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§_-1W§ = this.§_-zK§[this.§_-95§];
         _loc1_.§finally§(§_-6n§.§_-CJ§);
      }
      
      public function shoot() : void
      {
         this.§_-Ha§ = true;
      }
      
      protected function §_-9i§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§_-1W§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.§_-zK§[param1])
         {
            _loc3_ = this.§_-zK§[param1];
            this.§_-WB§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§_-hw§(this.§_-zK§[param1]);
            }
            _loc3_.dispose();
            this.§_-zK§[param1] = null;
         }
         this.§_-zK§.splice(param1,1);
      }
      
      public function §_-hw§(param1:§_-1W§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §_-tL§.§_-7m§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §_-tL§.§_-7m§) + Math.random() * -_loc8_ * 2;
            this.§_-Ag§.particles.§_-JY§(§_-UW§.§_-Lw§,§_-Gb§.§_-oO§,§_-UW§.§_-s4§,param1.mX + _loc7_,param1.mY + _loc8_,1500,"",§_-UW§.§_-G9§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§_-Ag§.particles.§_-JY§(§_-UW§.§_-Mx§,§_-Gb§.§_-oO§,§_-UW§.§_-s4§,param1.mX,param1.mY,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function §_-Nc§(param1:§_-1W§) : void
      {
         this.§_-9i§(this.§_-zK§.indexOf(param1));
      }
      
      public function §_-gK§() : void
      {
         var _loc2_:§_-1W§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§_-1W§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§_-zK§.length - 1)
         {
            _loc3_ = Math.sqrt((this.mX - this.§_-zK§[_loc1_].mX) * (this.mX - this.§_-zK§[_loc1_].mX) + (this.mY - this.§_-zK§[_loc1_].mY) * (this.mY - this.§_-zK§[_loc1_].mY));
            if((_loc4_ = Math.sqrt((this.mX - this.§_-zK§[_loc1_ + 1].mX) * (this.mX - this.§_-zK§[_loc1_ + 1].mX) + (this.mY - this.§_-zK§[_loc1_ + 1].mY) * (this.mY - this.§_-zK§[_loc1_ + 1].mY))) < _loc3_)
            {
               _loc5_ = this.§_-zK§[_loc1_];
               this.§_-zK§.splice(_loc1_,1);
               this.§_-zK§.splice(_loc1_ + 1,0,_loc5_);
               _loc1_ = Math.max(-1,_loc1_ - 2);
            }
            _loc1_++;
         }
         while(this.§_-WB§.numChildren > 0)
         {
            this.§_-WB§.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.§_-zK§.length)
         {
            _loc2_ = this.§_-zK§[_loc1_];
            this.§_-WB§.addChildAt(_loc2_.sprite,0);
            _loc1_++;
         }
      }
      
      public function §_-4G§(param1:Number, param2:Number) : §_-1W§
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§_-zK§.length)
         {
            if(this.§_-zK§[_loc3_])
            {
               if(this.§_-zK§[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.§_-zK§[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function §_-Ah§(param1:Number, param2:Number) : §_-7G§
      {
         if(param1 >= this.mX - this.§_-RE§ / 4 && param1 <= this.mX + this.§_-RE§ / 4 && param2 >= this.mY - this.§_-RE§ / 4 && this.mY <= this.§_-t7§)
         {
            return this;
         }
         return null;
      }
      
      public function §try §(param1:§_-Wv§) : void
      {
         var _loc3_:§_-1W§ = null;
         var _loc4_:§_-Jx§ = null;
         param1.§_-OI§ = this.mX;
         param1.§_-tP§ = this.mY;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§_-zK§.length)
         {
            _loc3_ = this.§_-zK§[_loc2_];
            (_loc4_ = new §_-Jx§()).x = _loc3_.mX;
            _loc4_.y = _loc3_.mY;
            _loc4_.id = _loc3_.name;
            param1.§_-zK§.push(_loc4_);
            _loc2_++;
         }
      }
      
      public function §_-I-§() : void
      {
         while(this.§_-zK§.length > 0)
         {
            this.§_-Nc§(this.§_-zK§[0]);
         }
      }
      
      public function §_-Ys§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§_-zK§.length)
         {
            if(this.§_-zK§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§_-zK§[_loc4_]);
            }
            _loc4_++;
         }
         if(this.mX > param1.x && this.mX < param2.x && this.mY > param1.y && this.mY < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §_-fi§() : Array
      {
         return [this.§_-1D§,this.§_-DY§];
      }
      
      public function §_-J6§(param1:String, param2:Number, param3:Number) : §_-1W§
      {
         var _loc4_:§_-1W§ = this.§_-js§(param1,param2,param3);
         this.§_-gK§();
         return _loc4_;
      }
      
      public function §_-JW§() : Number
      {
         return this.§_-zK§.length;
      }
   }
}
