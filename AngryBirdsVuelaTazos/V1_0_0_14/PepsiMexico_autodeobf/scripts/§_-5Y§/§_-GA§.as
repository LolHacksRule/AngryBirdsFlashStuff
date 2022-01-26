package §_-5Y§
{
   import §_-6n§.§_-5z§;
   import §_-BQ§.§_-eU§;
   import §_-CW§.§_-C-§;
   import §_-CW§.§_-hK§;
   import §_-DQ§.Texture;
   import §_-Eo§.§_-R4§;
   import §_-PC§.§_-ob§;
   import §_-W7§.§_-jT§;
   import §_-WH§.§_-0§;
   import §_-WH§.§_-YE§;
   import §_-b5§.Sprite;
   import §_-b5§.§_-Xj§;
   import §_-uh§.§_-US§;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §_-GA§
   {
      
      public static const §_-72§:int = 0;
      
      public static const §_-3k§:int = 1;
      
      public static const §_-Bv§:int = 2;
      
      public static const §_-Dn§:int = 3;
      
      public static const §_-cE§:int = 5;
      
      public static const §_-OE§:int = 3151368;
      
      private static const §_-7x§:int = 8;
      
      private static const §_-Ua§:int = 0;
      
      public static const §_-Qg§:Number = 46.25;
      
      public static const §_-2T§:Number = 52.5;
      
      private static var §_-bB§:Texture;
      
      private static var §_-9K§:Texture;
      
      public static const §_-oO§:Number = 0.4;
       
      
      public var §_-Fx§:§_-yw§;
      
      public var mX:Number;
      
      public var mY:Number;
      
      public var §_-nu§:Number;
      
      private var §_-Sv§:Number;
      
      private var §_-EI§:Number;
      
      private var §_-Gg§:Number;
      
      private var §_-mz§:Number;
      
      public var §_-Vr§:Number;
      
      public var §_-6i§:Boolean = false;
      
      private var §_-IV§:Number;
      
      public var §_-zl§:Vector.<§_-UH§>;
      
      protected var §_-y4§:int;
      
      public var §_-kF§:int;
      
      public var §_-hR§:Number;
      
      public var §_-T8§:§_-b5§.Sprite;
      
      public var §_-Mv§:int = 0;
      
      public var §_-y6§:Number = 0;
      
      public var §_-f4§:Array;
      
      public var §_-Rc§:Array;
      
      public var mSlingShotState:int;
      
      public var §_-gf§:Boolean;
      
      public var mDragging:Boolean = false;
      
      private var §_-J7§:Boolean = false;
      
      public var §_-3f§:Number;
      
      private var §_-MT§:§_-b5§.Sprite;
      
      private var mRopeBack1:§_-Xj§;
      
      private var mRopeFront1:§_-Xj§;
      
      private var mRopeBack2:§_-Xj§;
      
      private var mRopeFront2:§_-Xj§;
      
      private var §_-QI§:§_-b5§.Sprite;
      
      private var §_-KN§:§_-b5§.Sprite;
      
      private var §_-z0§:§_-b5§.Sprite;
      
      private var §_-6H§:§_-Xj§;
      
      private var §_-vQ§:§_-Xj§;
      
      public function §_-GA§(param1:§_-yw§, param2:§_-US§, param3:§_-b5§.Sprite)
      {
         var _loc4_:§_-eU§ = null;
         this.§_-zl§ = new Vector.<§_-UH§>();
         super();
         this.§_-Fx§ = param1;
         this.§_-MT§ = param3;
         if(param2)
         {
            this.setPosition(param2.§_-yG§,param2.§_-Wq§);
            this.§_-by§();
            for each(_loc4_ in param2.§_-zl§)
            {
               this.§_-vs§(_loc4_.id,_loc4_.x,_loc4_.y);
            }
            this.§_-y4§ = 0;
            if(this.§_-zl§.length <= 0)
            {
               §_-R4§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.mX + " " + this.mY);
               this.§_-I8§(§_-Dn§);
            }
            else
            {
               this.§_-I8§(§_-72§);
            }
         }
         else
         {
            §_-R4§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.§_-I8§(§_-Dn§);
         }
         this.§_-gf§ = true;
         this.§_-3f§ = 0;
         this.§_-YQ§();
         this.update(0,true);
      }
      
      public function get sprite() : §_-b5§.Sprite
      {
         return this.§_-MT§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§_-y4§ < this.§_-zl§.length;
      }
      
      public function dispose() : void
      {
         while(this.§_-zl§.length > 0)
         {
            this.§_-oE§(0);
         }
         this.§_-zl§ = null;
         if(this.§_-MT§)
         {
            this.§_-MT§.dispose();
            this.§_-MT§ = null;
         }
         this.§_-T8§ = null;
         this.§_-f4§ = null;
         this.§_-Rc§ = null;
      }
      
      public function §_-zM§(param1:String, param2:Number, param3:Number, param4:int = -1) : §_-UH§
      {
         var _loc5_:§_-UH§;
         (_loc5_ = this.§_-vs§(param1,param2,param3,param4)).§_-fh§();
         return _loc5_;
      }
      
      protected function §_-vs§(param1:String, param2:Number, param3:Number, param4:int = -1) : §_-UH§
      {
         var _loc5_:§_-UH§ = new §_-UH§(this,new §_-b5§.Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            this.§_-zl§.push(_loc5_);
         }
         else
         {
            this.§_-zl§.splice(param4,0,_loc5_);
         }
         this.§_-T8§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      protected function §_-I8§(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §_-72§)
         {
            this.§_-yO§();
            this.§_-hR§ = 1000;
         }
         else if(this.mSlingShotState == §_-3k§)
         {
            this.§_-yO§();
            this.§_-hR§ = 0;
         }
         else if(this.mSlingShotState == §_-Bv§)
         {
            this.§_-hR§ = 10000;
            this.§_-J7§ = false;
            this.§_-yO§();
         }
         else if(this.mSlingShotState == §_-Dn§)
         {
            this.§_-yO§();
            this.§_-hR§ = 2000;
         }
         else if(this.mSlingShotState == §_-cE§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§_-J7§ = false;
               this.§_-yO§();
               this.§_-zl§[this.§_-y4§].setPosition(this.§_-Gg§ - this.§_-zl§[this.§_-y4§].radius * Math.cos(this.§_-y6§ / (180 / Math.PI)),this.§_-mz§ + this.§_-zl§[this.§_-y4§].radius * Math.sin(this.§_-y6§ / (180 / Math.PI)));
            }
            else
            {
               this.§_-yO§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §_-qI§() : §_-yw§
      {
         return this.§_-Fx§;
      }
      
      public function §_-7b§() : Boolean
      {
         return this.mSlingShotState == §_-Dn§ && this.§_-hR§ <= 0;
      }
      
      private function §_-by§() : void
      {
         var _loc1_:§_-ob§ = this.§_-Fx§.§_-9l§.§_-CT§("SLINGSHOT");
         var _loc2_:Texture = _loc1_.getFrame(0).texture;
         var _loc3_:Texture = _loc1_.getFrame(1).texture;
         this.§_-6H§ = new §_-Xj§(_loc2_);
         this.§_-vQ§ = new §_-Xj§(_loc3_);
         this.§_-uz§();
         this.§_-fo§();
         this.§_-T8§ = new §_-b5§.Sprite();
         this.§_-MT§.addChild(this.§_-6H§);
         this.§_-MT§.addChild(this.§_-QI§);
         this.§_-MT§.addChild(this.§_-T8§);
         this.§_-MT§.addChild(this.§_-z0§);
         this.§_-MT§.addChild(this.§_-KN§);
         this.§_-MT§.addChild(this.§_-vQ§);
         this.§_-nu§ = this.mY + 8.5;
      }
      
      public function §_-uz§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§_-Sv§ = this.mX;
         this.§_-EI§ = this.mY;
         this.§_-IV§ = 5;
         _loc1_ = null;
      }
      
      private function §_-fo§() : void
      {
         var _loc2_:flash.display.Sprite = null;
         var _loc3_:BitmapData = null;
         if(!§_-bB§)
         {
            §_-bB§ = this.§_-Fx§.§_-Ly§.§_-a§(new BitmapData(2,2,false,§_-OE§));
         }
         if(!§_-9K§)
         {
            _loc2_ = new §_-jT§.§_-kv§("MovieClip_SlingHolder")();
            _loc3_ = new BitmapData(_loc2_.width,_loc2_.height,true,0);
            _loc3_.draw(_loc2_);
            §_-9K§ = this.§_-Fx§.§_-Ly§.§_-a§(_loc3_);
         }
         this.§_-z0§ = new §_-b5§.Sprite();
         var _loc1_:§_-Xj§ = new §_-Xj§(§_-9K§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         this.§_-z0§.addChild(_loc1_);
         this.§_-QI§ = new §_-b5§.Sprite();
         this.mRopeBack1 = new §_-Xj§(§_-bB§);
         this.mRopeBack2 = new §_-Xj§(§_-bB§);
         this.§_-QI§.addChild(this.mRopeBack1);
         this.§_-QI§.addChild(this.mRopeBack2);
         this.§_-KN§ = new §_-b5§.Sprite();
         this.mRopeFront1 = new §_-Xj§(§_-bB§);
         this.mRopeFront2 = new §_-Xj§(§_-bB§);
         this.§_-KN§.addChild(this.mRopeFront1);
         this.§_-KN§.addChild(this.mRopeFront2);
      }
      
      public function §_-7L§(param1:Number) : void
      {
         var _loc2_:Number = this.§_-mz§ / §_-yw§.§_-rO§;
         var _loc3_:Number = this.§_-Gg§ / §_-yw§.§_-rO§;
         var _loc4_:Number = 3.5 + 8 * ((this.§_-IV§ - this.§_-Vr§) / this.§_-IV§);
         this.§_-z0§.x = _loc3_;
         this.§_-z0§.y = _loc2_;
         this.§_-z0§.rotation = -this.§_-y6§ / (180 / Math.PI);
         this.§_-6H§.x = this.mX / §_-yw§.§_-rO§ - 3;
         this.§_-6H§.y = this.mY / §_-yw§.§_-rO§ - 30;
         this.§_-vQ§.x = this.mX / §_-yw§.§_-rO§ - 30;
         this.§_-vQ§.y = this.mY / §_-yw§.§_-rO§ - 30;
         this.§_-KN§.x = this.mX / §_-yw§.§_-rO§ - 17;
         this.§_-KN§.y = this.mY / §_-yw§.§_-rO§ + 5;
         this.§_-KN§.rotation = Math.atan2(_loc2_ - this.§_-KN§.y,_loc3_ - this.§_-KN§.x);
         this.§_-QI§.x = this.mX / §_-yw§.§_-rO§ + 22;
         this.§_-QI§.y = this.mY / §_-yw§.§_-rO§;
         this.§_-QI§.rotation = Math.atan2(_loc2_ - this.§_-QI§.y,_loc3_ - this.§_-QI§.x);
         this.mRopeFront1.width = Math.sqrt(Math.pow(_loc3_ - this.§_-KN§.x,2) + Math.pow(_loc2_ - this.§_-KN§.y,2));
         this.mRopeBack1.width = Math.sqrt(Math.pow(_loc3_ - this.§_-QI§.x,2) + Math.pow(_loc2_ - this.§_-QI§.y,2));
         this.mRopeFront2.width = this.mRopeFront1.width;
         this.mRopeBack2.width = this.mRopeBack1.width;
         this.mRopeFront1.height = this.mRopeBack1.height = _loc4_;
         this.mRopeFront2.height = this.mRopeBack2.height = -_loc4_;
         this.§_-gf§ = false;
      }
      
      public function §_-wD§() : void
      {
         while(this.§_-zl§.length > 0)
         {
            this.§_-oE§(0,true);
         }
         this.§_-vs§("BIRD_SARDINE",this.mX,this.mY);
         this.§_-I8§(§_-Bv§);
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.§_-I8§(§_-cE§);
      }
      
      public function §_-yO§() : void
      {
         this.setNewCoordinatesForRubber(this.§_-Sv§,this.§_-EI§ + this.§_-IV§ / 8);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§_-Gg§ == param1 && this.§_-mz§ == param2)
         {
            return true;
         }
         this.§_-Vr§ = Math.sqrt((param2 - this.§_-EI§) * (param2 - this.§_-EI§) + (param1 - this.§_-Sv§) * (param1 - this.§_-Sv§));
         if(this.§_-Vr§ > this.§_-IV§)
         {
            if(param3)
            {
               this.§_-Vr§ = Math.sqrt((this.§_-mz§ - this.§_-EI§) * (this.§_-mz§ - this.§_-EI§) + (this.§_-Gg§ - this.§_-Sv§) * (this.§_-Gg§ - this.§_-Sv§));
               return false;
            }
            param1 = this.§_-Sv§ + this.§_-IV§ * (param1 - this.§_-Sv§) / this.§_-Vr§;
            param2 = this.§_-EI§ + this.§_-IV§ * (param2 - this.§_-EI§) / this.§_-Vr§;
            this.§_-Vr§ = this.§_-IV§;
         }
         this.§_-Gg§ = param1;
         this.§_-mz§ = param2;
         this.§_-y6§ = Math.atan2(-(this.§_-mz§ - this.§_-EI§),this.§_-Gg§ - this.§_-Sv§);
         this.§_-y6§ *= 180 / Math.PI;
         if(this.mDragging == false)
         {
            this.§_-Gg§ = param1 - 0.7;
            this.§_-mz§ = param2;
            this.§_-y6§ = -160;
         }
         _loc4_ = 12;
         _loc5_ = 5;
         _loc6_ = 4;
         _loc7_ = this.§_-IV§ / 2;
         if(this.§_-Vr§ > _loc7_ && this.§_-y6§ > -90 - _loc4_ + _loc5_ && this.§_-y6§ < -90 + _loc4_ + _loc5_)
         {
            param1 = this.§_-Sv§ + _loc7_ * (param1 - this.§_-Sv§) / this.§_-Vr§;
            param2 = this.§_-EI§ + _loc7_ * (param2 - this.§_-EI§) / this.§_-Vr§;
            this.§_-Vr§ = _loc7_;
            this.§_-Gg§ = param1;
            this.§_-mz§ = param2;
         }
         else if(this.§_-Vr§ > _loc7_ && this.§_-y6§ > -90 - _loc4_ - _loc6_ + _loc5_ && this.§_-y6§ < -90 + _loc4_ + _loc6_ + _loc5_)
         {
            _loc8_ = _loc7_ + (this.§_-IV§ - _loc7_) * (Math.abs(this.§_-y6§ - -90 - _loc5_) - _loc4_) / _loc6_;
            param1 = this.§_-Sv§ + _loc8_ * (param1 - this.§_-Sv§) / this.§_-Vr§;
            param2 = this.§_-EI§ + _loc8_ * (param2 - this.§_-EI§) / this.§_-Vr§;
            this.§_-Vr§ = _loc8_;
            this.§_-Gg§ = param1;
            this.§_-mz§ = param2;
         }
         if(this.§_-Vr§ <= this.§_-IV§ * 0.45)
         {
            this.§_-6i§ = true;
         }
         else if(this.§_-6i§ && this.§_-Vr§ >= this.§_-IV§ * 0.8)
         {
            §_-5z§.§_-rp§("SlingshotStreched");
            this.§_-6i§ = false;
         }
         this.§_-gf§ = true;
         return true;
      }
      
      public function §_-gq§(param1:Number) : void
      {
         this.setPosition(this.mX,this.mY + param1);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Number = param1 - this.mX;
         this.mX = param1;
         var _loc5_:Number = param2 - this.mY;
         this.mY = param2;
         this.§_-nu§ += _loc5_;
         this.§_-EI§ += _loc5_;
         this.§_-mz§ += _loc5_;
         this.§_-Sv§ += _loc4_;
         this.§_-Gg§ += _loc4_;
         if(param3)
         {
            this.§_-7L§(0);
         }
         this.§_-gf§ = true;
      }
      
      public function §_-Qv§(param1:Number) : §_-UH§
      {
         var _loc2_:§_-UH§ = null;
         _loc2_ = this.§_-zl§[this.§_-y4§];
         if(_loc2_.§_-OD§ < 1)
         {
            _loc2_.§_-OD§ = 1;
         }
         _loc2_.scale *= 1.1;
         _loc2_.scale *= 1.1;
         _loc2_.sprite.scaleX = _loc2_.scale;
         _loc2_.sprite.scaleY = _loc2_.scale;
         return _loc2_;
      }
      
      public function §_-Y1§(param1:Number) : §_-UH§
      {
         var _loc2_:§_-UH§ = null;
         _loc2_ = this.§_-zl§[this.§_-y4§];
         if(_loc2_.§_-Tk§ == 0)
         {
            _loc2_.§_-Tk§ = 55;
         }
         _loc2_.§_-Tk§ += param1;
         if(_loc2_.§_-Tk§ > 120)
         {
            _loc2_.§_-Tk§ = 55;
         }
         return _loc2_;
      }
      
      public function §_-s1§() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§_-UH§ = null;
         _loc2_ = this.§_-zl§[this.§_-y4§];
         var _loc3_:Number = this.§_-Vr§ / this.§_-IV§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§_-GA§.§_-2T§) : Number(§_-GA§.§_-Qg§);
            if(_loc2_ != null && _loc2_.§_-Tk§ > 0)
            {
               return _loc2_.§_-Tk§ * _loc3_;
            }
         }
         return _loc1_ * _loc3_;
      }
      
      public function §_-qv§() : Point
      {
         var _loc1_:§_-UH§ = null;
         if(this.§_-zl§.length > this.§_-y4§)
         {
            _loc1_ = this.§_-zl§[this.§_-y4§];
            return new Point(_loc1_.mX,_loc1_.mY);
         }
         return null;
      }
      
      public function §_-4d§() : Point
      {
         return new Point(this.§_-Sv§,this.§_-EI§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§_-UH§ = null;
         this.§_-Ft§(param1);
         if(this.§_-gf§)
         {
            this.§_-7L§(param1);
         }
         this.§_-hR§ -= param1;
         if(this.§_-hR§ < 0)
         {
            this.§_-hR§ = 0;
         }
         if(this.mSlingShotState != §_-Dn§)
         {
            this.§_-Zm§(param1,param2);
            _loc3_ = null;
            if(this.§_-zl§.length > 0)
            {
               _loc3_ = this.§_-zl§[this.§_-y4§];
            }
            if(_loc3_)
            {
               _loc3_.§_-kb§(param1);
            }
            if(!_loc3_)
            {
               this.§_-I8§(§_-Dn§);
            }
            else if(this.mSlingShotState == §_-72§)
            {
               if(this.§_-hR§ <= 0 && !this.§_-Fx§.camera.isOnCastleView())
               {
                  this.§_-I8§(§_-3k§);
                  _loc3_.§_-jm§();
               }
            }
            else if(this.mSlingShotState == §_-3k§)
            {
               if(_loc3_.§_-PJ§)
               {
                  this.§_-I8§(§_-Bv§);
               }
            }
            else if(this.mSlingShotState == §_-Bv§)
            {
               _loc3_.setPosition(this.§_-Gg§ - _loc3_.radius * Math.cos(this.§_-y6§ / (180 / Math.PI)),this.§_-mz§ + _loc3_.radius * Math.sin(this.§_-y6§ / (180 / Math.PI)));
               if(this.§_-J7§)
               {
                  this.§_-O8§(this.§_-Vr§ / this.§_-IV§,this.§_-y6§);
               }
            }
         }
      }
      
      public function §_-Ab§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§_-UH§ = null;
         if(this.§_-zl§.length > 0)
         {
            _loc5_ = this.§_-zl§[this.§_-y4§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2);
         this.§_-O8§(param3,param4);
      }
      
      private function §_-O8§(param1:Number, param2:Number) : void
      {
         var _loc3_:§_-UH§ = null;
         if(this.§_-zl§.length > 0)
         {
            _loc3_ = this.§_-zl§[this.§_-y4§];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§_-J7§ = false;
         this.§_-Fx§.§_-Mq§(_loc3_,param1,param2);
         this.§_-oE§(this.§_-y4§);
         var _loc4_:int = int(Math.random() * 3) + 1;
         §_-5z§.§_-rp§("BirdShot" + _loc4_);
         if(this.§_-y4§ >= this.§_-zl§.length)
         {
            this.§_-I8§(§_-Dn§);
         }
         else
         {
            this.§_-I8§(§_-72§);
         }
      }
      
      public function §_-Zm§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§_-y4§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.§_-zl§.length)
         {
            if(this.mSlingShotState == §_-cE§)
            {
               this.§_-zl§[_loc4_].update(param1,true,param2);
            }
            else
            {
               this.§_-zl§[_loc4_].update(param1,false,param2);
            }
            _loc4_++;
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§_-UH§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§_-yO§();
         if(this.§_-kF§ >= this.§_-zl§.length)
         {
            return false;
         }
         _loc1_ = this.§_-zl§[this.§_-kF§];
         _loc2_ = §_-0§.§_-vN§(_loc1_.name).score;
         this.§_-Fx§.addScore(_loc2_,§_-Fy§.§_-ZC§,true,_loc1_.mX,_loc1_.mY - 3,§_-C-§.§_-PG§(_loc1_.name));
         _loc1_.§_-0U§(-1,true);
         ++this.§_-kF§;
         return true;
      }
      
      public function §_-n2§() : int
      {
         var _loc2_:§_-UH§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§_-zl§)
         {
            _loc1_ += §_-0§.§_-vN§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §_-Ft§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§_-3f§ >= 0)
         {
            this.§_-3f§ -= param1;
            if(this.§_-3f§ <= 0)
            {
               _loc2_ = this.§_-Fx§.objects.§_-Ei§(this.§_-Sv§,this.§_-nu§);
               if(_loc2_ < 0)
               {
                  this.§_-gq§(0.1);
                  this.§_-3f§ = 0;
               }
               else if(!this.§_-Fx§.objects.getObject(_loc2_).§_-rQ§)
               {
                  this.§_-3f§ = -1;
               }
               else if(this.§_-Fx§.objects.getObject(_loc2_).§_-bf§())
               {
                  this.§_-3f§ = 2000;
               }
               else
               {
                  this.§_-3f§ = 500;
               }
            }
         }
      }
      
      public function §_-rm§(param1:Number, param2:Number) : void
      {
         this.§_-MT§.x = -param1;
         this.§_-MT§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §_-Bv§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §_-Bv§ && this.§_-Vr§ > this.§_-IV§ * §_-oO§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.§_-I8§(§_-Bv§);
         var _loc1_:§_-UH§ = this.§_-zl§[this.§_-y4§];
         _loc1_.§_-0U§(§_-YE§.§_-WM§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§_-UH§ = this.§_-zl§[this.§_-y4§];
         _loc1_.§_-0U§(§_-YE§.§_-hz§);
      }
      
      public function shoot() : void
      {
         this.§_-J7§ = true;
      }
      
      protected function §_-oE§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§_-UH§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.§_-zl§[param1])
         {
            _loc3_ = this.§_-zl§[param1];
            this.§_-T8§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§_-8v§(this.§_-zl§[param1]);
            }
            _loc3_.dispose();
            this.§_-zl§[param1] = null;
         }
         this.§_-zl§.splice(param1,1);
      }
      
      public function §_-8v§(param1:§_-UH§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §_-yw§.§_-rO§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §_-yw§.§_-rO§) + Math.random() * -_loc8_ * 2;
            this.§_-Fx§.particles.§_-pB§(§_-C-§.§_-i1§,§_-hK§.§_-I1§,§_-C-§.§_-g7§,param1.mX + _loc7_,param1.mY + _loc8_,1500,"",§_-C-§.§_-5X§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§_-Fx§.particles.§_-pB§(§_-C-§.§_-T0§,§_-hK§.§_-I1§,§_-C-§.§_-g7§,param1.mX,param1.mY,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function §_-Er§(param1:§_-UH§) : void
      {
         this.§_-oE§(this.§_-zl§.indexOf(param1));
      }
      
      public function §_-YQ§() : void
      {
         var _loc2_:§_-UH§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§_-UH§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§_-zl§.length - 1)
         {
            _loc3_ = Math.sqrt((this.mX - this.§_-zl§[_loc1_].mX) * (this.mX - this.§_-zl§[_loc1_].mX) + (this.mY - this.§_-zl§[_loc1_].mY) * (this.mY - this.§_-zl§[_loc1_].mY));
            if((_loc4_ = Math.sqrt((this.mX - this.§_-zl§[_loc1_ + 1].mX) * (this.mX - this.§_-zl§[_loc1_ + 1].mX) + (this.mY - this.§_-zl§[_loc1_ + 1].mY) * (this.mY - this.§_-zl§[_loc1_ + 1].mY))) < _loc3_)
            {
               _loc5_ = this.§_-zl§[_loc1_];
               this.§_-zl§.splice(_loc1_,1);
               this.§_-zl§.splice(_loc1_ + 1,0,_loc5_);
               _loc1_ = Math.max(-1,_loc1_ - 2);
            }
            _loc1_++;
         }
         while(this.§_-T8§.numChildren > 0)
         {
            this.§_-T8§.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.§_-zl§.length)
         {
            _loc2_ = this.§_-zl§[_loc1_];
            this.§_-T8§.addChildAt(_loc2_.sprite,0);
            _loc1_++;
         }
      }
      
      public function §_-ew§(param1:Number, param2:Number) : §_-UH§
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§_-zl§.length)
         {
            if(this.§_-zl§[_loc3_])
            {
               if(this.§_-zl§[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.§_-zl§[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function §_-MG§(param1:Number, param2:Number) : §_-GA§
      {
         if(param1 >= this.mX - this.§_-IV§ / 4 && param1 <= this.mX + this.§_-IV§ / 4 && param2 >= this.mY - this.§_-IV§ / 4 && this.mY <= this.§_-nu§)
         {
            return this;
         }
         return null;
      }
      
      public function §_-oq§(param1:§_-US§) : void
      {
         var _loc3_:§_-UH§ = null;
         var _loc4_:§_-eU§ = null;
         param1.§_-yG§ = this.mX;
         param1.§_-Wq§ = this.mY;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§_-zl§.length)
         {
            _loc3_ = this.§_-zl§[_loc2_];
            (_loc4_ = new §_-eU§()).x = _loc3_.mX;
            _loc4_.y = _loc3_.mY;
            _loc4_.id = _loc3_.name;
            param1.§_-zl§.push(_loc4_);
            _loc2_++;
         }
      }
      
      public function §_-l2§() : void
      {
         while(this.§_-zl§.length > 0)
         {
            this.§_-Er§(this.§_-zl§[0]);
         }
      }
      
      public function §_-xu§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§_-zl§.length)
         {
            if(this.§_-zl§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§_-zl§[_loc4_]);
            }
            _loc4_++;
         }
         if(this.mX > param1.x && this.mX < param2.x && this.mY > param1.y && this.mY < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §_-N7§() : Array
      {
         return [this.§_-vQ§,this.§_-6H§];
      }
      
      public function §_-G9§(param1:String, param2:Number, param3:Number) : §_-UH§
      {
         var _loc4_:§_-UH§ = this.§_-vs§(param1,param2,param3);
         this.§_-YQ§();
         return _loc4_;
      }
      
      public function §_-mg§() : Number
      {
         return this.§_-zl§.length;
      }
   }
}
