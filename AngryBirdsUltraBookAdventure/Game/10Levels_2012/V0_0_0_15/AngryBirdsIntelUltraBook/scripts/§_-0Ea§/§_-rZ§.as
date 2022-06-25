package §_-0Ea§
{
   import §_-UD§.§_-Jy§;
   import §_-uY§.§_-2p§;
   import §_-z4§.Texture;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §_-rZ§ extends §_-zM§
   {
       
      
      private var §_-t8§:BitmapData;
      
      private var §_-0-b§:int = 0;
      
      private var §_-pJ§:int = 0;
      
      private var §_-pY§:Number = 1.0;
      
      private var §_-06u§:Number = 1.0;
      
      private var §_-ax§:BitmapData;
      
      private var §_-J-§:Vector.<Number>;
      
      private var §_-HB§:Matrix;
      
      private var §_-09y§:ColorTransform;
      
      public function §_-rZ§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§_-J-§ = new Vector.<Number>(16);
            while(true)
            {
               this.§_-HB§ = new Matrix();
               loop2:
               while(_loc1_ || _loc2_)
               {
                  super();
                  while(!_loc2_)
                  {
                     this.§_-ax§ = new BitmapData(1,1,false);
                     if(!(_loc2_ && this))
                     {
                        if(!_loc2_)
                        {
                           return;
                        }
                        continue loop2;
                     }
                  }
                  while(true)
                  {
                     this.§_-09y§ = new ColorTransform();
                     continue loop2;
                  }
               }
            }
         }
         §§goto(addr90);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§_-t8§;
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super.dispose();
         }
         loop0:
         while(this.§_-ax§)
         {
            while(!(_loc1_ && _loc1_))
            {
               this.§_-ax§.dispose();
               do
               {
                  this.§_-ax§ = null;
               }
               while(!_loc2_);
               
               if(!(_loc1_ && _loc1_))
               {
                  break loop0;
               }
            }
         }
      }
      
      override public function batchQuad(param1:§_-2p§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:* = uint(0);
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(_loc8_ || param3)
         {
            if(this.§_-t8§)
            {
               loop0:
               while(true)
               {
                  §_-Sd§.copyRawDataTo(this.§_-J-§,0);
                  loop1:
                  while(true)
                  {
                     this.§_-HB§.setTo(this.§_-J-§[0],this.§_-J-§[1],this.§_-J-§[4],this.§_-J-§[5],this.§_-J-§[12],this.§_-J-§[13]);
                     addr106:
                     loop2:
                     while(true)
                     {
                        this.§_-HB§.scale(this.§_-pY§,this.§_-06u§);
                        while(true)
                        {
                           if(!_loc9_)
                           {
                              loop4:
                              while(true)
                              {
                                 §§push(param1.color);
                                 if(_loc8_)
                                 {
                                    §§push(uint(§§pop()));
                                 }
                                 _loc5_ = §§pop();
                                 while(_loc8_)
                                 {
                                    §§push(param2);
                                    if(_loc8_)
                                    {
                                       §§push(§§pop() * param1.alpha);
                                       if(_loc8_ || this)
                                       {
                                          addr47:
                                          §§push(Number(§§pop()));
                                       }
                                       param2 = §§pop();
                                       if(_loc9_)
                                       {
                                          continue;
                                       }
                                       if(!_loc8_)
                                       {
                                          break loop4;
                                       }
                                       if(!_loc8_)
                                       {
                                          continue loop0;
                                       }
                                       if(false)
                                       {
                                          continue loop4;
                                       }
                                       _loc6_ = null;
                                       if(_loc8_ || param1)
                                       {
                                          §§push(Boolean(param3));
                                          if(!_loc9_)
                                          {
                                             if(§§pop())
                                             {
                                                if(!(_loc9_ && param2))
                                                {
                                                   §§pop();
                                                   if(!(_loc9_ && param3))
                                                   {
                                                      §§push(_loc5_ == 16777215);
                                                      if(!(_loc9_ && param2))
                                                      {
                                                         addr158:
                                                         if(!§§pop())
                                                         {
                                                            if(_loc8_ || param1)
                                                            {
                                                               addr176:
                                                               (_loc6_ = this.§_-09y§).redMultiplier = §_-Jy§.§throw§(_loc5_) / 255;
                                                               if(!(_loc9_ && param1))
                                                               {
                                                                  _loc6_.greenMultiplier = §_-Jy§.§_-OU§(_loc5_) / 255;
                                                                  addr203:
                                                                  _loc6_.blueMultiplier = §_-Jy§.§_-Gv§(_loc5_) / 255;
                                                                  if(!(_loc9_ && param1))
                                                                  {
                                                                     _loc6_.alphaMultiplier = 1;
                                                                     if(!_loc9_)
                                                                     {
                                                                        if(false)
                                                                        {
                                                                           §§goto(addr203);
                                                                        }
                                                                        addr227:
                                                                        if(param2 != 1)
                                                                        {
                                                                           addr230:
                                                                           (_loc6_ = this.§_-09y§).alphaMultiplier = param2;
                                                                        }
                                                                        if((_loc7_ = param1.clippedBitmapData) == null)
                                                                        {
                                                                           if(_loc8_)
                                                                           {
                                                                              this.§_-ax§.setPixel(0,0,param1.color);
                                                                              if(_loc8_)
                                                                              {
                                                                                 _loc7_ = this.§_-ax§;
                                                                                 if(_loc8_ || param2)
                                                                                 {
                                                                                    this.§_-HB§.a *= param1.§_-ZD§;
                                                                                    this.§_-HB§.b *= param1.§_-ZD§;
                                                                                    addr309:
                                                                                    if(_loc8_ || param3)
                                                                                    {
                                                                                       addr286:
                                                                                       this.§_-HB§.c *= param1.§_-u4§;
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          this.§_-HB§.d *= param1.§_-u4§;
                                                                                          if(!(_loc9_ && param2))
                                                                                          {
                                                                                             if(false)
                                                                                             {
                                                                                                §§goto(addr286);
                                                                                             }
                                                                                             addr337:
                                                                                             this.§_-t8§.draw(_loc7_,this.§_-HB§,_loc6_,null,null,param1.highQuality);
                                                                                             §§goto(addr348);
                                                                                          }
                                                                                          §§goto(addr286);
                                                                                       }
                                                                                       §§goto(addr309);
                                                                                       addr326:
                                                                                    }
                                                                                    addr336:
                                                                                    §§goto(addr336);
                                                                                 }
                                                                                 §§goto(addr326);
                                                                              }
                                                                              §§goto(addr348);
                                                                           }
                                                                           addr348:
                                                                           return;
                                                                        }
                                                                        §§goto(addr337);
                                                                     }
                                                                     §§goto(addr203);
                                                                     addr218:
                                                                  }
                                                                  addr226:
                                                                  §§goto(addr226);
                                                               }
                                                               §§goto(addr218);
                                                            }
                                                            §§goto(addr230);
                                                         }
                                                         §§goto(addr227);
                                                      }
                                                      §§goto(addr158);
                                                   }
                                                   §§goto(addr176);
                                                }
                                             }
                                          }
                                          §§goto(addr158);
                                       }
                                       §§goto(addr230);
                                    }
                                    §§goto(addr47);
                                 }
                                 continue loop1;
                              }
                              continue;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
            §§goto(addr337);
         }
         §§goto(addr106);
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            if(this.§_-t8§)
            {
               loop19:
               while(true)
               {
                  §§push(this.§_-t8§.width == this.§_-0-b§);
                  loop18:
                  while(true)
                  {
                     §§push(!§§pop());
                     if(!_loc5_)
                     {
                        addr236:
                        if(!§§pop())
                        {
                           break;
                        }
                        loop15:
                        while(§§pop())
                        {
                           addr212:
                           this.§_-t8§.dispose();
                           while(true)
                           {
                              if(!(_loc4_ || this))
                              {
                                 continue loop19;
                              }
                              this.§_-t8§ = null;
                              addr180:
                              if(_loc5_)
                              {
                                 continue;
                              }
                              loop0:
                              while(true)
                              {
                                 §§push(this.§_-t8§ == null);
                                 loop1:
                                 while(!_loc5_)
                                 {
                                    §§push(§§pop());
                                    loop2:
                                    while(_loc4_ || param3)
                                    {
                                       if(§§pop())
                                       {
                                          loop3:
                                          while(!(_loc5_ && param3))
                                          {
                                             §§pop();
                                             loop4:
                                             for(; _loc4_; if(_loc4_ || param3)
                                             {
                                                addr19:
                                                return;
                                             })
                                             {
                                                §§push(this.§_-0-b§);
                                                loop5:
                                                while(true)
                                                {
                                                   §§push(0);
                                                   addr100:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() > §§pop());
                                                      if(_loc4_ || param1)
                                                      {
                                                         if(!(_loc4_ || this))
                                                         {
                                                            break;
                                                            addr125:
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc5_)
                                                            {
                                                               break;
                                                            }
                                                            if(§§pop())
                                                            {
                                                               addr130:
                                                               while(_loc4_)
                                                               {
                                                                  §§pop();
                                                               }
                                                               continue loop3;
                                                               addr130:
                                                            }
                                                            else
                                                            {
                                                               addr72:
                                                            }
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  while(_loc4_ || this)
                                                                  {
                                                                     this.§_-t8§ = new BitmapData(this.§_-0-b§,this.§_-pJ§,true,4278190080 | param2);
                                                                     while(!_loc5_)
                                                                     {
                                                                     }
                                                                     §§goto(addr212);
                                                                     if(_loc4_ || param1)
                                                                     {
                                                                        this.§_-t8§.lock();
                                                                        addr46:
                                                                        if(_loc4_)
                                                                        {
                                                                           continue loop4;
                                                                        }
                                                                        addr175:
                                                                        addr133:
                                                                        while(_loc4_)
                                                                        {
                                                                           continue loop5;
                                                                        }
                                                                        continue loop0;
                                                                     }
                                                                  }
                                                                  §§goto(addr180);
                                                               }
                                                               while(this.§_-t8§)
                                                               {
                                                                  if(_loc4_ || this)
                                                                  {
                                                                     if(_loc4_)
                                                                     {
                                                                        §§goto(addr36);
                                                                     }
                                                                     §§goto(addr93);
                                                                  }
                                                                  §§goto(addr46);
                                                               }
                                                               §§goto(addr19);
                                                            }
                                                            §§goto(addr133);
                                                         }
                                                         continue loop2;
                                                      }
                                                      §§goto(addr130);
                                                   }
                                                   continue loop1;
                                                }
                                             }
                                             §§push(this.§_-t8§.height == this.§_-pJ§);
                                             break;
                                          }
                                          if(!_loc5_)
                                          {
                                             addr192:
                                             §§push(!§§pop());
                                             break loop1;
                                          }
                                          continue loop18;
                                       }
                                       §§goto(addr125);
                                    }
                                    §§goto(addr236);
                                 }
                                 while(true)
                                 {
                                    if(_loc5_ && param2)
                                    {
                                       break loop18;
                                    }
                                    continue loop15;
                                    §§goto(addr192);
                                 }
                              }
                           }
                           continue loop19;
                        }
                        this.§_-t8§.fillRect(this.§_-t8§.rect,4278190080 | param2);
                        §§goto(addr175);
                     }
                     break;
                  }
                  while(true)
                  {
                     §§pop();
                     §§goto(addr238);
                  }
                  §§goto(addr192);
               }
               addr226:
            }
            §§goto(addr136);
         }
         §§goto(addr226);
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            if(this.§_-t8§)
            {
               if(!(_loc2_ && param1))
               {
                  this.§_-t8§.unlock();
               }
            }
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            this.§_-0-b§ = param1;
            while(true)
            {
               this.§_-pJ§ = param2;
               §§goto(addr69);
            }
         }
         addr69:
         while(true)
         {
            this.§_-pY§ = param3;
            do
            {
               this.§_-06u§ = param4;
            }
            while(!(_loc6_ || param3));
            
            if(!_loc5_)
            {
               if(_loc6_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
   }
}
