package §_-uY§
{
   import §_-0Ea§.§_-zM§;
   import §_-UD§.§_-9f§;
   import §_-UD§.transformCoords;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §_-2p§ extends DisplayObject
   {
      
      private static var §_-0Dq§:Vector3D;
      
      private static var §_-kf§:Point;
      
      private static var §_-6w§:Matrix;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §_-0Dq§ = new Vector3D();
            do
            {
               §_-kf§ = new Point();
               do
               {
                  §_-6w§ = new Matrix();
               }
               while(_loc2_ && _loc2_);
               
            }
            while(_loc2_);
            
         }
      }
      
      protected var §_-BF§:§_-9f§;
      
      private var §_-01Z§:Number = 0.0;
      
      private var §_-tH§:Number = 0.0;
      
      private var §_-Un§:uint = 16777215;
      
      public function §_-2p§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            super();
            while(true)
            {
               this.§_-BF§ = new §_-9f§(4,param4);
               while(_loc5_ || param2)
               {
                  this.updateVertexData(param1,param2,param3,param4);
                  do
                  {
                     this.§_-Un§ = param3;
                  }
                  while(_loc6_);
                  
                  if(_loc6_)
                  {
                     continue;
                  }
                  return;
                  addr51:
               }
            }
         }
         §§goto(addr51);
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            §§push(this.§_-BF§);
            while(true)
            {
               §§pop().setPremultipliedAlpha(param4);
               while(true)
               {
                  §§push(this.§_-BF§);
                  loop2:
                  while(true)
                  {
                     §§push(0);
                     loop3:
                     while(true)
                     {
                        §§push(0);
                        loop4:
                        while(true)
                        {
                           §§push(0);
                           loop5:
                           while(true)
                           {
                              §§pop().setPosition(§§pop(),§§pop(),§§pop());
                              loop6:
                              while(true)
                              {
                                 §§push(this.§_-BF§);
                                 loop7:
                                 while(true)
                                 {
                                    §§push(1);
                                    while(_loc5_)
                                    {
                                       §§push(param1);
                                       while(_loc5_ || this)
                                       {
                                          §§push(0);
                                          loop10:
                                          while(true)
                                          {
                                             §§pop().setPosition(§§pop(),§§pop(),§§pop());
                                             addr172:
                                             while(_loc5_)
                                             {
                                                §§push(this.§_-BF§);
                                                while(!_loc6_)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      continue loop2;
                                                   }
                                                   §§push(2);
                                                   while(true)
                                                   {
                                                      §§push(0);
                                                      addr136:
                                                      while(true)
                                                      {
                                                         §§push(param2);
                                                         continue loop10;
                                                      }
                                                   }
                                                }
                                                continue loop7;
                                             }
                                             continue loop6;
                                          }
                                          if(!(_loc5_ || param3))
                                          {
                                             continue;
                                          }
                                          §§push(param2);
                                          if(!(_loc6_ && param3))
                                          {
                                             if(!(_loc5_ || this))
                                             {
                                                continue loop5;
                                             }
                                             §§pop().setPosition(§§pop(),§§pop(),§§pop());
                                             §§goto(addr126);
                                          }
                                          §§goto(addr137);
                                       }
                                       continue loop4;
                                    }
                                    continue loop3;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr67);
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:* = 0;
         if(!_loc9_)
         {
            if(param2 == null)
            {
               addr23:
               param2 = new Rectangle();
            }
            var _loc3_:* = Number(Number.MAX_VALUE);
            §§push(-Number.MAX_VALUE);
            if(!_loc9_)
            {
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            var _loc5_:Number = Number.MAX_VALUE;
            §§push(-Number.MAX_VALUE);
            if(!(_loc9_ && param2))
            {
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            if(_loc8_)
            {
               if(param1 == this)
               {
                  if(_loc8_ || param2)
                  {
                     addr642:
                     _loc7_ = 0;
                  }
                  loop0:
                  while(true)
                  {
                     §§push(_loc7_);
                     loop1:
                     while(true)
                     {
                        §§push(4);
                        loop2:
                        while(true)
                        {
                           if(§§pop() < §§pop())
                           {
                              §§push(this.§_-BF§);
                              break;
                           }
                           loop3:
                           while(_loc8_ || _loc3_)
                           {
                              loop4:
                              while(true)
                              {
                                 param2.x = _loc3_;
                                 loop5:
                                 while(!_loc9_)
                                 {
                                    param2.y = _loc5_;
                                    loop6:
                                    for(; !(_loc9_ && param1); if(_loc9_ && _loc3_)
                                    {
                                       continue;
                                    },if(_loc9_)
                                    {
                                       continue loop5;
                                    },if(_loc8_ || param1)
                                    {
                                       if(_loc8_)
                                       {
                                          if(!(_loc9_ && _loc3_))
                                          {
                                             return param2;
                                          }
                                          §§goto(addr604);
                                       }
                                       §§goto(addr573);
                                    }
                                    else
                                    {
                                       §§goto(addr205);
                                    })
                                    {
                                       if(!(_loc9_ && param1))
                                       {
                                          if(!_loc8_)
                                          {
                                             continue loop3;
                                          }
                                          param2.width = _loc4_ - _loc3_;
                                          while(!(_loc9_ && param2))
                                          {
                                             param2.height = _loc6_ - _loc5_;
                                             if(!_loc9_)
                                             {
                                                continue loop6;
                                             }
                                          }
                                          loop32:
                                          while(true)
                                          {
                                             addr131:
                                             while(true)
                                             {
                                                §§push(_loc7_);
                                                if(_loc8_ || param2)
                                                {
                                                   break;
                                                }
                                                addr487:
                                                while(_loc8_ || param2)
                                                {
                                                   _loc7_ = §§pop();
                                                   continue loop32;
                                                }
                                                continue loop1;
                                             }
                                             §§push(4);
                                             if(!(_loc9_ && _loc3_))
                                             {
                                                if(§§pop() >= §§pop())
                                                {
                                                   break loop6;
                                                }
                                                §§push(this.§_-BF§);
                                                if(_loc8_)
                                                {
                                                   §§push(_loc7_);
                                                   if(!(_loc9_ && _loc3_))
                                                   {
                                                      §§pop().§_-03l§(§§pop(),§_-0Dq§);
                                                      transformCoords(§_-6w§,§_-0Dq§.x,§_-0Dq§.y,§_-kf§);
                                                      loop38:
                                                      while(true)
                                                      {
                                                         §§push(_loc3_);
                                                         if(_loc8_)
                                                         {
                                                            §§push(§§pop() < §_-kf§.x);
                                                            loop39:
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  loop8:
                                                                  while(!_loc9_)
                                                                  {
                                                                     §§push(_loc3_);
                                                                     loop9:
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc9_ && _loc3_))
                                                                        {
                                                                           if(_loc8_ || param2)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              loop10:
                                                                              while(true)
                                                                              {
                                                                                 loop11:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    while(true)
                                                                                    {
                                                                                       _loc3_ = §§pop();
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc4_);
                                                                                          if(_loc8_)
                                                                                          {
                                                                                             if(_loc8_ || param1)
                                                                                             {
                                                                                                §§push(§§pop() > §_-kf§.x);
                                                                                                loop14:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc8_ || param1))
                                                                                                   {
                                                                                                      continue loop39;
                                                                                                   }
                                                                                                   if(_loc8_ || _loc3_)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(!_loc9_)
                                                                                                         {
                                                                                                            if(!_loc8_)
                                                                                                            {
                                                                                                               continue loop0;
                                                                                                            }
                                                                                                            if(_loc8_)
                                                                                                            {
                                                                                                               addr371:
                                                                                                               §§push(_loc4_);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  if(!_loc9_)
                                                                                                                  {
                                                                                                                     while(!_loc9_)
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           addr395:
                                                                                                                           while(_loc8_)
                                                                                                                           {
                                                                                                                              if(!_loc9_)
                                                                                                                              {
                                                                                                                                 _loc4_ = §§pop();
                                                                                                                                 addr400:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc5_);
                                                                                                                                    addr269:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() < §_-kf§.y);
                                                                                                                                       continue loop14;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr400:
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 addr539:
                                                                                                                                 if(_loc8_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    if(!_loc9_)
                                                                                                                                    {
                                                                                                                                       if(_loc9_ && this)
                                                                                                                                       {
                                                                                                                                          addr603:
                                                                                                                                          if(§§pop() < §_-0Dq§.x)
                                                                                                                                          {
                                                                                                                                             addr621:
                                                                                                                                             _loc3_ = Number(Number(_loc3_));
                                                                                                                                             addr620:
                                                                                                                                             §§push(_loc4_);
                                                                                                                                             break loop9;
                                                                                                                                             addr620:
                                                                                                                                             addr616:
                                                                                                                                             addr622:
                                                                                                                                             addr615:
                                                                                                                                             addr604:
                                                                                                                                          }
                                                                                                                                          §§goto(addr620);
                                                                                                                                          §§push(Number(§_-0Dq§.x));
                                                                                                                                       }
                                                                                                                                       _loc6_ = §§pop();
                                                                                                                                       _loc7_++;
                                                                                                                                       continue loop0;
                                                                                                                                       addr556:
                                                                                                                                    }
                                                                                                                                    addr562:
                                                                                                                                    §§push(§§pop() < §_-0Dq§.y);
                                                                                                                                    if(!_loc9_)
                                                                                                                                    {
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          break loop3;
                                                                                                                                       }
                                                                                                                                       addr572:
                                                                                                                                       _loc5_ = Number(§_-0Dq§.y);
                                                                                                                                       addr571:
                                                                                                                                       §§push(_loc6_ > §_-0Dq§.y);
                                                                                                                                       if(!_loc9_)
                                                                                                                                       {
                                                                                                                                          if(!(_loc9_ && this))
                                                                                                                                          {
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                break loop8;
                                                                                                                                             }
                                                                                                                                             addr538:
                                                                                                                                             §§goto(addr539);
                                                                                                                                             §§push(Number(Number(§_-0Dq§.y)));
                                                                                                                                          }
                                                                                                                                          §§goto(addr603);
                                                                                                                                       }
                                                                                                                                       §§goto(addr562);
                                                                                                                                       addr571:
                                                                                                                                       addr573:
                                                                                                                                    }
                                                                                                                                    addr579:
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       addr580:
                                                                                                                                       §§push(_loc4_);
                                                                                                                                       if(_loc8_ || this)
                                                                                                                                       {
                                                                                                                                          addr589:
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                          if(!_loc9_)
                                                                                                                                          {
                                                                                                                                             addr596:
                                                                                                                                             _loc4_ = Number(§§pop());
                                                                                                                                             addr595:
                                                                                                                                             §§goto(addr562);
                                                                                                                                             §§push(_loc5_);
                                                                                                                                             addr595:
                                                                                                                                             addr597:
                                                                                                                                          }
                                                                                                                                          §§goto(addr616);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr595);
                                                                                                                                    §§push(Number(§_-0Dq§.x));
                                                                                                                                 }
                                                                                                                                 §§goto(addr571);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           continue loop10;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr533:
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     addr374:
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr380:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc8_ || this)
                                                                                                                        {
                                                                                                                           if(_loc8_ || _loc3_)
                                                                                                                           {
                                                                                                                              §§goto(addr394);
                                                                                                                           }
                                                                                                                           §§goto(addr595);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           while(!(_loc9_ && param2))
                                                                                                                           {
                                                                                                                              if(_loc8_ || this)
                                                                                                                              {
                                                                                                                                 if(_loc8_)
                                                                                                                                 {
                                                                                                                                    if(!(_loc9_ && param1))
                                                                                                                                    {
                                                                                                                                       continue loop11;
                                                                                                                                    }
                                                                                                                                    §§goto(addr589);
                                                                                                                                 }
                                                                                                                                 addr567:
                                                                                                                                 §§goto(addr571);
                                                                                                                              }
                                                                                                                              §§goto(addr572);
                                                                                                                           }
                                                                                                                           addr534:
                                                                                                                           addr431:
                                                                                                                        }
                                                                                                                        §§goto(addr538);
                                                                                                                     }
                                                                                                                     addr380:
                                                                                                                  }
                                                                                                                  §§goto(addr534);
                                                                                                               }
                                                                                                               addr371:
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§push(_loc3_);
                                                                                                               addr631:
                                                                                                            }
                                                                                                            §§goto(addr603);
                                                                                                         }
                                                                                                         §§goto(addr400);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§push(Number(§_-kf§.x));
                                                                                                      }
                                                                                                      §§goto(addr380);
                                                                                                   }
                                                                                                   §§goto(addr572);
                                                                                                }
                                                                                                continue loop39;
                                                                                             }
                                                                                             addr566:
                                                                                             §§goto(addr567);
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                          §§goto(addr374);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr621);
                                                                        }
                                                                        break;
                                                                        if(!(_loc8_ || this))
                                                                        {
                                                                           continue;
                                                                        }
                                                                        if(_loc8_)
                                                                        {
                                                                           if(_loc8_ || param1)
                                                                           {
                                                                              if(_loc8_)
                                                                              {
                                                                                 §§push(§§pop() > §_-kf§.y);
                                                                                 if(!(_loc9_ && this))
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc8_)
                                                                                          {
                                                                                             if(!(_loc8_ || _loc3_))
                                                                                             {
                                                                                                continue loop38;
                                                                                             }
                                                                                             if(_loc8_)
                                                                                             {
                                                                                                if(_loc8_ || _loc3_)
                                                                                                {
                                                                                                   §§push(_loc6_);
                                                                                                   if(!(_loc9_ && _loc3_))
                                                                                                   {
                                                                                                      §§goto(addr231);
                                                                                                   }
                                                                                                   §§goto(addr249);
                                                                                                }
                                                                                                §§goto(addr622);
                                                                                             }
                                                                                             §§goto(addr556);
                                                                                          }
                                                                                          §§goto(addr280);
                                                                                       }
                                                                                       addr205:
                                                                                    }
                                                                                    §§push(Number(§_-kf§.y));
                                                                                    if(_loc8_ || this)
                                                                                    {
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             §§goto(addr264);
                                                                                          }
                                                                                          §§goto(addr371);
                                                                                       }
                                                                                       §§goto(addr319);
                                                                                    }
                                                                                    §§goto(addr265);
                                                                                 }
                                                                                 §§goto(addr272);
                                                                              }
                                                                              §§goto(addr615);
                                                                           }
                                                                           §§goto(addr596);
                                                                        }
                                                                        §§goto(addr572);
                                                                     }
                                                                     §§goto(addr579);
                                                                     §§push(§§pop() > §_-0Dq§.x);
                                                                  }
                                                                  §§goto(addr533);
                                                                  §§push(_loc6_);
                                                                  addr409:
                                                               }
                                                               else
                                                               {
                                                                  §§push(Number(§_-kf§.x));
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr431);
                                                      }
                                                      addr484:
                                                   }
                                                   addr629:
                                                   §§pop().§_-03l§(§§pop(),§_-0Dq§);
                                                   §§goto(addr631);
                                                }
                                                break loop2;
                                             }
                                             continue loop2;
                                          }
                                       }
                                       §§goto(addr409);
                                    }
                                    while(true)
                                    {
                                       if(_loc8_)
                                       {
                                          continue loop4;
                                       }
                                       addr160:
                                       while(true)
                                       {
                                          if(!_loc9_)
                                          {
                                             if(!(_loc9_ && param2))
                                             {
                                                §§goto(addr131);
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                }
                                                addr513:
                                             }
                                             §§goto(addr487);
                                          }
                                          §§goto(addr320);
                                       }
                                       continue loop2;
                                    }
                                 }
                                 while(true)
                                 {
                                    _loc7_++;
                                    §§goto(addr160);
                                 }
                              }
                           }
                           §§goto(addr566);
                           §§push(_loc5_);
                        }
                        §§goto(addr629);
                     }
                  }
               }
               else
               {
                  §_-mP§(param1,§_-6w§);
               }
               §§goto(addr513);
            }
            §§goto(addr642);
         }
         §§goto(addr23);
      }
      
      public function §_-pz§(param1:int) : uint
      {
         return this.§_-BF§.§_-01U§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§_-BF§.§_-fh§(param1,param2);
         }
      }
      
      public function §_-J6§(param1:int) : Number
      {
         return this.§_-BF§.§_-nB§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§_-BF§.§_-it§(param1,param2);
         }
      }
      
      public function get color() : uint
      {
         return this.§_-Un§;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§_-Un§ != param1)
            {
               do
               {
                  this.§_-Un§ = param1;
                  do
                  {
                     this.§_-BF§.§_-I9§(param1,1);
                  }
                  while(_loc3_);
                  
               }
               while(_loc3_);
               
               addr43:
            }
            return;
         }
         §§goto(addr43);
      }
      
      public function copyVertexDataTo(param1:§_-9f§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            this.§_-BF§.copyTo(param1,param2,param3,true,param4);
         }
      }
      
      override public function render(param1:§_-zM§, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            param1.batchQuad(this,param2);
         }
      }
      
      public function get useColor() : Boolean
      {
         return true;
      }
      
      public function get clippedBitmapData() : BitmapData
      {
         return null;
      }
      
      public function get §_-ZD§() : Number
      {
         return this.§_-01Z§;
      }
      
      public function get §_-u4§() : Number
      {
         return this.§_-tH§;
      }
   }
}
