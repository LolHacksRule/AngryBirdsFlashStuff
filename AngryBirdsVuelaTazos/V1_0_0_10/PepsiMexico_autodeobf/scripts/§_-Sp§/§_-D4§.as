package §_-Sp§
{
   import §_-0y§.§_-B§;
   import §_-0y§.§_-B3§;
   import §_-0y§.§_-Z2§;
   import §_-3P§.§_-ry§;
   import §_-7o§.§_-Kd§;
   import §_-7o§.§_-w7§;
   import §_-FZ§.§_-2Q§;
   import §_-FZ§.§_-J2§;
   import §_-KS§.§_-Wt§;
   import §_-Zl§.b2Vec2;
   import §_-hR§.§_-RJ§;
   import §_-hR§.§_-X9§;
   import §_-hR§.§_-bJ§;
   import §_-hR§.§_-bZ§;
   import §_-hR§.§_-c§;
   import §_-hT§.§_-hH§;
   import §_-hT§.§_-rE§;
   import §_-jY§.Texture;
   import §_-oZ§.§_-JH§;
   import §_-rg§.b2Fixture;
   import §_-se§.Sprite;
   import §_-se§.§_-N§;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §_-D4§
   {
       
      
      private var §_-kz§:Vector.<§_-JP§>;
      
      protected var §_-e6§:int;
      
      public var §_-Ia§:§_-B3§;
      
      public var mActivateSpecialPower:Boolean;
      
      public var mExplodePreviousActiveObjectOnNextClick:Boolean = false;
      
      public var §_-Ht§:Vector.<§_-Dn§>;
      
      private var §_-az§:Sprite;
      
      private var §_-qm§:Sprite;
      
      private var §_-CH§:Vector.<Texture>;
      
      private var §_-MM§:Vector.<§_-hH§>;
      
      private var §_-As§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §_-G4§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      private var §_-gL§:Boolean = false;
      
      private var §_-33§:Number = 0.07;
      
      private var §_-ld§:Boolean = true;
      
      private var §_-X0§:Boolean = true;
      
      public function §_-D4§(param1:§_-B3§, param2:§_-ry§, param3:Sprite)
      {
         var _loc6_:§_-rE§ = null;
         var _loc7_:§_-hH§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§_-JP§ = null;
         var _loc11_:§_-JP§ = null;
         this.§_-kz§ = new Vector.<§_-JP§>();
         this.§_-Ht§ = new Vector.<§_-Dn§>();
         this.§_-CH§ = new Vector.<Texture>();
         super();
         this.§_-Ia§ = param1;
         this.§_-e6§ = 0;
         this.§_-qm§ = param3;
         this.§_-qm§.§_-kU§ = false;
         this.§_-X0§ = true;
         this.§_-ld§ = true;
         this.§_-az§ = new Sprite();
         this.§_-qm§.addChild(this.§_-az§);
         var _loc4_:§_-J2§;
         if((_loc4_ = §_-2Q§.§_-Z1§(param2.§_-j3§)) == null)
         {
            param2.§_-j3§ = "BACKGROUND_BLUE_GRASS";
            _loc4_ = §_-2Q§.§_-Z1§(param2.§_-j3§);
         }
         this.§_-08§(§_-2Q§.§_-Z1§(param2.§_-j3§).§_-81§,(this.§_-Ia§.§_-iZ§.§_-4J§ + this.§_-Ia§.§_-iZ§.§_-ge§) / 2,this.§_-Ia§.§_-iZ§.§_-Ab§ + §_-B§.§_-5O§);
         var _loc5_:int = this.§_-kz§.length;
         for each(_loc6_ in param2.§_-Oe§)
         {
            this.§_-08§(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle);
         }
         this.§ use§();
         this.§_-GL§(true);
         this.mActivateSpecialPower = false;
         this.§_-MM§ = param2.§_-MM§;
         for each(_loc7_ in param2.§_-MM§)
         {
            _loc8_ = _loc7_.index1 + _loc5_;
            _loc9_ = _loc7_.index2 + _loc5_;
            _loc10_ = this.§_-kz§[_loc8_];
            _loc11_ = this.§_-kz§[_loc9_];
            if(!(_loc10_ && _loc11_))
            {
               throw new Error("Joint index out of bounds [" + _loc8_ + ", " + _loc9_ + "]");
            }
            _loc7_.§_-FI§ = this.§_-Ia§.§_-AT§.§_-Gt§.§_-PU§(_loc7_.§_-PF§(_loc10_,_loc11_));
         }
      }
      
      public function get §_-0e§() : Sprite
      {
         return this.§_-qm§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§_-kz§.length > 0)
         {
            this.§_-cS§(0);
         }
         this.§_-kz§ = null;
         if(this.§_-qm§)
         {
            this.§_-qm§.dispose();
            this.§_-qm§ = null;
            this.§_-az§ = null;
         }
         while(this.§_-CH§.length > 0)
         {
            _loc1_ = this.§_-CH§.pop();
            this.§_-Ia§.§_-WT§.§_-Tx§(_loc1_);
         }
      }
      
      private function §_-GL§(param1:Boolean) : void
      {
         this.§_-az§.visible = param1;
      }
      
      private function § use§() : void
      {
         var _loc3_:§_-JP§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§_-N§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§_-JP§> = new Vector.<§_-JP§>();
         for each(_loc3_ in this.§_-kz§)
         {
            if(_loc3_.isTexture())
            {
               _loc2_.push(_loc3_);
               _loc4_ = _loc3_.sprite.getBounds(this.§_-qm§);
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
            this.§_-8b§(_loc10_.rect,_loc10_,_loc5_);
            _loc11_ = this.§_-ug§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
            _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc12_ = this.§_-Ia§.§_-WT§.§_-2V§(_loc10_);
            this.§_-CH§.push(_loc12_);
            (_loc13_ = new §_-N§(_loc12_)).x = _loc8_ / _loc5_;
            _loc13_.y = _loc9_ / _loc5_;
            _loc13_.scaleX = 1 / _loc5_;
            _loc13_.scaleY = 1 / _loc5_;
            this.§_-az§.addChild(_loc13_);
            _loc11_.dispose();
         }
      }
      
      private function §_-ug§(param1:Vector.<§_-JP§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§_-JP§ = null;
         var _loc11_:§_-bZ§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§_-dA§.shape).§_-Dl§();
            _loc13_ = new Rectangle(_loc12_[0].x / §_-B3§.§_-s8§ * param6,_loc12_[0].y / §_-B3§.§_-s8§ * param6,(_loc12_[1].x - _loc12_[0].x) / §_-B3§.§_-s8§ * param6,(_loc12_[1].y - _loc12_[0].y) / §_-B3§.§_-s8§ * param6);
            _loc10_.identity();
            _loc10_.scale(_loc13_.width,_loc13_.height);
            _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
            _loc10_.rotate((360 - _loc7_.§_-4S§()) / 180 * Math.PI);
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            _loc8_.draw(_loc9_,_loc10_);
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      private function §_-8b§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.§_-Ia§.§_-Ms§.§_-Ji§();
         var _loc5_:§_-Wt§;
         if(_loc5_ = this.§_-Ia§.§_-WT§.§_-es§(_loc4_))
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
      
      public function §_-mG§(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Sprite = null) : §_-JP§
      {
         var _loc9_:§_-JP§ = null;
         switch(param1)
         {
            case "BIRD_BLACK":
               _loc9_ = new §_-ZY§(this,param8,this.§_-Ia§.§_-AT§.§_-Gt§,this.§_-Ia§,this.§_-e6§,param1,param2,param3,param4);
               break;
            case "BIRD_BLUE":
               _loc9_ = new §_-7b§(this,param8,this.§_-Ia§.§_-AT§.§_-Gt§,this.§_-Ia§,this.§_-e6§,param1,param2,param3,param4,param7);
               break;
            case "BIRD_GREEN":
               _loc9_ = new §_-vH§(this,param8,this.§_-Ia§.§_-AT§.§_-Gt§,this.§_-Ia§,this.§_-e6§,param1,param2,param3,param4);
               break;
            case "BIRD_WHITE":
               _loc9_ = new §_-i§(this,param8,this.§_-Ia§.§_-AT§.§_-Gt§,this.§_-Ia§,this.§_-e6§,param1,param2,param3,param4);
               break;
            case "BIRD_YELLOW":
               _loc9_ = new §_-j4§(this,param8,this.§_-Ia§.§_-AT§.§_-Gt§,this.§_-Ia§,this.§_-e6§,param1,param2,param3,param4);
               break;
            default:
               _loc9_ = new §_-FR§(this,param8,this.§_-Ia§.§_-AT§.§_-Gt§,this.§_-Ia§,this.§_-e6§,param1,param2,param3,param4);
         }
         return _loc9_;
      }
      
      public function §_-08§(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true) : §_-JP§
      {
         var _loc9_:§_-JP§ = null;
         var _loc10_:§_-RJ§ = null;
         var _loc8_:Sprite = new Sprite();
         if(param1.indexOf("BIRD") == 0)
         {
            _loc9_ = this.§_-mG§(param1,param2,param3,param4,param5,param6,param7,_loc8_);
         }
         else if(param1.indexOf("PIG") == 0)
         {
            _loc9_ = new §_-6s§(this,_loc8_,this.§_-Ia§.§_-AT§.§_-Gt§,this.§_-Ia§,this.§_-e6§,param1,param2,param3,param4);
         }
         else
         {
            if((_loc10_ = §_-bJ§.§_-hL§(param1)) == null && param1.indexOf("MISC_") == 0)
            {
               param1 = "MISC_FOOD_" + param1.substring(5);
               _loc10_ = §_-bJ§.§_-hL§(param1);
            }
            if(_loc10_.§_-OQ§ == §_-RJ§.§_-K§ || _loc10_.§_-OQ§ == §_-RJ§.§_-UV§)
            {
               _loc9_ = new §_-Zk§(this,_loc8_,this.§_-Ia§.§_-AT§.§_-Gt§,this.§_-Ia§,this.§_-e6§,param1,param2,param3,param4);
            }
            else
            {
               _loc9_ = new §_-JP§(this,_loc8_,this.§_-Ia§.§_-AT§.§_-Gt§,this.§_-Ia§,this.§_-e6§,param1,param2,param3,param4);
            }
         }
         if(_loc9_.isTexture())
         {
            _loc8_.visible = !this.§_-ld§;
            this.§_-kz§[this.§_-kz§.length] = _loc9_;
         }
         else
         {
            this.§_-kz§[this.§_-kz§.length] = _loc9_;
         }
         if(_loc9_ is §_-FR§ && !_loc9_.§_-wE§())
         {
            this.§_-qm§.addChildAt(_loc8_,0);
         }
         else
         {
            this.§_-qm§.addChild(_loc8_);
         }
         if(param5)
         {
            this.§_-Ia§.§_-HE§(_loc9_);
         }
         if(param6)
         {
            this.§_-Ia§.mActiveObject = _loc9_;
         }
         return _loc9_;
      }
      
      public function §_-4U§() : void
      {
         var _loc2_:§_-JP§ = null;
         var _loc1_:int = this.§_-kz§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§_-kz§[_loc1_] as §_-JP§;
            if(_loc2_)
            {
               if(_loc2_.§null § <= 0)
               {
                  this.§_-cS§(_loc1_,true,true,true);
               }
               else
               {
                  _loc2_.§_-My§();
                  _loc2_.§_-NF§();
               }
            }
            _loc1_--;
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         this.§_-Ht§.push(§_-Dn§.§_-Al§(param1,param2,param3));
         §_-JH§.§_-A3§("TntExplosions","ChannelExplosions");
      }
      
      public function §_-Vd§(param1:Number, param2:Number) : int
      {
         var _loc4_:§_-JP§ = null;
         var _loc3_:int = this.§_-kz§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§_-kz§[_loc3_])
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
      
      public function §_-Nt§(param1:Number, param2:Number) : §_-JP§
      {
         var _loc4_:§_-JP§ = null;
         var _loc3_:int = this.§_-kz§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§_-kz§[_loc3_])
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
      
      public function getObject(param1:int) : §_-JP§
      {
         return this.§_-kz§[param1];
      }
      
      public function §_-sB§(param1:Number, param2:Number) : void
      {
         var _loc4_:§_-JP§ = null;
         var _loc3_:int = this.§_-kz§.length - 1;
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§_-kz§[_loc3_] as §_-JP§).§_-sB§(param2,param1);
            _loc3_--;
         }
      }
      
      private function §_-i2§(param1:§_-JP§, param2:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§_-JP§ = null;
         if(!this.mSardineCanAdded)
         {
            return true;
         }
         if(this.mMightyEagleAdded)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         if(param1.§null § == param1.§_-8S§)
         {
            if(this.§_-33§ < §_-Z2§.§return§)
            {
               this.§_-33§ += param2 * §_-Z2§.§_-Zy§;
            }
            param1.§_-dZ§().§_-9i§(param2 * this.§_-33§);
         }
         if(param1.§_-LB§() || this.§_-Tv§(param1))
         {
            if(this.mMightyEagleTimer < §_-Z2§.§_-gg§)
            {
               _loc4_ = this.mMightyEagleTimer + param2;
               if(this.mMightyEagleTimer < §_-Z2§.§_-Kn§ && _loc4_ > §_-Z2§.§_-Kn§)
               {
                  §_-JH§.§_-A3§("Mighty_Eagle_Selected_1","ChannelBird");
                  §_-JH§.§_-A3§("Mighty_Eagle_Flying_1","ChannelBird");
               }
               if(_loc4_ >= §_-Z2§.§_-gg§)
               {
                  _loc5_ = param1.§_-dZ§().GetPosition().x - §_-Z2§.§_-jM§;
                  _loc6_ = param1.§_-dZ§().GetPosition().y - §_-Z2§.§_-jM§ * §_-Z2§.§_-pd§ * 1.07;
                  if(this.§_-Tv§(param1))
                  {
                     _loc3_ = true;
                  }
                  _loc7_ = this.§_-08§("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,§_-Z2§.§_-pF§ * 1.2);
                  this.mMightyEagleAdded = true;
                  _loc7_.§_-LF§.§_-dE§(1.82);
               }
               this.mMightyEagleTimer = _loc4_;
            }
         }
         return _loc3_;
      }
      
      private function §_-Mt§(param1:§_-JP§, param2:Number) : Boolean
      {
         var _loc5_:§_-JP§ = null;
         if(!this.§_-gL§ && this.mMightyEagleTimer > §_-Z2§.§_-XO§)
         {
            this.§_-gL§ = true;
            this.§_-Ia§.§_-2y§();
         }
         this.mMightyEagleTimer += param2;
         this.§_-Ia§.§_-29§.§_-4V§(§_-w7§.§_-Hl§,§_-Kd§.§_-vR§,§_-w7§.§_-Or§,param1.§_-dZ§().GetPosition().x - 3 + Math.random() * (3 * 2),param1.§_-dZ§().GetPosition().y - 3 + Math.random() * (3 * 2),2500,"",§_-w7§.§_-MH§(param1.§_-TR§),0,0,0,0,4);
         var _loc4_:int = 1;
         if(this.mMightyEagleHasTouchedGround)
         {
            param1.§_-qN§(§_-Z2§.§_-Rr§ * param2);
            _loc4_ = -1;
            if(this.§_-G4§)
            {
               this.§_-G4§ = false;
               this.§_-Ia§.§_-ZX§();
               param1.§_-m-§(§_-c§.§_-k6§);
               this.mSardineCanAdded = false;
               param1.§_-LF§.§_-N4§ = true;
               param1.§_-LF§.§_-hd§();
               for each(_loc5_ in this.§_-kz§)
               {
                  if(_loc5_ && _loc5_.§_-fQ§())
                  {
                     _loc5_.§_-dZ§().SetAwake(true);
                     _loc5_.§_-dZ§().SetLinearVelocity(new b2Vec2(0,-18));
                  }
               }
               this.§class§();
            }
            if(this.mMightyEagleTimer > 6000 && this.isPigsAlive())
            {
               for each(_loc5_ in this.§_-kz§)
               {
                  if(_loc5_ && _loc5_.§_-fQ§())
                  {
                     _loc5_.applyDamage(_loc5_.§_-8S§ * 2,true,true,true);
                  }
               }
            }
         }
         else
         {
            this.mMightyEagleHasTouchedGround = param1.§_-dZ§().GetPosition().y >= -5.5;
            this.§_-G4§ = this.mMightyEagleHasTouchedGround;
         }
         param1.§_-XT§(param2,new Point(1,_loc4_ * §_-Z2§.§_-pd§),§_-Z2§.§_-rY§);
         return false;
      }
      
      private function §_-B9§() : void
      {
         var _loc1_:§_-Dn§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§_-JP§ = null;
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
         while(this.§_-Ht§.length > 0)
         {
            _loc1_ = this.§_-Ht§.shift();
            _loc2_ = _loc1_.§_-nK§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.§_-Zd§;
            for each(_loc6_ in this.§_-kz§)
            {
               _loc8_ = _loc6_.§_-dZ§().GetPosition().x - _loc3_;
               _loc9_ = _loc6_.§_-dZ§().GetPosition().y - _loc4_;
               if((_loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)) <= _loc1_.§_-nK§)
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
                     _loc6_.§_-dZ§().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
                  }
               }
               if(_loc10_ <= _loc1_.§_-RI§)
               {
                  _loc14_ = _loc5_;
                  if(_loc10_ > 1)
                  {
                     _loc14_ /= _loc10_;
                  }
                  _loc6_.applyDamage(_loc14_,false);
               }
            }
            this.§_-Ia§.§_-29§.§_-4V§(§_-w7§.§_-nT§,§_-Kd§.§_-vR§,§_-w7§.§_-ve§,_loc3_,_loc4_,600,"",§_-w7§.§_-k-§);
            _loc7_ = 30;
            while(_loc7_ < 150)
            {
               _loc15_ = 0.75 * _loc2_ + Math.random() * _loc2_;
               _loc16_ = 1250 + Math.random() * 750;
               _loc17_ = _loc7_ / (180 / Math.PI);
               this.§_-Ia§.§_-29§.§_-4V§(§_-w7§.§_-c6§,§_-Kd§.§_-vR§,§_-w7§.§_-Or§,_loc3_,_loc4_,_loc16_,"",§_-w7§.§_-k-§,_loc15_ * Math.cos(_loc17_),-_loc15_ * Math.sin(_loc17_),20,0);
               _loc7_ += 5;
            }
         }
      }
      
      public function §_-mc§(param1:Number) : void
      {
         var _loc4_:§_-JP§ = null;
         var _loc2_:§_-JP§ = null;
         var _loc3_:int = this.§_-kz§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§_-kz§[_loc3_];
            if(_loc2_.§_-LT§())
            {
               if(this.§_-i2§(_loc2_,param1))
               {
                  this.§_-cS§(_loc3_,false,false,false);
               }
            }
            else if(_loc2_.§_-wE§())
            {
               this.§_-Mt§(_loc2_,param1);
            }
            else if(this.§_-Tv§(_loc2_))
            {
               _loc2_.§_-m-§(§_-c§.§_-1e§);
               this.§_-cS§(_loc3_,false,false,false);
            }
            else if(_loc2_.isReadyToBeRemoved(param1))
            {
               _loc2_.§_-m-§(§_-c§.§_-1e§);
               this.§_-cS§(_loc3_,false,true,true);
            }
            else if(_loc2_.§_-is§())
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         this.§_-B9§();
         if(this.mActivateSpecialPower)
         {
            (_loc4_ = this.§_-Ia§.mActiveObject).activateSpecialPower(this);
            this.mActivateSpecialPower = false;
         }
      }
      
      private function §class§() : void
      {
         var _loc1_:§_-hH§ = null;
         for each(_loc1_ in this.§_-MM§)
         {
            this.§_-Ia§.§_-AT§.§_-Gt§.§_-kZ§(_loc1_.§_-FI§);
         }
      }
      
      public function explodePreviousActiveObjects() : Boolean
      {
         var _loc2_:§_-JP§ = null;
         this.mExplodePreviousActiveObjectOnNextClick = false;
         var _loc1_:int = 0;
         while(_loc1_ < this.§_-kz§.length)
         {
            _loc2_ = this.§_-kz§[_loc1_];
            if(_loc2_.explode())
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §_-Tv§(param1:§_-JP§) : Boolean
      {
         if(param1 && param1.§_-dA§.§_-Xc§() != §_-X9§.§_-bF§ && this.§_-Ia§.§_-iZ§.§_-GD§(param1.§_-dZ§().GetPosition().x,param1.§_-dZ§().GetPosition().y))
         {
            return true;
         }
         return false;
      }
      
      public function §_-cS§(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:§_-JP§;
         if((_loc5_ = this.§_-kz§[param1]) == this.§_-Ia§.mActiveObject)
         {
            this.§_-Ia§.mActiveObject = null;
         }
         if(param2)
         {
            this.§_-Ia§.addScore(_loc5_.§_-dA§.score,true,_loc5_.§_-dZ§().GetPosition().x,_loc5_.§_-dZ§().GetPosition().y - 3,§_-w7§.§_-B-§(_loc5_.§_-TR§));
         }
         if(param3)
         {
            _loc5_.addDestructionParticles(this.§_-Ia§.§_-29§);
         }
         if(param4)
         {
            this.§_-cM§(_loc5_);
         }
         if(!_loc5_.isTexture())
         {
         }
         this.§_-qm§.removeChild(_loc5_.sprite);
         _loc5_.dispose();
         _loc5_ = null;
         this.§_-kz§[param1] = null;
         this.§_-kz§.splice(param1,1);
      }
      
      protected function §_-cM§(param1:§_-JP§) : void
      {
         if(param1.§_-0f§().toUpperCase() == "WHITE_EGG" || param1.§_-0f§().toUpperCase() == "TNT")
         {
            if(param1.§_-TR§.toUpperCase() == §_-i§.§_-UD§)
            {
               this.addExplosions(§_-Dn§.§_-Cx§,param1.§_-dZ§().GetPosition().x,param1.§_-dZ§().GetPosition().y);
            }
            else
            {
               this.addExplosions(§_-Dn§.§_-A1§,param1.§_-dZ§().GetPosition().x,param1.§_-dZ§().GetPosition().y);
            }
         }
      }
      
      public function §_-Ma§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.§_-cS§(this.§_-kz§.indexOf(param1),param2,param3,param4);
      }
      
      public function §_-Go§(param1:Number, param2:Number) : void
      {
         this.§_-qm§.x = -param1;
         this.§_-qm§.y = -param2;
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc3_:§_-JP§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-kz§.length)
         {
            _loc3_ = this.§_-kz§[_loc2_] as §_-JP§;
            if(_loc3_ && _loc3_.§_-fQ§() && _loc3_.§null § > 0)
            {
               if(!param1 || _loc3_.§_-LF§.mTryToBlink <= 0 && _loc3_.§_-LF§.mTryToScream <= 0)
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §_-sG§(param1:Boolean = false) : int
      {
         var _loc4_:§_-JP§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§_-kz§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§_-kz§[_loc3_] as §_-JP§) && _loc4_.§_-fQ§() && _loc4_.§null § > 0)
            {
               if(!param1 || _loc4_.§_-LF§.mTryToBlink <= 0 && _loc4_.§_-LF§.mTryToScream <= 0)
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
         var _loc3_:§_-JP§ = null;
         var _loc2_:int = this.§_-kz§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§_-kz§[_loc2_];
            if(_loc3_ && _loc3_.§_-fQ§() && _loc3_.§null § > 0)
            {
               _loc3_.§_-LF§.mTryToScream = §_-Lk§.§_-1w§ * param1;
            }
            _loc2_--;
         }
      }
      
      public function §_-aY§() : Boolean
      {
         var _loc2_:§_-JP§ = null;
         var _loc1_:int = this.§_-kz§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§_-kz§[_loc1_] as §_-JP§;
            if(_loc2_ && _loc2_.§_-is§() && _loc2_.§null § > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:§_-JP§ = null;
         var _loc1_:int = this.§_-kz§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§_-kz§[_loc1_] as §_-JP§;
            if(_loc2_ && _loc2_.§null § > 0 && _loc2_.§_-OQ§ != §_-RJ§.§_-Zo§)
            {
               if(_loc2_.§_-rd§() && !_loc2_.§_-LB§())
               {
                  return false;
               }
               if(_loc2_.§_-is§() && _loc2_.§null § > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §_-Na§(param1:Boolean = false) : §_-JP§
      {
         var _loc5_:int = 0;
         var _loc6_:§_-JP§ = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = this.§_-kz§.length;
         var _loc3_:int = 1 + Math.random() * this.§_-sG§(param1);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               if((_loc6_ = this.§_-kz§[_loc5_]) && _loc6_.§_-fQ§() && _loc6_.§null § > 0)
               {
                  if(!param1 || _loc6_.§_-LF§.mTryToBlink <= 0 && _loc6_.§_-LF§.mTryToScream <= 0)
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
      
      public function §_-9o§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.§_-kz§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ += (this.§_-kz§[_loc2_] as §_-JP§).§_-dA§.score;
            if((this.§_-kz§[_loc2_] as §_-JP§).§_-rd§())
            {
               _loc1_ += §_-B3§.§_-eB§ * int((this.§_-kz§[_loc2_] as §_-JP§).§_-8S§);
            }
            _loc2_--;
         }
         return _loc1_;
      }
      
      public function §_-cO§(param1:§_-JP§, param2:§_-JP§) : Boolean
      {
         if(param1.§_-is§() && param2.§_-is§())
         {
            return true;
         }
         if(!param1.§_-gu§() && !param2.§_-gu§())
         {
            return true;
         }
         return false;
      }
      
      public function §_-fP§(param1:b2Fixture, param2:b2Fixture) : void
      {
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc3_:§_-JP§ = param1.GetBody().GetUserData() as §_-JP§;
         var _loc4_:§_-JP§ = param2.GetBody().GetUserData() as §_-JP§;
         if(this.mMightyEagleAdded)
         {
            if(_loc3_.§_-wE§() || this.mMightyEagleAdded && _loc4_.§_-fQ§())
            {
               _loc4_.applyDamage(_loc4_.§_-8S§ * 2,true,true,true);
               return;
            }
            if(_loc4_.§_-wE§() || this.mMightyEagleAdded && _loc3_.§_-fQ§())
            {
               _loc3_.applyDamage(_loc3_.§_-8S§ * 2,true,true,true);
               return;
            }
         }
         else if(this.mSardineCanAdded && this.mMightyEagleTimer == §_-Z2§.§_-gg§)
         {
            if(_loc3_.§_-LT§() || _loc4_.§_-LT§())
            {
               this.mMightyEagleTimer = 0;
            }
         }
         if(this.§_-cO§(_loc3_,_loc4_))
         {
            return;
         }
         var _loc6_:Number = _loc3_.§_-M2§(_loc4_.§_-0f§());
         var _loc7_:Number = _loc3_.§_-qM§(_loc4_.§_-0f§());
         var _loc8_:Number = _loc4_.§_-M2§(_loc3_.§_-0f§());
         var _loc9_:Number = _loc4_.§_-qM§(_loc3_.§_-0f§());
         var _loc10_:Number = _loc3_.§_-dZ§().GetMass() * _loc3_.§_-dZ§().GetLinearVelocity().x - _loc4_.§_-dZ§().GetMass() * _loc4_.§_-dZ§().GetLinearVelocity().x;
         var _loc11_:Number = _loc3_.§_-dZ§().GetMass() * _loc3_.§_-dZ§().GetLinearVelocity().y - _loc4_.§_-dZ§().GetMass() * _loc4_.§_-dZ§().GetLinearVelocity().y;
         var _loc12_:Number = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_) / 10;
         var _loc13_:Number = _loc6_ * _loc12_;
         var _loc14_:Number = _loc8_ * _loc12_;
         var _loc15_:Number = Math.max(0,_loc3_.§null §);
         var _loc16_:Number = Math.max(0,_loc4_.§null §);
         var _loc17_:Number = _loc3_.applyDamage(_loc14_,true,_loc4_.§_-is§(),_loc16_ == _loc4_.§_-8S§);
         var _loc18_:Number = _loc4_.applyDamage(_loc13_,true,_loc3_.§_-is§(),_loc15_ == _loc3_.§_-8S§);
         if(_loc17_ <= 0)
         {
            if((_loc20_ = (_loc20_ = (_loc14_ - _loc15_) / _loc14_) * _loc9_) > 1)
            {
               _loc20_ = 1;
            }
            _loc4_.§_-SW§(new b2Vec2(_loc4_.§_-dZ§().GetLinearVelocity().x * _loc20_,_loc4_.§_-dZ§().GetLinearVelocity().y * _loc20_));
         }
         if(_loc18_ <= 0)
         {
            if((_loc21_ = (_loc21_ = (_loc13_ - _loc16_) / _loc13_) * _loc7_) > 1)
            {
               _loc21_ = 1;
            }
            _loc3_.§_-SW§(new b2Vec2(_loc3_.§_-dZ§().GetLinearVelocity().x * _loc21_,_loc3_.§_-dZ§().GetLinearVelocity().y * _loc21_));
         }
      }
      
      public function §_-Cu§() : void
      {
         var _loc2_:§_-JP§ = null;
         var _loc1_:int = this.§_-kz§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§_-kz§[_loc1_] as §_-JP§;
            if(_loc2_ != null && _loc2_.§_-fQ§())
            {
               this.§_-cS§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §_-Sb§() : void
      {
         var _loc2_:§_-JP§ = null;
         var _loc1_:int = this.§_-kz§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§_-kz§[_loc1_] as §_-JP§;
            if(_loc2_ != null && _loc2_.§_-iO§())
            {
               this.§_-cS§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §_-xZ§() : int
      {
         return this.§_-kz§.length;
      }
      
      public function §_-ZM§(param1:§_-ry§) : void
      {
         var _loc4_:§_-JP§ = null;
         var _loc5_:§_-rE§ = null;
         var _loc6_:§_-hH§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§_-kz§.length)
         {
            if(!(_loc4_ = this.§_-kz§[_loc2_]).isGround())
            {
               (_loc5_ = new §_-rE§()).angle = _loc4_.§_-4S§();
               _loc5_.id = _loc4_.§_-TR§;
               _loc5_.x = _loc4_.§_-dZ§().GetPosition().x;
               _loc5_.y = _loc4_.§_-dZ§().GetPosition().y;
               param1.§_-Oe§.push(_loc5_);
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§_-MM§.length)
         {
            (_loc6_ = new §_-hH§(this.§_-MM§[_loc3_].type,this.§_-MM§[_loc3_].index1,this.§_-MM§[_loc3_].index2)).backAndForth = this.§_-MM§[_loc3_].backAndForth;
            _loc6_.collideConnected = this.§_-MM§[_loc3_].collideConnected;
            _loc6_.limit = this.§_-MM§[_loc3_].limit;
            _loc6_.lowerLimit = this.§_-MM§[_loc3_].lowerLimit;
            _loc6_.maxTorque = this.§_-MM§[_loc3_].maxTorque;
            _loc6_.motor = this.§_-MM§[_loc3_].motor;
            _loc6_.motorSpeed = this.§_-MM§[_loc3_].motorSpeed;
            _loc6_.upperLimit = this.§_-MM§[_loc3_].upperLimit;
            _loc6_.p1 = this.§_-MM§[_loc3_].p1;
            _loc6_.p2 = this.§_-MM§[_loc3_].p2;
            param1.§_-MM§.push(_loc6_);
            _loc3_++;
         }
      }
      
      public function §_-va§() : void
      {
         var _loc1_:int = 0;
         while(this.§_-kz§.length > _loc1_)
         {
            if(this.§_-kz§[_loc1_].isGround())
            {
               _loc1_++;
            }
            else
            {
               this.§_-Ma§(this.§_-kz§[_loc1_]);
            }
         }
      }
      
      public function §_-g4§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§_-kz§.length)
         {
            if(this.§_-kz§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§_-kz§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         this.§_-ld§ = param1;
         this.§_-GL§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§_-kz§.length)
         {
            if(this.§_-kz§[_loc2_].isTexture())
            {
               this.§_-kz§[_loc2_].sprite.visible = !this.§_-ld§;
            }
            _loc2_++;
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         this.§_-X0§ = param1;
      }
      
      public function §_-l5§() : Boolean
      {
         return this.§_-X0§;
      }
   }
}
