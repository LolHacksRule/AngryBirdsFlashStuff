package §_-tW§
{
   import §_-3b§.§_-Lf§;
   import §_-4K§.§_-Av§;
   import §_-7x§.§_-yE§;
   import §_-Di§.§_-3w§;
   import §_-Di§.§_-58§;
   import §_-Di§.§_-ix§;
   import §_-Di§.§_-nT§;
   import §_-Q0§.Texture;
   import §_-Rm§.§_-7§;
   import §_-Rm§.§_-bY§;
   import §_-Rm§.§_-i8§;
   import §_-Rm§.§_-kO§;
   import §_-Rm§.§_-tv§;
   import §_-SE§.Sprite;
   import §_-SE§.§_-rl§;
   import §_-bA§.b2Vec2;
   import §_-bu§.§_-1U§;
   import §_-bu§.§_-Yc§;
   import §_-dH§.§_-ds§;
   import §_-dH§.§_-wT§;
   import §_-h3§.§_-EL§;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §_-S5§
   {
       
      
      protected var §_-NP§:Vector.<§_-lx§>;
      
      protected var §_-a9§:int;
      
      public var §_-JH§:§_-ix§;
      
      public var §_-NJ§:Vector.<§_-Lq§>;
      
      protected var §_-Os§:Sprite;
      
      protected var §_-x8§:Sprite;
      
      private var §_-U2§:Sprite;
      
      private var §_-8x§:Sprite;
      
      private var §_-jV§:Sprite;
      
      protected var §_-TJ§:Vector.<Texture>;
      
      protected var §_-Ot§:Vector.<§_-1U§>;
      
      protected var §_-bG§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §_-kH§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §_-xb§:Boolean = false;
      
      protected var §_-Hz§:Number = 0.07;
      
      private var §_-E9§:Boolean = true;
      
      private var §_-HO§:Boolean = true;
      
      public function §_-S5§(param1:§_-ix§, param2:§_-yE§, param3:Sprite)
      {
         var _loc5_:§_-Yc§ = null;
         var _loc6_:§_-1U§ = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:§_-lx§ = null;
         var _loc10_:§_-lx§ = null;
         this.§_-NP§ = new Vector.<§_-lx§>();
         this.§_-NJ§ = new Vector.<§_-Lq§>();
         this.§_-TJ§ = new Vector.<Texture>();
         super();
         this.§_-JH§ = param1;
         this.§_-a9§ = 0;
         this.§_-x8§ = param3;
         this.§_-x8§.§_-54§ = false;
         this.§_-HO§ = true;
         this.§_-E9§ = true;
         this.§_-Os§ = new Sprite();
         this.§_-U2§ = new Sprite();
         this.§_-8x§ = new Sprite();
         this.§_-jV§ = new Sprite();
         this.§_-x8§.addChild(this.§_-Os§);
         this.§_-x8§.addChild(this.§_-U2§);
         this.§_-x8§.addChild(this.§_-8x§);
         this.§_-x8§.addChild(this.§_-jV§);
         this.§_-ZA§(§_-EL§.§_-fN§(param2.§_-9Q§).§_-XD§,(this.§_-JH§.§_-Ts§.§_-fJ§ + this.§_-JH§.§_-Ts§.§_-3Q§) / 2,this.§_-JH§.§_-Ts§.§_-p7§ + §_-58§.§_-F§);
         var _loc4_:int = this.§_-NP§.length;
         for each(_loc5_ in param2.§_-dD§)
         {
            this.§_-ZA§(_loc5_.id,_loc5_.x,_loc5_.y,_loc5_.angle,false,false,true,1,_loc5_.front);
         }
         this.§_-e1§();
         this.§_-P4§(true);
         this.§_-Ot§ = param2.§_-Ot§;
         for each(_loc6_ in param2.§_-Ot§)
         {
            _loc7_ = _loc6_.index1 + _loc4_;
            _loc8_ = _loc6_.index2 + _loc4_;
            _loc9_ = this.§_-NP§[_loc7_];
            _loc10_ = this.§_-NP§[_loc8_];
            if(!(_loc9_ && _loc10_))
            {
               throw new Error("Joint index out of bounds [" + _loc7_ + ", " + _loc8_ + "]");
            }
            _loc6_.§_-zC§ = this.§_-JH§.§_-v0§.§_-s2§.§_-oV§(_loc6_.§_-zJ§(_loc9_,_loc10_));
         }
      }
      
      public function get §_-Cg§() : Sprite
      {
         return this.§_-jV§;
      }
      
      public function get §_-eA§() : Sprite
      {
         return this.§_-x8§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§_-NP§.length > 0)
         {
            this.§_-uO§(0);
         }
         this.§_-NP§ = null;
         if(this.§_-x8§)
         {
            this.§_-x8§.dispose();
            this.§_-x8§ = null;
            this.§_-Os§ = null;
            this.§_-jV§ = null;
            this.§_-U2§ = null;
            this.§_-8x§ = null;
         }
         while(this.§_-TJ§.length > 0)
         {
            _loc1_ = this.§_-TJ§.pop();
            this.§_-JH§.§_-G9§.§_-Ug§(_loc1_);
         }
      }
      
      private function §_-P4§(param1:Boolean) : void
      {
         this.§_-Os§.visible = param1;
      }
      
      private function §_-e1§() : void
      {
         var _loc3_:§_-lx§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§_-rl§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§_-lx§> = new Vector.<§_-lx§>();
         for each(_loc3_ in this.§_-NP§)
         {
            if(_loc3_.isTexture())
            {
               _loc2_.push(_loc3_);
               _loc4_ = _loc3_.sprite.getBounds(this.§_-x8§);
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
            this.§function§(_loc10_.rect,_loc10_,_loc5_);
            _loc11_ = this.§_-h4§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
            _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc12_ = this.§_-JH§.§_-G9§.§_-R5§(_loc10_);
            this.§_-TJ§.push(_loc12_);
            (_loc13_ = new §_-rl§(_loc12_)).x = _loc8_ / _loc5_;
            _loc13_.y = _loc9_ / _loc5_;
            _loc13_.scaleX = 1 / _loc5_;
            _loc13_.scaleY = 1 / _loc5_;
            this.§_-Os§.addChild(_loc13_);
            _loc11_.dispose();
         }
      }
      
      private function §_-h4§(param1:Vector.<§_-lx§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§_-lx§ = null;
         var _loc11_:§_-7§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§_-YF§.shape).§_-aC§();
            _loc13_ = new Rectangle(_loc12_[0].x / §_-ix§.§_-z8§ * param6,_loc12_[0].y / §_-ix§.§_-z8§ * param6,(_loc12_[1].x - _loc12_[0].x) / §_-ix§.§_-z8§ * param6,(_loc12_[1].y - _loc12_[0].y) / §_-ix§.§_-z8§ * param6);
            _loc10_.identity();
            _loc10_.scale(_loc13_.width,_loc13_.height);
            _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
            _loc10_.rotate((360 - _loc7_.§_-BK§()) / 180 * Math.PI);
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            _loc8_.draw(_loc9_,_loc10_);
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      private function §function§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.§_-JH§.background.§_-WK§();
         var _loc5_:§_-Lf§;
         if(_loc5_ = this.§_-JH§.§_-Km§.§_-lH§(_loc4_))
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
      
      public function §_-zK§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §_-lx§
      {
         var _loc10_:§_-lx§ = null;
         switch(param2)
         {
            case "BIRD_BLACK":
               _loc10_ = new §_-hB§(this,param1,this.§_-JH§.§_-v0§.§_-s2§,this.§_-JH§,this.§_-a9§,param2,param3,param4,param5,param9);
               break;
            case "BIRD_BLUE":
               _loc10_ = new §_-H-§(this,param1,this.§_-JH§.§_-v0§.§_-s2§,this.§_-JH§,this.§_-a9§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_GREEN":
               _loc10_ = new §_-cY§(this,param1,this.§_-JH§.§_-v0§.§_-s2§,this.§_-JH§,this.§_-a9§,param2,param3,param4,param5,param9);
               break;
            case "BIRD_WHITE":
               _loc10_ = new §_-02§(this,param1,this.§_-JH§.§_-v0§.§_-s2§,this.§_-JH§,this.§_-a9§,param2,param3,param4,param5,param9);
               break;
            case "BIRD_YELLOW":
               _loc10_ = new §_-kE§(this,param1,this.§_-JH§.§_-v0§.§_-s2§,this.§_-JH§,this.§_-a9§,param2,param3,param4,param5,param9);
               break;
            case "BIRD_RED":
               _loc10_ = new §_-2I§(this,param1,this.§_-JH§.§_-v0§.§_-s2§,this.§_-JH§,this.§_-a9§,param2,param3,param4,param5,param8,param9);
               break;
            default:
               _loc10_ = new §_-f5§(this,param1,this.§_-JH§.§_-v0§.§_-s2§,this.§_-JH§,this.§_-a9§,param2,param3,param4,param5,param8,param9);
         }
         return _loc10_;
      }
      
      public function §_-ZA§(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §_-lx§
      {
         var _loc11_:§_-lx§ = null;
         var _loc12_:§_-kO§ = null;
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         _loc10_.scaleY = param8;
         if(param1.indexOf("BIRD") == 0)
         {
            _loc11_ = this.§_-zK§(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8);
         }
         else if(param1.indexOf("PIG") == 0)
         {
            _loc11_ = new § true§(this,_loc10_,this.§_-JH§.§_-v0§.§_-s2§,this.§_-JH§,this.§_-a9§,param1,param2,param3,param4,param8);
         }
         else
         {
            if((_loc12_ = §_-tv§.§get §(param1)) == null && param1.indexOf("MISC_") == 0)
            {
               param1 = "MISC_FOOD_" + param1.substring(5);
               _loc12_ = §_-tv§.§get §(param1);
            }
            if(_loc12_.§_-rw§ == §_-kO§.§_-xN§ || _loc12_.§_-rw§ == §_-kO§.§_-zs§)
            {
               _loc11_ = new §_-lR§(this,_loc10_,this.§_-JH§.§_-v0§.§_-s2§,this.§_-JH§,this.§_-a9§,param1,param2,param3,param4,param8,_loc12_.front);
            }
            else
            {
               _loc11_ = new §_-lx§(this,_loc10_,this.§_-JH§.§_-v0§.§_-s2§,this.§_-JH§,this.§_-a9§,param1,param2,param3,param4,param8,_loc12_.front);
            }
         }
         if(_loc11_.isTexture())
         {
            _loc10_.visible = !this.§_-E9§;
            this.§_-NP§[this.§_-NP§.length] = _loc11_;
         }
         else
         {
            this.§_-NP§[this.§_-NP§.length] = _loc11_;
         }
         if(_loc11_ is §_-f5§ && !_loc11_.§_-8b§())
         {
            this.§_-U2§.addChild(_loc10_);
         }
         else if(_loc11_.front || param9)
         {
            this.§_-jV§.addChild(_loc10_);
         }
         else
         {
            this.§_-8x§.addChild(_loc10_);
         }
         if(param5)
         {
            this.§_-JH§.§_-a8§(_loc11_);
         }
         if(param6)
         {
            this.§_-JH§.activeObject = _loc11_;
         }
         return _loc11_;
      }
      
      public function §_-bU§() : void
      {
         var _loc2_:§_-lx§ = null;
         var _loc1_:int = this.§_-NP§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§_-NP§[_loc1_] as §_-lx§;
            if(_loc2_)
            {
               if(_loc2_.§_-hs§ <= 0)
               {
                  this.§_-uO§(_loc1_,true,true,true);
               }
               else
               {
                  _loc2_.§_-gU§();
                  _loc2_.§_-PJ§();
               }
            }
            _loc1_--;
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         this.§_-NJ§.push(§_-Lq§.§_-ES§(param1,param2,param3));
         §_-Av§.§_-so§("TntExplosions","ChannelExplosions");
      }
      
      public function §_-y4§(param1:Number, param2:Number) : int
      {
         var _loc4_:§_-lx§ = null;
         var _loc3_:int = this.§_-NP§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§_-NP§[_loc3_])
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
      
      public function §_-Hp§(param1:Number, param2:Number) : §_-lx§
      {
         var _loc4_:§_-lx§ = null;
         var _loc3_:int = this.§_-NP§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§_-NP§[_loc3_])
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
      
      public function §_-Ex§(param1:int) : §_-lx§
      {
         return this.§_-NP§[param1];
      }
      
      public function §_-Vt§(param1:Number, param2:Number) : void
      {
         var _loc4_:§_-lx§ = null;
         var _loc3_:int = this.§_-NP§.length - 1;
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§_-NP§[_loc3_] as §_-lx§).§_-Vt§(param2,param1);
            _loc3_--;
         }
      }
      
      private function §_-Rr§(param1:§_-lx§, param2:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§_-lx§ = null;
         if(!this.mSardineCanAdded)
         {
            return true;
         }
         if(this.mMightyEagleAdded)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         if(param1.§_-hs§ == param1.§_-eV§)
         {
            if(this.§_-Hz§ < §_-nT§.§_-3U§)
            {
               this.§_-Hz§ += param2 * §_-nT§.§_-xm§;
            }
            param1.§_-UF§().§_-6i§(param2 * this.§_-Hz§);
         }
         if(param1.§_-UO§() || this.§_-S4§(param1))
         {
            if(this.mMightyEagleTimer < §_-nT§.§_-Pb§)
            {
               _loc4_ = this.mMightyEagleTimer + param2;
               if(this.mMightyEagleTimer < §_-nT§.§_-jJ§ && _loc4_ > §_-nT§.§_-jJ§)
               {
                  §_-Av§.§_-so§("Mighty_Eagle_Selected_1","ChannelBird");
                  §_-Av§.§_-so§("Mighty_Eagle_Flying_1","ChannelBird");
               }
               if(_loc4_ >= §_-nT§.§_-Pb§)
               {
                  _loc5_ = param1.§_-UF§().GetPosition().x - §_-nT§.§_-ag§;
                  _loc6_ = param1.§_-UF§().GetPosition().y - §_-nT§.§_-ag§ * §_-nT§.§_-83§ * 1.07;
                  if(this.§_-S4§(param1))
                  {
                     _loc3_ = true;
                  }
                  _loc7_ = this.§_-ZA§("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,§_-nT§.§_-Hs§ * 1.2);
                  this.mMightyEagleAdded = true;
                  _loc7_.§_-bV§.§_-Wh§(1.82);
               }
               this.mMightyEagleTimer = _loc4_;
            }
         }
         return _loc3_;
      }
      
      private function §_-wF§(param1:§_-lx§, param2:Number) : Boolean
      {
         var _loc5_:§_-lx§ = null;
         if(!this.§_-xb§ && this.mMightyEagleTimer > §_-nT§.§_-GD§)
         {
            this.§_-xb§ = true;
            this.§_-JH§.§_-gL§();
         }
         this.mMightyEagleTimer += param2;
         this.§_-JH§.particles.§_-Kw§(§_-ds§.§_-Sz§,§_-wT§.§_-Kz§,§_-ds§.§_-qg§,param1.§_-UF§().GetPosition().x - 3 + Math.random() * (3 * 2),param1.§_-UF§().GetPosition().y - 3 + Math.random() * (3 * 2),3500,"",§_-ds§.§_-vZ§(param1.§_-ep§),0,0,1,0,4);
         var _loc4_:int = 1;
         if(this.mMightyEagleHasTouchedGround)
         {
            param1.§finally§(§_-nT§.§_-LJ§ * param2);
            _loc4_ = -1;
            if(this.§_-kH§)
            {
               this.§_-kH§ = false;
               this.§_-JH§.§_-Dw§();
               param1.§_-9w§(§_-i8§.§_-Bb§);
               this.mSardineCanAdded = false;
               param1.§_-bV§.§_-ZU§ = true;
               param1.§_-bV§.§_-p6§();
               for each(_loc5_ in this.§_-NP§)
               {
                  if(_loc5_ && _loc5_.§_-mo§())
                  {
                     _loc5_.§_-UF§().SetAwake(true);
                     _loc5_.§_-UF§().SetLinearVelocity(new b2Vec2(0,-18));
                  }
               }
               this.§_-yX§();
            }
            if(this.mMightyEagleTimer > 6000 && this.isPigsAlive())
            {
               for each(_loc5_ in this.§_-NP§)
               {
                  if(_loc5_ && _loc5_.§_-mo§())
                  {
                     _loc5_.applyDamage(_loc5_.§_-eV§ * 2,true,true,true);
                  }
               }
            }
         }
         else
         {
            this.mMightyEagleHasTouchedGround = param1.§_-UF§().GetPosition().y >= -5.5;
            this.§_-kH§ = this.mMightyEagleHasTouchedGround;
         }
         param1.§_-KJ§(param2,new Point(1,_loc4_ * §_-nT§.§_-83§),§_-nT§.§_-M7§);
         return false;
      }
      
      private function §_-v6§() : void
      {
         var _loc1_:§_-Lq§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§_-lx§ = null;
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
         while(this.§_-NJ§.length > 0)
         {
            _loc1_ = this.§_-NJ§.shift();
            _loc2_ = _loc1_.§_-zl§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            for each(_loc6_ in this.§_-NP§)
            {
               _loc8_ = _loc6_.§_-UF§().GetPosition().x - _loc3_;
               _loc9_ = _loc6_.§_-UF§().GetPosition().y - _loc4_;
               if((_loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)) <= _loc1_.§_-zl§)
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
                     _loc6_.§_-UF§().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
                  }
               }
               if(_loc10_ <= _loc1_.§_-mU§)
               {
                  _loc14_ = _loc5_;
                  if(_loc10_ > 1)
                  {
                     _loc14_ /= _loc10_;
                  }
                  _loc6_.applyDamage(_loc14_,false,false,false,true);
               }
            }
            this.§_-JH§.particles.§_-Kw§(this.§_-bc§(_loc1_.type),§_-wT§.§_-Kz§,§_-ds§.§_-gq§,_loc3_,_loc4_,600,"",§_-ds§.§_-NY§,0,0,0,0,1,20,true);
            _loc7_ = 30;
            while(_loc7_ < 150)
            {
               _loc15_ = 0.75 * _loc2_ + Math.random() * _loc2_;
               _loc16_ = 1250 + Math.random() * 750;
               _loc17_ = _loc7_ / (180 / Math.PI);
               this.§_-JH§.particles.§_-Kw§(§_-ds§.§_-s6§,§_-wT§.§_-Kz§,§_-ds§.§_-qg§,_loc3_,_loc4_,_loc16_,"",§_-ds§.§_-NY§,_loc15_ * Math.cos(_loc17_),-_loc15_ * Math.sin(_loc17_),20,0);
               _loc7_ += 5;
            }
         }
      }
      
      protected function §_-bc§(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §_-ds§.§_-5I§;
      }
      
      public function §_-FK§(param1:Number) : void
      {
         var _loc2_:§_-lx§ = null;
         var _loc3_:int = this.§_-NP§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§_-NP§[_loc3_];
            if(_loc2_.§_-Wj§())
            {
               if(this.§_-Rr§(_loc2_,param1))
               {
                  this.§_-uO§(_loc3_,false,false,false);
               }
            }
            else if(_loc2_.§_-8b§())
            {
               this.§_-wF§(_loc2_,param1);
            }
            else if(this.§_-S4§(_loc2_))
            {
               _loc2_.§_-9w§(§_-i8§.§_-Az§);
               this.§_-uO§(_loc3_,false,false,false);
            }
            else if(_loc2_.isReadyToBeRemoved(param1))
            {
               _loc2_.§_-9w§(§_-i8§.§_-Az§);
               this.§_-uO§(_loc3_,false,true,true);
            }
            else if(_loc2_.§_-Ak§())
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         this.§_-v6§();
      }
      
      private function §_-yX§() : void
      {
         var _loc1_:§_-1U§ = null;
         for each(_loc1_ in this.§_-Ot§)
         {
            this.§_-JH§.§_-v0§.§_-s2§.§_-SY§(_loc1_.§_-zC§);
         }
      }
      
      public function §_-uI§() : Boolean
      {
         var _loc2_:§_-lx§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§_-NP§.length)
         {
            _loc2_ = this.§_-NP§[_loc1_];
            if(_loc2_.explode())
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §_-S4§(param1:§_-lx§) : Boolean
      {
         if(param1 && param1.§_-YF§.§_-r-§() != §_-bY§.§_-Hl§ && this.§_-JH§.§_-Ts§.§_-xU§(param1.§_-UF§().GetPosition().x,param1.§_-UF§().GetPosition().y))
         {
            return true;
         }
         return false;
      }
      
      public function §_-uO§(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:§_-lx§;
         if((_loc5_ = this.§_-NP§[param1]) == this.§_-JH§.activeObject)
         {
            this.§_-JH§.activeObject = null;
         }
         if(param2)
         {
            this.§_-JH§.addScore(_loc5_.§_-YF§.score,§_-3w§.§_-hp§,true,_loc5_.§_-UF§().GetPosition().x,_loc5_.§_-UF§().GetPosition().y - 3,§_-ds§.§_-Y4§(_loc5_.§_-ep§));
         }
         if(param3)
         {
            _loc5_.addDestructionParticles(this.§_-JH§.particles);
         }
         if(param4)
         {
            this.§_-D4§(_loc5_);
         }
         if(!_loc5_.isTexture())
         {
         }
         this.§_-M§(_loc5_.sprite);
         _loc5_.dispose();
         _loc5_ = null;
         this.§_-NP§[param1] = null;
         this.§_-NP§.splice(param1,1);
      }
      
      private function §_-M§(param1:Sprite) : void
      {
         if(this.§_-U2§.contains(param1))
         {
            this.§_-U2§.removeChild(param1);
            return;
         }
         if(this.§_-Os§.contains(param1))
         {
            this.§_-Os§.removeChild(param1);
            return;
         }
         if(this.§_-jV§.contains(param1))
         {
            this.§_-jV§.removeChild(param1);
            return;
         }
         if(this.§_-8x§.contains(param1))
         {
            this.§_-8x§.removeChild(param1);
            return;
         }
      }
      
      protected function §_-D4§(param1:§_-lx§) : void
      {
         if(param1.§_-qm§().toUpperCase() == "WHITE_EGG" || param1.§_-9Z§())
         {
            if(param1.§_-ep§.toUpperCase() == §_-02§.§_-dg§)
            {
               this.addExplosions(§_-Lq§.§_-jv§,param1.§_-UF§().GetPosition().x,param1.§_-UF§().GetPosition().y);
            }
            else
            {
               this.addExplosions(§_-Lq§.§_-VL§,param1.§_-UF§().GetPosition().x,param1.§_-UF§().GetPosition().y);
            }
         }
      }
      
      public function §_-us§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.§_-uO§(this.§_-NP§.indexOf(param1),param2,param3,param4);
      }
      
      public function §_-3I§(param1:Number, param2:Number) : void
      {
         this.§_-x8§.x = -param1;
         this.§_-x8§.y = -param2;
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc3_:§_-lx§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-NP§.length)
         {
            _loc3_ = this.§_-NP§[_loc2_] as §_-lx§;
            if(_loc3_ && _loc3_.§_-mo§() && _loc3_.§_-hs§ > 0)
            {
               if(!param1 || _loc3_.§_-bV§.mTryToBlink <= 0 && _loc3_.§_-bV§.mTryToScream <= 0)
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §_-9D§(param1:Boolean = false) : int
      {
         var _loc4_:§_-lx§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§_-NP§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§_-NP§[_loc3_] as §_-lx§) && _loc4_.§_-mo§() && _loc4_.§_-hs§ > 0)
            {
               if(!param1 || _loc4_.§_-bV§.mTryToBlink <= 0 && _loc4_.§_-bV§.mTryToScream <= 0)
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
         var _loc3_:§_-lx§ = null;
         var _loc2_:int = this.§_-NP§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§_-NP§[_loc2_];
            if(_loc3_ && _loc3_.§_-mo§() && _loc3_.§_-hs§ > 0)
            {
               _loc3_.§_-bV§.mTryToScream = §_-wS§.§_-Ma§ * param1;
            }
            _loc2_--;
         }
      }
      
      public function §_-EG§() : Boolean
      {
         var _loc2_:§_-lx§ = null;
         var _loc1_:int = this.§_-NP§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§_-NP§[_loc1_] as §_-lx§;
            if(_loc2_ && _loc2_.§_-Ak§() && _loc2_.§_-hs§ > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:§_-lx§ = null;
         var _loc1_:int = this.§_-NP§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§_-NP§[_loc1_] as §_-lx§;
            if(_loc2_ && _loc2_.§_-hs§ > 0 && _loc2_.§_-rw§ != §_-kO§.§_-qB§)
            {
               if(_loc2_.§_-eb§() && !_loc2_.§_-UO§())
               {
                  return false;
               }
               if(_loc2_.§_-Ak§() && _loc2_.§_-hs§ > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §_-Su§(param1:Boolean = false) : §_-lx§
      {
         var _loc5_:int = 0;
         var _loc6_:§_-lx§ = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = this.§_-NP§.length;
         var _loc3_:int = 1 + Math.random() * this.§_-9D§(param1);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               if((_loc6_ = this.§_-NP§[_loc5_]) && _loc6_.§_-mo§() && _loc6_.§_-hs§ > 0)
               {
                  if(!param1 || _loc6_.§_-bV§.mTryToBlink <= 0 && _loc6_.§_-bV§.mTryToScream <= 0)
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
      
      public function §_-ff§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.§_-NP§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ += (this.§_-NP§[_loc2_] as §_-lx§).§_-YF§.score;
            if((this.§_-NP§[_loc2_] as §_-lx§).§_-eb§())
            {
               _loc1_ += §_-ix§.§case §.getValue() * int((this.§_-NP§[_loc2_] as §_-lx§).§_-eV§);
            }
            _loc2_--;
         }
         return int(_loc1_ + this.§_-JH§.slingshot.§_-ff§());
      }
      
      public function §_-1T§(param1:§_-lx§, param2:§_-lx§) : Boolean
      {
         if(param1.§_-Ak§() && param2.§_-Ak§())
         {
            return true;
         }
         if(!param1.§_-sC§() && !param2.§_-sC§())
         {
            return true;
         }
         return false;
      }
      
      public function §_-5-§(param1:§_-lx§, param2:§_-lx§) : void
      {
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         if(this.mMightyEagleAdded)
         {
            if(param1.§_-8b§() || this.mMightyEagleAdded && param2.§_-mo§())
            {
               param2.applyDamage(param2.§_-eV§ * 2,true,true,true);
               return;
            }
            if(param2.§_-8b§() || this.mMightyEagleAdded && param1.§_-mo§())
            {
               param1.applyDamage(param1.§_-eV§ * 2,true,true,true);
               return;
            }
         }
         else if(this.mSardineCanAdded && this.mMightyEagleTimer == §_-nT§.§_-Pb§)
         {
            if(param1.§_-Wj§() || param2.§_-Wj§())
            {
               this.mMightyEagleTimer = 0;
            }
         }
         if(this.§_-1T§(param1,param2))
         {
            return;
         }
         var _loc4_:Number = param1.§_-Ry§(param2.§_-qm§());
         var _loc5_:Number = param1.§_-20§(param2.§_-qm§());
         var _loc6_:Number = param2.§_-Ry§(param1.§_-qm§());
         var _loc7_:Number = param2.§_-20§(param1.§_-qm§());
         var _loc8_:Number = param1.§_-UF§().GetMass() * param1.§_-UF§().GetLinearVelocity().x - param2.§_-UF§().GetMass() * param2.§_-UF§().GetLinearVelocity().x;
         var _loc9_:Number = param1.§_-UF§().GetMass() * param1.§_-UF§().GetLinearVelocity().y - param2.§_-UF§().GetMass() * param2.§_-UF§().GetLinearVelocity().y;
         var _loc10_:Number = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / 10;
         var _loc11_:Number = _loc4_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc10_;
         var _loc13_:Number = Math.max(0,param1.§_-hs§);
         var _loc14_:Number = Math.max(0,param2.§_-hs§);
         var _loc15_:Number = param1.applyDamage(_loc12_,true,param2.§_-Ak§(),_loc14_ == param2.§_-eV§);
         var _loc16_:Number = param2.applyDamage(_loc11_,true,param1.§_-Ak§(),_loc13_ == param1.§_-eV§);
         if(_loc15_ <= 0)
         {
            if((_loc18_ = (_loc18_ = (_loc12_ - _loc13_) / _loc12_) * _loc7_) > 1)
            {
               _loc18_ = 1;
            }
            param2.§_-UG§(new b2Vec2(param2.§_-UF§().GetLinearVelocity().x * _loc18_,param2.§_-UF§().GetLinearVelocity().y * _loc18_));
         }
         if(_loc16_ <= 0)
         {
            if((_loc19_ = (_loc19_ = (_loc11_ - _loc14_) / _loc11_) * _loc5_) > 1)
            {
               _loc19_ = 1;
            }
            param1.§_-UG§(new b2Vec2(param1.§_-UF§().GetLinearVelocity().x * _loc19_,param1.§_-UF§().GetLinearVelocity().y * _loc19_));
         }
      }
      
      public function §_-B§() : void
      {
         var _loc2_:§_-lx§ = null;
         var _loc1_:int = this.§_-NP§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§_-NP§[_loc1_] as §_-lx§;
            if(_loc2_ != null && _loc2_.§_-mo§())
            {
               this.§_-uO§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §_-ND§() : void
      {
         var _loc2_:§_-lx§ = null;
         var _loc1_:int = this.§_-NP§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§_-NP§[_loc1_] as §_-lx§;
            if(_loc2_ != null && _loc2_.§_-9Z§())
            {
               this.§_-uO§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §_-s8§() : int
      {
         return this.§_-NP§.length;
      }
      
      public function §_-4D§(param1:§_-yE§) : void
      {
         var _loc4_:§_-lx§ = null;
         var _loc5_:§_-Yc§ = null;
         var _loc6_:§_-1U§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§_-NP§.length)
         {
            if((_loc4_ = this.§_-NP§[_loc2_]).§_-ru§)
            {
               if(!_loc4_.isGround())
               {
                  (_loc5_ = new §_-Yc§()).angle = _loc4_.§_-BK§();
                  _loc5_.id = _loc4_.§_-ep§;
                  _loc5_.x = _loc4_.§_-UF§().GetPosition().x;
                  _loc5_.y = _loc4_.§_-UF§().GetPosition().y;
                  param1.§_-dD§.push(_loc5_);
               }
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§_-Ot§.length)
         {
            (_loc6_ = new §_-1U§(this.§_-Ot§[_loc3_].type,this.§_-Ot§[_loc3_].index1,this.§_-Ot§[_loc3_].index2)).backAndForth = this.§_-Ot§[_loc3_].backAndForth;
            _loc6_.collideConnected = this.§_-Ot§[_loc3_].collideConnected;
            _loc6_.limit = this.§_-Ot§[_loc3_].limit;
            _loc6_.lowerLimit = this.§_-Ot§[_loc3_].lowerLimit;
            _loc6_.maxTorque = this.§_-Ot§[_loc3_].maxTorque;
            _loc6_.motor = this.§_-Ot§[_loc3_].motor;
            _loc6_.motorSpeed = this.§_-Ot§[_loc3_].motorSpeed;
            _loc6_.upperLimit = this.§_-Ot§[_loc3_].upperLimit;
            _loc6_.p1 = this.§_-Ot§[_loc3_].p1;
            _loc6_.p2 = this.§_-Ot§[_loc3_].p2;
            param1.§_-Ot§.push(_loc6_);
            _loc3_++;
         }
      }
      
      public function §_-oo§() : void
      {
         var _loc1_:int = 0;
         while(this.§_-NP§.length > _loc1_)
         {
            if(this.§_-NP§[_loc1_].isGround())
            {
               _loc1_++;
            }
            else
            {
               this.§_-us§(this.§_-NP§[_loc1_]);
            }
         }
      }
      
      public function §_-35§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§_-NP§.length)
         {
            if(this.§_-NP§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§_-NP§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         this.§_-E9§ = param1;
         this.§_-P4§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§_-NP§.length)
         {
            if(this.§_-NP§[_loc2_].isTexture())
            {
               this.§_-NP§[_loc2_].sprite.visible = !this.§_-E9§;
            }
            _loc2_++;
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         this.§_-HO§ = param1;
      }
      
      public function §_-nu§() : Boolean
      {
         return this.§_-HO§;
      }
   }
}
