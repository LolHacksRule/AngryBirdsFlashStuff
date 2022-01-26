package §_-ST§
{
   import §_-5A§.§_-KW§;
   import §_-5A§.§_-Lu§;
   import §_-5x§.§_-8p§;
   import §_-B7§.§_-7Y§;
   import §_-B7§.§_-G§;
   import §_-B7§.§_-TP§;
   import §_-B7§.§_-cO§;
   import §_-B7§.§_-pl§;
   import §_-Bp§.§_-9c§;
   import §_-Q2§.Texture;
   import §_-Vq§.§_-dI§;
   import §_-Vq§.§_-gu§;
   import §_-WW§.b2Fixture;
   import §_-Y-§.§_-Wl§;
   import §_-dx§.b2Vec2;
   import §_-ez§.§_-Ay§;
   import §_-ez§.§_-H1§;
   import §_-ez§.§_-np§;
   import §_-th§.§_-SE§;
   import §_-th§.§_-WF§;
   import §_-vO§.Sprite;
   import §_-vO§.§_-OW§;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §_-oF§
   {
       
      
      private var §_-xI§:Vector.<§_-fK§>;
      
      protected var §_-Qi§:int;
      
      public var §_-9N§:§_-Ay§;
      
      public var mActivateSpecialPower:Boolean;
      
      public var mExplodePreviousActiveObjectOnNextClick:Boolean = false;
      
      public var §_-Xh§:Vector.<§_-f§>;
      
      private var §_-i0§:Sprite;
      
      private var §_-5r§:Sprite;
      
      private var §_-9x§:Vector.<Texture>;
      
      private var §_-8e§:Vector.<§_-SE§>;
      
      private var §_-Mg§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §_-Ub§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      private var §_-WX§:Boolean = false;
      
      private var §_-mq§:Number = 0.07;
      
      private var §_-rQ§:Boolean = true;
      
      private var §_-RM§:Boolean = true;
      
      public function §_-oF§(param1:§_-Ay§, param2:§_-Wl§, param3:Sprite)
      {
         var _loc6_:§_-WF§ = null;
         var _loc7_:§_-SE§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§_-fK§ = null;
         var _loc11_:§_-fK§ = null;
         this.§_-xI§ = new Vector.<§_-fK§>();
         this.§_-Xh§ = new Vector.<§_-f§>();
         this.§_-9x§ = new Vector.<Texture>();
         super();
         this.§_-9N§ = param1;
         this.§_-Qi§ = 0;
         this.§_-5r§ = param3;
         this.§_-5r§.§_-wV§ = false;
         this.§_-RM§ = true;
         this.§_-rQ§ = true;
         this.§_-i0§ = new Sprite();
         this.§_-5r§.addChild(this.§_-i0§);
         var _loc4_:§_-KW§;
         if((_loc4_ = §_-Lu§.§_-uW§(param2.§_-W8§)) == null)
         {
            param2.§_-W8§ = "BACKGROUND_BLUE_GRASS";
            _loc4_ = §_-Lu§.§_-uW§(param2.§_-W8§);
         }
         this.§_-S5§(§_-Lu§.§_-uW§(param2.§_-W8§).§_-rZ§,(this.§_-9N§.§_-k8§.§_-hh§ + this.§_-9N§.§_-k8§.§_-vX§) / 2,this.§_-9N§.§_-k8§.§_-4p§ + §_-H1§.§_-SS§);
         var _loc5_:int = this.§_-xI§.length;
         for each(_loc6_ in param2.§_-rp§)
         {
            this.§_-S5§(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle);
         }
         this.§_-HZ§();
         this.§_-AJ§(true);
         this.mActivateSpecialPower = false;
         this.§_-8e§ = param2.§_-8e§;
         for each(_loc7_ in param2.§_-8e§)
         {
            _loc8_ = _loc7_.index1 + _loc5_;
            _loc9_ = _loc7_.index2 + _loc5_;
            _loc10_ = this.§_-xI§[_loc8_];
            _loc11_ = this.§_-xI§[_loc9_];
            if(!(_loc10_ && _loc11_))
            {
               throw new Error("Joint index out of bounds [" + _loc8_ + ", " + _loc9_ + "]");
            }
            _loc7_.§_-Xy§ = this.§_-9N§.§_-dv§.§_-vd§.§_-oL§(_loc7_.§_-qk§(_loc10_,_loc11_));
         }
      }
      
      public function get §_-l0§() : Sprite
      {
         return this.§_-5r§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§_-xI§.length > 0)
         {
            this.§_-HT§(0);
         }
         this.§_-xI§ = null;
         if(this.§_-5r§)
         {
            this.§_-5r§.dispose();
            this.§_-5r§ = null;
            this.§_-i0§ = null;
         }
         while(this.§_-9x§.length > 0)
         {
            _loc1_ = this.§_-9x§.pop();
            this.§_-9N§.§_-si§.§finally§(_loc1_);
         }
      }
      
      private function §_-AJ§(param1:Boolean) : void
      {
         this.§_-i0§.visible = param1;
      }
      
      private function §_-HZ§() : void
      {
         var _loc3_:§_-fK§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§_-OW§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§_-fK§> = new Vector.<§_-fK§>();
         for each(_loc3_ in this.§_-xI§)
         {
            if(_loc3_.isTexture())
            {
               _loc2_.push(_loc3_);
               _loc4_ = _loc3_.sprite.getBounds(this.§_-5r§);
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
            this.§_-Dk§(_loc10_.rect,_loc10_,_loc5_);
            _loc11_ = this.§_-hy§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
            _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc12_ = this.§_-9N§.§_-si§.§_-pE§(_loc10_);
            this.§_-9x§.push(_loc12_);
            (_loc13_ = new §_-OW§(_loc12_)).x = _loc8_ / _loc5_;
            _loc13_.y = _loc9_ / _loc5_;
            _loc13_.scaleX = 1 / _loc5_;
            _loc13_.scaleY = 1 / _loc5_;
            this.§_-i0§.addChild(_loc13_);
            _loc11_.dispose();
         }
      }
      
      private function §_-hy§(param1:Vector.<§_-fK§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§_-fK§ = null;
         var _loc11_:§_-pl§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§_-kx§.shape).§_-aE§();
            _loc13_ = new Rectangle(_loc12_[0].x / §_-Ay§.§_-G0§ * param6,_loc12_[0].y / §_-Ay§.§_-G0§ * param6,(_loc12_[1].x - _loc12_[0].x) / §_-Ay§.§_-G0§ * param6,(_loc12_[1].y - _loc12_[0].y) / §_-Ay§.§_-G0§ * param6);
            _loc10_.identity();
            _loc10_.scale(_loc13_.width,_loc13_.height);
            _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
            _loc10_.rotate((360 - _loc7_.§_-Ld§()) / 180 * Math.PI);
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            _loc8_.draw(_loc9_,_loc10_);
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      private function §_-Dk§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.§_-9N§.§_-c§.§_-VP§();
         var _loc5_:§_-9c§;
         if(_loc5_ = this.§_-9N§.§_-si§.§switch§(_loc4_))
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
      
      public function §_-Pc§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true) : §_-fK§
      {
         var _loc9_:§_-fK§ = null;
         switch(param2)
         {
            case "BIRD_BLACK":
               _loc9_ = new §_-dq§(this,param1,this.§_-9N§.§_-dv§.§_-vd§,this.§_-9N§,this.§_-Qi§,param2,param3,param4,param5);
               break;
            case "BIRD_BLUE":
               _loc9_ = new §_-nv§(this,param1,this.§_-9N§.§_-dv§.§_-vd§,this.§_-9N§,this.§_-Qi§,param2,param3,param4,param5,param8);
               break;
            case "BIRD_GREEN":
               _loc9_ = new §_-40§(this,param1,this.§_-9N§.§_-dv§.§_-vd§,this.§_-9N§,this.§_-Qi§,param2,param3,param4,param5);
               break;
            case "BIRD_WHITE":
               _loc9_ = new §_-Bn§(this,param1,this.§_-9N§.§_-dv§.§_-vd§,this.§_-9N§,this.§_-Qi§,param2,param3,param4,param5);
               break;
            case "BIRD_YELLOW":
               _loc9_ = new §_-xP§(this,param1,this.§_-9N§.§_-dv§.§_-vd§,this.§_-9N§,this.§_-Qi§,param2,param3,param4,param5);
               break;
            default:
               _loc9_ = new §_-GF§(this,param1,this.§_-9N§.§_-dv§.§_-vd§,this.§_-9N§,this.§_-Qi§,param2,param3,param4,param5);
         }
         return _loc9_;
      }
      
      public function §_-S5§(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true) : §_-fK§
      {
         var _loc9_:§_-fK§ = null;
         var _loc10_:§_-G§ = null;
         var _loc8_:Sprite = new Sprite();
         if(param1.indexOf("BIRD") == 0)
         {
            _loc9_ = this.§_-Pc§(_loc8_,param1,param2,param3,param4,param5,param6,param7);
         }
         else if(param1.indexOf("PIG") == 0)
         {
            _loc9_ = new §_-Ym§(this,_loc8_,this.§_-9N§.§_-dv§.§_-vd§,this.§_-9N§,this.§_-Qi§,param1,param2,param3,param4);
         }
         else
         {
            if((_loc10_ = §_-cO§.§_-9y§(param1)) == null && param1.indexOf("MISC_") == 0)
            {
               param1 = "MISC_FOOD_" + param1.substring(5);
               _loc10_ = §_-cO§.§_-9y§(param1);
            }
            if(_loc10_.§_-iw§ == §_-G§.§_-5M§ || _loc10_.§_-iw§ == §_-G§.§_-TO§)
            {
               _loc9_ = new §_-EZ§(this,_loc8_,this.§_-9N§.§_-dv§.§_-vd§,this.§_-9N§,this.§_-Qi§,param1,param2,param3,param4);
            }
            else
            {
               _loc9_ = new §_-fK§(this,_loc8_,this.§_-9N§.§_-dv§.§_-vd§,this.§_-9N§,this.§_-Qi§,param1,param2,param3,param4);
            }
         }
         if(_loc9_.isTexture())
         {
            _loc8_.visible = !this.§_-rQ§;
            this.§_-xI§[this.§_-xI§.length] = _loc9_;
         }
         else
         {
            this.§_-xI§[this.§_-xI§.length] = _loc9_;
         }
         if(_loc9_ is §_-GF§ && !_loc9_.§_-KI§())
         {
            this.§_-5r§.addChildAt(_loc8_,0);
         }
         else
         {
            this.§_-5r§.addChild(_loc8_);
         }
         if(param5)
         {
            this.§_-9N§.§_-Go§(_loc9_);
         }
         if(param6)
         {
            this.§_-9N§.mActiveObject = _loc9_;
         }
         return _loc9_;
      }
      
      public function §_-j0§() : void
      {
         var _loc2_:§_-fK§ = null;
         var _loc1_:int = this.§_-xI§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§_-xI§[_loc1_] as §_-fK§;
            if(_loc2_)
            {
               if(_loc2_.§_-Sy§ <= 0)
               {
                  this.§_-HT§(_loc1_,true,true,true);
               }
               else
               {
                  _loc2_.§_-hF§();
                  _loc2_.§_-T0§();
               }
            }
            _loc1_--;
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         this.§_-Xh§.push(§_-f§.§_-QT§(param1,param2,param3));
         §_-8p§.§_-rD§("TntExplosions","ChannelExplosions");
      }
      
      public function §_-k-§(param1:Number, param2:Number) : int
      {
         var _loc4_:§_-fK§ = null;
         var _loc3_:int = this.§_-xI§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§_-xI§[_loc3_])
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
      
      public function §_-5p§(param1:Number, param2:Number) : §_-fK§
      {
         var _loc4_:§_-fK§ = null;
         var _loc3_:int = this.§_-xI§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§_-xI§[_loc3_])
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
      
      public function getObject(param1:int) : §_-fK§
      {
         return this.§_-xI§[param1];
      }
      
      public function §_-U5§(param1:Number, param2:Number) : void
      {
         var _loc4_:§_-fK§ = null;
         var _loc3_:int = this.§_-xI§.length - 1;
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§_-xI§[_loc3_] as §_-fK§).§_-U5§(param2,param1);
            _loc3_--;
         }
      }
      
      private function §_-aB§(param1:§_-fK§, param2:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§_-fK§ = null;
         if(!this.mSardineCanAdded)
         {
            return true;
         }
         if(this.mMightyEagleAdded)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         if(param1.§_-Sy§ == param1.§_-JQ§)
         {
            if(this.§_-mq§ < §_-np§.§_-N4§)
            {
               this.§_-mq§ += param2 * §_-np§.§_-cM§;
            }
            param1.§_-Nu§().§_-sw§(param2 * this.§_-mq§);
         }
         if(param1.§_-BS§() || this.§_-FM§(param1))
         {
            if(this.mMightyEagleTimer < §_-np§.§_-KQ§)
            {
               _loc4_ = this.mMightyEagleTimer + param2;
               if(this.mMightyEagleTimer < §_-np§.§_-V2§ && _loc4_ > §_-np§.§_-V2§)
               {
                  §_-8p§.§_-rD§("Mighty_Eagle_Selected_1","ChannelBird");
                  §_-8p§.§_-rD§("Mighty_Eagle_Flying_1","ChannelBird");
               }
               if(_loc4_ >= §_-np§.§_-KQ§)
               {
                  _loc5_ = param1.§_-Nu§().GetPosition().x - §_-np§.§_-Qk§;
                  _loc6_ = param1.§_-Nu§().GetPosition().y - §_-np§.§_-Qk§ * §_-np§.§_-sT§ * 1.07;
                  if(this.§_-FM§(param1))
                  {
                     _loc3_ = true;
                  }
                  _loc7_ = this.§_-S5§("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,§_-np§.§_-wU§ * 1.2);
                  this.mMightyEagleAdded = true;
                  _loc7_.§_-ds§.§_-cW§(1.82);
               }
               this.mMightyEagleTimer = _loc4_;
            }
         }
         return _loc3_;
      }
      
      private function §_-nu§(param1:§_-fK§, param2:Number) : Boolean
      {
         var _loc5_:§_-fK§ = null;
         if(!this.§_-WX§ && this.mMightyEagleTimer > §_-np§.§_-Pf§)
         {
            this.§_-WX§ = true;
            this.§_-9N§.§_-ec§();
         }
         this.mMightyEagleTimer += param2;
         this.§_-9N§.§_-Rh§.§_-2b§(§_-gu§.§_-Fr§,§_-dI§.§_-Hw§,§_-gu§.§_-Ii§,param1.§_-Nu§().GetPosition().x - 3 + Math.random() * (3 * 2),param1.§_-Nu§().GetPosition().y - 3 + Math.random() * (3 * 2),2500,"",§_-gu§.§_-kb§(param1.§_-Pd§),0,0,0,0,4);
         var _loc4_:int = 1;
         if(this.mMightyEagleHasTouchedGround)
         {
            param1.§_-1P§(§_-np§.§_-IE§ * param2);
            _loc4_ = -1;
            if(this.§_-Ub§)
            {
               this.§_-Ub§ = false;
               this.§_-9N§.§_-i1§();
               param1.§_-j1§(§_-TP§.§_-tT§);
               this.mSardineCanAdded = false;
               param1.§_-ds§.§_-Xk§ = true;
               param1.§_-ds§.§_-Bt§();
               for each(_loc5_ in this.§_-xI§)
               {
                  if(_loc5_ && _loc5_.§_-M4§())
                  {
                     _loc5_.§_-Nu§().SetAwake(true);
                     _loc5_.§_-Nu§().SetLinearVelocity(new b2Vec2(0,-18));
                  }
               }
               this.§_-WQ§();
            }
            if(this.mMightyEagleTimer > 6000 && this.isPigsAlive())
            {
               for each(_loc5_ in this.§_-xI§)
               {
                  if(_loc5_ && _loc5_.§_-M4§())
                  {
                     _loc5_.applyDamage(_loc5_.§_-JQ§ * 2,true,true,true);
                  }
               }
            }
         }
         else
         {
            this.mMightyEagleHasTouchedGround = param1.§_-Nu§().GetPosition().y >= -5.5;
            this.§_-Ub§ = this.mMightyEagleHasTouchedGround;
         }
         param1.§_-e1§(param2,new Point(1,_loc4_ * §_-np§.§_-sT§),§_-np§.§_-4Q§);
         return false;
      }
      
      private function §_-Zc§() : void
      {
         var _loc1_:§_-f§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§_-fK§ = null;
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
         while(this.§_-Xh§.length > 0)
         {
            _loc1_ = this.§_-Xh§.shift();
            _loc2_ = _loc1_.§_-Mz§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.§_-Uf§;
            for each(_loc6_ in this.§_-xI§)
            {
               _loc8_ = _loc6_.§_-Nu§().GetPosition().x - _loc3_;
               _loc9_ = _loc6_.§_-Nu§().GetPosition().y - _loc4_;
               if((_loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)) <= _loc1_.§_-Mz§)
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
                     _loc6_.§_-Nu§().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
                  }
               }
               if(_loc10_ <= _loc1_.§_-KP§)
               {
                  _loc14_ = _loc5_;
                  if(_loc10_ > 1)
                  {
                     _loc14_ /= _loc10_;
                  }
                  _loc6_.applyDamage(_loc14_,false);
               }
            }
            this.§_-9N§.§_-Rh§.§_-2b§(§_-gu§.§_-A0§,§_-dI§.§_-Hw§,§_-gu§.§_-Al§,_loc3_,_loc4_,600,"",§_-gu§.§_-CL§);
            _loc7_ = 30;
            while(_loc7_ < 150)
            {
               _loc15_ = 0.75 * _loc2_ + Math.random() * _loc2_;
               _loc16_ = 1250 + Math.random() * 750;
               _loc17_ = _loc7_ / (180 / Math.PI);
               this.§_-9N§.§_-Rh§.§_-2b§(§_-gu§.§_-qt§,§_-dI§.§_-Hw§,§_-gu§.§_-Ii§,_loc3_,_loc4_,_loc16_,"",§_-gu§.§_-CL§,_loc15_ * Math.cos(_loc17_),-_loc15_ * Math.sin(_loc17_),20,0);
               _loc7_ += 5;
            }
         }
      }
      
      public function §_-Wf§(param1:Number) : void
      {
         var _loc4_:§_-fK§ = null;
         var _loc2_:§_-fK§ = null;
         var _loc3_:int = this.§_-xI§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§_-xI§[_loc3_];
            if(_loc2_.§_-LQ§())
            {
               if(this.§_-aB§(_loc2_,param1))
               {
                  this.§_-HT§(_loc3_,false,false,false);
               }
            }
            else if(_loc2_.§_-KI§())
            {
               this.§_-nu§(_loc2_,param1);
            }
            else if(this.§_-FM§(_loc2_))
            {
               _loc2_.§_-j1§(§_-TP§.§_-1Z§);
               this.§_-HT§(_loc3_,false,false,false);
            }
            else if(_loc2_.isReadyToBeRemoved(param1))
            {
               _loc2_.§_-j1§(§_-TP§.§_-1Z§);
               this.§_-HT§(_loc3_,false,true,true);
            }
            else if(_loc2_.§_-Jw§())
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         this.§_-Zc§();
         if(this.mActivateSpecialPower)
         {
            (_loc4_ = this.§_-9N§.mActiveObject).activateSpecialPower(this);
            this.mActivateSpecialPower = false;
         }
      }
      
      private function §_-WQ§() : void
      {
         var _loc1_:§_-SE§ = null;
         for each(_loc1_ in this.§_-8e§)
         {
            this.§_-9N§.§_-dv§.§_-vd§.§_-27§(_loc1_.§_-Xy§);
         }
      }
      
      public function explodePreviousActiveObjects() : Boolean
      {
         var _loc2_:§_-fK§ = null;
         this.mExplodePreviousActiveObjectOnNextClick = false;
         var _loc1_:int = 0;
         while(_loc1_ < this.§_-xI§.length)
         {
            _loc2_ = this.§_-xI§[_loc1_];
            if(_loc2_.explode())
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §_-FM§(param1:§_-fK§) : Boolean
      {
         if(param1 && param1.§_-kx§.§_-Dx§() != §_-7Y§.§_-Pm§ && this.§_-9N§.§_-k8§.§_-1r§(param1.§_-Nu§().GetPosition().x,param1.§_-Nu§().GetPosition().y))
         {
            return true;
         }
         return false;
      }
      
      public function §_-HT§(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:§_-fK§;
         if((_loc5_ = this.§_-xI§[param1]) == this.§_-9N§.mActiveObject)
         {
            this.§_-9N§.mActiveObject = null;
         }
         if(param2)
         {
            this.§_-9N§.addScore(_loc5_.§_-kx§.score,true,_loc5_.§_-Nu§().GetPosition().x,_loc5_.§_-Nu§().GetPosition().y - 3,§_-gu§.§_-L2§(_loc5_.§_-Pd§));
         }
         if(param3)
         {
            _loc5_.addDestructionParticles(this.§_-9N§.§_-Rh§);
         }
         if(param4)
         {
            this.§_-Fg§(_loc5_);
         }
         if(!_loc5_.isTexture())
         {
         }
         this.§_-5r§.removeChild(_loc5_.sprite);
         _loc5_.dispose();
         _loc5_ = null;
         this.§_-xI§[param1] = null;
         this.§_-xI§.splice(param1,1);
      }
      
      protected function §_-Fg§(param1:§_-fK§) : void
      {
         if(param1.§_-3o§().toUpperCase() == "WHITE_EGG" || param1.§_-3o§().toUpperCase() == "TNT")
         {
            if(param1.§_-Pd§.toUpperCase() == §_-Bn§.§_-pY§)
            {
               this.addExplosions(§_-f§.§_-YG§,param1.§_-Nu§().GetPosition().x,param1.§_-Nu§().GetPosition().y);
            }
            else
            {
               this.addExplosions(§_-f§.§_-CC§,param1.§_-Nu§().GetPosition().x,param1.§_-Nu§().GetPosition().y);
            }
         }
      }
      
      public function §_-Td§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.§_-HT§(this.§_-xI§.indexOf(param1),param2,param3,param4);
      }
      
      public function §do§(param1:Number, param2:Number) : void
      {
         this.§_-5r§.x = -param1;
         this.§_-5r§.y = -param2;
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc3_:§_-fK§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-xI§.length)
         {
            _loc3_ = this.§_-xI§[_loc2_] as §_-fK§;
            if(_loc3_ && _loc3_.§_-M4§() && _loc3_.§_-Sy§ > 0)
            {
               if(!param1 || _loc3_.§_-ds§.mTryToBlink <= 0 && _loc3_.§_-ds§.mTryToScream <= 0)
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §_-oT§(param1:Boolean = false) : int
      {
         var _loc4_:§_-fK§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§_-xI§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§_-xI§[_loc3_] as §_-fK§) && _loc4_.§_-M4§() && _loc4_.§_-Sy§ > 0)
            {
               if(!param1 || _loc4_.§_-ds§.mTryToBlink <= 0 && _loc4_.§_-ds§.mTryToScream <= 0)
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
         var _loc3_:§_-fK§ = null;
         var _loc2_:int = this.§_-xI§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§_-xI§[_loc2_];
            if(_loc3_ && _loc3_.§_-M4§() && _loc3_.§_-Sy§ > 0)
            {
               _loc3_.§_-ds§.mTryToScream = §_-T6§.§_-JK§ * param1;
            }
            _loc2_--;
         }
      }
      
      public function §_-4h§() : Boolean
      {
         var _loc2_:§_-fK§ = null;
         var _loc1_:int = this.§_-xI§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§_-xI§[_loc1_] as §_-fK§;
            if(_loc2_ && _loc2_.§_-Jw§() && _loc2_.§_-Sy§ > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:§_-fK§ = null;
         var _loc1_:int = this.§_-xI§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§_-xI§[_loc1_] as §_-fK§;
            if(_loc2_ && _loc2_.§_-Sy§ > 0 && _loc2_.§_-iw§ != §_-G§.§case §)
            {
               if(_loc2_.§_-iZ§() && !_loc2_.§_-BS§())
               {
                  return false;
               }
               if(_loc2_.§_-Jw§() && _loc2_.§_-Sy§ > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §_-mP§(param1:Boolean = false) : §_-fK§
      {
         var _loc5_:int = 0;
         var _loc6_:§_-fK§ = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = this.§_-xI§.length;
         var _loc3_:int = 1 + Math.random() * this.§_-oT§(param1);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               if((_loc6_ = this.§_-xI§[_loc5_]) && _loc6_.§_-M4§() && _loc6_.§_-Sy§ > 0)
               {
                  if(!param1 || _loc6_.§_-ds§.mTryToBlink <= 0 && _loc6_.§_-ds§.mTryToScream <= 0)
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
      
      public function §_-OD§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.§_-xI§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ += (this.§_-xI§[_loc2_] as §_-fK§).§_-kx§.score;
            if((this.§_-xI§[_loc2_] as §_-fK§).§_-iZ§())
            {
               _loc1_ += §_-Ay§.§_-nf§ * int((this.§_-xI§[_loc2_] as §_-fK§).§_-JQ§);
            }
            _loc2_--;
         }
         return _loc1_;
      }
      
      public function §_-Rt§(param1:§_-fK§, param2:§_-fK§) : Boolean
      {
         if(param1.§_-Jw§() && param2.§_-Jw§())
         {
            return true;
         }
         if(!param1.§_-NT§() && !param2.§_-NT§())
         {
            return true;
         }
         return false;
      }
      
      public function §_-g9§(param1:b2Fixture, param2:b2Fixture) : void
      {
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc3_:§_-fK§ = param1.GetBody().GetUserData() as §_-fK§;
         var _loc4_:§_-fK§ = param2.GetBody().GetUserData() as §_-fK§;
         if(this.mMightyEagleAdded)
         {
            if(_loc3_.§_-KI§() || this.mMightyEagleAdded && _loc4_.§_-M4§())
            {
               _loc4_.applyDamage(_loc4_.§_-JQ§ * 2,true,true,true);
               return;
            }
            if(_loc4_.§_-KI§() || this.mMightyEagleAdded && _loc3_.§_-M4§())
            {
               _loc3_.applyDamage(_loc3_.§_-JQ§ * 2,true,true,true);
               return;
            }
         }
         else if(this.mSardineCanAdded && this.mMightyEagleTimer == §_-np§.§_-KQ§)
         {
            if(_loc3_.§_-LQ§() || _loc4_.§_-LQ§())
            {
               this.mMightyEagleTimer = 0;
            }
         }
         if(this.§_-Rt§(_loc3_,_loc4_))
         {
            return;
         }
         var _loc6_:Number = _loc3_.§_-hO§(_loc4_.§_-3o§());
         var _loc7_:Number = _loc3_.§_-rB§(_loc4_.§_-3o§());
         var _loc8_:Number = _loc4_.§_-hO§(_loc3_.§_-3o§());
         var _loc9_:Number = _loc4_.§_-rB§(_loc3_.§_-3o§());
         var _loc10_:Number = _loc3_.§_-Nu§().GetMass() * _loc3_.§_-Nu§().GetLinearVelocity().x - _loc4_.§_-Nu§().GetMass() * _loc4_.§_-Nu§().GetLinearVelocity().x;
         var _loc11_:Number = _loc3_.§_-Nu§().GetMass() * _loc3_.§_-Nu§().GetLinearVelocity().y - _loc4_.§_-Nu§().GetMass() * _loc4_.§_-Nu§().GetLinearVelocity().y;
         var _loc12_:Number = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_) / 10;
         var _loc13_:Number = _loc6_ * _loc12_;
         var _loc14_:Number = _loc8_ * _loc12_;
         var _loc15_:Number = Math.max(0,_loc3_.§_-Sy§);
         var _loc16_:Number = Math.max(0,_loc4_.§_-Sy§);
         var _loc17_:Number = _loc3_.applyDamage(_loc14_,true,_loc4_.§_-Jw§(),_loc16_ == _loc4_.§_-JQ§);
         var _loc18_:Number = _loc4_.applyDamage(_loc13_,true,_loc3_.§_-Jw§(),_loc15_ == _loc3_.§_-JQ§);
         if(_loc17_ <= 0)
         {
            if((_loc20_ = (_loc20_ = (_loc14_ - _loc15_) / _loc14_) * _loc9_) > 1)
            {
               _loc20_ = 1;
            }
            _loc4_.§_-VE§(new b2Vec2(_loc4_.§_-Nu§().GetLinearVelocity().x * _loc20_,_loc4_.§_-Nu§().GetLinearVelocity().y * _loc20_));
         }
         if(_loc18_ <= 0)
         {
            if((_loc21_ = (_loc21_ = (_loc13_ - _loc16_) / _loc13_) * _loc7_) > 1)
            {
               _loc21_ = 1;
            }
            _loc3_.§_-VE§(new b2Vec2(_loc3_.§_-Nu§().GetLinearVelocity().x * _loc21_,_loc3_.§_-Nu§().GetLinearVelocity().y * _loc21_));
         }
      }
      
      public function §_-lW§() : void
      {
         var _loc2_:§_-fK§ = null;
         var _loc1_:int = this.§_-xI§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§_-xI§[_loc1_] as §_-fK§;
            if(_loc2_ != null && _loc2_.§_-M4§())
            {
               this.§_-HT§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §_-H7§() : void
      {
         var _loc2_:§_-fK§ = null;
         var _loc1_:int = this.§_-xI§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§_-xI§[_loc1_] as §_-fK§;
            if(_loc2_ != null && _loc2_.§_-Is§())
            {
               this.§_-HT§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §_-0P§() : int
      {
         return this.§_-xI§.length;
      }
      
      public function §_-XF§(param1:§_-Wl§) : void
      {
         var _loc4_:§_-fK§ = null;
         var _loc5_:§_-WF§ = null;
         var _loc6_:§_-SE§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§_-xI§.length)
         {
            if(!(_loc4_ = this.§_-xI§[_loc2_]).isGround())
            {
               (_loc5_ = new §_-WF§()).angle = _loc4_.§_-Ld§();
               _loc5_.id = _loc4_.§_-Pd§;
               _loc5_.x = _loc4_.§_-Nu§().GetPosition().x;
               _loc5_.y = _loc4_.§_-Nu§().GetPosition().y;
               param1.§_-rp§.push(_loc5_);
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§_-8e§.length)
         {
            (_loc6_ = new §_-SE§(this.§_-8e§[_loc3_].type,this.§_-8e§[_loc3_].index1,this.§_-8e§[_loc3_].index2)).backAndForth = this.§_-8e§[_loc3_].backAndForth;
            _loc6_.collideConnected = this.§_-8e§[_loc3_].collideConnected;
            _loc6_.limit = this.§_-8e§[_loc3_].limit;
            _loc6_.lowerLimit = this.§_-8e§[_loc3_].lowerLimit;
            _loc6_.maxTorque = this.§_-8e§[_loc3_].maxTorque;
            _loc6_.motor = this.§_-8e§[_loc3_].motor;
            _loc6_.motorSpeed = this.§_-8e§[_loc3_].motorSpeed;
            _loc6_.upperLimit = this.§_-8e§[_loc3_].upperLimit;
            _loc6_.p1 = this.§_-8e§[_loc3_].p1;
            _loc6_.p2 = this.§_-8e§[_loc3_].p2;
            param1.§_-8e§.push(_loc6_);
            _loc3_++;
         }
      }
      
      public function §_-7M§() : void
      {
         var _loc1_:int = 0;
         while(this.§_-xI§.length > _loc1_)
         {
            if(this.§_-xI§[_loc1_].isGround())
            {
               _loc1_++;
            }
            else
            {
               this.§_-Td§(this.§_-xI§[_loc1_]);
            }
         }
      }
      
      public function §_-Ax§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§_-xI§.length)
         {
            if(this.§_-xI§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§_-xI§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         this.§_-rQ§ = param1;
         this.§_-AJ§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§_-xI§.length)
         {
            if(this.§_-xI§[_loc2_].isTexture())
            {
               this.§_-xI§[_loc2_].sprite.visible = !this.§_-rQ§;
            }
            _loc2_++;
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         this.§_-RM§ = param1;
      }
      
      public function §_-Ac§() : Boolean
      {
         return this.§_-RM§;
      }
   }
}
