package §_-u§
{
   import §_-1P§.§_-XN§;
   import §_-2V§.§_-Qb§;
   import §_-2V§.§_-iY§;
   import §_-9z§.b2Vec2;
   import §_-DS§.§_-Aa§;
   import §_-DS§.§_-t0§;
   import §_-EH§.b2Fixture;
   import §_-H2§.§_-Wq§;
   import §_-H2§.§_-Z§;
   import §_-H2§.§_-fm§;
   import §_-H2§.§_-i7§;
   import §_-H2§.§_-pd§;
   import §_-S4§.Texture;
   import §_-Su§.§_-Xk§;
   import §_-am§.§_-XJ§;
   import §_-pF§.Sprite;
   import §_-pF§.§_-gY§;
   import §_-rp§.§_-c5§;
   import §_-rp§.§_-lD§;
   import §_-rp§.§_-lz§;
   import §_-wa§.§ try§;
   import §_-wa§.§_-Zg§;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §_-Av§
   {
       
      
      private var §_-Ki§:Vector.<§_-5Q§>;
      
      protected var §_-Vw§:int;
      
      public var §_-fE§:§_-c5§;
      
      public var mActivateSpecialPower:Boolean;
      
      public var mExplodePreviousActiveObjectOnNextClick:Boolean = false;
      
      public var §_-9s§:Vector.<§_-0I§>;
      
      private var §_-5S§:Sprite;
      
      private var §_-4J§:Sprite;
      
      private var §_-Ak§:Vector.<Texture>;
      
      private var §_-IM§:Vector.<§ try§>;
      
      private var §_-G4§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §_-oz§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      private var §_-sG§:Boolean = false;
      
      private var §_-d4§:Number = 0.07;
      
      private var §_-vq§:Boolean = true;
      
      private var §_-Sn§:Boolean = true;
      
      public function §_-Av§(param1:§_-c5§, param2:§_-Xk§, param3:Sprite)
      {
         var _loc6_:§_-Zg§ = null;
         var _loc7_:§ try§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§_-5Q§ = null;
         var _loc11_:§_-5Q§ = null;
         this.§_-Ki§ = new Vector.<§_-5Q§>();
         this.§_-9s§ = new Vector.<§_-0I§>();
         this.§_-Ak§ = new Vector.<Texture>();
         super();
         this.§_-fE§ = param1;
         this.§_-Vw§ = 0;
         this.§_-4J§ = param3;
         this.§_-4J§.§_-7e§ = false;
         this.§_-Sn§ = true;
         this.§_-vq§ = true;
         this.§_-5S§ = new Sprite();
         this.§_-4J§.addChild(this.§_-5S§);
         var _loc4_:§_-Qb§;
         if((_loc4_ = §_-iY§.§_-s3§(param2.§_-Of§)) == null)
         {
            param2.§_-Of§ = "BACKGROUND_BLUE_GRASS";
            _loc4_ = §_-iY§.§_-s3§(param2.§_-Of§);
         }
         this.§_-Iq§(§_-iY§.§_-s3§(param2.§_-Of§).§_-Ui§,(this.§_-fE§.§_-tB§.§_-M1§ + this.§_-fE§.§_-tB§.§_-Kt§) / 2,this.§_-fE§.§_-tB§.§_-JX§ + §_-lD§.§_-q0§);
         var _loc5_:int = this.§_-Ki§.length;
         for each(_loc6_ in param2.§_-X5§)
         {
            this.§_-Iq§(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle);
         }
         this.§_-wX§();
         this.§_-D6§(true);
         this.mActivateSpecialPower = false;
         this.§_-IM§ = param2.§_-IM§;
         for each(_loc7_ in param2.§_-IM§)
         {
            _loc8_ = _loc7_.index1 + _loc5_;
            _loc9_ = _loc7_.index2 + _loc5_;
            _loc10_ = this.§_-Ki§[_loc8_];
            _loc11_ = this.§_-Ki§[_loc9_];
            if(!(_loc10_ && _loc11_))
            {
               throw new Error("Joint index out of bounds [" + _loc8_ + ", " + _loc9_ + "]");
            }
            _loc7_.§_-Cg§ = this.§_-fE§.§_-dl§.§_-VH§.§_-wT§(_loc7_.§_-oi§(_loc10_,_loc11_));
         }
      }
      
      public function get §_-K9§() : Sprite
      {
         return this.§_-4J§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§_-Ki§.length > 0)
         {
            this.§_-jn§(0);
         }
         this.§_-Ki§ = null;
         if(this.§_-4J§)
         {
            this.§_-4J§.dispose();
            this.§_-4J§ = null;
            this.§_-5S§ = null;
         }
         while(this.§_-Ak§.length > 0)
         {
            _loc1_ = this.§_-Ak§.pop();
            this.§_-fE§.§_-2I§.§_-8o§(_loc1_);
         }
      }
      
      private function §_-D6§(param1:Boolean) : void
      {
         this.§_-5S§.visible = param1;
      }
      
      private function §_-wX§() : void
      {
         var _loc3_:§_-5Q§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§_-gY§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§_-5Q§> = new Vector.<§_-5Q§>();
         for each(_loc3_ in this.§_-Ki§)
         {
            if(_loc3_.isTexture())
            {
               _loc2_.push(_loc3_);
               _loc4_ = _loc3_.sprite.getBounds(this.§_-4J§);
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
            this.§_-ef§(_loc10_.rect,_loc10_,_loc5_);
            _loc11_ = this.§_-DA§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
            _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc12_ = this.§_-fE§.§_-2I§.§_-8R§(_loc10_);
            this.§_-Ak§.push(_loc12_);
            (_loc13_ = new §_-gY§(_loc12_)).x = _loc8_ / _loc5_;
            _loc13_.y = _loc9_ / _loc5_;
            _loc13_.scaleX = 1 / _loc5_;
            _loc13_.scaleY = 1 / _loc5_;
            this.§_-5S§.addChild(_loc13_);
            _loc11_.dispose();
         }
      }
      
      private function §_-DA§(param1:Vector.<§_-5Q§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§_-5Q§ = null;
         var _loc11_:§_-fm§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§_-jU§.shape).§_-7l§();
            _loc13_ = new Rectangle(_loc12_[0].x / §_-c5§.§_-Wa§ * param6,_loc12_[0].y / §_-c5§.§_-Wa§ * param6,(_loc12_[1].x - _loc12_[0].x) / §_-c5§.§_-Wa§ * param6,(_loc12_[1].y - _loc12_[0].y) / §_-c5§.§_-Wa§ * param6);
            _loc10_.identity();
            _loc10_.scale(_loc13_.width,_loc13_.height);
            _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
            _loc10_.rotate((360 - _loc7_.§_-aU§()) / 180 * Math.PI);
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            _loc8_.draw(_loc9_,_loc10_);
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      private function §_-ef§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.§_-fE§.§_-Hu§.§_-Fr§();
         var _loc5_:§_-XN§;
         if(_loc5_ = this.§_-fE§.§_-2I§.§_-wz§(_loc4_))
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
      
      public function §_-AT§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true) : §_-5Q§
      {
         var _loc9_:§_-5Q§ = null;
         switch(param2)
         {
            case "BIRD_BLACK":
               _loc9_ = new §_-02§(this,param1,this.§_-fE§.§_-dl§.§_-VH§,this.§_-fE§,this.§_-Vw§,param2,param3,param4,param5);
               break;
            case "BIRD_BLUE":
               _loc9_ = new §_-m9§(this,param1,this.§_-fE§.§_-dl§.§_-VH§,this.§_-fE§,this.§_-Vw§,param2,param3,param4,param5,param8);
               break;
            case "BIRD_GREEN":
               _loc9_ = new §_-fb§(this,param1,this.§_-fE§.§_-dl§.§_-VH§,this.§_-fE§,this.§_-Vw§,param2,param3,param4,param5);
               break;
            case "BIRD_WHITE":
               _loc9_ = new §_-ch§(this,param1,this.§_-fE§.§_-dl§.§_-VH§,this.§_-fE§,this.§_-Vw§,param2,param3,param4,param5);
               break;
            case "BIRD_YELLOW":
               _loc9_ = new §_-fQ§(this,param1,this.§_-fE§.§_-dl§.§_-VH§,this.§_-fE§,this.§_-Vw§,param2,param3,param4,param5);
               break;
            default:
               _loc9_ = new §_-5j§(this,param1,this.§_-fE§.§_-dl§.§_-VH§,this.§_-fE§,this.§_-Vw§,param2,param3,param4,param5);
         }
         return _loc9_;
      }
      
      public function §_-Iq§(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true) : §_-5Q§
      {
         var _loc9_:§_-5Q§ = null;
         var _loc10_:§_-Wq§ = null;
         var _loc8_:Sprite = new Sprite();
         if(param1.indexOf("BIRD") == 0)
         {
            _loc9_ = this.§_-AT§(_loc8_,param1,param2,param3,param4,param5,param6,param7);
         }
         else if(param1.indexOf("PIG") == 0)
         {
            _loc9_ = new §_-jT§(this,_loc8_,this.§_-fE§.§_-dl§.§_-VH§,this.§_-fE§,this.§_-Vw§,param1,param2,param3,param4);
         }
         else
         {
            if((_loc10_ = §_-Z§.§_-5d§(param1)) == null && param1.indexOf("MISC_") == 0)
            {
               param1 = "MISC_FOOD_" + param1.substring(5);
               _loc10_ = §_-Z§.§_-5d§(param1);
            }
            if(_loc10_.§_-i§ == §_-Wq§.§_-aF§ || _loc10_.§_-i§ == §_-Wq§.§_-uC§)
            {
               _loc9_ = new §_-Uq§(this,_loc8_,this.§_-fE§.§_-dl§.§_-VH§,this.§_-fE§,this.§_-Vw§,param1,param2,param3,param4);
            }
            else
            {
               _loc9_ = new §_-5Q§(this,_loc8_,this.§_-fE§.§_-dl§.§_-VH§,this.§_-fE§,this.§_-Vw§,param1,param2,param3,param4);
            }
         }
         if(_loc9_.isTexture())
         {
            _loc8_.visible = !this.§_-vq§;
            this.§_-Ki§[this.§_-Ki§.length] = _loc9_;
         }
         else
         {
            this.§_-Ki§[this.§_-Ki§.length] = _loc9_;
         }
         if(_loc9_ is §_-5j§ && !_loc9_.§ var§())
         {
            this.§_-4J§.addChildAt(_loc8_,0);
         }
         else
         {
            this.§_-4J§.addChild(_loc8_);
         }
         if(param5)
         {
            this.§_-fE§.§_-Ik§(_loc9_);
         }
         if(param6)
         {
            this.§_-fE§.mActiveObject = _loc9_;
         }
         return _loc9_;
      }
      
      public function §_-re§() : void
      {
         var _loc2_:§_-5Q§ = null;
         var _loc1_:int = this.§_-Ki§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§_-Ki§[_loc1_] as §_-5Q§;
            if(_loc2_)
            {
               if(_loc2_.§_-c8§ <= 0)
               {
                  this.§_-jn§(_loc1_,true,true,true);
               }
               else
               {
                  _loc2_.§_-N5§();
                  _loc2_.§_-Uf§();
               }
            }
            _loc1_--;
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         this.§_-9s§.push(§_-0I§.§_-cP§(param1,param2,param3));
         §_-XJ§.§_-aW§("TntExplosions","ChannelExplosions");
      }
      
      public function §_-kY§(param1:Number, param2:Number) : int
      {
         var _loc4_:§_-5Q§ = null;
         var _loc3_:int = this.§_-Ki§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§_-Ki§[_loc3_])
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
      
      public function §_-PN§(param1:Number, param2:Number) : §_-5Q§
      {
         var _loc4_:§_-5Q§ = null;
         var _loc3_:int = this.§_-Ki§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§_-Ki§[_loc3_])
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
      
      public function getObject(param1:int) : §_-5Q§
      {
         return this.§_-Ki§[param1];
      }
      
      public function §_-bE§(param1:Number, param2:Number) : void
      {
         var _loc4_:§_-5Q§ = null;
         var _loc3_:int = this.§_-Ki§.length - 1;
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§_-Ki§[_loc3_] as §_-5Q§).§_-bE§(param2,param1);
            _loc3_--;
         }
      }
      
      private function §_-TI§(param1:§_-5Q§, param2:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§_-5Q§ = null;
         if(!this.mSardineCanAdded)
         {
            return true;
         }
         if(this.mMightyEagleAdded)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         if(param1.§_-c8§ == param1.§_-gA§)
         {
            if(this.§_-d4§ < §_-lz§.§_-9I§)
            {
               this.§_-d4§ += param2 * §_-lz§.§_-p3§;
            }
            param1.§_-t9§().§_-gP§(param2 * this.§_-d4§);
         }
         if(param1.§_-Vm§() || this.§_-Yb§(param1))
         {
            if(this.mMightyEagleTimer < §_-lz§.§_-UU§)
            {
               _loc4_ = this.mMightyEagleTimer + param2;
               if(this.mMightyEagleTimer < §_-lz§.§_-En§ && _loc4_ > §_-lz§.§_-En§)
               {
                  §_-XJ§.§_-aW§("Mighty_Eagle_Selected_1","ChannelBird");
                  §_-XJ§.§_-aW§("Mighty_Eagle_Flying_1","ChannelBird");
               }
               if(_loc4_ >= §_-lz§.§_-UU§)
               {
                  _loc5_ = param1.§_-t9§().GetPosition().x - §_-lz§.§_-Hy§;
                  _loc6_ = param1.§_-t9§().GetPosition().y - §_-lz§.§_-Hy§ * §_-lz§.§_-Yq§ * 1.07;
                  if(this.§_-Yb§(param1))
                  {
                     _loc3_ = true;
                  }
                  _loc7_ = this.§_-Iq§("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,§_-lz§.§_-6O§ * 1.2);
                  this.mMightyEagleAdded = true;
                  _loc7_.§use§.§_-PE§(1.82);
               }
               this.mMightyEagleTimer = _loc4_;
            }
         }
         return _loc3_;
      }
      
      private function §_-k3§(param1:§_-5Q§, param2:Number) : Boolean
      {
         var _loc5_:§_-5Q§ = null;
         if(!this.§_-sG§ && this.mMightyEagleTimer > §_-lz§.§_-ct§)
         {
            this.§_-sG§ = true;
            this.§_-fE§.§_-8b§();
         }
         this.mMightyEagleTimer += param2;
         this.§_-fE§.§_-AC§.§_-RE§(§_-Aa§.§_-GF§,§_-t0§.§_-FQ§,§_-Aa§.include,param1.§_-t9§().GetPosition().x - 3 + Math.random() * (3 * 2),param1.§_-t9§().GetPosition().y - 3 + Math.random() * (3 * 2),2500,"",§_-Aa§.§_-Am§(param1.§_-s7§),0,0,0,0,4);
         var _loc4_:int = 1;
         if(this.mMightyEagleHasTouchedGround)
         {
            param1.§_-RI§(§_-lz§.§_-Yz§ * param2);
            _loc4_ = -1;
            if(this.§_-oz§)
            {
               this.§_-oz§ = false;
               this.§_-fE§.§_-h5§();
               param1.§_-5E§(§_-i7§.§_-NC§);
               this.mSardineCanAdded = false;
               param1.§use§.§_-2f§ = true;
               param1.§use§.§_-nJ§();
               for each(_loc5_ in this.§_-Ki§)
               {
                  if(_loc5_ && _loc5_.§_-3E§())
                  {
                     _loc5_.§_-t9§().SetAwake(true);
                     _loc5_.§_-t9§().SetLinearVelocity(new b2Vec2(0,-18));
                  }
               }
               this.§_-Dp§();
            }
            if(this.mMightyEagleTimer > 6000 && this.isPigsAlive())
            {
               for each(_loc5_ in this.§_-Ki§)
               {
                  if(_loc5_ && _loc5_.§_-3E§())
                  {
                     _loc5_.applyDamage(_loc5_.§_-gA§ * 2,true,true,true);
                  }
               }
            }
         }
         else
         {
            this.mMightyEagleHasTouchedGround = param1.§_-t9§().GetPosition().y >= -5.5;
            this.§_-oz§ = this.mMightyEagleHasTouchedGround;
         }
         param1.§_-Cw§(param2,new Point(1,_loc4_ * §_-lz§.§_-Yq§),§_-lz§.§_-mw§);
         return false;
      }
      
      private function §_-Gt§() : void
      {
         var _loc1_:§_-0I§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§_-5Q§ = null;
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
         while(this.§_-9s§.length > 0)
         {
            _loc1_ = this.§_-9s§.shift();
            _loc2_ = _loc1_.§_-VW§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.§_-i9§;
            for each(_loc6_ in this.§_-Ki§)
            {
               _loc8_ = _loc6_.§_-t9§().GetPosition().x - _loc3_;
               _loc9_ = _loc6_.§_-t9§().GetPosition().y - _loc4_;
               if((_loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)) <= _loc1_.§_-VW§)
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
                     _loc6_.§_-t9§().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
                  }
               }
               if(_loc10_ <= _loc1_.§_-s2§)
               {
                  _loc14_ = _loc5_;
                  if(_loc10_ > 1)
                  {
                     _loc14_ /= _loc10_;
                  }
                  _loc6_.applyDamage(_loc14_,false);
               }
            }
            this.§_-fE§.§_-AC§.§_-RE§(§_-Aa§.§_-PO§,§_-t0§.§_-FQ§,§_-Aa§.§_-TF§,_loc3_,_loc4_,600,"",§_-Aa§.§_-lB§);
            _loc7_ = 30;
            while(_loc7_ < 150)
            {
               _loc15_ = 0.75 * _loc2_ + Math.random() * _loc2_;
               _loc16_ = 1250 + Math.random() * 750;
               _loc17_ = _loc7_ / (180 / Math.PI);
               this.§_-fE§.§_-AC§.§_-RE§(§_-Aa§.§_-fV§,§_-t0§.§_-FQ§,§_-Aa§.include,_loc3_,_loc4_,_loc16_,"",§_-Aa§.§_-lB§,_loc15_ * Math.cos(_loc17_),-_loc15_ * Math.sin(_loc17_),20,0);
               _loc7_ += 5;
            }
         }
      }
      
      public function §_-X3§(param1:Number) : void
      {
         var _loc4_:§_-5Q§ = null;
         var _loc2_:§_-5Q§ = null;
         var _loc3_:int = this.§_-Ki§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§_-Ki§[_loc3_];
            if(_loc2_.§_-Mk§())
            {
               if(this.§_-TI§(_loc2_,param1))
               {
                  this.§_-jn§(_loc3_,false,false,false);
               }
            }
            else if(_loc2_.§ var§())
            {
               this.§_-k3§(_loc2_,param1);
            }
            else if(this.§_-Yb§(_loc2_))
            {
               _loc2_.§_-5E§(§_-i7§.§_-i2§);
               this.§_-jn§(_loc3_,false,false,false);
            }
            else if(_loc2_.isReadyToBeRemoved(param1))
            {
               _loc2_.§_-5E§(§_-i7§.§_-i2§);
               this.§_-jn§(_loc3_,false,true,true);
            }
            else if(_loc2_.§_-Cf§())
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         this.§_-Gt§();
         if(this.mActivateSpecialPower)
         {
            (_loc4_ = this.§_-fE§.mActiveObject).activateSpecialPower(this);
            this.mActivateSpecialPower = false;
         }
      }
      
      private function §_-Dp§() : void
      {
         var _loc1_:§ try§ = null;
         for each(_loc1_ in this.§_-IM§)
         {
            this.§_-fE§.§_-dl§.§_-VH§.§_-VV§(_loc1_.§_-Cg§);
         }
      }
      
      public function explodePreviousActiveObjects() : Boolean
      {
         var _loc2_:§_-5Q§ = null;
         this.mExplodePreviousActiveObjectOnNextClick = false;
         var _loc1_:int = 0;
         while(_loc1_ < this.§_-Ki§.length)
         {
            _loc2_ = this.§_-Ki§[_loc1_];
            if(_loc2_.explode())
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §_-Yb§(param1:§_-5Q§) : Boolean
      {
         if(param1 && param1.§_-jU§.§_-6N§() != §_-pd§.§_-dU§ && this.§_-fE§.§_-tB§.§_-sx§(param1.§_-t9§().GetPosition().x,param1.§_-t9§().GetPosition().y))
         {
            return true;
         }
         return false;
      }
      
      public function §_-jn§(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:§_-5Q§;
         if((_loc5_ = this.§_-Ki§[param1]) == this.§_-fE§.mActiveObject)
         {
            this.§_-fE§.mActiveObject = null;
         }
         if(param2)
         {
            this.§_-fE§.addScore(_loc5_.§_-jU§.score,true,_loc5_.§_-t9§().GetPosition().x,_loc5_.§_-t9§().GetPosition().y - 3,§_-Aa§.§_-2H§(_loc5_.§_-s7§));
         }
         if(param3)
         {
            _loc5_.addDestructionParticles(this.§_-fE§.§_-AC§);
         }
         if(param4)
         {
            this.§_-lh§(_loc5_);
         }
         if(!_loc5_.isTexture())
         {
         }
         this.§_-4J§.removeChild(_loc5_.sprite);
         _loc5_.dispose();
         _loc5_ = null;
         this.§_-Ki§[param1] = null;
         this.§_-Ki§.splice(param1,1);
      }
      
      protected function §_-lh§(param1:§_-5Q§) : void
      {
         if(param1.§_-pP§().toUpperCase() == "WHITE_EGG" || param1.§_-pP§().toUpperCase() == "TNT")
         {
            if(param1.§_-s7§.toUpperCase() == §_-ch§.§_-pU§)
            {
               this.addExplosions(§_-0I§.§_-u2§,param1.§_-t9§().GetPosition().x,param1.§_-t9§().GetPosition().y);
            }
            else
            {
               this.addExplosions(§_-0I§.§_-Fh§,param1.§_-t9§().GetPosition().x,param1.§_-t9§().GetPosition().y);
            }
         }
      }
      
      public function §_-5H§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.§_-jn§(this.§_-Ki§.indexOf(param1),param2,param3,param4);
      }
      
      public function §_-ty§(param1:Number, param2:Number) : void
      {
         this.§_-4J§.x = -param1;
         this.§_-4J§.y = -param2;
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc3_:§_-5Q§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-Ki§.length)
         {
            _loc3_ = this.§_-Ki§[_loc2_] as §_-5Q§;
            if(_loc3_ && _loc3_.§_-3E§() && _loc3_.§_-c8§ > 0)
            {
               if(!param1 || _loc3_.§use§.mTryToBlink <= 0 && _loc3_.§use§.mTryToScream <= 0)
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §_-dG§(param1:Boolean = false) : int
      {
         var _loc4_:§_-5Q§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§_-Ki§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§_-Ki§[_loc3_] as §_-5Q§) && _loc4_.§_-3E§() && _loc4_.§_-c8§ > 0)
            {
               if(!param1 || _loc4_.§use§.mTryToBlink <= 0 && _loc4_.§use§.mTryToScream <= 0)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function makePigsSmile(param1:Number = 1) : void
      {
         var _loc3_:§_-5Q§ = null;
         var _loc2_:int = this.§_-Ki§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§_-Ki§[_loc2_];
            if(_loc3_ && _loc3_.§_-3E§() && _loc3_.§_-c8§ > 0)
            {
               _loc3_.§use§.mTryToScream = §_-iL§.§_-3F§ * param1;
            }
            _loc2_--;
         }
      }
      
      public function §_-lH§() : Boolean
      {
         var _loc2_:§_-5Q§ = null;
         var _loc1_:int = this.§_-Ki§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§_-Ki§[_loc1_] as §_-5Q§;
            if(_loc2_ && _loc2_.§_-Cf§() && _loc2_.§_-c8§ > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:§_-5Q§ = null;
         var _loc1_:int = this.§_-Ki§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§_-Ki§[_loc1_] as §_-5Q§;
            if(_loc2_ && _loc2_.§_-c8§ > 0 && _loc2_.§_-i§ != §_-Wq§.§_-x7§)
            {
               if(_loc2_.§_-Ve§() && !_loc2_.§_-Vm§())
               {
                  return false;
               }
               if(_loc2_.§_-Cf§() && _loc2_.§_-c8§ > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §_-hI§(param1:Boolean = false) : §_-5Q§
      {
         var _loc5_:int = 0;
         var _loc6_:§_-5Q§ = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = this.§_-Ki§.length;
         var _loc3_:int = 1 + Math.random() * this.§_-dG§(param1);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               if((_loc6_ = this.§_-Ki§[_loc5_]) && _loc6_.§_-3E§() && _loc6_.§_-c8§ > 0)
               {
                  if(!param1 || _loc6_.§use§.mTryToBlink <= 0 && _loc6_.§use§.mTryToScream <= 0)
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
      
      public function §_-59§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.§_-Ki§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ += (this.§_-Ki§[_loc2_] as §_-5Q§).§_-jU§.score;
            if((this.§_-Ki§[_loc2_] as §_-5Q§).§_-Ve§())
            {
               _loc1_ += §_-c5§.§_-Nk§ * int((this.§_-Ki§[_loc2_] as §_-5Q§).§_-gA§);
            }
            _loc2_--;
         }
         return _loc1_;
      }
      
      public function §_-XV§(param1:§_-5Q§, param2:§_-5Q§) : Boolean
      {
         if(param1.§_-Cf§() && param2.§_-Cf§())
         {
            return true;
         }
         if(!param1.§_-eu§() && !param2.§_-eu§())
         {
            return true;
         }
         return false;
      }
      
      public function §_-l3§(param1:b2Fixture, param2:b2Fixture) : void
      {
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc3_:§_-5Q§ = param1.GetBody().GetUserData() as §_-5Q§;
         var _loc4_:§_-5Q§ = param2.GetBody().GetUserData() as §_-5Q§;
         if(this.mMightyEagleAdded)
         {
            if(_loc3_.§ var§() || this.mMightyEagleAdded && _loc4_.§_-3E§())
            {
               _loc4_.applyDamage(_loc4_.§_-gA§ * 2,true,true,true);
               return;
            }
            if(_loc4_.§ var§() || this.mMightyEagleAdded && _loc3_.§_-3E§())
            {
               _loc3_.applyDamage(_loc3_.§_-gA§ * 2,true,true,true);
               return;
            }
         }
         else if(this.mSardineCanAdded && this.mMightyEagleTimer == §_-lz§.§_-UU§)
         {
            if(_loc3_.§_-Mk§() || _loc4_.§_-Mk§())
            {
               this.mMightyEagleTimer = 0;
            }
         }
         if(this.§_-XV§(_loc3_,_loc4_))
         {
            return;
         }
         var _loc6_:Number = _loc3_.§_-rS§(_loc4_.§_-pP§());
         var _loc7_:Number = _loc3_.§_-FP§(_loc4_.§_-pP§());
         var _loc8_:Number = _loc4_.§_-rS§(_loc3_.§_-pP§());
         var _loc9_:Number = _loc4_.§_-FP§(_loc3_.§_-pP§());
         var _loc10_:Number = _loc3_.§_-t9§().GetMass() * _loc3_.§_-t9§().GetLinearVelocity().x - _loc4_.§_-t9§().GetMass() * _loc4_.§_-t9§().GetLinearVelocity().x;
         var _loc11_:Number = _loc3_.§_-t9§().GetMass() * _loc3_.§_-t9§().GetLinearVelocity().y - _loc4_.§_-t9§().GetMass() * _loc4_.§_-t9§().GetLinearVelocity().y;
         var _loc12_:Number = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_) / 10;
         var _loc13_:Number = _loc6_ * _loc12_;
         var _loc14_:Number = _loc8_ * _loc12_;
         var _loc15_:Number = Math.max(0,_loc3_.§_-c8§);
         var _loc16_:Number = Math.max(0,_loc4_.§_-c8§);
         var _loc17_:Number = _loc3_.applyDamage(_loc14_,true,_loc4_.§_-Cf§(),_loc16_ == _loc4_.§_-gA§);
         var _loc18_:Number = _loc4_.applyDamage(_loc13_,true,_loc3_.§_-Cf§(),_loc15_ == _loc3_.§_-gA§);
         if(_loc17_ <= 0)
         {
            if((_loc20_ = (_loc20_ = (_loc14_ - _loc15_) / _loc14_) * _loc9_) > 1)
            {
               _loc20_ = 1;
            }
            _loc4_.§_-pj§(new b2Vec2(_loc4_.§_-t9§().GetLinearVelocity().x * _loc20_,_loc4_.§_-t9§().GetLinearVelocity().y * _loc20_));
         }
         if(_loc18_ <= 0)
         {
            if((_loc21_ = (_loc21_ = (_loc13_ - _loc16_) / _loc13_) * _loc7_) > 1)
            {
               _loc21_ = 1;
            }
            _loc3_.§_-pj§(new b2Vec2(_loc3_.§_-t9§().GetLinearVelocity().x * _loc21_,_loc3_.§_-t9§().GetLinearVelocity().y * _loc21_));
         }
      }
      
      public function §_-LF§() : void
      {
         var _loc2_:§_-5Q§ = null;
         var _loc1_:int = this.§_-Ki§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§_-Ki§[_loc1_] as §_-5Q§;
            if(_loc2_ != null && _loc2_.§_-3E§())
            {
               this.§_-jn§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §_-Nu§() : void
      {
         var _loc2_:§_-5Q§ = null;
         var _loc1_:int = this.§_-Ki§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§_-Ki§[_loc1_] as §_-5Q§;
            if(_loc2_ != null && _loc2_.§_-Q0§())
            {
               this.§_-jn§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §_-5K§() : int
      {
         return this.§_-Ki§.length;
      }
      
      public function §_-H3§(param1:§_-Xk§) : void
      {
         var _loc4_:§_-5Q§ = null;
         var _loc5_:§_-Zg§ = null;
         var _loc6_:§ try§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§_-Ki§.length)
         {
            if(!(_loc4_ = this.§_-Ki§[_loc2_]).isGround())
            {
               (_loc5_ = new §_-Zg§()).angle = _loc4_.§_-aU§();
               _loc5_.id = _loc4_.§_-s7§;
               _loc5_.x = _loc4_.§_-t9§().GetPosition().x;
               _loc5_.y = _loc4_.§_-t9§().GetPosition().y;
               param1.§_-X5§.push(_loc5_);
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§_-IM§.length)
         {
            (_loc6_ = new § try§(this.§_-IM§[_loc3_].type,this.§_-IM§[_loc3_].index1,this.§_-IM§[_loc3_].index2)).backAndForth = this.§_-IM§[_loc3_].backAndForth;
            _loc6_.collideConnected = this.§_-IM§[_loc3_].collideConnected;
            _loc6_.limit = this.§_-IM§[_loc3_].limit;
            _loc6_.lowerLimit = this.§_-IM§[_loc3_].lowerLimit;
            _loc6_.maxTorque = this.§_-IM§[_loc3_].maxTorque;
            _loc6_.motor = this.§_-IM§[_loc3_].motor;
            _loc6_.motorSpeed = this.§_-IM§[_loc3_].motorSpeed;
            _loc6_.upperLimit = this.§_-IM§[_loc3_].upperLimit;
            _loc6_.p1 = this.§_-IM§[_loc3_].p1;
            _loc6_.p2 = this.§_-IM§[_loc3_].p2;
            param1.§_-IM§.push(_loc6_);
            _loc3_++;
         }
      }
      
      public function §_-FV§() : void
      {
         var _loc1_:int = 0;
         while(this.§_-Ki§.length > _loc1_)
         {
            if(this.§_-Ki§[_loc1_].isGround())
            {
               _loc1_++;
            }
            else
            {
               this.§_-5H§(this.§_-Ki§[_loc1_]);
            }
         }
      }
      
      public function §_-By§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§_-Ki§.length)
         {
            if(this.§_-Ki§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§_-Ki§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         this.§_-vq§ = param1;
         this.§_-D6§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§_-Ki§.length)
         {
            if(this.§_-Ki§[_loc2_].isTexture())
            {
               this.§_-Ki§[_loc2_].sprite.visible = !this.§_-vq§;
            }
            _loc2_++;
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         this.§_-Sn§ = param1;
      }
      
      public function §_-j-§() : Boolean
      {
         return this.§_-Sn§;
      }
   }
}
