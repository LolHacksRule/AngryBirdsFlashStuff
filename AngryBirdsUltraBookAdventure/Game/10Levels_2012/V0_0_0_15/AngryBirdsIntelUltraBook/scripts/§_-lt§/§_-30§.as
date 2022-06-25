package §_-lt§
{
   import §_-09-§.b2PrismaticJoint;
   import §_-09-§.b2WeldJoint;
   import §_-0BH§.§_-FK§;
   import §_-0DG§.§_-0-A§;
   import §_-0DG§.§_-09t§;
   import §_-0DG§.§_-a2§;
   import §_-0DG§.§_-au§;
   import §_-0DG§.§_-sQ§;
   import §_-4g§.§_-pX§;
   import §_-8d§.§_-vz§;
   import §_-9T§.§_-xG§;
   import §_-Ga§.§_-bm§;
   import §_-N3§.§_-Hv§;
   import §_-N3§.§_-Zc§;
   import §_-TG§.§_-00u§;
   import §_-TG§.§_-40§;
   import §_-TG§.§_-L8§;
   import §_-TG§.§_-pD§;
   import §_-Yp§.b2Vec2;
   import §_-by§.§_-023§;
   import §_-by§.§_-06y§;
   import §_-by§.§_-CE§;
   import §_-by§.§_-fi§;
   import §_-uY§.Sprite;
   import §_-uY§.§_-09b§;
   import §_-z4§.Texture;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §_-30§
   {
       
      
      protected var §_-Tx§:Vector.<§_-eZ§>;
      
      protected var §_-q-§:int;
      
      public var §_-6A§:§_-00u§;
      
      public var §_-ll§:Vector.<§_-wS§>;
      
      protected var §_-Sh§:Sprite;
      
      protected var §_-Rn§:Sprite;
      
      private var §_-wx§:Sprite;
      
      private var §_-lS§:Sprite;
      
      private var §_-Xz§:Sprite;
      
      protected var §_-w2§:Vector.<Texture>;
      
      protected var §_-T3§:Vector.<§_-06y§>;
      
      protected var §_-P5§:int = 1;
      
      public var mMightyEagleAdded:Boolean = false;
      
      public var mMightyEagleHasTouchedGround:Boolean = false;
      
      public var §_-04N§:Boolean = false;
      
      public var mSardineCanAdded:Boolean = false;
      
      public var mMightyEagleTimer:Number = 0;
      
      protected var §_-1o§:Boolean = false;
      
      protected var §_-BH§:Number;
      
      protected var §_-06A§:int;
      
      protected var §_-CA§:Vector.<§_-023§>;
      
      protected var §_-09e§:int = 0;
      
      private var §_-25§:int = 0;
      
      private var §_-09T§:int = 0;
      
      private var §_-0An§:int;
      
      private var §_-cK§:Boolean = true;
      
      private var §_-tf§:Boolean = true;
      
      public function §_-30§(param1:§_-00u§, param2:§_-bm§, param3:Sprite)
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc5_:§_-06y§ = null;
         var _loc6_:§_-CE§ = null;
         var _loc7_:§_-eZ§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§_-eZ§ = null;
         var _loc11_:§_-eZ§ = null;
         if(!(_loc15_ && this))
         {
            this.§_-Tx§ = new Vector.<§_-eZ§>();
            loop0:
            while(true)
            {
               this.§_-ll§ = new Vector.<§_-wS§>();
               while(true)
               {
                  this.§_-w2§ = new Vector.<Texture>();
                  loop2:
                  while(true)
                  {
                     this.§_-BH§ = this.§_-L8§.SARDINE_CAN_INITIAL_ROTATION_SPEED;
                     loop3:
                     while(true)
                     {
                        this.§_-CA§ = new Vector.<§_-023§>();
                        while(true)
                        {
                           super();
                           loop5:
                           for(; !_loc15_; if(!(_loc15_ && param3))
                           {
                              this.§_-lS§ = new Sprite();
                              continue loop3;
                           })
                           {
                              this.§_-6A§ = param1;
                              loop6:
                              while(true)
                              {
                                 this.§_-q-§ = 0;
                                 loop7:
                                 while(true)
                                 {
                                    this.§_-Rn§ = param3;
                                    loop8:
                                    while(true)
                                    {
                                       §§push(this.§_-Rn§);
                                       loop9:
                                       while(true)
                                       {
                                          §§pop().§_-xd§ = false;
                                          loop10:
                                          while(true)
                                          {
                                             this.§_-tf§ = true;
                                             loop11:
                                             while(true)
                                             {
                                                this.§_-cK§ = true;
                                                while(true)
                                                {
                                                   this.§_-Sh§ = new Sprite();
                                                   addr272:
                                                   while(_loc14_)
                                                   {
                                                      this.§_-wx§ = new Sprite();
                                                      while(true)
                                                      {
                                                         if(!_loc15_)
                                                         {
                                                            continue loop5;
                                                         }
                                                         continue loop10;
                                                         addr53:
                                                         if(_loc14_ || this)
                                                         {
                                                            continue loop7;
                                                         }
                                                      }
                                                      continue loop5;
                                                   }
                                                   addr217:
                                                   continue loop2;
                                                   while(!(_loc15_ && param1))
                                                   {
                                                      continue loop8;
                                                      addr129:
                                                      if(!(_loc14_ || param2))
                                                      {
                                                         continue;
                                                      }
                                                      this.§_-0An§ = this.§_-Tx§.length;
                                                      addr136:
                                                      if(_loc15_)
                                                      {
                                                         while(_loc14_)
                                                         {
                                                            §§goto(addr129);
                                                            §§goto(addr136);
                                                         }
                                                         loop22:
                                                         while(!(_loc15_ && param3))
                                                         {
                                                            if(_loc14_)
                                                            {
                                                               addr177:
                                                               if(!(_loc14_ || param1))
                                                               {
                                                                  continue loop3;
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(this.§_-Rn§);
                                                                  if(_loc14_ || this)
                                                                  {
                                                                     if(_loc15_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(!_loc15_)
                                                                           {
                                                                              if(_loc14_)
                                                                              {
                                                                                 §§pop().addChild(this.§_-wx§);
                                                                                 break loop22;
                                                                              }
                                                                              break;
                                                                           }
                                                                           addr208:
                                                                           while(true)
                                                                           {
                                                                              §§pop().addChild(this.§_-Sh§);
                                                                           }
                                                                        }
                                                                        continue loop9;
                                                                        addr188:
                                                                     }
                                                                     §§pop().addChild(this.§_-Xz§);
                                                                     while(_loc14_)
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                     §§goto(addr272);
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§pop().addChild(this.§_-lS§);
                                                                        continue loop22;
                                                                     }
                                                                     addr165:
                                                                  }
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr188);
                                                            }
                                                         }
                                                         while(_loc14_)
                                                         {
                                                            continue loop6;
                                                            §§goto(addr168);
                                                         }
                                                         addr168:
                                                         continue loop11;
                                                         addr127:
                                                      }
                                                      if(_loc14_)
                                                      {
                                                         §§goto(addr53);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr152);
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
                        }
                     }
                  }
                  if(_loc15_ && param1)
                  {
                     continue;
                  }
                  §§goto(addr208);
                  §§push(this.§_-Rn§);
               }
            }
         }
         §§goto(addr184);
      }
      
      protected function get §_-L8§() : Class
      {
         return §_-L8§;
      }
      
      public function get §_-eJ§() : Sprite
      {
         return this.§_-Xz§;
      }
      
      public function get §_-ar§() : Sprite
      {
         return this.§_-Rn§;
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Texture = null;
         loop0:
         while(true)
         {
            if(this.§_-Tx§.length > 0)
            {
               this.§_-Fq§(0);
               continue;
            }
            loop1:
            while(true)
            {
               this.§_-Tx§ = null;
               loop2:
               while(_loc3_)
               {
                  this.§_-CA§ = null;
                  loop3:
                  while(true)
                  {
                     §§push(this.§_-Rn§);
                     if(_loc3_)
                     {
                        if(§§pop())
                        {
                           continue;
                        }
                        addr169:
                        if(this.§_-w2§.length > 0)
                        {
                           _loc1_ = this.§_-w2§.pop();
                           if(_loc3_)
                           {
                              this.§_-6A§.textureManager.unregisterBitmapDataTexture(_loc1_);
                           }
                           §§goto(addr169);
                        }
                        addr155:
                     }
                     else
                     {
                        while(true)
                        {
                           §§pop().dispose();
                           while(true)
                           {
                              this.§_-Rn§ = null;
                              loop7:
                              while(_loc3_ || _loc3_)
                              {
                                 this.§_-Sh§ = null;
                                 loop8:
                                 while(true)
                                 {
                                    if(_loc2_ && this)
                                    {
                                       continue loop7;
                                    }
                                    if(_loc2_)
                                    {
                                       continue loop3;
                                    }
                                    if(_loc2_ && _loc2_)
                                    {
                                       break;
                                    }
                                    this.§_-Xz§ = null;
                                    loop9:
                                    while(true)
                                    {
                                       addr50:
                                       while(true)
                                       {
                                          this.§_-wx§ = null;
                                          while(true)
                                          {
                                             if(!_loc2_)
                                             {
                                                this.§_-lS§ = null;
                                                if(!(_loc3_ || _loc2_))
                                                {
                                                   break;
                                                }
                                                if(_loc3_ || _loc2_)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      continue loop8;
                                                   }
                                                   continue loop9;
                                                }
                                                continue;
                                             }
                                             continue loop1;
                                          }
                                          §§goto(addr174);
                                       }
                                       continue loop8;
                                    }
                                 }
                                 continue loop2;
                              }
                           }
                        }
                        addr120:
                     }
                     addr174:
                     return;
                  }
               }
               continue loop0;
            }
         }
      }
      
      private function §_-F§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§_-Sh§.visible = param1;
         }
      }
      
      private function §_-00M§() : void
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc3_:§_-eZ§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:* = NaN;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc9_:int = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Texture = null;
         var _loc13_:§_-09b§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§_-eZ§> = new Vector.<§_-eZ§>();
         for each(_loc3_ in this.§_-Tx§)
         {
            if(!(_loc16_ && _loc2_))
            {
               if(_loc3_.isTexture())
               {
                  if(_loc17_)
                  {
                     addr79:
                     _loc2_.push(_loc3_);
                  }
                  _loc4_ = _loc3_.sprite.getBounds(this.§_-Rn§);
                  if(_loc17_ || _loc1_)
                  {
                     if(_loc1_ != null)
                     {
                        _loc1_ = _loc1_.union(_loc4_);
                        continue;
                     }
                  }
                  _loc1_ = new Rectangle(_loc4_.x,_loc4_.y,_loc4_.width,_loc4_.height);
               }
               continue;
            }
            §§goto(addr79);
         }
         if(!(_loc16_ && _loc2_))
         {
            if(_loc1_)
            {
               while(true)
               {
                  §§push(1);
                  loop2:
                  while(true)
                  {
                     §§push(Number(§§pop()));
                     loop3:
                     while(true)
                     {
                        _loc5_ = §§pop();
                        loop4:
                        while(true)
                        {
                           loop5:
                           while(true)
                           {
                              §§push(_loc1_.width > 2048);
                              loop6:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop7:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          _loc1_.left /= 2;
                                          break;
                                       }
                                       while(_loc17_)
                                       {
                                          §§push(int(_loc1_.width));
                                          loop9:
                                          while(true)
                                          {
                                             _loc6_ = §§pop();
                                             addr222:
                                             loop10:
                                             while(_loc17_ || this)
                                             {
                                                if(!(_loc16_ && _loc3_))
                                                {
                                                   §§push(int(_loc1_.height));
                                                   loop11:
                                                   while(true)
                                                   {
                                                      _loc7_ = §§pop();
                                                      addr192:
                                                      while(_loc17_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(int(_loc1_.left));
                                                            loop14:
                                                            while(true)
                                                            {
                                                               _loc8_ = §§pop();
                                                               addr186:
                                                               while(true)
                                                               {
                                                                  §§push(int(_loc1_.top));
                                                                  if(_loc17_ || _loc3_)
                                                                  {
                                                                     if(_loc17_)
                                                                     {
                                                                        continue loop9;
                                                                     }
                                                                     continue loop11;
                                                                  }
                                                                  continue loop14;
                                                               }
                                                               continue loop2;
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            if(_loc16_)
                                                            {
                                                               break loop7;
                                                            }
                                                            continue loop5;
                                                         }
                                                      }
                                                      loop17:
                                                      while(true)
                                                      {
                                                         §§push(_loc1_.height > 2048);
                                                         if(_loc17_)
                                                         {
                                                            if(_loc16_)
                                                            {
                                                               break;
                                                            }
                                                            continue loop7;
                                                         }
                                                         addr244:
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            continue loop17;
                                                         }
                                                      }
                                                      continue loop6;
                                                   }
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      _loc1_.bottom /= 2;
                                                      break loop10;
                                                      addr296:
                                                      _loc1_.right /= 2;
                                                   }
                                                   addr286:
                                                }
                                             }
                                             while(true)
                                             {
                                                §§push(_loc5_);
                                                if(_loc17_ || _loc2_)
                                                {
                                                   if(_loc16_)
                                                   {
                                                      continue loop3;
                                                   }
                                                   §§push(§§pop() / 2);
                                                   if(_loc17_ || _loc3_)
                                                   {
                                                      addr266:
                                                      §§push(Number(§§pop()));
                                                   }
                                                   _loc5_ = §§pop();
                                                   §§goto(addr268);
                                                }
                                                §§goto(addr266);
                                             }
                                          }
                                       }
                                       continue loop4;
                                    }
                                    while(true)
                                    {
                                       _loc1_.top /= 2;
                                       §§goto(addr294);
                                    }
                                 }
                                 §§goto(addr244);
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr444);
         }
         §§goto(addr286);
      }
      
      private function §_-78§(param1:Vector.<§_-eZ§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc7_:§_-eZ§ = null;
         var _loc11_:§_-sQ§ = null;
         var _loc12_:Array = null;
         var _loc13_:Rectangle = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         loop0:
         for each(_loc7_ in param1)
         {
            _loc12_ = (_loc11_ = _loc7_.§_-zm§.shape).§super§();
            _loc13_ = new Rectangle(_loc12_[0].x / §_-00u§.§_-lY§ * param6,_loc12_[0].y / §_-00u§.§_-lY§ * param6,(_loc12_[1].x - _loc12_[0].x) / §_-00u§.§_-lY§ * param6,(_loc12_[1].y - _loc12_[0].y) / §_-00u§.§_-lY§ * param6);
            if(_loc16_)
            {
               _loc10_.identity();
               loop1:
               while(true)
               {
                  _loc10_.scale(_loc13_.width,_loc13_.height);
                  while(true)
                  {
                     _loc10_.translate(-_loc13_.width / 2,-_loc13_.height / 2);
                     loop3:
                     for(; _loc16_ || param2; if(_loc16_ || param1)
                     {
                        while(false)
                        {
                           §§goto(addr150);
                        }
                        continue loop0;
                        addr148:
                     })
                     {
                        _loc10_.rotate((360 - _loc7_.§_-NN§()) / 180 * Math.PI);
                        while(true)
                        {
                           addr150:
                           while(true)
                           {
                              _loc10_.translate(_loc7_.sprite.x * param6 - param4,_loc7_.sprite.y * param6 - param5);
                              continue loop1;
                           }
                           continue loop3;
                        }
                     }
                  }
               }
            }
            §§goto(addr148);
         }
         if(!(_loc17_ && param2))
         {
            _loc9_.dispose();
         }
         return _loc8_;
      }
      
      private function §_-01J§(param1:Rectangle, param2:BitmapData, param3:Number) : void
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc6_:BitmapData = null;
         var _loc7_:Matrix = null;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         var _loc12_:* = 0;
         var _loc13_:* = 0;
         var _loc14_:* = 0;
         var _loc15_:int = 0;
         §§push(this.§_-6A§.background.§_-st§());
         if(!(_loc17_ && param3))
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         var _loc5_:§_-vz§;
         if(_loc5_ = this.§_-6A§.backgroundTextureManager.§_-70§(_loc4_))
         {
            _loc6_ = new BitmapData(_loc5_.bitmapData.width * param3,_loc5_.bitmapData.height * param3);
            (_loc7_ = new Matrix()).scale(param3,param3);
            if(_loc16_)
            {
               _loc6_.draw(_loc5_.bitmapData,_loc7_);
               loop0:
               while(true)
               {
                  §§push(_loc6_.width - 2);
                  loop1:
                  while(true)
                  {
                     §§push(int(§§pop()));
                     loop2:
                     while(true)
                     {
                        _loc8_ = §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(_loc6_.height - 2);
                           while(true)
                           {
                              §§push(int(§§pop()));
                              addr407:
                              while(true)
                              {
                                 _loc9_ = §§pop();
                                 addr408:
                                 while(true)
                                 {
                                    §§push(param1.top / _loc9_);
                                    continue loop1;
                                 }
                              }
                              loop11:
                              while(!(_loc17_ && param2))
                              {
                                 §§push(int(§§pop()));
                                 if(!(_loc17_ && this))
                                 {
                                    §§push(§§pop());
                                    loop12:
                                    while(true)
                                    {
                                       _loc11_ = §§pop();
                                       loop13:
                                       while(_loc16_ || this)
                                       {
                                          if(_loc17_ && param3)
                                          {
                                             continue loop2;
                                          }
                                          §§push(§§pop() + 1);
                                          loop14:
                                          while(true)
                                          {
                                             _loc11_ = §§pop();
                                             loop15:
                                             while(!_loc17_)
                                             {
                                                §§push(param1.left / _loc8_);
                                                loop16:
                                                for(; _loc16_; while(true)
                                                {
                                                   §§push(param1.right / _loc8_);
                                                   if(_loc17_ && param3)
                                                   {
                                                      continue loop16;
                                                   }
                                                   if(!_loc16_)
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr255);
                                                   §§push(int(§§pop()));
                                                },continue loop1)
                                                {
                                                   §§push(int(§§pop()));
                                                   loop17:
                                                   for(; _loc16_; while(_loc16_ || param1)
                                                   {
                                                      _loc13_ = §§pop();
                                                      §§goto(addr270);
                                                   })
                                                   {
                                                      _loc12_ = §§pop();
                                                      loop18:
                                                      do
                                                      {
                                                         if(param1.left >= 0)
                                                         {
                                                            continue loop16;
                                                         }
                                                         loop19:
                                                         for(; !(_loc17_ && this); if(_loc16_ || param1)
                                                         {
                                                            continue loop18;
                                                         })
                                                         {
                                                            §§push(_loc12_);
                                                            while(true)
                                                            {
                                                               §§push(§§pop() - 1);
                                                               addr294:
                                                               while(true)
                                                               {
                                                                  _loc12_ = §§pop();
                                                                  addr295:
                                                                  addr371:
                                                                  loop22:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc17_ && this))
                                                                     {
                                                                        if(!_loc17_)
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        addr400:
                                                                        while(true)
                                                                        {
                                                                           if(param1.top < 0)
                                                                           {
                                                                              addr370:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc10_);
                                                                                 break loop22;
                                                                              }
                                                                              addr370:
                                                                           }
                                                                           addr324:
                                                                           while(true)
                                                                           {
                                                                              §§push(param1.bottom / _loc9_);
                                                                              break loop16;
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr370);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() - 1);
                                                                     break loop13;
                                                                  }
                                                               }
                                                               addr177:
                                                               if(_loc16_ || param1)
                                                               {
                                                                  if(_loc16_)
                                                                  {
                                                                     if(!(_loc17_ && param3))
                                                                     {
                                                                        addr194:
                                                                        §§push(int(§§pop()));
                                                                        if(_loc16_)
                                                                        {
                                                                           if(_loc16_)
                                                                           {
                                                                              if(_loc16_ || param3)
                                                                              {
                                                                                 addr215:
                                                                                 _loc14_ = §§pop();
                                                                                 if(_loc17_ && this)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc17_)
                                                                                       {
                                                                                          continue loop15;
                                                                                       }
                                                                                       if(_loc17_ && param1)
                                                                                       {
                                                                                          continue loop3;
                                                                                       }
                                                                                       §§push(_loc12_);
                                                                                       if(!(_loc17_ && param2))
                                                                                       {
                                                                                          if(!_loc16_)
                                                                                          {
                                                                                             continue loop17;
                                                                                          }
                                                                                          §§goto(addr177);
                                                                                       }
                                                                                       §§goto(addr194);
                                                                                       §§goto(addr215);
                                                                                    }
                                                                                    §§goto(addr294);
                                                                                    addr270:
                                                                                 }
                                                                                 if(!_loc17_)
                                                                                 {
                                                                                    continue loop19;
                                                                                 }
                                                                                 §§goto(addr295);
                                                                              }
                                                                              §§goto(addr371);
                                                                           }
                                                                           §§goto(addr294);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(!_loc17_)
                                                                           {
                                                                              _loc13_ = §§pop();
                                                                              if(!_loc17_)
                                                                              {
                                                                                 §§push(§§pop() + 1);
                                                                              }
                                                                              continue loop17;
                                                                           }
                                                                           continue loop12;
                                                                        }
                                                                        addr255:
                                                                     }
                                                                     continue loop13;
                                                                  }
                                                                  continue loop14;
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr408);
                                                      }
                                                      while(!(_loc16_ || this));
                                                      
                                                      addr85:
                                                      §§push(_loc14_);
                                                      if(!_loc17_)
                                                      {
                                                         if(_loc16_ || param3)
                                                         {
                                                            §§push(_loc13_);
                                                            if(!_loc17_)
                                                            {
                                                               if(§§pop() >= §§pop())
                                                               {
                                                                  if(!_loc17_)
                                                                  {
                                                                     _loc6_.dispose();
                                                                  }
                                                                  if(!(_loc17_ && param3))
                                                                  {
                                                                     if(!_loc17_)
                                                                     {
                                                                        if(!(_loc17_ && param1))
                                                                        {
                                                                           if(false)
                                                                           {
                                                                              addr122:
                                                                              if(_loc15_ >= _loc11_)
                                                                              {
                                                                                 addr126:
                                                                                 _loc14_++;
                                                                                 addr127:
                                                                                 if(!_loc17_)
                                                                                 {
                                                                                    §§goto(addr85);
                                                                                 }
                                                                                 §§goto(addr122);
                                                                                 addr165:
                                                                              }
                                                                              param2.copyPixels(_loc6_,_loc6_.rect,new Point(_loc14_ * _loc8_,_loc15_ * _loc9_));
                                                                              _loc15_++;
                                                                              addr132:
                                                                              if(_loc16_ || param1)
                                                                              {
                                                                                 §§goto(addr122);
                                                                              }
                                                                              addr156:
                                                                              §§goto(addr156);
                                                                           }
                                                                           §§goto(addr423);
                                                                        }
                                                                        §§goto(addr132);
                                                                     }
                                                                     §§goto(addr126);
                                                                  }
                                                                  §§goto(addr127);
                                                               }
                                                               §§push(_loc10_);
                                                               if(_loc16_)
                                                               {
                                                                  addr164:
                                                                  _loc15_ = §§pop();
                                                                  §§goto(addr165);
                                                               }
                                                               §§goto(addr164);
                                                            }
                                                            §§goto(addr122);
                                                         }
                                                         §§goto(addr164);
                                                      }
                                                      §§goto(addr122);
                                                   }
                                                   while(true)
                                                   {
                                                      _loc10_ = §§pop();
                                                      §§goto(addr400);
                                                   }
                                                }
                                                continue loop11;
                                             }
                                             addr375:
                                             while(true)
                                             {
                                                §§goto(addr324);
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          if(_loc16_)
                                          {
                                             _loc10_ = §§pop();
                                             §§goto(addr375);
                                          }
                                          else
                                          {
                                             §§goto(addr407);
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr361);
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr370);
         }
         addr423:
      }
      
      public function §_-8v§(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §_-eZ§
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc10_:§_-eZ§ = null;
         var _loc11_:* = param2;
         if(!_loc12_)
         {
            §§push("BIRD_BLACK");
            if(!_loc12_)
            {
               §§push(_loc11_);
               if(!_loc12_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!_loc12_)
                     {
                        §§push(0);
                        if(_loc12_)
                        {
                           addr293:
                        }
                     }
                     else
                     {
                        addr239:
                        §§push(1);
                        if(!(_loc13_ || param1))
                        {
                           addr270:
                        }
                     }
                  }
                  else
                  {
                     §§push("BIRD_BLUE");
                     if(!(_loc12_ && param3))
                     {
                        addr233:
                        §§push(_loc11_);
                        if(_loc13_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc13_)
                              {
                                 §§goto(addr239);
                              }
                              else
                              {
                                 addr341:
                                 §§push(5);
                                 if(!_loc12_)
                                 {
                                    addr361:
                                    switch(§§pop())
                                    {
                                       case 0:
                                          _loc10_ = new §_-wE§(this,param1,this.§_-6A§.mLevelEngine.mWorld,this.§_-6A§,this.§_-q-§,param2,param3,param4,param5,param8,param9);
                                          break;
                                       case 1:
                                          _loc10_ = new §_-En§(this,param1,this.§_-6A§.mLevelEngine.mWorld,this.§_-6A§,this.§_-q-§,param2,param3,param4,param5,param8,param9);
                                          break;
                                       case 2:
                                          _loc10_ = new §_-3i§(this,param1,this.§_-6A§.mLevelEngine.mWorld,this.§_-6A§,this.§_-q-§,param2,param3,param4,param5,param8,param9);
                                          break;
                                       case 3:
                                          _loc10_ = new §_-07D§(this,param1,this.§_-6A§.mLevelEngine.mWorld,this.§_-6A§,this.§_-q-§,param2,param3,param4,param5,param8,param9);
                                          break;
                                       case 4:
                                          _loc10_ = new §_-cI§(this,param1,this.§_-6A§.mLevelEngine.mWorld,this.§_-6A§,this.§_-q-§,param2,param3,param4,param5,param8,param9);
                                          break;
                                       case 5:
                                          _loc10_ = new §_-rM§(this,param1,this.§_-6A§.mLevelEngine.mWorld,this.§_-6A§,this.§_-q-§,param2,param3,param4,param5,param8,param9);
                                          break;
                                       case 6:
                                          _loc10_ = new §_-eo§(this,param1,this.§_-6A§.mLevelEngine.mWorld,this.§_-6A§,this.§_-q-§,param2,param3,param4,param5,param8,param9);
                                          break;
                                       default:
                                          _loc10_ = new §_-Fh§(this,param1,this.§_-6A§.mLevelEngine.mWorld,this.§_-6A§,this.§_-q-§,param2,param3,param4,param5,param8,param9);
                                    }
                                    return _loc10_;
                                    addr344:
                                 }
                                 §§goto(addr361);
                              }
                           }
                           else
                           {
                              §§push("BIRD_GREEN");
                              if(!(_loc12_ && param3))
                              {
                                 §§push(_loc11_);
                                 if(_loc13_ || param1)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(!_loc12_)
                                       {
                                          §§push(2);
                                          if(_loc13_)
                                          {
                                             §§goto(addr270);
                                          }
                                       }
                                       else
                                       {
                                          addr303:
                                          §§push(4);
                                          if(_loc13_ || this)
                                          {
                                          }
                                       }
                                       §§goto(addr361);
                                       §§goto(addr361);
                                    }
                                    else
                                    {
                                       §§push("BIRD_WHITE");
                                       if(_loc13_ || param2)
                                       {
                                          addr279:
                                          §§push(_loc11_);
                                          if(!(_loc12_ && param1))
                                          {
                                             addr287:
                                             if(§§pop() === §§pop())
                                             {
                                                if(_loc13_)
                                                {
                                                   §§push(3);
                                                   if(!_loc12_)
                                                   {
                                                      §§goto(addr293);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr344);
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr341);
                                                }
                                                §§goto(addr361);
                                             }
                                             else
                                             {
                                                §§push("BIRD_YELLOW");
                                                if(_loc13_)
                                                {
                                                   §§push(_loc11_);
                                                   if(_loc13_)
                                                   {
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(!_loc12_)
                                                         {
                                                            §§goto(addr303);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr341);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push("BIRD_RED");
                                                         if(_loc12_ && param1)
                                                         {
                                                         }
                                                         addr346:
                                                         if(§§pop() === _loc11_)
                                                         {
                                                            addr348:
                                                            §§push(6);
                                                            if(!(_loc12_ && param1))
                                                            {
                                                               §§goto(addr356);
                                                            }
                                                            §§goto(addr361);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr361);
                                                            §§push(7);
                                                         }
                                                         §§goto(addr361);
                                                      }
                                                      §§goto(addr361);
                                                   }
                                                   addr323:
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(!(_loc12_ && param3))
                                                      {
                                                         §§goto(addr341);
                                                      }
                                                      §§goto(addr361);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr346);
                                                      §§push("BIRD_REDBIG");
                                                   }
                                                   §§goto(addr348);
                                                }
                                                §§goto(addr346);
                                             }
                                          }
                                          §§goto(addr323);
                                       }
                                       §§push(_loc11_);
                                       if(!_loc12_)
                                       {
                                          §§goto(addr323);
                                       }
                                       §§goto(addr346);
                                    }
                                 }
                                 §§goto(addr323);
                              }
                              §§goto(addr346);
                           }
                           §§goto(addr361);
                        }
                        §§goto(addr287);
                     }
                     §§goto(addr279);
                  }
                  §§goto(addr361);
               }
               §§goto(addr287);
            }
            §§goto(addr233);
         }
         §§goto(addr239);
      }
      
      public function hasBirds() : Boolean
      {
         return this.§_-09e§ > 0;
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §_-eZ§
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc10_:Sprite;
         (_loc10_ = new Sprite()).scaleX = param8;
         if(!_loc14_)
         {
            _loc10_.scaleY = param8;
         }
         var _loc11_:§_-eZ§;
         §§push((_loc11_ = this.createObject(_loc10_,param1,param2,param3,param4,param5,param6,param7,param8)).isTexture());
         if(_loc15_ || param1)
         {
            if(§§pop())
            {
               if(!_loc14_)
               {
                  §§push(_loc10_);
                  §§push(this.§_-cK§);
                  if(!(_loc14_ && param2))
                  {
                     §§push(!§§pop());
                  }
                  §§pop().visible = §§pop();
                  if(!_loc14_)
                  {
                     this.§_-Tx§[this.§_-Tx§.length] = _loc11_;
                     if(!(_loc14_ && param1))
                     {
                        loop0:
                        while(true)
                        {
                           §§push(_loc11_ is §_-Fh§);
                           if(_loc15_)
                           {
                              §§push(§§pop());
                              if(_loc15_ || param1)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc15_)
                                    {
                                       addr123:
                                       §§pop();
                                       if(_loc15_ || param2)
                                       {
                                          §§push(_loc11_.§_-rN§());
                                          if(_loc15_ || param3)
                                          {
                                             §§push(!§§pop());
                                             if(_loc15_ || param3)
                                             {
                                                addr87:
                                                if(§§pop())
                                                {
                                                   if(!_loc14_)
                                                   {
                                                      this.§_-wx§.addChild(_loc10_);
                                                      if(_loc15_ || param1)
                                                      {
                                                         if(!_loc14_)
                                                         {
                                                            if(false)
                                                            {
                                                               continue;
                                                            }
                                                            var _loc12_:*;
                                                            §§push((_loc12_ = this).§_-09e§);
                                                            if(!_loc14_)
                                                            {
                                                               §§push(§§pop() + 1);
                                                            }
                                                            var _loc13_:* = §§pop();
                                                            if(!(_loc14_ && param1))
                                                            {
                                                               _loc12_.§_-09e§ = _loc13_;
                                                            }
                                                            if(_loc15_)
                                                            {
                                                               addr189:
                                                               loop5:
                                                               while(true)
                                                               {
                                                                  §§push(param5);
                                                                  addr263:
                                                                  loop13:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc14_ && param2))
                                                                     {
                                                                        if(_loc15_)
                                                                        {
                                                                           if(_loc15_)
                                                                           {
                                                                              while(§§pop())
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§_-6A§);
                                                                                    addr287:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop().§_-I5§(_loc11_);
                                                                                       addr289:
                                                                                       addr291:
                                                                                       while(!_loc15_)
                                                                                       {
                                                                                          loop4:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc14_)
                                                                                             {
                                                                                                break loop0;
                                                                                             }
                                                                                             addr319:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(param9);
                                                                                                addr302:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                   addr303:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      addr304:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!§§pop())
                                                                                                         {
                                                                                                            this.§_-lS§.addChild(_loc10_);
                                                                                                            continue loop5;
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            this.§_-Xz§.addChild(_loc10_);
                                                                                                            continue loop4;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          break loop13;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              break;
                                                                              addr274:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                              addr317:
                                                                              while(true)
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop();
                                                                                       §§goto(addr319);
                                                                                    }
                                                                                    addr318:
                                                                                 }
                                                                                 §§goto(addr303);
                                                                              }
                                                                           }
                                                                           addr316:
                                                                        }
                                                                        §§goto(addr318);
                                                                     }
                                                                     §§goto(addr304);
                                                                  }
                                                                  loop2:
                                                                  while(true)
                                                                  {
                                                                     §§push(param6);
                                                                     if(!(_loc14_ && this))
                                                                     {
                                                                        if(_loc15_ || param3)
                                                                        {
                                                                           if(!_loc14_)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(_loc15_ || this)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§_-6A§);
                                                                                       if(!(_loc14_ && param1))
                                                                                       {
                                                                                          §§pop().activeObject = _loc11_;
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc15_ || this)
                                                                                             {
                                                                                                if(_loc15_ || param2)
                                                                                                {
                                                                                                   if(_loc14_ && param2)
                                                                                                   {
                                                                                                      continue loop5;
                                                                                                   }
                                                                                                   if(_loc15_ || param3)
                                                                                                   {
                                                                                                      break loop2;
                                                                                                   }
                                                                                                   §§goto(addr305);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr275);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr289);
                                                                                          }
                                                                                          addr232:
                                                                                       }
                                                                                       §§goto(addr287);
                                                                                    }
                                                                                    addr221:
                                                                                 }
                                                                                 §§goto(addr232);
                                                                              }
                                                                              break;
                                                                           }
                                                                           addr315:
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr316);
                                                                           }
                                                                           §§goto(addr303);
                                                                        }
                                                                        §§goto(addr302);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr263);
                                                                     }
                                                                  }
                                                                  return _loc11_;
                                                               }
                                                               addr189:
                                                               addr261:
                                                            }
                                                            §§goto(addr291);
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               continue loop0;
                                                            }
                                                            addr141:
                                                         }
                                                      }
                                                      §§goto(addr189);
                                                   }
                                                   break;
                                                }
                                                §§push(_loc11_.front);
                                                §§goto(addr315);
                                             }
                                             §§goto(addr274);
                                          }
                                          §§goto(addr302);
                                       }
                                       break;
                                    }
                                    §§goto(addr302);
                                 }
                                 §§goto(addr87);
                              }
                              §§goto(addr317);
                           }
                           §§goto(addr123);
                        }
                        while(true)
                        {
                           §§goto(addr261);
                        }
                     }
                     §§goto(addr299);
                  }
                  §§goto(addr221);
               }
               §§goto(addr189);
            }
            else
            {
               this.§_-Tx§[this.§_-Tx§.length] = _loc11_;
            }
            §§goto(addr141);
         }
         §§goto(addr302);
      }
      
      public function §_-kk§(param1:int, param2:§_-eZ§, param3:§_-eZ§) : §_-06y§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc6_:§_-06y§ = null;
         var _loc4_:int = this.§_-Tx§.indexOf(param2) - this.§_-0An§;
         var _loc5_:int = this.§_-Tx§.indexOf(param3) - this.§_-0An§;
         if(!_loc7_)
         {
            §§push(_loc4_);
            if(_loc8_ || this)
            {
               §§push(0);
               if(!(_loc7_ && param1))
               {
                  §§push(§§pop() >= §§pop());
                  if(_loc8_ || param3)
                  {
                     if(§§pop())
                     {
                        if(_loc8_ || this)
                        {
                           §§pop();
                           §§goto(addr95);
                        }
                     }
                  }
                  if(!§§pop())
                  {
                  }
                  §§goto(addr95);
               }
            }
            §§goto(addr93);
         }
         addr95:
         if(_loc8_ || param1)
         {
            addr93:
            §§push(_loc5_ >= 0);
         }
         (_loc6_ = new §_-06y§(§_-fi§.§_-gY§,_loc4_,_loc5_,new Point(0,0),new Point(0,0))).§_-0C3§ = this.§_-6A§.mLevelEngine.mWorld.§_-oW§(_loc6_.§_-sy§(param2,param3));
         if(_loc8_ || param1)
         {
            this.§_-T3§.push(_loc6_);
            if(_loc8_)
            {
               return _loc6_;
            }
         }
         return null;
      }
      
      public function §_-iX§(param1:§_-06y§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            if(!(param1.§_-0C3§ is b2WeldJoint))
            {
               if(!(_loc5_ && _loc3_))
               {
                  return;
               }
            }
         }
         var _loc2_:§_-eZ§ = this.§_-086§(param1.index1 + this.§_-0An§);
         var _loc3_:§_-eZ§ = this.§_-086§(param1.index2 + this.§_-0An§);
         if(!(_loc5_ && param1))
         {
            this.§_-6A§.mLevelEngine.mWorld.§_-r5§(param1.§_-0C3§);
            do
            {
               param1.§_-0C3§ = this.§_-6A§.mLevelEngine.mWorld.§_-oW§(param1.§_-sy§(_loc2_,_loc3_));
            }
            while(!_loc4_);
            
         }
      }
      
      public function §_-nP§(param1:§_-eZ§) : Vector.<§_-06y§>
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:§_-06y§ = null;
         var _loc2_:Vector.<§_-06y§> = new Vector.<§_-06y§>();
         var _loc3_:int = this.§_-Tx§.indexOf(param1) - this.§_-0An§;
         if(!_loc7_)
         {
            §§push(_loc3_);
            if(!(_loc7_ && _loc3_))
            {
               if(§§pop() >= 0)
               {
                  addr58:
                  addr57:
                  for each(_loc4_ in this.§_-T3§)
                  {
                     §§push(_loc4_.index1 == _loc3_);
                     if(!(_loc7_ && param1))
                     {
                        if(!§§pop())
                        {
                           if(!(_loc7_ && param1))
                           {
                              addr100:
                              §§pop();
                              if(!_loc7_)
                              {
                                 addr107:
                                 if(_loc4_.index2 != _loc3_)
                                 {
                                    continue;
                                 }
                                 if(!_loc8_)
                                 {
                                    continue;
                                 }
                              }
                              _loc2_.push(_loc4_);
                              continue;
                           }
                        }
                        §§goto(addr107);
                     }
                     §§goto(addr100);
                  }
               }
               return _loc2_;
            }
            §§goto(addr58);
         }
         §§goto(addr57);
      }
      
      public function §_-Yu§() : Vector.<§_-06y§>
      {
         return this.§_-T3§;
      }
      
      public function §_-0Bs§(param1:§_-eZ§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:int = this.§_-Tx§.indexOf(param1) - this.§_-0An§;
         var _loc3_:* = int(this.§_-T3§.length - 1);
         while(true)
         {
            §§push(_loc3_);
            if(!_loc5_)
            {
               if(_loc4_ || param1)
               {
                  if(§§pop() < 0)
                  {
                     if(_loc4_)
                     {
                        if(_loc4_)
                        {
                           break;
                        }
                        while(true)
                        {
                           addr62:
                           while(true)
                           {
                              §§push(_loc3_);
                              addr64:
                              while(true)
                              {
                                 §§push(§§pop() - 1);
                                 addr65:
                                 while(true)
                                 {
                                    _loc3_ = §§pop();
                                 }
                              }
                           }
                        }
                        addr113:
                     }
                     while(_loc5_ && param1)
                     {
                        loop5:
                        while(true)
                        {
                           §§push(this.§_-T3§[_loc3_].index2 == _loc2_);
                           if(_loc4_ || _loc3_)
                           {
                              break;
                           }
                           addr132:
                           while(true)
                           {
                              §§pop();
                              continue loop5;
                           }
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(!(_loc5_ && this))
                              {
                                 this.§_-T3§.splice(_loc3_,1);
                              }
                              §§goto(addr113);
                           }
                           §§goto(addr62);
                           §§goto(addr133);
                        }
                        addr133:
                     }
                     continue;
                  }
                  §§push(this.§_-T3§[_loc3_].index1 == _loc2_);
                  if(!(_loc5_ && _loc3_))
                  {
                     if(!§§pop())
                     {
                        §§goto(addr132);
                     }
                     §§goto(addr89);
                  }
                  §§goto(addr132);
               }
               §§goto(addr64);
            }
            §§goto(addr65);
         }
      }
      
      public function §_-0AD§(param1:§_-eZ§, param2:§_-eZ§) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:int = this.§_-Tx§.indexOf(param1) - this.§_-0An§;
         var _loc4_:int = this.§_-Tx§.indexOf(param2) - this.§_-0An§;
         var _loc5_:* = int(this.§_-T3§.length - 1);
         while(true)
         {
            §§push(_loc5_);
            if(_loc6_ || _loc3_)
            {
               if(!(_loc7_ && this))
               {
                  if(§§pop() < 0)
                  {
                     if(_loc6_ || param2)
                     {
                        if(_loc6_ || param1)
                        {
                           if(!(_loc7_ && _loc3_))
                           {
                              §§push(false);
                              if(!_loc7_)
                              {
                                 if(_loc6_)
                                 {
                                    if(!(_loc7_ && this))
                                    {
                                       break;
                                    }
                                    loop1:
                                    while(true)
                                    {
                                       if(_loc6_ || param1)
                                       {
                                          §§pop();
                                          loop2:
                                          while(true)
                                          {
                                             if(_loc6_ || param1)
                                             {
                                                §§push(this.§_-T3§[_loc5_].index1 == _loc4_);
                                                loop3:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   if(!_loc7_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            addr156:
                                                            while(true)
                                                            {
                                                               §§push(this.§_-T3§[_loc5_].index2 == _loc3_);
                                                               if(_loc7_)
                                                               {
                                                               }
                                                               §§goto(addr137);
                                                            }
                                                         }
                                                         addr155:
                                                      }
                                                      loop4:
                                                      while(§§pop())
                                                      {
                                                         if(_loc6_ || param2)
                                                         {
                                                            addr137:
                                                            while(true)
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  continue loop3;
                                                               }
                                                               if(_loc6_)
                                                               {
                                                                  break;
                                                               }
                                                               loop9:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  addr215:
                                                                  loop6:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§_-T3§[_loc5_].index2 == _loc4_);
                                                                     if(_loc7_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     loop7:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        addr169:
                                                                        while(true)
                                                                        {
                                                                           if(_loc6_ || this)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 break;
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    continue loop9;
                                                                                 }
                                                                                 continue loop7;
                                                                              }
                                                                              addr213:
                                                                           }
                                                                           continue loop7;
                                                                        }
                                                                        break loop6;
                                                                     }
                                                                  }
                                                                  continue loop1;
                                                               }
                                                            }
                                                            return §§pop();
                                                            §§push(true);
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               break loop4;
                                                            }
                                                            addr142:
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(_loc5_);
                                                         addr107:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() - 1);
                                                            addr108:
                                                            while(true)
                                                            {
                                                               _loc5_ = §§pop();
                                                               continue loop2;
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr169);
                                                }
                                             }
                                             §§goto(addr215);
                                          }
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                          }
                                          addr212:
                                       }
                                       §§goto(addr213);
                                    }
                                 }
                                 §§goto(addr155);
                              }
                              §§goto(addr137);
                           }
                           §§goto(addr156);
                        }
                        §§goto(addr142);
                     }
                     §§goto(addr109);
                  }
                  else
                  {
                     §§push(this.§_-T3§[_loc5_].index1 == _loc3_);
                  }
                  §§goto(addr212);
               }
               §§goto(addr107);
            }
            §§goto(addr108);
         }
         return §§pop();
      }
      
      protected function createObject(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §_-eZ§
      {
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = true;
         var _loc10_:§_-eZ§ = null;
         var _loc11_:§_-0-A§ = null;
         var _loc12_:§_-0-A§ = null;
         if(_loc16_ || param3)
         {
            §§push(param2);
            if(_loc16_)
            {
               §§push("BIRD");
               if(!_loc15_)
               {
                  if(§§pop().indexOf(§§pop()) == 0)
                  {
                     if(!_loc15_)
                     {
                        _loc10_ = this.§_-8v§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
                        if(_loc16_)
                        {
                           var _loc13_:*;
                           §§push((_loc13_ = this).§_-09T§);
                           if(!_loc15_)
                           {
                              §§push(§§pop() + 1);
                           }
                           var _loc14_:* = §§pop();
                           if(!(_loc15_ && param3))
                           {
                              _loc13_.§_-09T§ = _loc14_;
                           }
                        }
                     }
                     else
                     {
                        addr85:
                        §§push(§_-09t§.§_-yf§(param2));
                        if(_loc16_)
                        {
                           _loc11_ = §§pop();
                           _loc10_ = new §_-BQ§(this,param1,this.§_-6A§.mLevelEngine.mWorld,this.§_-6A§,this.§_-q-§,param2,param3,param4,param5,param9,_loc11_.particleJSONId,_loc11_.particleVariationCount);
                        }
                        else
                        {
                           addr119:
                           §§push((_loc12_ = §§pop()) == null);
                           if(!(_loc15_ && param1))
                           {
                              §§push(§§pop());
                              if(_loc16_)
                              {
                                 if(§§pop())
                                 {
                                    if(!(_loc15_ && param1))
                                    {
                                       §§pop();
                                       if(!_loc15_)
                                       {
                                          §§push(param2);
                                          if(_loc16_ || param2)
                                          {
                                             §§push(§§pop().indexOf("MISC_") == 0);
                                             if(!_loc15_)
                                             {
                                                addr169:
                                                if(§§pop())
                                                {
                                                   if(_loc16_ || param1)
                                                   {
                                                      addr190:
                                                      §§push("MISC_FOOD_");
                                                      if(_loc16_ || param2)
                                                      {
                                                         §§push(§§pop() + param2.substring(5));
                                                      }
                                                      param2 = §§pop();
                                                      if(_loc16_)
                                                      {
                                                         _loc12_ = §_-09t§.§_-yf§(param2);
                                                         addr198:
                                                         §§push(_loc12_.§_-kD§);
                                                         if(_loc16_)
                                                         {
                                                            §§push(§_-0-A§.§_-OZ§);
                                                            if(!(_loc15_ && param1))
                                                            {
                                                               §§push(§§pop() == §§pop());
                                                               if(_loc16_ || param1)
                                                               {
                                                                  addr219:
                                                                  if(!§§pop())
                                                                  {
                                                                     if(_loc16_)
                                                                     {
                                                                        §§pop();
                                                                        §§goto(addr237);
                                                                     }
                                                                  }
                                                               }
                                                               if(!§§pop())
                                                               {
                                                                  _loc10_ = new §_-eZ§(this,param1,this.§_-6A§.mLevelEngine.mWorld,this.§_-6A§,this.§_-q-§,param2,param3,param4,param5,param9,_loc12_.front);
                                                               }
                                                               §§goto(addr237);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr235);
                                                   }
                                                   §§goto(addr237);
                                                }
                                                §§goto(addr198);
                                             }
                                             §§goto(addr219);
                                          }
                                          §§goto(addr190);
                                       }
                                       §§goto(addr237);
                                    }
                                    §§goto(addr219);
                                 }
                                 §§goto(addr169);
                              }
                              §§goto(addr219);
                           }
                           §§goto(addr169);
                        }
                     }
                     addr237:
                     if(!(_loc15_ && param2))
                     {
                        addr235:
                        §§push(_loc12_.§_-kD§ == §_-0-A§.§_-FB§);
                     }
                     return new §_-02m§(this,param1,this.§_-6A§.mLevelEngine.mWorld,this.§_-6A§,this.§_-q-§,param2,param3,param4,param5,param9,_loc12_.front,_loc12_.particleJSONId,_loc12_.particleVariationCount);
                  }
                  addr81:
                  §§push(param2);
                  §§push("PIG");
                  §§goto(addr85);
               }
               if(§§pop().indexOf(§§pop()) == 0)
               {
                  §§goto(addr85);
               }
               else
               {
                  §§push(§_-09t§.§_-yf§(param2));
               }
               §§goto(addr119);
            }
            §§goto(addr81);
         }
         §§goto(addr85);
      }
      
      public function §_-8h§(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§_-eZ§ = null;
         var _loc2_:* = int(this.§_-Tx§.length - 1);
         loop0:
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§_-Tx§[_loc2_] as §_-eZ§;
            if(!_loc4_)
            {
               if(_loc3_)
               {
                  loop1:
                  while(true)
                  {
                     if(_loc3_.§_-Kh§ <= 0)
                     {
                        if(!(_loc4_ && _loc2_))
                        {
                           this.§_-Fq§(_loc2_,true,true,true);
                           addr114:
                           loop6:
                           while(true)
                           {
                              addr39:
                              loop5:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 if(_loc5_)
                                 {
                                    §§push(§§pop() - 1);
                                 }
                                 _loc2_ = §§pop();
                                 if(!_loc4_)
                                 {
                                    addr57:
                                    if(!(_loc4_ && _loc2_))
                                    {
                                       if(_loc4_ && param1)
                                       {
                                          continue loop6;
                                       }
                                       if(_loc4_)
                                       {
                                          continue loop1;
                                       }
                                       if(true)
                                       {
                                          break;
                                       }
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          §§goto(addr57);
                                       }
                                       addr84:
                                    }
                                    while(true)
                                    {
                                       _loc3_.§_-rj§();
                                    }
                                 }
                                 while(true)
                                 {
                                    continue loop5;
                                 }
                              }
                              continue loop0;
                           }
                           addr114:
                        }
                        §§goto(addr114);
                     }
                     else
                     {
                        _loc3_.§_-03C§();
                     }
                     §§goto(addr84);
                  }
               }
               §§goto(addr39);
            }
            §§goto(addr114);
         }
         if(_loc5_)
         {
            this.§_-v8§(param1);
         }
      }
      
      protected function §_-v8§(param1:Number) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc3_:§_-06y§ = null;
         var _loc4_:§_-023§ = null;
         var _loc5_:* = 0;
         var _loc6_:§_-eZ§ = null;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc2_:* = int(this.§_-CA§.length - 1);
         while(true)
         {
            §§push(_loc2_);
            if(!_loc11_)
            {
               if(§§pop() < 0)
               {
                  §§goto(addr463);
               }
               if((_loc4_ = this.§_-CA§[_loc2_]).§_-Ux§)
               {
                  if(!(_loc12_ || _loc2_))
                  {
                     continue;
                  }
                  §§push(_loc4_.update(param1));
                  if(_loc12_ || this)
                  {
                     §§push(int(§§pop()));
                     if(_loc12_ || _loc3_)
                     {
                        addr74:
                        §§push(§§pop());
                        if(!_loc11_)
                        {
                           _loc5_ = §§pop();
                           addr139:
                           if(!(_loc11_ && _loc2_))
                           {
                              §§push(-1);
                           }
                           _loc2_ = §§pop();
                           continue;
                        }
                        if(§§pop() != §§pop())
                        {
                           if(_loc11_)
                           {
                              continue;
                           }
                           §§push(this);
                           §§push("block_");
                           if(!(_loc11_ && this))
                           {
                              §§push(§§pop() + _loc5_);
                           }
                           if(_loc6_ = §§pop().§_-ec§(§§pop()))
                           {
                              if(_loc12_ || _loc3_)
                              {
                                 this.§_-zn§(_loc6_,true,true,true);
                                 if(_loc11_ && _loc3_)
                                 {
                                 }
                                 addr130:
                                 §§push(_loc2_);
                                 if(_loc12_ || _loc2_)
                                 {
                                    §§goto(addr139);
                                    §§push(§§pop() - 1);
                                 }
                                 §§goto(addr139);
                              }
                              §§goto(addr130);
                           }
                           this.§_-CA§.splice(_loc2_,1);
                        }
                        §§goto(addr130);
                     }
                     §§goto(addr139);
                  }
                  §§goto(addr74);
               }
               §§goto(addr130);
            }
            break;
         }
         var _loc9_:* = §§pop();
         if(_loc12_ || this)
         {
            loop1:
            for each(_loc3_ in this.§_-T3§)
            {
               if(_loc12_ || _loc3_)
               {
                  §§push(_loc3_.type == §_-fi§.§_-37§);
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr458:
                              while(true)
                              {
                                 §§push(Boolean(_loc3_.§_-01R§));
                              }
                           }
                           addr457:
                        }
                        while(true)
                        {
                           loop7:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 continue loop1;
                              }
                              loop8:
                              while(true)
                              {
                                 §§push(_loc3_.§_-0C3§);
                                 while(true)
                                 {
                                    §§push((§§pop() as b2PrismaticJoint).§_-qk§());
                                    loop10:
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       loop11:
                                       while(true)
                                       {
                                          _loc7_ = §§pop();
                                          while(true)
                                          {
                                             §§push(_loc3_.§_-0C3§);
                                             while(true)
                                             {
                                                §§push((§§pop() as b2PrismaticJoint).§_-be§());
                                                loop14:
                                                while(true)
                                                {
                                                   §§push(Number(§§pop()));
                                                   loop15:
                                                   while(!_loc11_)
                                                   {
                                                      _loc8_ = §§pop();
                                                      loop16:
                                                      while(true)
                                                      {
                                                         §§push(Boolean(_loc3_.§_-Wm§));
                                                         if(_loc12_ || _loc2_)
                                                         {
                                                            if(_loc11_)
                                                            {
                                                               break;
                                                            }
                                                            §§push(§§pop());
                                                            loop17:
                                                            while(true)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     loop19:
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           loop20:
                                                                           while(true)
                                                                           {
                                                                              §§pop();
                                                                              loop21:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc8_);
                                                                                 loop22:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(0);
                                                                                    loop23:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() > §§pop());
                                                                                       loop24:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          loop25:
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                loop26:
                                                                                                while(!(_loc11_ && _loc3_))
                                                                                                {
                                                                                                   §§pop();
                                                                                                   loop27:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc7_);
                                                                                                      loop28:
                                                                                                      while(!_loc11_)
                                                                                                      {
                                                                                                         if(_loc11_ && _loc2_)
                                                                                                         {
                                                                                                            continue loop11;
                                                                                                         }
                                                                                                         §§push(§§pop() >= _loc3_.upperLimit);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            loop30:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop());
                                                                                                               loop31:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc11_)
                                                                                                                  {
                                                                                                                     continue loop17;
                                                                                                                  }
                                                                                                                  if(!_loc12_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  if(!§§pop())
                                                                                                                  {
                                                                                                                     loop32:
                                                                                                                     for(; !_loc11_; while(_loc12_ || this)
                                                                                                                     {
                                                                                                                        if(!(_loc12_ || _loc3_))
                                                                                                                        {
                                                                                                                           continue loop24;
                                                                                                                        }
                                                                                                                        if(!(_loc11_ && _loc3_))
                                                                                                                        {
                                                                                                                           §§pop();
                                                                                                                           §§goto(addr319);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr457);
                                                                                                                        }
                                                                                                                     })
                                                                                                                     {
                                                                                                                        §§pop();
                                                                                                                        loop33:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc11_)
                                                                                                                           {
                                                                                                                              continue loop27;
                                                                                                                           }
                                                                                                                           if(!(_loc12_ || this))
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              addr272:
                                                                                                                              addr210:
                                                                                                                              loop35:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc8_);
                                                                                                                                 while(!_loc11_)
                                                                                                                                 {
                                                                                                                                    if(_loc12_)
                                                                                                                                    {
                                                                                                                                       §§push(0);
                                                                                                                                       if(_loc12_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() < §§pop());
                                                                                                                                          while(!_loc11_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop());
                                                                                                                                             if(_loc12_ || param1)
                                                                                                                                             {
                                                                                                                                                if(!_loc11_)
                                                                                                                                                {
                                                                                                                                                   if(_loc12_)
                                                                                                                                                   {
                                                                                                                                                      if(!§§pop())
                                                                                                                                                      {
                                                                                                                                                         break loop35;
                                                                                                                                                      }
                                                                                                                                                      continue loop32;
                                                                                                                                                   }
                                                                                                                                                   continue loop19;
                                                                                                                                                }
                                                                                                                                                continue loop25;
                                                                                                                                             }
                                                                                                                                             continue loop31;
                                                                                                                                          }
                                                                                                                                          continue loop26;
                                                                                                                                          addr282:
                                                                                                                                       }
                                                                                                                                       continue loop23;
                                                                                                                                    }
                                                                                                                                    §§push(_loc7_);
                                                                                                                                    continue loop22;
                                                                                                                                    if(!(_loc12_ || _loc2_))
                                                                                                                                    {
                                                                                                                                       continue;
                                                                                                                                    }
                                                                                                                                    if(_loc11_ && _loc3_)
                                                                                                                                    {
                                                                                                                                       continue loop14;
                                                                                                                                    }
                                                                                                                                    §§push(§§pop() <= _loc3_.lowerLimit);
                                                                                                                                    if(_loc11_ && this)
                                                                                                                                    {
                                                                                                                                       continue loop32;
                                                                                                                                    }
                                                                                                                                    if(_loc12_)
                                                                                                                                    {
                                                                                                                                       continue loop30;
                                                                                                                                    }
                                                                                                                                    §§goto(addr282);
                                                                                                                                 }
                                                                                                                                 continue loop28;
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!§§pop())
                                                                                                                                 {
                                                                                                                                    continue loop1;
                                                                                                                                 }
                                                                                                                                 if(!(_loc11_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    continue loop33;
                                                                                                                                 }
                                                                                                                                 addr261:
                                                                                                                                 if(_loc11_ && _loc2_)
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!_loc11_)
                                                                                                                                       {
                                                                                                                                          continue loop16;
                                                                                                                                       }
                                                                                                                                       continue loop21;
                                                                                                                                    }
                                                                                                                                    continue loop16;
                                                                                                                                    addr319:
                                                                                                                                 }
                                                                                                                                 if(!_loc11_)
                                                                                                                                 {
                                                                                                                                    if(true)
                                                                                                                                    {
                                                                                                                                       continue loop1;
                                                                                                                                    }
                                                                                                                                    §§goto(addr272);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    loop41:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(Boolean(_loc3_.§_-5R§));
                                                                                                                                       break loop26;
                                                                                                                                       addr413:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§pop();
                                                                                                                                          continue loop41;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr458);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        continue loop8;
                                                                                                                     }
                                                                                                                     continue loop20;
                                                                                                                  }
                                                                                                                  §§goto(addr210);
                                                                                                               }
                                                                                                               continue loop3;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop15;
                                                                                                   }
                                                                                                }
                                                                                                while(!_loc11_)
                                                                                                {
                                                                                                   continue loop2;
                                                                                                }
                                                                                                §§goto(addr413);
                                                                                             }
                                                                                             §§goto(addr345);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr210);
                                                                     }
                                                                  }
                                                                  addr393:
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr413);
                                                      }
                                                      continue loop7;
                                                   }
                                                   continue loop10;
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
                  }
               }
               §§goto(addr364);
            }
         }
         addr463:
         if(_loc12_)
         {
            break loop0;
         }
      }
      
      public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            this.§_-ll§.push(§_-wS§.createExplosion(param1,param2,param3));
            do
            {
               §_-pX§.playSound("TntExplosions","ChannelExplosions");
            }
            while(!(_loc4_ || this));
            
         }
      }
      
      public function §_-1X§(param1:Number, param2:Number) : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§_-eZ§ = null;
         var _loc3_:* = int(this.§_-Tx§.length - 1);
         while(true)
         {
            §§push(_loc3_);
            if(_loc6_ || param1)
            {
               if(§§pop() < 0)
               {
                  break;
               }
               if(_loc4_ = this.§_-Tx§[_loc3_])
               {
                  if(_loc6_ || this)
                  {
                     if(_loc4_.isInCoordinates(param1,param2))
                     {
                        if(!_loc6_)
                        {
                           continue;
                        }
                        §§push(_loc3_);
                        if(_loc6_ || _loc3_)
                        {
                           return §§pop();
                        }
                        addr89:
                        §§push(§§pop() - 1);
                     }
                     else
                     {
                        addr86:
                        §§push(_loc3_);
                        if(_loc6_)
                        {
                           §§goto(addr89);
                        }
                     }
                     _loc3_ = §§pop();
                     continue;
                  }
               }
               §§goto(addr86);
            }
            break;
         }
         return §§pop();
      }
      
      public function §_-bS§(param1:Number, param2:Number) : §_-eZ§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§_-eZ§ = null;
         var _loc3_:* = int(this.§_-Tx§.length - 1);
         while(true)
         {
            if(_loc3_ < 0)
            {
               return null;
            }
            if(_loc4_ = this.§_-Tx§[_loc3_])
            {
               if(!(_loc5_ || param1))
               {
                  break;
               }
               if(_loc4_.isInCoordinates(param1,param2))
               {
                  if(_loc5_)
                  {
                     break;
                  }
               }
               else
               {
                  addr78:
                  §§push(_loc3_);
                  if(_loc5_)
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc3_ = §§pop();
               }
               continue;
            }
            §§goto(addr78);
         }
         return _loc4_;
      }
      
      public function §_-086§(param1:int) : §_-eZ§
      {
         return this.§_-Tx§[param1];
      }
      
      public function §_-x0§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§_-eZ§ = null;
         var _loc3_:* = int(this.§_-Tx§.length - 1);
         while(_loc3_ >= 0)
         {
            (_loc4_ = this.§_-Tx§[_loc3_] as §_-eZ§).§_-x0§(param2,param1);
            if(_loc5_ || param2)
            {
               §§push(_loc3_);
               if(!_loc6_)
               {
                  §§push(§§pop() - 1);
               }
               _loc3_ = §§pop();
            }
         }
      }
      
      private function §_-0Bu§(param1:§_-eZ§, param2:Number) : Boolean
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§_-eZ§ = null;
         if(!_loc8_)
         {
            §§push(this.mSardineCanAdded);
            if(_loc9_)
            {
               if(!§§pop())
               {
                  if(_loc9_)
                  {
                     §§push(true);
                     if(!(_loc8_ && param2))
                     {
                        §§goto(addr43);
                     }
                  }
                  else
                  {
                     addr53:
                     §§push(false);
                     if(_loc8_ && this)
                     {
                        addr63:
                        var _loc3_:* = §§pop();
                        if(!(_loc8_ && param2))
                        {
                           §§push(param1.§_-Kh§);
                           loop0:
                           while(true)
                           {
                              §§push(param1.§_-8l§);
                              while(true)
                              {
                                 if(§§pop() != §§pop())
                                 {
                                    §§push(this.§_-06A§);
                                    loop2:
                                    while(true)
                                    {
                                       §§push(0);
                                       addr474:
                                       while(true)
                                       {
                                          if(§§pop() == §§pop())
                                          {
                                             while(true)
                                             {
                                                this.§_-06A§ = this.§_-6A§.§_-Dn§;
                                                addr480:
                                                while(true)
                                                {
                                                }
                                             }
                                             addr475:
                                          }
                                          loop6:
                                          while(true)
                                          {
                                             §§push(param1.§_-01F§());
                                             loop7:
                                             while(true)
                                             {
                                                §§push(Boolean(§§pop()));
                                                loop8:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   loop9:
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         loop10:
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            loop11:
                                                            while(!_loc8_)
                                                            {
                                                               §§push(this.§_-db§(param1));
                                                               if(!_loc8_)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  if(_loc9_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        loop47:
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              loop18:
                                                                              while(true)
                                                                              {
                                                                                 loop19:
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       loop20:
                                                                                       while(_loc9_)
                                                                                       {
                                                                                          §§push(this.mMightyEagleTimer);
                                                                                          if(!(_loc8_ && this))
                                                                                          {
                                                                                             if(§§pop() < this.§_-L8§.MIGHTY_EAGLE_WAIT_TIME)
                                                                                             {
                                                                                                loop21:
                                                                                                while(_loc9_)
                                                                                                {
                                                                                                   §§push(this.mMightyEagleTimer);
                                                                                                   loop22:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(param2);
                                                                                                      loop23:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         addr398:
                                                                                                         loop24:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                            loop25:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc4_ = §§pop();
                                                                                                               loop26:
                                                                                                               while(_loc9_)
                                                                                                               {
                                                                                                                  §§push(this.mMightyEagleTimer);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() < this.§_-L8§.MIGHTY_EAGLE_SOUND_DELAY);
                                                                                                                     loop28:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop());
                                                                                                                        if(_loc8_)
                                                                                                                        {
                                                                                                                           while(_loc9_)
                                                                                                                           {
                                                                                                                              if(!§§pop())
                                                                                                                              {
                                                                                                                                 continue loop18;
                                                                                                                              }
                                                                                                                              §§goto(addr428);
                                                                                                                           }
                                                                                                                           continue loop9;
                                                                                                                           addr425:
                                                                                                                        }
                                                                                                                        if(_loc8_ && this)
                                                                                                                        {
                                                                                                                           continue loop47;
                                                                                                                        }
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           while(!(_loc8_ && param1))
                                                                                                                           {
                                                                                                                              §§pop();
                                                                                                                              loop30:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!(_loc8_ && param1))
                                                                                                                                 {
                                                                                                                                    §§push(_loc4_);
                                                                                                                                    loop31:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc9_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() > this.§_-L8§.MIGHTY_EAGLE_SOUND_DELAY);
                                                                                                                                          while(_loc9_)
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                   loop34:
                                                                                                                                                   while(!_loc8_)
                                                                                                                                                   {
                                                                                                                                                      §_-pX§.playSound("Mighty_Eagle_Selected_1","ChannelBird");
                                                                                                                                                      while(!(_loc8_ && param2))
                                                                                                                                                      {
                                                                                                                                                         if(!_loc8_)
                                                                                                                                                         {
                                                                                                                                                            §_-pX§.playSound("Mighty_Eagle_Flying_1","ChannelBird");
                                                                                                                                                            addr301:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                            }
                                                                                                                                                            addr301:
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr480);
                                                                                                                                                         }
                                                                                                                                                         while(_loc9_ || param1)
                                                                                                                                                         {
                                                                                                                                                            if(_loc8_ && param2)
                                                                                                                                                            {
                                                                                                                                                               continue loop34;
                                                                                                                                                            }
                                                                                                                                                            if(_loc9_ || _loc3_)
                                                                                                                                                            {
                                                                                                                                                               §§push(param1.§_-SJ§());
                                                                                                                                                               loop39:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop().GetPosition());
                                                                                                                                                                  loop40:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop().x);
                                                                                                                                                                     loop41:
                                                                                                                                                                     while(_loc9_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() - this.§_-L8§.MIGHTY_EAGLE_STARTING_DISTANCE_X);
                                                                                                                                                                        loop42:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                           loop43:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              _loc5_ = §§pop();
                                                                                                                                                                              if(_loc9_ || param1)
                                                                                                                                                                              {
                                                                                                                                                                                 do
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(param1.§_-SJ§());
                                                                                                                                                                                    if(!_loc9_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop39;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(_loc8_ && param2)
                                                                                                                                                                                    {
                                                                                                                                                                                       break loop31;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(§§pop().GetPosition());
                                                                                                                                                                                    if(!_loc9_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop40;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(§§pop().y);
                                                                                                                                                                                    if(!_loc8_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc8_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop42;
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop43;
                                                                                                                                                                                    }
                                                                                                                                                                                    addr200:
                                                                                                                                                                                    if(!(_loc9_ || param2))
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop41;
                                                                                                                                                                                    }
                                                                                                                                                                                    addr207:
                                                                                                                                                                                    if(!(_loc8_ && param2))
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop0;
                                                                                                                                                                                    }
                                                                                                                                                                                    addr368:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop18;
                                                                                                                                                                                       §§goto(addr207);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 while(false);
                                                                                                                                                                                 
                                                                                                                                                                                 addr533:
                                                                                                                                                                                 _loc7_ = this.addObject("BIRD_MIGHTY_EAGLE",_loc5_,_loc6_,this.§_-L8§.MIGHTY_EAGLE_FLYING_ANGLE * 1.2);
                                                                                                                                                                                 if(!(_loc8_ && param1))
                                                                                                                                                                                 {
                                                                                                                                                                                    this.mMightyEagleAdded = true;
                                                                                                                                                                                    addr574:
                                                                                                                                                                                    this.§_-06A§ = 0;
                                                                                                                                                                                    addr582:
                                                                                                                                                                                 }
                                                                                                                                                                                 _loc7_.§_-U-§.§_-3U§(1.82);
                                                                                                                                                                                 if(!_loc8_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc8_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(false)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr574);
                                                                                                                                                                                       }
                                                                                                                                                                                       addr583:
                                                                                                                                                                                       this.mMightyEagleTimer = _loc4_;
                                                                                                                                                                                       addr586:
                                                                                                                                                                                       §§goto(addr587);
                                                                                                                                                                                       §§push(_loc3_);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr582);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr578:
                                                                                                                                                                                 §§goto(addr578);
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr586);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        continue loop23;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop22;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               continue loop6;
                                                                                                                                                            }
                                                                                                                                                            continue loop34;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(_loc9_ || this)
                                                                                                                                                         {
                                                                                                                                                            continue loop2;
                                                                                                                                                         }
                                                                                                                                                         addr507:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§_-BH§);
                                                                                                                                                            addr509:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(§§pop() < this.§_-L8§.SARDINE_CAN_MAX_ROTATION_SPEED)
                                                                                                                                                               {
                                                                                                                                                                  break loop30;
                                                                                                                                                               }
                                                                                                                                                               addr486:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  return param1.§_-SJ§();
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      return §§pop();
                                                                                                                                                   }
                                                                                                                                                   continue loop20;
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc4_);
                                                                                                                                                   if(!(_loc8_ && param2))
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc9_ || _loc3_))
                                                                                                                                                      {
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                      if(_loc8_)
                                                                                                                                                      {
                                                                                                                                                         continue loop24;
                                                                                                                                                      }
                                                                                                                                                      if(§§pop() >= this.§_-L8§.MIGHTY_EAGLE_WAIT_TIME)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr245);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr583);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr286);
                                                                                                                                                   §§goto(addr301);
                                                                                                                                                }
                                                                                                                                                continue loop25;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§pop();
                                                                                                                                             §§goto(addr450);
                                                                                                                                          }
                                                                                                                                          addr310:
                                                                                                                                          addr449:
                                                                                                                                       }
                                                                                                                                       §§goto(addr509);
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(param2);
                                                                                                                                       if(_loc9_ || this)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * this.§_-BH§);
                                                                                                                                       }
                                                                                                                                       §§pop().§_-ZF§(§§pop());
                                                                                                                                       break loop20;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 break;
                                                                                                                                 addr131:
                                                                                                                                 if(!(_loc9_ || param2))
                                                                                                                                 {
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                                 §§goto(addr138);
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(this);
                                                                                                                                 §§push(this.§_-BH§);
                                                                                                                                 if(!(_loc8_ && param2))
                                                                                                                                 {
                                                                                                                                    §§push(param2);
                                                                                                                                    if(_loc9_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * this.§_-L8§.SARDINE_CAN_ROTATION_ACCELERATION);
                                                                                                                                    }
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                 }
                                                                                                                                 §§pop().§_-BH§ = §§pop();
                                                                                                                                 break loop11;
                                                                                                                              }
                                                                                                                              addr85:
                                                                                                                              if(_loc8_ && param2)
                                                                                                                              {
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              if(!_loc9_)
                                                                                                                              {
                                                                                                                                 continue loop28;
                                                                                                                              }
                                                                                                                              if(!_loc9_)
                                                                                                                              {
                                                                                                                                 continue loop19;
                                                                                                                              }
                                                                                                                              if(!_loc8_)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    if(!(_loc8_ && param2))
                                                                                                                                    {
                                                                                                                                       if(_loc9_)
                                                                                                                                       {
                                                                                                                                          if(!_loc9_)
                                                                                                                                          {
                                                                                                                                             continue loop26;
                                                                                                                                          }
                                                                                                                                          if(!_loc9_)
                                                                                                                                          {
                                                                                                                                             continue loop21;
                                                                                                                                          }
                                                                                                                                          if(!_loc8_)
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(true);
                                                                                                                                                if(_loc9_)
                                                                                                                                                {
                                                                                                                                                   loop57:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc9_)
                                                                                                                                                      {
                                                                                                                                                         continue loop8;
                                                                                                                                                      }
                                                                                                                                                      _loc3_ = §§pop();
                                                                                                                                                      if(!_loc8_)
                                                                                                                                                      {
                                                                                                                                                         addr122:
                                                                                                                                                         if(_loc9_ || param1)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc8_)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr131);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr301);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(this.§_-db§(param1));
                                                                                                                                                               if(_loc9_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc8_)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr85);
                                                                                                                                                                  }
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               continue loop57;
                                                                                                                                                               §§goto(addr122);
                                                                                                                                                            }
                                                                                                                                                            addr222:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr310);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr583);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr587);
                                                                                                                                             }
                                                                                                                                             addr114:
                                                                                                                                          }
                                                                                                                                          §§goto(addr475);
                                                                                                                                       }
                                                                                                                                       §§goto(addr245);
                                                                                                                                    }
                                                                                                                                    §§goto(addr583);
                                                                                                                                 }
                                                                                                                                 §§goto(addr533);
                                                                                                                              }
                                                                                                                              while(!(_loc8_ && param1))
                                                                                                                              {
                                                                                                                                 §§pop();
                                                                                                                                 break loop21;
                                                                                                                              }
                                                                                                                              continue loop10;
                                                                                                                              addr428:
                                                                                                                           }
                                                                                                                           continue loop7;
                                                                                                                        }
                                                                                                                        §§goto(addr312);
                                                                                                                     }
                                                                                                                     continue loop47;
                                                                                                                  }
                                                                                                               }
                                                                                                               continue loop11;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§goto(addr368);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr583);
                                                                                          }
                                                                                          §§goto(addr398);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          this.§_-06A§ = 0;
                                                                                          §§goto(addr485);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr583);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     addr446:
                                                                  }
                                                               }
                                                               §§goto(addr449);
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr486);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr446);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr507);
                              }
                           }
                        }
                        §§goto(addr114);
                     }
                  }
               }
               else
               {
                  §§push(this.mMightyEagleAdded);
                  if(!_loc8_)
                  {
                     if(§§pop())
                     {
                        if(!_loc8_)
                        {
                           §§goto(addr53);
                        }
                        else
                        {
                           addr62:
                           §§push(false);
                        }
                        §§goto(addr63);
                     }
                     §§goto(addr62);
                  }
               }
               return §§pop();
            }
            addr43:
            return §§pop();
         }
         §§goto(addr62);
      }
      
      private function §_-Sc§(param1:§_-eZ§, param2:Number) : Boolean
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:§_-eZ§ = null;
         if(_loc8_)
         {
            §§push(Boolean(this.§_-L8§.MIGHTY_EAGLE_USE_SHADE));
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(this.§_-1o§);
                           loop4:
                           while(true)
                           {
                              §§push(!§§pop());
                              if(_loc8_)
                              {
                                 §§push(Boolean(§§pop()));
                                 while(true)
                                 {
                                 }
                                 addr84:
                              }
                              loop5:
                              while(true)
                              {
                                 §§push(§§pop());
                                 if(_loc9_ && param1)
                                 {
                                    break;
                                 }
                                 if(!§§pop())
                                 {
                                    loop9:
                                    while(§§pop())
                                    {
                                       if(!_loc9_)
                                       {
                                          while(true)
                                          {
                                             this.§_-1o§ = true;
                                          }
                                          addr70:
                                       }
                                       loop10:
                                       while(_loc8_)
                                       {
                                          this.§_-6A§.§_-ET§();
                                          if(_loc9_)
                                          {
                                             continue;
                                          }
                                          if(!(_loc8_ || this))
                                          {
                                             continue loop3;
                                          }
                                          if(true)
                                          {
                                             break loop9;
                                          }
                                          while(true)
                                          {
                                             §§push(this.mMightyEagleTimer);
                                             if(_loc9_)
                                             {
                                                break;
                                             }
                                             §§push(§§pop() > this.§_-L8§.MIGHTY_EAGLE_SHADING_DELAY);
                                             if(_loc8_)
                                             {
                                                if(!_loc9_)
                                                {
                                                   continue loop4;
                                                }
                                                continue loop5;
                                             }
                                             addr94:
                                             while(true)
                                             {
                                                §§pop();
                                                break loop10;
                                             }
                                          }
                                          var _loc3_:* = §§pop();
                                          if(_loc8_)
                                          {
                                             §§push(this);
                                             §§push(this.mMightyEagleTimer);
                                             if(!(_loc9_ && _loc3_))
                                             {
                                                §§push(§§pop() + param2);
                                             }
                                             §§pop().mMightyEagleTimer = §§pop();
                                             if(_loc8_ || this)
                                             {
                                                addr130:
                                                §§push(this.§_-6A§.particles);
                                                §§push(§_-Hv§.§_-gA§);
                                                §§push(§_-Zc§.§_-MP§);
                                                §§push(§_-Hv§.§_-vg§);
                                                §§push(param1.§_-SJ§().GetPosition().x);
                                                if(!(_loc9_ && this))
                                                {
                                                   §§push(_loc3_);
                                                   if(!_loc9_)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      if(!_loc9_)
                                                      {
                                                         §§push(Math.random() * (_loc3_ * 2));
                                                         if(!_loc9_)
                                                         {
                                                            addr165:
                                                            §§push(§§pop() + §§pop());
                                                            §§push(param1.§_-SJ§().GetPosition().y);
                                                            if(!(_loc9_ && param1))
                                                            {
                                                               addr176:
                                                               §§push(_loc3_);
                                                               if(_loc8_)
                                                               {
                                                                  addr189:
                                                                  §§push(§§pop() - §§pop());
                                                                  if(!_loc9_)
                                                                  {
                                                                     addr182:
                                                                     §§push(Math.random() * (_loc3_ * 2));
                                                                  }
                                                                  §§pop().§_-0EQ§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),3500,"",§_-Hv§.§_-08L§(param1.§_-o2§),0,0,1,0,4);
                                                                  var _loc4_:* = 1;
                                                                  if(_loc8_ || _loc3_)
                                                                  {
                                                                     addr307:
                                                                     if(this.mMightyEagleHasTouchedGround)
                                                                     {
                                                                        addr308:
                                                                        param1.§_-0Dc§(this.§_-L8§.MIGHTY_EAGLE_ROTATION_SPEED * param2);
                                                                        addr315:
                                                                        §§push(-1);
                                                                        if(!_loc9_)
                                                                        {
                                                                           _loc4_ = §§pop();
                                                                           addr304:
                                                                           §§push(this.§_-04N§);
                                                                           if(_loc8_)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 addr286:
                                                                                 if(_loc8_ || _loc3_)
                                                                                 {
                                                                                    addr293:
                                                                                    this.§_-04N§ = false;
                                                                                    addr296:
                                                                                    if(_loc8_)
                                                                                    {
                                                                                       this.§_-6A§.§_-07i§();
                                                                                       addr267:
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          param1.§_-Dv§(§_-a2§.§_-lC§);
                                                                                          addr260:
                                                                                          if(_loc8_)
                                                                                          {
                                                                                             this.mSardineCanAdded = false;
                                                                                             addr252:
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                addr245:
                                                                                                param1.§_-U-§.§_-PZ§ = true;
                                                                                                addr242:
                                                                                                addr247:
                                                                                                §§push(param1.§_-U-§);
                                                                                                if(!(_loc9_ && param1))
                                                                                                {
                                                                                                   §§pop().§_-JE§();
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      if(!(_loc9_ && _loc3_))
                                                                                                      {
                                                                                                         if(!(_loc9_ && this))
                                                                                                         {
                                                                                                            if(!_loc9_)
                                                                                                            {
                                                                                                               if(false)
                                                                                                               {
                                                                                                                  §§goto(addr242);
                                                                                                               }
                                                                                                               addr317:
                                                                                                               var _loc6_:int = 0;
                                                                                                               var _loc7_:* = this.§_-Tx§;
                                                                                                               addr373:
                                                                                                               §§push(§§hasnext(_loc7_,_loc6_));
                                                                                                               if(_loc8_ || this)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     _loc5_ = §§nextvalue(_loc6_,_loc7_);
                                                                                                                     §§push(Boolean(_loc5_));
                                                                                                                     if(!_loc9_)
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           if(_loc8_ || param2)
                                                                                                                           {
                                                                                                                              addr342:
                                                                                                                              §§pop();
                                                                                                                              if(_loc8_)
                                                                                                                              {
                                                                                                                                 §§push(_loc5_.§_-Es§());
                                                                                                                                 if(_loc8_)
                                                                                                                                 {
                                                                                                                                    addr350:
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       if(_loc8_ || param2)
                                                                                                                                       {
                                                                                                                                          §§push(_loc5_.§_-SJ§());
                                                                                                                                          if(_loc8_)
                                                                                                                                          {
                                                                                                                                             §§pop().SetAwake(true);
                                                                                                                                             if(!_loc9_)
                                                                                                                                             {
                                                                                                                                                addr366:
                                                                                                                                                §§push(_loc5_.§_-SJ§());
                                                                                                                                             }
                                                                                                                                             §§goto(addr373);
                                                                                                                                          }
                                                                                                                                          §§pop().SetLinearVelocity(new b2Vec2(0,-18));
                                                                                                                                       }
                                                                                                                                       §§goto(addr366);
                                                                                                                                    }
                                                                                                                                    §§goto(addr373);
                                                                                                                                 }
                                                                                                                                 §§goto(addr350);
                                                                                                                              }
                                                                                                                              §§goto(addr366);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr350);
                                                                                                                     }
                                                                                                                     §§goto(addr342);
                                                                                                                  }
                                                                                                                  if(!_loc9_)
                                                                                                                  {
                                                                                                                     if(!_loc9_)
                                                                                                                     {
                                                                                                                        if(!(_loc9_ && param1))
                                                                                                                        {
                                                                                                                           this.§_-qr§();
                                                                                                                           if(!_loc9_)
                                                                                                                           {
                                                                                                                              addr399:
                                                                                                                              §§push(this.mMightyEagleTimer > 6000);
                                                                                                                              if(_loc8_)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    if(!(_loc9_ && param1))
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       if(_loc8_ || this)
                                                                                                                                       {
                                                                                                                                          §§push(this.isPigsAlive());
                                                                                                                                          if(_loc8_)
                                                                                                                                          {
                                                                                                                                             §§push(Boolean(§§pop()));
                                                                                                                                             if(!_loc9_)
                                                                                                                                             {
                                                                                                                                                addr429:
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                   if(!(_loc9_ && this))
                                                                                                                                                   {
                                                                                                                                                      addr437:
                                                                                                                                                      _loc6_ = 0;
                                                                                                                                                      if(!(_loc9_ && this))
                                                                                                                                                      {
                                                                                                                                                         _loc7_ = this.§_-Tx§;
                                                                                                                                                         addr502:
                                                                                                                                                         for each(_loc5_ in _loc7_)
                                                                                                                                                         {
                                                                                                                                                            §§push(Boolean(_loc5_));
                                                                                                                                                            if(!(_loc9_ && param1))
                                                                                                                                                            {
                                                                                                                                                               if(§§pop())
                                                                                                                                                               {
                                                                                                                                                                  if(_loc8_ || param2)
                                                                                                                                                                  {
                                                                                                                                                                     §§pop();
                                                                                                                                                                     if(!_loc9_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc5_.§_-Es§());
                                                                                                                                                                        if(!(_loc9_ && _loc3_))
                                                                                                                                                                        {
                                                                                                                                                                           addr488:
                                                                                                                                                                           if(§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc8_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr491:
                                                                                                                                                                                 §§push(_loc5_);
                                                                                                                                                                                 §§push(_loc5_.§_-8l§);
                                                                                                                                                                                 if(_loc8_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() * 2);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§pop().applyDamage(§§pop(),true,true,true);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr502);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr488);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr491);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr488);
                                                                                                                                                         }
                                                                                                                                                         addr505:
                                                                                                                                                         if(_loc8_)
                                                                                                                                                         {
                                                                                                                                                            param1.§_-QU§(param2,new Point(this.§_-L8§.MIGHTY_EAGLE_X_DIRECTION,_loc4_ * this.§_-L8§.MIGHTY_EAGLE_Y_CHANGE),this.§_-L8§.MIGHTY_EAGLE_FLYING_SPEED);
                                                                                                                                                            addr514:
                                                                                                                                                            if(_loc9_)
                                                                                                                                                            {
                                                                                                                                                               addr549:
                                                                                                                                                               if(_loc8_)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr514);
                                                                                                                                                               }
                                                                                                                                                               this.§_-04N§ = this.mMightyEagleHasTouchedGround;
                                                                                                                                                               §§goto(addr549);
                                                                                                                                                               addr561:
                                                                                                                                                            }
                                                                                                                                                            addr511:
                                                                                                                                                            return false;
                                                                                                                                                            addr552:
                                                                                                                                                            addr508:
                                                                                                                                                         }
                                                                                                                                                         addr504:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr505);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr561);
                                                                                                                                                }
                                                                                                                                                §§goto(addr552);
                                                                                                                                             }
                                                                                                                                             §§goto(addr511);
                                                                                                                                          }
                                                                                                                                          §§goto(addr429);
                                                                                                                                       }
                                                                                                                                       §§goto(addr508);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr429);
                                                                                                                              }
                                                                                                                              §§goto(addr511);
                                                                                                                           }
                                                                                                                           §§goto(addr437);
                                                                                                                        }
                                                                                                                        §§goto(addr399);
                                                                                                                     }
                                                                                                                     §§goto(addr505);
                                                                                                                  }
                                                                                                                  §§goto(addr504);
                                                                                                               }
                                                                                                               §§goto(addr502);
                                                                                                            }
                                                                                                            §§goto(addr286);
                                                                                                         }
                                                                                                         §§goto(addr260);
                                                                                                      }
                                                                                                      §§goto(addr252);
                                                                                                   }
                                                                                                   §§goto(addr247);
                                                                                                }
                                                                                                §§goto(addr245);
                                                                                             }
                                                                                             §§goto(addr267);
                                                                                          }
                                                                                          §§goto(addr296);
                                                                                       }
                                                                                       §§goto(addr304);
                                                                                    }
                                                                                    §§goto(addr315);
                                                                                 }
                                                                                 §§goto(addr308);
                                                                              }
                                                                              §§goto(addr399);
                                                                           }
                                                                           §§goto(addr307);
                                                                        }
                                                                        §§goto(addr317);
                                                                     }
                                                                     this.mMightyEagleHasTouchedGround = param1.§_-SJ§().GetPosition().y >= -5.5;
                                                                     §§goto(addr549);
                                                                  }
                                                                  §§goto(addr293);
                                                               }
                                                               §§push(§§pop() + §§pop());
                                                            }
                                                            §§goto(addr189);
                                                         }
                                                         §§goto(addr176);
                                                      }
                                                      §§goto(addr165);
                                                   }
                                                   §§goto(addr182);
                                                }
                                                §§goto(addr165);
                                             }
                                             §§goto(addr189);
                                          }
                                          §§goto(addr130);
                                          addr37:
                                       }
                                       while(true)
                                       {
                                          §§goto(addr37);
                                       }
                                    }
                                    §§goto(addr107);
                                    §§push(Number(3));
                                    addr66:
                                 }
                                 §§goto(addr94);
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
                  §§goto(addr84);
               }
               if(_loc9_ && param2)
               {
                  continue;
               }
               §§goto(addr66);
            }
         }
         §§goto(addr70);
      }
      
      private function §_-XM§() : void
      {
         var _loc20_:Boolean = false;
         var _loc21_:Boolean = true;
         var _loc1_:§_-wS§ = null;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§_-eZ§ = null;
         var _loc7_:* = 0;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         var _loc17_:* = NaN;
         loop0:
         while(this.§_-ll§.length > 0)
         {
            _loc1_ = this.§_-ll§.shift();
            if(_loc21_)
            {
               §§push(_loc1_.§_-0EY§);
               while(true)
               {
                  §§push(Number(§§pop()));
                  if(!_loc20_)
                  {
                     _loc2_ = §§pop();
                     loop2:
                     while(true)
                     {
                        §§push(_loc1_.x);
                        if(_loc21_ || _loc1_)
                        {
                           §§push(Number(§§pop()));
                           if(!(_loc20_ && this))
                           {
                              _loc3_ = §§pop();
                              loop3:
                              while(true)
                              {
                                 addr93:
                                 addr769:
                                 loop4:
                                 while(true)
                                 {
                                    §§push(_loc1_.y);
                                    if(_loc21_ || this)
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc21_)
                                       {
                                          _loc4_ = §§pop();
                                          if(_loc21_)
                                          {
                                             if(!_loc20_)
                                             {
                                                continue loop2;
                                             }
                                             continue loop3;
                                          }
                                          addr753:
                                          while(true)
                                          {
                                             §§push(_loc7_);
                                             loop21:
                                             for(; _loc21_; if(!(_loc21_ || _loc3_))
                                             {
                                                continue;
                                             },_loc7_ = §§pop(),if(!(_loc21_ || _loc2_))
                                             {
                                                continue loop0;
                                             },if(false)
                                             {
                                                §§goto(addr602);
                                             },§§goto(addr812))
                                             {
                                                §§push(180);
                                                while(true)
                                                {
                                                   §§push(§§pop() / Math.PI);
                                                   if(_loc21_)
                                                   {
                                                      §§push(§§pop() / §§pop());
                                                      if(_loc21_ || _loc1_)
                                                      {
                                                         if(_loc21_)
                                                         {
                                                            addr704:
                                                            if(_loc21_ || this)
                                                            {
                                                               addr712:
                                                               §§push(Number(§§pop()));
                                                               loop23:
                                                               while(true)
                                                               {
                                                                  if(_loc21_ || this)
                                                                  {
                                                                     _loc17_ = §§pop();
                                                                     loop24:
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc20_ && _loc1_))
                                                                        {
                                                                           if(!(_loc20_ && this))
                                                                           {
                                                                              if(!_loc20_)
                                                                              {
                                                                                 addr736:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§_-6A§);
                                                                                    if(_loc20_ && _loc3_)
                                                                                    {
                                                                                       addr778:
                                                                                       §§push(§§pop().particles);
                                                                                       break;
                                                                                    }
                                                                                    §§push(§§pop().particles);
                                                                                    if(_loc20_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§push(§_-Hv§.§_-Qs§);
                                                                                    if(_loc21_)
                                                                                    {
                                                                                       §§push(§_-Zc§.§_-MP§);
                                                                                       if(_loc21_ || _loc1_)
                                                                                       {
                                                                                          §§push(§_-Hv§.§_-vg§);
                                                                                          if(!_loc20_)
                                                                                          {
                                                                                             §§push(_loc3_);
                                                                                             if(!(_loc20_ && this))
                                                                                             {
                                                                                                §§push(_loc4_);
                                                                                                if(_loc21_)
                                                                                                {
                                                                                                   §§push(_loc16_);
                                                                                                   §§push("");
                                                                                                   §§push(§_-Hv§.§_-bP§);
                                                                                                   §§push(_loc15_);
                                                                                                   if(!(_loc20_ && this))
                                                                                                   {
                                                                                                      §§push(§§pop() * Math.cos(_loc17_));
                                                                                                   }
                                                                                                   §§push(_loc15_);
                                                                                                   if(_loc21_)
                                                                                                   {
                                                                                                      §§push(-§§pop());
                                                                                                      if(_loc21_)
                                                                                                      {
                                                                                                         addr665:
                                                                                                         §§push(§§pop() * Math.sin(_loc17_));
                                                                                                      }
                                                                                                      §§pop().§_-0EQ§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),20,0);
                                                                                                      if(!_loc20_)
                                                                                                      {
                                                                                                         continue loop24;
                                                                                                      }
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                   §§goto(addr665);
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr798:
                                                                                                §§push(_loc4_);
                                                                                             }
                                                                                             §§pop().§_-0EQ§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),600,"",§_-Hv§.§_-bP§,0,0,0,0,1,20,true);
                                                                                             addr811:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(30);
                                                                                                addr774:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc7_ = §§pop();
                                                                                                   break loop24;
                                                                                                }
                                                                                             }
                                                                                             addr811:
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr797:
                                                                                             §§push(_loc3_);
                                                                                          }
                                                                                          §§goto(addr798);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr795:
                                                                                          §§push(§_-Hv§.§_-4y§);
                                                                                       }
                                                                                       §§goto(addr797);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr793:
                                                                                       §§push(§_-Zc§.§_-MP§);
                                                                                    }
                                                                                    §§goto(addr795);
                                                                                 }
                                                                                 §§goto(addr793);
                                                                                 §§push(this.§_-OJ§(_loc1_.type));
                                                                                 addr602:
                                                                              }
                                                                              §§goto(addr811);
                                                                           }
                                                                           break;
                                                                        }
                                                                        addr771:
                                                                        while(true)
                                                                        {
                                                                           break loop21;
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        addr812:
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr813);
                                                                        }
                                                                     }
                                                                  }
                                                                  addr770:
                                                                  while(true)
                                                                  {
                                                                     _loc15_ = §§pop();
                                                                     §§goto(addr771);
                                                                     continue loop23;
                                                                  }
                                                               }
                                                               addr712:
                                                            }
                                                            break;
                                                         }
                                                         break loop2;
                                                      }
                                                      §§goto(addr712);
                                                   }
                                                   addr743:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      addr744:
                                                      addr762:
                                                      while(!(_loc20_ && this))
                                                      {
                                                         §§push(Number(§§pop()));
                                                         break loop2;
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(Math.random() * _loc2_);
                                                         addr766:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc21_)
                                                            {
                                                               break loop4;
                                                            }
                                                            §§goto(addr770);
                                                         }
                                                         §§goto(addr744);
                                                      }
                                                   }
                                                   if(!(_loc21_ || this))
                                                   {
                                                      continue;
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                   if(!_loc21_)
                                                   {
                                                      §§goto(addr712);
                                                   }
                                                   if(_loc21_ || _loc2_)
                                                   {
                                                      §§push(int(§§pop()));
                                                      if(!_loc20_)
                                                      {
                                                         continue loop21;
                                                      }
                                                      §§goto(addr813);
                                                   }
                                                   §§goto(addr744);
                                                }
                                                while(true)
                                                {
                                                   §§push(_loc2_);
                                                   if(!_loc20_)
                                                   {
                                                      §§goto(addr762);
                                                      §§push(§§pop() * §§pop());
                                                   }
                                                   §§goto(addr766);
                                                   §§goto(addr704);
                                                }
                                             }
                                             while(true)
                                             {
                                                §§goto(addr743);
                                             }
                                          }
                                       }
                                       break;
                                    }
                                    break;
                                 }
                              }
                           }
                           §§goto(addr770);
                        }
                        break;
                     }
                     while(true)
                     {
                        _loc16_ = §§pop();
                        §§goto(addr753);
                     }
                  }
                  §§goto(addr769);
               }
            }
            §§goto(addr811);
         }
      }
      
      protected function §_-OJ§(param1:int) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1);
         if(_loc4_ && param1)
         {
         }
         switch(§§pop())
         {
         }
         return §_-Hv§.§_-09R§;
      }
      
      public function §_-09C§(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:§_-eZ§ = null;
         var _loc3_:* = int(this.§_-Tx§.length - 1);
         loop0:
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§_-Tx§[_loc3_];
            if(!(_loc4_ && _loc2_))
            {
               §§push(_loc2_.§_-21§());
               loop1:
               for(; !§§pop(); if(_loc4_ && _loc3_)
               {
                  continue;
               },if(!§§pop())
               {
                  §§goto(addr185);
                  §§push(this.§_-db§(_loc2_));
               },§§goto(addr237))
               {
                  §§push(_loc2_.§_-rN§());
                  while(!_loc4_)
                  {
                     continue loop1;
                     loop3:
                     for(; !(_loc4_ && this); while(true)
                     {
                        if(!(_loc4_ && param1))
                        {
                           continue;
                        }
                        continue loop3;
                     },§§goto(addr145))
                     {
                        if(!§§pop())
                        {
                           §§push(_loc2_.isReadyToBeRemoved(param1));
                           continue;
                        }
                        if(_loc5_ || this)
                        {
                           if(!(_loc4_ && this))
                           {
                              _loc2_.§_-Dv§(§_-a2§.§_-05f§);
                              loop19:
                              while(true)
                              {
                                 this.§_-Fq§(_loc3_,false,false,false);
                                 loop17:
                                 while(true)
                                 {
                                    addr42:
                                    loop13:
                                    while(true)
                                    {
                                       §§push(_loc3_);
                                       if(!_loc4_)
                                       {
                                          §§push(§§pop() - 1);
                                       }
                                       _loc3_ = §§pop();
                                       if(!(_loc4_ && param1))
                                       {
                                          addr55:
                                          if(_loc5_ || _loc3_)
                                          {
                                             while(false)
                                             {
                                                continue loop13;
                                             }
                                             continue loop0;
                                             addr62:
                                          }
                                          addr72:
                                          while(true)
                                          {
                                             if(_loc5_ || _loc2_)
                                             {
                                                if(_loc4_ && _loc3_)
                                                {
                                                   break loop1;
                                                }
                                                _loc2_.update(param1);
                                                while(true)
                                                {
                                                   if(_loc5_ || _loc3_)
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         if(_loc5_ || param1)
                                                         {
                                                            continue loop13;
                                                         }
                                                         continue loop17;
                                                      }
                                                      addr145:
                                                      while(true)
                                                      {
                                                         if(!(_loc5_ || this))
                                                         {
                                                            continue loop19;
                                                         }
                                                         if(!(_loc4_ && this))
                                                         {
                                                            _loc2_.§_-Dv§(§_-a2§.§_-05f§);
                                                            loop10:
                                                            while(true)
                                                            {
                                                               if(_loc5_ || param1)
                                                               {
                                                                  this.§_-Fq§(_loc3_,false,true,true);
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc4_ && this))
                                                                     {
                                                                        continue loop13;
                                                                     }
                                                                  }
                                                                  addr113:
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     addr212:
                                                                     while(true)
                                                                     {
                                                                        continue loop13;
                                                                     }
                                                                     continue loop10;
                                                                  }
                                                                  addr256:
                                                               }
                                                            }
                                                            addr163:
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               this.§_-Sc§(_loc2_,param1);
                                                            }
                                                            addr237:
                                                         }
                                                         while(true)
                                                         {
                                                            continue loop13;
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr113);
                                                   continue loop13;
                                                }
                                             }
                                             §§goto(addr163);
                                             §§goto(addr55);
                                          }
                                       }
                                       §§goto(addr89);
                                    }
                                 }
                              }
                              addr211:
                           }
                           while(true)
                           {
                              this.§_-Fq§(_loc3_,false,false,false);
                              §§goto(addr256);
                           }
                           addr250:
                        }
                        §§goto(addr211);
                     }
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        §§goto(addr250);
                     }
                     §§goto(addr212);
                  }
               }
               while(true)
               {
                  §§goto(addr249);
               }
            }
            §§goto(addr62);
         }
         if(_loc5_)
         {
            this.§_-XM§();
         }
      }
      
      private function §_-qr§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§_-06y§ = null;
         var _loc3_:* = this.§_-T3§;
         for each(_loc1_ in _loc3_)
         {
            if(_loc4_ || _loc3_)
            {
               this.§_-6A§.mLevelEngine.mWorld.§_-r5§(_loc1_.§_-0C3§);
            }
         }
      }
      
      public function §_-At§() : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§_-eZ§ = null;
         var _loc1_:int = 0;
         while(true)
         {
            if(_loc1_ >= this.§_-Tx§.length)
            {
               return false;
            }
            _loc2_ = this.§_-Tx§[_loc1_];
            if(_loc4_ && _loc3_)
            {
               addr69:
               break;
            }
            §§push(_loc2_.explode());
            if(_loc4_)
            {
               return §§pop();
            }
            if(§§pop())
            {
               if(!(_loc4_ && _loc1_))
               {
                  break;
               }
            }
            _loc1_++;
         }
         §§goto(addr69);
         §§push(true);
      }
      
      public function §_-db§(param1:§_-eZ§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §§push(Boolean(param1));
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(param1.§_-zm§.§_-MF§() == §_-au§.§_-cU§);
                           if(_loc2_)
                           {
                              §§push(!§§pop());
                              if(_loc2_)
                              {
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                                 §§push(Boolean(§§pop()));
                                 while(true)
                                 {
                                    loop6:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(_loc3_)
                                       {
                                          continue loop1;
                                       }
                                       if(§§pop())
                                       {
                                          while(true)
                                          {
                                             §§pop();
                                             addr133:
                                             loop8:
                                             while(true)
                                             {
                                                §§push(this.§_-6A§.§_-Uv§.§_-h3§(param1.§_-SJ§().GetPosition().x,param1.§_-SJ§().GetPosition().y));
                                                if(_loc2_)
                                                {
                                                   if(!(_loc3_ && this))
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      if(!_loc2_)
                                                      {
                                                         break loop6;
                                                      }
                                                      addr73:
                                                      if(!(_loc3_ && _loc2_))
                                                      {
                                                         while(§§pop())
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               if(!(_loc3_ && _loc2_))
                                                               {
                                                                  §§push(true);
                                                                  break loop6;
                                                               }
                                                               continue loop3;
                                                            }
                                                            if(_loc2_ || this)
                                                            {
                                                               break;
                                                            }
                                                            continue loop8;
                                                            §§goto(addr73);
                                                         }
                                                         §§push(false);
                                                         if(_loc3_)
                                                         {
                                                            break loop6;
                                                         }
                                                         continue loop6;
                                                         addr80:
                                                      }
                                                      continue loop2;
                                                   }
                                                   continue;
                                                }
                                                §§goto(addr73);
                                             }
                                          }
                                          addr132:
                                       }
                                       §§goto(addr80);
                                    }
                                    return §§pop();
                                 }
                              }
                           }
                           §§goto(addr132);
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr127);
               }
            }
         }
         §§goto(addr133);
      }
      
      public function §_-Fq§(param1:int, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc6_:§_-06y§ = null;
         var _loc7_:§_-023§ = null;
         if(_loc13_ || param3)
         {
            if(param1 < 0)
            {
               if(!_loc12_)
               {
                  §§goto(addr35);
               }
            }
            var _loc5_:§_-eZ§;
            §§push((_loc5_ = this.§_-Tx§[param1]).§_-Es§());
            if(_loc13_)
            {
               if(§§pop())
               {
                  if(!(_loc12_ && param2))
                  {
                     var _loc8_:*;
                     §§push((_loc8_ = this).§_-25§);
                     if(!_loc12_)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc9_:* = §§pop();
                     if(_loc13_)
                     {
                        _loc8_.§_-25§ = _loc9_;
                     }
                     if(!(_loc12_ && param2))
                     {
                        addr228:
                        if(_loc5_ == this.§_-6A§.activeObject)
                        {
                           addr233:
                           while(true)
                           {
                              §§push(this.§_-6A§);
                              addr235:
                              while(true)
                              {
                                 §§pop().activeObject = null;
                                 addr237:
                                 while(true)
                                 {
                                 }
                              }
                           }
                           addr233:
                        }
                        while(true)
                        {
                           §§push(param2);
                           loop4:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop5:
                                 while(true)
                                 {
                                    §§push(this.§_-6A§);
                                    if(!_loc12_)
                                    {
                                       §§push(_loc5_.§_-zm§.score);
                                       §§push(§_-40§.§_-H-§);
                                       §§push(true);
                                       §§push(_loc5_.§_-SJ§().GetPosition().x);
                                       §§push(_loc5_.§_-SJ§().GetPosition().y);
                                       if(!_loc12_)
                                       {
                                          §§push(3);
                                          if(!_loc12_)
                                          {
                                             addr210:
                                             §§push(§§pop() - §§pop());
                                             §§push(§_-Hv§.§_-04e§(_loc5_.§_-o2§));
                                          }
                                          §§pop().addScore(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                          loop13:
                                          while(true)
                                          {
                                             if(_loc13_)
                                             {
                                                loop6:
                                                while(true)
                                                {
                                                   §§push(param3);
                                                   addr171:
                                                   while(§§pop())
                                                   {
                                                      if(_loc13_)
                                                      {
                                                         if(_loc12_)
                                                         {
                                                            continue loop5;
                                                         }
                                                         while(true)
                                                         {
                                                            this.addDestructionParticles(_loc5_,this.§_-6A§.particles);
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         break loop6;
                                                      }
                                                   }
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   §§push(param4);
                                                   loop3:
                                                   while(true)
                                                   {
                                                      if(!(_loc13_ || param1))
                                                      {
                                                         continue loop4;
                                                      }
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            while(true)
                                                            {
                                                               if(!_loc13_)
                                                               {
                                                                  continue loop13;
                                                               }
                                                               while(true)
                                                               {
                                                                  this.§_-hO§(_loc5_);
                                                                  addr166:
                                                                  addr168:
                                                                  while(_loc12_)
                                                                  {
                                                                     §§goto(addr237);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                  }
                                                               }
                                                            }
                                                            addr161:
                                                         }
                                                         loop8:
                                                         while(true)
                                                         {
                                                            §§push(_loc5_.isTexture());
                                                            if(_loc12_)
                                                            {
                                                               continue loop3;
                                                            }
                                                            if(_loc13_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(_loc13_ || param2)
                                                                  {
                                                                     addr144:
                                                                     this.§_-0F4§(_loc5_.sprite);
                                                                  }
                                                                  while(_loc13_)
                                                                  {
                                                                     this.§_-0Bs§(_loc5_);
                                                                     if(_loc12_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(_loc13_ || param3)
                                                                     {
                                                                        if(_loc13_)
                                                                        {
                                                                           if(true)
                                                                           {
                                                                              break loop8;
                                                                           }
                                                                           continue loop8;
                                                                        }
                                                                        §§goto(addr182);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr166);
                                                                     }
                                                                  }
                                                                  §§goto(addr161);
                                                               }
                                                               §§goto(addr144);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr171);
                                                            }
                                                         }
                                                         _loc8_ = 0;
                                                         _loc9_ = this.§_-T3§;
                                                         addr306:
                                                         §§push(§§hasnext(_loc9_,_loc8_));
                                                         if(_loc13_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               _loc6_ = §§nextvalue(_loc8_,_loc9_);
                                                               if(_loc6_.index1 >= param1)
                                                               {
                                                                  if(_loc13_ || param3)
                                                                  {
                                                                     var _loc10_:*;
                                                                     var _loc11_:* = (_loc10_ = _loc6_).index1 - 1;
                                                                     if(_loc13_)
                                                                     {
                                                                        _loc10_.index1 = _loc11_;
                                                                     }
                                                                     if(_loc13_ || param1)
                                                                     {
                                                                        addr282:
                                                                        if(_loc6_.index2 >= param1)
                                                                        {
                                                                           if(_loc13_)
                                                                           {
                                                                              addr288:
                                                                              _loc11_ = (_loc10_ = _loc6_).index2 - 1;
                                                                              if(!(_loc12_ && param3))
                                                                              {
                                                                                 _loc10_.index2 = _loc11_;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr306);
                                                                  }
                                                                  §§goto(addr288);
                                                               }
                                                               §§goto(addr282);
                                                            }
                                                            if(_loc13_)
                                                            {
                                                               if(!(_loc12_ && param2))
                                                               {
                                                                  if(!(_loc12_ && param3))
                                                                  {
                                                                     _loc8_ = 0;
                                                                     if(!_loc12_)
                                                                     {
                                                                        _loc9_ = this.§_-CA§;
                                                                        addr404:
                                                                        for each(_loc7_ in _loc9_)
                                                                        {
                                                                           §§push(_loc7_.id1);
                                                                           if(!(_loc12_ && param2))
                                                                           {
                                                                              §§push(param1);
                                                                              if(_loc13_)
                                                                              {
                                                                                 if(§§pop() == §§pop())
                                                                                 {
                                                                                    if(_loc13_ || this)
                                                                                    {
                                                                                       _loc7_.§_-Ux§ = true;
                                                                                       if(!_loc12_)
                                                                                       {
                                                                                          addr368:
                                                                                          if(_loc7_.id1 >= param1)
                                                                                          {
                                                                                             if(_loc13_ || this)
                                                                                             {
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr404);
                                                                                       }
                                                                                       §§push((_loc10_ = _loc7_).id1);
                                                                                       if(_loc13_ || param1)
                                                                                       {
                                                                                          §§push(§§pop() - 1);
                                                                                       }
                                                                                       _loc11_ = §§pop();
                                                                                       if(!(_loc12_ && this))
                                                                                       {
                                                                                          _loc10_.id1 = _loc11_;
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr404);
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr368);
                                                                        }
                                                                        addr407:
                                                                        if(_loc13_)
                                                                        {
                                                                           addr410:
                                                                           _loc5_.dispose();
                                                                        }
                                                                        _loc5_ = null;
                                                                        if(_loc13_ || param3)
                                                                        {
                                                                           this.§_-Tx§[param1] = null;
                                                                        }
                                                                        this.§_-Tx§.splice(param1,1);
                                                                        addr456:
                                                                        if(!(_loc13_ || this))
                                                                        {
                                                                           §§goto(addr456);
                                                                        }
                                                                        return;
                                                                        addr406:
                                                                     }
                                                                     §§goto(addr407);
                                                                  }
                                                                  §§goto(addr410);
                                                               }
                                                               §§goto(addr407);
                                                            }
                                                            §§goto(addr406);
                                                         }
                                                         §§goto(addr404);
                                                      }
                                                   }
                                                   continue loop4;
                                                }
                                                addr169:
                                             }
                                             else
                                             {
                                                §§goto(addr233);
                                             }
                                          }
                                       }
                                       §§goto(addr210);
                                    }
                                    break;
                                 }
                                 §§goto(addr235);
                              }
                              §§goto(addr169);
                           }
                        }
                     }
                     §§goto(addr163);
                  }
                  §§goto(addr233);
               }
               else
               {
                  §§push(_loc5_.§_-ye§());
                  if(!_loc12_)
                  {
                     if(§§pop())
                     {
                        if(_loc13_ || param3)
                        {
                           §§push((_loc8_ = this).§_-09e§);
                           if(_loc13_)
                           {
                              §§push(§§pop() - 1);
                           }
                           _loc9_ = §§pop();
                           if(!_loc12_)
                           {
                              _loc8_.§_-09e§ = _loc9_;
                           }
                           if(!(_loc12_ && param3))
                           {
                              §§goto(addr228);
                           }
                           §§goto(addr176);
                        }
                        §§goto(addr168);
                     }
                     §§goto(addr228);
                  }
               }
            }
            §§goto(addr160);
         }
         addr35:
      }
      
      protected function addDestructionParticles(param1:§_-eZ§, param2:§_-Zc§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            param1.addDestructionParticles(param2);
         }
      }
      
      private function §_-0F4§(param1:Sprite) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(this.§_-lS§);
            if(_loc2_)
            {
               if(!§§pop().contains(param1))
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§_-wx§);
                     if(_loc2_)
                     {
                        if(!§§pop().contains(param1))
                        {
                           loop1:
                           while(true)
                           {
                              §§push(this.§_-Sh§);
                              if(!_loc3_)
                              {
                                 if(!§§pop().contains(param1))
                                 {
                                    do
                                    {
                                       §§push(this.§_-Xz§);
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          if(!§§pop().contains(param1))
                                          {
                                             return;
                                          }
                                          if(!(_loc3_ && param1))
                                          {
                                             if(_loc3_ && _loc2_)
                                             {
                                                if(!_loc3_)
                                                {
                                                   break loop0;
                                                }
                                                addr132:
                                                this.§_-wx§.removeChild(param1);
                                             }
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                addr95:
                                                addr77:
                                                this.§_-Xz§.removeChild(param1);
                                                addr79:
                                             }
                                             if(!(_loc3_ && this))
                                             {
                                                §§push(this.§_-Sh§);
                                                break loop1;
                                             }
                                             if(_loc3_)
                                             {
                                                return;
                                             }
                                             addr160:
                                             continue loop1;
                                             if(_loc2_)
                                             {
                                                return;
                                             }
                                             continue;
                                             break;
                                             addr106:
                                          }
                                          §§goto(addr79);
                                       }
                                       §§goto(addr77);
                                    }
                                    while(!_loc3_);
                                    
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       return;
                                    }
                                    if(_loc2_)
                                    {
                                       continue loop0;
                                    }
                                    addr156:
                                    this.§_-lS§.removeChild(param1);
                                    §§goto(addr160);
                                 }
                                 §§goto(addr95);
                              }
                              break;
                           }
                           §§pop().removeChild(param1);
                           §§goto(addr106);
                        }
                     }
                     §§goto(addr132);
                  }
                  return;
                  addr108:
               }
            }
            §§goto(addr156);
         }
         §§goto(addr108);
      }
      
      protected function §_-hO§(param1:§_-eZ§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(param1.§_-r3§());
            loop0:
            while(true)
            {
               §§push(§§pop().toUpperCase() == "WHITE_EGG");
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr128:
                        while(true)
                        {
                           §§push(param1.§_-md§());
                           if(_loc2_)
                           {
                              if(!_loc2_)
                              {
                                 continue loop1;
                              }
                              §§push(Boolean(§§pop()));
                           }
                           if(!_loc2_)
                           {
                              continue;
                           }
                        }
                     }
                  }
                  while(§§pop())
                  {
                     continue loop0;
                  }
                  addr19:
                  return;
               }
            }
         }
         §§goto(addr128);
      }
      
      public function §_-zn§(param1:Object, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            this.§_-Fq§(this.§_-Tx§.indexOf(param1),param2,param3,param4);
         }
      }
      
      public function §_-12§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            §§push(this.§_-Rn§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr83:
               while(true)
               {
                  §§push(-§§pop());
                  addr84:
                  while(true)
                  {
                     §§pop().x = §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr79);
      }
      
      public function isPigsAlive(param1:Boolean = false) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§_-eZ§ = null;
         var _loc2_:int = 0;
         loop0:
         while(_loc2_ < this.§_-Tx§.length)
         {
            _loc3_ = this.§_-Tx§[_loc2_] as §_-eZ§;
            if(!_loc5_)
            {
               §§push(Boolean(_loc3_));
               if(_loc4_)
               {
                  §§push(§§pop());
                  loop1:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop24:
                        while(true)
                        {
                           §§pop();
                           loop25:
                           while(true)
                           {
                              §§push(_loc3_.§_-Es§());
                              loop26:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 if(!(_loc4_ || param1))
                                 {
                                    loop4:
                                    while(true)
                                    {
                                       §§pop();
                                       loop5:
                                       while(true)
                                       {
                                          §§push(_loc3_.§_-Kh§);
                                          loop6:
                                          while(true)
                                          {
                                             §§push(0);
                                             while(true)
                                             {
                                                §§push(§§pop() > §§pop());
                                                addr156:
                                                loop8:
                                                while(true)
                                                {
                                                   loop9:
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         loop27:
                                                         while(true)
                                                         {
                                                            §§push(param1);
                                                            loop22:
                                                            while(_loc4_)
                                                            {
                                                               §§push(!§§pop());
                                                               loop14:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  loop15:
                                                                  while(_loc4_ || _loc3_)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        loop16:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc4_)
                                                                           {
                                                                              continue loop24;
                                                                           }
                                                                           addr173:
                                                                           §§pop();
                                                                           loop13:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc3_.§_-U-§);
                                                                              loop21:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().mTryToBlink);
                                                                                 loop20:
                                                                                 while(!_loc5_)
                                                                                 {
                                                                                    §§push(0);
                                                                                    loop19:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc5_ && this)
                                                                                       {
                                                                                          continue loop8;
                                                                                       }
                                                                                       §§push(§§pop() <= §§pop());
                                                                                       if(!(_loc5_ && _loc3_))
                                                                                       {
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §§push(§§pop());
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             if(!§§pop())
                                                                                             {
                                                                                             }
                                                                                             loop12:
                                                                                             while(§§pop())
                                                                                             {
                                                                                                if(_loc5_ && _loc2_)
                                                                                                {
                                                                                                   while(_loc5_)
                                                                                                   {
                                                                                                      continue loop13;
                                                                                                   }
                                                                                                   break;
                                                                                                   addr107:
                                                                                                }
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      continue loop25;
                                                                                                   }
                                                                                                   §§push(true);
                                                                                                   while(_loc5_ && _loc3_)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc5_ && this)
                                                                                                         {
                                                                                                            continue loop16;
                                                                                                         }
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            continue loop22;
                                                                                                         }
                                                                                                         §§pop();
                                                                                                      }
                                                                                                      continue loop5;
                                                                                                   }
                                                                                                   return §§pop();
                                                                                                   addr89:
                                                                                                }
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   continue loop5;
                                                                                                }
                                                                                                addr150:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc3_.§_-U-§);
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      continue loop21;
                                                                                                   }
                                                                                                   §§push(§§pop().mTryToScream);
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      continue loop20;
                                                                                                   }
                                                                                                   §§push(0);
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      continue loop19;
                                                                                                   }
                                                                                                   §§push(§§pop() <= §§pop());
                                                                                                   if(_loc4_ || _loc2_)
                                                                                                   {
                                                                                                      if(_loc4_ || param1)
                                                                                                      {
                                                                                                         if(_loc4_ || _loc3_)
                                                                                                         {
                                                                                                            continue loop12;
                                                                                                         }
                                                                                                         continue loop26;
                                                                                                      }
                                                                                                      continue loop14;
                                                                                                   }
                                                                                                   §§goto(addr89);
                                                                                                   §§goto(addr150);
                                                                                                }
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                _loc2_++;
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      continue loop27;
                                                                                                   }
                                                                                                   if(true)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   §§goto(addr42);
                                                                                                }
                                                                                                §§goto(addr107);
                                                                                             }
                                                                                             continue loop0;
                                                                                             addr75:
                                                                                             addr34:
                                                                                          }
                                                                                          continue loop15;
                                                                                       }
                                                                                       §§goto(addr138);
                                                                                    }
                                                                                    continue loop9;
                                                                                 }
                                                                                 continue loop6;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr75);
                                                                  }
                                                                  continue loop1;
                                                               }
                                                            }
                                                            continue loop4;
                                                         }
                                                         addr158:
                                                      }
                                                      §§goto(addr34);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    addr207:
                                 }
                              }
                           }
                        }
                        addr216:
                     }
                     while(true)
                     {
                        §§push(§§pop());
                        continue loop1;
                     }
                  }
               }
               §§goto(addr216);
            }
            §§goto(addr158);
         }
         return false;
      }
      
      public function §_-yq§(param1:Boolean = false) : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§_-eZ§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = int(this.§_-Tx§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc3_);
            if(!_loc6_)
            {
               if(§§pop() < 0)
               {
                  §§push(_loc2_);
                  break;
               }
               §§push(Boolean(_loc4_ = this.§_-Tx§[_loc3_] as §_-eZ§));
               if(_loc5_ || _loc3_)
               {
                  §§push(§§pop());
                  if(!(_loc6_ && this))
                  {
                     if(§§pop())
                     {
                        if(_loc5_ || _loc2_)
                        {
                           §§pop();
                           if(_loc5_)
                           {
                              §§push(_loc4_.§_-Es§());
                              loop1:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 addr236:
                                 loop22:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    loop11:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          loop12:
                                          while(true)
                                          {
                                             §§pop();
                                             loop13:
                                             while(true)
                                             {
                                                §§push(_loc4_.§_-Kh§);
                                                loop14:
                                                while(true)
                                                {
                                                   §§push(0);
                                                   loop20:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() > §§pop());
                                                      if(_loc5_ || param1)
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            continue loop12;
                                                         }
                                                         if(!_loc5_)
                                                         {
                                                            continue loop1;
                                                         }
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               loop2:
                                                               while(true)
                                                               {
                                                                  §§push(param1);
                                                                  addr227:
                                                                  loop25:
                                                                  while(true)
                                                                  {
                                                                     §§push(!§§pop());
                                                                     addr228:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        loop4:
                                                                        while(true)
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              loop5:
                                                                              while(true)
                                                                              {
                                                                                 §§pop();
                                                                                 loop6:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc4_.§_-U-§);
                                                                                    loop7:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().mTryToBlink);
                                                                                       loop8:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(0);
                                                                                          addr161:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                §§push(§§pop() <= §§pop());
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc6_ && param1)
                                                                                                   {
                                                                                                      continue loop5;
                                                                                                   }
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      continue loop22;
                                                                                                   }
                                                                                                   §§push(§§pop());
                                                                                                   if(!(_loc5_ || this))
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   if(!(_loc5_ || param1))
                                                                                                   {
                                                                                                      continue loop11;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!(_loc5_ || this))
                                                                                                            {
                                                                                                               continue loop25;
                                                                                                            }
                                                                                                            §§pop();
                                                                                                            while(true)
                                                                                                            {
                                                                                                            }
                                                                                                         }
                                                                                                         addr189:
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr136:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               loop18:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc5_)
                                                                                                                  {
                                                                                                                     if(!(_loc6_ && this))
                                                                                                                     {
                                                                                                                        _loc2_++;
                                                                                                                        addr148:
                                                                                                                        if(!(_loc6_ && _loc3_))
                                                                                                                        {
                                                                                                                           addr67:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc3_);
                                                                                                                              if(_loc5_ || this)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() - 1);
                                                                                                                              }
                                                                                                                              _loc3_ = §§pop();
                                                                                                                              if(_loc5_ || this)
                                                                                                                              {
                                                                                                                                 if(_loc6_ && _loc3_)
                                                                                                                                 {
                                                                                                                                    continue loop18;
                                                                                                                                 }
                                                                                                                                 if(_loc6_)
                                                                                                                                 {
                                                                                                                                    continue loop13;
                                                                                                                                 }
                                                                                                                                 if(true)
                                                                                                                                 {
                                                                                                                                    continue loop0;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr148);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr67:
                                                                                                                        }
                                                                                                                        continue loop2;
                                                                                                                     }
                                                                                                                     continue loop6;
                                                                                                                  }
                                                                                                                  §§goto(addr197);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr67);
                                                                                                         }
                                                                                                         addr136:
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc4_.§_-U-§);
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            §§push(§§pop().mTryToScream);
                                                                                                            if(_loc5_)
                                                                                                            {
                                                                                                               continue loop14;
                                                                                                            }
                                                                                                            continue loop8;
                                                                                                         }
                                                                                                         continue loop7;
                                                                                                         §§goto(addr197);
                                                                                                      }
                                                                                                      continue loop25;
                                                                                                   }
                                                                                                }
                                                                                                continue loop4;
                                                                                                addr164:
                                                                                             }
                                                                                             continue loop20;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr230:
                                                                           }
                                                                           §§goto(addr136);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               addr226:
                                                            }
                                                            §§goto(addr67);
                                                         }
                                                      }
                                                      §§goto(addr230);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr224);
                                    }
                                 }
                              }
                           }
                           §§goto(addr226);
                        }
                        §§goto(addr228);
                     }
                     §§goto(addr236);
                  }
                  §§goto(addr188);
               }
               §§goto(addr227);
            }
            break;
         }
         return §§pop();
      }
      
      public function §_-LX§() : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§_-eZ§ = null;
         var _loc1_:int = 0;
         var _loc3_:int = 0;
         loop0:
         for each(_loc2_ in this.§_-Tx§)
         {
            if(_loc5_ || _loc2_)
            {
               §§push(Boolean(_loc2_));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  addr127:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop9:
                        while(§§pop())
                        {
                           if(!(_loc6_ && _loc3_))
                           {
                              if(!_loc6_)
                              {
                                 _loc1_++;
                                 addr74:
                                 if(!(_loc6_ && _loc2_))
                                 {
                                    while(true)
                                    {
                                       if(true)
                                       {
                                          break loop9;
                                       }
                                       while(true)
                                       {
                                          §§push(_loc2_.§_-KD§());
                                          if(!(_loc6_ && _loc2_))
                                          {
                                             addr94:
                                             §§push(Boolean(§§pop()));
                                             while(_loc5_ || this)
                                             {
                                                continue loop1;
                                             }
                                             while(true)
                                             {
                                                §§pop();
                                             }
                                             addr94:
                                             addr128:
                                          }
                                          §§goto(addr94);
                                       }
                                    }
                                    addr81:
                                 }
                                 while(true)
                                 {
                                    §§goto(addr83);
                                 }
                              }
                              else
                              {
                                 loop8:
                                 while(true)
                                 {
                                    §§push(_loc2_.§_-oj§());
                                    if(_loc5_)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    if(_loc5_)
                                    {
                                       if(_loc6_)
                                       {
                                          break;
                                       }
                                       continue loop9;
                                    }
                                    addr122:
                                    while(true)
                                    {
                                       §§pop();
                                       continue loop8;
                                    }
                                 }
                              }
                              §§goto(addr94);
                           }
                           §§goto(addr74);
                        }
                        continue loop0;
                        addr52:
                     }
                     §§goto(addr128);
                  }
               }
            }
            §§goto(addr81);
         }
         return _loc1_;
      }
      
      public function §_-05A§() : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§_-eZ§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§_-Tx§)
         {
            if(_loc6_)
            {
               §§push(Boolean(_loc2_));
               if(_loc6_ || _loc1_)
               {
                  if(§§pop())
                  {
                     if(_loc6_)
                     {
                        addr70:
                        §§pop();
                        if(_loc6_ || _loc2_)
                        {
                           §§push(_loc2_.isTexture());
                           if(_loc5_ && _loc2_)
                           {
                           }
                           addr88:
                           if(§§pop())
                           {
                              if(!_loc5_)
                              {
                                 addr91:
                                 _loc1_++;
                              }
                           }
                           continue;
                        }
                        §§goto(addr91);
                     }
                     §§push(Boolean(§§pop()));
                  }
                  §§goto(addr88);
               }
               §§goto(addr70);
            }
            §§goto(addr91);
         }
         return _loc1_;
      }
      
      public function makePigsSmile(param1:Number = 1) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§_-eZ§ = null;
         var _loc2_:* = int(this.§_-Tx§.length - 1);
         loop0:
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§_-Tx§[_loc2_];
            if(!_loc5_)
            {
               §§push(Boolean(_loc3_));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(_loc3_.§_-Es§());
                              if(!_loc5_)
                              {
                                 §§push(Boolean(§§pop()));
                                 while(true)
                                 {
                                 }
                                 addr95:
                              }
                              loop5:
                              while(true)
                              {
                                 §§push(§§pop());
                                 if(!_loc4_)
                                 {
                                    break;
                                 }
                                 if(!§§pop())
                                 {
                                    loop9:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          while(true)
                                          {
                                             §§push(_loc3_.§_-U-§);
                                             §§push(§_-05W§.§_-0C9§);
                                             if(_loc4_)
                                             {
                                                §§push(§§pop() * param1);
                                             }
                                             §§pop().mTryToScream = §§pop();
                                             addr80:
                                             loop11:
                                             while(!(_loc5_ && _loc2_))
                                             {
                                                while(true)
                                                {
                                                   continue loop11;
                                                }
                                             }
                                             continue loop4;
                                          }
                                          addr71:
                                       }
                                       while(true)
                                       {
                                          §§push(_loc2_);
                                          if(_loc4_)
                                          {
                                             §§push(§§pop() - 1);
                                          }
                                          _loc2_ = §§pop();
                                          if(_loc4_)
                                          {
                                             if(!_loc5_)
                                             {
                                                break;
                                             }
                                             §§goto(addr71);
                                          }
                                          §§goto(addr80);
                                       }
                                       if(_loc4_)
                                       {
                                          if(true)
                                          {
                                             break;
                                          }
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                          }
                                          addr125:
                                       }
                                       addr50:
                                       while(true)
                                       {
                                          §§push(_loc3_.§_-Kh§ > 0);
                                          if(_loc4_)
                                          {
                                             if(!_loc4_)
                                             {
                                                break;
                                             }
                                             continue loop9;
                                          }
                                       }
                                       continue loop5;
                                    }
                                    continue loop0;
                                 }
                                 while(!(_loc5_ && _loc2_))
                                 {
                                    continue loop1;
                                    §§goto(addr50);
                                 }
                                 continue loop3;
                              }
                              continue loop2;
                           }
                        }
                     }
                     §§goto(addr95);
                  }
               }
            }
            §§goto(addr87);
         }
      }
      
      public function §_-7f§() : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§_-eZ§ = null;
         var _loc1_:int = this.§_-Tx§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§_-Tx§[_loc1_] as §_-eZ§;
            if(!_loc4_)
            {
               §§push(Boolean(_loc2_));
               if(!(_loc4_ && _loc1_))
               {
                  §§push(§§pop());
                  loop1:
                  while(true)
                  {
                     if(§§pop())
                     {
                        addr133:
                        while(true)
                        {
                           §§pop();
                           addr134:
                           while(true)
                           {
                              §§push(_loc2_.§_-ye§());
                              addr90:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                           }
                        }
                        addr133:
                     }
                     while(true)
                     {
                        continue loop1;
                     }
                  }
               }
               §§goto(addr133);
            }
            §§goto(addr86);
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§_-eZ§ = null;
         var _loc1_:* = int(this.§_-Tx§.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§_-Tx§[_loc1_] as §_-eZ§;
            if(_loc4_ || _loc2_)
            {
               §§push(Boolean(_loc2_));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(_loc2_.§_-Kh§);
                              loop5:
                              while(true)
                              {
                                 §§push(0);
                                 loop6:
                                 while(true)
                                 {
                                    §§push(§§pop() > §§pop());
                                    if(!(_loc3_ && this))
                                    {
                                       §§push(Boolean(§§pop()));
                                       while(true)
                                       {
                                       }
                                       addr266:
                                    }
                                    loop7:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       loop8:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             loop9:
                                             while(true)
                                             {
                                                §§pop();
                                                loop10:
                                                while(true)
                                                {
                                                   §§push(_loc2_.§_-kD§);
                                                   loop11:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() == §_-0-A§.§_-k9§);
                                                      if(!_loc3_)
                                                      {
                                                         §§push(!§§pop());
                                                         if(_loc4_ || _loc2_)
                                                         {
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  loop28:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc2_.§_-r-§());
                                                                     addr223:
                                                                     loop12:
                                                                     while(true)
                                                                     {
                                                                        §§push(Boolean(§§pop()));
                                                                        loop13:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop());
                                                                           loop14:
                                                                           while(true)
                                                                           {
                                                                              if(_loc3_ && this)
                                                                              {
                                                                                 continue loop8;
                                                                              }
                                                                              if(_loc3_ && _loc1_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              if(§§pop())
                                                                              {
                                                                                 addr240:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop();
                                                                                    addr241:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc2_.§_-01F§());
                                                                                       addr182:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             continue loop13;
                                                                                          }
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             continue loop12;
                                                                                          }
                                                                                          §§push(!§§pop());
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr240:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 loop16:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       loop17:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc2_.§_-ye§());
                                                                                          loop18:
                                                                                          while(!_loc3_)
                                                                                          {
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                   if(!(_loc3_ && this))
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      if(!(_loc4_ || _loc2_))
                                                                                                      {
                                                                                                         continue loop14;
                                                                                                      }
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         loop23:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            loop22:
                                                                                                            while(!_loc3_)
                                                                                                            {
                                                                                                               addr178:
                                                                                                               loop21:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc2_.§_-Kh§);
                                                                                                                  if(_loc3_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§push(0);
                                                                                                                  if(!_loc3_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() > §§pop());
                                                                                                                     if(_loc4_ || this)
                                                                                                                     {
                                                                                                                        if(!(_loc4_ || _loc2_))
                                                                                                                        {
                                                                                                                           continue loop23;
                                                                                                                        }
                                                                                                                        addr91:
                                                                                                                        if(!(_loc4_ || _loc1_))
                                                                                                                        {
                                                                                                                           continue loop16;
                                                                                                                        }
                                                                                                                        loop19:
                                                                                                                        while(!§§pop())
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc1_);
                                                                                                                              if(_loc4_)
                                                                                                                              {
                                                                                                                                 continue loop11;
                                                                                                                              }
                                                                                                                              addr56:
                                                                                                                              _loc1_ = §§pop();
                                                                                                                              if(_loc4_)
                                                                                                                              {
                                                                                                                                 if(!(_loc4_ || this))
                                                                                                                                 {
                                                                                                                                    break loop19;
                                                                                                                                 }
                                                                                                                                 if(false)
                                                                                                                                 {
                                                                                                                                    continue loop21;
                                                                                                                                 }
                                                                                                                                 continue loop0;
                                                                                                                              }
                                                                                                                              if(!(_loc3_ && this))
                                                                                                                              {
                                                                                                                                 if(_loc4_)
                                                                                                                                 {
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                                 continue loop28;
                                                                                                                              }
                                                                                                                              continue loop22;
                                                                                                                           }
                                                                                                                           continue loop22;
                                                                                                                           §§goto(addr91);
                                                                                                                        }
                                                                                                                        if(!(_loc4_ || _loc1_))
                                                                                                                        {
                                                                                                                           addr189:
                                                                                                                           §§push(false);
                                                                                                                           break loop18;
                                                                                                                        }
                                                                                                                        if(!(_loc3_ && _loc2_))
                                                                                                                        {
                                                                                                                           §§push(false);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr241);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     if(!_loc3_)
                                                                                                                     {
                                                                                                                        if(_loc4_)
                                                                                                                        {
                                                                                                                           continue loop7;
                                                                                                                        }
                                                                                                                        continue loop9;
                                                                                                                     }
                                                                                                                     continue loop18;
                                                                                                                  }
                                                                                                                  continue loop6;
                                                                                                               }
                                                                                                               continue loop5;
                                                                                                            }
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               continue loop10;
                                                                                                            }
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               continue loop4;
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               continue loop17;
                                                                                                            }
                                                                                                         }
                                                                                                         addr175:
                                                                                                      }
                                                                                                      §§goto(addr98);
                                                                                                   }
                                                                                                   §§goto(addr175);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr240);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr182);
                                                                                          }
                                                                                          continue loop1;
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr189);
                                                                                 }
                                                                                 §§goto(addr186);
                                                                              }
                                                                           }
                                                                           continue loop2;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr44);
                                                            }
                                                            addr219:
                                                         }
                                                         §§goto(addr223);
                                                      }
                                                      §§goto(addr240);
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr219);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr266);
                  }
               }
            }
            §§goto(addr202);
         }
         return true;
      }
      
      public function §_-6f§(param1:Boolean = false) : §_-eZ§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc5_:* = 0;
         var _loc6_:§_-eZ§ = null;
         if(!_loc8_)
         {
            if(!this.isPigsAlive())
            {
               if(!_loc8_)
               {
                  return null;
               }
            }
         }
         var _loc2_:int = this.§_-Tx§.length;
         §§push(1);
         if(!(_loc8_ && param1))
         {
            §§push(int(§§pop() + Math.random() * this.§_-yq§(param1)));
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
                  if(!_loc8_)
                  {
                     _loc5_ = §§pop();
                     if(!(_loc8_ && param1))
                     {
                        do
                        {
                           §§push(_loc5_);
                        }
                        while(_loc7_);
                        
                        continue loop1;
                        addr285:
                     }
                     break;
                  }
                  while(true)
                  {
                     §§push(_loc2_);
                     if(_loc8_)
                     {
                        break;
                     }
                     if(§§pop() >= §§pop())
                     {
                        if(!_loc7_)
                        {
                           break loop2;
                        }
                        continue loop0;
                     }
                     §§push(Boolean(_loc6_ = this.§_-Tx§[_loc5_]));
                     if(_loc7_ || _loc3_)
                     {
                        §§push(§§pop());
                        if(!(_loc8_ && this))
                        {
                           if(§§pop())
                           {
                              if(_loc7_ || _loc2_)
                              {
                                 §§pop();
                                 if(!_loc8_)
                                 {
                                    §§push(_loc6_.§_-Es§());
                                    loop28:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       addr281:
                                       loop30:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          loop18:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                loop22:
                                                while(true)
                                                {
                                                   §§pop();
                                                   addr284:
                                                   while(true)
                                                   {
                                                      §§push(_loc6_.§_-Kh§);
                                                      addr251:
                                                      while(true)
                                                      {
                                                         §§push(0);
                                                         addr252:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() > §§pop());
                                                         }
                                                      }
                                                      continue loop22;
                                                   }
                                                }
                                                addr283:
                                             }
                                             while(true)
                                             {
                                                loop23:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(_loc7_)
                                                      {
                                                         §§push(param1);
                                                         loop19:
                                                         while(true)
                                                         {
                                                            §§push(!§§pop());
                                                            if(!_loc8_)
                                                            {
                                                               addr271:
                                                               §§push(§§pop());
                                                               loop16:
                                                               while(true)
                                                               {
                                                                  if(!_loc7_)
                                                                  {
                                                                     continue loop18;
                                                                  }
                                                                  if(!§§pop())
                                                                  {
                                                                     loop20:
                                                                     while(true)
                                                                     {
                                                                        §§pop();
                                                                        addr276:
                                                                        loop10:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc6_.§_-U-§);
                                                                           loop27:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().mTryToBlink);
                                                                              loop26:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc7_ || this)
                                                                                 {
                                                                                    §§push(0);
                                                                                    loop25:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() <= §§pop());
                                                                                       loop15:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc8_)
                                                                                          {
                                                                                             continue loop20;
                                                                                          }
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             continue loop19;
                                                                                          }
                                                                                          if(_loc8_ && _loc3_)
                                                                                          {
                                                                                             continue loop30;
                                                                                          }
                                                                                          §§push(§§pop());
                                                                                          if(!(_loc7_ || this))
                                                                                          {
                                                                                             continue loop16;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc8_ && param1)
                                                                                                   {
                                                                                                      continue loop23;
                                                                                                   }
                                                                                                   if(_loc7_ || _loc2_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   §§goto(addr283);
                                                                                                }
                                                                                                §§pop();
                                                                                                loop5:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc6_.§_-U-§);
                                                                                                   if(_loc8_ && _loc2_)
                                                                                                   {
                                                                                                      continue loop27;
                                                                                                   }
                                                                                                   §§push(§§pop().mTryToScream);
                                                                                                   if(_loc8_)
                                                                                                   {
                                                                                                      continue loop26;
                                                                                                   }
                                                                                                   §§push(0);
                                                                                                   if(!_loc7_)
                                                                                                   {
                                                                                                      continue loop25;
                                                                                                   }
                                                                                                   if(!(_loc8_ && _loc2_))
                                                                                                   {
                                                                                                      §§push(§§pop() <= §§pop());
                                                                                                      if(!_loc8_)
                                                                                                      {
                                                                                                         if(_loc8_ && _loc3_)
                                                                                                         {
                                                                                                            continue loop15;
                                                                                                         }
                                                                                                         if(!_loc7_)
                                                                                                         {
                                                                                                            continue loop28;
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               loop7:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc4_++;
                                                                                                                  loop8:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     loop9:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc4_ >= _loc3_)
                                                                                                                        {
                                                                                                                           if(_loc7_)
                                                                                                                           {
                                                                                                                              if(!(_loc8_ && param1))
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              continue loop10;
                                                                                                                           }
                                                                                                                           loop11:
                                                                                                                           for(; !_loc8_; while(true)
                                                                                                                           {
                                                                                                                              _loc5_++;
                                                                                                                              if(_loc7_ || _loc2_)
                                                                                                                              {
                                                                                                                                 if(_loc7_)
                                                                                                                                 {
                                                                                                                                    if(true)
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    continue loop9;
                                                                                                                                 }
                                                                                                                                 continue loop8;
                                                                                                                              }
                                                                                                                              continue loop11;
                                                                                                                           },§§goto(addr285))
                                                                                                                           {
                                                                                                                              if(_loc8_ && this)
                                                                                                                              {
                                                                                                                                 continue loop5;
                                                                                                                              }
                                                                                                                              if(!(_loc8_ && this))
                                                                                                                              {
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           continue loop7;
                                                                                                                        }
                                                                                                                        §§goto(addr105);
                                                                                                                     }
                                                                                                                     return _loc6_;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr105);
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr232);
                                                                                                      }
                                                                                                      §§goto(addr284);
                                                                                                   }
                                                                                                   §§goto(addr252);
                                                                                                }
                                                                                                addr232:
                                                                                                addr247:
                                                                                             }
                                                                                             §§goto(addr195);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr251);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     addr275:
                                                                  }
                                                                  §§goto(addr195);
                                                               }
                                                            }
                                                            §§goto(addr275);
                                                         }
                                                      }
                                                      §§goto(addr276);
                                                   }
                                                   §§goto(addr105);
                                                }
                                             }
                                          }
                                       }
                                    }
                                    addr279:
                                 }
                                 §§goto(addr247);
                              }
                              §§goto(addr279);
                           }
                           §§goto(addr281);
                        }
                        §§goto(addr231);
                     }
                     §§goto(addr281);
                  }
               }
               return null;
            }
         }
      }
      
      public function §_-LO§() : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:* = 0;
         var _loc2_:* = int(this.§_-Tx§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(_loc4_ || this)
            {
               §§push(0);
               if(_loc4_ || _loc2_)
               {
                  if(§§pop() < §§pop())
                  {
                     if(!(_loc3_ && this))
                     {
                        if(_loc4_ || this)
                        {
                           if(_loc4_ || this)
                           {
                              §§push(_loc1_);
                              if(!_loc3_)
                              {
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    if(_loc4_ || _loc1_)
                                    {
                                       addr98:
                                       §§push(this.§_-6A§.slingshot.§_-LO§());
                                       if(_loc4_ || this)
                                       {
                                          if(!(_loc3_ && _loc1_))
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(!(_loc3_ && this))
                                             {
                                                if(_loc4_ || this)
                                                {
                                                   addr138:
                                                   §§push(int(§§pop()));
                                                   loop15:
                                                   while(_loc4_ || _loc2_)
                                                   {
                                                      addr145:
                                                      _loc1_ = §§pop();
                                                      while(true)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            §§push(_loc1_);
                                                            if(!(_loc3_ && this))
                                                            {
                                                               break;
                                                            }
                                                            continue loop15;
                                                         }
                                                         loop9:
                                                         while(true)
                                                         {
                                                            if(!(_loc3_ && _loc2_))
                                                            {
                                                               continue loop0;
                                                            }
                                                            loop3:
                                                            while(true)
                                                            {
                                                               addr149:
                                                               while(true)
                                                               {
                                                                  §§push(_loc2_);
                                                                  break loop15;
                                                               }
                                                               addr158:
                                                               §§push(§§pop() - 1);
                                                               while(true)
                                                               {
                                                                  if(_loc4_ || _loc1_)
                                                                  {
                                                                     _loc2_ = §§pop();
                                                                     continue loop9;
                                                                  }
                                                                  addr217:
                                                                  while(true)
                                                                  {
                                                                     _loc1_ = §§pop();
                                                                     continue loop3;
                                                                  }
                                                                  §§goto(addr158);
                                                               }
                                                               continue loop0;
                                                            }
                                                         }
                                                         §§goto(addr145);
                                                      }
                                                      return §§pop();
                                                   }
                                                   while(true)
                                                   {
                                                      if(!(_loc3_ && _loc3_))
                                                      {
                                                         §§goto(addr158);
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            §§push((this.§_-Tx§[_loc2_] as §_-eZ§).§_-zm§.score);
                                                            addr230:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               addr231:
                                                               loop11:
                                                               while(true)
                                                               {
                                                                  §§push(int(§§pop()));
                                                                  addr232:
                                                                  while(true)
                                                                  {
                                                                     _loc1_ = §§pop();
                                                                     addr233:
                                                                     while(true)
                                                                     {
                                                                        if((this.§_-Tx§[_loc2_] as §_-eZ§).§_-r-§())
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc1_);
                                                                              if(!(_loc3_ && this))
                                                                              {
                                                                                 §§push(§_-00u§.§_-KE§.getValue());
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() + §§pop() * int((this.§_-Tx§[_loc2_] as §_-eZ§).§_-8l§));
                                                                                    addr216:
                                                                                    while(true)
                                                                                    {
                                                                                    }
                                                                                 }
                                                                                 addr205:
                                                                              }
                                                                              §§goto(addr217);
                                                                           }
                                                                           addr184:
                                                                        }
                                                                     }
                                                                     continue loop11;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         addr222:
                                                      }
                                                      §§goto(addr149);
                                                   }
                                                   addr138:
                                                }
                                                §§goto(addr231);
                                             }
                                             §§goto(addr216);
                                          }
                                          §§goto(addr230);
                                       }
                                       §§goto(addr205);
                                    }
                                    §§goto(addr232);
                                 }
                                 §§goto(addr158);
                              }
                              §§goto(addr138);
                           }
                           §§goto(addr233);
                        }
                        §§goto(addr184);
                     }
                     §§goto(addr146);
                  }
                  else
                  {
                     §§push(_loc1_);
                  }
                  §§goto(addr222);
               }
               §§goto(addr98);
            }
            §§goto(addr138);
         }
      }
      
      public function §_-6k§(param1:§_-eZ§, param2:§_-eZ§) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            §§push(param1.§_-ye§());
            if(_loc4_ || param2)
            {
               §§push(Boolean(§§pop()));
            }
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr153:
                        while(true)
                        {
                           §§push(param2.§_-ye§());
                           addr125:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              addr126:
                              while(!_loc3_)
                              {
                              }
                              continue loop0;
                           }
                        }
                     }
                     addr152:
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(_loc4_ || this)
                        {
                           return true;
                        }
                        else
                        {
                           loop13:
                           while(true)
                           {
                              addr100:
                              while(true)
                              {
                                 §§push(param1.§_-Xw§());
                                 loop8:
                                 while(true)
                                 {
                                    §§push(!§§pop());
                                    loop9:
                                    while(true)
                                    {
                                       if(!_loc3_)
                                       {
                                          §§push(§§pop());
                                          if(!_loc4_)
                                          {
                                             continue loop1;
                                          }
                                          if(§§pop())
                                          {
                                             loop10:
                                             while(true)
                                             {
                                                §§pop();
                                                loop11:
                                                while(true)
                                                {
                                                   §§push(param2.§_-Xw§());
                                                   if(_loc4_)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            §§push(!§§pop());
                                                            if(_loc4_ || param1)
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  continue loop10;
                                                               }
                                                               if(!_loc3_)
                                                               {
                                                                  if(!(_loc3_ && this))
                                                                  {
                                                                     while(§§pop())
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           if(_loc4_ || param1)
                                                                           {
                                                                              if(_loc4_ || _loc3_)
                                                                              {
                                                                                 §§goto(addr91);
                                                                              }
                                                                              continue loop13;
                                                                           }
                                                                           continue loop11;
                                                                        }
                                                                        if(_loc4_ || this)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§goto(addr153);
                                                                     }
                                                                     §§push(false);
                                                                     if(!_loc3_)
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           break loop9;
                                                                        }
                                                                        continue loop9;
                                                                     }
                                                                     addr91:
                                                                     return true;
                                                                     addr72:
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr152);
                                                                  }
                                                                  §§goto(addr153);
                                                               }
                                                               §§goto(addr125);
                                                            }
                                                            §§goto(addr91);
                                                         }
                                                         break;
                                                      }
                                                      continue loop8;
                                                   }
                                                   §§goto(addr91);
                                                }
                                                §§goto(addr126);
                                             }
                                          }
                                          §§goto(addr72);
                                       }
                                    }
                                    return §§pop();
                                 }
                                 continue loop13;
                              }
                           }
                           addr139:
                        }
                        return §§pop();
                     }
                     §§goto(addr100);
                  }
               }
            }
         }
         §§goto(addr139);
      }
      
      public function §_-87§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.mSardineCanAdded = true;
            do
            {
               this.§_-09e§ = 0;
            }
            while(_loc2_);
            
         }
      }
      
      public function §_-ra§(param1:§_-eZ§, param2:§_-eZ§) : Boolean
      {
         var _loc20_:Boolean = false;
         var _loc21_:Boolean = true;
         var _loc18_:* = NaN;
         var _loc19_:* = NaN;
         if(!(_loc20_ && _loc3_))
         {
            §§push(this.mMightyEagleAdded);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  §§push(this.mSardineCanAdded);
                  if(_loc21_ || _loc3_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  loop1:
                  while(true)
                  {
                     §§push(§§pop());
                     loop2:
                     while(true)
                     {
                        if(!_loc20_)
                        {
                           if(§§pop())
                           {
                              loop3:
                              while(_loc21_ || _loc3_)
                              {
                                 if(_loc21_)
                                 {
                                    if(_loc21_)
                                    {
                                       if(!(_loc20_ && this))
                                       {
                                          §§pop();
                                          loop4:
                                          while(true)
                                          {
                                             §§push(this.mMightyEagleTimer);
                                             if(!_loc20_)
                                             {
                                                §§push(§§pop() == this.§_-L8§.MIGHTY_EAGLE_WAIT_TIME);
                                                if(!_loc20_)
                                                {
                                                   if(_loc21_)
                                                   {
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(param1.§_-21§());
                                                               addr139:
                                                               while(true)
                                                               {
                                                                  if(_loc21_ || _loc3_)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                     while(true)
                                                                     {
                                                                        if(!_loc21_)
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        §§push(§§pop());
                                                                        if(_loc20_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(!(_loc20_ && param1))
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              loop11:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc21_)
                                                                                 {
                                                                                    §§pop();
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc21_ || param2)
                                                                                       {
                                                                                          if(_loc20_ && this)
                                                                                          {
                                                                                             loop20:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc20_)
                                                                                                {
                                                                                                   §§push(param1);
                                                                                                   §§push(param1.§_-8l§);
                                                                                                   if(!_loc20_)
                                                                                                   {
                                                                                                      §§push(§§pop() * 2);
                                                                                                   }
                                                                                                   §§pop().applyDamage(§§pop(),true,true,true,false);
                                                                                                   while(_loc20_ && param1)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(param1.§_-rN§());
                                                                                                         addr306:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(Boolean(§§pop()));
                                                                                                            if(_loc21_)
                                                                                                            {
                                                                                                               §§push(§§pop());
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!§§pop())
                                                                                                                  {
                                                                                                                     addr311:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§pop();
                                                                                                                        addr312:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(param2.§_-Es§());
                                                                                                                           addr280:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr311:
                                                                                                                  }
                                                                                                                  loop30:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     addr282:
                                                                                                                     while(!§§pop())
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(param2.§_-rN§());
                                                                                                                           continue loop0;
                                                                                                                        }
                                                                                                                        continue loop30;
                                                                                                                     }
                                                                                                                     addr283:
                                                                                                                     §§push(param2);
                                                                                                                     §§push(param2.§_-8l§);
                                                                                                                     if(!(_loc20_ && this))
                                                                                                                     {
                                                                                                                        §§push(§§pop() * 2);
                                                                                                                     }
                                                                                                                     §§pop().applyDamage(§§pop(),true,true,true,false);
                                                                                                                     break loop20;
                                                                                                                  }
                                                                                                               }
                                                                                                               addr310:
                                                                                                            }
                                                                                                            §§goto(addr311);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§push(true);
                                                                                                   break loop3;
                                                                                                   addr239:
                                                                                                }
                                                                                                if(!_loc20_)
                                                                                                {
                                                                                                   if(!_loc20_)
                                                                                                   {
                                                                                                      §§goto(addr247);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr283);
                                                                                                   }
                                                                                                }
                                                                                                break;
                                                                                                §§goto(addr283);
                                                                                             }
                                                                                             addr271:
                                                                                             return true;
                                                                                             addr225:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(param2.§_-21§());
                                                                                             continue loop11;
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr239);
                                                                                    }
                                                                                    addr163:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop();
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc20_ && param2))
                                                                                          {
                                                                                             §§push(param1.§_-Es§());
                                                                                             loop18:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Boolean(§§pop()));
                                                                                                addr223:
                                                                                                while(true)
                                                                                                {
                                                                                                   addr224:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§goto(addr29);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr225);
                                                                                                   }
                                                                                                   continue loop18;
                                                                                                }
                                                                                             }
                                                                                             addr268:
                                                                                             addr222:
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr260:
                                                                                 }
                                                                                 §§goto(addr312);
                                                                              }
                                                                           }
                                                                           §§goto(addr96);
                                                                        }
                                                                        §§goto(addr310);
                                                                     }
                                                                     continue loop2;
                                                                  }
                                                                  §§goto(addr280);
                                                               }
                                                            }
                                                         }
                                                         addr29:
                                                         loop28:
                                                         while(true)
                                                         {
                                                            §§push(this.§_-6k§(param1,param2));
                                                            if(_loc21_)
                                                            {
                                                               addr36:
                                                               if(_loc20_ && this)
                                                               {
                                                                  while(_loc21_)
                                                                  {
                                                                     if(!_loc21_)
                                                                     {
                                                                        continue loop1;
                                                                     }
                                                                     if(_loc21_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              continue loop28;
                                                                           }
                                                                           §§goto(addr98);
                                                                        }
                                                                        addr96:
                                                                     }
                                                                     §§goto(addr36);
                                                                  }
                                                                  continue loop3;
                                                                  addr90:
                                                               }
                                                               if(!_loc21_)
                                                               {
                                                                  continue loop11;
                                                               }
                                                               if(§§pop())
                                                               {
                                                                  if(_loc21_)
                                                                  {
                                                                     addr48:
                                                                     if(!(_loc20_ && param1))
                                                                     {
                                                                        §§push(false);
                                                                        break;
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     if(!_loc20_)
                                                                     {
                                                                        if(true)
                                                                        {
                                                                           addr313:
                                                                           §§push(Number(10));
                                                                           break loop4;
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(_loc21_)
                                                                           {
                                                                              if(_loc21_ || _loc3_)
                                                                              {
                                                                                 if(_loc21_ || param1)
                                                                                 {
                                                                                    if(!_loc20_)
                                                                                    {
                                                                                       this.mMightyEagleTimer = 0;
                                                                                       while(!_loc20_)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             continue loop28;
                                                                                          }
                                                                                          §§goto(addr48);
                                                                                       }
                                                                                       continue loop4;
                                                                                       addr119:
                                                                                    }
                                                                                    continue loop23;
                                                                                 }
                                                                                 continue loop27;
                                                                              }
                                                                              continue loop35;
                                                                           }
                                                                           §§goto(addr163);
                                                                        }
                                                                        continue loop35;
                                                                        addr98:
                                                                     }
                                                                     §§goto(addr61);
                                                                  }
                                                                  §§goto(addr119);
                                                               }
                                                               §§goto(addr313);
                                                               §§goto(addr311);
                                                            }
                                                            break;
                                                         }
                                                         return §§pop();
                                                      }
                                                      addr135:
                                                   }
                                                   §§goto(addr282);
                                                }
                                                §§goto(addr139);
                                             }
                                             break;
                                          }
                                          var _loc3_:* = §§pop();
                                          §§push(param1.§_-kB§(param2.§_-r3§()));
                                          if(!_loc20_)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                          var _loc4_:* = §§pop();
                                          §§push(param1.§_-09j§(param2.§_-r3§()));
                                          if(!(_loc20_ && param1))
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                          var _loc5_:* = §§pop();
                                          §§push(param2.§_-kB§(param1.§_-r3§()));
                                          if(_loc21_ || param2)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                          var _loc6_:* = §§pop();
                                          §§push(param2.§_-09j§(param1.§_-r3§()));
                                          if(_loc21_)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                          var _loc7_:* = §§pop();
                                          §§push(param1.§_-SJ§().GetMass());
                                          if(!_loc20_)
                                          {
                                             §§push(param1.§_-SJ§());
                                             if(_loc21_ || _loc3_)
                                             {
                                                §§push(§§pop().GetLinearVelocity().x);
                                                if(!_loc20_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc21_ || this)
                                                   {
                                                      addr386:
                                                      §§push(param2.§_-SJ§().GetMass());
                                                      if(!(_loc20_ && this))
                                                      {
                                                         addr399:
                                                         §§push(§§pop() - §§pop() * param2.§_-SJ§().GetLinearVelocity().x);
                                                         if(_loc20_ && param2)
                                                         {
                                                         }
                                                         var _loc8_:* = §§pop();
                                                         §§push(param1.§_-SJ§().GetMass());
                                                         if(_loc21_ || param1)
                                                         {
                                                            §§push(param1.§_-SJ§());
                                                            if(_loc21_ || param1)
                                                            {
                                                               §§push(§§pop().GetLinearVelocity().y);
                                                               if(!(_loc20_ && param2))
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!_loc20_)
                                                                  {
                                                                     addr442:
                                                                     §§push(param2.§_-SJ§().GetMass());
                                                                     if(!(_loc20_ && this))
                                                                     {
                                                                        addr450:
                                                                        §§push(§§pop() * param2.§_-SJ§().GetLinearVelocity().y);
                                                                     }
                                                                     §§push(§§pop() - §§pop());
                                                                     if(!_loc20_)
                                                                     {
                                                                        addr459:
                                                                        var _loc9_:Number = §§pop();
                                                                        §§push(Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_) / _loc3_);
                                                                        if(_loc21_)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                        var _loc10_:* = §§pop();
                                                                        §§push(_loc4_);
                                                                        if(!(_loc20_ && param2))
                                                                        {
                                                                           §§push(§§pop() * _loc10_);
                                                                           if(_loc21_)
                                                                           {
                                                                              addr487:
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                           var _loc11_:* = §§pop();
                                                                           §§push(_loc6_);
                                                                           if(!(_loc20_ && param2))
                                                                           {
                                                                              §§push(§§pop() * _loc10_);
                                                                              if(_loc21_)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                           }
                                                                           var _loc12_:* = §§pop();
                                                                           var _loc13_:Number = Math.max(0,param1.§_-Kh§);
                                                                           var _loc14_:Number = Math.max(0,param2.§_-Kh§);
                                                                           §§push(param1.applyDamage(_loc12_,true,param2.§_-ye§(),_loc14_ == param2.§_-8l§));
                                                                           if(_loc21_ || param2)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                           var _loc15_:* = §§pop();
                                                                           §§push(param2.applyDamage(_loc11_,true,param1.§_-ye§(),_loc13_ == param1.§_-8l§));
                                                                           if(!(_loc20_ && _loc3_))
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                           var _loc16_:* = §§pop();
                                                                           var _loc17_:Boolean;
                                                                           §§push(_loc17_ = false);
                                                                           if(!(_loc20_ && _loc3_))
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(_loc21_)
                                                                                 {
                                                                                    §_-FK§.log("--- NEW COLLISION ---");
                                                                                    if(_loc21_)
                                                                                    {
                                                                                       §§push(§_-FK§);
                                                                                       §§push("Mat Dam Factor1 = ");
                                                                                       if(!_loc20_)
                                                                                       {
                                                                                          §§push(_loc4_);
                                                                                          if(!(_loc20_ && param2))
                                                                                          {
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(!_loc20_)
                                                                                             {
                                                                                                addr1283:
                                                                                                §§push(" Mat Dam Factor2 = ");
                                                                                                if(!_loc20_)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(_loc21_ || _loc3_)
                                                                                                   {
                                                                                                      §§push(_loc6_);
                                                                                                      if(_loc21_)
                                                                                                      {
                                                                                                         addr1297:
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         if(!(_loc20_ && param1))
                                                                                                         {
                                                                                                            addr1305:
                                                                                                            §§push(" Mat Vel Factor1 = ");
                                                                                                            if(!(_loc20_ && this))
                                                                                                            {
                                                                                                               addr1323:
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(!_loc20_)
                                                                                                               {
                                                                                                                  §§push(_loc5_);
                                                                                                                  if(!_loc20_)
                                                                                                                  {
                                                                                                                     addr1329:
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(_loc21_ || param1)
                                                                                                                     {
                                                                                                                        addr1338:
                                                                                                                        §§push(§§pop() + " Mat Vel Factor2 = ");
                                                                                                                        if(_loc21_ || this)
                                                                                                                        {
                                                                                                                           addr1347:
                                                                                                                           §§push(§§pop() + _loc7_);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§pop().log(§§pop());
                                                                                                                     addr1349:
                                                                                                                     §§push(§_-FK§);
                                                                                                                     §§push("Object1: ");
                                                                                                                     if(!(_loc20_ && param1))
                                                                                                                     {
                                                                                                                        §§push(§§pop() + param1.§_-o2§);
                                                                                                                        if(!(_loc20_ && this))
                                                                                                                        {
                                                                                                                           §§push(" force1 = ");
                                                                                                                           if(_loc21_ || param2)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              if(!_loc20_)
                                                                                                                              {
                                                                                                                                 addr1222:
                                                                                                                                 §§push(_loc11_);
                                                                                                                                 if(!_loc20_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    if(_loc21_)
                                                                                                                                    {
                                                                                                                                       addr1228:
                                                                                                                                       §§push(" obj health1 = ");
                                                                                                                                       if(!_loc20_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          if(!(_loc20_ && param1))
                                                                                                                                          {
                                                                                                                                             addr1239:
                                                                                                                                             §§push(_loc13_);
                                                                                                                                             if(_loc21_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                addr1247:
                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                if(_loc21_ || param2)
                                                                                                                                                {
                                                                                                                                                   addr1266:
                                                                                                                                                   addr1256:
                                                                                                                                                   §§push(§§pop() + " new health1 = ");
                                                                                                                                                   if(_loc21_ || param2)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc15_);
                                                                                                                                                   }
                                                                                                                                                   §§pop().log(§§pop());
                                                                                                                                                   addr1267:
                                                                                                                                                   §§push(§_-FK§);
                                                                                                                                                   §§push("Object2: ");
                                                                                                                                                   if(!_loc20_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() + param2.§_-o2§);
                                                                                                                                                      if(!(_loc20_ && param1))
                                                                                                                                                      {
                                                                                                                                                         §§push(" force2 = ");
                                                                                                                                                         if(_loc21_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                            if(_loc21_)
                                                                                                                                                            {
                                                                                                                                                               addr1140:
                                                                                                                                                               §§push(_loc12_);
                                                                                                                                                               if(!(_loc20_ && _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                  if(_loc21_ || _loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     addr1156:
                                                                                                                                                                     §§push(" obj health2 = ");
                                                                                                                                                                     if(!(_loc20_ && param1))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                        if(!(_loc20_ && _loc3_))
                                                                                                                                                                        {
                                                                                                                                                                           addr1172:
                                                                                                                                                                           §§push(_loc14_);
                                                                                                                                                                           if(_loc21_)
                                                                                                                                                                           {
                                                                                                                                                                              addr1175:
                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                              if(!(_loc20_ && this))
                                                                                                                                                                              {
                                                                                                                                                                                 addr1184:
                                                                                                                                                                                 §§push(§§pop() + " new health2 = ");
                                                                                                                                                                                 if(!_loc20_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr1188:
                                                                                                                                                                                    §§push(§§pop() + _loc16_);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§pop().log(§§pop());
                                                                                                                                                                              addr1073:
                                                                                                                                                                              addr1190:
                                                                                                                                                                              if(_loc15_ <= 0 && _loc12_ != 0)
                                                                                                                                                                              {
                                                                                                                                                                                 addr1074:
                                                                                                                                                                                 §§push(_loc12_);
                                                                                                                                                                                 if(_loc21_ || param2)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr1084:
                                                                                                                                                                                    §§push(§§pop() - _loc13_);
                                                                                                                                                                                    §§push(_loc12_);
                                                                                                                                                                                    if(_loc21_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() / §§pop());
                                                                                                                                                                                       if(_loc21_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr1091:
                                                                                                                                                                                          addr1099:
                                                                                                                                                                                          addr1093:
                                                                                                                                                                                          addr1092:
                                                                                                                                                                                          §§push(_loc18_ = Number(§§pop()));
                                                                                                                                                                                          §§push(_loc7_);
                                                                                                                                                                                          if(_loc21_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                          }
                                                                                                                                                                                          _loc18_ = §§pop();
                                                                                                                                                                                          addr1100:
                                                                                                                                                                                          addr1101:
                                                                                                                                                                                          if(§§pop() > 1)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr1104:
                                                                                                                                                                                             _loc18_ = Number(1);
                                                                                                                                                                                             addr1105:
                                                                                                                                                                                             addr1103:
                                                                                                                                                                                             addr1102:
                                                                                                                                                                                          }
                                                                                                                                                                                          addr1036:
                                                                                                                                                                                          if(_loc17_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr1037:
                                                                                                                                                                                             §§push(§_-FK§);
                                                                                                                                                                                             §§push(param1.§_-o2§ + " is killed. Speed Multiplier for ");
                                                                                                                                                                                             if(!(_loc20_ && param1))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() + param2.§_-o2§);
                                                                                                                                                                                                if(_loc21_ || this)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() + " is ");
                                                                                                                                                                                                   if(_loc20_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr1065:
                                                                                                                                                                                                   §§pop().log(§§pop());
                                                                                                                                                                                                   addr1066:
                                                                                                                                                                                                   §§push(param2);
                                                                                                                                                                                                   §§push(§§findproperty(b2Vec2));
                                                                                                                                                                                                   §§push(param2.§_-SJ§().GetLinearVelocity().x);
                                                                                                                                                                                                   if(!(_loc20_ && param1))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc18_);
                                                                                                                                                                                                      if(!_loc20_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr1018:
                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                         §§push(param2.§_-SJ§().GetLinearVelocity().y);
                                                                                                                                                                                                         if(!(_loc20_ && _loc3_))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() * _loc18_);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§pop().§_-jc§(new §§pop().b2Vec2(§§pop(),§§pop()));
                                                                                                                                                                                                      addr995:
                                                                                                                                                                                                      addr1033:
                                                                                                                                                                                                      §§push(_loc16_ <= 0);
                                                                                                                                                                                                      if(_loc16_ <= 0)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr996:
                                                                                                                                                                                                         if(_loc21_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§pop();
                                                                                                                                                                                                            addr999:
                                                                                                                                                                                                            §§push(_loc11_);
                                                                                                                                                                                                            if(!_loc20_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(0);
                                                                                                                                                                                                               if(_loc21_ || _loc3_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc20_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr827:
                                                                                                                                                                                                                     §§push(§§pop() == §§pop());
                                                                                                                                                                                                                     if(!(_loc20_ && param2))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr835:
                                                                                                                                                                                                                        §§push(!§§pop());
                                                                                                                                                                                                                        if(_loc21_ || param1)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr842:
                                                                                                                                                                                                                           if(§§pop())
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr844:
                                                                                                                                                                                                                              if(_loc21_ || this)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc21_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc11_);
                                                                                                                                                                                                                                    if(_loc21_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc14_);
                                                                                                                                                                                                                                       if(_loc21_ || this)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr865:
                                                                                                                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                          if(_loc21_ || this)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!_loc20_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc11_);
                                                                                                                                                                                                                                                if(_loc21_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                   if(_loc21_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr880:
                                                                                                                                                                                                                                                      if(_loc21_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr883:
                                                                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                                                                         if(_loc21_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop());
                                                                                                                                                                                                                                                            if(_loc21_ || param1)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc21_ || param2)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc21_ || _loc3_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     _loc19_ = §§pop();
                                                                                                                                                                                                                                                                     if(_loc21_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr910:
                                                                                                                                                                                                                                                                        if(_loc21_ || this)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(_loc5_);
                                                                                                                                                                                                                                                                           if(!_loc20_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr920:
                                                                                                                                                                                                                                                                              if(!_loc20_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                 if(_loc21_ || param1)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr930:
                                                                                                                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                    if(_loc21_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc21_ || param1)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!_loc20_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr943:
                                                                                                                                                                                                                                                                                             §§push(_loc19_ = §§pop());
                                                                                                                                                                                                                                                                                             if(!_loc20_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr946:
                                                                                                                                                                                                                                                                                                if(!(_loc20_ && _loc3_))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr954:
                                                                                                                                                                                                                                                                                                   §§push(1);
                                                                                                                                                                                                                                                                                                   if(_loc21_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(§§pop() > §§pop())
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr957:
                                                                                                                                                                                                                                                                                                         if(_loc21_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(_loc21_ || _loc3_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(1);
                                                                                                                                                                                                                                                                                                               if(!(_loc20_ && this))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  addr975:
                                                                                                                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                  if(_loc21_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(_loc21_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        _loc19_ = §§pop();
                                                                                                                                                                                                                                                                                                                        addr980:
                                                                                                                                                                                                                                                                                                                        if(_loc21_ || _loc3_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(!_loc20_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              addr749:
                                                                                                                                                                                                                                                                                                                              §§push(_loc17_);
                                                                                                                                                                                                                                                                                                                              if(!(_loc20_ && param1))
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(_loc21_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(!(_loc20_ && this))
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(§_-FK§);
                                                                                                                                                                                                                                                                                                                                             §§push(param2.§_-o2§ + " is killed. Speed Multiplier for ");
                                                                                                                                                                                                                                                                                                                                             if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(§§pop() + param1.§_-o2§);
                                                                                                                                                                                                                                                                                                                                                if(!(_loc20_ && param1))
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§push(§§pop() + " is ");
                                                                                                                                                                                                                                                                                                                                                   if(_loc20_ && _loc3_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   addr801:
                                                                                                                                                                                                                                                                                                                                                   §§pop().log(§§pop());
                                                                                                                                                                                                                                                                                                                                                   addr802:
                                                                                                                                                                                                                                                                                                                                                   if(!(_loc20_ && this))
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         addr695:
                                                                                                                                                                                                                                                                                                                                                         §§push(param1);
                                                                                                                                                                                                                                                                                                                                                         §§push(§§findproperty(b2Vec2));
                                                                                                                                                                                                                                                                                                                                                         §§push(param1.§_-SJ§().GetLinearVelocity().x);
                                                                                                                                                                                                                                                                                                                                                         if(_loc21_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§push(_loc19_);
                                                                                                                                                                                                                                                                                                                                                            if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               addr713:
                                                                                                                                                                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                               §§push(param1.§_-SJ§().GetLinearVelocity().y);
                                                                                                                                                                                                                                                                                                                                                               if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  addr719:
                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop() * _loc19_);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§pop().§_-jc§(new §§pop().b2Vec2(§§pop(),§§pop()));
                                                                                                                                                                                                                                                                                                                                                               addr723:
                                                                                                                                                                                                                                                                                                                                                               if(!(_loc20_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     if(_loc21_ || param2)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        if(_loc21_ || param2)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           addr618:
                                                                                                                                                                                                                                                                                                                                                                           §§push(_loc15_);
                                                                                                                                                                                                                                                                                                                                                                           if(_loc21_ || param2)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              if(!(_loc20_ && param1))
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 addr633:
                                                                                                                                                                                                                                                                                                                                                                                 §§push(0);
                                                                                                                                                                                                                                                                                                                                                                                 if(!(_loc20_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    addr641:
                                                                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() <= §§pop());
                                                                                                                                                                                                                                                                                                                                                                                    if(_loc21_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                                                          if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             if(_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   addr656:
                                                                                                                                                                                                                                                                                                                                                                                                   if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      if(!(_loc20_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         if(_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc21_ || this)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                               if(_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  if(!(_loc20_ && param2))
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(_loc16_);
                                                                                                                                                                                                                                                                                                                                                                                                                     if(_loc21_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        if(!(_loc20_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(0);
                                                                                                                                                                                                                                                                                                                                                                                                                           if(_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              if(!(_loc20_ && param2))
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 if(!_loc20_)
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() <= §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                    if(!(_loc20_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       if(!_loc21_)
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr641);
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr612);
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr656);
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1070);
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr954);
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr633);
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr883);
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr618);
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr802);
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr723);
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1073);
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1036);
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr827);
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr749);
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                addr612:
                                                                                                                                                                                                                                                                                                                                                                                                return §§pop();
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1073);
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr995);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr835);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr995);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr865);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr975);
                                                                                                                                                                                                                                                                                                                                                                           addr746:
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1190);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr999);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr844);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr980);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr719);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr713);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1105);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr957);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§push(§§pop() + _loc19_);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr801);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr1349);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr1267);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr801);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr695);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr996);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr1066);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr1033);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1073);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1100);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1103);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1113);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1037);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr749);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1101);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1084);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr975);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1091);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       addr1098:
                                                                                                                                                                                                                                                                                       §§goto(addr1099);
                                                                                                                                                                                                                                                                                       §§push(§§pop());
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr975);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr946);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1091);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr943);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1093);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr975);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1084);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1092);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr920);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr995);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1098);
                                                                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr910);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr943);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1070);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1104);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr920);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr930);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1074);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1102);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr618);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1073);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1112);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1073);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr954);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr880);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1112);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr842);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1018);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(§§pop() + _loc18_);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1065);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr880);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1091);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr995);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1188);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1184);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1175);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1172);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1184);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1156);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1140);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1266);
                                                                                                                                             }
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr1256);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1266);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1247);
                                                                                                                              }
                                                                                                                              §§goto(addr1228);
                                                                                                                           }
                                                                                                                           §§goto(addr1266);
                                                                                                                        }
                                                                                                                        §§goto(addr1222);
                                                                                                                     }
                                                                                                                     §§goto(addr1239);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr1347);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr1338);
                                                                                                      }
                                                                                                      §§goto(addr1329);
                                                                                                   }
                                                                                                   §§goto(addr1338);
                                                                                                }
                                                                                                §§goto(addr1323);
                                                                                             }
                                                                                             §§goto(addr1305);
                                                                                          }
                                                                                          §§goto(addr1297);
                                                                                       }
                                                                                       §§goto(addr1283);
                                                                                    }
                                                                                    §§goto(addr995);
                                                                                 }
                                                                                 §§goto(addr746);
                                                                              }
                                                                           }
                                                                           §§goto(addr1175);
                                                                        }
                                                                        §§goto(addr487);
                                                                     }
                                                                  }
                                                                  §§goto(addr459);
                                                               }
                                                               §§goto(addr450);
                                                            }
                                                            §§goto(addr442);
                                                         }
                                                         §§goto(addr459);
                                                      }
                                                   }
                                                   §§goto(addr399);
                                                   §§push(Number(§§pop()));
                                                }
                                                §§goto(addr399);
                                             }
                                             §§goto(addr386);
                                          }
                                          §§goto(addr399);
                                       }
                                       §§goto(addr306);
                                    }
                                    §§goto(addr271);
                                 }
                                 §§goto(addr224);
                              }
                              return §§pop();
                           }
                           §§goto(addr135);
                        }
                        §§goto(addr259);
                     }
                  }
               }
               §§goto(addr304);
            }
         }
         §§goto(addr121);
      }
      
      public function §_-Fi§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§_-eZ§ = null;
         var _loc1_:* = int(this.§_-Tx§.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§_-Tx§[_loc1_] as §_-eZ§;
            if(!(_loc4_ && _loc3_))
            {
               §§push(_loc2_ == null);
               loop1:
               while(true)
               {
                  §§push(!§§pop());
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           loop10:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    this.§_-Fq§(_loc1_,true,true,true);
                                    addr117:
                                    while(true)
                                    {
                                    }
                                    addr61:
                                    if(_loc4_ && _loc1_)
                                    {
                                       continue;
                                    }
                                    addr68:
                                    if(_loc3_)
                                    {
                                       while(false)
                                       {
                                          while(true)
                                          {
                                             §§push(_loc2_.§_-Es§());
                                             if(_loc3_ || _loc2_)
                                             {
                                                if(!(_loc3_ || _loc3_))
                                                {
                                                   break;
                                                }
                                                if(_loc3_)
                                                {
                                                   continue loop1;
                                                }
                                                continue loop2;
                                             }
                                             continue loop10;
                                          }
                                          while(true)
                                          {
                                             §§pop();
                                          }
                                       }
                                       continue loop0;
                                       addr70:
                                    }
                                    while(true)
                                    {
                                       §§goto(addr72);
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§push(_loc1_);
                                 if(!_loc4_)
                                 {
                                    §§push(§§pop() - 1);
                                 }
                                 _loc1_ = §§pop();
                                 if(!_loc3_)
                                 {
                                    continue;
                                 }
                                 §§goto(addr61);
                              }
                              §§goto(addr68);
                           }
                        }
                        addr109:
                     }
                     §§goto(addr124);
                  }
               }
            }
            §§goto(addr70);
         }
      }
      
      public function §_-S9§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§_-eZ§ = null;
         var _loc1_:* = int(this.§_-Tx§.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§_-Tx§[_loc1_] as §_-eZ§;
            if(_loc4_ || _loc3_)
            {
               §§push(_loc2_ == null);
               loop1:
               while(true)
               {
                  §§push(!§§pop());
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop3:
                        do
                        {
                           if(§§pop())
                           {
                              if(_loc4_)
                              {
                                 if(!(_loc3_ && this))
                                 {
                                    this.§_-Fq§(_loc1_,true,true,true);
                                    loop5:
                                    while(true)
                                    {
                                       addr44:
                                       addr72:
                                       while(true)
                                       {
                                          §§push(_loc1_);
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             §§push(§§pop() - 1);
                                          }
                                          _loc1_ = §§pop();
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             break;
                                          }
                                          continue loop5;
                                       }
                                       while(false)
                                       {
                                          loop9:
                                          while(true)
                                          {
                                             §§push(_loc2_.§_-md§());
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                if(!_loc4_)
                                                {
                                                   continue loop1;
                                                }
                                                §§push(Boolean(§§pop()));
                                             }
                                             if(!_loc3_)
                                             {
                                                continue loop3;
                                             }
                                             addr130:
                                             while(true)
                                             {
                                                §§pop();
                                                addr131:
                                                while(true)
                                                {
                                                   continue loop9;
                                                }
                                                continue loop1;
                                             }
                                          }
                                       }
                                       continue loop0;
                                    }
                                    addr123:
                                 }
                                 §§goto(addr131);
                              }
                              §§goto(addr123);
                           }
                           §§goto(addr44);
                        }
                        while(_loc4_ || _loc2_);
                        
                        continue;
                     }
                     §§goto(addr130);
                  }
               }
            }
            §§goto(addr72);
         }
      }
      
      public function §_-7F§() : int
      {
         return this.§_-Tx§.length;
      }
      
      public function §_-U6§(param1:§_-bm§) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:§_-eZ§ = null;
         var _loc5_:§_-CE§ = null;
         var _loc6_:§_-fi§ = null;
         var _loc7_:§_-06y§ = null;
         var _loc2_:* = Number(0);
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(!_loc9_)
            {
               if(§§pop() >= this.§_-Tx§.length)
               {
                  §§push(Number(0));
                  break;
               }
               §§push((_loc4_ = this.§_-Tx§[_loc2_]).§_-ON§);
               if(_loc8_ || _loc2_)
               {
                  if(!§§pop())
                  {
                     if(_loc9_ && _loc2_)
                     {
                        continue;
                     }
                  }
                  else
                  {
                     addr59:
                     if(_loc4_.isGround())
                     {
                        if(_loc9_ && _loc2_)
                        {
                           continue;
                        }
                     }
                     else
                     {
                        (_loc5_ = new §_-CE§()).angle = _loc4_.§_-NN§();
                        if(!_loc9_)
                        {
                           _loc5_.id = _loc4_.§_-o2§;
                           loop1:
                           while(true)
                           {
                              _loc5_.x = _loc4_.§_-SJ§().GetPosition().x;
                              while(true)
                              {
                                 _loc5_.y = _loc4_.§_-SJ§().GetPosition().y;
                                 loop3:
                                 for(; _loc8_ || _loc2_; loop5:
                                 while(!(_loc9_ && param1))
                                 {
                                    while(true)
                                    {
                                       param1.addObject(_loc5_);
                                       if(_loc9_ && _loc3_)
                                       {
                                          continue loop5;
                                       }
                                       if(!_loc8_)
                                       {
                                          continue loop1;
                                       }
                                       if(true)
                                       {
                                          break;
                                       }
                                       §§goto(addr94);
                                    }
                                    §§push(_loc2_);
                                    if(_loc8_ || _loc3_)
                                    {
                                       §§push(§§pop() + 1);
                                       if(_loc8_ || this)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    _loc2_ = §§pop();
                                    continue loop0;
                                 })
                                 {
                                    while(true)
                                    {
                                       _loc5_.uniqueID = _loc4_.uniqueID;
                                       continue loop3;
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr106);
                     }
                  }
                  §§goto(addr145);
               }
               §§goto(addr59);
            }
            break;
         }
         var _loc3_:* = §§pop();
         if(_loc8_)
         {
            while(_loc3_ < this.§_-T3§.length)
            {
               _loc7_ = this.§_-T3§[_loc3_];
               _loc6_ = new §_-fi§(_loc7_.type,_loc7_.index1,_loc7_.index2,_loc7_.point1,_loc7_.point2,_loc7_.§_-v7§,_loc7_.§_-Wm§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§_-5R§,_loc7_.motorSpeed,_loc7_.§_-01R§,_loc7_.maxTorque);
               if(_loc9_)
               {
                  continue;
               }
               param1.§ try§(_loc6_);
               if(_loc9_ && param1)
               {
                  continue;
               }
               §§push(_loc3_);
               if(!(_loc9_ && _loc3_))
               {
                  §§push(§§pop() + 1);
                  if(!_loc9_)
                  {
                     addr246:
                     §§push(Number(§§pop()));
                  }
                  _loc3_ = §§pop();
                  continue;
               }
               §§goto(addr246);
            }
         }
      }
      
      public function §_-3z§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 0;
         while(true)
         {
            if(this.§_-Tx§.length > _loc1_)
            {
               if(this.§_-Tx§[_loc1_].isGround())
               {
                  if(!_loc3_)
                  {
                     _loc1_++;
                  }
               }
               else
               {
                  this.§_-zn§(this.§_-Tx§[_loc1_]);
                  addr59:
                  if(!_loc3_)
                  {
                     continue;
                  }
               }
               continue;
            }
            if(_loc2_)
            {
               break;
            }
            §§goto(addr59);
         }
      }
      
      public function §_-wL§(param1:Point, param2:Point) : Array
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Array = new Array();
         var _loc4_:* = Number(0);
         while(true)
         {
            §§push(_loc4_);
            if(!_loc6_)
            {
               if(!(_loc6_ && this))
               {
                  if(§§pop() >= this.§_-Tx§.length)
                  {
                     if(_loc6_)
                     {
                        continue;
                     }
                     if(_loc5_ || _loc3_)
                     {
                        if(!(_loc6_ && param2))
                        {
                           break;
                        }
                        addr103:
                        _loc3_.push(this.§_-Tx§[_loc4_]);
                     }
                  }
                  else if(this.§_-Tx§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
                  {
                     §§goto(addr103);
                  }
                  §§push(_loc4_);
               }
               §§push(§§pop() + 1);
               if(_loc5_)
               {
                  §§push(Number(§§pop()));
               }
            }
            _loc4_ = §§pop();
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§_-cK§ = param1;
            if(_loc4_ || _loc2_)
            {
               addr29:
               this.§_-F§(param1);
            }
            var _loc2_:* = Number(0);
            loop0:
            while(true)
            {
               §§push(_loc2_);
               if(!_loc3_)
               {
                  if(!_loc3_)
                  {
                     if(§§pop() >= this.§_-Tx§.length)
                     {
                        if(_loc4_ || param1)
                        {
                           if(_loc4_ || _loc3_)
                           {
                              break;
                           }
                           loop2:
                           while(true)
                           {
                              addr73:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 addr75:
                                 while(true)
                                 {
                                    §§push(§§pop() + 1);
                                    if(!_loc3_)
                                    {
                                       addr89:
                                       §§push(Number(§§pop()));
                                       while(true)
                                       {
                                          _loc2_ = §§pop();
                                       }
                                       addr89:
                                    }
                                    §§goto(addr89);
                                 }
                              }
                              addr106:
                              loop1:
                              while(true)
                              {
                                 this.§_-Tx§[_loc2_].sprite.visible = !this.§_-cK§;
                                 continue loop2;
                                 addr90:
                                 while(_loc3_ && param1)
                                 {
                                    continue loop1;
                                 }
                                 continue loop0;
                              }
                           }
                        }
                        §§goto(addr90);
                     }
                     else if(this.§_-Tx§[_loc2_].isTexture())
                     {
                        §§goto(addr106);
                     }
                     §§goto(addr73);
                  }
                  §§goto(addr75);
               }
               §§goto(addr89);
            }
            return;
         }
         §§goto(addr29);
      }
      
      public function setDamageEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§_-tf§ = param1;
         }
      }
      
      public function §_-5u§() : Boolean
      {
         return this.§_-tf§;
      }
      
      public function §_-0Ds§() : int
      {
         return this.§_-09T§;
      }
      
      public function §_-Nw§() : int
      {
         return this.§_-25§;
      }
      
      public function §_-ec§(param1:String) : §_-eZ§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§_-eZ§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-Tx§.length)
         {
            _loc3_ = this.§_-Tx§[_loc2_] as §_-eZ§;
            if(!(_loc5_ && param1))
            {
               if(_loc3_.uniqueID == param1)
               {
                  if(!_loc5_)
                  {
                     return _loc3_;
                  }
               }
               else
               {
                  _loc2_++;
               }
            }
         }
         return null;
      }
   }
}
