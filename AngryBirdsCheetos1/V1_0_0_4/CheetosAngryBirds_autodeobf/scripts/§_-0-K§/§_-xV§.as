package §_-0-K§
{
   import §_-4I§.§_-14§;
   import §_-4I§.§_-EA§;
   import §_-5b§.§_-Vj§;
   import §_-E5§.§_-Wo§;
   import §_-Lw§.§_-RT§;
   import §_-Lw§.§_-hQ§;
   import §_-X4§.§_-aP§;
   import §_-X4§.§_-rI§;
   import §_-i9§.Texture;
   import §_-r6§.§_-Oy§;
   import §_-yz§.§_-sm§;
   import §case §.Sprite;
   import §case §.§_-G3§;
   import §case §.§_-Gm§;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §_-xV§
   {
      
      public static const §_-gV§:int = 0;
      
      public static const §_-IP§:int = 1;
      
      public static const §_-BM§:int = 2;
      
      public static const §_-Nn§:int = 3;
      
      public static const §_-Qo§:int = 5;
      
      public static const §_-EK§:int = 3151368;
      
      protected static const §_-wV§:int = 8;
      
      protected static const §_-0u§:int = 0;
      
      public static const §_-ul§:Number = 46.25;
      
      public static const §_-0-6§:Number = 52.5;
      
      protected static var §_-oV§:Texture;
      
      public static const §_-Sj§:Number = 0.4;
       
      
      public var §_-mC§:§_-FL§;
      
      public var mX:Number;
      
      public var mY:Number;
      
      public var §_-qO§:Number;
      
      protected var §_-FZ§:Number;
      
      protected var §_-fZ§:Number;
      
      protected var §_-Wi§:Number;
      
      protected var §_-H3§:Number;
      
      public var §_-hX§:Number;
      
      public var §_-GC§:Boolean = false;
      
      protected var §_-0r§:Number;
      
      public var §_-00M§:Vector.<§_-ZK§>;
      
      public var §_-Uj§:int;
      
      public var §_-cF§:int;
      
      public var §_-28§:Number;
      
      public var §_-o3§:Sprite;
      
      public var §_-sA§:int = 0;
      
      public var §_-hr§:Number = 0;
      
      public var §_-3i§:Array;
      
      public var §_-yd§:Array;
      
      public var mSlingShotState:int;
      
      public var §_-e-§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §_-Tc§:Boolean = false;
      
      public var §_-MK§:Number;
      
      protected var §_-kv§:Sprite;
      
      protected var §_-3K§:§_-Gm§;
      
      protected var §_-qt§:§_-Gm§;
      
      protected var §_-z-§:Sprite;
      
      protected var §_-an§:Sprite;
      
      protected var §_-Hl§:Sprite;
      
      protected var §_-JQ§:§_-G3§;
      
      protected var §_-pe§:§_-G3§;
      
      public function §_-xV§(param1:§_-FL§, param2:§_-Vj§, param3:Sprite)
      {
         var _loc4_:§_-sm§ = null;
         this.§_-00M§ = new Vector.<§_-ZK§>();
         super();
         this.§_-mC§ = param1;
         this.§_-kv§ = param3;
         if(param2)
         {
            this.setPosition(param2.§_-Da§,param2.§_-Iw§);
            this.§_-rc§();
            for each(_loc4_ in param2.§_-00M§)
            {
               this.§_-gn§(_loc4_.id,_loc4_.x,_loc4_.y);
            }
            this.§_-Uj§ = 0;
            if(this.§_-00M§.length <= 0)
            {
               §_-Oy§.log("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.mX + " " + this.mY);
               this.§_-TL§(§_-Nn§);
            }
            else
            {
               this.§_-TL§(§_-gV§);
            }
         }
         else
         {
            §_-Oy§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
            this.§_-TL§(§_-Nn§);
         }
         this.§_-MK§ = 0;
         this.§_-9t§();
         this.update(0,true);
         this.§_-Vw§();
         this.§_-Qy§(0);
      }
      
      public function get sprite() : Sprite
      {
         return this.§_-kv§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§_-Uj§ < this.§_-00M§.length;
      }
      
      public function dispose() : void
      {
         while(this.§_-00M§.length > 0)
         {
            this.§_-fV§(0);
         }
         this.§_-00M§ = null;
         if(this.§_-kv§)
         {
            this.§_-kv§.dispose();
            this.§_-kv§ = null;
         }
         this.§_-o3§ = null;
         this.§_-3i§ = null;
         this.§_-yd§ = null;
      }
      
      public function §_-5q§(param1:String, param2:Number, param3:Number, param4:int = -1) : §_-ZK§
      {
         var _loc5_:§_-ZK§;
         (_loc5_ = this.§_-gn§(param1,param2,param3,param4)).§_-wY§();
         return _loc5_;
      }
      
      protected function §_-gn§(param1:String, param2:Number, param3:Number, param4:int = -1) : §_-ZK§
      {
         var _loc5_:§_-ZK§ = new §_-ZK§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            this.§_-00M§.push(_loc5_);
         }
         else
         {
            this.§_-00M§.splice(param4,0,_loc5_);
         }
         this.§_-o3§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      public function §_-TL§(param1:int) : void
      {
         this.mSlingShotState = param1;
         if(this.mSlingShotState == §_-gV§)
         {
            this.§_-g2§();
            this.§_-28§ = 1000;
         }
         else if(this.mSlingShotState == §_-IP§)
         {
            this.§_-g2§();
            this.§_-28§ = 0;
         }
         else if(this.mSlingShotState == §_-BM§)
         {
            this.§_-28§ = 10000;
            this.§_-Tc§ = false;
            this.§_-g2§();
         }
         else if(this.mSlingShotState == §_-Nn§)
         {
            this.§_-g2§();
            this.§_-28§ = 2000;
         }
         else if(this.mSlingShotState == §_-Qo§)
         {
            if(this.mDragging)
            {
               this.mDragging = false;
               this.§_-Tc§ = false;
               this.§_-g2§();
               this.§_-00M§[this.§_-Uj§].setPosition(this.§_-Wi§ - this.§_-00M§[this.§_-Uj§].radius * Math.cos(this.§_-hr§ / (180 / Math.PI)),this.§_-H3§ + this.§_-00M§[this.§_-Uj§].radius * Math.sin(this.§_-hr§ / (180 / Math.PI)));
            }
            else
            {
               this.§_-g2§();
            }
         }
         this.mDragging = false;
      }
      
      public function get §_-W5§() : §_-FL§
      {
         return this.§_-mC§;
      }
      
      public function §_-hF§() : Boolean
      {
         return this.mSlingShotState == §_-Nn§ && this.§_-28§ <= 0;
      }
      
      private function §_-rc§() : void
      {
         var _loc1_:§_-14§ = this.§_-mC§.§_-Un§.§_-Sv§("SLINGSHOT");
         var _loc2_:§_-EA§ = _loc1_.getFrame(0);
         var _loc3_:§_-EA§ = _loc1_.getFrame(1);
         this.§_-JQ§ = new §_-G3§(_loc2_.texture);
         this.§_-JQ§.scaleX = _loc2_.scale;
         this.§_-JQ§.scaleY = _loc2_.scale;
         this.§_-pe§ = new §_-G3§(_loc3_.texture);
         this.§_-pe§.scaleX = _loc3_.scale;
         this.§_-pe§.scaleY = _loc3_.scale;
         this.§_-U7§();
         this.§_-vW§();
         this.§_-o3§ = new Sprite();
         this.§_-kv§.addChild(this.§_-JQ§);
         this.§_-kv§.addChild(this.§_-z-§);
         this.§_-kv§.addChild(this.§_-o3§);
         this.§_-kv§.addChild(this.§_-Hl§);
         this.§_-kv§.addChild(this.§_-an§);
         this.§_-kv§.addChild(this.§_-pe§);
         this.§_-qO§ = this.mY + 8.5;
      }
      
      public function §_-U7§() : void
      {
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         this.§_-FZ§ = this.mX;
         this.§_-fZ§ = this.mY;
         this.§_-0r§ = §_-Yj§.§_-oH§;
         _loc1_ = null;
      }
      
      protected function §_-vW§() : void
      {
         var _loc2_:BitmapData = null;
         if(!§_-oV§)
         {
            _loc2_ = new BitmapData(18,26,true,4281341704);
            §_-oV§ = this.§_-mC§.§_-91§.§_-Cg§(_loc2_);
         }
         this.§_-Hl§ = new Sprite();
         var _loc1_:§_-G3§ = new §_-G3§(§_-oV§);
         _loc1_.rotation = Math.PI;
         _loc1_.x = _loc1_.width / 2;
         _loc1_.y = _loc1_.height / 2;
         this.§_-Hl§.addChild(_loc1_);
         this.§_-z-§ = new Sprite();
         this.§_-3K§ = new §_-Gm§(2,2,§_-EK§);
         this.§_-z-§.addChild(this.§_-3K§);
         this.§_-an§ = new Sprite();
         this.§_-qt§ = new §_-Gm§(2,2,§_-EK§);
         this.§_-an§.addChild(this.§_-qt§);
      }
      
      public function §_-Qy§(param1:Number) : void
      {
         var _loc2_:Number = this.§_-H3§ / §_-FL§.§_-NU§;
         var _loc3_:Number = this.§_-Wi§ / §_-FL§.§_-NU§;
         var _loc4_:Number = 3.5 + 8 * ((this.§_-0r§ - this.§_-hX§) / this.§_-0r§);
         this.§_-Hl§.x = _loc3_;
         this.§_-Hl§.y = _loc2_;
         this.§_-Hl§.rotation = -this.§_-hr§ / (180 / Math.PI);
         this.§_-JQ§.x = this.mX / §_-FL§.§_-NU§ - 3;
         this.§_-JQ§.y = this.mY / §_-FL§.§_-NU§ - 30;
         this.§_-pe§.x = this.mX / §_-FL§.§_-NU§ - 30;
         this.§_-pe§.y = this.mY / §_-FL§.§_-NU§ - 30;
         this.§_-an§.x = this.mX / §_-FL§.§_-NU§ - 17;
         this.§_-an§.y = this.mY / §_-FL§.§_-NU§ + 5;
         this.§_-an§.rotation = Math.atan2(_loc2_ - this.§_-an§.y,_loc3_ - this.§_-an§.x);
         this.§_-z-§.x = this.mX / §_-FL§.§_-NU§ + 22;
         this.§_-z-§.y = this.mY / §_-FL§.§_-NU§;
         this.§_-z-§.rotation = Math.atan2(_loc2_ - this.§_-z-§.y,_loc3_ - this.§_-z-§.x);
         this.§_-qt§.width = Math.sqrt(Math.pow(_loc3_ - this.§_-an§.x,2) + Math.pow(_loc2_ - this.§_-an§.y,2));
         this.§_-3K§.width = Math.sqrt(Math.pow(_loc3_ - this.§_-z-§.x,2) + Math.pow(_loc2_ - this.§_-z-§.y,2));
         this.§_-qt§.height = this.§_-3K§.height = _loc4_ * 2;
         this.§_-qt§.y = -this.§_-qt§.height / 2;
         this.§_-3K§.y = -this.§_-3K§.height / 2;
         this.§_-e-§ = false;
      }
      
      public function §_-jT§() : void
      {
         while(this.§_-00M§.length > 0)
         {
            this.§_-fV§(0,true);
         }
         this.§_-pO§();
         this.§_-gn§("BIRD_SARDINE",this.mX,this.mY);
         this.§_-TL§(§_-BM§);
      }
      
      protected function §_-pO§() : void
      {
         §_-Wo§.playSound("Bird_Red_Destroyed1");
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         this.§_-TL§(§_-Qo§);
      }
      
      public function §_-g2§() : void
      {
         this.setNewCoordinatesForRubber(this.§_-FZ§,this.§_-fZ§ + this.§_-0r§ / 8);
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(this.§_-Wi§ == param1 && this.§_-H3§ == param2)
         {
            return true;
         }
         this.§_-hX§ = Math.sqrt((param2 - this.§_-fZ§) * (param2 - this.§_-fZ§) + (param1 - this.§_-FZ§) * (param1 - this.§_-FZ§));
         if(this.§_-hX§ > this.§_-0r§)
         {
            if(param3)
            {
               this.§_-hX§ = Math.sqrt((this.§_-H3§ - this.§_-fZ§) * (this.§_-H3§ - this.§_-fZ§) + (this.§_-Wi§ - this.§_-FZ§) * (this.§_-Wi§ - this.§_-FZ§));
               return false;
            }
            param1 = this.§_-FZ§ + this.§_-0r§ * (param1 - this.§_-FZ§) / this.§_-hX§;
            param2 = this.§_-fZ§ + this.§_-0r§ * (param2 - this.§_-fZ§) / this.§_-hX§;
            this.§_-hX§ = this.§_-0r§;
         }
         this.§_-Wi§ = param1;
         this.§_-H3§ = param2;
         this.§_-hr§ = Math.atan2(-(this.§_-H3§ - this.§_-fZ§),this.§_-Wi§ - this.§_-FZ§);
         this.§_-hr§ *= 180 / Math.PI;
         if(this.mDragging == false)
         {
            this.§_-Wi§ = param1 - 0.7;
            this.§_-H3§ = param2;
            this.§_-hr§ = -160;
         }
         _loc4_ = 12;
         _loc5_ = 5;
         _loc6_ = 4;
         _loc7_ = this.§_-0r§ / 2;
         if(this.§_-hX§ > _loc7_ && this.§_-hr§ > -90 - _loc4_ + _loc5_ && this.§_-hr§ < -90 + _loc4_ + _loc5_)
         {
            param1 = this.§_-FZ§ + _loc7_ * (param1 - this.§_-FZ§) / this.§_-hX§;
            param2 = this.§_-fZ§ + _loc7_ * (param2 - this.§_-fZ§) / this.§_-hX§;
            this.§_-hX§ = _loc7_;
            this.§_-Wi§ = param1;
            this.§_-H3§ = param2;
         }
         else if(this.§_-hX§ > _loc7_ && this.§_-hr§ > -90 - _loc4_ - _loc6_ + _loc5_ && this.§_-hr§ < -90 + _loc4_ + _loc6_ + _loc5_)
         {
            _loc8_ = _loc7_ + (this.§_-0r§ - _loc7_) * (Math.abs(this.§_-hr§ - -90 - _loc5_) - _loc4_) / _loc6_;
            param1 = this.§_-FZ§ + _loc8_ * (param1 - this.§_-FZ§) / this.§_-hX§;
            param2 = this.§_-fZ§ + _loc8_ * (param2 - this.§_-fZ§) / this.§_-hX§;
            this.§_-hX§ = _loc8_;
            this.§_-Wi§ = param1;
            this.§_-H3§ = param2;
         }
         if(this.§_-hX§ <= this.§_-0r§ * 0.45)
         {
            this.§_-GC§ = true;
         }
         else if(this.§_-GC§ && this.§_-hX§ >= this.§_-0r§ * 0.8)
         {
            this.§_-D-§();
            this.§_-GC§ = false;
         }
         this.§_-e-§ = true;
         return true;
      }
      
      protected function §_-D-§() : void
      {
         §_-Wo§.playSound("SlingshotStreched");
      }
      
      public function §_-f4§(param1:Number) : void
      {
         this.setPosition(this.mX,this.mY + param1);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Number = param1 - this.mX;
         this.mX = param1;
         var _loc5_:Number = param2 - this.mY;
         this.mY = param2;
         this.§_-qO§ += _loc5_;
         this.§_-fZ§ += _loc5_;
         this.§_-H3§ += _loc5_;
         this.§_-FZ§ += _loc4_;
         this.§_-Wi§ += _loc4_;
         if(param3)
         {
            this.§_-Qy§(0);
         }
         this.§_-e-§ = true;
      }
      
      public function §_-pK§() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:§_-ZK§ = null;
         _loc2_ = this.§_-00M§[this.§_-Uj§];
         var _loc3_:Number = this.§_-hX§ / this.§_-0r§;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.name.toUpperCase() == "BIRD_GREEN" ? Number(§_-xV§.§_-0-6§) : Number(§_-xV§.§_-ul§);
         }
         return _loc1_ * _loc3_;
      }
      
      public function §_-6N§() : Point
      {
         var _loc1_:§_-ZK§ = null;
         if(this.§_-00M§.length > this.§_-Uj§)
         {
            _loc1_ = this.§_-00M§[this.§_-Uj§];
            return new Point(_loc1_.mX,_loc1_.mY);
         }
         return null;
      }
      
      public function §_-xM§() : Point
      {
         return new Point(this.§_-FZ§,this.§_-fZ§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:§_-ZK§ = null;
         this.§_-Fz§(param1);
         if(this.§_-e-§)
         {
            this.§_-Qy§(param1);
         }
         this.§_-28§ -= param1;
         if(this.§_-28§ < 0)
         {
            this.§_-28§ = 0;
         }
         if(this.mSlingShotState != §_-Nn§)
         {
            this.§_-rt§(param1,param2);
            _loc3_ = null;
            if(this.§_-00M§.length > 0)
            {
               _loc3_ = this.§_-00M§[this.§_-Uj§];
            }
            if(_loc3_)
            {
               _loc3_.§_-Ck§(param1);
            }
            if(!_loc3_)
            {
               this.§_-TL§(§_-Nn§);
            }
            else if(this.mSlingShotState == §_-gV§)
            {
               if(this.§_-28§ <= 0)
               {
                  this.§_-TL§(§_-IP§);
                  _loc3_.§_-Be§();
               }
            }
            else if(this.mSlingShotState == §_-IP§)
            {
               if(_loc3_.§_-UW§)
               {
                  this.§_-TL§(§_-BM§);
               }
            }
            else if(this.mSlingShotState == §_-BM§)
            {
               _loc3_.setPosition(this.§_-Wi§ - _loc3_.radius * Math.cos(this.§_-hr§ / (180 / Math.PI)),this.§_-H3§ + _loc3_.radius * Math.sin(this.§_-hr§ / (180 / Math.PI)));
               if(this.§_-Tc§)
               {
                  this.§_-uP§(this.§_-hX§ / this.§_-0r§,this.§_-hr§);
               }
            }
         }
      }
      
      public function §_-h6§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:§_-ZK§ = null;
         if(this.§_-00M§.length > 0)
         {
            _loc5_ = this.§_-00M§[this.§_-Uj§];
         }
         if(!_loc5_)
         {
            return;
         }
         _loc5_.setPosition(param1,param2);
         this.§_-uP§(param3,param4);
      }
      
      protected function §_-uP§(param1:Number, param2:Number) : void
      {
         var _loc3_:§_-ZK§ = null;
         if(this.§_-00M§.length > 0)
         {
            _loc3_ = this.§_-00M§[this.§_-Uj§];
         }
         if(!_loc3_)
         {
            return;
         }
         this.mDragging = false;
         this.§_-Tc§ = false;
         this.§_-mC§.§_-eY§(_loc3_,param1,param2);
         this.§_-fV§(this.§_-Uj§,_loc3_.§_-Dw§ > 0);
         this.§_-qV§();
         if(this.§_-Uj§ >= this.§_-00M§.length)
         {
            this.§_-TL§(§_-Nn§);
         }
         else
         {
            this.§_-TL§(§_-gV§);
         }
      }
      
      protected function §_-qV§() : void
      {
         var _loc1_:int = int(Math.random() * 3) + 1;
         §_-Wo§.playSound("BirdShot" + _loc1_);
      }
      
      public function §_-rt§(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:int = this.§_-Uj§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < this.§_-00M§.length)
         {
            if(this.mSlingShotState == §_-Qo§)
            {
               this.§_-00M§[_loc4_].update(param1,true,param2);
            }
            else
            {
               this.§_-00M§[_loc4_].update(param1,false,param2);
            }
            _loc4_++;
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc1_:§_-ZK§ = null;
         var _loc2_:int = 0;
         this.mDragging = false;
         this.§_-g2§();
         if(this.§_-cF§ >= this.§_-00M§.length)
         {
            return false;
         }
         _loc1_ = this.§_-00M§[this.§_-cF§];
         _loc2_ = §_-rI§.§_-0l§(_loc1_.name).score;
         this.§_-mC§.addScore(_loc2_,§_-8r§.§_-PM§,true,_loc1_.mX,_loc1_.mY - 3,§_-hQ§.§_-Ct§(_loc1_.name));
         _loc1_.§_-iL§(-1,true);
         ++this.§_-cF§;
         return true;
      }
      
      public function §_-98§() : int
      {
         var _loc2_:§_-ZK§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§_-00M§)
         {
            _loc1_ += §_-rI§.§_-0l§(_loc2_.name).score;
         }
         return _loc1_;
      }
      
      public function §_-Fz§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.§_-MK§ >= 0)
         {
            this.§_-MK§ -= param1;
            if(this.§_-MK§ <= 0)
            {
               _loc2_ = this.§_-mC§.objects.§_-Ni§(this.§_-FZ§,this.§_-qO§);
               if(_loc2_ < 0)
               {
                  this.§_-f4§(0.1);
                  this.§_-MK§ = 0;
               }
               else if(!this.§_-mC§.objects.§_-id§(_loc2_).§_-AZ§)
               {
                  this.§_-MK§ = -1;
               }
               else if(this.§_-mC§.objects.§_-id§(_loc2_).§_-RG§())
               {
                  this.§_-MK§ = 2000;
               }
               else
               {
                  this.§_-MK§ = 500;
               }
            }
         }
      }
      
      public function §_-Vw§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 1000;
         do
         {
            _loc2_ = this.§_-mC§.objects.§_-Ni§(this.§_-FZ§,this.§_-qO§);
            if(_loc2_ != -1)
            {
               break;
            }
            this.§_-f4§(0.1);
         }
         while(_loc1_-- > 0);
         
         this.§_-MK§ = -1;
      }
      
      public function §_-FQ§(param1:Number, param2:Number) : void
      {
         this.§_-kv§.x = -param1;
         this.§_-kv§.y = -param2;
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         if(this.mSlingShotState == §_-BM§ && this.setNewCoordinatesForRubber(param1.x,param1.y,true))
         {
            return true;
         }
         return false;
      }
      
      public function canShootTheBird() : Boolean
      {
         return this.mSlingShotState == §_-BM§ && this.§_-hX§ > this.§_-0r§ * §_-Sj§;
      }
      
      public function cancelDragging() : void
      {
         this.mDragging = false;
         this.§_-TL§(§_-BM§);
         var _loc1_:§_-ZK§ = this.§_-00M§[this.§_-Uj§];
         _loc1_.§_-iL§(§_-aP§.§_-Vt§);
      }
      
      public function startDragging() : void
      {
         this.mDragging = true;
         var _loc1_:§_-ZK§ = this.§_-00M§[this.§_-Uj§];
         _loc1_.§_-iL§(§_-aP§.§_-sO§);
      }
      
      public function shoot() : void
      {
         this.§_-Tc§ = true;
      }
      
      protected function §_-fV§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:§_-ZK§ = null;
         if(param1 < 0)
         {
            return;
         }
         if(this.§_-00M§[param1])
         {
            _loc3_ = this.§_-00M§[param1];
            this.§_-o3§.removeChild(_loc3_.sprite);
            if(param2)
            {
               this.§_-tS§(this.§_-00M§[param1]);
            }
            _loc3_.dispose();
            this.§_-00M§[param1] = null;
         }
         this.§_-00M§.splice(param1,1);
      }
      
      public function §_-tS§(param1:§_-ZK§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / 5)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -param1.sprite.width * §_-FL§.§_-NU§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -param1.sprite.height * §_-FL§.§_-NU§) + Math.random() * -_loc8_ * 2;
            this.§_-mC§.particles.addParticle(§_-hQ§.§_-Wc§,§_-RT§.§_-MU§,§_-hQ§.§_-Wf§,param1.mX + _loc7_,param1.mY + _loc8_,1500,"",§_-hQ§.§_-kW§(param1.name),5 * Math.cos(_loc6_),-5 * Math.sin(_loc6_),5,5 * 20);
            _loc5_++;
         }
         this.§_-mC§.particles.addParticle(§_-hQ§.§_-Ff§,§_-RT§.§_-MU§,§_-hQ§.§_-Wf§,param1.mX,param1.mY,1000,"",0,Math.cos(_loc6_),0,5,5 * 5);
      }
      
      public function §_-Dp§(param1:§_-ZK§) : void
      {
         this.§_-fV§(this.§_-00M§.indexOf(param1));
      }
      
      public function §_-9t§() : void
      {
         var _loc2_:§_-ZK§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:§_-ZK§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§_-00M§.length - 1)
         {
            _loc3_ = Math.sqrt((this.mX - this.§_-00M§[_loc1_].mX) * (this.mX - this.§_-00M§[_loc1_].mX) + (this.mY - this.§_-00M§[_loc1_].mY) * (this.mY - this.§_-00M§[_loc1_].mY));
            if((_loc4_ = Math.sqrt((this.mX - this.§_-00M§[_loc1_ + 1].mX) * (this.mX - this.§_-00M§[_loc1_ + 1].mX) + (this.mY - this.§_-00M§[_loc1_ + 1].mY) * (this.mY - this.§_-00M§[_loc1_ + 1].mY))) < _loc3_)
            {
               _loc5_ = this.§_-00M§[_loc1_];
               this.§_-00M§.splice(_loc1_,1);
               this.§_-00M§.splice(_loc1_ + 1,0,_loc5_);
               _loc1_ = Math.max(-1,_loc1_ - 2);
            }
            _loc1_++;
         }
         while(this.§_-o3§.numChildren > 0)
         {
            this.§_-o3§.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < this.§_-00M§.length)
         {
            _loc2_ = this.§_-00M§[_loc1_];
            this.§_-o3§.addChildAt(_loc2_.sprite,0);
            _loc1_++;
         }
      }
      
      public function §_-p5§(param1:Number, param2:Number) : §_-ZK§
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§_-00M§.length)
         {
            if(this.§_-00M§[_loc3_])
            {
               if(this.§_-00M§[_loc3_].isInCoordinates(param1,param2))
               {
                  return this.§_-00M§[_loc3_];
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function §_-bO§(param1:Number, param2:Number) : §_-xV§
      {
         if(param1 >= this.mX - this.§_-0r§ / 4 && param1 <= this.mX + this.§_-0r§ / 4 && param2 >= this.mY - this.§_-0r§ / 4 && this.mY <= this.§_-qO§)
         {
            return this;
         }
         return null;
      }
      
      public function §_-en§(param1:§_-Vj§) : void
      {
         var _loc3_:§_-ZK§ = null;
         var _loc4_:§_-sm§ = null;
         param1.§_-Da§ = this.mX;
         param1.§_-Iw§ = this.mY;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§_-00M§.length)
         {
            _loc3_ = this.§_-00M§[_loc2_];
            (_loc4_ = new §_-sm§()).x = _loc3_.mX;
            _loc4_.y = _loc3_.mY;
            _loc4_.id = _loc3_.name;
            param1.§_-00M§.push(_loc4_);
            _loc2_++;
         }
      }
      
      public function §_-dr§() : void
      {
         while(this.§_-00M§.length > 0)
         {
            this.§_-Dp§(this.§_-00M§[0]);
         }
      }
      
      public function §_-hz§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§_-00M§.length)
         {
            if(this.§_-00M§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§_-00M§[_loc4_]);
            }
            _loc4_++;
         }
         if(this.mX > param1.x && this.mX < param2.x && this.mY > param1.y && this.mY < param2.y)
         {
            _loc3_.push(this);
         }
         return _loc3_;
      }
      
      public function §_-Kb§() : Array
      {
         return [this.§_-pe§,this.§_-JQ§];
      }
      
      public function §_-1N§(param1:String, param2:Number, param3:Number) : §_-ZK§
      {
         var _loc4_:§_-ZK§ = this.§_-gn§(param1,param2,param3);
         this.§_-9t§();
         return _loc4_;
      }
      
      public function §_-FE§() : Number
      {
         return this.§_-00M§.length;
      }
   }
}
