package §_-mj§
{
   import §_-0y§.§_-N4§;
   import §_-0y§.§_-je§;
   import §_-4n§.b2Vec2;
   import §_-5Y§.§_-Fy§;
   import §_-5Y§.§_-Lm§;
   import §_-5Y§.§_-oI§;
   import §_-5Y§.§_-yw§;
   import §_-6n§.§_-5z§;
   import §_-BQ§.§_-dO§;
   import §_-BQ§.§_-hm§;
   import §_-CW§.§_-C-§;
   import §_-CW§.§_-hK§;
   import §_-DQ§.Texture;
   import §_-PC§.§_-qH§;
   import §_-WH§.§_-0§;
   import §_-WH§.§_-YE§;
   import §_-WH§.§_-Yj§;
   import §_-WH§.§_-ce§;
   import §_-WH§.§_-r5§;
   import §_-b5§.Sprite;
   import §_-b5§.§_-Xj§;
   import §_-uh§.§_-US§;
   import §const§.b2Fixture;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §_-Fv§
   {
       
      
      private var §_-HC§:Vector.<§_-GI§>;
      
      protected var §_-mL§:int;
      
      public var §_-Fx§:§_-yw§;
      
      public var §_-Sq§:Boolean;
      
      public var §_-ua§:Vector.<§_-ql§>;
      
      private var §_-kl§:Sprite;
      
      private var §_-WZ§:Sprite;
      
      private var §_-98§:Vector.<Texture>;
      
      private var §_-cv§:Vector.<§_-hm§>;
      
      private var §_-KB§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §_-WO§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      private var §_-4F§:Boolean = false;
      
      private var dynamic:Number = 0.07;
      
      private var §_-ht§:Boolean = true;
      
      private var §_-P2§:Boolean = true;
      
      public function §_-Fv§(param1:§_-yw§, param2:§_-US§, param3:Sprite)
      {
         var _loc6_:§_-dO§ = null;
         var _loc7_:§_-hm§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§_-GI§ = null;
         var _loc11_:§_-GI§ = null;
         this.§_-HC§ = new Vector.<§_-GI§>();
         this.§_-ua§ = new Vector.<§_-ql§>();
         this.§_-98§ = new Vector.<Texture>();
         super();
         this.§_-Fx§ = param1;
         this.§_-mL§ = 0;
         this.§_-WZ§ = param3;
         this.§_-WZ§.§_-3V§ = false;
         this.§_-P2§ = true;
         this.§_-ht§ = true;
         this.§_-kl§ = new Sprite();
         this.§_-WZ§.addChild(this.§_-kl§);
         var _loc4_:§_-je§;
         if((_loc4_ = §_-N4§.§_-R§(param2.§_-TB§)) == null)
         {
            param2.§_-TB§ = "BACKGROUND_BLUE_GRASS";
            _loc4_ = §_-N4§.§_-R§(param2.§_-TB§);
         }
         this.§_-NT§(§_-N4§.§_-R§(param2.§_-TB§).§_-Cg§,(this.§_-Fx§.§_-9W§.§_-OL§ + this.§_-Fx§.§_-9W§.§_-QL§) / 2,this.§_-Fx§.§_-9W§.§_-8B§ + §_-oI§.§_-Ks§);
         var _loc5_:int = this.§_-HC§.length;
         for each(_loc6_ in param2.§_-pf§)
         {
            this.§_-NT§(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle);
         }
         this.§_-A§();
         this.§_-sH§(true);
         this.§_-Sq§ = false;
         this.§_-cv§ = param2.§_-cv§;
         for each(_loc7_ in param2.§_-cv§)
         {
            _loc8_ = _loc7_.index1 + _loc5_;
            _loc9_ = _loc7_.index2 + _loc5_;
            _loc10_ = this.§_-HC§[_loc8_];
            _loc11_ = this.§_-HC§[_loc9_];
            if(!(_loc10_ && _loc11_))
            {
               throw new Error("Joint index out of bounds [" + _loc8_ + ", " + _loc9_ + "]");
            }
            _loc7_.§_-F9§ = this.§_-Fx§.§_-SU§.§_-YD§.§_-Hd§(_loc7_.§_-0p§(_loc10_,_loc11_));
         }
      }
      
      public function get §_-oL§() : Sprite
      {
         return this.§_-WZ§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§_-HC§.length > 0)
         {
            this.§_-Do§(0);
         }
         this.§_-HC§ = null;
         if(this.§_-WZ§)
         {
            this.§_-WZ§.dispose();
            this.§_-WZ§ = null;
            this.§_-kl§ = null;
         }
         while(this.§_-98§.length > 0)
         {
            _loc1_ = this.§_-98§.pop();
            this.§_-Fx§.§_-Ly§.§try§(_loc1_);
         }
      }
      
      private function §_-sH§(param1:Boolean) : void
      {
         this.§_-kl§.visible = param1;
      }
      
      private function §_-A§() : void
      {
         var _loc3_:§_-GI§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§_-Xj§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§_-GI§> = new Vector.<§_-GI§>();
         for each(_loc3_ in this.§_-HC§)
         {
            if(_loc3_.isTexture())
            {
               _loc2_.push(_loc3_);
               _loc4_ = _loc3_.sprite.getBounds(this.§_-WZ§);
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
            this.§_-Pa§(_loc10_.rect,_loc10_,_loc5_);
            _loc11_ = this.§_-BN§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
            _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc12_ = this.§_-Fx§.§_-Ly§.§_-a§(_loc10_);
            this.§_-98§.push(_loc12_);
            (_loc13_ = new §_-Xj§(_loc12_)).x = _loc8_ / _loc5_;
            _loc13_.y = _loc9_ / _loc5_;
            _loc13_.scaleX = 1 / _loc5_;
            _loc13_.scaleY = 1 / _loc5_;
            this.§_-kl§.addChild(_loc13_);
            _loc11_.dispose();
         }
      }
      
      private function §_-BN§(param1:Vector.<§_-GI§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§_-GI§ = null;
         var _loc11_:§_-ce§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§_-Xn§.shape).§_-Uk§();
            _loc13_ = new Rectangle(_loc12_[0].x / §_-yw§.§_-rO§ * param6,_loc12_[0].y / §_-yw§.§_-rO§ * param6,(_loc12_[1].x - _loc12_[0].x) / §_-yw§.§_-rO§ * param6,(_loc12_[1].y - _loc12_[0].y) / §_-yw§.§_-rO§ * param6);
            _loc10_.identity();
            _loc10_.scale(_loc13_.width,_loc13_.height);
            _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
            _loc10_.rotate((360 - _loc7_.§_-vx§()) / 180 * Math.PI);
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            _loc8_.draw(_loc9_,_loc10_);
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      private function §_-Pa§(param1:Rectangle, param2:BitmapData, param3:Number) : void
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
         var _loc4_:String = this.§_-Fx§.background.§_-P4§();
         var _loc5_:§_-qH§;
         if(_loc5_ = this.§_-Fx§.§_-Ly§.§_-vh§(_loc4_))
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
      
      public function §_-l6§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §_-GI§
      {
         var _loc10_:§_-GI§ = null;
         switch(param2)
         {
            case "BIRD_BLACK":
               _loc10_ = new §_-ab§(this,param1,this.§_-Fx§.§_-SU§.§_-YD§,this.§_-Fx§,this.§_-mL§,param2,param3,param4,param5,param9);
               break;
            case "BIRD_BLUE":
               _loc10_ = new §_-qo§(this,param1,this.§_-Fx§.§_-SU§.§_-YD§,this.§_-Fx§,this.§_-mL§,param2,param3,param4,param5,param8,param9);
               break;
            case "BIRD_GREEN":
               _loc10_ = new §_-mr§(this,param1,this.§_-Fx§.§_-SU§.§_-YD§,this.§_-Fx§,this.§_-mL§,param2,param3,param4,param5,param9);
               break;
            case "BIRD_WHITE":
               _loc10_ = new §_-7a§(this,param1,this.§_-Fx§.§_-SU§.§_-YD§,this.§_-Fx§,this.§_-mL§,param2,param3,param4,param5,param9);
               break;
            case "BIRD_YELLOW":
               _loc10_ = new §_-eT§(this,param1,this.§_-Fx§.§_-SU§.§_-YD§,this.§_-Fx§,this.§_-mL§,param2,param3,param4,param5,param9);
               break;
            default:
               _loc10_ = new §_-8x§(this,param1,this.§_-Fx§.§_-SU§.§_-YD§,this.§_-Fx§,this.§_-mL§,param2,param3,param4,param5,param8,param9);
         }
         return _loc10_;
      }
      
      public function §_-NT§(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0) : §_-GI§
      {
         var _loc10_:§_-GI§ = null;
         var _loc11_:§_-r5§ = null;
         var _loc9_:Sprite;
         (_loc9_ = new Sprite()).scaleX = param8;
         _loc9_.scaleY = param8;
         if(param1.indexOf("BIRD") == 0)
         {
            _loc10_ = this.§_-l6§(_loc9_,param1,param2,param3,param4,param5,param6,param7,param8);
         }
         else if(param1.indexOf("PIG") == 0)
         {
            _loc10_ = new §_-3C§(this,_loc9_,this.§_-Fx§.§_-SU§.§_-YD§,this.§_-Fx§,this.§_-mL§,param1,param2,param3,param4,param8);
         }
         else
         {
            if((_loc11_ = §_-0§.§_-vN§(param1)) == null && param1.indexOf("MISC_") == 0)
            {
               param1 = "MISC_FOOD_" + param1.substring(5);
               _loc11_ = §_-0§.§_-vN§(param1);
            }
            if(_loc11_.§_-FB§ == §_-r5§.§_-7W§ || _loc11_.§_-FB§ == §_-r5§.§_-jY§)
            {
               _loc10_ = new §_-p9§(this,_loc9_,this.§_-Fx§.§_-SU§.§_-YD§,this.§_-Fx§,this.§_-mL§,param1,param2,param3,param4,param8);
            }
            else
            {
               _loc10_ = new §_-GI§(this,_loc9_,this.§_-Fx§.§_-SU§.§_-YD§,this.§_-Fx§,this.§_-mL§,param1,param2,param3,param4,param8);
            }
         }
         if(_loc10_.isTexture())
         {
            _loc9_.visible = !this.§_-ht§;
            this.§_-HC§[this.§_-HC§.length] = _loc10_;
         }
         else
         {
            this.§_-HC§[this.§_-HC§.length] = _loc10_;
         }
         if(_loc10_ is §_-8x§ && !_loc10_.§_-Aj§())
         {
            this.§_-WZ§.addChildAt(_loc9_,0);
         }
         else
         {
            this.§_-WZ§.addChild(_loc9_);
         }
         if(param5)
         {
            this.§_-Fx§.§_-iA§(_loc10_);
         }
         if(param6)
         {
            this.§_-Fx§.activeObject = _loc10_;
         }
         return _loc10_;
      }
      
      public function §_-t2§() : void
      {
         var _loc2_:§_-GI§ = null;
         var _loc1_:int = this.§_-HC§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§_-HC§[_loc1_] as §_-GI§;
            if(_loc2_)
            {
               if(_loc2_.§_-QY§ <= 0)
               {
                  this.§_-Do§(_loc1_,true,true,true);
               }
               else
               {
                  _loc2_.§_-IR§();
                  _loc2_.§_-vt§();
               }
            }
            _loc1_--;
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         this.§_-ua§.push(§_-ql§.§_-cd§(param1,param2,param3));
         §_-5z§.§_-rp§("TntExplosions","ChannelExplosions");
      }
      
      public function §_-Ei§(param1:Number, param2:Number) : int
      {
         var _loc4_:§_-GI§ = null;
         var _loc3_:int = this.§_-HC§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§_-HC§[_loc3_])
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
      
      public function §_-ew§(param1:Number, param2:Number) : §_-GI§
      {
         var _loc4_:§_-GI§ = null;
         var _loc3_:int = this.§_-HC§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§_-HC§[_loc3_])
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
      
      public function getObject(param1:int) : §_-GI§
      {
         return this.§_-HC§[param1];
      }
      
      public function §_-ZD§(param1:Number, param2:Number) : void
      {
         var _loc4_:§_-GI§ = null;
         var _loc3_:int = this.§_-HC§.length - 1;
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§_-HC§[_loc3_] as §_-GI§).§_-ZD§(param2,param1);
            _loc3_--;
         }
      }
      
      private function §_-Wu§(param1:§_-GI§, param2:Number) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§_-GI§ = null;
         if(!this.mSardineCanAdded)
         {
            return true;
         }
         if(this.mMightyEagleAdded)
         {
            return false;
         }
         var _loc3_:Boolean = false;
         if(param1.§_-QY§ == param1.§_-t6§)
         {
            if(this.dynamic < §_-Lm§.§extends§)
            {
               this.dynamic += param2 * §_-Lm§.§_-jX§;
            }
            param1.§_-oR§().§_-rJ§(param2 * this.dynamic);
         }
         if(param1.§_-bf§() || this.§_-x2§(param1))
         {
            if(this.mMightyEagleTimer < §_-Lm§.§_-J3§)
            {
               _loc4_ = this.mMightyEagleTimer + param2;
               if(this.mMightyEagleTimer < §_-Lm§.§_-cg§ && _loc4_ > §_-Lm§.§_-cg§)
               {
                  §_-5z§.§_-rp§("Mighty_Eagle_Selected_1","ChannelBird");
                  §_-5z§.§_-rp§("Mighty_Eagle_Flying_1","ChannelBird");
               }
               if(_loc4_ >= §_-Lm§.§_-J3§)
               {
                  _loc5_ = param1.§_-oR§().GetPosition().x - §_-Lm§.§_-5q§;
                  _loc6_ = param1.§_-oR§().GetPosition().y - §_-Lm§.§_-5q§ * §_-Lm§.§_-MW§ * 1.07;
                  if(this.§_-x2§(param1))
                  {
                     _loc3_ = true;
                  }
                  _loc7_ = this.§_-NT§("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,§_-Lm§.§_-hk§ * 1.2);
                  this.mMightyEagleAdded = true;
                  _loc7_.§_-M4§.§for§(1.82);
               }
               this.mMightyEagleTimer = _loc4_;
            }
         }
         return _loc3_;
      }
      
      private function §_-6-§(param1:§_-GI§, param2:Number) : Boolean
      {
         var _loc5_:§_-GI§ = null;
         if(!this.§_-4F§ && this.mMightyEagleTimer > §_-Lm§.§_-ky§)
         {
            this.§_-4F§ = true;
            this.§_-Fx§.§_-ar§();
         }
         this.mMightyEagleTimer += param2;
         this.§_-Fx§.particles.§_-pB§(§_-C-§.§_-i1§,§_-hK§.§_-I1§,§_-C-§.§_-g7§,param1.§_-oR§().GetPosition().x - 3 + Math.random() * (3 * 2),param1.§_-oR§().GetPosition().y - 3 + Math.random() * (3 * 2),2500,"",§_-C-§.§_-5X§(param1.§_-FK§),0,0,0,0,4);
         var _loc4_:int = 1;
         if(this.mMightyEagleHasTouchedGround)
         {
            param1.§_-Xm§(§_-Lm§.§_-bJ§ * param2);
            _loc4_ = -1;
            if(this.§_-WO§)
            {
               this.§_-WO§ = false;
               this.§_-Fx§.§_-XF§();
               param1.§_-kY§(§_-YE§.§_-TL§);
               this.mSardineCanAdded = false;
               param1.§_-M4§.§_-Qc§ = true;
               param1.§_-M4§.§_-XU§();
               for each(_loc5_ in this.§_-HC§)
               {
                  if(_loc5_ && _loc5_.§_-xW§())
                  {
                     _loc5_.§_-oR§().SetAwake(true);
                     _loc5_.§_-oR§().SetLinearVelocity(new b2Vec2(0,-18));
                  }
               }
               this.§_-m0§();
            }
            if(this.mMightyEagleTimer > 6000 && this.isPigsAlive())
            {
               for each(_loc5_ in this.§_-HC§)
               {
                  if(_loc5_ && _loc5_.§_-xW§())
                  {
                     _loc5_.applyDamage(_loc5_.§_-t6§ * 2,true,true,true);
                  }
               }
            }
         }
         else
         {
            this.mMightyEagleHasTouchedGround = param1.§_-oR§().GetPosition().y >= -5.5;
            this.§_-WO§ = this.mMightyEagleHasTouchedGround;
         }
         param1.§_-xe§(param2,new Point(1,_loc4_ * §_-Lm§.§_-MW§),§_-Lm§.§_-p8§);
         return false;
      }
      
      private function §_-du§() : void
      {
         var _loc1_:§_-ql§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§_-GI§ = null;
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
         while(this.§_-ua§.length > 0)
         {
            _loc1_ = this.§_-ua§.shift();
            _loc2_ = _loc1_.§_-Sj§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            for each(_loc6_ in this.§_-HC§)
            {
               _loc8_ = _loc6_.§_-oR§().GetPosition().x - _loc3_;
               _loc9_ = _loc6_.§_-oR§().GetPosition().y - _loc4_;
               if((_loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)) <= _loc1_.§_-Sj§)
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
                     _loc6_.§_-oR§().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
                  }
               }
               if(_loc10_ <= _loc1_.§_-dq§)
               {
                  _loc14_ = _loc5_;
                  if(_loc10_ > 1)
                  {
                     _loc14_ /= _loc10_;
                  }
                  _loc6_.applyDamage(_loc14_,false);
               }
            }
            this.§_-Fx§.particles.§_-pB§(this.§_-QN§(_loc1_.type),§_-hK§.§_-I1§,§_-C-§.§_-mP§,_loc3_,_loc4_,600,"",§_-C-§.§_-0l§,0,0,0,0,1,20,true);
            _loc7_ = 30;
            while(_loc7_ < 150)
            {
               _loc15_ = 0.75 * _loc2_ + Math.random() * _loc2_;
               _loc16_ = 1250 + Math.random() * 750;
               _loc17_ = _loc7_ / (180 / Math.PI);
               this.§_-Fx§.particles.§_-pB§(§_-C-§.§_-t§,§_-hK§.§_-I1§,§_-C-§.§_-g7§,_loc3_,_loc4_,_loc16_,"",§_-C-§.§_-0l§,_loc15_ * Math.cos(_loc17_),-_loc15_ * Math.sin(_loc17_),20,0);
               _loc7_ += 5;
            }
         }
      }
      
      protected function §_-QN§(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §_-C-§.§_-dY§;
      }
      
      public function §_-vz§(param1:Number) : void
      {
         var _loc4_:§_-GI§ = null;
         var _loc2_:§_-GI§ = null;
         var _loc3_:int = this.§_-HC§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§_-HC§[_loc3_];
            if(_loc2_.§_-YY§())
            {
               if(this.§_-Wu§(_loc2_,param1))
               {
                  this.§_-Do§(_loc3_,false,false,false);
               }
            }
            else if(_loc2_.§_-Aj§())
            {
               this.§_-6-§(_loc2_,param1);
            }
            else if(this.§_-x2§(_loc2_))
            {
               _loc2_.§_-kY§(§_-YE§.§_-XO§);
               this.§_-Do§(_loc3_,false,false,false);
            }
            else if(_loc2_.isReadyToBeRemoved(param1))
            {
               _loc2_.§_-kY§(§_-YE§.§_-XO§);
               this.§_-Do§(_loc3_,false,true,true);
            }
            else if(_loc2_.§_-gt§())
            {
               _loc2_.update(param1);
            }
            _loc3_--;
         }
         this.§_-du§();
         if(this.§_-Sq§)
         {
            (_loc4_ = this.§_-Fx§.activeObject).activateSpecialPower(this);
            this.§_-Sq§ = false;
         }
      }
      
      private function §_-m0§() : void
      {
         var _loc1_:§_-hm§ = null;
         for each(_loc1_ in this.§_-cv§)
         {
            this.§_-Fx§.§_-SU§.§_-YD§.§_-mm§(_loc1_.§_-F9§);
         }
      }
      
      public function §_-lh§() : Boolean
      {
         var _loc2_:§_-GI§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§_-HC§.length)
         {
            _loc2_ = this.§_-HC§[_loc1_];
            if(_loc2_.explode())
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §_-x2§(param1:§_-GI§) : Boolean
      {
         if(param1 && param1.§_-Xn§.§_-Rq§() != §_-Yj§.§_-ta§ && this.§_-Fx§.§_-9W§.§_-Uc§(param1.§_-oR§().GetPosition().x,param1.§_-oR§().GetPosition().y))
         {
            return true;
         }
         return false;
      }
      
      public function §_-Do§(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:§_-GI§;
         if((_loc5_ = this.§_-HC§[param1]) == this.§_-Fx§.activeObject)
         {
            this.§_-Fx§.activeObject = null;
         }
         if(param2)
         {
            this.§_-Fx§.addScore(_loc5_.§_-Xn§.score,§_-Fy§.§_-5A§,true,_loc5_.§_-oR§().GetPosition().x,_loc5_.§_-oR§().GetPosition().y - 3,§_-C-§.§_-PG§(_loc5_.§_-FK§));
         }
         if(param3)
         {
            _loc5_.addDestructionParticles(this.§_-Fx§.particles);
         }
         if(param4)
         {
            this.§_-nc§(_loc5_);
         }
         if(!_loc5_.isTexture())
         {
         }
         this.§_-WZ§.removeChild(_loc5_.sprite);
         _loc5_.dispose();
         _loc5_ = null;
         this.§_-HC§[param1] = null;
         this.§_-HC§.splice(param1,1);
      }
      
      protected function §_-nc§(param1:§_-GI§) : void
      {
         if(param1.§_-xb§().toUpperCase() == "WHITE_EGG" || param1.§_-xb§().toUpperCase() == "TNT")
         {
            if(param1.§_-FK§.toUpperCase() == §_-7a§.§_-48§)
            {
               this.addExplosions(§_-ql§.§_-zH§,param1.§_-oR§().GetPosition().x,param1.§_-oR§().GetPosition().y);
            }
            else
            {
               this.addExplosions(§_-ql§.§_-4c§,param1.§_-oR§().GetPosition().x,param1.§_-oR§().GetPosition().y);
            }
         }
      }
      
      public function §_-Er§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         this.§_-Do§(this.§_-HC§.indexOf(param1),param2,param3,param4);
      }
      
      public function §_-rm§(param1:Number, param2:Number) : void
      {
         this.§_-WZ§.x = -param1;
         this.§_-WZ§.y = -param2;
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc3_:§_-GI§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-HC§.length)
         {
            _loc3_ = this.§_-HC§[_loc2_] as §_-GI§;
            if(_loc3_ && _loc3_.§_-xW§() && _loc3_.§_-QY§ > 0)
            {
               if(!param1 || _loc3_.§_-M4§.mTryToBlink <= 0 && _loc3_.§_-M4§.mTryToScream <= 0)
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §_-sS§(param1:Boolean = false) : int
      {
         var _loc4_:§_-GI§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§_-HC§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§_-HC§[_loc3_] as §_-GI§) && _loc4_.§_-xW§() && _loc4_.§_-QY§ > 0)
            {
               if(!param1 || _loc4_.§_-M4§.mTryToBlink <= 0 && _loc4_.§_-M4§.mTryToScream <= 0)
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
         var _loc3_:§_-GI§ = null;
         var _loc2_:int = this.§_-HC§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§_-HC§[_loc2_];
            if(_loc3_ && _loc3_.§_-xW§() && _loc3_.§_-QY§ > 0)
            {
               _loc3_.§_-M4§.mTryToScream = §_-KA§.§_-6K§ * param1;
            }
            _loc2_--;
         }
      }
      
      public function §_-9Y§() : Boolean
      {
         var _loc2_:§_-GI§ = null;
         var _loc1_:int = this.§_-HC§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§_-HC§[_loc1_] as §_-GI§;
            if(_loc2_ && _loc2_.§_-gt§() && _loc2_.§_-QY§ > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:§_-GI§ = null;
         var _loc1_:int = this.§_-HC§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§_-HC§[_loc1_] as §_-GI§;
            if(_loc2_ && _loc2_.§_-QY§ > 0 && _loc2_.§_-FB§ != §_-r5§.§_-T4§)
            {
               if(_loc2_.§_-Uq§() && !_loc2_.§_-bf§())
               {
                  return false;
               }
               if(_loc2_.§_-gt§() && _loc2_.§_-QY§ > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §_-lG§(param1:Boolean = false) : §_-GI§
      {
         var _loc5_:int = 0;
         var _loc6_:§_-GI§ = null;
         if(!this.isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = this.§_-HC§.length;
         var _loc3_:int = 1 + Math.random() * this.§_-sS§(param1);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               if((_loc6_ = this.§_-HC§[_loc5_]) && _loc6_.§_-xW§() && _loc6_.§_-QY§ > 0)
               {
                  if(!param1 || _loc6_.§_-M4§.mTryToBlink <= 0 && _loc6_.§_-M4§.mTryToScream <= 0)
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
      
      public function §_-n2§() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.§_-HC§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ += (this.§_-HC§[_loc2_] as §_-GI§).§_-Xn§.score;
            if((this.§_-HC§[_loc2_] as §_-GI§).§_-Uq§())
            {
               _loc1_ += §_-yw§.§_-FH§.getValue() * int((this.§_-HC§[_loc2_] as §_-GI§).§_-t6§);
            }
            _loc2_--;
         }
         return int(_loc1_ + this.§_-Fx§.slingshot.§_-n2§());
      }
      
      public function §_-Bj§(param1:§_-GI§, param2:§_-GI§) : Boolean
      {
         if(param1.§_-gt§() && param2.§_-gt§())
         {
            return true;
         }
         if(!param1.§_-IB§() && !param2.§_-IB§())
         {
            return true;
         }
         return false;
      }
      
      public function §_-fB§(param1:b2Fixture, param2:b2Fixture) : void
      {
         var _loc5_:§_-GI§ = null;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc3_:§_-GI§ = param1.GetBody().GetUserData() as §_-GI§;
         var _loc4_:§_-GI§ = param2.GetBody().GetUserData() as §_-GI§;
         for each(_loc5_ in [_loc3_,_loc4_])
         {
            if(_loc5_.§_-C2§)
            {
               return;
            }
         }
         if(this.mMightyEagleAdded)
         {
            if(_loc3_.§_-Aj§() || this.mMightyEagleAdded && _loc4_.§_-xW§())
            {
               _loc4_.applyDamage(_loc4_.§_-t6§ * 2,true,true,true);
               return;
            }
            if(_loc4_.§_-Aj§() || this.mMightyEagleAdded && _loc3_.§_-xW§())
            {
               _loc3_.applyDamage(_loc3_.§_-t6§ * 2,true,true,true);
               return;
            }
         }
         else if(this.mSardineCanAdded && this.mMightyEagleTimer == §_-Lm§.§_-J3§)
         {
            if(_loc3_.§_-YY§() || _loc4_.§_-YY§())
            {
               this.mMightyEagleTimer = 0;
            }
         }
         if(this.§_-Bj§(_loc3_,_loc4_))
         {
            return;
         }
         var _loc7_:Number = _loc3_.§_-28§(_loc4_.§_-xb§());
         var _loc8_:Number = _loc3_.§_-in§(_loc4_.§_-xb§());
         var _loc9_:Number = _loc4_.§_-28§(_loc3_.§_-xb§());
         var _loc10_:Number = _loc4_.§_-in§(_loc3_.§_-xb§());
         var _loc11_:Number = _loc3_.§_-oR§().GetMass() * _loc3_.§_-oR§().GetLinearVelocity().x - _loc4_.§_-oR§().GetMass() * _loc4_.§_-oR§().GetLinearVelocity().x;
         var _loc12_:Number = _loc3_.§_-oR§().GetMass() * _loc3_.§_-oR§().GetLinearVelocity().y - _loc4_.§_-oR§().GetMass() * _loc4_.§_-oR§().GetLinearVelocity().y;
         var _loc13_:Number = Math.sqrt(_loc11_ * _loc11_ + _loc12_ * _loc12_) / 10;
         var _loc14_:Number = _loc7_ * _loc13_;
         var _loc15_:Number = _loc9_ * _loc13_;
         var _loc16_:Number = Math.max(0,_loc3_.§_-QY§);
         var _loc17_:Number = Math.max(0,_loc4_.§_-QY§);
         var _loc18_:Number = _loc3_.applyDamage(_loc15_,true,_loc4_.§_-gt§(),_loc17_ == _loc4_.§_-t6§);
         var _loc19_:Number = _loc4_.applyDamage(_loc14_,true,_loc3_.§_-gt§(),_loc16_ == _loc3_.§_-t6§);
         if(_loc18_ <= 0)
         {
            if((_loc21_ = (_loc21_ = (_loc15_ - _loc16_) / _loc15_) * _loc10_) > 1)
            {
               _loc21_ = 1;
            }
            _loc4_.§_-KH§(new b2Vec2(_loc4_.§_-oR§().GetLinearVelocity().x * _loc21_,_loc4_.§_-oR§().GetLinearVelocity().y * _loc21_));
         }
         if(_loc19_ <= 0)
         {
            if((_loc22_ = (_loc22_ = (_loc14_ - _loc17_) / _loc14_) * _loc8_) > 1)
            {
               _loc22_ = 1;
            }
            _loc3_.§_-KH§(new b2Vec2(_loc3_.§_-oR§().GetLinearVelocity().x * _loc22_,_loc3_.§_-oR§().GetLinearVelocity().y * _loc22_));
         }
      }
      
      public function §_-jH§() : void
      {
         var _loc2_:§_-GI§ = null;
         var _loc1_:int = this.§_-HC§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§_-HC§[_loc1_] as §_-GI§;
            if(_loc2_ != null && _loc2_.§_-xW§())
            {
               this.§_-Do§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §_-LH§() : void
      {
         var _loc2_:§_-GI§ = null;
         var _loc1_:int = this.§_-HC§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§_-HC§[_loc1_] as §_-GI§;
            if(_loc2_ != null && _loc2_.§_-37§())
            {
               this.§_-Do§(_loc1_,true,true,true);
            }
            _loc1_--;
         }
      }
      
      public function §_-C3§() : int
      {
         return this.§_-HC§.length;
      }
      
      public function §_-7h§(param1:§_-US§) : void
      {
         var _loc4_:§_-GI§ = null;
         var _loc5_:§_-dO§ = null;
         var _loc6_:§_-hm§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§_-HC§.length)
         {
            if((_loc4_ = this.§_-HC§[_loc2_]).§_-TM§)
            {
               if(!_loc4_.isGround())
               {
                  (_loc5_ = new §_-dO§()).angle = _loc4_.§_-vx§();
                  _loc5_.id = _loc4_.§_-FK§;
                  _loc5_.x = _loc4_.§_-oR§().GetPosition().x;
                  _loc5_.y = _loc4_.§_-oR§().GetPosition().y;
                  param1.§_-pf§.push(_loc5_);
               }
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§_-cv§.length)
         {
            (_loc6_ = new §_-hm§(this.§_-cv§[_loc3_].type,this.§_-cv§[_loc3_].index1,this.§_-cv§[_loc3_].index2)).backAndForth = this.§_-cv§[_loc3_].backAndForth;
            _loc6_.collideConnected = this.§_-cv§[_loc3_].collideConnected;
            _loc6_.limit = this.§_-cv§[_loc3_].limit;
            _loc6_.lowerLimit = this.§_-cv§[_loc3_].lowerLimit;
            _loc6_.maxTorque = this.§_-cv§[_loc3_].maxTorque;
            _loc6_.motor = this.§_-cv§[_loc3_].motor;
            _loc6_.motorSpeed = this.§_-cv§[_loc3_].motorSpeed;
            _loc6_.upperLimit = this.§_-cv§[_loc3_].upperLimit;
            _loc6_.p1 = this.§_-cv§[_loc3_].p1;
            _loc6_.p2 = this.§_-cv§[_loc3_].p2;
            param1.§_-cv§.push(_loc6_);
            _loc3_++;
         }
      }
      
      public function §_-l2§() : void
      {
         var _loc1_:int = 0;
         while(this.§_-HC§.length > _loc1_)
         {
            if(this.§_-HC§[_loc1_].isGround())
            {
               _loc1_++;
            }
            else
            {
               this.§_-Er§(this.§_-HC§[_loc1_]);
            }
         }
      }
      
      public function §_-xu§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         while(_loc4_ < this.§_-HC§.length)
         {
            if(this.§_-HC§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§_-HC§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         this.§_-ht§ = param1;
         this.§_-sH§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§_-HC§.length)
         {
            if(this.§_-HC§[_loc2_].isTexture())
            {
               this.§_-HC§[_loc2_].sprite.visible = !this.§_-ht§;
            }
            _loc2_++;
         }
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         this.§_-P2§ = param1;
      }
      
      public function §_-4f§() : Boolean
      {
         return this.§_-P2§;
      }
   }
}
