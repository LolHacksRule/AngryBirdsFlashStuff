package §_-lt§
{
   import §_-09-§.b2PrismaticJoint;
   import §_-09-§.b2WeldJoint;
   import §_-0DG§.§_-0-A§;
   import §_-0DG§.§_-09t§;
   import §_-0DG§.§_-a2§;
   import §_-0DG§.§_-au§;
   import §_-0DG§.§_-sQ§;
   import §_-4g§.§_-pX§;
   import §_-8d§.§_-vz§;
   import §_-9T§.§_-xG§;
   import §_-Ga§.§_-bm§;
   import §_-N3§.§_-Hv§;
   import §_-N3§.§_-Zc§;
   import §_-TG§.§_-00u§;
   import §_-TG§.§_-40§;
   import §_-TG§.§_-L8§;
   import §_-TG§.§_-pD§;
   import §_-Yp§.b2Vec2;
   import §_-by§.§_-023§;
   import §_-by§.§_-06y§;
   import §_-by§.§_-CE§;
   import §_-by§.§_-fi§;
   import §_-uY§.Sprite;
   import §_-uY§.§_-09b§;
   import §_-z4§.Texture;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §_-30§
   {
       
      
      protected var §_-Tx§:Vector.<§_-eZ§>;
      
      protected var §_-q-§:int;
      
      public var §_-6A§:§_-00u§;
      
      public var §_-ll§:Vector.<§_-wS§>;
      
      protected var §_-Sh§:Sprite;
      
      protected var §_-Rn§:Sprite;
      
      private var §_-wx§:Sprite;
      
      private var §_-lS§:Sprite;
      
      private var §_-Xz§:Sprite;
      
      protected var §_-w2§:Vector.<Texture>;
      
      protected var §_-T3§:Vector.<§_-06y§>;
      
      protected var §_-P5§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §_-04N§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §_-1o§:Boolean = false;
      
      protected var §_-BH§:Number;
      
      protected var §_-06A§:int;
      
      protected var §_-CA§:Vector.<§_-023§>;
      
      protected var §_-09e§:int = 0;
      
      private var §_-25§:int = 0;
      
      private var §_-09T§:int = 0;
      
      private var §_-0An§:int;
      
      private var §_-cK§:Boolean = true;
      
      private var §_-tf§:Boolean = true;
      
      public function §_-30§(param1:§_-00u§, param2:§_-bm§, param3:Sprite)
      {
         var _loc5_:§_-06y§ = null;
         var _loc6_:§_-CE§ = null;
         var _loc7_:§_-eZ§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§_-eZ§ = null;
         var _loc11_:§_-eZ§ = null;
         this.§_-Tx§ = new Vector.<§_-eZ§>();
         this.§_-ll§ = new Vector.<§_-wS§>();
         this.§_-w2§ = new Vector.<Texture>();
         this.§_-BH§ = this.§_-L8§.SARDINE_CAN_INITIAL_ROTATION_SPEED;
         this.§_-CA§ = new Vector.<§_-023§>();
         super();
         this.§_-6A§ = param1;
         this.§_-q-§ = 0;
         this.§_-Rn§ = param3;
         this.§_-Rn§.§_-xd§ = false;
         this.§_-tf§ = true;
         this.§_-cK§ = true;
         this.§_-Sh§ = new Sprite();
         this.§_-wx§ = new Sprite();
         this.§_-lS§ = new Sprite();
         this.§_-Xz§ = new Sprite();
         this.§_-Rn§.addChild(this.§_-Sh§);
         this.§_-Rn§.addChild(this.§_-wx§);
         this.§_-Rn§.addChild(this.§_-lS§);
         this.§_-Rn§.addChild(this.§_-Xz§);
         this.addObject(§_-xG§.§_-lv§(param2.theme).§_-hF§,(this.§_-6A§.§_-Uv§.§_-07b§ + this.§_-6A§.§_-Uv§.§_-01a§) / 2,this.§_-6A§.§_-Uv§.§_-GV§ + §_-pD§.§_-S7§);
         this.§_-0An§ = this.§_-Tx§.length;
         var _loc4_:int = 0;
         _loc4_ = 0;
         while(_loc4_ < param2.§_-uM§)
         {
            _loc6_ = param2.§_-086§(_loc4_);
            if(_loc7_ = this.addObject(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle,false,false,false,1,_loc6_.front))
            {
               _loc7_.uniqueID = _loc6_.uniqueID;
            }
            _loc4_++;
         }
         this.§_-00M§();
         this.§_-F§(true);
         this.§_-T3§ = new Vector.<§_-06y§>();
         _loc4_ = 0;
         while(_loc4_ < param2.§_-zw§)
         {
            this.§_-T3§.push(§_-06y§.§_-kk§(param2.§_-0Cb§(_loc4_)));
            _loc4_++;
         }
         for each(_loc5_ in this.§_-T3§)
         {
            _loc8_ = _loc5_.index1 + this.§_-0An§;
            _loc9_ = _loc5_.index2 + this.§_-0An§;
            if(_loc8_ < this.§_-Tx§.length && _loc9_ < this.§_-Tx§.length)
            {
               _loc10_ = this.§_-Tx§[_loc8_];
               _loc11_ = this.§_-Tx§[_loc9_];
               if(!(_loc10_ && _loc11_))
               {
                  throw new Error("Joint index out of bounds [" + _loc8_ + ", " + _loc9_ + "]");
               }
               if(_loc5_.type != §_-fi§.§_-09G§)
               {
                  _loc5_.§_-0C3§ = this.§_-6A§.mLevelEngine.mWorld.§_-oW§(_loc5_.§_-sy§(_loc10_,_loc11_));
               }
               else
               {
                  this.§_-CA§.push(new §_-023§(_loc8_,_loc9_,_loc5_.§_-0e§));
               }
            }
         }
      }
      
      protected function get §_-L8§() : Class
      {
         return §_-L8§;
      }
      
      public function get §_-eJ§() : Sprite
      {
         return this.§_-Xz§;
      }
      
      public function get §_-ar§() : Sprite
      {
         return this.§_-Rn§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§_-Tx§.length > 0)
         {
            this.§_-Fq§(0);
         }
         this.§_-Tx§ = null;
         this.§_-CA§ = null;
         if(this.§_-Rn§)
         {
            this.§_-Rn§.dispose();
            this.§_-Rn§ = null;
            this.§_-Sh§ = null;
            this.§_-Xz§ = null;
            this.§_-wx§ = null;
            this.§_-lS§ = null;
         }
         while(this.§_-w2§.length > 0)
         {
            _loc1_ = this.§_-w2§.pop();
            this.§_-6A§.textureManager.unregisterBitmapDataTexture(_loc1_);
         }
      }
      
      private function §_-F§(param1:Boolean) : void
      {
         this.§_-Sh§.visible = param1;
      }
      
      private function §_-00M§() : void
      {
         var _loc3_:§_-eZ§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§_-09b§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§_-eZ§> = new Vector.<§_-eZ§>();
         for each(_loc3_ in this.§_-Tx§)
         {
            if(_loc3_.isTexture())
            {
               _loc2_.push(_loc3_);
               _loc4_ = _loc3_.sprite.getBounds(this.§_-Rn§);
               if(_loc1_ == null)
               {
                  _loc1_ = new Rectangle(_loc4_.x,_loc4_.y,_loc4_.width,_loc4_.height);
               }
               else
               {
                  _loc1_ = _loc1_.union(_loc4_);
               }
            }
         }
         if(_loc1_)
         {
            _loc5_ = 1;
            while(_loc1_.width > 2048 || _loc1_.height > 2048)
            {
               _loc1_.left /= 2;
               _loc1_.top /= 2;
               _loc1_.right /= 2;
               _loc1_.bottom /= 2;
               _loc5_ /= 2;
            }
            _loc6_ = _loc1_.width;
            _loc7_ = _loc1_.height;
            _loc8_ = _loc1_.left;
            _loc9_ = _loc1_.top;
            _loc10_ = new BitmapData(_loc6_,_loc7_,true,0);
            this.§_-01J§(_loc10_.rect,_loc10_,_loc5_);
            _loc11_ = this.§_-78§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
            _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc12_ = this.§_-6A§.textureManager.getTextureFromBitmapData(_loc10_);
            this.§_-w2§.push(_loc12_);
            (_loc13_ = new §_-09b§(_loc12_)).x = _loc8_ / _loc5_;
            _loc13_.y = _loc9_ / _loc5_;
            _loc13_.scaleX = 1 / _loc5_;
            _loc13_.scaleY = 1 / _loc5_;
            this.§_-Sh§.addChild(_loc13_);
            _loc11_.dispose();
         }
      }
      
      private function §_-78§(param1:Vector.<§_-eZ§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§_-eZ§ = null;
         var _loc11_:§_-sQ§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§_-zm§.shape).§super§();
            _loc13_ = new Rectangle(_loc12_[0].x / §_-00u§.§_-lY§ * param6,_loc12_[0].y / §_-00u§.§_-lY§ * param6,(_loc12_[1].x - _loc12_[0].x) / §_-00u§.§_-lY§ * param6,(_loc12_[1].y - _loc12_[0].y) / §_-00u§.§_-lY§ * param6);
            _loc10_.identity();
            _loc10_.scale(_loc13_.width,_loc13_.height);
            _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
            _loc10_.rotate((360 - _loc7_.§_-NN§()) / 180 * Math.PI);
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            _loc8_.draw(_loc9_,_loc10_);
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      private function §_-01J§(param1:Rectangle, param2:BitmapData, param3:Number) : void
      {
         var _loc6_:BitmapData = null;
         var _loc7_:Matrix = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:* = 0;
         var _loc12_:int = 0;
         var _loc13_:* = 0;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         var _loc4_:String = this.§_-6A§.background.§_-st§();
         var _loc5_:§_-vz§;
         if(_loc5_ = this.§_-6A§.backgroundTextureManager.§_-70§(_loc4_))
         {
            _loc6_ = new BitmapData(_loc5_.bitmapData.width * param3,_loc5_.bitmapData.height * param3);
            (_loc7_ = new Matrix()).scale(param3,param3);
            _loc6_.draw(_loc5_.bitmapData,_loc7_);
            _loc8_ = _loc6_.width - 2;
            _loc9_ = _loc6_.height - 2;
            _loc10_ = param1.top / _loc9_;
            if(param1.top < 0)
            {
               _loc10_--;
            }
            _loc11_ = (_loc11_ = int(param1.bottom / _loc9_)) + 1;
            _loc12_ = param1.left / _loc8_;
            if(param1.left < 0)
            {
               _loc12_--;
            }
            _loc13_ = (_loc13_ = int(param1.right / _loc8_)) + 1;
            _loc14_ = _loc12_;
            while(_loc14_ < _loc13_)
            {
               _loc15_ = _loc10_;
               while(_loc15_ < _loc11_)
               {
                  param2.copyPixels(_loc6_,_loc6_.rect,new Point(_loc14_ * _loc8_,_loc15_ * _loc9_));
                  _loc15_++;
               }
               _loc14_++;
            }
            _loc6_.dispose();
         }
      }
      
      public function §_-8v§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §_-eZ§
      {
         var _loc10_:§_-eZ§ = null;
         switch(param2)
         {
            case "BIRD_BLACK":
               _loc10_ = new §_-wE§(this,param1,this.§_-6A§.mLevelEngine.mWorld,this.§_-6A§,this.§_-q-§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_BLUE":
               _loc10_ = new §_-En§(this,param1,this.§_-6A§.mLevelEngine.mWorld,this.§_-6A§,this.§_-q-§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_GREEN":
               _loc10_ = new §_-3i§(this,param1,this.§_-6A§.mLevelEngine.mWorld,this.§_-6A§,this.§_-q-§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_WHITE":
               _loc10_ = new §_-07D§(this,param1,this.§_-6A§.mLevelEngine.mWorld,this.§_-6A§,this.§_-q-§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_YELLOW":
               _loc10_ = new §_-cI§(this,param1,this.§_-6A§.mLevelEngine.mWorld,this.§_-6A§,this.§_-q-§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_RED":
               _loc10_ = new §_-rM§(this,param1,this.§_-6A§.mLevelEngine.mWorld,this.§_-6A§,this.§_-q-§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_REDBIG":
               _loc10_ = new §_-eo§(this,param1,this.§_-6A§.mLevelEngine.mWorld,this.§_-6A§,this.§_-q-§,param2,param3,param4,param5,param8,param9);
               break;
            default:
               _loc10_ = new §_-Fh§(this,param1,this.§_-6A§.mLevelEngine.mWorld,this.§_-6A§,this.§_-q-§,param2,param3,param4,param5,param8,param9);
         }
         return _loc10_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§_-09e§ > 0;
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §_-eZ§
      {
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         _loc10_.scaleY = param8;
         var _loc11_:§_-eZ§;
         if((_loc11_ = this.createObject(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)).isTexture())
         {
            _loc10_.visible = !this.§_-cK§;
            this.§_-Tx§[this.§_-Tx§.length] = _loc11_;
         }
         else
         {
            this.§_-Tx§[this.§_-Tx§.length] = _loc11_;
         }
         if(_loc11_ is §_-Fh§ && !_loc11_.§_-rN§())
         {
            this.§_-wx§.addChild(_loc10_);
            ++this.§_-09e§;
         }
         else if(_loc11_.front || param9)
         {
            this.§_-Xz§.addChild(_loc10_);
         }
         else
         {
            this.§_-lS§.addChild(_loc10_);
         }
         if(param5)
         {
            this.§_-6A§.§_-I5§(_loc11_);
         }
         if(param6)
         {
            this.§_-6A§.activeObject = _loc11_;
         }
         return _loc11_;
      }
      
      public function §_-kk§(param1:int, param2:§_-eZ§, param3:§_-eZ§) : §_-06y§
      {
         var _loc6_:§_-06y§ = null;
         var _loc4_:int = this.§_-Tx§.indexOf(param2) - this.§_-0An§;
         var _loc5_:int = this.§_-Tx§.indexOf(param3) - this.§_-0An§;
         if(_loc4_ >= 0 && _loc5_ >= 0)
         {
            (_loc6_ = new §_-06y§(§_-fi§.§_-gY§,_loc4_,_loc5_,new Point(0,0),new Point(0,0))).§_-0C3§ = this.§_-6A§.mLevelEngine.mWorld.§_-oW§(_loc6_.§_-sy§(param2,param3));
            this.§_-T3§.push(_loc6_);
            return _loc6_;
         }
         return null;
      }
      
      public function §_-iX§(param1:§_-06y§) : void
      {
         if(!(param1.§_-0C3§ is b2WeldJoint))
         {
            return;
         }
         var _loc2_:§_-eZ§ = this.§_-086§(param1.index1 + this.§_-0An§);
         var _loc3_:§_-eZ§ = this.§_-086§(param1.index2 + this.§_-0An§);
         this.§_-6A§.mLevelEngine.mWorld.§_-r5§(param1.§_-0C3§);
         param1.§_-0C3§ = this.§_-6A§.mLevelEngine.mWorld.§_-oW§(param1.§_-sy§(_loc2_,_loc3_));
      }
      
      public function §_-nP§(param1:§_-eZ§) : Vector.<§_-06y§>
      {
         var _loc4_:§_-06y§ = null;
         var _loc2_:Vector.<§_-06y§> = new Vector.<§_-06y§>();
         var _loc3_:int = this.§_-Tx§.indexOf(param1) - this.§_-0An§;
         if(_loc3_ >= 0)
         {
            for each(_loc4_ in this.§_-T3§)
            {
               if(_loc4_.index1 == _loc3_ || _loc4_.index2 == _loc3_)
               {
                  _loc2_.push(_loc4_);
               }
            }
         }
         return _loc2_;
      }
      
      public function §_-Yu§() : Vector.<§_-06y§>
      {
         return this.§_-T3§;
      }
      
      public function §_-0Bs§(param1:§_-eZ§) : void
      {
         var _loc2_:int = this.§_-Tx§.indexOf(param1) - this.§_-0An§;
         var _loc3_:int = this.§_-T3§.length - 1;
         while(_loc3_ >= 0)
         {
            if(this.§_-T3§[_loc3_].index1 == _loc2_ || this.§_-T3§[_loc3_].index2 == _loc2_)
            {
               this.§_-T3§.splice(_loc3_,1);
            }
            _loc3_--;
         }
      }
      
      public function §_-0AD§(param1:§_-eZ§, param2:§_-eZ§) : Boolean
      {
         var _loc3_:int = this.§_-Tx§.indexOf(param1) - this.§_-0An§;
         var _loc4_:int = this.§_-Tx§.indexOf(param2) - this.§_-0An§;
         var _loc5_:int = this.§_-T3§.length - 1;
         while(_loc5_ >= 0)
         {
            if(this.§_-T3§[_loc5_].index1 == _loc3_ && this.§_-T3§[_loc5_].index2 == _loc4_ || this.§_-T3§[_loc5_].index1 == _loc4_ && this.§_-T3§[_loc5_].index2 == _loc3_)
            {
               return true;
            }
            _loc5_--;
         }
         return false;
      }
      
      protected function createObject(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §_-eZ§
      {
         var _loc10_:§_-eZ§ = null;
         var _loc11_:§_-0-A§ = null;
         var _loc12_:§_-0-A§ = null;
         if(param2.indexOf("BIRD") == 0)
         {
            _loc10_ = this.§_-8v§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
            ++this.§_-09T§;
         }
         else if(param2.indexOf("PIG") == 0)
         {
            _loc11_ = §_-09t§.§_-yf§(param2);
            _loc10_ = new §_-BQ§(this,param1,this.§_-6A§.mLevelEngine.mWorld,this.§_-6A§,this.§_-q-§,param2,param3,param4,param5,param9,_loc11_.particleJSONId,_loc11_.particleVariationCount);
         }
         else
         {
            if((_loc12_ = §_-09t§.§_-yf§(param2)) == null && param2.indexOf("MISC_") == 0)
            {
               param2 = "MISC_FOOD_" + param2.substring(5);
               _loc12_ = §_-09t§.§_-yf§(param2);
            }
            if(_loc12_.§_-kD§ == §_-0-A§.§_-OZ§ || _loc12_.§_-kD§ == §_-0-A§.§_-FB§)
            {
               _loc10_ = new §_-02m§(this,param1,this.§_-6A§.mLevelEngine.mWorld,this.§_-6A§,this.§_-q-§,param2,param3,param4,param5,param9,_loc12_.front,_loc12_.particleJSONId,_loc12_.particleVariationCount);
            }
            else
            {
               _loc10_ = new §_-eZ§(this,param1,this.§_-6A§.mLevelEngine.mWorld,this.§_-6A§,this.§_-q-§,param2,param3,param4,param5,param9,_loc12_.front);
            }
         }
         return _loc10_;
      }
      
      public function §_-8h§(param1:Number) : void
      {
         var _loc3_:§_-eZ§ = null;
         var _loc2_:int = this.§_-Tx§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§_-Tx§[_loc2_] as §_-eZ§;
            if(_loc3_)
            {
               if(_loc3_.§_-Kh§ <= 0)
               {
                  this.§_-Fq§(_loc2_,true,true,true);
               }
               else
               {
                  _loc3_.§_-03C§();
                  _loc3_.§_-rj§();
               }
            }
            _loc2_--;
         }
         this.§_-v8§(param1);
      }
      
      protected function §_-v8§(param1:Number) : void
      {
         var _loc3_:§_-06y§ = null;
         var _loc4_:§_-023§ = null;
         var _loc5_:int = 0;
         var _loc6_:§_-eZ§ = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc2_:int = this.§_-CA§.length - 1;
         while(_loc2_ >= 0)
         {
            if((_loc4_ = this.§_-CA§[_loc2_]).§_-Ux§)
            {
               if((_loc5_ = _loc4_.update(param1)) != -1)
               {
                  if(_loc6_ = this.§_-ec§("block_" + _loc5_))
                  {
                     this.§_-zn§(_loc6_,true,true,true);
                  }
                  this.§_-CA§.splice(_loc2_,1);
               }
            }
            _loc2_--;
         }
         for each(_loc3_ in this.§_-T3§)
         {
            if(_loc3_.type == §_-fi§.§_-37§ && _loc3_.§_-01R§)
            {
               _loc7_ = (_loc3_.§_-0C3§ as b2PrismaticJoint).§_-qk§();
               _loc8_ = (_loc3_.§_-0C3§ as b2PrismaticJoint).§_-be§();
               if(_loc3_.§_-Wm§ && _loc3_.§_-5R§ && (_loc8_ > 0 && _loc7_ >= _loc3_.upperLimit || _loc8_ < 0 && _loc7_ <= _loc3_.lowerLimit))
               {
                  (_loc3_.§_-0C3§ as b2PrismaticJoint).§_-02d§(-_loc8_);
               }
            }
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         this.§_-ll§.push(§_-wS§.createExplosion(param1,param2,param3));
         §_-pX§.playSound("TntExplosions","ChannelExplosions");
      }
      
      public function §_-1X§(param1:Number, param2:Number) : int
      {
         var _loc4_:§_-eZ§ = null;
         var _loc3_:int = this.§_-Tx§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§_-Tx§[_loc3_])
            {
               if(_loc4_.isInCoordinates(param1,param2))
               {
                  return _loc3_;
               }
            }
            _loc3_--;
         }
         return -1;
      }
      
      public function §_-bS§(param1:Number, param2:Number) : §_-eZ§
      {
         var _loc4_:§_-eZ§ = null;
         var _loc3_:int = this.§_-Tx§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§_-Tx§[_loc3_])
            {
               if(_loc4_.isInCoordinates(param1,param2))
               {
                  return _loc4_;
               }
            }
            _loc3_--;
         }
         return null;
      }
      
      public function §_-086§(param1:int) : §_-eZ§
      {
         return this.§_-Tx§[param1];
      }
      
      public function §_-x0§(param1:Number, param2:Number) : void
      {
         var _loc4_:§_-eZ§ = null;
         var _loc3_:int = this.§_-Tx§.length - 1;
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§_-Tx§[_loc3_] as §_-eZ§).§_-x0§(param2,param1);
            _loc3_--;
         }
      }
      
      private function §_-0Bu§(param1:§_-eZ§, param2:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§_-eZ§ = null;
         if(!this.mSardineCanAdded)
         {
            return true;
         }
         if(this.mMightyEagleAdded)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         if(param1.§_-Kh§ == param1.§_-8l§)
         {
            if(this.§_-BH§ < this.§_-L8§.SARDINE_CAN_MAX_ROTATION_SPEED)
            {
               this.§_-BH§ += param2 * this.§_-L8§.SARDINE_CAN_ROTATION_ACCELERATION;
            }
            param1.§_-SJ§().§_-ZF§(param2 * this.§_-BH§);
            this.§_-06A§ = 0;
         }
         else if(this.§_-06A§ == 0)
         {
            this.§_-06A§ = this.§_-6A§.§_-Dn§;
         }
         if(param1.§_-01F§() || this.§_-db§(param1) || this.§_-06A§ > 0 && this.§_-6A§.§_-Dn§ > this.§_-06A§ + this.§_-L8§.SARDINE_CAN_DELAY_AFTER_HIT)
         {
            if(this.mMightyEagleTimer < this.§_-L8§.MIGHTY_EAGLE_WAIT_TIME)
            {
               _loc4_ = this.mMightyEagleTimer + param2;
               if(this.mMightyEagleTimer < this.§_-L8§.MIGHTY_EAGLE_SOUND_DELAY && _loc4_ > this.§_-L8§.MIGHTY_EAGLE_SOUND_DELAY)
               {
                  §_-pX§.playSound("Mighty_Eagle_Selected_1","ChannelBird");
                  §_-pX§.playSound("Mighty_Eagle_Flying_1","ChannelBird");
               }
               if(_loc4_ >= this.§_-L8§.MIGHTY_EAGLE_WAIT_TIME)
               {
                  _loc5_ = param1.§_-SJ§().GetPosition().x - this.§_-L8§.MIGHTY_EAGLE_STARTING_DISTANCE_X;
                  _loc6_ = param1.§_-SJ§().GetPosition().y - this.§_-L8§.MIGHTY_EAGLE_STARTING_DISTANCE_Y * this.§_-L8§.MIGHTY_EAGLE_Y_CHANGE * 1.07;
                  if(this.§_-db§(param1))
                  {
                     _loc3_ = true;
                  }
                  _loc7_ = this.addObject("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,this.§_-L8§.MIGHTY_EAGLE_FLYING_ANGLE * 1.2);
                  this.mMightyEagleAdded = true;
                  this.§_-06A§ = 0;
                  _loc7_.§_-U-§.§_-3U§(1.82);
               }
               this.mMightyEagleTimer = _loc4_;
            }
         }
         return _loc3_;
      }
      
      private function §_-Sc§(param1:§_-eZ§, param2:Number) : Boolean
      {
         var _loc5_:§_-eZ§ = null;
         if(this.§_-L8§.MIGHTY_EAGLE_USE_SHADE && !this.§_-1o§ && this.mMightyEagleTimer > this.§_-L8§.MIGHTY_EAGLE_SHADING_DELAY)
         {
            this.§_-1o§ = true;
            this.§_-6A§.§_-ET§();
         }
         this.mMightyEagleTimer += param2;
         this.§_-6A§.particles.§_-0EQ§(§_-Hv§.§_-gA§,§_-Zc§.§_-MP§,§_-Hv§.§_-vg§,param1.§_-SJ§().GetPosition().x - 3 + Math.random() * (3 * 2),param1.§_-SJ§().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§_-Hv§.§_-08L§(param1.§_-o2§),0,0,1,0,4);
         var _loc4_:int = 1;
         if(this.mMightyEagleHasTouchedGround)
         {
            param1.§_-0Dc§(this.§_-L8§.MIGHTY_EAGLE_ROTATION_SPEED * param2);
            _loc4_ = -1;
            if(this.§_-04N§)
            {
               this.§_-04N§ = false;
               this.§_-6A§.§_-07i§();
               param1.§_-Dv§(§_-a2§.§_-lC§);
               this.mSardineCanAdded = false;
               param1.§_-U-§.§_-PZ§ = true;
               param1.§_-U-§.§_-JE§();
               for each(_loc5_ in this.§_-Tx§)
               {
                  if(_loc5_ && _loc5_.§_-Es§())
                  {
                     _loc5_.§_-SJ§().SetAwake(true);
                     _loc5_.§_-SJ§().SetLinearVelocity(new b2Vec2(0,-18));
                  }
               }
               this.§_-qr§();
            }
            if(this.mMightyEagleTimer > 6000 && this.isPigsAlive())
            {
               for each(_loc5_ in this.§_-Tx§)
               {
                  if(_loc5_ && _loc5_.§_-Es§())
                  {
                     _loc5_.applyDamage(_loc5_.§_-8l§ * 2,true,true,true);
                  }
               }
            }
         }
         else
         {
            this.mMightyEagleHasTouchedGround = param1.§_-SJ§().GetPosition().y >= -5.5;
            this.§_-04N§ = this.mMightyEagleHasTouchedGround;
         }
         param1.§_-QU§(param2,new Point(this.§_-L8§.MIGHTY_EAGLE_X_DIRECTION,_loc4_ * this.§_-L8§.MIGHTY_EAGLE_Y_CHANGE),this.§_-L8§.MIGHTY_EAGLE_FLYING_SPEED);
         return false;
      }
      
      private function §_-XM§() : void
      {
         var _loc1_:§_-wS§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§_-eZ§ = null;
         var _loc7_:int = 0;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         while(this.§_-ll§.length > 0)
         {
            _loc1_ = this.§_-ll§.shift();
            _loc2_ = _loc1_.§_-0EY§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            for each(_loc6_ in this.§_-Tx§)
            {
               _loc8_ = _loc6_.§_-SJ§().GetPosition().x - _loc3_;
               _loc9_ = _loc6_.§_-SJ§().GetPosition().y - _loc4_;
               if((_loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)) <= _loc1_.§_-0EY§)
               {
                  _loc11_ = _loc1_.push;
                  if(_loc10_ > 1)
                  {
                     _loc11_ /= _loc10_;
                  }
                  if(_loc10_ > 0)
                  {
                     _loc12_ = _loc11_ * (_loc8_ / _loc10_);
                     _loc13_ = _loc11_ * (_loc9_ / _loc10_);
                     _loc6_.§_-SJ§().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
                  }
               }
               if(_loc10_ <= _loc1_.§_-Lf§)
               {
                  _loc14_ = _loc5_;
                  if(_loc10_ > 1)
                  {
                     _loc14_ /= _loc10_;
                  }
                  _loc6_.applyDamage(_loc14_,false,false,false,true);
               }
            }
            this.§_-6A§.particles.§_-0EQ§(this.§_-OJ§(_loc1_.type),§_-Zc§.§_-MP§,§_-Hv§.§_-4y§,_loc3_,_loc4_,600,"",§_-Hv§.§_-bP§,0,0,0,0,1,20,true);
            _loc7_ = 30;
            while(_loc7_ < 150)
            {
               _loc15_ = 0.75 * _loc2_ + Math.random() * _loc2_;
               _loc16_ = 1250 + Math.random() * 750;
               _loc17_ = _loc7_ / (180 / Math.PI);
               this.§_-6A§.particles.§_-0EQ§(§_-Hv§.§_-Qs§,§_-Zc§.§_-MP§,§_-Hv§.§_-vg§,_loc3_,_loc4_,_loc16_,"",§_-Hv§.§_-bP§,_loc15_ * Math.cos(_loc17_),-_loc15_ * Math.sin(_loc17_),20,0);
               _loc7_ += 5;
            }
         }
      }
      
      protected function §_-OJ§(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §_-Hv§.§_-09R§;
      }
      
      public function §_-09C§(param1:Number) : void
      {
         var _loc2_:§_-eZ§ = null;
         var _loc3_:int = this.§_-Tx§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§_-Tx§[_loc3_];
            if(_loc2_.§_-21§())
            {
               if(this.§_-0Bu§(_loc2_,param1))
               {
                  this.§_-Fq§(_loc3_,false,false,false);
               }
            }
            else if(_loc2_.§_-rN§())
            {
               this.§_-Sc§(_loc2_,param1);
            }
            else if(this.§_-db§(_loc2_))
            {
               _loc2_.§_-Dv§(§_-a2§.§_-05f§);
               this.§_-Fq§(_loc3_,false,false,false);
            }
            else if(_loc2_.isReadyToBeRemoved(param1))
            {
               _loc2_.§_-Dv§(§_-a2§.§_-05f§);
               this.§_-Fq§(_loc3_,false,true,true);
            }
            else if(_loc2_.§_-ye§())
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         this.§_-XM§();
      }
      
      private function §_-qr§() : void
      {
         var _loc1_:§_-06y§ = null;
         for each(_loc1_ in this.§_-T3§)
         {
            this.§_-6A§.mLevelEngine.mWorld.§_-r5§(_loc1_.§_-0C3§);
         }
      }
      
      public function §_-At§() : Boolean
      {
         var _loc2_:§_-eZ§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§_-Tx§.length)
         {
            _loc2_ = this.§_-Tx§[_loc1_];
            if(_loc2_.explode())
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §_-db§(param1:§_-eZ§) : Boolean
      {
         if(param1 && param1.§_-zm§.§_-MF§() != §_-au§.§_-cU§ && this.§_-6A§.§_-Uv§.§_-h3§(param1.§_-SJ§().GetPosition().x,param1.§_-SJ§().GetPosition().y))
         {
            return true;
         }
         return false;
      }
      
      public function §_-Fq§(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc6_:§_-06y§ = null;
         var _loc7_:§_-023§ = null;
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:§_-eZ§;
         if((_loc5_ = this.§_-Tx§[param1]).§_-Es§())
         {
            ++this.§_-25§;
         }
         else if(_loc5_.§_-ye§())
         {
            --this.§_-09e§;
         }
         if(_loc5_ == this.§_-6A§.activeObject)
         {
            this.§_-6A§.activeObject = null;
         }
         if(param2)
         {
            this.§_-6A§.addScore(_loc5_.§_-zm§.score,§_-40§.§_-H-§,true,_loc5_.§_-SJ§().GetPosition().x,_loc5_.§_-SJ§().GetPosition().y - 3,§_-Hv§.§_-04e§(_loc5_.§_-o2§));
         }
         if(param3)
         {
            this.addDestructionParticles(_loc5_,this.§_-6A§.particles);
         }
         if(param4)
         {
            this.§_-hO§(_loc5_);
         }
         if(!_loc5_.isTexture())
         {
         }
         this.§_-0F4§(_loc5_.sprite);
         this.§_-0Bs§(_loc5_);
         for each(_loc6_ in this.§_-T3§)
         {
            if(_loc6_.index1 >= param1)
            {
               --_loc6_.index1;
            }
            if(_loc6_.index2 >= param1)
            {
               --_loc6_.index2;
            }
         }
         for each(_loc7_ in this.§_-CA§)
         {
            if(_loc7_.id1 == param1)
            {
               _loc7_.§_-Ux§ = true;
            }
            if(_loc7_.id1 >= param1)
            {
               --_loc7_.id1;
            }
         }
         _loc5_.dispose();
         _loc5_ = null;
         this.§_-Tx§[param1] = null;
         this.§_-Tx§.splice(param1,1);
      }
      
      protected function addDestructionParticles(param1:§_-eZ§, param2:§_-Zc§) : void
      {
         param1.addDestructionParticles(param2);
      }
      
      private function §_-0F4§(param1:Sprite) : void
      {
         if(this.§_-lS§.contains(param1))
         {
            this.§_-lS§.removeChild(param1);
            return;
         }
         if(this.§_-wx§.contains(param1))
         {
            this.§_-wx§.removeChild(param1);
            return;
         }
         if(this.§_-Sh§.contains(param1))
         {
            this.§_-Sh§.removeChild(param1);
            return;
         }
         if(this.§_-Xz§.contains(param1))
         {
            this.§_-Xz§.removeChild(param1);
            return;
         }
      }
      
      protected function §_-hO§(param1:§_-eZ§) : void
      {
         if(param1.§_-r3§().toUpperCase() == "WHITE_EGG" || param1.§_-md§())
         {
            if(param1.§_-o2§.toUpperCase() == §_-07D§.§_-oJ§)
            {
               this.addExplosions(§_-wS§.§_-zO§,param1.§_-SJ§().GetPosition().x,param1.§_-SJ§().GetPosition().y);
            }
            else
            {
               this.addExplosions(§_-wS§.§_-e8§,param1.§_-SJ§().GetPosition().x,param1.§_-SJ§().GetPosition().y);
            }
         }
      }
      
      public function §_-zn§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.§_-Fq§(this.§_-Tx§.indexOf(param1),param2,param3,param4);
      }
      
      public function §_-12§(param1:Number, param2:Number) : void
      {
         this.§_-Rn§.x = -param1;
         this.§_-Rn§.y = -param2;
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc3_:§_-eZ§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-Tx§.length)
         {
            _loc3_ = this.§_-Tx§[_loc2_] as §_-eZ§;
            if(_loc3_ && _loc3_.§_-Es§() && _loc3_.§_-Kh§ > 0)
            {
               if(!param1 || _loc3_.§_-U-§.mTryToBlink <= 0 && _loc3_.§_-U-§.mTryToScream <= 0)
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §_-yq§(param1:Boolean = false) : int
      {
         var _loc4_:§_-eZ§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§_-Tx§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§_-Tx§[_loc3_] as §_-eZ§) && _loc4_.§_-Es§() && _loc4_.§_-Kh§ > 0)
            {
               if(!param1 || _loc4_.§_-U-§.mTryToBlink <= 0 && _loc4_.§_-U-§.mTryToScream <= 0)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function §_-LX§() : int
      {
         var _loc2_:§_-eZ§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§_-Tx§)
         {
            if(_loc2_ && (_loc2_.§_-KD§() || _loc2_.§_-oj§()))
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §_-05A§() : int
      {
         var _loc2_:§_-eZ§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§_-Tx§)
         {
            if(_loc2_ && _loc2_.isTexture())
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function makePigsSmile(param1:Number = 1) : void
      {
         var _loc3_:§_-eZ§ = null;
         var _loc2_:int = this.§_-Tx§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§_-Tx§[_loc2_];
            if(_loc3_ && _loc3_.§_-Es§() && _loc3_.§_-Kh§ > 0)
            {
               _loc3_.§_-U-§.mTryToScream = §_-05W§.§_-0C9§ * param1;
            }
            _loc2_--;
         }
      }
      
      public function §_-7f§() : Boolean
      {
         var _loc2_:§_-eZ§ = null;
         var _loc1_:int = this.§_-Tx§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§_-Tx§[_loc1_] as §_-eZ§;
            if(_loc2_ && _loc2_.§_-ye§() && _loc2_.§_-Kh§ > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:§_-eZ§ = null;
         var _loc1_:int = this.§_-Tx§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§_-Tx§[_loc1_] as §_-eZ§;
            if(_loc2_ && _loc2_.§_-Kh§ > 0 && _loc2_.§_-kD§ != §_-0-A§.§_-k9§)
            {
               if(_loc2_.§_-r-§() && !_loc2_.§_-01F§())
               {
                  return false;
               }
               if(_loc2_.§_-ye§() && _loc2_.§_-Kh§ > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §_-6f§(param1:Boolean = false) : §_-eZ§
      {
         var _loc5_:int = 0;
         var _loc6_:§_-eZ§ = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = this.§_-Tx§.length;
         var _loc3_:int = 1 + Math.random() * this.§_-yq§(param1);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               if((_loc6_ = this.§_-Tx§[_loc5_]) && _loc6_.§_-Es§() && _loc6_.§_-Kh§ > 0)
               {
                  if(!param1 || _loc6_.§_-U-§.mTryToBlink <= 0 && _loc6_.§_-U-§.mTryToScream <= 0)
                  {
                     _loc4_++;
                     if(_loc4_ >= _loc3_)
                     {
                        return _loc6_;
                     }
                  }
               }
               _loc5_++;
            }
         }
         return null;
      }
      
      public function §_-LO§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.§_-Tx§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ += (this.§_-Tx§[_loc2_] as §_-eZ§).§_-zm§.score;
            if((this.§_-Tx§[_loc2_] as §_-eZ§).§_-r-§())
            {
               _loc1_ += §_-00u§.§_-KE§.getValue() * int((this.§_-Tx§[_loc2_] as §_-eZ§).§_-8l§);
            }
            _loc2_--;
         }
         return int(_loc1_ + this.§_-6A§.slingshot.§_-LO§());
      }
      
      public function §_-6k§(param1:§_-eZ§, param2:§_-eZ§) : Boolean
      {
         if(param1.§_-ye§() && param2.§_-ye§())
         {
            return true;
         }
         if(!param1.§_-Xw§() && !param2.§_-Xw§())
         {
            return true;
         }
         return false;
      }
      
      public function §_-87§() : void
      {
         this.mSardineCanAdded = true;
         this.§_-09e§ = 0;
      }
      
      public function §_-ra§(param1:§_-eZ§, param2:§_-eZ§) : Boolean
      {
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         if(this.mMightyEagleAdded)
         {
            if(param1.§_-rN§() || param2.§_-Es§())
            {
               param2.applyDamage(param2.§_-8l§ * 2,true,true,true,false);
               return true;
            }
            if(param2.§_-rN§() || param1.§_-Es§())
            {
               param1.applyDamage(param1.§_-8l§ * 2,true,true,true,false);
               return true;
            }
         }
         else if(this.mSardineCanAdded && this.mMightyEagleTimer == this.§_-L8§.MIGHTY_EAGLE_WAIT_TIME)
         {
            if(param1.§_-21§() || param2.§_-21§())
            {
               this.mMightyEagleTimer = 0;
            }
         }
         if(this.§_-6k§(param1,param2))
         {
            return false;
         }
         var _loc4_:Number = param1.§_-kB§(param2.§_-r3§());
         var _loc5_:Number = param1.§_-09j§(param2.§_-r3§());
         var _loc6_:Number = param2.§_-kB§(param1.§_-r3§());
         var _loc7_:Number = param2.§_-09j§(param1.§_-r3§());
         var _loc8_:Number = param1.§_-SJ§().GetMass() * param1.§_-SJ§().GetLinearVelocity().x - param2.§_-SJ§().GetMass() * param2.§_-SJ§().GetLinearVelocity().x;
         var _loc9_:Number = param1.§_-SJ§().GetMass() * param1.§_-SJ§().GetLinearVelocity().y - param2.§_-SJ§().GetMass() * param2.§_-SJ§().GetLinearVelocity().y;
         var _loc10_:Number = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / 10;
         var _loc11_:Number = _loc4_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc10_;
         var _loc13_:Number = Math.max(0,param1.§_-Kh§);
         var _loc14_:Number = Math.max(0,param2.§_-Kh§);
         var _loc15_:Number = param1.applyDamage(_loc12_,true,param2.§_-ye§(),_loc14_ == param2.§_-8l§);
         var _loc16_:Number = param2.applyDamage(_loc11_,true,param1.§_-ye§(),_loc13_ == param1.§_-8l§);
         if(_loc15_ <= 0 && _loc12_ != 0)
         {
            if((_loc18_ = (_loc18_ = (_loc12_ - _loc13_) / _loc12_) * _loc7_) > 1)
            {
               _loc18_ = 1;
            }
            param2.§_-jc§(new b2Vec2(param2.§_-SJ§().GetLinearVelocity().x * _loc18_,param2.§_-SJ§().GetLinearVelocity().y * _loc18_));
         }
         if(_loc16_ <= 0 && _loc11_ != 0)
         {
            if((_loc19_ = (_loc19_ = (_loc11_ - _loc14_) / _loc11_) * _loc5_) > 1)
            {
               _loc19_ = 1;
            }
            param1.§_-jc§(new b2Vec2(param1.§_-SJ§().GetLinearVelocity().x * _loc19_,param1.§_-SJ§().GetLinearVelocity().y * _loc19_));
         }
         return _loc15_ <= 0 && _loc16_ <= 0;
      }
      
      public function §_-Fi§() : void
      {
         var _loc2_:§_-eZ§ = null;
         var _loc1_:int = this.§_-Tx§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§_-Tx§[_loc1_] as §_-eZ§;
            if(_loc2_ != null && _loc2_.§_-Es§())
            {
               this.§_-Fq§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §_-S9§() : void
      {
         var _loc2_:§_-eZ§ = null;
         var _loc1_:int = this.§_-Tx§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§_-Tx§[_loc1_] as §_-eZ§;
            if(_loc2_ != null && _loc2_.§_-md§())
            {
               this.§_-Fq§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §_-7F§() : int
      {
         return this.§_-Tx§.length;
      }
      
      public function §_-U6§(param1:§_-bm§) : void
      {
         var _loc4_:§_-eZ§ = null;
         var _loc5_:§_-CE§ = null;
         var _loc6_:§_-fi§ = null;
         var _loc7_:§_-06y§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§_-Tx§.length)
         {
            if((_loc4_ = this.§_-Tx§[_loc2_]).§_-ON§)
            {
               if(!_loc4_.isGround())
               {
                  (_loc5_ = new §_-CE§()).angle = _loc4_.§_-NN§();
                  _loc5_.id = _loc4_.§_-o2§;
                  _loc5_.x = _loc4_.§_-SJ§().GetPosition().x;
                  _loc5_.y = _loc4_.§_-SJ§().GetPosition().y;
                  _loc5_.uniqueID = _loc4_.uniqueID;
                  param1.addObject(_loc5_);
               }
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§_-T3§.length)
         {
            _loc7_ = this.§_-T3§[_loc3_];
            _loc6_ = new §_-fi§(_loc7_.type,_loc7_.index1,_loc7_.index2,_loc7_.point1,_loc7_.point2,_loc7_.§_-v7§,_loc7_.§_-Wm§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§_-5R§,_loc7_.motorSpeed,_loc7_.§_-01R§,_loc7_.maxTorque);
            param1.§ try§(_loc6_);
            _loc3_++;
         }
      }
      
      public function §_-3z§() : void
      {
         var _loc1_:int = 0;
         while(this.§_-Tx§.length > _loc1_)
         {
            if(this.§_-Tx§[_loc1_].isGround())
            {
               _loc1_++;
            }
            else
            {
               this.§_-zn§(this.§_-Tx§[_loc1_]);
            }
         }
      }
      
      public function §_-wL§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§_-Tx§.length)
         {
            if(this.§_-Tx§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§_-Tx§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         this.§_-cK§ = param1;
         this.§_-F§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§_-Tx§.length)
         {
            if(this.§_-Tx§[_loc2_].isTexture())
            {
               this.§_-Tx§[_loc2_].sprite.visible = !this.§_-cK§;
            }
            _loc2_++;
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         this.§_-tf§ = param1;
      }
      
      public function §_-5u§() : Boolean
      {
         return this.§_-tf§;
      }
      
      public function §_-0Ds§() : int
      {
         return this.§_-09T§;
      }
      
      public function §_-Nw§() : int
      {
         return this.§_-25§;
      }
      
      public function §_-ec§(param1:String) : §_-eZ§
      {
         var _loc3_:§_-eZ§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-Tx§.length)
         {
            _loc3_ = this.§_-Tx§[_loc2_] as §_-eZ§;
            if(_loc3_.uniqueID == param1)
            {
               return _loc3_;
            }
            _loc2_++;
         }
         return null;
      }
   }
}
