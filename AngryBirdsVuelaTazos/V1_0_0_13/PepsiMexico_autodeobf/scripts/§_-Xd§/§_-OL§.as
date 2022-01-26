package §_-Xd§
{
   import § get§.§_-pD§;
   import §_-1Z§.§_-RB§;
   import §_-1Z§.§_-VN§;
   import §_-Cy§.Texture;
   import §_-FQ§.§_-7W§;
   import §_-FQ§.§_-eI§;
   import §_-FQ§.§_-ih§;
   import §_-FQ§.§_-iw§;
   import §_-Jm§.§_-5c§;
   import §_-Jm§.§_-GP§;
   import §_-PP§.§_-Tg§;
   import §_-PP§.§_-qC§;
   import §_-PS§.§_-sq§;
   import §_-UX§.Sprite;
   import §_-UX§.§_-2S§;
   import §_-qW§.b2Fixture;
   import §_-rQ§.§_-MV§;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import §var§.b2Vec2;
   import §with§.§_-AZ§;
   import §with§.§_-O2§;
   import §with§.§_-fn§;
   import §with§.§_-pC§;
   import §with§.§_-y7§;
   
   public class §_-OL§
   {
       
      
      private var §_-eB§:Vector.<§_-sW§>;
      
      protected var §_-UW§:int;
      
      public var §_-6q§:§_-7W§;
      
      public var §_-eN§:Boolean;
      
      public var §_-T§:Vector.<§_-w3§>;
      
      private var §_-az§:Sprite;
      
      private var §_-wn§:Sprite;
      
      private var §_-l7§:Vector.<Texture>;
      
      private var §_-q9§:Vector.<§_-5c§>;
      
      private var §_-Ya§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §false§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      private var §_-KV§:Boolean = false;
      
      private var §_-LB§:Number = 0.07;
      
      private var §_-xd§:Boolean = true;
      
      private var §_-Yb§:Boolean = true;
      
      public function §_-OL§(param1:§_-7W§, param2:§_-sq§, param3:Sprite)
      {
         var _loc6_:§_-GP§ = null;
         var _loc7_:§_-5c§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§_-sW§ = null;
         var _loc11_:§_-sW§ = null;
         this.§_-eB§ = new Vector.<§_-sW§>();
         this.§_-T§ = new Vector.<§_-w3§>();
         this.§_-l7§ = new Vector.<Texture>();
         super();
         this.§_-6q§ = param1;
         this.§_-UW§ = 0;
         this.§_-wn§ = param3;
         this.§_-wn§.§_-SS§ = false;
         this.§_-Yb§ = true;
         this.§_-xd§ = true;
         this.§_-az§ = new Sprite();
         this.§_-wn§.addChild(this.§_-az§);
         var _loc4_:§_-RB§;
         if((_loc4_ = §_-VN§.§_-E0§(param2.§_-r1§)) == null)
         {
            param2.§_-r1§ = "BACKGROUND_BLUE_GRASS";
            _loc4_ = §_-VN§.§_-E0§(param2.§_-r1§);
         }
         this.§_-5h§(§_-VN§.§_-E0§(param2.§_-r1§).§_-BD§,(this.§_-6q§.§_-Dw§.§_-GZ§ + this.§_-6q§.§_-Dw§.§_-u-§) / 2,this.§_-6q§.§_-Dw§.§_-X1§ + §_-ih§.§_-DS§);
         var _loc5_:int = this.§_-eB§.length;
         for each(_loc6_ in param2.§_-7u§)
         {
            this.§_-5h§(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle);
         }
         this.§_-4U§();
         this.§_-wq§(true);
         this.§_-eN§ = false;
         this.§_-q9§ = param2.§_-q9§;
         for each(_loc7_ in param2.§_-q9§)
         {
            _loc8_ = _loc7_.index1 + _loc5_;
            _loc9_ = _loc7_.index2 + _loc5_;
            _loc10_ = this.§_-eB§[_loc8_];
            _loc11_ = this.§_-eB§[_loc9_];
            if(!(_loc10_ && _loc11_))
            {
               throw new Error("Joint index out of bounds [" + _loc8_ + ", " + _loc9_ + "]");
            }
            _loc7_.§_-Pr§ = this.§_-6q§.§_-vs§.§_-9K§.§_-tT§(_loc7_.§_-bV§(_loc10_,_loc11_));
         }
      }
      
      public function get §_-b8§() : Sprite
      {
         return this.§_-wn§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§_-eB§.length > 0)
         {
            this.§ else§(0);
         }
         this.§_-eB§ = null;
         if(this.§_-wn§)
         {
            this.§_-wn§.dispose();
            this.§_-wn§ = null;
            this.§_-az§ = null;
         }
         while(this.§_-l7§.length > 0)
         {
            _loc1_ = this.§_-l7§.pop();
            this.§_-6q§.§_-xI§.§_-18§(_loc1_);
         }
      }
      
      private function §_-wq§(param1:Boolean) : void
      {
         this.§_-az§.visible = param1;
      }
      
      private function §_-4U§() : void
      {
         var _loc3_:§_-sW§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§_-2S§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§_-sW§> = new Vector.<§_-sW§>();
         for each(_loc3_ in this.§_-eB§)
         {
            if(_loc3_.isTexture())
            {
               _loc2_.push(_loc3_);
               _loc4_ = _loc3_.sprite.getBounds(this.§_-wn§);
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
            this.§_-ro§(_loc10_.rect,_loc10_,_loc5_);
            _loc11_ = this.§_-ha§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
            _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc12_ = this.§_-6q§.§_-xI§.§_-ka§(_loc10_);
            this.§_-l7§.push(_loc12_);
            (_loc13_ = new §_-2S§(_loc12_)).x = _loc8_ / _loc5_;
            _loc13_.y = _loc9_ / _loc5_;
            _loc13_.scaleX = 1 / _loc5_;
            _loc13_.scaleY = 1 / _loc5_;
            this.§_-az§.addChild(_loc13_);
            _loc11_.dispose();
         }
      }
      
      private function §_-ha§(param1:Vector.<§_-sW§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§_-sW§ = null;
         var _loc11_:§_-fn§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§_-OQ§.shape).§_-dv§();
            _loc13_ = new Rectangle(_loc12_[0].x / §_-7W§.§_-hT§ * param6,_loc12_[0].y / §_-7W§.§_-hT§ * param6,(_loc12_[1].x - _loc12_[0].x) / §_-7W§.§_-hT§ * param6,(_loc12_[1].y - _loc12_[0].y) / §_-7W§.§_-hT§ * param6);
            _loc10_.identity();
            _loc10_.scale(_loc13_.width,_loc13_.height);
            _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
            _loc10_.rotate((360 - _loc7_.§_-2d§()) / 180 * Math.PI);
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            _loc8_.draw(_loc9_,_loc10_);
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      private function §_-ro§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.§_-6q§.§_-3z§.§_-Zp§();
         var _loc5_:§_-MV§;
         if(_loc5_ = this.§_-6q§.§_-xI§.§_-E4§(_loc4_))
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
      
      public function §use§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true) : §_-sW§
      {
         var _loc9_:§_-sW§ = null;
         switch(param2)
         {
            case "BIRD_BLACK":
               _loc9_ = new §_-HY§(this,param1,this.§_-6q§.§_-vs§.§_-9K§,this.§_-6q§,this.§_-UW§,param2,param3,param4,param5);
               break;
            case "BIRD_BLUE":
               _loc9_ = new §_-D-§(this,param1,this.§_-6q§.§_-vs§.§_-9K§,this.§_-6q§,this.§_-UW§,param2,param3,param4,param5,param8);
               break;
            case "BIRD_GREEN":
               _loc9_ = new §_-g-§(this,param1,this.§_-6q§.§_-vs§.§_-9K§,this.§_-6q§,this.§_-UW§,param2,param3,param4,param5);
               break;
            case "BIRD_WHITE":
               _loc9_ = new §_-DJ§(this,param1,this.§_-6q§.§_-vs§.§_-9K§,this.§_-6q§,this.§_-UW§,param2,param3,param4,param5);
               break;
            case "BIRD_YELLOW":
               _loc9_ = new §_-gb§(this,param1,this.§_-6q§.§_-vs§.§_-9K§,this.§_-6q§,this.§_-UW§,param2,param3,param4,param5);
               break;
            default:
               _loc9_ = new §_-Xr§(this,param1,this.§_-6q§.§_-vs§.§_-9K§,this.§_-6q§,this.§_-UW§,param2,param3,param4,param5);
         }
         return _loc9_;
      }
      
      public function §_-5h§(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true) : §_-sW§
      {
         var _loc9_:§_-sW§ = null;
         var _loc10_:§_-y7§ = null;
         var _loc8_:Sprite = new Sprite();
         if(param1.indexOf("BIRD") == 0)
         {
            _loc9_ = this.§use§(_loc8_,param1,param2,param3,param4,param5,param6,param7);
         }
         else if(param1.indexOf("PIG") == 0)
         {
            _loc9_ = new §_-m1§(this,_loc8_,this.§_-6q§.§_-vs§.§_-9K§,this.§_-6q§,this.§_-UW§,param1,param2,param3,param4);
         }
         else
         {
            if((_loc10_ = §_-O2§.§_-k§(param1)) == null && param1.indexOf("MISC_") == 0)
            {
               param1 = "MISC_FOOD_" + param1.substring(5);
               _loc10_ = §_-O2§.§_-k§(param1);
            }
            if(_loc10_.§_-bi§ == §_-y7§.§_-zE§ || _loc10_.§_-bi§ == §_-y7§.§_-L7§)
            {
               _loc9_ = new §_-Uw§(this,_loc8_,this.§_-6q§.§_-vs§.§_-9K§,this.§_-6q§,this.§_-UW§,param1,param2,param3,param4);
            }
            else
            {
               _loc9_ = new §_-sW§(this,_loc8_,this.§_-6q§.§_-vs§.§_-9K§,this.§_-6q§,this.§_-UW§,param1,param2,param3,param4);
            }
         }
         if(_loc9_.isTexture())
         {
            _loc8_.visible = !this.§_-xd§;
            this.§_-eB§[this.§_-eB§.length] = _loc9_;
         }
         else
         {
            this.§_-eB§[this.§_-eB§.length] = _loc9_;
         }
         if(_loc9_ is §_-Xr§ && !_loc9_.§_-nL§())
         {
            this.§_-wn§.addChildAt(_loc8_,0);
         }
         else
         {
            this.§_-wn§.addChild(_loc8_);
         }
         if(param5)
         {
            this.§_-6q§.§_-ve§(_loc9_);
         }
         if(param6)
         {
            this.§_-6q§.mActiveObject = _loc9_;
         }
         return _loc9_;
      }
      
      public function §_-DC§() : void
      {
         var _loc2_:§_-sW§ = null;
         var _loc1_:int = this.§_-eB§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§_-eB§[_loc1_] as §_-sW§;
            if(_loc2_)
            {
               if(_loc2_.§_-gg§ <= 0)
               {
                  this.§ else§(_loc1_,true,true,true);
               }
               else
               {
                  _loc2_.§_-nF§();
                  _loc2_.§_-E9§();
               }
            }
            _loc1_--;
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         this.§_-T§.push(§_-w3§.§_-0V§(param1,param2,param3));
         §_-pD§.playSound("TntExplosions","ChannelExplosions");
      }
      
      public function §_-jU§(param1:Number, param2:Number) : int
      {
         var _loc4_:§_-sW§ = null;
         var _loc3_:int = this.§_-eB§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§_-eB§[_loc3_])
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
      
      public function §_-SY§(param1:Number, param2:Number) : §_-sW§
      {
         var _loc4_:§_-sW§ = null;
         var _loc3_:int = this.§_-eB§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§_-eB§[_loc3_])
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
      
      public function getObject(param1:int) : §_-sW§
      {
         return this.§_-eB§[param1];
      }
      
      public function §_-MH§(param1:Number, param2:Number) : void
      {
         var _loc4_:§_-sW§ = null;
         var _loc3_:int = this.§_-eB§.length - 1;
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§_-eB§[_loc3_] as §_-sW§).§_-MH§(param2,param1);
            _loc3_--;
         }
      }
      
      private function §_-5F§(param1:§_-sW§, param2:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§_-sW§ = null;
         if(!this.mSardineCanAdded)
         {
            return true;
         }
         if(this.mMightyEagleAdded)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         if(param1.§_-gg§ == param1.§_-jW§)
         {
            if(this.§_-LB§ < §_-eI§.§_-ur§)
            {
               this.§_-LB§ += param2 * §_-eI§.§_-0e§;
            }
            param1.§_-vv§().§_-o-§(param2 * this.§_-LB§);
         }
         if(param1.§_-AN§() || this.§_-Gh§(param1))
         {
            if(this.mMightyEagleTimer < §_-eI§.§_-DQ§)
            {
               _loc4_ = this.mMightyEagleTimer + param2;
               if(this.mMightyEagleTimer < §_-eI§.§_-VB§ && _loc4_ > §_-eI§.§_-VB§)
               {
                  §_-pD§.playSound("Mighty_Eagle_Selected_1","ChannelBird");
                  §_-pD§.playSound("Mighty_Eagle_Flying_1","ChannelBird");
               }
               if(_loc4_ >= §_-eI§.§_-DQ§)
               {
                  _loc5_ = param1.§_-vv§().GetPosition().x - §_-eI§.§_-7g§;
                  _loc6_ = param1.§_-vv§().GetPosition().y - §_-eI§.§_-7g§ * §_-eI§.§_-Ls§ * 1.07;
                  if(this.§_-Gh§(param1))
                  {
                     _loc3_ = true;
                  }
                  _loc7_ = this.§_-5h§("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,§_-eI§.§_-f2§ * 1.2);
                  this.mMightyEagleAdded = true;
                  _loc7_.§_-UF§.§_-tZ§(1.82);
               }
               this.mMightyEagleTimer = _loc4_;
            }
         }
         return _loc3_;
      }
      
      private function §_-aY§(param1:§_-sW§, param2:Number) : Boolean
      {
         var _loc5_:§_-sW§ = null;
         if(!this.§_-KV§ && this.mMightyEagleTimer > §_-eI§.§_-WT§)
         {
            this.§_-KV§ = true;
            this.§_-6q§.§_-Wz§();
         }
         this.mMightyEagleTimer += param2;
         this.§_-6q§.§_-sk§.§_-Eo§(§_-qC§.§_-T6§,§_-Tg§.§_-U1§,§_-qC§.§_-L4§,param1.§_-vv§().GetPosition().x - 3 + Math.random() * (3 * 2),param1.§_-vv§().GetPosition().y - 3 + Math.random() * (3 * 2),2500,"",§_-qC§.§_-rI§(param1.§true §),0,0,0,0,4);
         var _loc4_:int = 1;
         if(this.mMightyEagleHasTouchedGround)
         {
            param1.§_-4I§(§_-eI§.§_-Di§ * param2);
            _loc4_ = -1;
            if(this.§false§)
            {
               this.§false§ = false;
               this.§_-6q§.§_-w7§();
               param1.§_-yC§(§_-AZ§.§_-V0§);
               this.mSardineCanAdded = false;
               param1.§_-UF§.§_-gv§ = true;
               param1.§_-UF§.§_-Y-§();
               for each(_loc5_ in this.§_-eB§)
               {
                  if(_loc5_ && _loc5_.§_-MK§())
                  {
                     _loc5_.§_-vv§().SetAwake(true);
                     _loc5_.§_-vv§().SetLinearVelocity(new b2Vec2(0,-18));
                  }
               }
               this.§_-0d§();
            }
            if(this.mMightyEagleTimer > 6000 && this.isPigsAlive())
            {
               for each(_loc5_ in this.§_-eB§)
               {
                  if(_loc5_ && _loc5_.§_-MK§())
                  {
                     _loc5_.applyDamage(_loc5_.§_-jW§ * 2,true,true,true);
                  }
               }
            }
         }
         else
         {
            this.mMightyEagleHasTouchedGround = param1.§_-vv§().GetPosition().y >= -5.5;
            this.§false§ = this.mMightyEagleHasTouchedGround;
         }
         param1.§_-jQ§(param2,new Point(1,_loc4_ * §_-eI§.§_-Ls§),§_-eI§.§_-0s§);
         return false;
      }
      
      private function §_-SE§() : void
      {
         var _loc1_:§_-w3§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§_-sW§ = null;
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
         while(this.§_-T§.length > 0)
         {
            _loc1_ = this.§_-T§.shift();
            _loc2_ = _loc1_.§_-DW§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            for each(_loc6_ in this.§_-eB§)
            {
               _loc8_ = _loc6_.§_-vv§().GetPosition().x - _loc3_;
               _loc9_ = _loc6_.§_-vv§().GetPosition().y - _loc4_;
               if((_loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)) <= _loc1_.§_-DW§)
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
                     _loc6_.§_-vv§().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
                  }
               }
               if(_loc10_ <= _loc1_.§_-NJ§)
               {
                  _loc14_ = _loc5_;
                  if(_loc10_ > 1)
                  {
                     _loc14_ /= _loc10_;
                  }
                  _loc6_.applyDamage(_loc14_,false);
               }
            }
            this.§_-6q§.§_-sk§.§_-Eo§(this.§_-XC§(_loc1_.type),§_-Tg§.§_-U1§,§_-qC§.§_-OY§,_loc3_,_loc4_,600,"",§_-qC§.§_-hf§,0,0,0,0,1,20,true);
            _loc7_ = 30;
            while(_loc7_ < 150)
            {
               _loc15_ = 0.75 * _loc2_ + Math.random() * _loc2_;
               _loc16_ = 1250 + Math.random() * 750;
               _loc17_ = _loc7_ / (180 / Math.PI);
               this.§_-6q§.§_-sk§.§_-Eo§(§_-qC§.§_-F-§,§_-Tg§.§_-U1§,§_-qC§.§_-L4§,_loc3_,_loc4_,_loc16_,"",§_-qC§.§_-hf§,_loc15_ * Math.cos(_loc17_),-_loc15_ * Math.sin(_loc17_),20,0);
               _loc7_ += 5;
            }
         }
      }
      
      protected function §_-XC§(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §_-qC§.§_-Ac§;
      }
      
      public function §_-kw§(param1:Number) : void
      {
         var _loc4_:§_-sW§ = null;
         var _loc2_:§_-sW§ = null;
         var _loc3_:int = this.§_-eB§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§_-eB§[_loc3_];
            if(_loc2_.§_-C5§())
            {
               if(this.§_-5F§(_loc2_,param1))
               {
                  this.§ else§(_loc3_,false,false,false);
               }
            }
            else if(_loc2_.§_-nL§())
            {
               this.§_-aY§(_loc2_,param1);
            }
            else if(this.§_-Gh§(_loc2_))
            {
               _loc2_.§_-yC§(§_-AZ§.§_-ZI§);
               this.§ else§(_loc3_,false,false,false);
            }
            else if(_loc2_.isReadyToBeRemoved(param1))
            {
               _loc2_.§_-yC§(§_-AZ§.§_-ZI§);
               this.§ else§(_loc3_,false,true,true);
            }
            else if(_loc2_.§_-bD§())
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         this.§_-SE§();
         if(this.§_-eN§)
         {
            (_loc4_ = this.§_-6q§.mActiveObject).activateSpecialPower(this);
            this.§_-eN§ = false;
         }
      }
      
      private function §_-0d§() : void
      {
         var _loc1_:§_-5c§ = null;
         for each(_loc1_ in this.§_-q9§)
         {
            this.§_-6q§.§_-vs§.§_-9K§.§_-qI§(_loc1_.§_-Pr§);
         }
      }
      
      public function §_-jO§() : Boolean
      {
         var _loc2_:§_-sW§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§_-eB§.length)
         {
            _loc2_ = this.§_-eB§[_loc1_];
            if(_loc2_.explode())
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §_-Gh§(param1:§_-sW§) : Boolean
      {
         if(param1 && param1.§_-OQ§.§_-oo§() != §_-pC§.§_-lg§ && this.§_-6q§.§_-Dw§.§_-h9§(param1.§_-vv§().GetPosition().x,param1.§_-vv§().GetPosition().y))
         {
            return true;
         }
         return false;
      }
      
      public function § else§(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:§_-sW§;
         if((_loc5_ = this.§_-eB§[param1]) == this.§_-6q§.mActiveObject)
         {
            this.§_-6q§.mActiveObject = null;
         }
         if(param2)
         {
            this.§_-6q§.addScore(_loc5_.§_-OQ§.score,§_-iw§.§_-ao§,true,_loc5_.§_-vv§().GetPosition().x,_loc5_.§_-vv§().GetPosition().y - 3,§_-qC§.§_-x7§(_loc5_.§true §));
         }
         if(param3)
         {
            _loc5_.addDestructionParticles(this.§_-6q§.§_-sk§);
         }
         if(param4)
         {
            this.§_-ng§(_loc5_);
         }
         if(!_loc5_.isTexture())
         {
         }
         this.§_-wn§.removeChild(_loc5_.sprite);
         _loc5_.dispose();
         _loc5_ = null;
         this.§_-eB§[param1] = null;
         this.§_-eB§.splice(param1,1);
      }
      
      protected function §_-ng§(param1:§_-sW§) : void
      {
         if(param1.§_-fd§().toUpperCase() == "WHITE_EGG" || param1.§_-fd§().toUpperCase() == "TNT")
         {
            if(param1.§true §.toUpperCase() == §_-DJ§.§_-Ig§)
            {
               this.addExplosions(§_-w3§.§_-kc§,param1.§_-vv§().GetPosition().x,param1.§_-vv§().GetPosition().y);
            }
            else
            {
               this.addExplosions(§_-w3§.§_-OZ§,param1.§_-vv§().GetPosition().x,param1.§_-vv§().GetPosition().y);
            }
         }
      }
      
      public function §_-k5§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.§ else§(this.§_-eB§.indexOf(param1),param2,param3,param4);
      }
      
      public function §_-hH§(param1:Number, param2:Number) : void
      {
         this.§_-wn§.x = -param1;
         this.§_-wn§.y = -param2;
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc3_:§_-sW§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-eB§.length)
         {
            _loc3_ = this.§_-eB§[_loc2_] as §_-sW§;
            if(_loc3_ && _loc3_.§_-MK§() && _loc3_.§_-gg§ > 0)
            {
               if(!param1 || _loc3_.§_-UF§.mTryToBlink <= 0 && _loc3_.§_-UF§.mTryToScream <= 0)
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §_-sV§(param1:Boolean = false) : int
      {
         var _loc4_:§_-sW§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§_-eB§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§_-eB§[_loc3_] as §_-sW§) && _loc4_.§_-MK§() && _loc4_.§_-gg§ > 0)
            {
               if(!param1 || _loc4_.§_-UF§.mTryToBlink <= 0 && _loc4_.§_-UF§.mTryToScream <= 0)
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
         var _loc3_:§_-sW§ = null;
         var _loc2_:int = this.§_-eB§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§_-eB§[_loc2_];
            if(_loc3_ && _loc3_.§_-MK§() && _loc3_.§_-gg§ > 0)
            {
               _loc3_.§_-UF§.mTryToScream = §_-1c§.§_-sO§ * param1;
            }
            _loc2_--;
         }
      }
      
      public function §_-jL§() : Boolean
      {
         var _loc2_:§_-sW§ = null;
         var _loc1_:int = this.§_-eB§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§_-eB§[_loc1_] as §_-sW§;
            if(_loc2_ && _loc2_.§_-bD§() && _loc2_.§_-gg§ > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:§_-sW§ = null;
         var _loc1_:int = this.§_-eB§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§_-eB§[_loc1_] as §_-sW§;
            if(_loc2_ && _loc2_.§_-gg§ > 0 && _loc2_.§_-bi§ != §_-y7§.§_-KW§)
            {
               if(_loc2_.§_-nV§() && !_loc2_.§_-AN§())
               {
                  return false;
               }
               if(_loc2_.§_-bD§() && _loc2_.§_-gg§ > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §_-TF§(param1:Boolean = false) : §_-sW§
      {
         var _loc5_:int = 0;
         var _loc6_:§_-sW§ = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = this.§_-eB§.length;
         var _loc3_:int = 1 + Math.random() * this.§_-sV§(param1);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               if((_loc6_ = this.§_-eB§[_loc5_]) && _loc6_.§_-MK§() && _loc6_.§_-gg§ > 0)
               {
                  if(!param1 || _loc6_.§_-UF§.mTryToBlink <= 0 && _loc6_.§_-UF§.mTryToScream <= 0)
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
      
      public function §_-2k§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.§_-eB§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ += (this.§_-eB§[_loc2_] as §_-sW§).§_-OQ§.score;
            if((this.§_-eB§[_loc2_] as §_-sW§).§_-nV§())
            {
               _loc1_ += §_-7W§.§_-Sa§.getValue() * int((this.§_-eB§[_loc2_] as §_-sW§).§_-jW§);
            }
            _loc2_--;
         }
         return int(_loc1_ + this.§_-6q§.mLevelSlingshot.§_-2k§());
      }
      
      public function §_-Kr§(param1:§_-sW§, param2:§_-sW§) : Boolean
      {
         if(param1.§_-bD§() && param2.§_-bD§())
         {
            return true;
         }
         if(!param1.§_-nH§() && !param2.§_-nH§())
         {
            return true;
         }
         return false;
      }
      
      public function §_-LT§(param1:b2Fixture, param2:b2Fixture) : void
      {
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc3_:§_-sW§ = param1.GetBody().GetUserData() as §_-sW§;
         var _loc4_:§_-sW§ = param2.GetBody().GetUserData() as §_-sW§;
         if(this.mMightyEagleAdded)
         {
            if(_loc3_.§_-nL§() || this.mMightyEagleAdded && _loc4_.§_-MK§())
            {
               _loc4_.applyDamage(_loc4_.§_-jW§ * 2,true,true,true);
               return;
            }
            if(_loc4_.§_-nL§() || this.mMightyEagleAdded && _loc3_.§_-MK§())
            {
               _loc3_.applyDamage(_loc3_.§_-jW§ * 2,true,true,true);
               return;
            }
         }
         else if(this.mSardineCanAdded && this.mMightyEagleTimer == §_-eI§.§_-DQ§)
         {
            if(_loc3_.§_-C5§() || _loc4_.§_-C5§())
            {
               this.mMightyEagleTimer = 0;
            }
         }
         if(this.§_-Kr§(_loc3_,_loc4_))
         {
            return;
         }
         var _loc6_:Number = _loc3_.§_-ME§(_loc4_.§_-fd§());
         var _loc7_:Number = _loc3_.§_-le§(_loc4_.§_-fd§());
         var _loc8_:Number = _loc4_.§_-ME§(_loc3_.§_-fd§());
         var _loc9_:Number = _loc4_.§_-le§(_loc3_.§_-fd§());
         var _loc10_:Number = _loc3_.§_-vv§().GetMass() * _loc3_.§_-vv§().GetLinearVelocity().x - _loc4_.§_-vv§().GetMass() * _loc4_.§_-vv§().GetLinearVelocity().x;
         var _loc11_:Number = _loc3_.§_-vv§().GetMass() * _loc3_.§_-vv§().GetLinearVelocity().y - _loc4_.§_-vv§().GetMass() * _loc4_.§_-vv§().GetLinearVelocity().y;
         var _loc12_:Number = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_) / 10;
         var _loc13_:Number = _loc6_ * _loc12_;
         var _loc14_:Number = _loc8_ * _loc12_;
         var _loc15_:Number = Math.max(0,_loc3_.§_-gg§);
         var _loc16_:Number = Math.max(0,_loc4_.§_-gg§);
         var _loc17_:Number = _loc3_.applyDamage(_loc14_,true,_loc4_.§_-bD§(),_loc16_ == _loc4_.§_-jW§);
         var _loc18_:Number = _loc4_.applyDamage(_loc13_,true,_loc3_.§_-bD§(),_loc15_ == _loc3_.§_-jW§);
         if(_loc17_ <= 0)
         {
            if((_loc20_ = (_loc20_ = (_loc14_ - _loc15_) / _loc14_) * _loc9_) > 1)
            {
               _loc20_ = 1;
            }
            _loc4_.§_-cz§(new b2Vec2(_loc4_.§_-vv§().GetLinearVelocity().x * _loc20_,_loc4_.§_-vv§().GetLinearVelocity().y * _loc20_));
         }
         if(_loc18_ <= 0)
         {
            if((_loc21_ = (_loc21_ = (_loc13_ - _loc16_) / _loc13_) * _loc7_) > 1)
            {
               _loc21_ = 1;
            }
            _loc3_.§_-cz§(new b2Vec2(_loc3_.§_-vv§().GetLinearVelocity().x * _loc21_,_loc3_.§_-vv§().GetLinearVelocity().y * _loc21_));
         }
      }
      
      public function §else §() : void
      {
         var _loc2_:§_-sW§ = null;
         var _loc1_:int = this.§_-eB§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§_-eB§[_loc1_] as §_-sW§;
            if(_loc2_ != null && _loc2_.§_-MK§())
            {
               this.§ else§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §_-C§() : void
      {
         var _loc2_:§_-sW§ = null;
         var _loc1_:int = this.§_-eB§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§_-eB§[_loc1_] as §_-sW§;
            if(_loc2_ != null && _loc2_.§_-Rn§())
            {
               this.§ else§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §_-5X§() : int
      {
         return this.§_-eB§.length;
      }
      
      public function §_-gR§(param1:§_-sq§) : void
      {
         var _loc4_:§_-sW§ = null;
         var _loc5_:§_-GP§ = null;
         var _loc6_:§_-5c§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§_-eB§.length)
         {
            if((_loc4_ = this.§_-eB§[_loc2_]).§_-8D§)
            {
               if(!_loc4_.isGround())
               {
                  (_loc5_ = new §_-GP§()).angle = _loc4_.§_-2d§();
                  _loc5_.id = _loc4_.§true §;
                  _loc5_.x = _loc4_.§_-vv§().GetPosition().x;
                  _loc5_.y = _loc4_.§_-vv§().GetPosition().y;
                  param1.§_-7u§.push(_loc5_);
               }
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§_-q9§.length)
         {
            (_loc6_ = new §_-5c§(this.§_-q9§[_loc3_].type,this.§_-q9§[_loc3_].index1,this.§_-q9§[_loc3_].index2)).backAndForth = this.§_-q9§[_loc3_].backAndForth;
            _loc6_.collideConnected = this.§_-q9§[_loc3_].collideConnected;
            _loc6_.limit = this.§_-q9§[_loc3_].limit;
            _loc6_.lowerLimit = this.§_-q9§[_loc3_].lowerLimit;
            _loc6_.maxTorque = this.§_-q9§[_loc3_].maxTorque;
            _loc6_.motor = this.§_-q9§[_loc3_].motor;
            _loc6_.motorSpeed = this.§_-q9§[_loc3_].motorSpeed;
            _loc6_.upperLimit = this.§_-q9§[_loc3_].upperLimit;
            _loc6_.p1 = this.§_-q9§[_loc3_].p1;
            _loc6_.p2 = this.§_-q9§[_loc3_].p2;
            param1.§_-q9§.push(_loc6_);
            _loc3_++;
         }
      }
      
      public function §_-6T§() : void
      {
         var _loc1_:int = 0;
         while(this.§_-eB§.length > _loc1_)
         {
            if(this.§_-eB§[_loc1_].isGround())
            {
               _loc1_++;
            }
            else
            {
               this.§_-k5§(this.§_-eB§[_loc1_]);
            }
         }
      }
      
      public function §_-Q8§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§_-eB§.length)
         {
            if(this.§_-eB§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§_-eB§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         this.§_-xd§ = param1;
         this.§_-wq§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§_-eB§.length)
         {
            if(this.§_-eB§[_loc2_].isTexture())
            {
               this.§_-eB§[_loc2_].sprite.visible = !this.§_-xd§;
            }
            _loc2_++;
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         this.§_-Yb§ = param1;
      }
      
      public function §_-eT§() : Boolean
      {
         return this.§_-Yb§;
      }
   }
}
