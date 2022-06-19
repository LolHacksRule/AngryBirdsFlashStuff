package §_-fr§
{
   import §_-F2§.b2Vec2;
   import §_-GY§.Sprite;
   import §_-GY§.§_-4W§;
   import §_-Kz§.§_-bo§;
   import §_-Kz§.§_-bv§;
   import §_-Kz§.§_-c3§;
   import §_-Kz§.§_-kK§;
   import §_-MP§.§_-BI§;
   import §_-Ny§.§_-7j§;
   import §_-Ny§.§_-Sv§;
   import §_-Ob§.§_-4y§;
   import §_-Sr§.§_-Jq§;
   import §_-Sr§.§_-K-§;
   import §_-TV§.§_-KN§;
   import §_-TV§.§_-Or§;
   import §_-TV§.§_-Sk§;
   import §_-TV§.§_-gb§;
   import §_-TV§.§_-m0§;
   import §_-VH§.§_-X6§;
   import §_-my§.§_-GX§;
   import §_-yp§.Texture;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class § else§
   {
       
      
      protected var §_-FB§:Vector.<§_-FX§>;
      
      protected var §_-lQ§:int;
      
      public var §_-GF§:§_-c3§;
      
      public var §_-JM§:Vector.<§_-ZO§>;
      
      protected var §_-bL§:Sprite;
      
      protected var §_-0y§:Sprite;
      
      private var §_-kB§:Sprite;
      
      private var §_-fa§:Sprite;
      
      private var §_-Xz§:Sprite;
      
      protected var §_-9v§:Vector.<Texture>;
      
      protected var §_-v§:Vector.<§_-7j§>;
      
      protected var §_-KH§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §_-Y3§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §_-BB§:Boolean = false;
      
      protected var §_-j1§:Number = 0.07;
      
      protected var §_-eH§:int;
      
      private var §_-UR§:int = 0;
      
      private var §_-lB§:int = 0;
      
      private var §_-db§:Boolean = true;
      
      private var §_-RM§:Boolean = true;
      
      public function § else§(param1:§_-c3§, param2:§_-BI§, param3:Sprite)
      {
         var _loc5_:§_-Sv§ = null;
         var _loc6_:§_-7j§ = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:§_-FX§ = null;
         var _loc10_:§_-FX§ = null;
         this.§_-FB§ = new Vector.<§_-FX§>();
         this.§_-JM§ = new Vector.<§_-ZO§>();
         this.§_-9v§ = new Vector.<Texture>();
         super();
         this.§_-GF§ = param1;
         this.§_-lQ§ = 0;
         this.§_-0y§ = param3;
         this.§_-0y§.§_-6q§ = false;
         this.§_-RM§ = true;
         this.§_-db§ = true;
         this.§_-bL§ = new Sprite();
         this.§_-kB§ = new Sprite();
         this.§_-fa§ = new Sprite();
         this.§_-Xz§ = new Sprite();
         this.§_-0y§.addChild(this.§_-bL§);
         this.§_-0y§.addChild(this.§_-kB§);
         this.§_-0y§.addChild(this.§_-fa§);
         this.§_-0y§.addChild(this.§_-Xz§);
         this.addObject(§_-4y§.§_-5g§(param2.theme).§_-Gy§,(this.§_-GF§.§_-6X§.§_-o7§ + this.§_-GF§.§_-6X§.§_-Ei§) / 2,this.§_-GF§.§_-6X§.§_-Ku§ + §_-bo§.§_-vn§);
         var _loc4_:int = this.§_-FB§.length;
         for each(_loc5_ in param2.§_-uU§)
         {
            this.addObject(_loc5_.id,_loc5_.x,_loc5_.y,_loc5_.angle,false,false,true,1,_loc5_.front);
         }
         this.§_-Yo§();
         this.§_-0k§(true);
         this.§_-v§ = param2.§_-v§;
         for each(_loc6_ in param2.§_-v§)
         {
            _loc7_ = _loc6_.index1 + _loc4_;
            _loc8_ = _loc6_.index2 + _loc4_;
            if(_loc7_ < this.§_-FB§.length && _loc8_ < this.§_-FB§.length)
            {
               _loc9_ = this.§_-FB§[_loc7_];
               _loc10_ = this.§_-FB§[_loc8_];
               if(!(_loc9_ && _loc10_))
               {
                  throw new Error("Joint index out of bounds [" + _loc7_ + ", " + _loc8_ + "]");
               }
               _loc6_.§_-ib§ = this.§_-GF§.mLevelEngine.mWorld.set(_loc6_.§_-52§(_loc9_,_loc10_));
            }
         }
      }
      
      public function get §_-GD§() : Sprite
      {
         return this.§_-Xz§;
      }
      
      public function get §_-Sa§() : Sprite
      {
         return this.§_-0y§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§_-FB§.length > 0)
         {
            this.removeObjectWithIndex(0);
         }
         this.§_-FB§ = null;
         if(this.§_-0y§)
         {
            this.§_-0y§.dispose();
            this.§_-0y§ = null;
            this.§_-bL§ = null;
            this.§_-Xz§ = null;
            this.§_-kB§ = null;
            this.§_-fa§ = null;
         }
         while(this.§_-9v§.length > 0)
         {
            _loc1_ = this.§_-9v§.pop();
            this.§_-GF§.§_-3q§.§_-mP§(_loc1_);
         }
      }
      
      private function §_-0k§(param1:Boolean) : void
      {
         this.§_-bL§.visible = param1;
      }
      
      private function §_-Yo§() : void
      {
         var _loc3_:§_-FX§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§_-4W§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§_-FX§> = new Vector.<§_-FX§>();
         for each(_loc3_ in this.§_-FB§)
         {
            if(_loc3_.isTexture())
            {
               _loc2_.push(_loc3_);
               _loc4_ = _loc3_.sprite.getBounds(this.§_-0y§);
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
            this.§_-MB§(_loc10_.rect,_loc10_,_loc5_);
            _loc11_ = this.§_-Zw§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
            _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc12_ = this.§_-GF§.§_-3q§.§_-Z4§(_loc10_);
            this.§_-9v§.push(_loc12_);
            (_loc13_ = new §_-4W§(_loc12_)).x = _loc8_ / _loc5_;
            _loc13_.y = _loc9_ / _loc5_;
            _loc13_.scaleX = 1 / _loc5_;
            _loc13_.scaleY = 1 / _loc5_;
            this.§_-bL§.addChild(_loc13_);
            _loc11_.dispose();
         }
      }
      
      private function §_-Zw§(param1:Vector.<§_-FX§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§_-FX§ = null;
         var _loc11_:§_-KN§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§_-9Z§.shape).§_-xB§();
            _loc13_ = new Rectangle(_loc12_[0].x / §_-c3§.§_-GA§ * param6,_loc12_[0].y / §_-c3§.§_-GA§ * param6,(_loc12_[1].x - _loc12_[0].x) / §_-c3§.§_-GA§ * param6,(_loc12_[1].y - _loc12_[0].y) / §_-c3§.§_-GA§ * param6);
            _loc10_.identity();
            _loc10_.scale(_loc13_.width,_loc13_.height);
            _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
            _loc10_.rotate((360 - _loc7_.§_-qr§()) / 180 * Math.PI);
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            _loc8_.draw(_loc9_,_loc10_);
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      private function §_-MB§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.§_-GF§.background.§_-3P§();
         var _loc5_:§_-GX§;
         if(_loc5_ = this.§_-GF§.§_-q0§.§_-8O§(_loc4_))
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
      
      public function addObjectParseBirds(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §_-FX§
      {
         var _loc10_:§_-FX§ = null;
         switch(param2)
         {
            case "BIRD_BLACK":
               _loc10_ = new §_-aZ§(this,param1,this.§_-GF§.mLevelEngine.mWorld,this.§_-GF§,this.§_-lQ§,param2,param3,param4,param5,param9);
               break;
            case "BIRD_BLUE":
               _loc10_ = new §_-9-§(this,param1,this.§_-GF§.mLevelEngine.mWorld,this.§_-GF§,this.§_-lQ§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_GREEN":
               _loc10_ = new §_-aW§(this,param1,this.§_-GF§.mLevelEngine.mWorld,this.§_-GF§,this.§_-lQ§,param2,param3,param4,param5,param9);
               break;
            case "BIRD_WHITE":
               _loc10_ = new §_-Zi§(this,param1,this.§_-GF§.mLevelEngine.mWorld,this.§_-GF§,this.§_-lQ§,param2,param3,param4,param5,param9);
               break;
            case "BIRD_YELLOW":
               _loc10_ = new §_-pK§(this,param1,this.§_-GF§.mLevelEngine.mWorld,this.§_-GF§,this.§_-lQ§,param2,param3,param4,param5,param9);
               break;
            case "BIRD_RED":
               _loc10_ = new §_-n8§(this,param1,this.§_-GF§.mLevelEngine.mWorld,this.§_-GF§,this.§_-lQ§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_REDBIG":
               _loc10_ = new §_-nT§(this,param1,this.§_-GF§.mLevelEngine.mWorld,this.§_-GF§,this.§_-lQ§,param2,param3,param4,param5,param8,param9);
               break;
            default:
               _loc10_ = new §_-ZS§(this,param1,this.§_-GF§.mLevelEngine.mWorld,this.§_-GF§,this.§_-lQ§,param2,param3,param4,param5,param8,param9);
         }
         return _loc10_;
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §_-FX§
      {
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         _loc10_.scaleY = param8;
         var _loc11_:§_-FX§;
         if((_loc11_ = this.§_-sb§(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)).isTexture())
         {
            _loc10_.visible = !this.§_-db§;
            this.§_-FB§[this.§_-FB§.length] = _loc11_;
         }
         else
         {
            this.§_-FB§[this.§_-FB§.length] = _loc11_;
         }
         if(_loc11_ is §_-ZS§ && !_loc11_.§_-3X§())
         {
            this.§_-kB§.addChild(_loc10_);
         }
         else if(_loc11_.front || param9)
         {
            this.§_-Xz§.addChild(_loc10_);
         }
         else
         {
            this.§_-fa§.addChild(_loc10_);
         }
         if(param5)
         {
            this.§_-GF§.§_-0Y§(_loc11_);
         }
         if(param6)
         {
            this.§_-GF§.activeObject = _loc11_;
         }
         return _loc11_;
      }
      
      protected function §_-sb§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §_-FX§
      {
         var _loc10_:§_-FX§ = null;
         var _loc11_:§_-Or§ = null;
         if(param2.indexOf("BIRD") == 0)
         {
            _loc10_ = this.addObjectParseBirds(param1,param2,param3,param4,param5,param6,param7,param8,param9);
         }
         else if(param2.indexOf("PIG") == 0)
         {
            _loc10_ = new §_-X5§(this,param1,this.§_-GF§.mLevelEngine.mWorld,this.§_-GF§,this.§_-lQ§,param2,param3,param4,param5,param9);
         }
         else
         {
            if((_loc11_ = §_-gb§.§_-iR§(param2)) == null && param2.indexOf("MISC_") == 0)
            {
               param2 = "MISC_FOOD_" + param2.substring(5);
               _loc11_ = §_-gb§.§_-iR§(param2);
            }
            if(_loc11_.§_-rV§ == §_-Or§.§_-ka§ || _loc11_.§_-rV§ == §_-Or§.§_-0c§)
            {
               _loc10_ = new §_-3s§(this,param1,this.§_-GF§.mLevelEngine.mWorld,this.§_-GF§,this.§_-lQ§,param2,param3,param4,param5,param9,_loc11_.front);
            }
            else
            {
               _loc10_ = new §_-FX§(this,param1,this.§_-GF§.mLevelEngine.mWorld,this.§_-GF§,this.§_-lQ§,param2,param3,param4,param5,param9,_loc11_.front);
            }
         }
         return _loc10_;
      }
      
      public function §_-X1§() : void
      {
         var _loc2_:§_-FX§ = null;
         var _loc1_:int = this.§_-FB§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§_-FB§[_loc1_] as §_-FX§;
            if(_loc2_)
            {
               if(_loc2_.§_-KZ§ <= 0)
               {
                  this.removeObjectWithIndex(_loc1_,true,true,true);
               }
               else
               {
                  _loc2_.§_-d1§();
                  _loc2_.§_-pW§();
               }
            }
            _loc1_--;
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         this.§_-JM§.push(§_-ZO§.§_-ig§(param1,param2,param3));
         §_-X6§.playSound("TntExplosions","ChannelExplosions");
      }
      
      public function §_-V6§(param1:Number, param2:Number) : int
      {
         var _loc4_:§_-FX§ = null;
         var _loc3_:int = this.§_-FB§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§_-FB§[_loc3_])
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
      
      public function §_-gX§(param1:Number, param2:Number) : §_-FX§
      {
         var _loc4_:§_-FX§ = null;
         var _loc3_:int = this.§_-FB§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§_-FB§[_loc3_])
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
      
      public function §_-mv§(param1:int) : §_-FX§
      {
         return this.§_-FB§[param1];
      }
      
      public function §_-J9§(param1:Number, param2:Number) : void
      {
         var _loc4_:§_-FX§ = null;
         var _loc3_:int = this.§_-FB§.length - 1;
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§_-FB§[_loc3_] as §_-FX§).§_-J9§(param2,param1);
            _loc3_--;
         }
      }
      
      private function §_-py§(param1:§_-FX§, param2:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§_-FX§ = null;
         if(!this.mSardineCanAdded)
         {
            return true;
         }
         if(this.mMightyEagleAdded)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         if(param1.§_-KZ§ == param1.§_-EU§)
         {
            if(this.§_-j1§ < §_-kK§.§_-cZ§)
            {
               this.§_-j1§ += param2 * §_-kK§.§_-bI§;
            }
            param1.§implements§().§_-Ht§(param2 * this.§_-j1§);
            this.§_-eH§ = 0;
         }
         else if(this.§_-eH§ == 0)
         {
            this.§_-eH§ = this.§_-GF§.§_-sG§;
         }
         if(param1.§_-9q§() || this.§_-Qc§(param1) || this.§_-eH§ > 0 && this.§_-GF§.§_-sG§ > this.§_-eH§ + §_-kK§.§_-EX§)
         {
            if(this.mMightyEagleTimer < §_-kK§.§_-Pb§)
            {
               _loc4_ = this.mMightyEagleTimer + param2;
               if(this.mMightyEagleTimer < §_-kK§.§_-lY§ && _loc4_ > §_-kK§.§_-lY§)
               {
                  §_-X6§.playSound("Mighty_Eagle_Selected_1","ChannelBird");
                  §_-X6§.playSound("Mighty_Eagle_Flying_1","ChannelBird");
               }
               if(_loc4_ >= §_-kK§.§_-Pb§)
               {
                  _loc5_ = param1.§implements§().GetPosition().x - §_-kK§.§_-fL§;
                  _loc6_ = param1.§implements§().GetPosition().y - §_-kK§.§_-fL§ * §_-kK§.§_-B5§ * 1.07;
                  if(this.§_-Qc§(param1))
                  {
                     _loc3_ = true;
                  }
                  _loc7_ = this.addObject("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,§_-kK§.§_-6r§ * 1.2);
                  this.mMightyEagleAdded = true;
                  this.§_-eH§ = 0;
                  _loc7_.§_-9G§.§_-7A§(1.82);
               }
               this.mMightyEagleTimer = _loc4_;
            }
         }
         return _loc3_;
      }
      
      private function §_-CA§(param1:§_-FX§, param2:Number) : Boolean
      {
         var _loc5_:§_-FX§ = null;
         if(!this.§_-BB§ && this.mMightyEagleTimer > §_-kK§.§_-iH§)
         {
            this.§_-BB§ = true;
            this.§_-GF§.§_-ek§();
         }
         this.mMightyEagleTimer += param2;
         this.§_-GF§.particles.addParticle(§_-K-§.§_-b9§,§_-Jq§.§_-0-§,§_-K-§.§_-AI§,param1.§implements§().GetPosition().x - 3 + Math.random() * (3 * 2),param1.§implements§().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§_-K-§.§_-2U§(param1.§_-05§),0,0,1,0,4);
         var _loc4_:int = 1;
         if(this.mMightyEagleHasTouchedGround)
         {
            param1.§_-n4§(§_-kK§.§_-jQ§ * param2);
            _loc4_ = -1;
            if(this.§_-Y3§)
            {
               this.§_-Y3§ = false;
               this.§_-GF§.§_-Ij§();
               param1.§_-HX§(§_-Sk§.§_-w§);
               this.mSardineCanAdded = false;
               param1.§_-9G§.§_-X4§ = true;
               param1.§_-9G§.§_-bC§();
               for each(_loc5_ in this.§_-FB§)
               {
                  if(_loc5_ && _loc5_.§_-9w§())
                  {
                     _loc5_.§implements§().SetAwake(true);
                     _loc5_.§implements§().SetLinearVelocity(new b2Vec2(0,-18));
                  }
               }
               this.§_-rh§();
            }
            if(this.mMightyEagleTimer > 6000 && this.isPigsAlive())
            {
               for each(_loc5_ in this.§_-FB§)
               {
                  if(_loc5_ && _loc5_.§_-9w§())
                  {
                     _loc5_.applyDamage(_loc5_.§_-EU§ * 2,true,true,true);
                  }
               }
            }
         }
         else
         {
            this.mMightyEagleHasTouchedGround = param1.§implements§().GetPosition().y >= -5.5;
            this.§_-Y3§ = this.mMightyEagleHasTouchedGround;
         }
         param1.§_-JZ§(param2,new Point(1,_loc4_ * §_-kK§.§_-B5§),§_-kK§.§_-N§);
         return false;
      }
      
      private function §_-HF§() : void
      {
         var _loc1_:§_-ZO§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§_-FX§ = null;
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
         while(this.§_-JM§.length > 0)
         {
            _loc1_ = this.§_-JM§.shift();
            _loc2_ = _loc1_.§_-Yg§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            for each(_loc6_ in this.§_-FB§)
            {
               _loc8_ = _loc6_.§implements§().GetPosition().x - _loc3_;
               _loc9_ = _loc6_.§implements§().GetPosition().y - _loc4_;
               if((_loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)) <= _loc1_.§_-Yg§)
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
                     _loc6_.§implements§().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
                  }
               }
               if(_loc10_ <= _loc1_.§_-SB§)
               {
                  _loc14_ = _loc5_;
                  if(_loc10_ > 1)
                  {
                     _loc14_ /= _loc10_;
                  }
                  _loc6_.applyDamage(_loc14_,false,false,false,true);
               }
            }
            this.§_-GF§.particles.addParticle(this.getMainExplosionCoreName(_loc1_.type),§_-Jq§.§_-0-§,§_-K-§.§_-2w§,_loc3_,_loc4_,600,"",§_-K-§.§_-CR§,0,0,0,0,1,20,true);
            _loc7_ = 30;
            while(_loc7_ < 150)
            {
               _loc15_ = 0.75 * _loc2_ + Math.random() * _loc2_;
               _loc16_ = 1250 + Math.random() * 750;
               _loc17_ = _loc7_ / (180 / Math.PI);
               this.§_-GF§.particles.addParticle(§_-K-§.§case§,§_-Jq§.§_-0-§,§_-K-§.§_-AI§,_loc3_,_loc4_,_loc16_,"",§_-K-§.§_-CR§,_loc15_ * Math.cos(_loc17_),-_loc15_ * Math.sin(_loc17_),20,0);
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
         return §_-K-§.§_-zY§;
      }
      
      public function §_-QP§(param1:Number) : void
      {
         var _loc2_:§_-FX§ = null;
         var _loc3_:int = this.§_-FB§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§_-FB§[_loc3_];
            if(_loc2_.§_-Na§())
            {
               if(this.§_-py§(_loc2_,param1))
               {
                  this.removeObjectWithIndex(_loc3_,false,false,false);
               }
            }
            else if(_loc2_.§_-3X§())
            {
               this.§_-CA§(_loc2_,param1);
            }
            else if(this.§_-Qc§(_loc2_))
            {
               _loc2_.§_-HX§(§_-Sk§.§_-XM§);
               this.removeObjectWithIndex(_loc3_,false,false,false);
            }
            else if(_loc2_.isReadyToBeRemoved(param1))
            {
               _loc2_.§_-HX§(§_-Sk§.§_-XM§);
               this.removeObjectWithIndex(_loc3_,false,true,true);
            }
            else if(_loc2_.§_-Rp§())
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         this.§_-HF§();
      }
      
      private function §_-rh§() : void
      {
         var _loc1_:§_-7j§ = null;
         for each(_loc1_ in this.§_-v§)
         {
            this.§_-GF§.mLevelEngine.mWorld.§_-Sn§(_loc1_.§_-ib§);
         }
      }
      
      public function §_-NF§() : Boolean
      {
         var _loc2_:§_-FX§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§_-FB§.length)
         {
            _loc2_ = this.§_-FB§[_loc1_];
            if(_loc2_.explode())
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §_-Qc§(param1:§_-FX§) : Boolean
      {
         if(param1 && param1.§_-9Z§.§_-bp§() != §_-m0§.§_-2g§ && this.§_-GF§.§_-6X§.§_-Gl§(param1.§implements§().GetPosition().x,param1.§implements§().GetPosition().y))
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
         var _loc5_:§_-FX§;
         if((_loc5_ = this.§_-FB§[param1]).§_-9w§())
         {
            ++this.§_-UR§;
         }
         else if(_loc5_.§_-Rp§())
         {
            ++this.§_-lB§;
         }
         if(_loc5_ == this.§_-GF§.activeObject)
         {
            this.§_-GF§.activeObject = null;
         }
         if(param2)
         {
            this.§_-GF§.addScore(_loc5_.§_-9Z§.score,§_-bv§.§_-8g§,true,_loc5_.§implements§().GetPosition().x,_loc5_.§implements§().GetPosition().y - 3,§_-K-§.§_-eM§(_loc5_.§_-05§));
         }
         if(param3)
         {
            _loc5_.addDestructionParticles(this.§_-GF§.particles);
         }
         if(param4)
         {
            this.checkExplosions(_loc5_);
         }
         if(!_loc5_.isTexture())
         {
         }
         this.§_-WC§(_loc5_.sprite);
         _loc5_.dispose();
         _loc5_ = null;
         this.§_-FB§[param1] = null;
         this.§_-FB§.splice(param1,1);
      }
      
      private function §_-WC§(param1:Sprite) : void
      {
         if(this.§_-fa§.contains(param1))
         {
            this.§_-fa§.removeChild(param1);
            return;
         }
         if(this.§_-kB§.contains(param1))
         {
            this.§_-kB§.removeChild(param1);
            return;
         }
         if(this.§_-bL§.contains(param1))
         {
            this.§_-bL§.removeChild(param1);
            return;
         }
         if(this.§_-Xz§.contains(param1))
         {
            this.§_-Xz§.removeChild(param1);
            return;
         }
      }
      
      protected function checkExplosions(param1:§_-FX§) : void
      {
         if(param1.§_-xg§().toUpperCase() == "WHITE_EGG" || param1.§_-Rs§())
         {
            if(param1.§_-05§.toUpperCase() == §_-Zi§.§_-GU§)
            {
               this.addExplosions(§_-ZO§.§_-oD§,param1.§implements§().GetPosition().x,param1.§implements§().GetPosition().y);
            }
            else
            {
               this.addExplosions(§_-ZO§.§_-Uh§,param1.§implements§().GetPosition().x,param1.§implements§().GetPosition().y);
            }
         }
      }
      
      public function §_-TC§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.removeObjectWithIndex(this.§_-FB§.indexOf(param1),param2,param3,param4);
      }
      
      public function §_-n0§(param1:Number, param2:Number) : void
      {
         this.§_-0y§.x = -param1;
         this.§_-0y§.y = -param2;
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc3_:§_-FX§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-FB§.length)
         {
            _loc3_ = this.§_-FB§[_loc2_] as §_-FX§;
            if(_loc3_ && _loc3_.§_-9w§() && _loc3_.§_-KZ§ > 0)
            {
               if(!param1 || _loc3_.§_-9G§.mTryToBlink <= 0 && _loc3_.§_-9G§.mTryToScream <= 0)
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §_-m5§(param1:Boolean = false) : int
      {
         var _loc4_:§_-FX§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§_-FB§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§_-FB§[_loc3_] as §_-FX§) && _loc4_.§_-9w§() && _loc4_.§_-KZ§ > 0)
            {
               if(!param1 || _loc4_.§_-9G§.mTryToBlink <= 0 && _loc4_.§_-9G§.mTryToScream <= 0)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function §_-jv§() : int
      {
         var _loc2_:§_-FX§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§_-FB§)
         {
            if(_loc2_ && _loc2_.§_-LG§())
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §_-BM§() : int
      {
         var _loc2_:§_-FX§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§_-FB§)
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
         var _loc3_:§_-FX§ = null;
         var _loc2_:int = this.§_-FB§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§_-FB§[_loc2_];
            if(_loc3_ && _loc3_.§_-9w§() && _loc3_.§_-KZ§ > 0)
            {
               _loc3_.§_-9G§.mTryToScream = §_-e9§.§_-0-X§ * param1;
            }
            _loc2_--;
         }
      }
      
      public function §_-5c§() : Boolean
      {
         var _loc2_:§_-FX§ = null;
         var _loc1_:int = this.§_-FB§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§_-FB§[_loc1_] as §_-FX§;
            if(_loc2_ && _loc2_.§_-Rp§() && _loc2_.§_-KZ§ > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:§_-FX§ = null;
         var _loc1_:int = this.§_-FB§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§_-FB§[_loc1_] as §_-FX§;
            if(_loc2_ && _loc2_.§_-KZ§ > 0 && _loc2_.§_-rV§ != §_-Or§.§_-nI§)
            {
               if(_loc2_.§_-iY§() && !_loc2_.§_-9q§())
               {
                  return false;
               }
               if(_loc2_.§_-Rp§() && _loc2_.§_-KZ§ > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §_-c4§(param1:Boolean = false) : §_-FX§
      {
         var _loc5_:int = 0;
         var _loc6_:§_-FX§ = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = this.§_-FB§.length;
         var _loc3_:int = 1 + Math.random() * this.§_-m5§(param1);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               if((_loc6_ = this.§_-FB§[_loc5_]) && _loc6_.§_-9w§() && _loc6_.§_-KZ§ > 0)
               {
                  if(!param1 || _loc6_.§_-9G§.mTryToBlink <= 0 && _loc6_.§_-9G§.mTryToScream <= 0)
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
      
      public function §_-rT§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.§_-FB§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ += (this.§_-FB§[_loc2_] as §_-FX§).§_-9Z§.score;
            if((this.§_-FB§[_loc2_] as §_-FX§).§_-iY§())
            {
               _loc1_ += §_-c3§.§_-a-§.getValue() * int((this.§_-FB§[_loc2_] as §_-FX§).§_-EU§);
            }
            _loc2_--;
         }
         return int(_loc1_ + this.§_-GF§.slingshot.§_-rT§());
      }
      
      public function §do§(param1:§_-FX§, param2:§_-FX§) : Boolean
      {
         if(param1.§_-Rp§() && param2.§_-Rp§())
         {
            return true;
         }
         if(!param1.§_-gW§() && !param2.§_-gW§())
         {
            return true;
         }
         return false;
      }
      
      public function objectCollision(param1:§_-FX§, param2:§_-FX§) : void
      {
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         if(this.mMightyEagleAdded)
         {
            if(param1.§_-3X§() || param2.§_-9w§())
            {
               param2.applyDamage(param2.§_-EU§ * 2,true,true,true,false);
               return;
            }
            if(param2.§_-3X§() || param1.§_-9w§())
            {
               param1.applyDamage(param1.§_-EU§ * 2,true,true,true,false);
               return;
            }
         }
         else if(this.mSardineCanAdded && this.mMightyEagleTimer == §_-kK§.§_-Pb§)
         {
            if(param1.§_-Na§() || param2.§_-Na§())
            {
               this.mMightyEagleTimer = 0;
            }
         }
         if(this.§do§(param1,param2))
         {
            return;
         }
         var _loc4_:Number = param1.§_-0-u§(param2.§_-xg§());
         var _loc5_:Number = param1.§_-xe§(param2.§_-xg§());
         var _loc6_:Number = param2.§_-0-u§(param1.§_-xg§());
         var _loc7_:Number = param2.§_-xe§(param1.§_-xg§());
         var _loc8_:Number = param1.§implements§().GetMass() * param1.§implements§().GetLinearVelocity().x - param2.§implements§().GetMass() * param2.§implements§().GetLinearVelocity().x;
         var _loc9_:Number = param1.§implements§().GetMass() * param1.§implements§().GetLinearVelocity().y - param2.§implements§().GetMass() * param2.§implements§().GetLinearVelocity().y;
         var _loc10_:Number = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / 10;
         var _loc11_:Number = _loc4_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc10_;
         var _loc13_:Number = Math.max(0,param1.§_-KZ§);
         var _loc14_:Number = Math.max(0,param2.§_-KZ§);
         var _loc15_:Number = param1.applyDamage(_loc12_,true,param2.§_-Rp§(),_loc14_ == param2.§_-EU§);
         var _loc16_:Number = param2.applyDamage(_loc11_,true,param1.§_-Rp§(),_loc13_ == param1.§_-EU§);
         if(_loc15_ <= 0 && _loc12_ != 0)
         {
            if((_loc18_ = (_loc18_ = (_loc12_ - _loc13_) / _loc12_) * _loc7_) > 1)
            {
               _loc18_ = 1;
            }
            param2.§_-AG§(new b2Vec2(param2.§implements§().GetLinearVelocity().x * _loc18_,param2.§implements§().GetLinearVelocity().y * _loc18_));
         }
         if(_loc16_ <= 0 && _loc11_ != 0)
         {
            if((_loc19_ = (_loc19_ = (_loc11_ - _loc14_) / _loc11_) * _loc5_) > 1)
            {
               _loc19_ = 1;
            }
            param1.§_-AG§(new b2Vec2(param1.§implements§().GetLinearVelocity().x * _loc19_,param1.§implements§().GetLinearVelocity().y * _loc19_));
         }
      }
      
      public function §_-mf§() : void
      {
         var _loc2_:§_-FX§ = null;
         var _loc1_:int = this.§_-FB§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§_-FB§[_loc1_] as §_-FX§;
            if(_loc2_ != null && _loc2_.§_-9w§())
            {
               this.removeObjectWithIndex(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §_-iU§() : void
      {
         var _loc2_:§_-FX§ = null;
         var _loc1_:int = this.§_-FB§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§_-FB§[_loc1_] as §_-FX§;
            if(_loc2_ != null && _loc2_.§_-Rs§())
            {
               this.removeObjectWithIndex(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §_-d3§() : int
      {
         return this.§_-FB§.length;
      }
      
      public function §_-8k§(param1:§_-BI§) : void
      {
         var _loc4_:§_-FX§ = null;
         var _loc5_:§_-Sv§ = null;
         var _loc6_:§_-7j§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§_-FB§.length)
         {
            if((_loc4_ = this.§_-FB§[_loc2_]).§_-s6§)
            {
               if(!_loc4_.isGround())
               {
                  (_loc5_ = new §_-Sv§()).angle = _loc4_.§_-qr§();
                  _loc5_.id = _loc4_.§_-05§;
                  _loc5_.x = _loc4_.§implements§().GetPosition().x;
                  _loc5_.y = _loc4_.§implements§().GetPosition().y;
                  param1.§_-uU§.push(_loc5_);
               }
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§_-v§.length)
         {
            (_loc6_ = new §_-7j§(this.§_-v§[_loc3_].type,this.§_-v§[_loc3_].index1,this.§_-v§[_loc3_].index2)).backAndForth = this.§_-v§[_loc3_].backAndForth;
            _loc6_.collideConnected = this.§_-v§[_loc3_].collideConnected;
            _loc6_.limit = this.§_-v§[_loc3_].limit;
            _loc6_.lowerLimit = this.§_-v§[_loc3_].lowerLimit;
            _loc6_.maxTorque = this.§_-v§[_loc3_].maxTorque;
            _loc6_.motor = this.§_-v§[_loc3_].motor;
            _loc6_.motorSpeed = this.§_-v§[_loc3_].motorSpeed;
            _loc6_.upperLimit = this.§_-v§[_loc3_].upperLimit;
            _loc6_.p1 = this.§_-v§[_loc3_].p1;
            _loc6_.p2 = this.§_-v§[_loc3_].p2;
            param1.§_-v§.push(_loc6_);
            _loc3_++;
         }
      }
      
      public function §_-lc§() : void
      {
         var _loc1_:int = 0;
         while(this.§_-FB§.length > _loc1_)
         {
            if(this.§_-FB§[_loc1_].isGround())
            {
               _loc1_++;
            }
            else
            {
               this.§_-TC§(this.§_-FB§[_loc1_]);
            }
         }
      }
      
      public function §_-JN§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§_-FB§.length)
         {
            if(this.§_-FB§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§_-FB§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         this.§_-db§ = param1;
         this.§_-0k§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§_-FB§.length)
         {
            if(this.§_-FB§[_loc2_].isTexture())
            {
               this.§_-FB§[_loc2_].sprite.visible = !this.§_-db§;
            }
            _loc2_++;
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         this.§_-RM§ = param1;
      }
      
      public function §_-6y§() : Boolean
      {
         return this.§_-RM§;
      }
      
      public function §_-Up§() : int
      {
         return this.§_-lB§;
      }
      
      public function §_-ti§() : int
      {
         return this.§_-UR§;
      }
   }
}
