package §_-Fk§
{
   import §_-0-K§.§_-8r§;
   import §_-0-K§.§_-FL§;
   import §_-0-K§.§_-Fx§;
   import §_-0-K§.§_-Yj§;
   import §_-4I§.§_-EA§;
   import §_-5b§.§_-Vj§;
   import §_-E5§.§_-Wo§;
   import §_-Lw§.§_-RT§;
   import §_-Lw§.§_-hQ§;
   import §_-Vn§.b2Vec2;
   import §_-X4§.§_-EY§;
   import §_-X4§.§_-Fs§;
   import §_-X4§.§_-aP§;
   import §_-X4§.§_-rI§;
   import §_-X4§.§_-vJ§;
   import §_-i9§.Texture;
   import §_-o§.§_-a0§;
   import §_-yz§.§_-wB§;
   import §_-yz§.§_-zJ§;
   import §case §.Sprite;
   import §case §.§_-G3§;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §_-lp§
   {
       
      
      protected var §_-zQ§:Vector.<§_-Cb§>;
      
      protected var §_-HM§:int;
      
      public var §_-mC§:§_-FL§;
      
      public var §_-VG§:Vector.<§_-P2§>;
      
      protected var §_-l7§:Sprite;
      
      protected var §_-1E§:Sprite;
      
      private var §_-o3§:Sprite;
      
      private var §_-XH§:Sprite;
      
      private var §_-BO§:Sprite;
      
      protected var §_-5L§:Vector.<Texture>;
      
      protected var §_-fb§:Vector.<§_-wB§>;
      
      protected var §_-aC§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §_-i4§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §_-h3§:Boolean = false;
      
      protected var §_-Wr§:Number = 0.07;
      
      protected var §_-AW§:int;
      
      protected var §_-Ke§:int = 0;
      
      private var §_-d1§:int = 0;
      
      private var §_-2-§:int = 0;
      
      private var §_-9D§:Boolean = true;
      
      private var §_-Z3§:Boolean = true;
      
      public function §_-lp§(param1:§_-FL§, param2:§_-Vj§, param3:Sprite)
      {
         var _loc5_:§_-zJ§ = null;
         var _loc6_:§_-wB§ = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:§_-Cb§ = null;
         var _loc10_:§_-Cb§ = null;
         this.§_-zQ§ = new Vector.<§_-Cb§>();
         this.§_-VG§ = new Vector.<§_-P2§>();
         this.§_-5L§ = new Vector.<Texture>();
         super();
         this.§_-mC§ = param1;
         this.§_-HM§ = 0;
         this.§_-1E§ = param3;
         this.§_-1E§.§_-IX§ = false;
         this.§_-Z3§ = true;
         this.§_-9D§ = true;
         this.§_-l7§ = new Sprite();
         this.§_-o3§ = new Sprite();
         this.§_-XH§ = new Sprite();
         this.§_-BO§ = new Sprite();
         this.§_-1E§.addChild(this.§_-l7§);
         this.§_-1E§.addChild(this.§_-o3§);
         this.§_-1E§.addChild(this.§_-XH§);
         this.§_-1E§.addChild(this.§_-BO§);
         this.addObject(§_-a0§.§_-00p§(param2.theme).§_-3h§,(this.§_-mC§.§_-v5§.§_-7Y§ + this.§_-mC§.§_-v5§.§_-KL§) / 2,this.§_-mC§.§_-v5§.§_-gM§ + §_-Fx§.§_-QY§);
         var _loc4_:int = this.§_-zQ§.length;
         for each(_loc5_ in param2.§_-3P§)
         {
            this.addObject(_loc5_.id,_loc5_.x,_loc5_.y,_loc5_.angle,false,false,true,1,_loc5_.front);
         }
         this.§_-Y3§();
         this.§_-0Z§(true);
         this.§_-fb§ = param2.§_-fb§;
         for each(_loc6_ in param2.§_-fb§)
         {
            _loc7_ = _loc6_.index1 + _loc4_;
            _loc8_ = _loc6_.index2 + _loc4_;
            if(_loc7_ < this.§_-zQ§.length && _loc8_ < this.§_-zQ§.length)
            {
               _loc9_ = this.§_-zQ§[_loc7_];
               _loc10_ = this.§_-zQ§[_loc8_];
               if(!(_loc9_ && _loc10_))
               {
                  throw new Error("Joint index out of bounds [" + _loc7_ + ", " + _loc8_ + "]");
               }
               _loc6_.§_-82§ = this.§_-mC§.mLevelEngine.mWorld.§_-sj§(_loc6_.§_-WL§(_loc9_,_loc10_));
            }
         }
      }
      
      public function get §_-de§() : Sprite
      {
         return this.§_-BO§;
      }
      
      public function get §_-oJ§() : Sprite
      {
         return this.§_-1E§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§_-zQ§.length > 0)
         {
            this.removeObjectWithIndex(0);
         }
         this.§_-zQ§ = null;
         if(this.§_-1E§)
         {
            this.§_-1E§.dispose();
            this.§_-1E§ = null;
            this.§_-l7§ = null;
            this.§_-BO§ = null;
            this.§_-o3§ = null;
            this.§_-XH§ = null;
         }
         while(this.§_-5L§.length > 0)
         {
            _loc1_ = this.§_-5L§.pop();
            this.§_-mC§.§_-91§.§_-qj§(_loc1_);
         }
      }
      
      private function §_-0Z§(param1:Boolean) : void
      {
         this.§_-l7§.visible = param1;
      }
      
      private function §_-Y3§() : void
      {
         var _loc3_:§_-Cb§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§_-G3§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§_-Cb§> = new Vector.<§_-Cb§>();
         for each(_loc3_ in this.§_-zQ§)
         {
            if(_loc3_.isTexture())
            {
               _loc2_.push(_loc3_);
               _loc4_ = _loc3_.sprite.getBounds(this.§_-1E§);
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
            this.§_-00a§(_loc10_.rect,_loc10_,_loc5_);
            _loc11_ = this.§_-mf§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
            _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc12_ = this.§_-mC§.§_-91§.§_-Cg§(_loc10_);
            this.§_-5L§.push(_loc12_);
            (_loc13_ = new §_-G3§(_loc12_)).x = _loc8_ / _loc5_;
            _loc13_.y = _loc9_ / _loc5_;
            _loc13_.scaleX = 1 / _loc5_;
            _loc13_.scaleY = 1 / _loc5_;
            this.§_-l7§.addChild(_loc13_);
            _loc11_.dispose();
         }
      }
      
      private function §_-mf§(param1:Vector.<§_-Cb§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§_-Cb§ = null;
         var _loc11_:§_-vJ§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§_-Lf§.shape).§_-5l§();
            _loc13_ = new Rectangle(_loc12_[0].x / §_-FL§.§_-NU§ * param6,_loc12_[0].y / §_-FL§.§_-NU§ * param6,(_loc12_[1].x - _loc12_[0].x) / §_-FL§.§_-NU§ * param6,(_loc12_[1].y - _loc12_[0].y) / §_-FL§.§_-NU§ * param6);
            _loc10_.identity();
            _loc10_.scale(_loc13_.width,_loc13_.height);
            _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
            _loc10_.rotate((360 - _loc7_.§if§()) / 180 * Math.PI);
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            _loc8_.draw(_loc9_,_loc10_);
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      private function §_-00a§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.§_-mC§.background.§_-JM§();
         var _loc5_:§_-EA§;
         if(_loc5_ = this.§_-mC§.§_-M3§.§_-QE§(_loc4_))
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
      
      public function addObjectParseBirds(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §_-Cb§
      {
         var _loc10_:§_-Cb§ = null;
         switch(param2)
         {
            case "BIRD_BLACK":
               _loc10_ = new §_-00L§(this,param1,this.§_-mC§.mLevelEngine.mWorld,this.§_-mC§,this.§_-HM§,param2,param3,param4,param5,param9);
               break;
            case "BIRD_BLUE":
               _loc10_ = new §_-br§(this,param1,this.§_-mC§.mLevelEngine.mWorld,this.§_-mC§,this.§_-HM§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_GREEN":
               _loc10_ = new §_-F2§(this,param1,this.§_-mC§.mLevelEngine.mWorld,this.§_-mC§,this.§_-HM§,param2,param3,param4,param5,param9);
               break;
            case "BIRD_WHITE":
               _loc10_ = new §_-pf§(this,param1,this.§_-mC§.mLevelEngine.mWorld,this.§_-mC§,this.§_-HM§,param2,param3,param4,param5,param9);
               break;
            case "BIRD_YELLOW":
               _loc10_ = new §_-wQ§(this,param1,this.§_-mC§.mLevelEngine.mWorld,this.§_-mC§,this.§_-HM§,param2,param3,param4,param5,param9);
               break;
            case "BIRD_RED":
               _loc10_ = new §_-c6§(this,param1,this.§_-mC§.mLevelEngine.mWorld,this.§_-mC§,this.§_-HM§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_REDBIG":
               _loc10_ = new §_-Uc§(this,param1,this.§_-mC§.mLevelEngine.mWorld,this.§_-mC§,this.§_-HM§,param2,param3,param4,param5,param8,param9);
               break;
            default:
               _loc10_ = new §_-ON§(this,param1,this.§_-mC§.mLevelEngine.mWorld,this.§_-mC§,this.§_-HM§,param2,param3,param4,param5,param8,param9);
         }
         return _loc10_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§_-Ke§ > 0;
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §_-Cb§
      {
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         _loc10_.scaleY = param8;
         var _loc11_:§_-Cb§;
         if((_loc11_ = this.§_-Qd§(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)) is §_-ON§)
         {
            ++this.§_-Ke§;
         }
         if(_loc11_.isTexture())
         {
            _loc10_.visible = !this.§_-9D§;
            this.§_-zQ§[this.§_-zQ§.length] = _loc11_;
         }
         else
         {
            this.§_-zQ§[this.§_-zQ§.length] = _loc11_;
         }
         if(_loc11_ is §_-ON§ && !_loc11_.§_-tE§())
         {
            this.§_-o3§.addChild(_loc10_);
         }
         else if(_loc11_.front || param9)
         {
            this.§_-BO§.addChild(_loc10_);
         }
         else
         {
            this.§_-XH§.addChild(_loc10_);
         }
         if(param5)
         {
            this.§_-mC§.§_-32§(_loc11_);
         }
         if(param6)
         {
            this.§_-mC§.activeObject = _loc11_;
         }
         return _loc11_;
      }
      
      protected function §_-Qd§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §_-Cb§
      {
         var _loc10_:§_-Cb§ = null;
         var _loc11_:§_-EY§ = null;
         if(param2.indexOf("BIRD") == 0)
         {
            _loc10_ = this.addObjectParseBirds(param1,param2,param3,param4,param5,param6,param7,param8,param9);
         }
         else if(param2.indexOf("PIG") == 0)
         {
            _loc10_ = new §_-pY§(this,param1,this.§_-mC§.mLevelEngine.mWorld,this.§_-mC§,this.§_-HM§,param2,param3,param4,param5,param9);
         }
         else
         {
            if((_loc11_ = §_-rI§.§_-0l§(param2)) == null && param2.indexOf("MISC_") == 0)
            {
               param2 = "MISC_FOOD_" + param2.substring(5);
               _loc11_ = §_-rI§.§_-0l§(param2);
            }
            if(_loc11_.§_-ly§ == §_-EY§.§_-DJ§ || _loc11_.§_-ly§ == §_-EY§.§_-Xk§)
            {
               _loc10_ = new §_-W4§(this,param1,this.§_-mC§.mLevelEngine.mWorld,this.§_-mC§,this.§_-HM§,param2,param3,param4,param5,param9,_loc11_.front);
            }
            else
            {
               _loc10_ = new §_-Cb§(this,param1,this.§_-mC§.mLevelEngine.mWorld,this.§_-mC§,this.§_-HM§,param2,param3,param4,param5,param9,_loc11_.front);
            }
         }
         return _loc10_;
      }
      
      public function §_-Q5§() : void
      {
         var _loc2_:§_-Cb§ = null;
         var _loc1_:int = this.§_-zQ§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§_-zQ§[_loc1_] as §_-Cb§;
            if(_loc2_)
            {
               if(_loc2_.§_-tR§ <= 0)
               {
                  this.removeObjectWithIndex(_loc1_,true,true,true);
               }
               else
               {
                  _loc2_.§_-ds§();
                  _loc2_.§_-In§();
               }
            }
            _loc1_--;
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         this.§_-VG§.push(§_-P2§.§_-5X§(param1,param2,param3));
         §_-Wo§.playSound("TntExplosions","ChannelExplosions");
      }
      
      public function §_-Ni§(param1:Number, param2:Number) : int
      {
         var _loc4_:§_-Cb§ = null;
         var _loc3_:int = this.§_-zQ§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§_-zQ§[_loc3_])
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
      
      public function §_-p5§(param1:Number, param2:Number) : §_-Cb§
      {
         var _loc4_:§_-Cb§ = null;
         var _loc3_:int = this.§_-zQ§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§_-zQ§[_loc3_])
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
      
      public function §_-id§(param1:int) : §_-Cb§
      {
         return this.§_-zQ§[param1];
      }
      
      public function §_-jz§(param1:Number, param2:Number) : void
      {
         var _loc4_:§_-Cb§ = null;
         var _loc3_:int = this.§_-zQ§.length - 1;
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§_-zQ§[_loc3_] as §_-Cb§).§_-jz§(param2,param1);
            _loc3_--;
         }
      }
      
      private function §_-k2§(param1:§_-Cb§, param2:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§_-Cb§ = null;
         if(!this.mSardineCanAdded)
         {
            return true;
         }
         if(this.mMightyEagleAdded)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         if(param1.§_-tR§ == param1.§_-m1§)
         {
            if(this.§_-Wr§ < §_-Yj§.§_-yL§)
            {
               this.§_-Wr§ += param2 * §_-Yj§.§_-cL§;
            }
            param1.§_-Zv§().§_-ti§(param2 * this.§_-Wr§);
            this.§_-AW§ = 0;
         }
         else if(this.§_-AW§ == 0)
         {
            this.§_-AW§ = this.§_-mC§.§_-mL§;
         }
         if(param1.§_-RG§() || this.§_-9q§(param1) || this.§_-AW§ > 0 && this.§_-mC§.§_-mL§ > this.§_-AW§ + §_-Yj§.§_-9n§)
         {
            if(this.mMightyEagleTimer < §_-Yj§.§_-FR§)
            {
               _loc4_ = this.mMightyEagleTimer + param2;
               if(this.mMightyEagleTimer < §_-Yj§.§_-ee§ && _loc4_ > §_-Yj§.§_-ee§)
               {
                  §_-Wo§.playSound("Mighty_Eagle_Selected_1","ChannelBird");
                  §_-Wo§.playSound("Mighty_Eagle_Flying_1","ChannelBird");
               }
               if(_loc4_ >= §_-Yj§.§_-FR§)
               {
                  _loc5_ = param1.§_-Zv§().GetPosition().x - §_-Yj§.§_-0-3§;
                  _loc6_ = param1.§_-Zv§().GetPosition().y - §_-Yj§.§_-0-3§ * §_-Yj§.§_-GL§ * 1.07;
                  if(this.§_-9q§(param1))
                  {
                     _loc3_ = true;
                  }
                  _loc7_ = this.addObject("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,§_-Yj§.§_-KG§ * 1.2);
                  this.mMightyEagleAdded = true;
                  this.§_-AW§ = 0;
                  _loc7_.§_-Rh§.§_-GZ§(1.82);
               }
               this.mMightyEagleTimer = _loc4_;
            }
         }
         return _loc3_;
      }
      
      private function §_-3x§(param1:§_-Cb§, param2:Number) : Boolean
      {
         var _loc5_:§_-Cb§ = null;
         if(!this.§_-h3§ && this.mMightyEagleTimer > §_-Yj§.§_-c1§)
         {
            this.§_-h3§ = true;
            this.§_-mC§.§_-3y§();
         }
         this.mMightyEagleTimer += param2;
         this.§_-mC§.particles.addParticle(§_-hQ§.§_-Wc§,§_-RT§.§_-MU§,§_-hQ§.§_-Wf§,param1.§_-Zv§().GetPosition().x - 3 + Math.random() * (3 * 2),param1.§_-Zv§().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§_-hQ§.§_-kW§(param1.§_-k-§),0,0,1,0,4);
         var _loc4_:int = 1;
         if(this.mMightyEagleHasTouchedGround)
         {
            param1.§_-eN§(§_-Yj§.§_-YB§ * param2);
            _loc4_ = -1;
            if(this.§_-i4§)
            {
               this.§_-i4§ = false;
               this.§_-mC§.§_-pm§();
               param1.§_-0-i§(§_-aP§.§_-mY§);
               this.mSardineCanAdded = false;
               param1.§_-Rh§.§ each§ = true;
               param1.§_-Rh§.§_-jb§();
               for each(_loc5_ in this.§_-zQ§)
               {
                  if(_loc5_ && _loc5_.§_-Zq§())
                  {
                     _loc5_.§_-Zv§().SetAwake(true);
                     _loc5_.§_-Zv§().SetLinearVelocity(new b2Vec2(0,-18));
                  }
               }
               this.§_-f1§();
            }
            if(this.mMightyEagleTimer > 6000 && this.isPigsAlive())
            {
               for each(_loc5_ in this.§_-zQ§)
               {
                  if(_loc5_ && _loc5_.§_-Zq§())
                  {
                     _loc5_.applyDamage(_loc5_.§_-m1§ * 2,true,true,true);
                  }
               }
            }
         }
         else
         {
            this.mMightyEagleHasTouchedGround = param1.§_-Zv§().GetPosition().y >= -5.5;
            this.§_-i4§ = this.mMightyEagleHasTouchedGround;
         }
         param1.§_-Pi§(param2,new Point(1,_loc4_ * §_-Yj§.§_-GL§),§_-Yj§.§_-vk§);
         return false;
      }
      
      private function §_-1O§() : void
      {
         var _loc1_:§_-P2§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§_-Cb§ = null;
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
         while(this.§_-VG§.length > 0)
         {
            _loc1_ = this.§_-VG§.shift();
            _loc2_ = _loc1_.§_-tY§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            for each(_loc6_ in this.§_-zQ§)
            {
               _loc8_ = _loc6_.§_-Zv§().GetPosition().x - _loc3_;
               _loc9_ = _loc6_.§_-Zv§().GetPosition().y - _loc4_;
               if((_loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)) <= _loc1_.§_-tY§)
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
                     _loc6_.§_-Zv§().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
                  }
               }
               if(_loc10_ <= _loc1_.§_-LP§)
               {
                  _loc14_ = _loc5_;
                  if(_loc10_ > 1)
                  {
                     _loc14_ /= _loc10_;
                  }
                  _loc6_.applyDamage(_loc14_,false,false,false,true);
               }
            }
            this.§_-mC§.particles.addParticle(this.getMainExplosionCoreName(_loc1_.type),§_-RT§.§_-MU§,§_-hQ§.§_-Wn§,_loc3_,_loc4_,600,"",§_-hQ§.§_-An§,0,0,0,0,1,20,true);
            _loc7_ = 30;
            while(_loc7_ < 150)
            {
               _loc15_ = 0.75 * _loc2_ + Math.random() * _loc2_;
               _loc16_ = 1250 + Math.random() * 750;
               _loc17_ = _loc7_ / (180 / Math.PI);
               this.§_-mC§.particles.addParticle(§_-hQ§.§_-o2§,§_-RT§.§_-MU§,§_-hQ§.§_-Wf§,_loc3_,_loc4_,_loc16_,"",§_-hQ§.§_-An§,_loc15_ * Math.cos(_loc17_),-_loc15_ * Math.sin(_loc17_),20,0);
               _loc7_ += 5;
            }
         }
      }
      
      protected function getMainExplosionCoreName(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §_-hQ§.§_-kO§;
      }
      
      public function §_-ya§(param1:Number) : void
      {
         var _loc2_:§_-Cb§ = null;
         var _loc3_:int = this.§_-zQ§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§_-zQ§[_loc3_];
            if(_loc2_.§_-R0§())
            {
               if(this.§_-k2§(_loc2_,param1))
               {
                  this.removeObjectWithIndex(_loc3_,false,false,false);
               }
            }
            else if(_loc2_.§_-tE§())
            {
               this.§_-3x§(_loc2_,param1);
            }
            else if(this.§_-9q§(_loc2_))
            {
               _loc2_.§_-0-i§(§_-aP§.§_-0-X§);
               this.removeObjectWithIndex(_loc3_,false,false,false);
            }
            else if(_loc2_.isReadyToBeRemoved(param1))
            {
               _loc2_.§_-0-i§(§_-aP§.§_-0-X§);
               this.removeObjectWithIndex(_loc3_,false,true,true);
            }
            else if(_loc2_.§_-yG§())
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         this.§_-1O§();
      }
      
      private function §_-f1§() : void
      {
         var _loc1_:§_-wB§ = null;
         for each(_loc1_ in this.§_-fb§)
         {
            this.§_-mC§.mLevelEngine.mWorld.§_-vU§(_loc1_.§_-82§);
         }
      }
      
      public function §_-ZY§() : Boolean
      {
         var _loc2_:§_-Cb§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§_-zQ§.length)
         {
            _loc2_ = this.§_-zQ§[_loc1_];
            if(_loc2_.explode())
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §_-9q§(param1:§_-Cb§) : Boolean
      {
         if(param1 && param1.§_-Lf§.§_-H7§() != §_-Fs§.§_-LE§ && this.§_-mC§.§_-v5§.§_-05§(param1.§_-Zv§().GetPosition().x,param1.§_-Zv§().GetPosition().y))
         {
            return true;
         }
         return false;
      }
      
      public function removeObjectWithIndex(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:§_-Cb§;
         if((_loc5_ = this.§_-zQ§[param1]).§_-Zq§())
         {
            ++this.§_-d1§;
         }
         else if(_loc5_.§_-yG§())
         {
            ++this.§_-2-§;
            --this.§_-Ke§;
         }
         if(_loc5_ == this.§_-mC§.activeObject)
         {
            this.§_-mC§.activeObject = null;
         }
         if(param2)
         {
            this.§_-mC§.addScore(_loc5_.§_-Lf§.score,§_-8r§.§_-Hh§,true,_loc5_.§_-Zv§().GetPosition().x,_loc5_.§_-Zv§().GetPosition().y - 3,§_-hQ§.§_-Ct§(_loc5_.§_-k-§));
         }
         if(param3)
         {
            _loc5_.addDestructionParticles(this.§_-mC§.particles);
         }
         if(param4)
         {
            this.checkExplosions(_loc5_);
         }
         if(!_loc5_.isTexture())
         {
         }
         this.§_-00x§(_loc5_.sprite);
         _loc5_.dispose();
         _loc5_ = null;
         this.§_-zQ§[param1] = null;
         this.§_-zQ§.splice(param1,1);
      }
      
      private function §_-00x§(param1:Sprite) : void
      {
         if(this.§_-XH§.contains(param1))
         {
            this.§_-XH§.removeChild(param1);
            return;
         }
         if(this.§_-o3§.contains(param1))
         {
            this.§_-o3§.removeChild(param1);
            return;
         }
         if(this.§_-l7§.contains(param1))
         {
            this.§_-l7§.removeChild(param1);
            return;
         }
         if(this.§_-BO§.contains(param1))
         {
            this.§_-BO§.removeChild(param1);
            return;
         }
      }
      
      protected function checkExplosions(param1:§_-Cb§) : void
      {
         if(param1.§_-5B§().toUpperCase() == "WHITE_EGG" || param1.§_-CI§())
         {
            if(param1.§_-k-§.toUpperCase() == §_-pf§.§_-Fg§)
            {
               this.addExplosions(§_-P2§.§_-PF§,param1.§_-Zv§().GetPosition().x,param1.§_-Zv§().GetPosition().y);
            }
            else
            {
               this.addExplosions(§_-P2§.§_-5z§,param1.§_-Zv§().GetPosition().x,param1.§_-Zv§().GetPosition().y);
            }
         }
      }
      
      public function §_-Dp§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.removeObjectWithIndex(this.§_-zQ§.indexOf(param1),param2,param3,param4);
      }
      
      public function §_-FQ§(param1:Number, param2:Number) : void
      {
         this.§_-1E§.x = -param1;
         this.§_-1E§.y = -param2;
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc3_:§_-Cb§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-zQ§.length)
         {
            _loc3_ = this.§_-zQ§[_loc2_] as §_-Cb§;
            if(_loc3_ && _loc3_.§_-Zq§() && _loc3_.§_-tR§ > 0)
            {
               if(!param1 || _loc3_.§_-Rh§.mTryToBlink <= 0 && _loc3_.§_-Rh§.mTryToScream <= 0)
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §_-yX§(param1:Boolean = false) : int
      {
         var _loc4_:§_-Cb§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§_-zQ§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§_-zQ§[_loc3_] as §_-Cb§) && _loc4_.§_-Zq§() && _loc4_.§_-tR§ > 0)
            {
               if(!param1 || _loc4_.§_-Rh§.mTryToBlink <= 0 && _loc4_.§_-Rh§.mTryToScream <= 0)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function native() : int
      {
         var _loc2_:§_-Cb§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§_-zQ§)
         {
            if(_loc2_ && _loc2_.§_-o7§())
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §_-pR§() : int
      {
         var _loc2_:§_-Cb§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§_-zQ§)
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
         var _loc3_:§_-Cb§ = null;
         var _loc2_:int = this.§_-zQ§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§_-zQ§[_loc2_];
            if(_loc3_ && _loc3_.§_-Zq§() && _loc3_.§_-tR§ > 0)
            {
               _loc3_.§_-Rh§.mTryToScream = §_-8E§.§_-b7§ * param1;
            }
            _loc2_--;
         }
      }
      
      public function §_-rK§() : Boolean
      {
         var _loc2_:§_-Cb§ = null;
         var _loc1_:int = this.§_-zQ§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§_-zQ§[_loc1_] as §_-Cb§;
            if(_loc2_ && _loc2_.§_-yG§() && _loc2_.§_-tR§ > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:§_-Cb§ = null;
         var _loc1_:int = this.§_-zQ§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§_-zQ§[_loc1_] as §_-Cb§;
            if(_loc2_ && _loc2_.§_-tR§ > 0 && _loc2_.§_-ly§ != §_-EY§.§_-YO§)
            {
               if(_loc2_.§_-Lp§() && !_loc2_.§_-RG§())
               {
                  return false;
               }
               if(_loc2_.§_-yG§() && _loc2_.§_-tR§ > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §_-Bz§(param1:Boolean = false) : §_-Cb§
      {
         var _loc5_:int = 0;
         var _loc6_:§_-Cb§ = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = this.§_-zQ§.length;
         var _loc3_:int = 1 + Math.random() * this.§_-yX§(param1);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               if((_loc6_ = this.§_-zQ§[_loc5_]) && _loc6_.§_-Zq§() && _loc6_.§_-tR§ > 0)
               {
                  if(!param1 || _loc6_.§_-Rh§.mTryToBlink <= 0 && _loc6_.§_-Rh§.mTryToScream <= 0)
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
      
      public function §_-98§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.§_-zQ§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ += (this.§_-zQ§[_loc2_] as §_-Cb§).§_-Lf§.score;
            if((this.§_-zQ§[_loc2_] as §_-Cb§).§_-Lp§())
            {
               _loc1_ += §_-FL§.§_-zA§.getValue() * int((this.§_-zQ§[_loc2_] as §_-Cb§).§_-m1§);
            }
            _loc2_--;
         }
         return int(_loc1_ + this.§_-mC§.slingshot.§_-98§());
      }
      
      public function §_-Kh§(param1:§_-Cb§, param2:§_-Cb§) : Boolean
      {
         if(param1.§_-yG§() && param2.§_-yG§())
         {
            return true;
         }
         if(!param1.§_-xj§() && !param2.§_-xj§())
         {
            return true;
         }
         return false;
      }
      
      public function objectCollision(param1:§_-Cb§, param2:§_-Cb§) : void
      {
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         if(this.mMightyEagleAdded)
         {
            if(param1.§_-tE§() || param2.§_-Zq§())
            {
               param2.applyDamage(param2.§_-m1§ * 2,true,true,true,false);
               return;
            }
            if(param2.§_-tE§() || param1.§_-Zq§())
            {
               param1.applyDamage(param1.§_-m1§ * 2,true,true,true,false);
               return;
            }
         }
         else if(this.mSardineCanAdded && this.mMightyEagleTimer == §_-Yj§.§_-FR§)
         {
            if(param1.§_-R0§() || param2.§_-R0§())
            {
               this.mMightyEagleTimer = 0;
            }
         }
         if(this.§_-Kh§(param1,param2))
         {
            return;
         }
         var _loc4_:Number = param1.§_-uU§(param2.§_-5B§());
         var _loc5_:Number = param1.§_-nz§(param2.§_-5B§());
         var _loc6_:Number = param2.§_-uU§(param1.§_-5B§());
         var _loc7_:Number = param2.§_-nz§(param1.§_-5B§());
         var _loc8_:Number = param1.§_-Zv§().GetMass() * param1.§_-Zv§().GetLinearVelocity().x - param2.§_-Zv§().GetMass() * param2.§_-Zv§().GetLinearVelocity().x;
         var _loc9_:Number = param1.§_-Zv§().GetMass() * param1.§_-Zv§().GetLinearVelocity().y - param2.§_-Zv§().GetMass() * param2.§_-Zv§().GetLinearVelocity().y;
         var _loc10_:Number = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / 10;
         var _loc11_:Number = _loc4_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc10_;
         var _loc13_:Number = Math.max(0,param1.§_-tR§);
         var _loc14_:Number = Math.max(0,param2.§_-tR§);
         var _loc15_:Number = param1.applyDamage(_loc12_,true,param2.§_-yG§(),_loc14_ == param2.§_-m1§);
         var _loc16_:Number = param2.applyDamage(_loc11_,true,param1.§_-yG§(),_loc13_ == param1.§_-m1§);
         if(_loc15_ <= 0 && _loc12_ != 0)
         {
            if((_loc18_ = (_loc18_ = (_loc12_ - _loc13_) / _loc12_) * _loc7_) > 1)
            {
               _loc18_ = 1;
            }
            param2.§_-q4§(new b2Vec2(param2.§_-Zv§().GetLinearVelocity().x * _loc18_,param2.§_-Zv§().GetLinearVelocity().y * _loc18_));
         }
         if(_loc16_ <= 0 && _loc11_ != 0)
         {
            if((_loc19_ = (_loc19_ = (_loc11_ - _loc14_) / _loc11_) * _loc5_) > 1)
            {
               _loc19_ = 1;
            }
            param1.§_-q4§(new b2Vec2(param1.§_-Zv§().GetLinearVelocity().x * _loc19_,param1.§_-Zv§().GetLinearVelocity().y * _loc19_));
         }
      }
      
      public function §_-vo§() : void
      {
         var _loc2_:§_-Cb§ = null;
         var _loc1_:int = this.§_-zQ§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§_-zQ§[_loc1_] as §_-Cb§;
            if(_loc2_ != null && _loc2_.§_-Zq§())
            {
               this.removeObjectWithIndex(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §_-PH§() : void
      {
         var _loc2_:§_-Cb§ = null;
         var _loc1_:int = this.§_-zQ§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§_-zQ§[_loc1_] as §_-Cb§;
            if(_loc2_ != null && _loc2_.§_-CI§())
            {
               this.removeObjectWithIndex(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §_-qf§() : int
      {
         return this.§_-zQ§.length;
      }
      
      public function §_-Or§(param1:§_-Vj§) : void
      {
         var _loc4_:§_-Cb§ = null;
         var _loc5_:§_-zJ§ = null;
         var _loc6_:§_-wB§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§_-zQ§.length)
         {
            if((_loc4_ = this.§_-zQ§[_loc2_]).§_-U8§)
            {
               if(!_loc4_.isGround())
               {
                  (_loc5_ = new §_-zJ§()).angle = _loc4_.§if§();
                  _loc5_.id = _loc4_.§_-k-§;
                  _loc5_.x = _loc4_.§_-Zv§().GetPosition().x;
                  _loc5_.y = _loc4_.§_-Zv§().GetPosition().y;
                  param1.§_-3P§.push(_loc5_);
               }
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§_-fb§.length)
         {
            (_loc6_ = new §_-wB§(this.§_-fb§[_loc3_].type,this.§_-fb§[_loc3_].index1,this.§_-fb§[_loc3_].index2)).backAndForth = this.§_-fb§[_loc3_].backAndForth;
            _loc6_.collideConnected = this.§_-fb§[_loc3_].collideConnected;
            _loc6_.limit = this.§_-fb§[_loc3_].limit;
            _loc6_.lowerLimit = this.§_-fb§[_loc3_].lowerLimit;
            _loc6_.maxTorque = this.§_-fb§[_loc3_].maxTorque;
            _loc6_.motor = this.§_-fb§[_loc3_].motor;
            _loc6_.motorSpeed = this.§_-fb§[_loc3_].motorSpeed;
            _loc6_.upperLimit = this.§_-fb§[_loc3_].upperLimit;
            _loc6_.p1 = this.§_-fb§[_loc3_].p1;
            _loc6_.p2 = this.§_-fb§[_loc3_].p2;
            param1.§_-fb§.push(_loc6_);
            _loc3_++;
         }
      }
      
      public function §_-dr§() : void
      {
         var _loc1_:int = 0;
         while(this.§_-zQ§.length > _loc1_)
         {
            if(this.§_-zQ§[_loc1_].isGround())
            {
               _loc1_++;
            }
            else
            {
               this.§_-Dp§(this.§_-zQ§[_loc1_]);
            }
         }
      }
      
      public function §_-hz§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§_-zQ§.length)
         {
            if(this.§_-zQ§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§_-zQ§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         this.§_-9D§ = param1;
         this.§_-0Z§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§_-zQ§.length)
         {
            if(this.§_-zQ§[_loc2_].isTexture())
            {
               this.§_-zQ§[_loc2_].sprite.visible = !this.§_-9D§;
            }
            _loc2_++;
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         this.§_-Z3§ = param1;
      }
      
      public function §_-Dn§() : Boolean
      {
         return this.§_-Z3§;
      }
      
      public function §_-RR§() : int
      {
         return this.§_-2-§;
      }
      
      public function §_-kz§() : int
      {
         return this.§_-d1§;
      }
   }
}
