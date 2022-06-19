package §_-bl§
{
   import §_-2r§.§_-XE§;
   import §_-2r§.§_-fU§;
   import §_-2r§.§_-nb§;
   import §_-2r§.§_-sn§;
   import §_-5p§.§_-4§;
   import §_-Dk§.Texture;
   import §_-Ls§.Sprite;
   import §_-Ls§.§_-Nd§;
   import §_-T8§.§_-GI§;
   import §_-X§.§_-MU§;
   import §_-X§.§_-PL§;
   import §_-cP§.b2Vec2;
   import §_-cb§.§_-0B§;
   import §_-gL§.§_-UR§;
   import §_-p5§.§_-6L§;
   import §_-p5§.§_-Sv§;
   import §_-p5§.§_-ZO§;
   import §_-p5§.§_-lM§;
   import §_-p5§.§_-qt§;
   import §_-we§.§_-5J§;
   import §_-we§.§_-yB§;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §_-S4§
   {
       
      
      protected var §_-5f§:Vector.<§_-Ie§>;
      
      protected var §_-ru§:int;
      
      public var §_-5F§:§_-sn§;
      
      public var §_-tV§:Vector.<§_-7C§>;
      
      protected var §_-eR§:Sprite;
      
      protected var §_-GT§:Sprite;
      
      private var §_-rg§:Sprite;
      
      private var §_-17§:Sprite;
      
      private var §_-IG§:Sprite;
      
      protected var §_-Jj§:Vector.<Texture>;
      
      protected var §_-9n§:Vector.<§_-MU§>;
      
      protected var §_-ND§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §_-39§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §_-z§:Boolean = false;
      
      protected var §_-MZ§:Number = 0.07;
      
      protected var §_-YU§:int;
      
      private var §_-fI§:int = 0;
      
      private var §_-zn§:int = 0;
      
      private var §_-005§:Boolean = true;
      
      private var §_-Gk§:Boolean = true;
      
      public function §_-S4§(param1:§_-sn§, param2:§_-GI§, param3:Sprite)
      {
         var _loc5_:§_-PL§ = null;
         var _loc6_:§_-MU§ = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:§_-Ie§ = null;
         var _loc10_:§_-Ie§ = null;
         this.§_-5f§ = new Vector.<§_-Ie§>();
         this.§_-tV§ = new Vector.<§_-7C§>();
         this.§_-Jj§ = new Vector.<Texture>();
         super();
         this.§_-5F§ = param1;
         this.§_-ru§ = 0;
         this.§_-GT§ = param3;
         this.§_-GT§.§_-K2§ = false;
         this.§_-Gk§ = true;
         this.§_-005§ = true;
         this.§_-eR§ = new Sprite();
         this.§_-rg§ = new Sprite();
         this.§_-17§ = new Sprite();
         this.§_-IG§ = new Sprite();
         this.§_-GT§.addChild(this.§_-eR§);
         this.§_-GT§.addChild(this.§_-rg§);
         this.§_-GT§.addChild(this.§_-17§);
         this.§_-GT§.addChild(this.§_-IG§);
         this.addObject(§_-UR§.§_-ON§(param2.theme).§_-Vh§,(this.§_-5F§.§_-BV§.§_-FM§ + this.§_-5F§.§_-BV§.§_-QQ§) / 2,this.§_-5F§.§_-BV§.§use§ + §_-XE§.§_-7j§);
         var _loc4_:int = this.§_-5f§.length;
         for each(_loc5_ in param2.§_-l0§)
         {
            this.addObject(_loc5_.id,_loc5_.x,_loc5_.y,_loc5_.angle,false,false,true,1,_loc5_.front);
         }
         this.§_-gI§();
         this.§_-q8§(true);
         this.§_-9n§ = param2.§_-9n§;
         for each(_loc6_ in param2.§_-9n§)
         {
            _loc7_ = _loc6_.index1 + _loc4_;
            _loc8_ = _loc6_.index2 + _loc4_;
            if(_loc7_ < this.§_-5f§.length && _loc8_ < this.§_-5f§.length)
            {
               _loc9_ = this.§_-5f§[_loc7_];
               _loc10_ = this.§_-5f§[_loc8_];
               if(!(_loc9_ && _loc10_))
               {
                  throw new Error("Joint index out of bounds [" + _loc7_ + ", " + _loc8_ + "]");
               }
               _loc6_.§_-5t§ = this.§_-5F§.mLevelEngine.mWorld.§_-So§(_loc6_.§_-zH§(_loc9_,_loc10_));
            }
         }
      }
      
      public function get §_-lU§() : Sprite
      {
         return this.§_-IG§;
      }
      
      public function get §_-wQ§() : Sprite
      {
         return this.§_-GT§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§_-5f§.length > 0)
         {
            this.removeObjectWithIndex(0);
         }
         this.§_-5f§ = null;
         if(this.§_-GT§)
         {
            this.§_-GT§.dispose();
            this.§_-GT§ = null;
            this.§_-eR§ = null;
            this.§_-IG§ = null;
            this.§_-rg§ = null;
            this.§_-17§ = null;
         }
         while(this.§_-Jj§.length > 0)
         {
            _loc1_ = this.§_-Jj§.pop();
            this.§_-5F§.§_-aJ§.§_-80§(_loc1_);
         }
      }
      
      private function §_-q8§(param1:Boolean) : void
      {
         this.§_-eR§.visible = param1;
      }
      
      private function §_-gI§() : void
      {
         var _loc3_:§_-Ie§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§_-Nd§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§_-Ie§> = new Vector.<§_-Ie§>();
         for each(_loc3_ in this.§_-5f§)
         {
            if(_loc3_.isTexture())
            {
               _loc2_.push(_loc3_);
               _loc4_ = _loc3_.sprite.getBounds(this.§_-GT§);
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
            this.§_-I0§(_loc10_.rect,_loc10_,_loc5_);
            _loc11_ = this.§_-yg§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
            _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc12_ = this.§_-5F§.§_-aJ§.§_-0p§(_loc10_);
            this.§_-Jj§.push(_loc12_);
            (_loc13_ = new §_-Nd§(_loc12_)).x = _loc8_ / _loc5_;
            _loc13_.y = _loc9_ / _loc5_;
            _loc13_.scaleX = 1 / _loc5_;
            _loc13_.scaleY = 1 / _loc5_;
            this.§_-eR§.addChild(_loc13_);
            _loc11_.dispose();
         }
      }
      
      private function §_-yg§(param1:Vector.<§_-Ie§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§_-Ie§ = null;
         var _loc11_:§_-6L§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§_-Az§.shape).§_-w8§();
            _loc13_ = new Rectangle(_loc12_[0].x / §_-sn§.§_-5Y§ * param6,_loc12_[0].y / §_-sn§.§_-5Y§ * param6,(_loc12_[1].x - _loc12_[0].x) / §_-sn§.§_-5Y§ * param6,(_loc12_[1].y - _loc12_[0].y) / §_-sn§.§_-5Y§ * param6);
            _loc10_.identity();
            _loc10_.scale(_loc13_.width,_loc13_.height);
            _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
            _loc10_.rotate((360 - _loc7_.§_-rM§()) / 180 * Math.PI);
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            _loc8_.draw(_loc9_,_loc10_);
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      private function §_-I0§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.§_-5F§.background.§_-cc§();
         var _loc5_:§_-4§;
         if(_loc5_ = this.§_-5F§.§_-VR§.§_-I4§(_loc4_))
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
      
      public function addObjectParseBirds(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §_-Ie§
      {
         var _loc10_:§_-Ie§ = null;
         switch(param2)
         {
            case "BIRD_BLACK":
               _loc10_ = new §_-G4§(this,param1,this.§_-5F§.mLevelEngine.mWorld,this.§_-5F§,this.§_-ru§,param2,param3,param4,param5,param9);
               break;
            case "BIRD_BLUE":
               _loc10_ = new §_-y2§(this,param1,this.§_-5F§.mLevelEngine.mWorld,this.§_-5F§,this.§_-ru§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_GREEN":
               _loc10_ = new §_-Uw§(this,param1,this.§_-5F§.mLevelEngine.mWorld,this.§_-5F§,this.§_-ru§,param2,param3,param4,param5,param9);
               break;
            case "BIRD_WHITE":
               _loc10_ = new §_-Qw§(this,param1,this.§_-5F§.mLevelEngine.mWorld,this.§_-5F§,this.§_-ru§,param2,param3,param4,param5,param9);
               break;
            case "BIRD_YELLOW":
               _loc10_ = new §_-TX§(this,param1,this.§_-5F§.mLevelEngine.mWorld,this.§_-5F§,this.§_-ru§,param2,param3,param4,param5,param9);
               break;
            case "BIRD_RED":
               _loc10_ = new §_-BB§(this,param1,this.§_-5F§.mLevelEngine.mWorld,this.§_-5F§,this.§_-ru§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_REDBIG":
               _loc10_ = new §_-wB§(this,param1,this.§_-5F§.mLevelEngine.mWorld,this.§_-5F§,this.§_-ru§,param2,param3,param4,param5,param8,param9);
               break;
            default:
               _loc10_ = new §_-ag§(this,param1,this.§_-5F§.mLevelEngine.mWorld,this.§_-5F§,this.§_-ru§,param2,param3,param4,param5,param8,param9);
         }
         return _loc10_;
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §_-Ie§
      {
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         _loc10_.scaleY = param8;
         var _loc11_:§_-Ie§;
         if((_loc11_ = this.§_-mG§(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)).isTexture())
         {
            _loc10_.visible = !this.§_-005§;
            this.§_-5f§[this.§_-5f§.length] = _loc11_;
         }
         else
         {
            this.§_-5f§[this.§_-5f§.length] = _loc11_;
         }
         if(_loc11_ is §_-ag§ && !_loc11_.§_-Uh§())
         {
            this.§_-rg§.addChild(_loc10_);
         }
         else if(_loc11_.front || param9)
         {
            this.§_-IG§.addChild(_loc10_);
         }
         else
         {
            this.§_-17§.addChild(_loc10_);
         }
         if(param5)
         {
            this.§_-5F§.§_-B3§(_loc11_);
         }
         if(param6)
         {
            this.§_-5F§.activeObject = _loc11_;
         }
         return _loc11_;
      }
      
      protected function §_-mG§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §_-Ie§
      {
         var _loc10_:§_-Ie§ = null;
         var _loc11_:§_-Sv§ = null;
         if(param2.indexOf("BIRD") == 0)
         {
            _loc10_ = this.addObjectParseBirds(param1,param2,param3,param4,param5,param6,param7,param8,param9);
         }
         else if(param2.indexOf("PIG") == 0)
         {
            _loc10_ = new §_-Kg§(this,param1,this.§_-5F§.mLevelEngine.mWorld,this.§_-5F§,this.§_-ru§,param2,param3,param4,param5,param9);
         }
         else
         {
            if((_loc11_ = §_-lM§.§_-0-i§(param2)) == null && param2.indexOf("MISC_") == 0)
            {
               param2 = "MISC_FOOD_" + param2.substring(5);
               _loc11_ = §_-lM§.§_-0-i§(param2);
            }
            if(_loc11_.§_-1f§ == §_-Sv§.§_-6x§ || _loc11_.§_-1f§ == §_-Sv§.§_-wf§)
            {
               _loc10_ = new §_-o4§(this,param1,this.§_-5F§.mLevelEngine.mWorld,this.§_-5F§,this.§_-ru§,param2,param3,param4,param5,param9,_loc11_.front);
            }
            else
            {
               _loc10_ = new §_-Ie§(this,param1,this.§_-5F§.mLevelEngine.mWorld,this.§_-5F§,this.§_-ru§,param2,param3,param4,param5,param9,_loc11_.front);
            }
         }
         return _loc10_;
      }
      
      public function §_-56§() : void
      {
         var _loc2_:§_-Ie§ = null;
         var _loc1_:int = this.§_-5f§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§_-5f§[_loc1_] as §_-Ie§;
            if(_loc2_)
            {
               if(_loc2_.§_-T5§ <= 0)
               {
                  this.removeObjectWithIndex(_loc1_,true,true,true);
               }
               else
               {
                  _loc2_.§_-cW§();
                  _loc2_.§_-0-T§();
               }
            }
            _loc1_--;
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         this.§_-tV§.push(§_-7C§.§_-MK§(param1,param2,param3));
         §_-0B§.playSound("TntExplosions","ChannelExplosions");
      }
      
      public function §_-SD§(param1:Number, param2:Number) : int
      {
         var _loc4_:§_-Ie§ = null;
         var _loc3_:int = this.§_-5f§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§_-5f§[_loc3_])
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
      
      public function §_-Nm§(param1:Number, param2:Number) : §_-Ie§
      {
         var _loc4_:§_-Ie§ = null;
         var _loc3_:int = this.§_-5f§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§_-5f§[_loc3_])
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
      
      public function §_-28§(param1:int) : §_-Ie§
      {
         return this.§_-5f§[param1];
      }
      
      public function §_-53§(param1:Number, param2:Number) : void
      {
         var _loc4_:§_-Ie§ = null;
         var _loc3_:int = this.§_-5f§.length - 1;
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§_-5f§[_loc3_] as §_-Ie§).§_-53§(param2,param1);
            _loc3_--;
         }
      }
      
      private function §_-X8§(param1:§_-Ie§, param2:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§_-Ie§ = null;
         if(!this.mSardineCanAdded)
         {
            return true;
         }
         if(this.mMightyEagleAdded)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         if(param1.§_-T5§ == param1.§_-Rj§)
         {
            if(this.§_-MZ§ < §_-nb§.§_-xi§)
            {
               this.§_-MZ§ += param2 * §_-nb§.§_-eL§;
            }
            param1.§_-BO§().§_-fL§(param2 * this.§_-MZ§);
            this.§_-YU§ = 0;
         }
         else if(this.§_-YU§ == 0)
         {
            this.§_-YU§ = this.§_-5F§.§_-Wy§;
         }
         if(param1.§_-UQ§() || this.§_-pT§(param1) || this.§_-YU§ > 0 && this.§_-5F§.§_-Wy§ > this.§_-YU§ + §_-nb§.§_-UZ§)
         {
            if(this.mMightyEagleTimer < §_-nb§.§_-rS§)
            {
               _loc4_ = this.mMightyEagleTimer + param2;
               if(this.mMightyEagleTimer < §_-nb§.§_-Ba§ && _loc4_ > §_-nb§.§_-Ba§)
               {
                  §_-0B§.playSound("Mighty_Eagle_Selected_1","ChannelBird");
                  §_-0B§.playSound("Mighty_Eagle_Flying_1","ChannelBird");
               }
               if(_loc4_ >= §_-nb§.§_-rS§)
               {
                  _loc5_ = param1.§_-BO§().GetPosition().x - §_-nb§.§_-ZE§;
                  _loc6_ = param1.§_-BO§().GetPosition().y - §_-nb§.§_-ZE§ * §_-nb§.§_-e5§ * 1.07;
                  if(this.§_-pT§(param1))
                  {
                     _loc3_ = true;
                  }
                  _loc7_ = this.addObject("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,§_-nb§.§_-Q2§ * 1.2);
                  this.mMightyEagleAdded = true;
                  this.§_-YU§ = 0;
                  _loc7_.§_-KI§.§_-Wc§(1.82);
               }
               this.mMightyEagleTimer = _loc4_;
            }
         }
         return _loc3_;
      }
      
      private function §_-sh§(param1:§_-Ie§, param2:Number) : Boolean
      {
         var _loc5_:§_-Ie§ = null;
         if(!this.§_-z§ && this.mMightyEagleTimer > §_-nb§.§_-y9§)
         {
            this.§_-z§ = true;
            this.§_-5F§.§_-n§();
         }
         this.mMightyEagleTimer += param2;
         this.§_-5F§.particles.addParticle(§_-yB§.§_-PD§,§_-5J§.§_-2S§,§_-yB§.§_-7K§,param1.§_-BO§().GetPosition().x - 3 + Math.random() * (3 * 2),param1.§_-BO§().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§_-yB§.§_-zC§(param1.§_-G2§),0,0,1,0,4);
         var _loc4_:int = 1;
         if(this.mMightyEagleHasTouchedGround)
         {
            param1.§_-pa§(§_-nb§.§_-az§ * param2);
            _loc4_ = -1;
            if(this.§_-39§)
            {
               this.§_-39§ = false;
               this.§_-5F§.§_-5A§();
               param1.§_-M6§(§_-ZO§.§_-Uf§);
               this.mSardineCanAdded = false;
               param1.§_-KI§.§_-jc§ = true;
               param1.§_-KI§.§_-bP§();
               for each(_loc5_ in this.§_-5f§)
               {
                  if(_loc5_ && _loc5_.§_-z6§())
                  {
                     _loc5_.§_-BO§().SetAwake(true);
                     _loc5_.§_-BO§().SetLinearVelocity(new b2Vec2(0,-18));
                  }
               }
               this.§_-Dm§();
            }
            if(this.mMightyEagleTimer > 6000 && this.isPigsAlive())
            {
               for each(_loc5_ in this.§_-5f§)
               {
                  if(_loc5_ && _loc5_.§_-z6§())
                  {
                     _loc5_.applyDamage(_loc5_.§_-Rj§ * 2,true,true,true);
                  }
               }
            }
         }
         else
         {
            this.mMightyEagleHasTouchedGround = param1.§_-BO§().GetPosition().y >= -5.5;
            this.§_-39§ = this.mMightyEagleHasTouchedGround;
         }
         param1.§_-TG§(param2,new Point(1,_loc4_ * §_-nb§.§_-e5§),§_-nb§.§_-2m§);
         return false;
      }
      
      private function §_-H6§() : void
      {
         var _loc1_:§_-7C§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§_-Ie§ = null;
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
         while(this.§_-tV§.length > 0)
         {
            _loc1_ = this.§_-tV§.shift();
            _loc2_ = _loc1_.§_-6G§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            for each(_loc6_ in this.§_-5f§)
            {
               _loc8_ = _loc6_.§_-BO§().GetPosition().x - _loc3_;
               _loc9_ = _loc6_.§_-BO§().GetPosition().y - _loc4_;
               if((_loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)) <= _loc1_.§_-6G§)
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
                     _loc6_.§_-BO§().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
                  }
               }
               if(_loc10_ <= _loc1_.§_-ZH§)
               {
                  _loc14_ = _loc5_;
                  if(_loc10_ > 1)
                  {
                     _loc14_ /= _loc10_;
                  }
                  _loc6_.applyDamage(_loc14_,false,false,false,true);
               }
            }
            this.§_-5F§.particles.addParticle(this.getMainExplosionCoreName(_loc1_.type),§_-5J§.§_-2S§,§_-yB§.§_-5§,_loc3_,_loc4_,600,"",§_-yB§.§_-In§,0,0,0,0,1,20,true);
            _loc7_ = 30;
            while(_loc7_ < 150)
            {
               _loc15_ = 0.75 * _loc2_ + Math.random() * _loc2_;
               _loc16_ = 1250 + Math.random() * 750;
               _loc17_ = _loc7_ / (180 / Math.PI);
               this.§_-5F§.particles.addParticle(§_-yB§.§_-2K§,§_-5J§.§_-2S§,§_-yB§.§_-7K§,_loc3_,_loc4_,_loc16_,"",§_-yB§.§_-In§,_loc15_ * Math.cos(_loc17_),-_loc15_ * Math.sin(_loc17_),20,0);
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
         return §_-yB§.§_-1P§;
      }
      
      public function §_-nH§(param1:Number) : void
      {
         var _loc2_:§_-Ie§ = null;
         var _loc3_:int = this.§_-5f§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§_-5f§[_loc3_];
            if(_loc2_.§_-J5§())
            {
               if(this.§_-X8§(_loc2_,param1))
               {
                  this.removeObjectWithIndex(_loc3_,false,false,false);
               }
            }
            else if(_loc2_.§_-Uh§())
            {
               this.§_-sh§(_loc2_,param1);
            }
            else if(this.§_-pT§(_loc2_))
            {
               _loc2_.§_-M6§(§_-ZO§.§_-yq§);
               this.removeObjectWithIndex(_loc3_,false,false,false);
            }
            else if(_loc2_.isReadyToBeRemoved(param1))
            {
               _loc2_.§_-M6§(§_-ZO§.§_-yq§);
               this.removeObjectWithIndex(_loc3_,false,true,true);
            }
            else if(_loc2_.§_-Mi§())
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         this.§_-H6§();
      }
      
      private function §_-Dm§() : void
      {
         var _loc1_:§_-MU§ = null;
         for each(_loc1_ in this.§_-9n§)
         {
            this.§_-5F§.mLevelEngine.mWorld.§_-Yb§(_loc1_.§_-5t§);
         }
      }
      
      public function §_-pg§() : Boolean
      {
         var _loc2_:§_-Ie§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§_-5f§.length)
         {
            _loc2_ = this.§_-5f§[_loc1_];
            if(_loc2_.explode())
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §_-pT§(param1:§_-Ie§) : Boolean
      {
         if(param1 && param1.§_-Az§.§_-NA§() != §_-qt§.§_-YF§ && this.§_-5F§.§_-BV§.§_-Es§(param1.§_-BO§().GetPosition().x,param1.§_-BO§().GetPosition().y))
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
         var _loc5_:§_-Ie§;
         if((_loc5_ = this.§_-5f§[param1]).§_-z6§())
         {
            ++this.§_-fI§;
         }
         else if(_loc5_.§_-Mi§())
         {
            ++this.§_-zn§;
         }
         if(_loc5_ == this.§_-5F§.activeObject)
         {
            this.§_-5F§.activeObject = null;
         }
         if(param2)
         {
            this.§_-5F§.addScore(_loc5_.§_-Az§.score,§_-fU§.§_-eU§,true,_loc5_.§_-BO§().GetPosition().x,_loc5_.§_-BO§().GetPosition().y - 3,§_-yB§.§_-7T§(_loc5_.§_-G2§));
         }
         if(param3)
         {
            _loc5_.addDestructionParticles(this.§_-5F§.particles);
         }
         if(param4)
         {
            this.checkExplosions(_loc5_);
         }
         if(!_loc5_.isTexture())
         {
         }
         this.§_-Uj§(_loc5_.sprite);
         _loc5_.dispose();
         _loc5_ = null;
         this.§_-5f§[param1] = null;
         this.§_-5f§.splice(param1,1);
      }
      
      private function §_-Uj§(param1:Sprite) : void
      {
         if(this.§_-17§.contains(param1))
         {
            this.§_-17§.removeChild(param1);
            return;
         }
         if(this.§_-rg§.contains(param1))
         {
            this.§_-rg§.removeChild(param1);
            return;
         }
         if(this.§_-eR§.contains(param1))
         {
            this.§_-eR§.removeChild(param1);
            return;
         }
         if(this.§_-IG§.contains(param1))
         {
            this.§_-IG§.removeChild(param1);
            return;
         }
      }
      
      protected function checkExplosions(param1:§_-Ie§) : void
      {
         if(param1.§_-y4§().toUpperCase() == "WHITE_EGG" || param1.§_-fm§())
         {
            if(param1.§_-G2§.toUpperCase() == §_-Qw§.§_-MG§)
            {
               this.addExplosions(§_-7C§.§_-Sh§,param1.§_-BO§().GetPosition().x,param1.§_-BO§().GetPosition().y);
            }
            else
            {
               this.addExplosions(§_-7C§.§_-HE§,param1.§_-BO§().GetPosition().x,param1.§_-BO§().GetPosition().y);
            }
         }
      }
      
      public function §_-XB§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.removeObjectWithIndex(this.§_-5f§.indexOf(param1),param2,param3,param4);
      }
      
      public function § for§(param1:Number, param2:Number) : void
      {
         this.§_-GT§.x = -param1;
         this.§_-GT§.y = -param2;
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc3_:§_-Ie§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-5f§.length)
         {
            _loc3_ = this.§_-5f§[_loc2_] as §_-Ie§;
            if(_loc3_ && _loc3_.§_-z6§() && _loc3_.§_-T5§ > 0)
            {
               if(!param1 || _loc3_.§_-KI§.mTryToBlink <= 0 && _loc3_.§_-KI§.mTryToScream <= 0)
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §_-AP§(param1:Boolean = false) : int
      {
         var _loc4_:§_-Ie§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§_-5f§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§_-5f§[_loc3_] as §_-Ie§) && _loc4_.§_-z6§() && _loc4_.§_-T5§ > 0)
            {
               if(!param1 || _loc4_.§_-KI§.mTryToBlink <= 0 && _loc4_.§_-KI§.mTryToScream <= 0)
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
         var _loc3_:§_-Ie§ = null;
         var _loc2_:int = this.§_-5f§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§_-5f§[_loc2_];
            if(_loc3_ && _loc3_.§_-z6§() && _loc3_.§_-T5§ > 0)
            {
               _loc3_.§_-KI§.mTryToScream = §_-Td§.§_-2u§ * param1;
            }
            _loc2_--;
         }
      }
      
      public function §_-Re§() : Boolean
      {
         var _loc2_:§_-Ie§ = null;
         var _loc1_:int = this.§_-5f§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§_-5f§[_loc1_] as §_-Ie§;
            if(_loc2_ && _loc2_.§_-Mi§() && _loc2_.§_-T5§ > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:§_-Ie§ = null;
         var _loc1_:int = this.§_-5f§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§_-5f§[_loc1_] as §_-Ie§;
            if(_loc2_ && _loc2_.§_-T5§ > 0 && _loc2_.§_-1f§ != §_-Sv§.§_-c1§)
            {
               if(_loc2_.§_-Tw§() && !_loc2_.§_-UQ§())
               {
                  return false;
               }
               if(_loc2_.§_-Mi§() && _loc2_.§_-T5§ > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §_-bm§(param1:Boolean = false) : §_-Ie§
      {
         var _loc5_:int = 0;
         var _loc6_:§_-Ie§ = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = this.§_-5f§.length;
         var _loc3_:int = 1 + Math.random() * this.§_-AP§(param1);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               if((_loc6_ = this.§_-5f§[_loc5_]) && _loc6_.§_-z6§() && _loc6_.§_-T5§ > 0)
               {
                  if(!param1 || _loc6_.§_-KI§.mTryToBlink <= 0 && _loc6_.§_-KI§.mTryToScream <= 0)
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
      
      public function §_-Vq§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.§_-5f§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ += (this.§_-5f§[_loc2_] as §_-Ie§).§_-Az§.score;
            if((this.§_-5f§[_loc2_] as §_-Ie§).§_-Tw§())
            {
               _loc1_ += §_-sn§.§_-m9§.getValue() * int((this.§_-5f§[_loc2_] as §_-Ie§).§_-Rj§);
            }
            _loc2_--;
         }
         return int(_loc1_ + this.§_-5F§.slingshot.§_-Vq§());
      }
      
      public function §_-LH§(param1:§_-Ie§, param2:§_-Ie§) : Boolean
      {
         if(param1.§_-Mi§() && param2.§_-Mi§())
         {
            return true;
         }
         if(!param1.§_-Zz§() && !param2.§_-Zz§())
         {
            return true;
         }
         return false;
      }
      
      public function objectCollision(param1:§_-Ie§, param2:§_-Ie§) : void
      {
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         if(this.mMightyEagleAdded)
         {
            if(param1.§_-Uh§() || param2.§_-z6§())
            {
               param2.applyDamage(param2.§_-Rj§ * 2,true,true,true,false);
               return;
            }
            if(param2.§_-Uh§() || param1.§_-z6§())
            {
               param1.applyDamage(param1.§_-Rj§ * 2,true,true,true,false);
               return;
            }
         }
         else if(this.mSardineCanAdded && this.mMightyEagleTimer == §_-nb§.§_-rS§)
         {
            if(param1.§_-J5§() || param2.§_-J5§())
            {
               this.mMightyEagleTimer = 0;
            }
         }
         if(this.§_-LH§(param1,param2))
         {
            return;
         }
         var _loc4_:Number = param1.§_-k1§(param2.§_-y4§());
         var _loc5_:Number = param1.§_-px§(param2.§_-y4§());
         var _loc6_:Number = param2.§_-k1§(param1.§_-y4§());
         var _loc7_:Number = param2.§_-px§(param1.§_-y4§());
         var _loc8_:Number = param1.§_-BO§().GetMass() * param1.§_-BO§().GetLinearVelocity().x - param2.§_-BO§().GetMass() * param2.§_-BO§().GetLinearVelocity().x;
         var _loc9_:Number = param1.§_-BO§().GetMass() * param1.§_-BO§().GetLinearVelocity().y - param2.§_-BO§().GetMass() * param2.§_-BO§().GetLinearVelocity().y;
         var _loc10_:Number = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / 10;
         var _loc11_:Number = _loc4_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc10_;
         var _loc13_:Number = Math.max(0,param1.§_-T5§);
         var _loc14_:Number = Math.max(0,param2.§_-T5§);
         var _loc15_:Number = param1.applyDamage(_loc12_,true,param2.§_-Mi§(),_loc14_ == param2.§_-Rj§);
         var _loc16_:Number = param2.applyDamage(_loc11_,true,param1.§_-Mi§(),_loc13_ == param1.§_-Rj§);
         if(_loc15_ <= 0 && _loc12_ != 0)
         {
            if((_loc18_ = (_loc18_ = (_loc12_ - _loc13_) / _loc12_) * _loc7_) > 1)
            {
               _loc18_ = 1;
            }
            param2.§_-Dy§(new b2Vec2(param2.§_-BO§().GetLinearVelocity().x * _loc18_,param2.§_-BO§().GetLinearVelocity().y * _loc18_));
         }
         if(_loc16_ <= 0 && _loc11_ != 0)
         {
            if((_loc19_ = (_loc19_ = (_loc11_ - _loc14_) / _loc11_) * _loc5_) > 1)
            {
               _loc19_ = 1;
            }
            param1.§_-Dy§(new b2Vec2(param1.§_-BO§().GetLinearVelocity().x * _loc19_,param1.§_-BO§().GetLinearVelocity().y * _loc19_));
         }
      }
      
      public function §_-xU§() : void
      {
         var _loc2_:§_-Ie§ = null;
         var _loc1_:int = this.§_-5f§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§_-5f§[_loc1_] as §_-Ie§;
            if(_loc2_ != null && _loc2_.§_-z6§())
            {
               this.removeObjectWithIndex(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §_-s3§() : void
      {
         var _loc2_:§_-Ie§ = null;
         var _loc1_:int = this.§_-5f§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§_-5f§[_loc1_] as §_-Ie§;
            if(_loc2_ != null && _loc2_.§_-fm§())
            {
               this.removeObjectWithIndex(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §_-me§() : int
      {
         return this.§_-5f§.length;
      }
      
      public function §_-r6§(param1:§_-GI§) : void
      {
         var _loc4_:§_-Ie§ = null;
         var _loc5_:§_-PL§ = null;
         var _loc6_:§_-MU§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§_-5f§.length)
         {
            if((_loc4_ = this.§_-5f§[_loc2_]).§_-wm§)
            {
               if(!_loc4_.isGround())
               {
                  (_loc5_ = new §_-PL§()).angle = _loc4_.§_-rM§();
                  _loc5_.id = _loc4_.§_-G2§;
                  _loc5_.x = _loc4_.§_-BO§().GetPosition().x;
                  _loc5_.y = _loc4_.§_-BO§().GetPosition().y;
                  param1.§_-l0§.push(_loc5_);
               }
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§_-9n§.length)
         {
            (_loc6_ = new §_-MU§(this.§_-9n§[_loc3_].type,this.§_-9n§[_loc3_].index1,this.§_-9n§[_loc3_].index2)).backAndForth = this.§_-9n§[_loc3_].backAndForth;
            _loc6_.collideConnected = this.§_-9n§[_loc3_].collideConnected;
            _loc6_.limit = this.§_-9n§[_loc3_].limit;
            _loc6_.lowerLimit = this.§_-9n§[_loc3_].lowerLimit;
            _loc6_.maxTorque = this.§_-9n§[_loc3_].maxTorque;
            _loc6_.motor = this.§_-9n§[_loc3_].motor;
            _loc6_.motorSpeed = this.§_-9n§[_loc3_].motorSpeed;
            _loc6_.upperLimit = this.§_-9n§[_loc3_].upperLimit;
            _loc6_.p1 = this.§_-9n§[_loc3_].p1;
            _loc6_.p2 = this.§_-9n§[_loc3_].p2;
            param1.§_-9n§.push(_loc6_);
            _loc3_++;
         }
      }
      
      public function §_-NM§() : void
      {
         var _loc1_:int = 0;
         while(this.§_-5f§.length > _loc1_)
         {
            if(this.§_-5f§[_loc1_].isGround())
            {
               _loc1_++;
            }
            else
            {
               this.§_-XB§(this.§_-5f§[_loc1_]);
            }
         }
      }
      
      public function §_-R3§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§_-5f§.length)
         {
            if(this.§_-5f§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§_-5f§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         this.§_-005§ = param1;
         this.§_-q8§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§_-5f§.length)
         {
            if(this.§_-5f§[_loc2_].isTexture())
            {
               this.§_-5f§[_loc2_].sprite.visible = !this.§_-005§;
            }
            _loc2_++;
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         this.§_-Gk§ = param1;
      }
      
      public function §_-Gl§() : Boolean
      {
         return this.§_-Gk§;
      }
      
      public function §_-Z8§() : int
      {
         return this.§_-zn§;
      }
      
      public function §_-4D§() : int
      {
         return this.§_-fI§;
      }
   }
}
