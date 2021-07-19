package §_-CR§
{
   import §_-2m§.§_-lr§;
   import §_-2m§.§_-mI§;
   import §_-4g§.Texture;
   import §_-Cx§.§_-Gb§;
   import §_-Cx§.§_-UW§;
   import §_-HU§.§_-6n§;
   import §_-HU§.§_-Ju§;
   import §_-HU§.§_-Pq§;
   import §_-HU§.§_-gs§;
   import §_-HU§.§_-yP§;
   import §_-IG§.§_-1E§;
   import §_-IG§.§_-Hj§;
   import §_-Iw§.b2Fixture;
   import §_-Ja§.b2Vec2;
   import §_-LP§.Sprite;
   import §_-LP§.§_-19§;
   import §_-OJ§.§_-EQ§;
   import §_-OJ§.§_-tL§;
   import §_-OJ§.§_-vI§;
   import §_-OJ§.§_-y5§;
   import §_-Qx§.§_-Wv§;
   import §_-Ra§.§_-Vr§;
   import §_-rQ§.§_-Ou§;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §_-F5§
   {
       
      
      private var §_-z-§:Vector.<§_-Dz§>;
      
      protected var §_-9L§:int;
      
      public var §_-Ag§:§_-tL§;
      
      public var §_-cY§:Boolean;
      
      public var §_-6I§:Vector.<§_-GP§>;
      
      private var §_-uj§:Sprite;
      
      private var §_-uM§:Sprite;
      
      private var §_-LJ§:Vector.<Texture>;
      
      private var §_-kP§:Vector.<§_-Hj§>;
      
      private var §_-YJ§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §_-lH§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      private var §_-5N§:Boolean = false;
      
      private var §_-UF§:Number = 0.07;
      
      private var §_-aA§:Boolean = true;
      
      private var §_-Ty§:Boolean = true;
      
      public function §_-F5§(param1:§_-tL§, param2:§_-Wv§, param3:Sprite)
      {
         var _loc6_:§_-1E§ = null;
         var _loc7_:§_-Hj§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§_-Dz§ = null;
         var _loc11_:§_-Dz§ = null;
         this.§_-z-§ = new Vector.<§_-Dz§>();
         this.§_-6I§ = new Vector.<§_-GP§>();
         this.§_-LJ§ = new Vector.<Texture>();
         super();
         this.§_-Ag§ = param1;
         this.§_-9L§ = 0;
         this.§_-uM§ = param3;
         this.§_-uM§.§_-pE§ = false;
         this.§_-Ty§ = true;
         this.§_-aA§ = true;
         this.§_-uj§ = new Sprite();
         this.§_-uM§.addChild(this.§_-uj§);
         var _loc4_:§_-mI§;
         if((_loc4_ = §_-lr§.§_-1U§(param2.§_-Tt§)) == null)
         {
            param2.§_-Tt§ = "BACKGROUND_BLUE_GRASS";
            _loc4_ = §_-lr§.§_-1U§(param2.§_-Tt§);
         }
         this.§switch§(§_-lr§.§_-1U§(param2.§_-Tt§).§_-p5§,(this.§_-Ag§.§_-N7§.§_-0x§ + this.§_-Ag§.§_-N7§.§_-ec§) / 2,this.§_-Ag§.§_-N7§.§_-IL§ + §_-y5§.§_-cS§);
         var _loc5_:int = this.§_-z-§.length;
         for each(_loc6_ in param2.§_-yZ§)
         {
            this.§switch§(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle);
         }
         this.§_-1Z§();
         this.§_-sb§(true);
         this.§_-cY§ = false;
         this.§_-kP§ = param2.§_-kP§;
         for each(_loc7_ in param2.§_-kP§)
         {
            _loc8_ = _loc7_.index1 + _loc5_;
            _loc9_ = _loc7_.index2 + _loc5_;
            _loc10_ = this.§_-z-§[_loc8_];
            _loc11_ = this.§_-z-§[_loc9_];
            if(!(_loc10_ && _loc11_))
            {
               throw new Error("Joint index out of bounds [" + _loc8_ + ", " + _loc9_ + "]");
            }
            _loc7_.§_-WU§ = this.§_-Ag§.§_-hA§.§_-fy§.§_-8T§(_loc7_.§_-tB§(_loc10_,_loc11_));
         }
      }
      
      public function get §_-tR§() : Sprite
      {
         return this.§_-uM§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§_-z-§.length > 0)
         {
            this.§_-Wm§(0);
         }
         this.§_-z-§ = null;
         if(this.§_-uM§)
         {
            this.§_-uM§.dispose();
            this.§_-uM§ = null;
            this.§_-uj§ = null;
         }
         while(this.§_-LJ§.length > 0)
         {
            _loc1_ = this.§_-LJ§.pop();
            this.§_-Ag§.§_-JG§.§_-tO§(_loc1_);
         }
      }
      
      private function §_-sb§(param1:Boolean) : void
      {
         this.§_-uj§.visible = param1;
      }
      
      private function §_-1Z§() : void
      {
         var _loc3_:§_-Dz§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§_-19§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§_-Dz§> = new Vector.<§_-Dz§>();
         for each(_loc3_ in this.§_-z-§)
         {
            if(_loc3_.isTexture())
            {
               _loc2_.push(_loc3_);
               _loc4_ = _loc3_.sprite.getBounds(this.§_-uM§);
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
            this.§_-22§(_loc10_.rect,_loc10_,_loc5_);
            _loc11_ = this.§_-Na§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
            _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc12_ = this.§_-Ag§.§_-JG§.§_-pz§(_loc10_);
            this.§_-LJ§.push(_loc12_);
            (_loc13_ = new §_-19§(_loc12_)).x = _loc8_ / _loc5_;
            _loc13_.y = _loc9_ / _loc5_;
            _loc13_.scaleX = 1 / _loc5_;
            _loc13_.scaleY = 1 / _loc5_;
            this.§_-uj§.addChild(_loc13_);
            _loc11_.dispose();
         }
      }
      
      private function §_-Na§(param1:Vector.<§_-Dz§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§_-Dz§ = null;
         var _loc11_:§_-Ju§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§_-JZ§.shape).§_-gi§();
            _loc13_ = new Rectangle(_loc12_[0].x / §_-tL§.§_-7m§ * param6,_loc12_[0].y / §_-tL§.§_-7m§ * param6,(_loc12_[1].x - _loc12_[0].x) / §_-tL§.§_-7m§ * param6,(_loc12_[1].y - _loc12_[0].y) / §_-tL§.§_-7m§ * param6);
            _loc10_.identity();
            _loc10_.scale(_loc13_.width,_loc13_.height);
            _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
            _loc10_.rotate((360 - _loc7_.§_-Js§()) / 180 * Math.PI);
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            _loc8_.draw(_loc9_,_loc10_);
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      private function §_-22§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.§_-Ag§.background.§_-zi§();
         var _loc5_:§_-Vr§;
         if(_loc5_ = this.§_-Ag§.§_-JG§.§_-ln§(_loc4_))
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
      
      public function §_-sX§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §_-Dz§
      {
         var _loc10_:§_-Dz§ = null;
         switch(param2)
         {
            case "BIRD_BLACK":
               _loc10_ = new §_-he§(this,param1,this.§_-Ag§.§_-hA§.§_-fy§,this.§_-Ag§,this.§_-9L§,param2,param3,param4,param5,param9);
               break;
            case "BIRD_BLUE":
               _loc10_ = new §_-Gv§(this,param1,this.§_-Ag§.§_-hA§.§_-fy§,this.§_-Ag§,this.§_-9L§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_GREEN":
               _loc10_ = new §_-PY§(this,param1,this.§_-Ag§.§_-hA§.§_-fy§,this.§_-Ag§,this.§_-9L§,param2,param3,param4,param5,param9);
               break;
            case "BIRD_WHITE":
               _loc10_ = new §_-Ri§(this,param1,this.§_-Ag§.§_-hA§.§_-fy§,this.§_-Ag§,this.§_-9L§,param2,param3,param4,param5,param9);
               break;
            case "BIRD_YELLOW":
               _loc10_ = new §_-kK§(this,param1,this.§_-Ag§.§_-hA§.§_-fy§,this.§_-Ag§,this.§_-9L§,param2,param3,param4,param5,param9);
               break;
            default:
               _loc10_ = new §_-zf§(this,param1,this.§_-Ag§.§_-hA§.§_-fy§,this.§_-Ag§,this.§_-9L§,param2,param3,param4,param5,param8,param9);
         }
         return _loc10_;
      }
      
      public function §switch§(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0) : §_-Dz§
      {
         var _loc10_:§_-Dz§ = null;
         var _loc11_:§_-Pq§ = null;
         var _loc9_:Sprite;
         (_loc9_ = new Sprite()).scaleX = param8;
         _loc9_.scaleY = param8;
         if(param1.indexOf("BIRD") == 0)
         {
            _loc10_ = this.§_-sX§(_loc9_,param1,param2,param3,param4,param5,param6,param7,param8);
         }
         else if(param1.indexOf("PIG") == 0)
         {
            _loc10_ = new §_-gb§(this,_loc9_,this.§_-Ag§.§_-hA§.§_-fy§,this.§_-Ag§,this.§_-9L§,param1,param2,param3,param4,param8);
         }
         else
         {
            if((_loc11_ = §_-yP§.§_-nU§(param1)) == null && param1.indexOf("MISC_") == 0)
            {
               param1 = "MISC_FOOD_" + param1.substring(5);
               _loc11_ = §_-yP§.§_-nU§(param1);
            }
            if(_loc11_.§_-1n§ == §_-Pq§.§_-pV§ || _loc11_.§_-1n§ == §_-Pq§.§_-dH§)
            {
               _loc10_ = new §_-yt§(this,_loc9_,this.§_-Ag§.§_-hA§.§_-fy§,this.§_-Ag§,this.§_-9L§,param1,param2,param3,param4,param8);
            }
            else
            {
               _loc10_ = new §_-Dz§(this,_loc9_,this.§_-Ag§.§_-hA§.§_-fy§,this.§_-Ag§,this.§_-9L§,param1,param2,param3,param4,param8);
            }
         }
         if(_loc10_.isTexture())
         {
            _loc9_.visible = !this.§_-aA§;
            this.§_-z-§[this.§_-z-§.length] = _loc10_;
         }
         else
         {
            this.§_-z-§[this.§_-z-§.length] = _loc10_;
         }
         if(_loc10_ is §_-zf§ && !_loc10_.§_-fw§())
         {
            this.§_-uM§.addChildAt(_loc9_,0);
         }
         else
         {
            this.§_-uM§.addChild(_loc9_);
         }
         if(param5)
         {
            this.§_-Ag§.§_-Ng§(_loc10_);
         }
         if(param6)
         {
            this.§_-Ag§.activeObject = _loc10_;
         }
         return _loc10_;
      }
      
      public function §_-FN§() : void
      {
         var _loc2_:§_-Dz§ = null;
         var _loc1_:int = this.§_-z-§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§_-z-§[_loc1_] as §_-Dz§;
            if(_loc2_)
            {
               if(_loc2_.§_-Qm§ <= 0)
               {
                  this.§_-Wm§(_loc1_,true,true,true);
               }
               else
               {
                  _loc2_.§_-Ac§();
                  _loc2_.§_-vU§();
               }
            }
            _loc1_--;
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         this.§_-6I§.push(§_-GP§.§_-ti§(param1,param2,param3));
         §_-Ou§.playSound("TntExplosions","ChannelExplosions");
      }
      
      public function §_-rH§(param1:Number, param2:Number) : int
      {
         var _loc4_:§_-Dz§ = null;
         var _loc3_:int = this.§_-z-§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§_-z-§[_loc3_])
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
      
      public function §_-4G§(param1:Number, param2:Number) : §_-Dz§
      {
         var _loc4_:§_-Dz§ = null;
         var _loc3_:int = this.§_-z-§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§_-z-§[_loc3_])
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
      
      public function getObject(param1:int) : §_-Dz§
      {
         return this.§_-z-§[param1];
      }
      
      public function §_-Qk§(param1:Number, param2:Number) : void
      {
         var _loc4_:§_-Dz§ = null;
         var _loc3_:int = this.§_-z-§.length - 1;
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§_-z-§[_loc3_] as §_-Dz§).§_-Qk§(param2,param1);
            _loc3_--;
         }
      }
      
      private function §_-lx§(param1:§_-Dz§, param2:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§_-Dz§ = null;
         if(!this.mSardineCanAdded)
         {
            return true;
         }
         if(this.mMightyEagleAdded)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         if(param1.§_-Qm§ == param1.§_-FF§)
         {
            if(this.§_-UF§ < §_-EQ§.§ for§)
            {
               this.§_-UF§ += param2 * §_-EQ§.§_-a-§;
            }
            param1.§_-zq§().§_-kz§(param2 * this.§_-UF§);
         }
         if(param1.§_-AA§() || this.§_-bI§(param1))
         {
            if(this.mMightyEagleTimer < §_-EQ§.§_-O1§)
            {
               _loc4_ = this.mMightyEagleTimer + param2;
               if(this.mMightyEagleTimer < §_-EQ§.§_-AV§ && _loc4_ > §_-EQ§.§_-AV§)
               {
                  §_-Ou§.playSound("Mighty_Eagle_Selected_1","ChannelBird");
                  §_-Ou§.playSound("Mighty_Eagle_Flying_1","ChannelBird");
               }
               if(_loc4_ >= §_-EQ§.§_-O1§)
               {
                  _loc5_ = param1.§_-zq§().GetPosition().x - §_-EQ§.§_-Au§;
                  _loc6_ = param1.§_-zq§().GetPosition().y - §_-EQ§.§_-Au§ * §_-EQ§.§_-FS§ * 1.07;
                  if(this.§_-bI§(param1))
                  {
                     _loc3_ = true;
                  }
                  _loc7_ = this.§switch§("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,§_-EQ§.§_-Or§ * 1.2);
                  this.mMightyEagleAdded = true;
                  _loc7_.§_-e7§.§_-s7§(1.82);
               }
               this.mMightyEagleTimer = _loc4_;
            }
         }
         return _loc3_;
      }
      
      private function §_-IA§(param1:§_-Dz§, param2:Number) : Boolean
      {
         var _loc5_:§_-Dz§ = null;
         if(!this.§_-5N§ && this.mMightyEagleTimer > §_-EQ§.§_-CA§)
         {
            this.§_-5N§ = true;
            this.§_-Ag§.§_-qS§();
         }
         this.mMightyEagleTimer += param2;
         this.§_-Ag§.particles.§_-JY§(§_-UW§.§_-Lw§,§_-Gb§.§_-oO§,§_-UW§.§_-s4§,param1.§_-zq§().GetPosition().x - 3 + Math.random() * (3 * 2),param1.§_-zq§().GetPosition().y - 3 + Math.random() * (3 * 2),2500,"",§_-UW§.§_-G9§(param1.§_-L1§),0,0,0,0,4);
         var _loc4_:int = 1;
         if(this.mMightyEagleHasTouchedGround)
         {
            param1.§_-jF§(§_-EQ§.§_-Df§ * param2);
            _loc4_ = -1;
            if(this.§_-lH§)
            {
               this.§_-lH§ = false;
               this.§_-Ag§.§_-9e§();
               param1.§_-h7§(§_-6n§.§_-te§);
               this.mSardineCanAdded = false;
               param1.§_-e7§.§_-I3§ = true;
               param1.§_-e7§.§_-nj§();
               for each(_loc5_ in this.§_-z-§)
               {
                  if(_loc5_ && _loc5_.§_-7H§())
                  {
                     _loc5_.§_-zq§().SetAwake(true);
                     _loc5_.§_-zq§().SetLinearVelocity(new b2Vec2(0,-18));
                  }
               }
               this.§_-Eb§();
            }
            if(this.mMightyEagleTimer > 6000 && this.isPigsAlive())
            {
               for each(_loc5_ in this.§_-z-§)
               {
                  if(_loc5_ && _loc5_.§_-7H§())
                  {
                     _loc5_.applyDamage(_loc5_.§_-FF§ * 2,true,true,true);
                  }
               }
            }
         }
         else
         {
            this.mMightyEagleHasTouchedGround = param1.§_-zq§().GetPosition().y >= -5.5;
            this.§_-lH§ = this.mMightyEagleHasTouchedGround;
         }
         param1.§_-ZN§(param2,new Point(1,_loc4_ * §_-EQ§.§_-FS§),§_-EQ§.§_-lP§);
         return false;
      }
      
      private function §_-Yx§() : void
      {
         var _loc1_:§_-GP§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§_-Dz§ = null;
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
         while(this.§_-6I§.length > 0)
         {
            _loc1_ = this.§_-6I§.shift();
            _loc2_ = _loc1_.§_-ij§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            for each(_loc6_ in this.§_-z-§)
            {
               _loc8_ = _loc6_.§_-zq§().GetPosition().x - _loc3_;
               _loc9_ = _loc6_.§_-zq§().GetPosition().y - _loc4_;
               if((_loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)) <= _loc1_.§_-ij§)
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
                     _loc6_.§_-zq§().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
                  }
               }
               if(_loc10_ <= _loc1_.§_-UQ§)
               {
                  _loc14_ = _loc5_;
                  if(_loc10_ > 1)
                  {
                     _loc14_ /= _loc10_;
                  }
                  _loc6_.applyDamage(_loc14_,false);
               }
            }
            this.§_-Ag§.particles.§_-JY§(this.§_-XF§(_loc1_.type),§_-Gb§.§_-oO§,§_-UW§.§_-dd§,_loc3_,_loc4_,600,"",§_-UW§.§_-Hs§,0,0,0,0,1,20,true);
            _loc7_ = 30;
            while(_loc7_ < 150)
            {
               _loc15_ = 0.75 * _loc2_ + Math.random() * _loc2_;
               _loc16_ = 1250 + Math.random() * 750;
               _loc17_ = _loc7_ / (180 / Math.PI);
               this.§_-Ag§.particles.§_-JY§(§_-UW§.§_-AL§,§_-Gb§.§_-oO§,§_-UW§.§_-s4§,_loc3_,_loc4_,_loc16_,"",§_-UW§.§_-Hs§,_loc15_ * Math.cos(_loc17_),-_loc15_ * Math.sin(_loc17_),20,0);
               _loc7_ += 5;
            }
         }
      }
      
      protected function §_-XF§(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §_-UW§.§_-vk§;
      }
      
      public function §_-ER§(param1:Number) : void
      {
         var _loc4_:§_-Dz§ = null;
         var _loc2_:§_-Dz§ = null;
         var _loc3_:int = this.§_-z-§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§_-z-§[_loc3_];
            if(_loc2_.§_-Rb§())
            {
               if(this.§_-lx§(_loc2_,param1))
               {
                  this.§_-Wm§(_loc3_,false,false,false);
               }
            }
            else if(_loc2_.§_-fw§())
            {
               this.§_-IA§(_loc2_,param1);
            }
            else if(this.§_-bI§(_loc2_))
            {
               _loc2_.§_-h7§(§_-6n§.§_-eb§);
               this.§_-Wm§(_loc3_,false,false,false);
            }
            else if(_loc2_.isReadyToBeRemoved(param1))
            {
               _loc2_.§_-h7§(§_-6n§.§_-eb§);
               this.§_-Wm§(_loc3_,false,true,true);
            }
            else if(_loc2_.§_-gt§())
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         this.§_-Yx§();
         if(this.§_-cY§)
         {
            (_loc4_ = this.§_-Ag§.activeObject).activateSpecialPower(this);
            this.§_-cY§ = false;
         }
      }
      
      private function §_-Eb§() : void
      {
         var _loc1_:§_-Hj§ = null;
         for each(_loc1_ in this.§_-kP§)
         {
            this.§_-Ag§.§_-hA§.§_-fy§.§_-mH§(_loc1_.§_-WU§);
         }
      }
      
      public function §_-xU§() : Boolean
      {
         var _loc2_:§_-Dz§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§_-z-§.length)
         {
            _loc2_ = this.§_-z-§[_loc1_];
            if(_loc2_.explode())
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §_-bI§(param1:§_-Dz§) : Boolean
      {
         if(param1 && param1.§_-JZ§.§_-gz§() != §_-gs§.§_-AZ§ && this.§_-Ag§.§_-N7§.§_-Kr§(param1.§_-zq§().GetPosition().x,param1.§_-zq§().GetPosition().y))
         {
            return true;
         }
         return false;
      }
      
      public function §_-Wm§(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:§_-Dz§;
         if((_loc5_ = this.§_-z-§[param1]) == this.§_-Ag§.activeObject)
         {
            this.§_-Ag§.activeObject = null;
         }
         if(param2)
         {
            this.§_-Ag§.addScore(_loc5_.§_-JZ§.score,§_-vI§.§_-T7§,true,_loc5_.§_-zq§().GetPosition().x,_loc5_.§_-zq§().GetPosition().y - 3,§_-UW§.§_-yw§(_loc5_.§_-L1§));
         }
         if(param3)
         {
            _loc5_.addDestructionParticles(this.§_-Ag§.particles);
         }
         if(param4)
         {
            this.§_-kr§(_loc5_);
         }
         if(!_loc5_.isTexture())
         {
         }
         this.§_-uM§.removeChild(_loc5_.sprite);
         _loc5_.dispose();
         _loc5_ = null;
         this.§_-z-§[param1] = null;
         this.§_-z-§.splice(param1,1);
      }
      
      protected function §_-kr§(param1:§_-Dz§) : void
      {
         if(param1.§_-zW§().toUpperCase() == "WHITE_EGG" || param1.§_-zW§().toUpperCase() == "TNT")
         {
            if(param1.§_-L1§.toUpperCase() == §_-Ri§.§_-do§)
            {
               this.addExplosions(§_-GP§.§_-Us§,param1.§_-zq§().GetPosition().x,param1.§_-zq§().GetPosition().y);
            }
            else
            {
               this.addExplosions(§_-GP§.§_-iT§,param1.§_-zq§().GetPosition().x,param1.§_-zq§().GetPosition().y);
            }
         }
      }
      
      public function §_-Nc§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.§_-Wm§(this.§_-z-§.indexOf(param1),param2,param3,param4);
      }
      
      public function §_-lt§(param1:Number, param2:Number) : void
      {
         this.§_-uM§.x = -param1;
         this.§_-uM§.y = -param2;
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc3_:§_-Dz§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-z-§.length)
         {
            _loc3_ = this.§_-z-§[_loc2_] as §_-Dz§;
            if(_loc3_ && _loc3_.§_-7H§() && _loc3_.§_-Qm§ > 0)
            {
               if(!param1 || _loc3_.§_-e7§.mTryToBlink <= 0 && _loc3_.§_-e7§.mTryToScream <= 0)
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §_-2G§(param1:Boolean = false) : int
      {
         var _loc4_:§_-Dz§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§_-z-§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§_-z-§[_loc3_] as §_-Dz§) && _loc4_.§_-7H§() && _loc4_.§_-Qm§ > 0)
            {
               if(!param1 || _loc4_.§_-e7§.mTryToBlink <= 0 && _loc4_.§_-e7§.mTryToScream <= 0)
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
         var _loc3_:§_-Dz§ = null;
         var _loc2_:int = this.§_-z-§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§_-z-§[_loc2_];
            if(_loc3_ && _loc3_.§_-7H§() && _loc3_.§_-Qm§ > 0)
            {
               _loc3_.§_-e7§.mTryToScream = §_-l9§.§_-ey§ * param1;
            }
            _loc2_--;
         }
      }
      
      public function §_-EN§() : Boolean
      {
         var _loc2_:§_-Dz§ = null;
         var _loc1_:int = this.§_-z-§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§_-z-§[_loc1_] as §_-Dz§;
            if(_loc2_ && _loc2_.§_-gt§() && _loc2_.§_-Qm§ > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:§_-Dz§ = null;
         var _loc1_:int = this.§_-z-§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§_-z-§[_loc1_] as §_-Dz§;
            if(_loc2_ && _loc2_.§_-Qm§ > 0 && _loc2_.§_-1n§ != §_-Pq§.§_-J-§)
            {
               if(_loc2_.§_-br§() && !_loc2_.§_-AA§())
               {
                  return false;
               }
               if(_loc2_.§_-gt§() && _loc2_.§_-Qm§ > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §_-Xy§(param1:Boolean = false) : §_-Dz§
      {
         var _loc5_:int = 0;
         var _loc6_:§_-Dz§ = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = this.§_-z-§.length;
         var _loc3_:int = 1 + Math.random() * this.§_-2G§(param1);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               if((_loc6_ = this.§_-z-§[_loc5_]) && _loc6_.§_-7H§() && _loc6_.§_-Qm§ > 0)
               {
                  if(!param1 || _loc6_.§_-e7§.mTryToBlink <= 0 && _loc6_.§_-e7§.mTryToScream <= 0)
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
         var _loc2_:int = this.§_-z-§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ += (this.§_-z-§[_loc2_] as §_-Dz§).§_-JZ§.score;
            if((this.§_-z-§[_loc2_] as §_-Dz§).§_-br§())
            {
               _loc1_ += §_-tL§.§_-Pt§.getValue() * int((this.§_-z-§[_loc2_] as §_-Dz§).§_-FF§);
            }
            _loc2_--;
         }
         return int(_loc1_ + this.§_-Ag§.slingshot.§_-59§());
      }
      
      public function §_-aI§(param1:§_-Dz§, param2:§_-Dz§) : Boolean
      {
         if(param1.§_-gt§() && param2.§_-gt§())
         {
            return true;
         }
         if(!param1.§_-bU§() && !param2.§_-bU§())
         {
            return true;
         }
         return false;
      }
      
      public function §_-5Q§(param1:b2Fixture, param2:b2Fixture) : void
      {
         var _loc5_:§_-Dz§ = null;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc3_:§_-Dz§ = param1.GetBody().GetUserData() as §_-Dz§;
         var _loc4_:§_-Dz§ = param2.GetBody().GetUserData() as §_-Dz§;
         for each(_loc5_ in [_loc3_,_loc4_])
         {
            if(_loc5_.§_-v2§)
            {
               return;
            }
         }
         if(this.mMightyEagleAdded)
         {
            if(_loc3_.§_-fw§() || this.mMightyEagleAdded && _loc4_.§_-7H§())
            {
               _loc4_.applyDamage(_loc4_.§_-FF§ * 2,true,true,true);
               return;
            }
            if(_loc4_.§_-fw§() || this.mMightyEagleAdded && _loc3_.§_-7H§())
            {
               _loc3_.applyDamage(_loc3_.§_-FF§ * 2,true,true,true);
               return;
            }
         }
         else if(this.mSardineCanAdded && this.mMightyEagleTimer == §_-EQ§.§_-O1§)
         {
            if(_loc3_.§_-Rb§() || _loc4_.§_-Rb§())
            {
               this.mMightyEagleTimer = 0;
            }
         }
         if(this.§_-aI§(_loc3_,_loc4_))
         {
            return;
         }
         var _loc7_:Number = _loc3_.§_-pj§(_loc4_.§_-zW§());
         var _loc8_:Number = _loc3_.§_-tm§(_loc4_.§_-zW§());
         var _loc9_:Number = _loc4_.§_-pj§(_loc3_.§_-zW§());
         var _loc10_:Number = _loc4_.§_-tm§(_loc3_.§_-zW§());
         var _loc11_:Number = _loc3_.§_-zq§().GetMass() * _loc3_.§_-zq§().GetLinearVelocity().x - _loc4_.§_-zq§().GetMass() * _loc4_.§_-zq§().GetLinearVelocity().x;
         var _loc12_:Number = _loc3_.§_-zq§().GetMass() * _loc3_.§_-zq§().GetLinearVelocity().y - _loc4_.§_-zq§().GetMass() * _loc4_.§_-zq§().GetLinearVelocity().y;
         var _loc13_:Number = Math.sqrt(_loc11_ * _loc11_ + _loc12_ * _loc12_) / 10;
         var _loc14_:Number = _loc7_ * _loc13_;
         var _loc15_:Number = _loc9_ * _loc13_;
         var _loc16_:Number = Math.max(0,_loc3_.§_-Qm§);
         var _loc17_:Number = Math.max(0,_loc4_.§_-Qm§);
         var _loc18_:Number = _loc3_.applyDamage(_loc15_,true,_loc4_.§_-gt§(),_loc17_ == _loc4_.§_-FF§);
         var _loc19_:Number = _loc4_.applyDamage(_loc14_,true,_loc3_.§_-gt§(),_loc16_ == _loc3_.§_-FF§);
         if(_loc18_ <= 0)
         {
            if((_loc21_ = (_loc21_ = (_loc15_ - _loc16_) / _loc15_) * _loc10_) > 1)
            {
               _loc21_ = 1;
            }
            _loc4_.§_-Io§(new b2Vec2(_loc4_.§_-zq§().GetLinearVelocity().x * _loc21_,_loc4_.§_-zq§().GetLinearVelocity().y * _loc21_));
         }
         if(_loc19_ <= 0)
         {
            if((_loc22_ = (_loc22_ = (_loc14_ - _loc17_) / _loc14_) * _loc8_) > 1)
            {
               _loc22_ = 1;
            }
            _loc3_.§_-Io§(new b2Vec2(_loc3_.§_-zq§().GetLinearVelocity().x * _loc22_,_loc3_.§_-zq§().GetLinearVelocity().y * _loc22_));
         }
      }
      
      public function §_-hd§() : void
      {
         var _loc2_:§_-Dz§ = null;
         var _loc1_:int = this.§_-z-§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§_-z-§[_loc1_] as §_-Dz§;
            if(_loc2_ != null && _loc2_.§_-7H§())
            {
               this.§_-Wm§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §_-vK§() : void
      {
         var _loc2_:§_-Dz§ = null;
         var _loc1_:int = this.§_-z-§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§_-z-§[_loc1_] as §_-Dz§;
            if(_loc2_ != null && _loc2_.§_-rY§())
            {
               this.§_-Wm§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §_-y6§() : int
      {
         return this.§_-z-§.length;
      }
      
      public function §_-NG§(param1:§_-Wv§) : void
      {
         var _loc4_:§_-Dz§ = null;
         var _loc5_:§_-1E§ = null;
         var _loc6_:§_-Hj§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§_-z-§.length)
         {
            if((_loc4_ = this.§_-z-§[_loc2_]).§_-Yz§)
            {
               if(!_loc4_.isGround())
               {
                  (_loc5_ = new §_-1E§()).angle = _loc4_.§_-Js§();
                  _loc5_.id = _loc4_.§_-L1§;
                  _loc5_.x = _loc4_.§_-zq§().GetPosition().x;
                  _loc5_.y = _loc4_.§_-zq§().GetPosition().y;
                  param1.§_-yZ§.push(_loc5_);
               }
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§_-kP§.length)
         {
            (_loc6_ = new §_-Hj§(this.§_-kP§[_loc3_].type,this.§_-kP§[_loc3_].index1,this.§_-kP§[_loc3_].index2)).backAndForth = this.§_-kP§[_loc3_].backAndForth;
            _loc6_.collideConnected = this.§_-kP§[_loc3_].collideConnected;
            _loc6_.limit = this.§_-kP§[_loc3_].limit;
            _loc6_.lowerLimit = this.§_-kP§[_loc3_].lowerLimit;
            _loc6_.maxTorque = this.§_-kP§[_loc3_].maxTorque;
            _loc6_.motor = this.§_-kP§[_loc3_].motor;
            _loc6_.motorSpeed = this.§_-kP§[_loc3_].motorSpeed;
            _loc6_.upperLimit = this.§_-kP§[_loc3_].upperLimit;
            _loc6_.p1 = this.§_-kP§[_loc3_].p1;
            _loc6_.p2 = this.§_-kP§[_loc3_].p2;
            param1.§_-kP§.push(_loc6_);
            _loc3_++;
         }
      }
      
      public function §_-I-§() : void
      {
         var _loc1_:int = 0;
         while(this.§_-z-§.length > _loc1_)
         {
            if(this.§_-z-§[_loc1_].isGround())
            {
               _loc1_++;
            }
            else
            {
               this.§_-Nc§(this.§_-z-§[_loc1_]);
            }
         }
      }
      
      public function §_-Ys§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§_-z-§.length)
         {
            if(this.§_-z-§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§_-z-§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         this.§_-aA§ = param1;
         this.§_-sb§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§_-z-§.length)
         {
            if(this.§_-z-§[_loc2_].isTexture())
            {
               this.§_-z-§[_loc2_].sprite.visible = !this.§_-aA§;
            }
            _loc2_++;
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         this.§_-Ty§ = param1;
      }
      
      public function §_-Jj§() : Boolean
      {
         return this.§_-Ty§;
      }
   }
}
