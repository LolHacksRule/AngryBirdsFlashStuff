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
   import §_-e3§.§_-54§;
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
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc6_:§_-1E§ = null;
         var _loc7_:§_-Hj§ = null;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:§_-Dz§ = null;
         var _loc11_:§_-Dz§ = null;
         this.§_-z-§ = new Vector.<§_-Dz§>();
         this.§_-6I§ = new Vector.<§_-GP§>();
         this.§_-LJ§ = new Vector.<Texture>();
         if(_loc15_ || param1)
         {
            super();
            if(_loc15_)
            {
               this.§_-Ag§ = param1;
               if(_loc15_ || param1)
               {
                  this.§_-9L§ = 0;
                  this.§_-uM§ = param3;
                  if(_loc15_)
                  {
                     §§push(this.§_-uM§);
                     if(!_loc14_)
                     {
                        §§pop().§_-pE§ = false;
                        this.§_-Ty§ = true;
                        addr86:
                        this.§_-aA§ = true;
                        addr89:
                        this.§_-uj§ = new Sprite();
                        addr93:
                        §§push(this.§_-uM§);
                     }
                     §§pop().addChild(this.§_-uj§);
                     var _loc4_:§_-mI§;
                     if((_loc4_ = §_-lr§.§_-1U§(param2.§_-Tt§)) == null)
                     {
                        if(_loc15_)
                        {
                           param2.§_-Tt§ = "BACKGROUND_BLUE_GRASS";
                           if(!_loc14_)
                           {
                              _loc4_ = §_-lr§.§_-1U§(param2.§_-Tt§);
                              addr120:
                              §§push(this);
                              §§push(§_-lr§.§_-1U§(param2.§_-Tt§).§_-p5§);
                              §§push(this.§_-Ag§.§_-N7§.§_-0x§);
                              if(_loc15_)
                              {
                                 §§push(this.§_-Ag§);
                                 if(_loc15_ || param2)
                                 {
                                    §§push(§§pop().§_-N7§);
                                    if(_loc15_ || param3)
                                    {
                                       §§push(§§pop().§_-ec§);
                                       if(_loc15_ || this)
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(_loc15_)
                                          {
                                             addr162:
                                             addr165:
                                             addr164:
                                             §§push(§§pop() / 2);
                                             §§push(this.§_-Ag§.§_-N7§.§_-IL§);
                                             if(_loc15_)
                                             {
                                                addr168:
                                                §§push(§§pop() + §_-y5§.§_-cS§);
                                             }
                                             §§pop().§switch§(§§pop(),§§pop(),§§pop());
                                             var _loc5_:int = this.§_-z-§.length;
                                             var _loc12_:int = 0;
                                             var _loc13_:* = param2.§_-yZ§;
                                             loop0:
                                             while(true)
                                             {
                                                §§push(§§hasnext(_loc13_,_loc12_));
                                                if(!(_loc14_ && param3))
                                                {
                                                   if(§§pop())
                                                   {
                                                      _loc6_ = §§nextvalue(_loc12_,_loc13_);
                                                      if(_loc15_)
                                                      {
                                                         this.§switch§(_loc6_.id,_loc6_.x,_loc6_.y,_loc6_.angle);
                                                      }
                                                      continue;
                                                   }
                                                   if(!(_loc14_ && param3))
                                                   {
                                                      if(_loc15_)
                                                      {
                                                         if(_loc15_ || param3)
                                                         {
                                                            this.§_-1Z§();
                                                            if(_loc15_)
                                                            {
                                                               this.§_-sb§(true);
                                                               if(!_loc14_)
                                                               {
                                                                  this.§_-cY§ = false;
                                                                  if(_loc15_)
                                                                  {
                                                                     addr250:
                                                                     this.§_-kP§ = param2.§_-kP§;
                                                                     if(_loc15_)
                                                                     {
                                                                        addr256:
                                                                        _loc12_ = 0;
                                                                        if(_loc15_)
                                                                        {
                                                                           addr260:
                                                                           _loc13_ = param2.§_-kP§;
                                                                           while(true)
                                                                           {
                                                                              §§push(§§hasnext(_loc13_,_loc12_));
                                                                              break loop0;
                                                                           }
                                                                           throw new Error("Joint index out of bounds [" + _loc8_ + ", " + _loc9_ + "]");
                                                                           addr383:
                                                                        }
                                                                     }
                                                                  }
                                                                  return;
                                                               }
                                                            }
                                                            §§goto(addr256);
                                                         }
                                                         §§goto(addr250);
                                                      }
                                                      §§goto(addr260);
                                                   }
                                                   §§goto(addr256);
                                                }
                                                break;
                                             }
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   §§goto(addr385);
                                                }
                                                else
                                                {
                                                   _loc7_ = §§nextvalue(_loc12_,_loc13_);
                                                   §§push(_loc7_.index1);
                                                   if(_loc15_)
                                                   {
                                                      §§push(_loc5_);
                                                      if(_loc15_ || param2)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(!(_loc14_ && param2))
                                                         {
                                                            §§push(int(§§pop()));
                                                            if(!_loc14_)
                                                            {
                                                               _loc8_ = §§pop();
                                                               if(_loc15_)
                                                               {
                                                                  §§push(_loc7_.index2);
                                                                  if(!(_loc14_ && this))
                                                                  {
                                                                     addr306:
                                                                     §§push(int(§§pop() + _loc5_));
                                                                  }
                                                                  _loc9_ = §§pop();
                                                               }
                                                               _loc10_ = this.§_-z-§[_loc8_];
                                                               _loc11_ = this.§_-z-§[_loc9_];
                                                               if(!_loc14_)
                                                               {
                                                                  §§push(Boolean(_loc10_));
                                                                  if(!(_loc14_ && this))
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(!(_loc14_ && param2))
                                                                        {
                                                                           §§pop();
                                                                           if(_loc15_)
                                                                           {
                                                                              addr347:
                                                                              if(_loc11_)
                                                                              {
                                                                                 if(_loc14_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 _loc7_.§_-WU§ = this.§_-Ag§.§_-hA§.§_-fy§.§_-8T§(_loc7_.§_-tB§(_loc10_,_loc11_));
                                                                                 if(!_loc15_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr260);
                                                                              }
                                                                           }
                                                                           continue;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr347);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr306);
                                                }
                                             }
                                             §§goto(addr260);
                                          }
                                          §§goto(addr162);
                                       }
                                       §§goto(addr168);
                                    }
                                    §§goto(addr165);
                                 }
                                 §§goto(addr164);
                              }
                              §§goto(addr162);
                           }
                        }
                        §§goto(addr162);
                     }
                     §§goto(addr120);
                  }
                  §§goto(addr93);
               }
               §§goto(addr86);
            }
            §§goto(addr89);
         }
         §§goto(addr86);
      }
      
      public function get §_-tR§() : Sprite
      {
         return this.§_-uM§;
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Texture = null;
         while(this.§_-z-§.length > 0)
         {
            this.§_-Wm§(0);
         }
         this.§_-z-§ = null;
         §§push(this.§_-uM§);
         if(!(_loc2_ && this))
         {
            if(§§pop())
            {
               if(_loc3_)
               {
                  addr51:
                  this.§_-uM§.dispose();
                  this.§_-uM§ = null;
                  this.§_-uj§ = null;
                  addr58:
                  while(this.§_-LJ§.length > 0)
                  {
                     _loc1_ = this.§_-LJ§.pop();
                     if(!(_loc2_ && this))
                     {
                        this.§_-Ag§.§_-JG§.§_-tO§(_loc1_);
                     }
                  }
               }
               return;
            }
            §§goto(addr58);
         }
         §§goto(addr51);
      }
      
      private function §_-sb§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§_-uj§.visible = param1;
         }
      }
      
      private function §_-1Z§() : void
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc3_:§_-Dz§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:* = NaN;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§_-19§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§_-Dz§> = new Vector.<§_-Dz§>();
         for each(_loc3_ in this.§_-z-§)
         {
            if(!(_loc16_ && _loc2_))
            {
               if(!_loc3_.isTexture())
               {
                  continue;
               }
               if(_loc17_)
               {
                  _loc2_.push(_loc3_);
               }
            }
            _loc4_ = _loc3_.sprite.getBounds(this.§_-uM§);
            if(_loc17_)
            {
               if(_loc1_ != null)
               {
                  _loc1_ = _loc1_.union(_loc4_);
                  continue;
               }
            }
            _loc1_ = new Rectangle(_loc4_.x,_loc4_.y,_loc4_.width,_loc4_.height);
         }
         if(_loc1_)
         {
            §§push(1);
            if(!(_loc16_ && this))
            {
               §§push(Number(§§pop()));
               if(_loc17_ || this)
               {
                  _loc5_ = §§pop();
                  loop1:
                  while(true)
                  {
                     §§push(_loc1_.width > 2048);
                     if(_loc17_)
                     {
                        if(!§§pop())
                        {
                           if(_loc17_ || _loc1_)
                           {
                              §§pop();
                              if(!_loc16_)
                              {
                                 addr210:
                                 if(_loc1_.height <= 2048)
                                 {
                                    §§push(int(_loc1_.width));
                                    if(_loc17_)
                                    {
                                       _loc6_ = §§pop();
                                       addr217:
                                       §§push(int(_loc1_.height));
                                       if(!(_loc16_ && _loc1_))
                                       {
                                          addr227:
                                          _loc7_ = §§pop();
                                          §§push(int(_loc1_.left));
                                          if(_loc17_ || _loc3_)
                                          {
                                             addr238:
                                             _loc8_ = §§pop();
                                             break;
                                          }
                                       }
                                       addr242:
                                       _loc9_ = §§pop();
                                       _loc10_ = new BitmapData(_loc6_,_loc7_,true,0);
                                       if(_loc17_)
                                       {
                                          this.§_-22§(_loc10_.rect,_loc10_,_loc5_);
                                       }
                                       _loc11_ = this.§_-Na§(_loc2_,_loc6_,_loc7_,_loc8_,_loc9_,_loc5_);
                                       if(!_loc16_)
                                       {
                                          _loc10_.copyChannel(_loc11_,_loc11_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
                                       }
                                       _loc12_ = this.§_-Ag§.§_-JG§.§_-pz§(_loc10_);
                                       if(!_loc16_)
                                       {
                                          this.§_-LJ§.push(_loc12_);
                                       }
                                       (_loc13_ = new §_-19§(_loc12_)).x = _loc8_ / _loc5_;
                                       if(!(_loc16_ && _loc1_))
                                       {
                                          _loc13_.y = _loc9_ / _loc5_;
                                          if(!(_loc16_ && _loc2_))
                                          {
                                             _loc13_.scaleX = 1 / _loc5_;
                                             if(_loc17_)
                                             {
                                                _loc13_.scaleY = 1 / _loc5_;
                                                if(_loc17_)
                                                {
                                                   addr347:
                                                   this.§_-uj§.addChild(_loc13_);
                                                   if(_loc16_)
                                                   {
                                                   }
                                                }
                                                §§goto(addr355);
                                             }
                                             _loc11_.dispose();
                                             addr355:
                                             return;
                                          }
                                       }
                                       §§goto(addr347);
                                    }
                                    §§goto(addr238);
                                 }
                                 else
                                 {
                                    _loc1_.left /= 2;
                                    _loc1_.top /= 2;
                                    if(!_loc16_)
                                    {
                                       _loc1_.right /= 2;
                                       _loc1_.bottom /= 2;
                                    }
                                    §§push(_loc5_);
                                    if(!_loc16_)
                                    {
                                       §§push(§§pop() / 2);
                                       if(!(_loc17_ || _loc1_))
                                       {
                                          continue;
                                       }
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                          continue loop1;
                                       }
                                       addr179:
                                    }
                                    §§goto(addr179);
                                 }
                              }
                              §§goto(addr217);
                           }
                        }
                     }
                     §§goto(addr210);
                  }
                  §§goto(addr242);
                  §§push(int(_loc1_.top));
               }
               §§goto(addr179);
            }
            §§goto(addr227);
         }
         §§goto(addr347);
      }
      
      private function §_-Na§(param1:Vector.<§_-Dz§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
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
            if(_loc16_)
            {
               _loc10_.scale(_loc13_.width,_loc13_.height);
               if(!_loc16_)
               {
                  continue;
               }
            }
            _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
            _loc10_.rotate((360 - _loc7_.§_-Js§()) / 180 * Math.PI);
            _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
            _loc8_.draw(_loc9_,_loc10_);
         }
         if(!(_loc17_ && param1))
         {
            _loc9_.dispose();
         }
         return _loc8_;
      }
      
      private function §_-22§(param1:Rectangle, param2:BitmapData, param3:Number) : void
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc6_:BitmapData = null;
         var _loc7_:Matrix = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         var _loc12_:* = 0;
         var _loc13_:* = 0;
         var _loc14_:* = 0;
         var _loc15_:* = 0;
         §§push(this.§_-Ag§.background.§_-zi§());
         if(_loc16_ || this)
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         var _loc5_:§_-Vr§;
         if(_loc5_ = this.§_-Ag§.§_-JG§.§_-ln§(_loc4_))
         {
            _loc6_ = new BitmapData(_loc5_.bitmapData.width * param3,_loc5_.bitmapData.height * param3);
            (_loc7_ = new Matrix()).scale(param3,param3);
            _loc6_.draw(_loc5_.bitmapData,_loc7_);
            §§push(_loc6_.width - 2);
            if(_loc16_ || param2)
            {
               _loc8_ = §§pop();
               if(!_loc17_)
               {
                  §§push(_loc6_.height - 2);
                  if(_loc16_ || param1)
                  {
                     addr110:
                     _loc9_ = §§pop();
                     if(_loc16_ || param2)
                     {
                        §§push(param1.top / _loc9_);
                        if(_loc16_)
                        {
                           addr125:
                           §§push(int(§§pop()));
                           if(!(_loc17_ && param1))
                           {
                              _loc10_ = §§pop();
                              if(param1.top < 0)
                              {
                                 _loc10_--;
                              }
                              §§push(param1.bottom / _loc9_);
                              if(!(_loc17_ && param3))
                              {
                                 addr159:
                                 §§push(int(§§pop()));
                                 if(!_loc17_)
                                 {
                                    §§push(§§pop());
                                    if(_loc16_ || this)
                                    {
                                       _loc11_ = §§pop();
                                       _loc11_ = §§pop() + 1;
                                       §§push(param1.left / _loc8_);
                                       if(_loc16_)
                                       {
                                          addr180:
                                          _loc12_ = int(§§pop());
                                          if(!_loc17_)
                                          {
                                             if(param1.left < 0)
                                             {
                                                addr203:
                                                §§push(_loc12_ - 1);
                                                if(_loc16_ || param3)
                                                {
                                                   _loc12_ = §§pop();
                                                   addr197:
                                                   §§push(int(param1.right / _loc8_));
                                                }
                                                _loc13_ = (_loc13_ = §§pop()) + 1;
                                                §§push(_loc12_);
                                                if(_loc16_)
                                                {
                                                   §§push(int(§§pop()));
                                                }
                                                _loc14_ = §§pop();
                                             }
                                             §§goto(addr197);
                                          }
                                          loop0:
                                          while(true)
                                          {
                                             §§push(_loc14_);
                                             loop1:
                                             while(true)
                                             {
                                                §§push(_loc13_);
                                                while(true)
                                                {
                                                   if(§§pop() >= §§pop())
                                                   {
                                                      if(_loc16_ || param2)
                                                      {
                                                         _loc6_.dispose();
                                                         break;
                                                      }
                                                      break;
                                                   }
                                                   §§push(_loc10_);
                                                   if(_loc16_)
                                                   {
                                                      §§push(int(§§pop()));
                                                      if(!_loc17_)
                                                      {
                                                         addr219:
                                                         _loc15_ = §§pop();
                                                         while(true)
                                                         {
                                                            §§push(_loc15_);
                                                            if(_loc17_)
                                                            {
                                                               continue loop1;
                                                            }
                                                         }
                                                         addr236:
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(_loc11_);
                                                         if(_loc17_)
                                                         {
                                                            break;
                                                         }
                                                         if(§§pop() >= §§pop())
                                                         {
                                                            continue loop0;
                                                         }
                                                         param2.copyPixels(_loc6_,_loc6_.rect,new Point(_loc14_ * _loc8_,_loc15_ * _loc9_));
                                                         _loc15_++;
                                                         §§goto(addr236);
                                                      }
                                                      continue;
                                                   }
                                                   §§goto(addr219);
                                                }
                                                §§goto(addr270);
                                             }
                                          }
                                       }
                                       §§goto(addr197);
                                    }
                                    §§goto(addr203);
                                 }
                                 §§goto(addr180);
                              }
                              §§goto(addr197);
                           }
                           §§goto(addr180);
                        }
                        §§goto(addr159);
                     }
                     §§goto(addr197);
                  }
                  §§goto(addr125);
               }
               §§goto(addr203);
            }
            §§goto(addr110);
         }
         addr270:
      }
      
      public function §_-sX§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §_-Dz§
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc10_:§_-Dz§ = null;
         var _loc11_:* = param2;
         if(!_loc12_)
         {
            if("BIRD_BLACK" === _loc11_)
            {
               if(_loc13_ || this)
               {
                  §§push(0);
                  if(_loc13_ || param1)
                  {
                  }
               }
               else
               {
                  addr210:
                  §§push(3);
                  if(_loc13_)
                  {
                     addr213:
                  }
               }
            }
            else if("BIRD_BLUE" === _loc11_)
            {
               if(_loc13_)
               {
                  addr182:
                  §§push(1);
                  if(_loc12_ && param2)
                  {
                  }
                  §§goto(addr232);
               }
               else
               {
                  §§goto(addr196);
               }
            }
            else if("BIRD_GREEN" === _loc11_)
            {
               if(!_loc12_)
               {
                  addr196:
                  §§push(2);
                  if(_loc12_ && this)
                  {
                     §§goto(addr213);
                  }
                  §§goto(addr232);
               }
               else
               {
                  §§goto(addr210);
               }
            }
            else
            {
               if("BIRD_WHITE" === _loc11_)
               {
                  if(!_loc12_)
                  {
                     §§goto(addr210);
                  }
               }
               else if("BIRD_YELLOW" !== _loc11_)
               {
                  addr232:
                  switch(§§pop())
                  {
                     case 0:
                        _loc10_ = new §_-he§(this,param1,this.§_-Ag§.§_-hA§.§_-fy§,this.§_-Ag§,this.§_-9L§,param2,param3,param4,param5,param9);
                        break;
                     case 1:
                        _loc10_ = new §_-Gv§(this,param1,this.§_-Ag§.§_-hA§.§_-fy§,this.§_-Ag§,this.§_-9L§,param2,param3,param4,param5,param8,param9);
                        break;
                     case 2:
                        _loc10_ = new §_-PY§(this,param1,this.§_-Ag§.§_-hA§.§_-fy§,this.§_-Ag§,this.§_-9L§,param2,param3,param4,param5,param9);
                        break;
                     case 3:
                        _loc10_ = new §_-Ri§(this,param1,this.§_-Ag§.§_-hA§.§_-fy§,this.§_-Ag§,this.§_-9L§,param2,param3,param4,param5,param9);
                        break;
                     case 4:
                        _loc10_ = new §_-kK§(this,param1,this.§_-Ag§.§_-hA§.§_-fy§,this.§_-Ag§,this.§_-9L§,param2,param3,param4,param5,param9);
                        break;
                     default:
                        _loc10_ = new §_-zf§(this,param1,this.§_-Ag§.§_-hA§.§_-fy§,this.§_-Ag§,this.§_-9L§,param2,param3,param4,param5,param8,param9);
                  }
                  return _loc10_;
                  §§push(5);
               }
               §§goto(addr232);
               if(!_loc13_)
               {
               }
            }
            §§goto(addr232);
         }
         §§goto(addr182);
      }
      
      public function §switch§(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0) : §_-Dz§
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc10_:§_-Dz§ = null;
         var _loc11_:§_-Pq§ = null;
         var _loc9_:Sprite;
         (_loc9_ = new Sprite()).scaleX = param8;
         if(_loc13_)
         {
            _loc9_.scaleY = param8;
            if(_loc13_ || param3)
            {
               §§push(param1);
               if(!(_loc12_ && this))
               {
                  if(§§pop().indexOf("BIRD") == 0)
                  {
                     if(_loc13_ || param2)
                     {
                        _loc10_ = this.§_-sX§(_loc9_,param1,param2,param3,param4,param5,param6,param7,param8);
                     }
                     else
                     {
                        addr77:
                        _loc10_ = new §_-gb§(this,_loc9_,this.§_-Ag§.§_-hA§.§_-fy§,this.§_-Ag§,this.§_-9L§,param1,param2,param3,param4,param8);
                     }
                     addr267:
                     §§push(_loc10_.isTexture());
                     if(!_loc12_)
                     {
                        if(§§pop())
                        {
                           if(_loc13_ || param2)
                           {
                              §§push(_loc9_);
                              §§push(this.§_-aA§);
                              if(_loc13_)
                              {
                                 §§push(!§§pop());
                              }
                              §§pop().visible = §§pop();
                              this.§_-z-§[this.§_-z-§.length] = _loc10_;
                              addr301:
                              §§push(_loc10_ is §_-zf§);
                              if(!(_loc12_ && param1))
                              {
                                 if(§§pop())
                                 {
                                    if(!_loc12_)
                                    {
                                       addr315:
                                       §§pop();
                                       if(!(_loc12_ && this))
                                       {
                                          addr326:
                                          if(!_loc10_.§_-fw§())
                                          {
                                             if(_loc13_ || param1)
                                             {
                                                §§push(this.§_-uM§);
                                                if(!_loc12_)
                                                {
                                                   §§pop().addChildAt(_loc9_,0);
                                                   if(!_loc13_)
                                                   {
                                                   }
                                                }
                                                else
                                                {
                                                   addr346:
                                                   §§pop().addChild(_loc9_);
                                                }
                                                addr349:
                                                if(param5)
                                                {
                                                   if(!(_loc12_ && param2))
                                                   {
                                                      §§push(this.§_-Ag§);
                                                      if(_loc13_)
                                                      {
                                                         §§pop().§_-Ng§(_loc10_);
                                                         §§goto(addr363);
                                                      }
                                                   }
                                                   §§goto(addr381);
                                                }
                                                addr363:
                                                §§goto(addr364);
                                             }
                                             §§goto(addr381);
                                          }
                                          else
                                          {
                                             §§push(this.§_-uM§);
                                          }
                                          §§goto(addr346);
                                       }
                                       §§goto(addr381);
                                    }
                                    addr364:
                                    if(param6)
                                    {
                                       if(_loc13_ || param3)
                                       {
                                          addr381:
                                          this.§_-Ag§.activeObject = _loc10_;
                                       }
                                    }
                                    return _loc10_;
                                 }
                                 §§goto(addr326);
                              }
                              §§goto(addr315);
                           }
                           §§goto(addr381);
                        }
                        else
                        {
                           this.§_-z-§[this.§_-z-§.length] = _loc10_;
                        }
                        §§goto(addr301);
                     }
                     §§goto(addr349);
                  }
                  else
                  {
                     §§push(param1);
                  }
                  §§goto(addr77);
               }
               if(§§pop().indexOf("PIG") == 0)
               {
                  §§goto(addr77);
               }
               else
               {
                  §§push((_loc11_ = §_-yP§.§_-nU§(param1)) == null);
                  if(!(_loc12_ && param3))
                  {
                     §§push(§§pop());
                     if(!_loc12_)
                     {
                        if(§§pop())
                        {
                           if(_loc13_ || this)
                           {
                              addr123:
                              §§pop();
                              if(_loc13_ || param3)
                              {
                                 §§push(param1);
                                 if(_loc13_ || param2)
                                 {
                                    §§push(§§pop().indexOf("MISC_") == 0);
                                    if(_loc13_ || this)
                                    {
                                       addr150:
                                       if(§§pop())
                                       {
                                          if(!(_loc12_ && param1))
                                          {
                                             addr164:
                                             param1 = "MISC_FOOD_" + param1.substring(5);
                                             if(!(_loc12_ && param1))
                                             {
                                                _loc11_ = §_-yP§.§_-nU§(param1);
                                                addr177:
                                                §§push(_loc11_.§_-1n§);
                                                if(!(_loc12_ && param1))
                                                {
                                                   §§push(§_-Pq§.§_-pV§);
                                                   if(_loc13_)
                                                   {
                                                      §§push(§§pop() == §§pop());
                                                      if(!(_loc12_ && param3))
                                                      {
                                                         addr205:
                                                         if(!§§pop())
                                                         {
                                                            if(!(_loc12_ && param2))
                                                            {
                                                               §§pop();
                                                               addr228:
                                                               if(_loc13_ || param1)
                                                               {
                                                                  addr224:
                                                                  §§push(_loc11_.§_-1n§);
                                                                  §§push(§_-Pq§.§_-dH§);
                                                               }
                                                               _loc10_ = new §_-yt§(this,_loc9_,this.§_-Ag§.§_-hA§.§_-fy§,this.§_-Ag§,this.§_-9L§,param1,param2,param3,param4,param8);
                                                               §§goto(addr267);
                                                            }
                                                            addr227:
                                                            if(§§pop())
                                                            {
                                                               §§goto(addr228);
                                                            }
                                                            else
                                                            {
                                                               _loc10_ = new §_-Dz§(this,_loc9_,this.§_-Ag§.§_-hA§.§_-fy§,this.§_-Ag§,this.§_-9L§,param1,param2,param3,param4,param8);
                                                               §§goto(addr267);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr227);
                                                   §§push(§§pop() == §§pop());
                                                }
                                             }
                                             §§goto(addr224);
                                          }
                                          §§goto(addr228);
                                       }
                                       §§goto(addr177);
                                    }
                                    §§goto(addr227);
                                 }
                              }
                              §§goto(addr164);
                           }
                           §§goto(addr205);
                        }
                        §§goto(addr150);
                     }
                     §§goto(addr205);
                  }
                  §§goto(addr123);
               }
            }
         }
         §§goto(addr77);
      }
      
      public function §_-FN§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§_-Dz§ = null;
         var _loc1_:* = int(this.§_-z-§.length - 1);
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§_-z-§[_loc1_] as §_-Dz§;
            if(_loc2_)
            {
               if(_loc2_.§_-Qm§ <= 0)
               {
                  this.§_-Wm§(_loc1_,true,true,true);
                  if(_loc3_ || this)
                  {
                     addr79:
                     §§push(_loc1_);
                     if(_loc3_)
                     {
                        §§push(§§pop() - 1);
                     }
                     _loc1_ = §§pop();
                     continue;
                  }
                  §§goto(addr79);
               }
               else
               {
                  _loc2_.§_-Ac§();
                  if(_loc4_)
                  {
                     continue;
                  }
               }
               _loc2_.§_-vU§();
               if(_loc4_ && _loc1_)
               {
                  continue;
               }
            }
            §§goto(addr79);
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§_-6I§.push(§_-GP§.§_-ti§(param1,param2,param3));
            if(!_loc4_)
            {
               §_-Ou§.playSound("TntExplosions","ChannelExplosions");
            }
         }
      }
      
      public function §_-rH§(param1:Number, param2:Number) : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§_-Dz§ = null;
         var _loc3_:* = int(this.§_-z-§.length - 1);
         while(true)
         {
            §§push(_loc3_);
            if(!_loc6_)
            {
               if(§§pop() < 0)
               {
                  break;
               }
               if(_loc4_ = this.§_-z-§[_loc3_])
               {
                  if(!(_loc5_ || _loc3_))
                  {
                     continue;
                  }
                  if(_loc4_.isInCoordinates(param1,param2))
                  {
                     if(_loc5_)
                     {
                        §§push(_loc3_);
                        if(_loc5_)
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        addr59:
                        §§push(_loc3_);
                        if(_loc5_ || this)
                        {
                           §§push(§§pop() - 1);
                        }
                     }
                     _loc3_ = §§pop();
                     continue;
                  }
               }
               §§goto(addr59);
            }
            break;
         }
         return §§pop();
      }
      
      public function §_-4G§(param1:Number, param2:Number) : §_-Dz§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§_-Dz§ = null;
         var _loc3_:* = int(this.§_-z-§.length - 1);
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§_-z-§[_loc3_])
            {
               if(!(_loc5_ && param1))
               {
                  if(_loc4_.isInCoordinates(param1,param2))
                  {
                     if(_loc6_ || _loc3_)
                     {
                        return _loc4_;
                     }
                     continue;
                  }
               }
            }
            §§push(_loc3_);
            if(_loc6_ || _loc3_)
            {
               §§push(§§pop() - 1);
            }
            _loc3_ = §§pop();
         }
         return null;
      }
      
      public function getObject(param1:int) : §_-Dz§
      {
         return this.§_-z-§[param1];
      }
      
      public function §_-Qk§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§_-Dz§ = null;
         var _loc3_:* = int(this.§_-z-§.length - 1);
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§_-z-§[_loc3_] as §_-Dz§).§_-Qk§(param2,param1);
            if(!_loc6_)
            {
               §§push(_loc3_);
               if(_loc5_ || _loc3_)
               {
                  §§push(§§pop() - 1);
               }
               _loc3_ = §§pop();
            }
         }
      }
      
      private function §_-lx§(param1:§_-Dz§, param2:Number) : Boolean
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:* = NaN;
         var _loc7_:§_-Dz§ = null;
         if(!_loc8_)
         {
            §§push(this.mSardineCanAdded);
            if(!_loc8_)
            {
               if(!§§pop())
               {
                  if(!_loc8_)
                  {
                     §§push(true);
                     if(_loc9_ || _loc3_)
                     {
                        §§goto(addr40);
                     }
                     else
                     {
                        §§goto(addr58);
                     }
                  }
                  else
                  {
                     addr59:
                     §§push(false);
                  }
               }
               else
               {
                  §§push(this.mMightyEagleAdded);
                  if(!(_loc8_ && param2))
                  {
                     if(§§pop())
                     {
                        if(_loc9_)
                        {
                           §§push(false);
                           if(!_loc8_)
                           {
                              addr58:
                              return §§pop();
                           }
                        }
                        else
                        {
                           §§goto(addr59);
                        }
                     }
                     §§goto(addr59);
                  }
               }
               var _loc3_:* = §§pop();
               if(!(_loc8_ && _loc3_))
               {
                  §§push(param1.§_-Qm§);
                  §§push(param1.§_-FF§);
                  if(!_loc8_)
                  {
                     if(§§pop() == §§pop())
                     {
                        if(this.§_-UF§ < §_-EQ§.§ for§)
                        {
                           §§push(this);
                           §§push(this.§_-UF§);
                           if(_loc9_)
                           {
                              §§push(param2);
                              if(!_loc8_)
                              {
                                 §§push(§§pop() * §_-EQ§.§_-a-§);
                              }
                              §§push(§§pop() + §§pop());
                           }
                           §§pop().§_-UF§ = §§pop();
                        }
                        §§push(param1.§_-zq§());
                        if(_loc9_ || this)
                        {
                           §§push(param2);
                           if(_loc9_ || this)
                           {
                              §§push(§§pop() * this.§_-UF§);
                           }
                           §§pop().§_-kz§(§§pop());
                           if(_loc9_)
                           {
                              addr116:
                              §§push(param1.§_-AA§());
                              if(_loc9_)
                              {
                                 §§push(Boolean(§§pop()));
                                 §§push(Boolean(§§pop()));
                                 if(!_loc8_)
                                 {
                                    if(!§§pop())
                                    {
                                       §§pop();
                                       §§push(this.§_-bI§(param1));
                                       if(_loc9_ || _loc3_)
                                       {
                                          §§push(Boolean(§§pop()));
                                          if(!_loc8_)
                                          {
                                             addr139:
                                             if(§§pop())
                                             {
                                                addr144:
                                                if(this.mMightyEagleTimer < §_-EQ§.§_-O1§)
                                                {
                                                   §§push(this.mMightyEagleTimer);
                                                   if(_loc9_ || param2)
                                                   {
                                                      §§push(param2);
                                                      if(_loc9_)
                                                      {
                                                         _loc4_ = §§pop() + §§pop();
                                                         if(_loc9_)
                                                         {
                                                            addr173:
                                                            §§push(this.mMightyEagleTimer < §_-EQ§.§_-AV§);
                                                            if(!_loc8_)
                                                            {
                                                               addr177:
                                                               if(§§pop())
                                                               {
                                                                  addr178:
                                                                  §§pop();
                                                                  §§push(_loc4_);
                                                                  if(!(_loc8_ && param2))
                                                                  {
                                                                     §§push(§§pop() > §_-EQ§.§_-AV§);
                                                                     if(!_loc8_)
                                                                     {
                                                                        addr192:
                                                                        if(§§pop())
                                                                        {
                                                                           if(_loc9_ || param1)
                                                                           {
                                                                              addr200:
                                                                              §_-Ou§.playSound("Mighty_Eagle_Selected_1","ChannelBird");
                                                                              §_-Ou§.playSound("Mighty_Eagle_Flying_1","ChannelBird");
                                                                              §§goto(addr208);
                                                                           }
                                                                           §§goto(addr250);
                                                                        }
                                                                        addr208:
                                                                        if(_loc4_ >= §_-EQ§.§_-O1§)
                                                                        {
                                                                           §§push(param1.§_-zq§());
                                                                           if(_loc9_)
                                                                           {
                                                                              §§push(§§pop().GetPosition());
                                                                              if(_loc9_)
                                                                              {
                                                                                 addr220:
                                                                                 _loc5_ = §§pop().x - §_-EQ§.§_-Au§;
                                                                                 addr227:
                                                                                 §§push(param1.§_-zq§().GetPosition());
                                                                              }
                                                                              §§push(§§pop().y);
                                                                              §§push(§_-EQ§.§_-Au§);
                                                                              if(_loc9_ || param1)
                                                                              {
                                                                                 §§push(§_-EQ§.§_-FS§);
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    addr243:
                                                                                    §§push(§§pop() * §§pop());
                                                                                    §§push(1.07);
                                                                                 }
                                                                                 §§push(§§pop() - §§pop() * §§pop());
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    addr248:
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                                 _loc6_ = §§pop();
                                                                                 addr250:
                                                                                 if(this.§_-bI§(param1))
                                                                                 {
                                                                                    §§push(true);
                                                                                    if(_loc9_ || this)
                                                                                    {
                                                                                       addr262:
                                                                                       _loc3_ = §§pop();
                                                                                       if(_loc9_ || param1)
                                                                                       {
                                                                                          addr270:
                                                                                          §§push(this);
                                                                                          §§push("BIRD_MIGHTY_EAGLE");
                                                                                          §§push(_loc5_);
                                                                                          §§push(_loc6_);
                                                                                          §§push(§_-EQ§.§_-Or§);
                                                                                          if(!(_loc8_ && param1))
                                                                                          {
                                                                                             §§push(§§pop() * 1.2);
                                                                                          }
                                                                                          _loc7_ = §§pop().§switch§(§§pop(),§§pop(),§§pop(),§§pop());
                                                                                          if(!(_loc8_ && this))
                                                                                          {
                                                                                             this.mMightyEagleAdded = true;
                                                                                             if(_loc9_ || _loc3_)
                                                                                             {
                                                                                             }
                                                                                             §§goto(addr316);
                                                                                          }
                                                                                          _loc7_.§_-e7§.§_-s7§(1.82);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr316);
                                                                                 }
                                                                                 §§goto(addr270);
                                                                              }
                                                                              §§goto(addr243);
                                                                           }
                                                                           §§goto(addr227);
                                                                        }
                                                                     }
                                                                     §§goto(addr316);
                                                                  }
                                                                  §§goto(addr248);
                                                               }
                                                               §§goto(addr192);
                                                            }
                                                            §§goto(addr178);
                                                         }
                                                         §§goto(addr200);
                                                      }
                                                      §§goto(addr173);
                                                   }
                                                   §§goto(addr220);
                                                }
                                             }
                                             §§goto(addr316);
                                          }
                                          §§goto(addr262);
                                       }
                                       addr316:
                                       this.mMightyEagleTimer = _loc4_;
                                       return _loc3_;
                                    }
                                    §§goto(addr139);
                                 }
                                 §§goto(addr177);
                              }
                              §§goto(addr139);
                           }
                           §§goto(addr270);
                        }
                        §§goto(addr220);
                     }
                     §§goto(addr116);
                  }
                  §§goto(addr144);
               }
               §§goto(addr220);
            }
            addr40:
            return §§pop();
         }
         §§goto(addr59);
      }
      
      private function §_-IA§(param1:§_-Dz§, param2:Number) : Boolean
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:§_-Dz§ = null;
         if(!_loc8_)
         {
            §§push(this.§_-5N§);
            if(_loc9_ || param1)
            {
               §§push(!§§pop());
               if(!_loc8_)
               {
                  if(§§pop())
                  {
                     if(_loc9_)
                     {
                        addr35:
                        §§pop();
                        if(!(_loc8_ && this))
                        {
                           addr43:
                           §§push(this.mMightyEagleTimer);
                           if(!(_loc8_ && this))
                           {
                              addr55:
                              if(§§pop() > §_-EQ§.§_-CA§)
                              {
                                 if(_loc9_ || param2)
                                 {
                                    this.§_-5N§ = true;
                                    if(_loc9_ || param2)
                                    {
                                    }
                                    addr78:
                                    var _loc3_:Number = 3;
                                    addr76:
                                    if(!_loc8_)
                                    {
                                       §§push(this);
                                       §§push(this.mMightyEagleTimer);
                                       if(!_loc8_)
                                       {
                                          §§push(§§pop() + param2);
                                       }
                                       §§pop().mMightyEagleTimer = §§pop();
                                       if(!(_loc8_ && param1))
                                       {
                                          §§push(this.§_-Ag§.particles);
                                          §§push(§_-UW§.§_-Lw§);
                                          §§push(§_-Gb§.§_-oO§);
                                          §§push(§_-UW§.§_-s4§);
                                          §§push(param1.§_-zq§().GetPosition().x);
                                          if(_loc9_)
                                          {
                                             §§push(_loc3_);
                                             if(_loc9_ || this)
                                             {
                                                §§push(§§pop() - §§pop());
                                                if(_loc9_)
                                                {
                                                   addr122:
                                                   §§push(Math.random() * (_loc3_ * 2));
                                                   if(_loc9_)
                                                   {
                                                      addr131:
                                                      §§push(§§pop() + §§pop());
                                                      §§push(param1.§_-zq§().GetPosition().y);
                                                      if(!(_loc8_ && param2))
                                                      {
                                                         §§push(_loc3_);
                                                         if(!_loc8_)
                                                         {
                                                            addr160:
                                                            §§push(§§pop() - §§pop());
                                                            if(!(_loc8_ && _loc3_))
                                                            {
                                                               §§push(Math.random() * (_loc3_ * 2));
                                                            }
                                                            §§pop().§_-JY§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),2500,"",§_-UW§.§_-G9§(param1.§_-L1§),0,0,0,0,4);
                                                            var _loc4_:* = 1;
                                                            §§push(this.mMightyEagleHasTouchedGround);
                                                            if(_loc9_ || param1)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  §§push(param1);
                                                                  §§push(§_-EQ§.§_-Df§);
                                                                  if(_loc9_)
                                                                  {
                                                                     §§push(§§pop() * param2);
                                                                  }
                                                                  §§pop().§_-jF§(§§pop());
                                                                  §§push(-1);
                                                                  if(_loc9_)
                                                                  {
                                                                     _loc4_ = §§pop();
                                                                     if(_loc9_ || this)
                                                                     {
                                                                        addr205:
                                                                        if(this.§_-lH§)
                                                                        {
                                                                           this.§_-lH§ = false;
                                                                           if(!_loc8_)
                                                                           {
                                                                              this.§_-Ag§.§_-9e§();
                                                                              if(_loc9_)
                                                                              {
                                                                                 param1.§_-h7§(§_-6n§.§_-te§);
                                                                                 this.mSardineCanAdded = false;
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    addr225:
                                                                                    §§push(param1.§_-e7§);
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       §§pop().§_-I3§ = true;
                                                                                       §§push(param1.§_-e7§);
                                                                                    }
                                                                                    §§pop().§_-nj§();
                                                                                 }
                                                                              }
                                                                              §§goto(addr225);
                                                                           }
                                                                           addr242:
                                                                           var _loc6_:int = 0;
                                                                           var _loc7_:* = this.§_-z-§;
                                                                           loop0:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§hasnext(_loc7_,_loc6_));
                                                                              if(!(_loc8_ && param2))
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       if(!(_loc8_ && param2))
                                                                                       {
                                                                                          this.§_-Eb§();
                                                                                          addr340:
                                                                                          §§push(this.mMightyEagleTimer > 6000);
                                                                                          if(!(_loc8_ && this))
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   §§pop();
                                                                                                   §§push(this.isPigsAlive());
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      §§push(Boolean(§§pop()));
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         addr363:
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            _loc6_ = 0;
                                                                                                            if(!_loc8_)
                                                                                                            {
                                                                                                               _loc7_ = this.§_-z-§;
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§hasnext(_loc7_,_loc6_));
                                                                                                                  break loop0;
                                                                                                               }
                                                                                                               addr432:
                                                                                                               if(_loc8_ && this)
                                                                                                               {
                                                                                                                  addr449:
                                                                                                                  this.§_-lH§ = this.mMightyEagleHasTouchedGround;
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr440:
                                                                                                               }
                                                                                                               param1.§_-ZN§(param2,new Point(1,_loc4_ * §_-EQ§.§_-FS§),§_-EQ§.§_-lP§);
                                                                                                               return false;
                                                                                                               addr431:
                                                                                                               addr429:
                                                                                                            }
                                                                                                            §§goto(addr432);
                                                                                                         }
                                                                                                         §§goto(addr440);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr432);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr363);
                                                                                       }
                                                                                       §§goto(addr432);
                                                                                    }
                                                                                    §§goto(addr431);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    _loc5_ = §§nextvalue(_loc6_,_loc7_);
                                                                                    §§push(Boolean(_loc5_));
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(!(_loc8_ && this))
                                                                                          {
                                                                                             §§pop();
                                                                                             if(!(_loc8_ && param1))
                                                                                             {
                                                                                                §§push(_loc5_.§_-7H§());
                                                                                                if(!(_loc8_ && _loc3_))
                                                                                                {
                                                                                                   addr285:
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   if(!(_loc8_ && _loc3_))
                                                                                                   {
                                                                                                      §§push(_loc5_.§_-zq§());
                                                                                                      if(_loc9_ || this)
                                                                                                      {
                                                                                                         §§pop().SetAwake(true);
                                                                                                         if(_loc8_ && param1)
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         addr311:
                                                                                                         §§push(_loc5_.§_-zq§());
                                                                                                      }
                                                                                                      §§pop().SetLinearVelocity(new b2Vec2(0,-18));
                                                                                                      continue;
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr285);
                                                                                             }
                                                                                             §§goto(addr311);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr285);
                                                                                 }
                                                                              }
                                                                              break;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 §§goto(addr432);
                                                                              }
                                                                              else
                                                                              {
                                                                                 _loc5_ = §§nextvalue(_loc6_,_loc7_);
                                                                                 §§push(Boolean(_loc5_));
                                                                                 if(!(_loc8_ && this))
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(_loc9_ || this)
                                                                                       {
                                                                                          §§pop();
                                                                                          if(!(_loc8_ && param2))
                                                                                          {
                                                                                             §§push(_loc5_.§_-7H§());
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                             }
                                                                                             addr410:
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(_loc9_ || _loc3_)
                                                                                                {
                                                                                                   §§push(_loc5_);
                                                                                                   §§push(_loc5_.§_-FF§);
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      §§push(§§pop() * 2);
                                                                                                   }
                                                                                                   §§pop().applyDamage(§§pop(),true,true,true);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          continue;
                                                                                       }
                                                                                       §§push(Boolean(§§pop()));
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr410);
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr340);
                                                                     }
                                                                     §§goto(addr225);
                                                                  }
                                                                  §§goto(addr242);
                                                               }
                                                               else
                                                               {
                                                                  this.mMightyEagleHasTouchedGround = param1.§_-zq§().GetPosition().y >= -5.5;
                                                               }
                                                               §§goto(addr449);
                                                            }
                                                            §§goto(addr205);
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                      }
                                                   }
                                                   §§goto(addr160);
                                                }
                                             }
                                             §§goto(addr131);
                                          }
                                          §§goto(addr122);
                                       }
                                    }
                                    §§goto(addr160);
                                 }
                                 this.§_-Ag§.§_-qS§();
                              }
                              §§goto(addr76);
                           }
                        }
                        §§goto(addr78);
                     }
                  }
               }
               §§goto(addr55);
            }
            §§goto(addr35);
         }
         §§goto(addr43);
      }
      
      private function §_-Yx§() : void
      {
         var _loc20_:Boolean = false;
         var _loc21_:Boolean = true;
         var _loc1_:§_-GP§ = null;
         var _loc2_:* = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:§_-Dz§ = null;
         var _loc7_:* = 0;
         var _loc8_:* = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:* = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:* = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:* = NaN;
         var _loc17_:* = NaN;
         loop0:
         while(this.§_-6I§.length > 0)
         {
            _loc1_ = this.§_-6I§.shift();
            §§push(Number(_loc1_.§_-ij§));
            if(_loc21_)
            {
               _loc2_ = §§pop();
               if(_loc21_ || this)
               {
                  _loc3_ = _loc1_.x;
                  §§push(Number(_loc1_.y));
                  if(!_loc20_)
                  {
                     _loc4_ = §§pop();
                     if(!_loc21_)
                     {
                        continue;
                     }
                     §§push(_loc1_.damage);
                     if(_loc21_)
                     {
                        §§push(Number(§§pop()));
                        if(!(_loc20_ && _loc2_))
                        {
                           _loc5_ = §§pop();
                           if(!(_loc20_ && _loc2_))
                           {
                              var _loc18_:int = 0;
                              if(!(_loc20_ && _loc2_))
                              {
                                 for each(_loc6_ in this.§_-z-§)
                                 {
                                    §§push(_loc6_.§_-zq§());
                                    if(!(_loc20_ && this))
                                    {
                                       §§push(§§pop().GetPosition());
                                       if(!_loc20_)
                                       {
                                          §§push(§§pop().x - _loc3_);
                                          if(!(_loc20_ && _loc2_))
                                          {
                                             §§push(Number(§§pop()));
                                             if(!(_loc20_ && this))
                                             {
                                                _loc8_ = §§pop();
                                                if(_loc21_ || _loc1_)
                                                {
                                                   §§push(_loc6_.§_-zq§());
                                                   if(!(_loc20_ && _loc2_))
                                                   {
                                                      addr170:
                                                      §§push(§§pop().GetPosition().y);
                                                      §§push(_loc4_);
                                                      if(_loc21_)
                                                      {
                                                         _loc9_ = §§pop() - §§pop();
                                                         §§push(_loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_));
                                                         if(!(_loc20_ && _loc3_))
                                                         {
                                                            §§push(_loc1_.§_-ij§);
                                                            if(_loc21_ || _loc3_)
                                                            {
                                                               addr205:
                                                               if(§§pop() <= §§pop())
                                                               {
                                                                  _loc11_ = Number(_loc1_.push);
                                                                  §§push(_loc10_);
                                                                  if(_loc21_ || _loc3_)
                                                                  {
                                                                     §§push(1);
                                                                     if(!(_loc20_ && _loc1_))
                                                                     {
                                                                        if(§§pop() > §§pop())
                                                                        {
                                                                           addr229:
                                                                           §§push(Number(_loc11_ / _loc10_));
                                                                           if(!(_loc20_ && _loc3_))
                                                                           {
                                                                              _loc11_ = §§pop();
                                                                              addr239:
                                                                              §§push(_loc10_);
                                                                              if(_loc21_ || _loc1_)
                                                                              {
                                                                                 §§push(0);
                                                                                 if(_loc21_ || _loc3_)
                                                                                 {
                                                                                    if(§§pop() > §§pop())
                                                                                    {
                                                                                       §§push(_loc11_);
                                                                                       §§push(_loc8_);
                                                                                       §§push(_loc10_);
                                                                                       if(!_loc20_)
                                                                                       {
                                                                                          addr270:
                                                                                          _loc12_ = §§pop() * (§§pop() / §§pop());
                                                                                          addr332:
                                                                                          addr335:
                                                                                          addr333:
                                                                                          §§push(_loc11_);
                                                                                          if(!_loc20_)
                                                                                          {
                                                                                             §§push(_loc9_);
                                                                                             §§push(_loc10_);
                                                                                          }
                                                                                          _loc14_ = Number(§§pop() / _loc10_);
                                                                                          _loc6_.applyDamage(_loc14_,false);
                                                                                          continue;
                                                                                       }
                                                                                       _loc13_ = §§pop() * (§§pop() / §§pop());
                                                                                       if(_loc21_ || _loc2_)
                                                                                       {
                                                                                          addr290:
                                                                                          _loc6_.§_-zq§().ApplyImpulse(new b2Vec2(_loc12_,_loc13_),new b2Vec2(_loc3_,_loc4_));
                                                                                          if(!_loc20_)
                                                                                          {
                                                                                             addr301:
                                                                                             §§push(_loc10_);
                                                                                             §§push(_loc1_.§_-UQ§);
                                                                                             if(_loc21_)
                                                                                             {
                                                                                                if(§§pop() > §§pop())
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                §§push(_loc5_);
                                                                                                if(_loc21_)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   if(_loc21_)
                                                                                                   {
                                                                                                      addr313:
                                                                                                      _loc14_ = §§pop();
                                                                                                      §§push(_loc10_);
                                                                                                      if(_loc21_ || this)
                                                                                                      {
                                                                                                         addr322:
                                                                                                         if(§§pop() > 1)
                                                                                                         {
                                                                                                            if(!(_loc20_ && _loc3_))
                                                                                                            {
                                                                                                               addr331:
                                                                                                               §§goto(addr332);
                                                                                                               §§push(_loc14_);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr332);
                                                                                                      }
                                                                                                      §§goto(addr335);
                                                                                                   }
                                                                                                   §§goto(addr322);
                                                                                                }
                                                                                                §§goto(addr313);
                                                                                             }
                                                                                             §§goto(addr333);
                                                                                          }
                                                                                          §§goto(addr331);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr301);
                                                                                 }
                                                                                 §§goto(addr322);
                                                                              }
                                                                              §§goto(addr313);
                                                                           }
                                                                           §§goto(addr270);
                                                                        }
                                                                        §§goto(addr239);
                                                                     }
                                                                     §§goto(addr322);
                                                                  }
                                                                  §§goto(addr270);
                                                               }
                                                               §§goto(addr301);
                                                            }
                                                            §§goto(addr229);
                                                         }
                                                         §§goto(addr270);
                                                      }
                                                      §§goto(addr205);
                                                   }
                                                   §§goto(addr290);
                                                }
                                                §§goto(addr239);
                                             }
                                             §§goto(addr322);
                                          }
                                          §§goto(addr301);
                                       }
                                       §§goto(addr170);
                                    }
                                    §§goto(addr290);
                                 }
                              }
                              if(_loc21_ || this)
                              {
                                 §§push(this.§_-Ag§);
                                 if(_loc21_ || _loc2_)
                                 {
                                    §§push(§§pop().particles);
                                    if(_loc21_ || _loc3_)
                                    {
                                       §§push(this.§_-XF§(_loc1_.type));
                                       if(!_loc20_)
                                       {
                                          §§push(§_-Gb§.§_-oO§);
                                          if(_loc21_)
                                          {
                                             §§push(§_-UW§.§_-dd§);
                                             if(_loc21_)
                                             {
                                                §§push(_loc3_);
                                                if(!_loc20_)
                                                {
                                                   §§push(_loc4_);
                                                   if(!_loc20_)
                                                   {
                                                      §§pop().§_-JY§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),600,"",§_-UW§.§_-Hs§,0,0,0,0,1,20,true);
                                                      if(!_loc20_)
                                                      {
                                                         §§push(30);
                                                         if(_loc21_)
                                                         {
                                                            _loc7_ = §§pop();
                                                            addr406:
                                                            loop18:
                                                            while(true)
                                                            {
                                                               §§push(_loc7_);
                                                               loop5:
                                                               while(true)
                                                               {
                                                                  §§push(150);
                                                                  loop4:
                                                                  while(true)
                                                                  {
                                                                     if(§§pop() >= §§pop())
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                     addr409:
                                                                     §§push(0.75);
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc2_);
                                                                        if(!(_loc20_ && _loc1_))
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(_loc21_)
                                                                           {
                                                                              addr424:
                                                                              _loc15_ = §§pop() + Math.random() * _loc2_;
                                                                              §§push(1250);
                                                                              §§push(Math.random() * 750);
                                                                              if(!_loc20_)
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    addr436:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc16_ = §§pop();
                                                                                       addr437:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc7_);
                                                                                          if(!_loc21_)
                                                                                          {
                                                                                             continue loop5;
                                                                                          }
                                                                                          §§push(180);
                                                                                          if(_loc20_ && this)
                                                                                          {
                                                                                             continue loop4;
                                                                                          }
                                                                                          §§push(§§pop() / Math.PI);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr435:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() / §§pop());
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              addr453:
                                                                              while(true)
                                                                              {
                                                                                 _loc17_ = §§pop();
                                                                                 §§push(this.§_-Ag§);
                                                                                 addr456:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().particles);
                                                                                    addr457:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§_-UW§.§_-AL§);
                                                                                       addr459:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§_-Gb§.§_-oO§);
                                                                                          addr461:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§_-UW§.§_-s4§);
                                                                                             addr463:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc3_);
                                                                                                addr464:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc4_);
                                                                                                   addr465:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc16_);
                                                                                                      §§push("");
                                                                                                      §§push(§_-UW§.§_-Hs§);
                                                                                                      §§push(_loc15_);
                                                                                                      if(_loc21_)
                                                                                                      {
                                                                                                         §§push(§§pop() * Math.cos(_loc17_));
                                                                                                      }
                                                                                                      §§push(_loc15_);
                                                                                                      if(_loc21_)
                                                                                                      {
                                                                                                         §§push(-§§pop());
                                                                                                         if(!_loc20_)
                                                                                                         {
                                                                                                            §§push(§§pop() * Math.sin(_loc17_));
                                                                                                         }
                                                                                                      }
                                                                                                      §§pop().§_-JY§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),20,0);
                                                                                                      §§push(_loc7_);
                                                                                                      if(_loc21_)
                                                                                                      {
                                                                                                         §§push(5);
                                                                                                         if(_loc21_ || this)
                                                                                                         {
                                                                                                            §§push(int(§§pop() + §§pop()));
                                                                                                            if(!_loc20_)
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc7_ = §§pop();
                                                                                                                  if(_loc20_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  continue loop18;
                                                                                                               }
                                                                                                               continue loop0;
                                                                                                               addr504:
                                                                                                            }
                                                                                                            continue loop5;
                                                                                                         }
                                                                                                         continue loop4;
                                                                                                      }
                                                                                                      continue loop5;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr424);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            addr514:
                                                         }
                                                         §§goto(addr504);
                                                      }
                                                      §§goto(addr437);
                                                   }
                                                   §§goto(addr465);
                                                }
                                                §§goto(addr464);
                                             }
                                             §§goto(addr463);
                                          }
                                          §§goto(addr461);
                                       }
                                       §§goto(addr459);
                                    }
                                    §§goto(addr457);
                                 }
                                 §§goto(addr456);
                              }
                              §§goto(addr437);
                           }
                           §§goto(addr406);
                        }
                        §§goto(addr453);
                     }
                     §§goto(addr435);
                  }
                  §§goto(addr409);
               }
               §§goto(addr514);
            }
            §§goto(addr436);
         }
      }
      
      protected function §_-XF§(param1:int) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1);
         if(_loc4_ || this)
         {
         }
         switch(§§pop())
         {
         }
         return §_-UW§.§_-vk§;
      }
      
      public function §_-ER§(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§_-Dz§ = null;
         var _loc2_:§_-Dz§ = null;
         var _loc3_:* = int(this.§_-z-§.length - 1);
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§_-z-§[_loc3_];
            if(!_loc5_)
            {
               §§push(_loc2_.§_-Rb§());
               if(_loc6_)
               {
                  if(§§pop())
                  {
                     if(_loc6_ || this)
                     {
                        §§push(this.§_-lx§(_loc2_,param1));
                        if(_loc6_ || this)
                        {
                           if(§§pop())
                           {
                              this.§_-Wm§(_loc3_,false,false,false);
                           }
                        }
                        else
                        {
                           addr96:
                           if(§§pop())
                           {
                              addr97:
                              _loc2_.§_-h7§(§_-6n§.§_-eb§);
                              if(!_loc5_)
                              {
                                 this.§_-Wm§(_loc3_,false,false,false);
                                 addr109:
                              }
                              §§goto(addr109);
                           }
                           else
                           {
                              §§push(_loc2_.isReadyToBeRemoved(param1));
                              if(_loc6_)
                              {
                                 addr115:
                                 if(§§pop())
                                 {
                                    _loc2_.§_-h7§(§_-6n§.§_-eb§);
                                    if(!(_loc6_ || _loc3_))
                                    {
                                       continue;
                                    }
                                    this.§_-Wm§(_loc3_,false,true,true);
                                 }
                                 else
                                 {
                                    addr136:
                                    if(_loc2_.§_-gt§())
                                    {
                                       addr137:
                                       _loc2_.update(param1);
                                       if(_loc5_ && _loc3_)
                                       {
                                          continue;
                                       }
                                    }
                                 }
                              }
                              §§goto(addr136);
                           }
                        }
                        addr147:
                        §§push(_loc3_);
                        if(_loc6_)
                        {
                           §§push(§§pop() - 1);
                        }
                        _loc3_ = §§pop();
                        continue;
                     }
                     §§goto(addr137);
                  }
                  else
                  {
                     §§push(_loc2_.§_-fw§());
                     if(!_loc5_)
                     {
                        if(§§pop())
                        {
                           this.§_-IA§(_loc2_,param1);
                           if(!_loc6_)
                           {
                              §§goto(addr97);
                           }
                        }
                        else
                        {
                           §§push(this.§_-bI§(_loc2_));
                           if(!(_loc5_ && _loc3_))
                           {
                              §§goto(addr96);
                           }
                           §§goto(addr115);
                        }
                        §§goto(addr147);
                     }
                  }
                  §§goto(addr136);
               }
               §§goto(addr96);
            }
            §§goto(addr109);
         }
         if(!_loc5_)
         {
            this.§_-Yx§();
            if(_loc6_)
            {
               §§goto(addr161);
            }
            §§goto(addr164);
         }
         addr161:
         if(this.§_-cY§)
         {
            addr164:
            (_loc4_ = this.§_-Ag§.activeObject).activateSpecialPower(this);
            if(_loc6_ || _loc2_)
            {
               this.§_-cY§ = false;
            }
         }
      }
      
      private function §_-Eb§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§_-Hj§ = null;
         for each(_loc1_ in this.§_-kP§)
         {
            if(!_loc4_)
            {
               this.§_-Ag§.§_-hA§.§_-fy§.§_-mH§(_loc1_.§_-WU§);
            }
         }
      }
      
      public function §_-xU§() : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§_-Dz§ = null;
         var _loc1_:int = 0;
         while(true)
         {
            if(_loc1_ >= this.§_-z-§.length)
            {
               return false;
            }
            _loc2_ = this.§_-z-§[_loc1_];
            if(!(_loc3_ && _loc3_))
            {
               §§push(_loc2_.explode());
               if(_loc3_ && _loc3_)
               {
                  break;
               }
               if(§§pop())
               {
                  if(!(_loc3_ && this))
                  {
                     return true;
                  }
               }
               else
               {
                  _loc1_++;
               }
            }
         }
         return §§pop();
      }
      
      public function §_-bI§(param1:§_-Dz§) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(Boolean(param1));
            §§push(Boolean(param1));
            if(!_loc2_)
            {
               if(§§pop())
               {
                  §§pop();
                  if(_loc3_)
                  {
                     addr26:
                     §§push(param1.§_-JZ§.§_-gz§() == §_-gs§.§_-AZ§);
                     if(!_loc2_)
                     {
                        addr37:
                        §§push(Boolean(!§§pop()));
                        if(Boolean(!§§pop()))
                        {
                           if(!(_loc2_ && this))
                           {
                              §§pop();
                              if(_loc3_ || _loc2_)
                              {
                                 §§goto(addr73);
                              }
                              §§goto(addr96);
                           }
                           §§goto(addr73);
                        }
                        §§goto(addr81);
                     }
                     §§goto(addr37);
                  }
                  addr73:
                  §§push(Boolean(this.§_-Ag§.§_-N7§.§_-Kr§(param1.§_-zq§().GetPosition().x,param1.§_-zq§().GetPosition().y)));
                  if(!(_loc2_ && this))
                  {
                     addr81:
                     if(§§pop())
                     {
                        if(!(_loc2_ && this))
                        {
                           addr96:
                           return true;
                        }
                     }
                     §§push(false);
                  }
                  return §§pop();
               }
            }
            §§goto(addr37);
         }
         §§goto(addr26);
      }
      
      public function §_-Wm§(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || param2)
         {
            if(param1 < 0)
            {
               if(!(_loc7_ && param2))
               {
                  §§goto(addr30);
               }
            }
            var _loc5_:§_-Dz§;
            if((_loc5_ = this.§_-z-§[param1]) == this.§_-Ag§.activeObject)
            {
               if(_loc6_)
               {
                  §§push(this.§_-Ag§);
                  if(_loc6_ || param3)
                  {
                     §§pop().activeObject = null;
                     addr55:
                     §§push(param2);
                     if(_loc6_ || param3)
                     {
                        if(§§pop())
                        {
                           if(!_loc7_)
                           {
                              addr68:
                              §§push(this.§_-Ag§);
                              §§push(_loc5_.§_-JZ§.score);
                              §§push(§_-vI§.§_-T7§);
                              §§push(true);
                              §§push(_loc5_.§_-zq§().GetPosition().x);
                              §§push(_loc5_.§_-zq§().GetPosition().y);
                              if(_loc6_)
                              {
                                 §§push(3);
                                 if(!_loc7_)
                                 {
                                    addr95:
                                    §§push(§§pop() - §§pop());
                                    §§push(§_-UW§.§_-yw§(_loc5_.§_-L1§));
                                 }
                                 §§pop().addScore(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                 addr100:
                                 §§push(param3);
                                 if(!_loc7_)
                                 {
                                    if(§§pop())
                                    {
                                       _loc5_.addDestructionParticles(this.§_-Ag§.particles);
                                    }
                                    §§push(param4);
                                    if(!_loc7_)
                                    {
                                       if(§§pop())
                                       {
                                          this.§_-kr§(_loc5_);
                                          if(_loc6_)
                                          {
                                             §§goto(addr118);
                                          }
                                          §§goto(addr135);
                                       }
                                       addr118:
                                       §§goto(addr120);
                                    }
                                    addr120:
                                    if(_loc5_.isTexture())
                                    {
                                       if(!_loc6_)
                                       {
                                       }
                                       §§goto(addr135);
                                    }
                                    this.§_-uM§.removeChild(_loc5_.sprite);
                                    if(!(_loc7_ && this))
                                    {
                                       addr135:
                                       _loc5_.dispose();
                                       §§goto(addr137);
                                    }
                                    addr137:
                                    _loc5_ = null;
                                    if(!(_loc7_ && param2))
                                    {
                                       this.§_-z-§[param1] = null;
                                       if(_loc6_)
                                       {
                                          this.§_-z-§.splice(param1,1);
                                       }
                                    }
                                    return;
                                 }
                                 §§goto(addr118);
                              }
                              §§goto(addr95);
                           }
                        }
                        §§goto(addr100);
                     }
                     §§goto(addr118);
                  }
                  §§goto(addr68);
               }
               §§goto(addr118);
            }
            §§goto(addr55);
         }
         addr30:
      }
      
      protected function §_-kr§(param1:§_-Dz§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §§push(param1.§_-zW§());
            if(!(_loc3_ && param1))
            {
               §§push(§§pop().toUpperCase() == "WHITE_EGG");
               if(!_loc3_)
               {
                  if(!§§pop())
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        addr43:
                        §§pop();
                        if(_loc2_ || param1)
                        {
                           §§goto(addr80);
                        }
                        §§goto(addr100);
                     }
                  }
                  if(§§pop())
                  {
                     if(_loc2_ || this)
                     {
                        addr80:
                        §§push(param1.§_-zW§());
                        if(_loc2_ || _loc3_)
                        {
                           §§push(§§pop().toUpperCase() == "TNT");
                        }
                        if(§§pop().toUpperCase() == §_-Ri§.§_-do§)
                        {
                           if(!_loc3_)
                           {
                              addr86:
                              this.addExplosions(§_-GP§.§_-Us§,param1.§_-zq§().GetPosition().x,param1.§_-zq§().GetPosition().y);
                              if(!_loc3_)
                              {
                                 addr100:
                              }
                           }
                           §§goto(addr100);
                        }
                        else
                        {
                           this.addExplosions(§_-GP§.§_-iT§,param1.§_-zq§().GetPosition().x,param1.§_-zq§().GetPosition().y);
                        }
                        return;
                        §§push(param1.§_-L1§);
                     }
                     §§goto(addr86);
                  }
                  §§goto(addr80);
               }
               §§goto(addr43);
            }
            §§goto(addr80);
         }
         §§goto(addr100);
      }
      
      public function §_-Nc§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            this.§_-Wm§(this.§_-z-§.indexOf(param1),param2,param3,param4);
         }
      }
      
      public function §_-lt§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            §§push(this.§_-uM§);
            if(!_loc4_)
            {
               §§push(param1);
               if(_loc3_ || param2)
               {
                  §§push(-§§pop());
                  if(!(_loc4_ && _loc3_))
                  {
                     §§goto(addr47);
                  }
                  §§goto(addr67);
               }
               addr47:
               §§pop().x = §§pop();
               if(_loc3_)
               {
                  addr52:
                  §§push(this.§_-uM§);
                  §§push(param2);
                  if(_loc3_ || param2)
                  {
                     addr67:
                     §§push(-§§pop());
                  }
                  §§pop().y = §§pop();
               }
               return;
            }
         }
         §§goto(addr52);
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§_-Dz§ = null;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§_-z-§.length)
            {
               return false;
            }
            _loc3_ = this.§_-z-§[_loc2_] as §_-Dz§;
            if(_loc4_)
            {
               §§push(Boolean(_loc3_));
               §§push(Boolean(_loc3_));
               if(!_loc5_)
               {
                  if(§§pop())
                  {
                     if(_loc4_)
                     {
                        §§pop();
                        addr44:
                        §§push(Boolean(_loc3_.§_-7H§()));
                        §§push(Boolean(_loc3_.§_-7H§()));
                        if(!(_loc5_ && this))
                        {
                           if(§§pop())
                           {
                              addr53:
                              §§pop();
                              if(_loc4_ || _loc3_)
                              {
                                 addr61:
                                 §§push(_loc3_.§_-Qm§);
                                 if(!_loc5_)
                                 {
                                    §§push(0);
                                    if(!_loc5_)
                                    {
                                       §§push(§§pop() > §§pop());
                                       if(!(_loc5_ && this))
                                       {
                                          addr83:
                                          if(§§pop())
                                          {
                                             if(_loc5_ && param1)
                                             {
                                                continue;
                                             }
                                             addr91:
                                             §§push(param1);
                                             if(!(_loc5_ && _loc2_))
                                             {
                                                §§push(!§§pop());
                                                §§push(!§§pop());
                                                if(_loc4_ || _loc2_)
                                                {
                                                   addr108:
                                                   if(!§§pop())
                                                   {
                                                      §§pop();
                                                      if(_loc5_)
                                                      {
                                                         continue;
                                                      }
                                                      §§push(_loc3_.§_-e7§);
                                                      if(_loc4_)
                                                      {
                                                         §§push(§§pop().mTryToBlink);
                                                         if(!_loc5_)
                                                         {
                                                            addr119:
                                                            §§push(0);
                                                            if(!(_loc5_ && _loc3_))
                                                            {
                                                               addr127:
                                                               §§push(§§pop() <= §§pop());
                                                               if(!_loc5_)
                                                               {
                                                                  addr131:
                                                                  if(§§pop())
                                                                  {
                                                                     §§pop();
                                                                     if(!(_loc4_ || _loc3_))
                                                                     {
                                                                        addr154:
                                                                     }
                                                                     addr145:
                                                                     if(_loc3_.§_-e7§.mTryToScream <= 0)
                                                                     {
                                                                        break;
                                                                     }
                                                                     addr155:
                                                                     _loc2_++;
                                                                     continue;
                                                                     return true;
                                                                     addr153:
                                                                  }
                                                                  §§goto(addr145);
                                                               }
                                                               §§goto(addr154);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr145);
                                                }
                                                §§goto(addr131);
                                             }
                                             §§goto(addr154);
                                          }
                                          §§goto(addr155);
                                       }
                                       §§goto(addr145);
                                    }
                                    §§goto(addr127);
                                 }
                                 §§goto(addr119);
                              }
                              §§goto(addr91);
                           }
                           §§goto(addr83);
                        }
                        §§goto(addr108);
                     }
                     §§goto(addr53);
                  }
                  §§goto(addr44);
               }
               §§goto(addr131);
            }
            §§goto(addr61);
         }
         §§goto(addr153);
      }
      
      public function §_-2G§(param1:Boolean = false) : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§_-Dz§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = int(this.§_-z-§.length - 1);
         while(true)
         {
            §§push(_loc3_);
            if(!(_loc5_ && param1))
            {
               if(§§pop() < 0)
               {
                  §§push(_loc2_);
                  break;
               }
               §§push(Boolean(_loc4_ = this.§_-z-§[_loc3_] as §_-Dz§));
               if(!_loc5_)
               {
                  §§push(§§pop());
                  if(_loc6_)
                  {
                     if(§§pop())
                     {
                        if(_loc6_)
                        {
                           §§pop();
                           if(!_loc6_)
                           {
                              continue;
                           }
                           §§push(_loc4_.§_-7H§());
                           if(!(_loc5_ && this))
                           {
                              addr58:
                              §§push(Boolean(§§pop()));
                              §§push(Boolean(§§pop()));
                              if(!(_loc5_ && param1))
                              {
                                 if(§§pop())
                                 {
                                    §§pop();
                                    §§push(_loc4_.§_-Qm§);
                                    if(_loc6_)
                                    {
                                       §§push(0);
                                       if(_loc6_ || this)
                                       {
                                          addr90:
                                          if(§§pop() > §§pop())
                                          {
                                             if(!(_loc5_ && _loc3_))
                                             {
                                                §§push(param1);
                                                if(_loc6_)
                                                {
                                                   §§push(!§§pop());
                                                   §§push(!§§pop());
                                                   if(_loc6_)
                                                   {
                                                      addr105:
                                                      if(!§§pop())
                                                      {
                                                         §§pop();
                                                         §§push(_loc4_.§_-e7§);
                                                         if(_loc6_)
                                                         {
                                                            §§push(§§pop().mTryToBlink);
                                                            if(!_loc5_)
                                                            {
                                                               addr114:
                                                               §§push(0);
                                                               if(!_loc5_)
                                                               {
                                                                  addr117:
                                                                  §§push(§§pop() <= §§pop());
                                                                  if(!(_loc5_ && this))
                                                                  {
                                                                     addr133:
                                                                     if(§§pop() && 0)
                                                                     {
                                                                        _loc2_++;
                                                                        addr135:
                                                                        §§push(_loc3_);
                                                                        if(_loc6_ || _loc3_)
                                                                        {
                                                                           §§push(§§pop() - 1);
                                                                        }
                                                                        _loc3_ = §§pop();
                                                                        continue;
                                                                     }
                                                                     §§goto(addr135);
                                                                  }
                                                               }
                                                               §§goto(addr133);
                                                               §§push(§§pop() <= §§pop());
                                                            }
                                                         }
                                                         §§goto(addr131);
                                                      }
                                                   }
                                                }
                                                §§goto(addr133);
                                             }
                                          }
                                          §§goto(addr135);
                                       }
                                       §§goto(addr117);
                                    }
                                    §§goto(addr114);
                                 }
                                 §§goto(addr90);
                              }
                              §§goto(addr105);
                           }
                           §§goto(addr133);
                        }
                     }
                     §§goto(addr58);
                  }
                  §§goto(addr133);
               }
               §§goto(addr90);
            }
            break;
         }
         return §§pop();
      }
      
      public function makePigsSmile(param1:Number = 1) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§_-Dz§ = null;
         var _loc2_:* = int(this.§_-z-§.length - 1);
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§_-z-§[_loc2_];
            if(_loc4_ || param1)
            {
               §§push(Boolean(_loc3_));
               if(!(_loc5_ && _loc2_))
               {
                  §§push(§§pop());
                  if(_loc4_ || param1)
                  {
                     if(§§pop())
                     {
                        if(!(_loc5_ && this))
                        {
                           §§pop();
                           if(!_loc5_)
                           {
                              §§push(_loc3_.§_-7H§());
                              if(_loc4_)
                              {
                                 addr77:
                                 §§push(Boolean(§§pop()));
                                 if(_loc4_)
                                 {
                                    addr81:
                                    addr82:
                                    if(§§pop())
                                    {
                                       if(!(_loc5_ && param1))
                                       {
                                          addr90:
                                          §§pop();
                                          if(_loc5_)
                                          {
                                             continue;
                                          }
                                          §§push(_loc3_.§_-Qm§ > 0);
                                       }
                                    }
                                    if(§§pop())
                                    {
                                       if(!_loc5_)
                                       {
                                          addr100:
                                          §§push(_loc3_.§_-e7§);
                                          §§push(§_-l9§.§_-ey§);
                                          if(_loc4_ || param1)
                                          {
                                             §§push(§§pop() * param1);
                                          }
                                          §§pop().mTryToScream = §§pop();
                                          if(!_loc5_)
                                          {
                                             addr116:
                                             §§push(_loc2_);
                                             if(_loc4_ || param1)
                                             {
                                                §§push(§§pop() - 1);
                                             }
                                             _loc2_ = §§pop();
                                          }
                                       }
                                       continue;
                                    }
                                    §§goto(addr116);
                                 }
                              }
                              §§goto(addr90);
                           }
                           §§goto(addr116);
                        }
                     }
                     §§goto(addr81);
                  }
                  §§goto(addr82);
               }
               §§goto(addr77);
            }
            §§goto(addr100);
         }
      }
      
      public function §_-EN§() : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§_-Dz§ = null;
         var _loc1_:int = this.§_-z-§.length - 1;
         while(true)
         {
            if(_loc1_ < 0)
            {
               return false;
            }
            _loc2_ = this.§_-z-§[_loc1_] as §_-Dz§;
            if(!(_loc3_ || _loc1_))
            {
               continue;
            }
            §§push(Boolean(_loc2_));
            if(!_loc4_)
            {
               §§push(§§pop());
               if(!_loc4_)
               {
                  if(§§pop())
                  {
                     §§pop();
                     if(!_loc3_)
                     {
                        continue;
                     }
                     §§push(_loc2_.§_-gt§());
                     if(_loc3_ || this)
                     {
                        §§push(Boolean(§§pop()));
                        if(!_loc3_)
                        {
                        }
                        addr85:
                        if(§§pop())
                        {
                           if(!(_loc4_ && _loc1_))
                           {
                              break;
                           }
                        }
                        continue;
                     }
                     §§goto(addr85);
                  }
                  §§push(§§pop());
               }
               if(§§pop())
               {
                  §§pop();
                  if(!(_loc4_ && _loc2_))
                  {
                     §§goto(addr85);
                     §§push(_loc2_.§_-Qm§ > 0);
                  }
                  break;
               }
            }
            §§goto(addr85);
         }
         return true;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§_-Dz§ = null;
         var _loc1_:* = int(this.§_-z-§.length - 1);
         while(true)
         {
            if(_loc1_ < 0)
            {
               return true;
            }
            _loc2_ = this.§_-z-§[_loc1_] as §_-Dz§;
            §§push(Boolean(_loc2_));
            §§push(Boolean(_loc2_));
            if(!_loc4_)
            {
               if(§§pop())
               {
                  if(!(_loc4_ && _loc2_))
                  {
                     §§pop();
                     if(!(_loc4_ && _loc2_))
                     {
                        §§push(_loc2_.§_-Qm§);
                        if(_loc3_)
                        {
                           §§push(0);
                           if(!_loc4_)
                           {
                              addr62:
                              §§push(Boolean(§§pop() > §§pop()));
                              if(!(_loc4_ && _loc2_))
                              {
                                 §§goto(addr71);
                              }
                              §§goto(addr153);
                           }
                           §§goto(addr158);
                        }
                        §§goto(addr157);
                     }
                     §§goto(addr118);
                  }
                  §§goto(addr62);
               }
               addr71:
               §§push(§§pop());
               if(_loc3_)
               {
                  addr74:
                  if(§§pop())
                  {
                     if(_loc3_)
                     {
                        §§pop();
                        if(_loc3_)
                        {
                           §§push(_loc2_.§_-1n§);
                           if(_loc3_ || _loc2_)
                           {
                              addr100:
                              if(§§pop() != §_-Pq§.§_-J-§)
                              {
                                 if(_loc3_ || _loc2_)
                                 {
                                    §§push(Boolean(_loc2_.§_-br§()));
                                    §§push(Boolean(_loc2_.§_-br§()));
                                    if(_loc3_)
                                    {
                                       §§goto(addr114);
                                    }
                                    §§goto(addr153);
                                 }
                                 break;
                              }
                              §§goto(addr178);
                           }
                           §§goto(addr181);
                        }
                        break;
                     }
                     §§goto(addr127);
                  }
                  §§goto(addr100);
               }
               addr114:
               if(§§pop())
               {
                  §§pop();
                  if(_loc3_)
                  {
                     addr118:
                     §§push(_loc2_.§_-AA§());
                     if(!(_loc4_ && _loc2_))
                     {
                        addr127:
                        §§push(!§§pop());
                     }
                  }
                  break;
               }
               if(§§pop())
               {
                  if(!(_loc4_ && this))
                  {
                     return false;
                  }
                  break;
               }
               §§push(_loc2_.§_-gt§());
               if(!_loc4_)
               {
                  §§push(Boolean(§§pop()));
                  if(_loc4_)
                  {
                     §§pop();
                     addr158:
                     addr157:
                  }
                  addr153:
                  if(§§pop())
                  {
                  }
                  §§goto(addr166);
               }
               addr166:
               if(§§pop())
               {
                  if(!_loc4_)
                  {
                     break;
                  }
               }
               else
               {
                  addr178:
                  §§push(_loc1_);
                  if(_loc3_)
                  {
                     addr181:
                     §§push(§§pop() - 1);
                  }
                  _loc1_ = §§pop();
               }
               continue;
               §§push(_loc2_.§_-Qm§ > 0);
               if(_loc3_ || this)
               {
                  §§goto(addr166);
               }
               §§goto(addr170);
            }
            §§goto(addr74);
         }
         addr170:
         false;
         return §§pop();
      }
      
      public function §_-Xy§(param1:Boolean = false) : §_-Dz§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:* = 0;
         var _loc6_:§_-Dz§ = null;
         if(_loc8_)
         {
            if(!this.isPigsAlive())
            {
               if(!(_loc7_ && param1))
               {
                  §§goto(addr31);
               }
            }
            var _loc2_:int = this.§_-z-§.length;
            §§push(1);
            if(_loc8_)
            {
               §§push(int(§§pop() + Math.random() * this.§_-2G§(param1)));
            }
            var _loc3_:* = §§pop();
            var _loc4_:int = 0;
            loop0:
            while(true)
            {
               §§push(_loc4_);
               loop1:
               while(true)
               {
                  §§push(_loc3_);
                  loop2:
                  while(§§pop() < §§pop())
                  {
                     §§push(0);
                     if(_loc8_ || this)
                     {
                        _loc5_ = §§pop();
                        if(_loc7_ && _loc2_)
                        {
                           continue loop0;
                        }
                        do
                        {
                           §§push(_loc5_);
                        }
                        while(_loc8_);
                        
                        continue loop1;
                        addr199:
                     }
                     while(true)
                     {
                        §§push(_loc2_);
                        if(!_loc8_)
                        {
                           continue loop2;
                        }
                        if(§§pop() >= §§pop())
                        {
                           if(!(_loc8_ || param1))
                           {
                              break loop2;
                           }
                           continue loop0;
                        }
                        §§push(Boolean(_loc6_ = this.§_-z-§[_loc5_]));
                        §§push(Boolean(_loc6_ = this.§_-z-§[_loc5_]));
                        if(_loc8_)
                        {
                           if(§§pop())
                           {
                              §§pop();
                              §§push(_loc6_.§_-7H§());
                              if(_loc8_)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                           }
                           §§push(§§pop());
                           if(!(_loc7_ && this))
                           {
                              if(§§pop())
                              {
                                 if(_loc8_ || _loc3_)
                                 {
                                    §§pop();
                                    §§push(_loc6_.§_-Qm§);
                                    if(_loc8_)
                                    {
                                       §§push(0);
                                       if(_loc8_)
                                       {
                                          §§push(§§pop() > §§pop());
                                          if(_loc8_ || param1)
                                          {
                                             addr131:
                                             if(§§pop())
                                             {
                                                addr134:
                                                §§push(!param1);
                                                §§push(!param1);
                                                if(_loc8_ || _loc3_)
                                                {
                                                   addr142:
                                                   if(!§§pop())
                                                   {
                                                      §§pop();
                                                      if(!_loc7_)
                                                      {
                                                         §§push(_loc6_.§_-e7§);
                                                         if(!(_loc7_ && this))
                                                         {
                                                            addr178:
                                                            §§push(§§pop().mTryToBlink);
                                                            if(_loc8_ || _loc3_)
                                                            {
                                                               §§push(0);
                                                               if(!(_loc7_ && _loc2_))
                                                               {
                                                                  addr180:
                                                                  if(§§pop() <= §§pop() && _loc6_.§_-e7§)
                                                                  {
                                                                     _loc4_++;
                                                                     if(!(_loc7_ && this))
                                                                     {
                                                                        if(_loc4_ >= _loc3_)
                                                                        {
                                                                           if(_loc8_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           addr198:
                                                                           _loc5_++;
                                                                        }
                                                                        §§goto(addr198);
                                                                     }
                                                                     §§goto(addr199);
                                                                  }
                                                                  §§goto(addr198);
                                                               }
                                                               addr179:
                                                               §§goto(addr180);
                                                               §§push(§§pop() <= §§pop());
                                                            }
                                                            §§goto(addr179);
                                                            §§push(0);
                                                         }
                                                         §§goto(addr178);
                                                         §§push(§§pop().mTryToScream);
                                                      }
                                                      break;
                                                   }
                                                }
                                                §§goto(addr180);
                                             }
                                             §§goto(addr198);
                                          }
                                          §§goto(addr134);
                                       }
                                       §§goto(addr179);
                                    }
                                    §§goto(addr178);
                                 }
                                 §§goto(addr134);
                              }
                              §§goto(addr131);
                           }
                           §§goto(addr180);
                        }
                        §§goto(addr142);
                     }
                     return _loc6_;
                  }
                  return null;
               }
            }
         }
         addr31:
         return null;
      }
      
      public function §_-59§() : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:* = 0;
         var _loc2_:int = this.§_-z-§.length - 1;
         while(true)
         {
            §§push(_loc2_);
            if(_loc3_ || _loc1_)
            {
               §§push(0);
               if(!(_loc4_ && _loc3_))
               {
                  while(true)
                  {
                     if(§§pop() >= §§pop())
                     {
                        continue;
                     }
                     if(!(_loc4_ && _loc1_))
                     {
                        addr146:
                        §§push(_loc1_);
                        if(!(_loc4_ && _loc2_))
                        {
                           break;
                        }
                        §§goto(addr176);
                     }
                     addr176:
                     return §§pop();
                     §§push(_loc1_);
                  }
                  §§push(this.§_-Ag§.slingshot.§_-59§());
               }
               §§goto(addr158);
            }
            break;
         }
         _loc1_ = §§pop();
         §§goto(addr175);
      }
      
      public function §_-aI§(param1:§_-Dz§, param2:§_-Dz§) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(Boolean(param1.§_-gt§()));
         §§push(Boolean(param1.§_-gt§()));
         if(!(_loc4_ && param2))
         {
            if(§§pop())
            {
               if(_loc3_)
               {
                  §§pop();
                  §§push(Boolean(param2.§_-gt§()));
                  if(_loc3_ || param2)
                  {
                     addr45:
                     if(§§pop())
                     {
                        return true;
                     }
                     §§push(param1.§_-bU§());
                  }
                  §§push(!§§pop());
                  if(!(_loc4_ && this))
                  {
                     addr66:
                     if(§§pop())
                     {
                        §§pop();
                        §§push(param2.§_-bU§());
                        if(!_loc4_)
                        {
                           addr79:
                           §§push(!§§pop());
                           if(!_loc4_)
                           {
                              addr82:
                              if(§§pop())
                              {
                                 return true;
                              }
                              else
                              {
                                 §§goto(addr86);
                              }
                           }
                        }
                        return §§pop();
                     }
                     §§goto(addr82);
                  }
                  §§goto(addr79);
               }
               addr86:
               return false;
            }
            §§goto(addr45);
         }
         §§goto(addr66);
      }
      
      public function §_-5Q§(param1:b2Fixture, param2:b2Fixture) : void
      {
         var _loc25_:Boolean = true;
         var _loc26_:Boolean = false;
         var _loc5_:§_-Dz§ = null;
         var _loc21_:* = NaN;
         var _loc22_:* = NaN;
         var _loc3_:§_-Dz§ = param1.GetBody().GetUserData() as §_-Dz§;
         var _loc4_:§_-Dz§ = param2.GetBody().GetUserData() as §_-Dz§;
         for each(_loc5_ in [_loc3_,_loc4_])
         {
            if(_loc5_.§_-v2§)
            {
               if(!(_loc26_ && this))
               {
                  return;
               }
            }
         }
         if(!(_loc26_ && param2))
         {
            §§push(this.mMightyEagleAdded);
            if(!_loc26_)
            {
               if(§§pop())
               {
                  if(!(_loc26_ && param2))
                  {
                     §§push(Boolean(_loc3_.§_-fw§()));
                     §§push(Boolean(_loc3_.§_-fw§()));
                     if(!(_loc26_ && _loc3_))
                     {
                        if(!§§pop())
                        {
                           §§pop();
                           §§push(Boolean(this.mMightyEagleAdded));
                           §§push(Boolean(this.mMightyEagleAdded));
                           if(_loc25_ || param2)
                           {
                              addr106:
                              if(§§pop())
                              {
                                 §§pop();
                                 if(_loc25_)
                                 {
                                    addr113:
                                    if(_loc4_.§_-7H§())
                                    {
                                       §§push(_loc4_);
                                       §§push(_loc4_.§_-FF§);
                                       if(!(_loc26_ && this))
                                       {
                                          §§push(§§pop() * 2);
                                       }
                                       §§pop().applyDamage(§§pop(),true,true,true);
                                       if(_loc25_ || param1)
                                       {
                                          §§goto(addr137);
                                       }
                                    }
                                 }
                                 §§push(Boolean(_loc4_.§_-fw§()));
                                 §§push(Boolean(_loc4_.§_-fw§()));
                                 if(!_loc26_)
                                 {
                                    addr151:
                                    if(!§§pop())
                                    {
                                       §§pop();
                                       §§push(Boolean(this.mMightyEagleAdded));
                                       if(!(_loc26_ && this))
                                       {
                                          §§push(§§pop());
                                          if(!_loc26_)
                                          {
                                             addr166:
                                             if(§§pop())
                                             {
                                                §§pop();
                                                addr168:
                                                §§push(_loc3_.§_-7H§());
                                                if(!_loc26_)
                                                {
                                                   addr173:
                                                   if(§§pop())
                                                   {
                                                      if(!_loc26_)
                                                      {
                                                         §§push(_loc3_);
                                                         §§push(_loc3_.§_-FF§);
                                                         if(_loc25_)
                                                         {
                                                            §§push(§§pop() * 2);
                                                         }
                                                         §§pop().applyDamage(§§pop(),true,true,true);
                                                         if(!(_loc25_ || this))
                                                         {
                                                            addr230:
                                                            §§push(this.mMightyEagleTimer);
                                                            if(_loc25_ || param2)
                                                            {
                                                               §§push(§§pop() == §_-EQ§.§_-O1§);
                                                               if(_loc25_ || param2)
                                                               {
                                                                  addr249:
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc25_)
                                                                     {
                                                                        §§push(_loc3_.§_-Rb§());
                                                                        if(_loc25_ || param1)
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                           if(_loc25_)
                                                                           {
                                                                              addr265:
                                                                              if(!§§pop())
                                                                              {
                                                                                 §§pop();
                                                                                 addr270:
                                                                                 if(_loc4_.§_-Rb§())
                                                                                 {
                                                                                    if(!_loc26_)
                                                                                    {
                                                                                       addr273:
                                                                                       this.mMightyEagleTimer = 0;
                                                                                       addr276:
                                                                                       if(!this.§_-aI§(_loc3_,_loc4_))
                                                                                       {
                                                                                          addr284:
                                                                                          var _loc6_:Number = 10;
                                                                                          §§push(_loc3_.§_-pj§(_loc4_.§_-zW§()));
                                                                                          if(!_loc26_)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                          var _loc7_:* = §§pop();
                                                                                          §§push(_loc3_.§_-tm§(_loc4_.§_-zW§()));
                                                                                          if(_loc25_ || this)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                          var _loc8_:* = §§pop();
                                                                                          §§push(_loc4_.§_-pj§(_loc3_.§_-zW§()));
                                                                                          if(_loc25_ || this)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                          var _loc9_:* = §§pop();
                                                                                          §§push(_loc4_.§_-tm§(_loc3_.§_-zW§()));
                                                                                          if(!_loc26_)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                          var _loc10_:* = §§pop();
                                                                                          §§push(_loc3_.§_-zq§().GetMass());
                                                                                          if(_loc25_ || _loc3_)
                                                                                          {
                                                                                             §§push(_loc3_.§_-zq§());
                                                                                             if(_loc25_ || param2)
                                                                                             {
                                                                                                §§push(§§pop().GetLinearVelocity().x);
                                                                                                if(!_loc26_)
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(_loc25_)
                                                                                                   {
                                                                                                      addr355:
                                                                                                      §§push(_loc4_.§_-zq§().GetMass());
                                                                                                      if(_loc25_ || _loc3_)
                                                                                                      {
                                                                                                         addr363:
                                                                                                         §§push(§§pop() * _loc4_.§_-zq§().GetLinearVelocity().x);
                                                                                                      }
                                                                                                      §§push(§§pop() - §§pop());
                                                                                                      if(!_loc26_)
                                                                                                      {
                                                                                                         addr371:
                                                                                                         §§push(Number(§§pop()));
                                                                                                      }
                                                                                                      var _loc11_:* = §§pop();
                                                                                                      §§push(_loc3_.§_-zq§().GetMass());
                                                                                                      if(_loc25_)
                                                                                                      {
                                                                                                         §§push(_loc3_.§_-zq§());
                                                                                                         if(!_loc26_)
                                                                                                         {
                                                                                                            §§push(§§pop().GetLinearVelocity().y);
                                                                                                            if(_loc25_)
                                                                                                            {
                                                                                                               addr408:
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(!(_loc26_ && param1))
                                                                                                               {
                                                                                                                  addr396:
                                                                                                                  §§push(_loc4_.§_-zq§().GetMass());
                                                                                                                  if(!_loc26_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * _loc4_.§_-zq§().GetLinearVelocity().y);
                                                                                                                  }
                                                                                                               }
                                                                                                               var _loc12_:* = §§pop();
                                                                                                               §§push(Math.sqrt(_loc11_ * _loc11_ + _loc12_ * _loc12_) / _loc6_);
                                                                                                               if(_loc25_)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                               }
                                                                                                               var _loc13_:* = §§pop();
                                                                                                               §§push(_loc7_);
                                                                                                               if(_loc25_ || param1)
                                                                                                               {
                                                                                                                  §§push(§§pop() * _loc13_);
                                                                                                                  if(!(_loc26_ && param2))
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                  }
                                                                                                               }
                                                                                                               var _loc14_:* = §§pop();
                                                                                                               §§push(_loc9_);
                                                                                                               if(!_loc26_)
                                                                                                               {
                                                                                                                  §§push(§§pop() * _loc13_);
                                                                                                                  if(_loc25_ || param1)
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                  }
                                                                                                               }
                                                                                                               var _loc15_:* = §§pop();
                                                                                                               var _loc16_:Number = Math.max(0,_loc3_.§_-Qm§);
                                                                                                               var _loc17_:Number = Math.max(0,_loc4_.§_-Qm§);
                                                                                                               §§push(_loc3_.applyDamage(_loc15_,true,_loc4_.§_-gt§(),_loc17_ == _loc4_.§_-FF§));
                                                                                                               if(!_loc26_)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                               }
                                                                                                               var _loc18_:* = §§pop();
                                                                                                               §§push(_loc4_.applyDamage(_loc14_,true,_loc3_.§_-gt§(),_loc16_ == _loc3_.§_-FF§));
                                                                                                               if(!(_loc26_ && param1))
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                               }
                                                                                                               var _loc19_:* = §§pop();
                                                                                                               var _loc20_:Boolean;
                                                                                                               §§push(_loc20_ = false);
                                                                                                               if(!(_loc26_ && param2))
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     §_-54§.log("--- NEW COLLISION ---");
                                                                                                                     if(_loc25_ || param2)
                                                                                                                     {
                                                                                                                        §§push(§_-54§);
                                                                                                                        §§push("Mat Dam Factor1 = " + _loc7_);
                                                                                                                        if(_loc25_ || _loc3_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + " Mat Dam Factor2 = ");
                                                                                                                           §§push(_loc9_);
                                                                                                                           if(!_loc26_)
                                                                                                                           {
                                                                                                                              addr549:
                                                                                                                              §§push(§§pop() + §§pop() + " Mat Vel Factor1 = ");
                                                                                                                              if(_loc25_ || _loc3_)
                                                                                                                              {
                                                                                                                                 addr565:
                                                                                                                                 §§push(_loc8_);
                                                                                                                                 if(!_loc26_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                 }
                                                                                                                                 §§pop().log(§§pop() + §§pop());
                                                                                                                                 if(!(_loc26_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    addr574:
                                                                                                                                    §§push(§_-54§);
                                                                                                                                    §§push("Object1: " + _loc3_.§_-L1§ + " force1 = ");
                                                                                                                                    §§push(_loc14_);
                                                                                                                                    if(_loc25_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + §§pop() + " obj health1 = ");
                                                                                                                                       §§push(_loc16_);
                                                                                                                                       if(_loc25_)
                                                                                                                                       {
                                                                                                                                          addr590:
                                                                                                                                          §§push(§§pop() + §§pop() + " new health1 = ");
                                                                                                                                          §§push(_loc18_);
                                                                                                                                       }
                                                                                                                                       §§pop().log(§§pop() + §§pop());
                                                                                                                                       §§push(§_-54§);
                                                                                                                                       §§push("Object2: " + _loc4_.§_-L1§ + " force2 = ");
                                                                                                                                       §§push(_loc15_);
                                                                                                                                       if(_loc25_ || this)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + §§pop() + " obj health2 = ");
                                                                                                                                          if(_loc25_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc17_);
                                                                                                                                             if(!_loc26_)
                                                                                                                                             {
                                                                                                                                                addr619:
                                                                                                                                                §§push(§§pop() + §§pop() + " new health2 = ");
                                                                                                                                                §§push(_loc19_);
                                                                                                                                             }
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                          }
                                                                                                                                          §§pop().log(§§pop());
                                                                                                                                          addr625:
                                                                                                                                          §§push(_loc18_);
                                                                                                                                          §§push(0);
                                                                                                                                          if(_loc25_)
                                                                                                                                          {
                                                                                                                                             if(§§pop() <= §§pop())
                                                                                                                                             {
                                                                                                                                                §§push(_loc15_);
                                                                                                                                                if(!(_loc26_ && this))
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() - _loc16_);
                                                                                                                                                   §§push(_loc15_);
                                                                                                                                                   if(!_loc26_)
                                                                                                                                                   {
                                                                                                                                                      §§push(Number(§§pop() / §§pop()));
                                                                                                                                                      §§push(Number(§§pop() / §§pop()));
                                                                                                                                                      if(!_loc26_)
                                                                                                                                                      {
                                                                                                                                                         _loc21_ = §§pop();
                                                                                                                                                         if(!(_loc26_ && _loc3_))
                                                                                                                                                         {
                                                                                                                                                            §§push(Number(§§pop() * _loc10_));
                                                                                                                                                            if(!(_loc26_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr668);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr826);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr812);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr784);
                                                                                                                                                }
                                                                                                                                                addr668:
                                                                                                                                                §§push(_loc21_ = §§pop());
                                                                                                                                                §§push(1);
                                                                                                                                                if(!(_loc26_ && this))
                                                                                                                                                {
                                                                                                                                                   addr676:
                                                                                                                                                   if(§§pop() > §§pop())
                                                                                                                                                   {
                                                                                                                                                      addr677:
                                                                                                                                                      §§push(1);
                                                                                                                                                      if(_loc25_)
                                                                                                                                                      {
                                                                                                                                                         _loc21_ = Number(§§pop());
                                                                                                                                                         if(_loc25_)
                                                                                                                                                         {
                                                                                                                                                            addr684:
                                                                                                                                                            §§push(_loc20_);
                                                                                                                                                            if(_loc25_ || param1)
                                                                                                                                                            {
                                                                                                                                                               if(§§pop())
                                                                                                                                                               {
                                                                                                                                                                  if(_loc25_)
                                                                                                                                                                  {
                                                                                                                                                                     addr695:
                                                                                                                                                                     §§push(§_-54§);
                                                                                                                                                                     §§push(_loc3_.§_-L1§ + " is killed. Speed Multiplier for ");
                                                                                                                                                                     if(!_loc26_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() + _loc4_.§_-L1§);
                                                                                                                                                                        if(_loc25_ || param2)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() + " is ");
                                                                                                                                                                           if(_loc25_ || this)
                                                                                                                                                                           {
                                                                                                                                                                           }
                                                                                                                                                                           addr723:
                                                                                                                                                                           §§pop().log(§§pop());
                                                                                                                                                                           if(_loc25_ || this)
                                                                                                                                                                           {
                                                                                                                                                                              addr731:
                                                                                                                                                                              §§push(_loc4_);
                                                                                                                                                                              §§push(§§findproperty(b2Vec2));
                                                                                                                                                                              §§push(_loc4_.§_-zq§().GetLinearVelocity().x);
                                                                                                                                                                              if(!(_loc26_ && _loc3_))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc21_);
                                                                                                                                                                                 if(_loc25_ || _loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr753:
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                    §§push(_loc4_.§_-zq§().GetLinearVelocity().y);
                                                                                                                                                                                    if(_loc25_ || _loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() * _loc21_);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§pop().§_-Io§(new §§pop().b2Vec2(§§pop(),§§pop()));
                                                                                                                                                                                 addr768:
                                                                                                                                                                                 §§push(_loc19_);
                                                                                                                                                                                 if(!_loc26_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(0);
                                                                                                                                                                                    if(_loc25_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr774);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr821);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr826);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr753);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr775);
                                                                                                                                                                        }
                                                                                                                                                                        §§push(§§pop() + _loc21_);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr723);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr863);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr731);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr826);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr695);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr825);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr684);
                                                                                                                                                }
                                                                                                                                                addr774:
                                                                                                                                                if(§§pop() <= §§pop())
                                                                                                                                                {
                                                                                                                                                   addr775:
                                                                                                                                                   §§push(_loc14_);
                                                                                                                                                   if(!(_loc26_ && param1))
                                                                                                                                                   {
                                                                                                                                                      addr784:
                                                                                                                                                      §§push(Number((§§pop() - _loc17_) / _loc14_));
                                                                                                                                                      if(_loc25_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc22_ = §§pop());
                                                                                                                                                         if(_loc25_ || this)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * _loc8_);
                                                                                                                                                            if(!_loc25_)
                                                                                                                                                            {
                                                                                                                                                            }
                                                                                                                                                            addr826:
                                                                                                                                                            _loc22_ = §§pop();
                                                                                                                                                            if(_loc20_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§_-54§);
                                                                                                                                                               §§push(_loc4_.§_-L1§ + " is killed. Speed Multiplier for ");
                                                                                                                                                               if(_loc25_ || _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() + _loc3_.§_-L1§);
                                                                                                                                                                  if(_loc25_ || _loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() + " is ");
                                                                                                                                                                     if(_loc25_ || _loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        addr860:
                                                                                                                                                                        §§push(§§pop() + _loc22_);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§pop().log(§§pop());
                                                                                                                                                                  addr863:
                                                                                                                                                                  §§push(_loc3_);
                                                                                                                                                                  §§push(§§findproperty(b2Vec2));
                                                                                                                                                                  §§push(_loc3_.§_-zq§().GetLinearVelocity().x);
                                                                                                                                                                  if(!(_loc26_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc22_);
                                                                                                                                                                     if(!_loc26_)
                                                                                                                                                                     {
                                                                                                                                                                        addr880:
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                        §§push(_loc3_.§_-zq§().GetLinearVelocity().y);
                                                                                                                                                                        if(_loc25_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() * _loc22_);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§pop().§_-Io§(new §§pop().b2Vec2(§§pop(),§§pop()));
                                                                                                                                                                     §§goto(addr897);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr880);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr860);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr863);
                                                                                                                                                         }
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                         if(_loc25_ || param1)
                                                                                                                                                         {
                                                                                                                                                            addr812:
                                                                                                                                                            §§push(_loc22_ = §§pop());
                                                                                                                                                            if(_loc26_ && this)
                                                                                                                                                            {
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr826);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr821:
                                                                                                                                                      if(§§pop() > 1)
                                                                                                                                                      {
                                                                                                                                                         if(_loc25_)
                                                                                                                                                         {
                                                                                                                                                            addr825:
                                                                                                                                                            §§goto(addr826);
                                                                                                                                                            §§push(Number(1));
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr863);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr826);
                                                                                                                                                }
                                                                                                                                                addr897:
                                                                                                                                                return;
                                                                                                                                             }
                                                                                                                                             §§goto(addr768);
                                                                                                                                          }
                                                                                                                                          §§goto(addr676);
                                                                                                                                       }
                                                                                                                                       §§goto(addr619);
                                                                                                                                    }
                                                                                                                                    §§goto(addr590);
                                                                                                                                 }
                                                                                                                                 §§goto(addr677);
                                                                                                                              }
                                                                                                                              §§push(§§pop() + " Mat Vel Factor2 = ");
                                                                                                                              §§push(_loc10_);
                                                                                                                           }
                                                                                                                           §§goto(addr565);
                                                                                                                        }
                                                                                                                        §§goto(addr549);
                                                                                                                     }
                                                                                                                     §§goto(addr574);
                                                                                                                  }
                                                                                                                  §§goto(addr625);
                                                                                                               }
                                                                                                               §§goto(addr826);
                                                                                                            }
                                                                                                            §§push(§§pop() - §§pop());
                                                                                                            if(!_loc26_)
                                                                                                            {
                                                                                                               §§goto(addr408);
                                                                                                               §§push(Number(§§pop()));
                                                                                                            }
                                                                                                            §§goto(addr408);
                                                                                                         }
                                                                                                         §§goto(addr396);
                                                                                                      }
                                                                                                      §§goto(addr408);
                                                                                                   }
                                                                                                   §§goto(addr371);
                                                                                                }
                                                                                                §§goto(addr363);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr355);
                                                                                       }
                                                                                    }
                                                                                    return;
                                                                                 }
                                                                                 §§goto(addr276);
                                                                              }
                                                                              §§goto(addr270);
                                                                           }
                                                                        }
                                                                        §§goto(addr276);
                                                                     }
                                                                     §§goto(addr270);
                                                                  }
                                                                  §§goto(addr276);
                                                               }
                                                               §§goto(addr270);
                                                            }
                                                            §§goto(addr284);
                                                         }
                                                      }
                                                      return;
                                                   }
                                                   §§goto(addr276);
                                                }
                                                else
                                                {
                                                   addr213:
                                                   §§push(§§pop());
                                                   if(!(_loc26_ && this))
                                                   {
                                                      if(§§pop())
                                                      {
                                                         §§pop();
                                                         if(_loc25_ || this)
                                                         {
                                                            §§goto(addr230);
                                                         }
                                                         §§goto(addr273);
                                                      }
                                                      §§goto(addr249);
                                                   }
                                                }
                                             }
                                             §§goto(addr173);
                                          }
                                          §§goto(addr265);
                                       }
                                       §§goto(addr270);
                                    }
                                    §§goto(addr173);
                                 }
                                 §§goto(addr166);
                              }
                              §§goto(addr113);
                           }
                           §§goto(addr151);
                        }
                        §§goto(addr113);
                     }
                     §§goto(addr106);
                  }
                  §§goto(addr168);
               }
               else
               {
                  §§push(this.mSardineCanAdded);
                  if(_loc25_ || param1)
                  {
                     §§push(Boolean(§§pop()));
                     if(!(_loc26_ && _loc3_))
                     {
                        §§goto(addr213);
                     }
                     §§goto(addr249);
                  }
               }
               §§goto(addr270);
            }
            §§goto(addr173);
         }
         addr137:
      }
      
      public function §_-hd§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§_-Dz§ = null;
         var _loc1_:* = int(this.§_-z-§.length - 1);
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§_-z-§[_loc1_] as §_-Dz§;
            if(!_loc4_)
            {
               §§push(_loc2_ == null);
               if(_loc3_ || _loc2_)
               {
                  §§push(!§§pop());
                  if(!(_loc4_ && _loc2_))
                  {
                     if(§§pop())
                     {
                        if(!_loc4_)
                        {
                           §§pop();
                           if(_loc4_)
                           {
                              continue;
                           }
                           §§push(_loc2_.§_-7H§());
                           if(!_loc4_)
                           {
                              addr70:
                              §§push(Boolean(§§pop()));
                           }
                        }
                     }
                     if(§§pop())
                     {
                        if(!(_loc3_ || this))
                        {
                           continue;
                        }
                        addr79:
                        this.§_-Wm§(_loc1_,true,true,true);
                        if(!_loc3_)
                        {
                           continue;
                        }
                     }
                     §§push(_loc1_);
                     if(!_loc4_)
                     {
                        §§push(§§pop() - 1);
                     }
                     _loc1_ = §§pop();
                     continue;
                  }
               }
               §§goto(addr70);
            }
            §§goto(addr79);
         }
      }
      
      public function §_-vK§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§_-Dz§ = null;
         var _loc1_:* = int(this.§_-z-§.length - 1);
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§_-z-§[_loc1_] as §_-Dz§;
            if(!_loc4_)
            {
               §§push(_loc2_ == null);
               if(_loc3_)
               {
                  §§push(!§§pop());
                  if(!_loc4_)
                  {
                     if(§§pop())
                     {
                        if(_loc3_ || _loc3_)
                        {
                           §§pop();
                           if(_loc3_ || this)
                           {
                              §§push(_loc2_.§_-rY§());
                              if(_loc3_)
                              {
                                 addr71:
                                 addr70:
                                 if(§§pop())
                                 {
                                    if(_loc4_ && _loc1_)
                                    {
                                       continue;
                                    }
                                 }
                                 §§push(_loc1_);
                                 if(_loc3_ || _loc2_)
                                 {
                                    §§push(§§pop() - 1);
                                 }
                                 _loc1_ = §§pop();
                                 continue;
                              }
                              §§goto(addr71);
                           }
                           this.§_-Wm§(_loc1_,true,true,true);
                           if(_loc4_ && _loc2_)
                           {
                              continue;
                           }
                           §§goto(addr71);
                        }
                     }
                     §§goto(addr71);
                  }
               }
               §§goto(addr70);
            }
            §§goto(addr71);
         }
      }
      
      public function §_-y6§() : int
      {
         return this.§_-z-§.length;
      }
      
      public function §_-NG§(param1:§_-Wv§) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:§_-Dz§ = null;
         var _loc5_:§_-1E§ = null;
         var _loc6_:§_-Hj§ = null;
         var _loc2_:* = Number(0);
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc7_ && _loc3_))
            {
               if(§§pop() >= this.§_-z-§.length)
               {
                  §§push(Number(0));
                  break;
               }
               §§push((_loc4_ = this.§_-z-§[_loc2_]).§_-Yz§);
               if(_loc8_)
               {
                  if(!§§pop())
                  {
                     if(_loc7_ && _loc3_)
                     {
                        addr52:
                     }
                  }
                  else
                  {
                     addr49:
                     if(_loc4_.isGround())
                     {
                        if(!_loc8_)
                        {
                           continue;
                        }
                        §§goto(addr52);
                     }
                     else
                     {
                        (_loc5_ = new §_-1E§()).angle = _loc4_.§_-Js§();
                        if(_loc8_ || this)
                        {
                           _loc5_.id = _loc4_.§_-L1§;
                           if(!_loc7_)
                           {
                              _loc5_.x = _loc4_.§_-zq§().GetPosition().x;
                              if(_loc8_)
                              {
                                 _loc5_.y = _loc4_.§_-zq§().GetPosition().y;
                                 if(!_loc8_)
                                 {
                                 }
                                 addr94:
                                 §§push(_loc2_);
                                 if(_loc8_ || this)
                                 {
                                    §§push(§§pop() + 1);
                                    if(!_loc7_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 _loc2_ = §§pop();
                                 continue;
                              }
                              param1.§_-yZ§.push(_loc5_);
                           }
                        }
                     }
                  }
                  §§goto(addr94);
               }
               §§goto(addr49);
            }
            break;
         }
         var _loc3_:* = §§pop();
         if(_loc8_)
         {
            while(_loc3_ < this.§_-kP§.length)
            {
               (_loc6_ = new §_-Hj§(this.§_-kP§[_loc3_].type,this.§_-kP§[_loc3_].index1,this.§_-kP§[_loc3_].index2)).backAndForth = this.§_-kP§[_loc3_].backAndForth;
               if(_loc8_)
               {
                  _loc6_.collideConnected = this.§_-kP§[_loc3_].collideConnected;
               }
               _loc6_.limit = this.§_-kP§[_loc3_].limit;
               _loc6_.lowerLimit = this.§_-kP§[_loc3_].lowerLimit;
               _loc6_.maxTorque = this.§_-kP§[_loc3_].maxTorque;
               _loc6_.motor = this.§_-kP§[_loc3_].motor;
               _loc6_.motorSpeed = this.§_-kP§[_loc3_].motorSpeed;
               _loc6_.upperLimit = this.§_-kP§[_loc3_].upperLimit;
               _loc6_.p1 = this.§_-kP§[_loc3_].p1;
               _loc6_.p2 = this.§_-kP§[_loc3_].p2;
               param1.§_-kP§.push(_loc6_);
               if(!(_loc7_ && _loc2_))
               {
                  §§push(_loc3_);
                  if(!_loc7_)
                  {
                     §§push(§§pop() + 1);
                     if(!(_loc7_ && _loc3_))
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  _loc3_ = §§pop();
               }
            }
         }
      }
      
      public function §_-I-§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 0;
         while(this.§_-z-§.length > _loc1_)
         {
            if(this.§_-z-§[_loc1_].isGround())
            {
               if(!_loc3_)
               {
                  _loc1_++;
                  if(_loc3_ && this)
                  {
                     break;
                  }
               }
            }
            else
            {
               this.§_-Nc§(this.§_-z-§[_loc1_]);
               if(!_loc2_)
               {
                  break;
               }
            }
         }
      }
      
      public function §_-Ys§(param1:Point, param2:Point) : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Array = new Array();
         var _loc4_:Number = 0;
         loop0:
         while(true)
         {
            §§push(_loc4_);
            while(§§pop() < this.§_-z-§.length)
            {
               if(this.§_-z-§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
               {
                  if(_loc6_)
                  {
                     _loc3_.push(this.§_-z-§[_loc4_]);
                     if(!(_loc6_ || _loc3_))
                     {
                        break;
                     }
                  }
                  break;
               }
               §§push(_loc4_);
               if(_loc6_)
               {
                  §§push(§§pop() + 1);
                  if(_loc6_)
                  {
                     §§push(Number(§§pop()));
                     if(_loc6_ || param1)
                     {
                        continue loop0;
                     }
                     continue;
                  }
               }
               continue loop0;
            }
            addr93:
            return _loc3_;
         }
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§_-aA§ = param1;
            if(_loc4_ || this)
            {
               addr26:
               this.§_-sb§(param1);
            }
            var _loc2_:Number = 0;
            loop0:
            while(true)
            {
               §§push(_loc2_);
               while(§§pop() < this.§_-z-§.length)
               {
                  if(this.§_-z-§[_loc2_].isTexture())
                  {
                     if(_loc4_ || param1)
                     {
                        this.§_-z-§[_loc2_].sprite.visible = !this.§_-aA§;
                        if(!_loc4_)
                        {
                           break;
                        }
                     }
                  }
                  §§push(_loc2_);
                  if(_loc4_)
                  {
                     §§push(§§pop() + 1);
                     if(_loc4_)
                     {
                        §§push(Number(§§pop()));
                        if(!_loc3_)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
               addr94:
               return;
            }
         }
         §§goto(addr26);
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§_-Ty§ = param1;
         }
      }
      
      public function §_-Jj§() : Boolean
      {
         return this.§_-Ty§;
      }
   }
}
