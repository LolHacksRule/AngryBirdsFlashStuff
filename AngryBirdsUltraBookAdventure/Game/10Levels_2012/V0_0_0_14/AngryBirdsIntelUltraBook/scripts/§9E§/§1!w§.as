package §9E§
{
   import §2N§.§,!J§;
   import §2N§.transformCoords;
   import §@4§.§<!I§;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §1!w§ extends DisplayObject
   {
      
      private static var §^!k§:Vector3D;
      
      private static var §8§:Point;
      
      private static var §1=§:Matrix;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §^!k§ = new Vector3D();
            while(true)
            {
               §8§ = new Point();
               loop1:
               while(_loc2_)
               {
                  while(true)
                  {
                     §1=§ = new Matrix();
                     if(!(_loc1_ && _loc1_))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr54);
      }
      
      protected var §3!^§:§,!J§;
      
      private var §-!K§:Number = 0.0;
      
      private var §8!x§:Number = 0.0;
      
      private var §'!k§:uint = 16777215;
      
      public function §1!w§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            super();
            loop0:
            while(true)
            {
               this.§3!^§ = new §,!J§(4,param4);
               do
               {
                  this.updateVertexData(param1,param2,param3,param4);
                  continue loop0;
               }
               while(!_loc6_);
               
            }
         }
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
            §§push(this.§3!^§);
            while(true)
            {
               §§pop().setPremultipliedAlpha(param4);
               loop1:
               while(true)
               {
                  §§push(this.§3!^§);
                  loop2:
                  while(true)
                  {
                     §§push(0);
                     addr199:
                     while(true)
                     {
                        §§push(0);
                        addr200:
                        loop4:
                        while(true)
                        {
                           §§push(0);
                           addr201:
                           while(true)
                           {
                              §§pop().setPosition(§§pop(),§§pop(),§§pop());
                              loop6:
                              while(true)
                              {
                                 §§push(this.§3!^§);
                                 loop7:
                                 while(true)
                                 {
                                    §§push(1);
                                    addr184:
                                    while(true)
                                    {
                                       §§push(param1);
                                       addr185:
                                       while(!(_loc6_ && this))
                                       {
                                          §§push(0);
                                          while(true)
                                          {
                                             §§pop().setPosition(§§pop(),§§pop(),§§pop());
                                             addr194:
                                             addr137:
                                             while(true)
                                             {
                                                §§push(this.§3!^§);
                                                continue loop2;
                                             }
                                             if(_loc5_ || param2)
                                             {
                                                §§pop().setPosition(§§pop(),§§pop(),§§pop());
                                                do
                                                {
                                                   if(_loc5_)
                                                   {
                                                      §§push(this.§3!^§);
                                                      if(_loc5_)
                                                      {
                                                         addr54:
                                                         if(!(_loc6_ && param2))
                                                         {
                                                            §§pop().§%-§(param3);
                                                            while(true)
                                                            {
                                                               if(!(_loc6_ && param3))
                                                               {
                                                                  if(_loc6_ && param1)
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(!_loc6_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  continue loop1;
                                                               }
                                                               addr179:
                                                               while(true)
                                                               {
                                                                  §§push(this.§3!^§);
                                                                  continue loop7;
                                                               }
                                                            }
                                                            continue loop6;
                                                         }
                                                         continue loop2;
                                                      }
                                                      continue loop7;
                                                      addr147:
                                                   }
                                                   §§goto(addr194);
                                                }
                                                while(!_loc5_);
                                                
                                                return;
                                                addr43:
                                             }
                                          }
                                       }
                                       continue loop4;
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               if(_loc6_ && param3)
               {
                  continue;
               }
               §§goto(addr107);
            }
         }
         §§goto(addr43);
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:* = 0;
         if(!(_loc9_ && _loc3_))
         {
            if(param2 == null)
            {
               addr28:
               param2 = new Rectangle();
            }
            var _loc3_:* = Number(Number.MAX_VALUE);
            §§push(-Number.MAX_VALUE);
            if(!_loc9_)
            {
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            var _loc5_:* = Number(Number.MAX_VALUE);
            §§push(-Number.MAX_VALUE);
            if(_loc8_ || param1)
            {
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            if(_loc8_)
            {
               if(param1 == this)
               {
                  if(_loc8_ || _loc3_)
                  {
                     addr627:
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
                           if(§§pop() >= §§pop())
                           {
                              loop3:
                              while(_loc8_)
                              {
                                 loop4:
                                 while(true)
                                 {
                                    param2.x = _loc3_;
                                    loop5:
                                    while(_loc8_ || param2)
                                    {
                                       if(!_loc9_)
                                       {
                                          param2.y = _loc5_;
                                          loop6:
                                          while(true)
                                          {
                                             if(!_loc9_)
                                             {
                                                if(_loc8_)
                                                {
                                                   if(_loc8_ || _loc3_)
                                                   {
                                                      param2.width = _loc4_ - _loc3_;
                                                      loop7:
                                                      for(; _loc8_; param2.height = _loc6_ - _loc5_,if(!(_loc8_ || param2))
                                                      {
                                                         continue;
                                                      },if(_loc9_)
                                                      {
                                                         continue loop6;
                                                      },if(_loc9_)
                                                      {
                                                         continue loop4;
                                                      },if(_loc8_ || param2)
                                                      {
                                                         if(_loc8_ || param1)
                                                         {
                                                            if(!(_loc9_ && param2))
                                                            {
                                                               if(_loc8_)
                                                               {
                                                                  return param2;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr380);
                                                            }
                                                            §§goto(addr588);
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(_loc6_);
                                                            if(!_loc9_)
                                                            {
                                                               if(_loc8_ || this)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  if(!_loc9_)
                                                                  {
                                                                     if(_loc8_)
                                                                     {
                                                                        if(!(_loc9_ && this))
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              addr233:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    if(_loc8_)
                                                                                    {
                                                                                       if(_loc8_ || this)
                                                                                       {
                                                                                          _loc6_ = §§pop();
                                                                                          while(true)
                                                                                          {
                                                                                             _loc7_++;
                                                                                             break loop7;
                                                                                          }
                                                                                          addr245:
                                                                                       }
                                                                                       §§goto(addr392);
                                                                                    }
                                                                                    §§goto(addr365);
                                                                                 }
                                                                                 §§goto(addr379);
                                                                              }
                                                                           }
                                                                           addr232:
                                                                        }
                                                                        §§goto(addr376);
                                                                     }
                                                                     §§goto(addr316);
                                                                  }
                                                                  §§goto(addr233);
                                                               }
                                                               §§goto(addr383);
                                                            }
                                                            addr230:
                                                            while(true)
                                                            {
                                                               if(_loc8_)
                                                               {
                                                                  §§goto(addr232);
                                                               }
                                                               §§goto(addr248);
                                                            }
                                                         }
                                                         addr197:
                                                      },§§goto(addr245))
                                                      {
                                                         if(_loc8_)
                                                         {
                                                            continue;
                                                         }
                                                         loop30:
                                                         while(true)
                                                         {
                                                            if(_loc8_)
                                                            {
                                                               §§push(_loc4_);
                                                               if(!(_loc9_ && param1))
                                                               {
                                                                  if(!_loc9_)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc9_ && param2))
                                                                        {
                                                                           loop10:
                                                                           while(true)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              addr379:
                                                                              loop11:
                                                                              while(true)
                                                                              {
                                                                                 _loc4_ = §§pop();
                                                                                 addr380:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc5_);
                                                                                    addr248:
                                                                                    loop21:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          if(_loc8_ || param2)
                                                                                          {
                                                                                             §§push(§§pop() < §8§.y);
                                                                                             loop27:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc8_ || this)
                                                                                                {
                                                                                                   if(!(_loc9_ && param2))
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         break loop5;
                                                                                                      }
                                                                                                      addr316:
                                                                                                      addr316:
                                                                                                      §§push(Number(§8§.y));
                                                                                                      loop12:
                                                                                                      while(_loc8_)
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                            addr319:
                                                                                                            addr326:
                                                                                                            while(!(_loc8_ || param2))
                                                                                                            {
                                                                                                               loop17:
                                                                                                               for(; !(_loc9_ && _loc3_); while(true)
                                                                                                               {
                                                                                                                  continue loop17;
                                                                                                                  §§goto(addr402);
                                                                                                               })
                                                                                                               {
                                                                                                                  _loc3_ = §§pop();
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc9_)
                                                                                                                     {
                                                                                                                        continue loop0;
                                                                                                                     }
                                                                                                                     §§push(_loc4_);
                                                                                                                     if(_loc9_)
                                                                                                                     {
                                                                                                                        continue loop11;
                                                                                                                     }
                                                                                                                     if(!_loc9_)
                                                                                                                     {
                                                                                                                        addr488:
                                                                                                                        if(_loc8_ || param2)
                                                                                                                        {
                                                                                                                           §§push(§§pop() > §8§.x);
                                                                                                                           while(!(_loc9_ && param2))
                                                                                                                           {
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 continue loop30;
                                                                                                                              }
                                                                                                                              addr376:
                                                                                                                              addr376:
                                                                                                                              addr550:
                                                                                                                              §§push(Number(§8§.x));
                                                                                                                              while(_loc8_)
                                                                                                                              {
                                                                                                                                 continue loop10;
                                                                                                                              }
                                                                                                                              if(!(_loc9_ && param2))
                                                                                                                              {
                                                                                                                                 _loc5_ = §§pop();
                                                                                                                                 §§push(_loc6_);
                                                                                                                                 if(_loc9_ && param2)
                                                                                                                                 {
                                                                                                                                    addr502:
                                                                                                                                    break loop12;
                                                                                                                                    addr502:
                                                                                                                                    addr484:
                                                                                                                                    addr503:
                                                                                                                                    addr511:
                                                                                                                                 }
                                                                                                                                 if(§§pop() > §^!k§.y)
                                                                                                                                 {
                                                                                                                                    break loop27;
                                                                                                                                 }
                                                                                                                                 §§push(Number(Number(§^!k§.y)));
                                                                                                                                 if(_loc9_ && _loc3_)
                                                                                                                                 {
                                                                                                                                    addr566:
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    if(!(_loc9_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       addr578:
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                       break loop17;
                                                                                                                                    }
                                                                                                                                    §§push(§§pop() < §^!k§.x);
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 _loc6_ = §§pop();
                                                                                                                                 _loc7_++;
                                                                                                                                 continue loop0;
                                                                                                                                 addr558:
                                                                                                                              }
                                                                                                                              §§goto(addr578);
                                                                                                                           }
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              addr588:
                                                                                                                              §§push(Number(_loc3_));
                                                                                                                              if(_loc8_)
                                                                                                                              {
                                                                                                                                 addr606:
                                                                                                                                 _loc3_ = Number(§§pop());
                                                                                                                                 break loop3;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr606);
                                                                                                                           §§push(Number(§^!k§.x));
                                                                                                                           addr344:
                                                                                                                        }
                                                                                                                        if(_loc8_)
                                                                                                                        {
                                                                                                                           if(_loc8_ || _loc3_)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                              break loop12;
                                                                                                                           }
                                                                                                                           §§goto(addr588);
                                                                                                                        }
                                                                                                                        addr549:
                                                                                                                        §§goto(addr550);
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc8_ || this)
                                                                                                                           {
                                                                                                                              addr402:
                                                                                                                              continue loop17;
                                                                                                                           }
                                                                                                                           addr536:
                                                                                                                           if(_loc8_)
                                                                                                                           {
                                                                                                                              if(!(_loc9_ && param1))
                                                                                                                              {
                                                                                                                                 §§goto(addr549);
                                                                                                                              }
                                                                                                                              §§goto(addr606);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr395:
                                                                                                                     }
                                                                                                                     §§goto(addr606);
                                                                                                                  }
                                                                                                               }
                                                                                                               _loc4_ = §§pop();
                                                                                                               addr580:
                                                                                                               §§push(_loc5_);
                                                                                                               if(_loc8_)
                                                                                                               {
                                                                                                                  addr564:
                                                                                                                  §§push(§§pop() < §^!k§.y);
                                                                                                                  if(!(_loc9_ && param2))
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        addr527:
                                                                                                                        if(!(_loc9_ && _loc3_))
                                                                                                                        {
                                                                                                                           §§push(_loc5_);
                                                                                                                           break loop21;
                                                                                                                        }
                                                                                                                        §§goto(addr580);
                                                                                                                     }
                                                                                                                     §§goto(addr549);
                                                                                                                     §§push(Number(§^!k§.y));
                                                                                                                  }
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     addr565:
                                                                                                                     §§goto(addr566);
                                                                                                                     §§push(_loc4_);
                                                                                                                  }
                                                                                                                  §§goto(addr578);
                                                                                                                  §§push(Number(§^!k§.x));
                                                                                                               }
                                                                                                               §§goto(addr564);
                                                                                                            }
                                                                                                            _loc5_ = §§pop();
                                                                                                            break loop6;
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr502);
                                                                                                   }
                                                                                                   loop15:
                                                                                                   for(; !_loc9_; while(true)
                                                                                                   {
                                                                                                      continue loop15;
                                                                                                      §§goto(addr427);
                                                                                                   })
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         addr427:
                                                                                                         while(_loc8_)
                                                                                                         {
                                                                                                            §§push(_loc3_);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc8_)
                                                                                                               {
                                                                                                                  §§goto(addr395);
                                                                                                                  §§push(Number(§§pop()));
                                                                                                               }
                                                                                                               §§goto(addr502);
                                                                                                            }
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc3_);
                                                                                                            continue loop15;
                                                                                                         }
                                                                                                         addr427:
                                                                                                         addr389:
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr406);
                                                                                                         §§push(Number(§8§.x));
                                                                                                      }
                                                                                                      §§goto(addr406);
                                                                                                   }
                                                                                                   §§goto(addr484);
                                                                                                }
                                                                                                §§goto(addr344);
                                                                                             }
                                                                                             addr485:
                                                                                             if(_loc8_)
                                                                                             {
                                                                                                §§goto(addr488);
                                                                                                §§push(_loc6_);
                                                                                             }
                                                                                             §§goto(addr558);
                                                                                             addr260:
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       §§goto(addr406);
                                                                                    }
                                                                                    §§goto(addr536);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr514);
                                                                     }
                                                                     addr365:
                                                                  }
                                                                  §§goto(addr503);
                                                               }
                                                               §§goto(addr376);
                                                            }
                                                            §§goto(addr389);
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         if(_loc8_)
                                                         {
                                                            if(!(_loc9_ && param1))
                                                            {
                                                               loop22:
                                                               while(true)
                                                               {
                                                                  §§push(_loc7_);
                                                                  if(!_loc9_)
                                                                  {
                                                                     §§push(4);
                                                                     if(!_loc8_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(§§pop() >= §§pop())
                                                                     {
                                                                        continue loop4;
                                                                     }
                                                                     §§push(this.§3!^§);
                                                                     if(!_loc9_)
                                                                     {
                                                                        §§push(_loc7_);
                                                                        if(_loc8_)
                                                                        {
                                                                           §§pop().§%!a§(§§pop(),§^!k§);
                                                                           addr440:
                                                                           if(_loc8_)
                                                                           {
                                                                              if(_loc8_ || param1)
                                                                              {
                                                                                 transformCoords(§1=§,§^!k§.x,§^!k§.y,§8§);
                                                                                 §§goto(addr427);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(_loc3_);
                                                                                 addr616:
                                                                              }
                                                                              §§goto(addr566);
                                                                           }
                                                                           §§goto(addr527);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr614:
                                                                           §§pop().§%!a§(§§pop(),§^!k§);
                                                                        }
                                                                        §§goto(addr616);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr613:
                                                                        §§push(_loc7_);
                                                                     }
                                                                     §§goto(addr614);
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(!_loc9_)
                                                                        {
                                                                           _loc7_ = §§pop();
                                                                           continue loop22;
                                                                        }
                                                                        continue loop1;
                                                                     }
                                                                     addr452:
                                                                  }
                                                               }
                                                               continue loop2;
                                                               addr135:
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr135);
                                                            }
                                                         }
                                                         §§goto(addr440);
                                                      }
                                                   }
                                                   §§goto(addr415);
                                                }
                                                break;
                                             }
                                             continue loop5;
                                          }
                                          while(true)
                                          {
                                             §§push(_loc6_);
                                             if(_loc8_ || param1)
                                             {
                                                if(!_loc9_)
                                                {
                                                   if(_loc8_)
                                                   {
                                                      §§push(§§pop() > §8§.y);
                                                      if(!_loc9_)
                                                      {
                                                         if(!_loc9_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               §§goto(addr197);
                                                            }
                                                            else
                                                            {
                                                               §§push(Number(§8§.y));
                                                               if(!(_loc9_ && param1))
                                                               {
                                                                  §§goto(addr230);
                                                               }
                                                            }
                                                            §§goto(addr233);
                                                         }
                                                         §§goto(addr564);
                                                      }
                                                      §§goto(addr260);
                                                   }
                                                   break;
                                                }
                                                §§goto(addr319);
                                             }
                                             §§goto(addr230);
                                             §§goto(addr326);
                                          }
                                          §§goto(addr566);
                                       }
                                       §§goto(addr511);
                                    }
                                    while(true)
                                    {
                                       if(_loc9_ && _loc3_)
                                       {
                                          continue loop3;
                                       }
                                       if(_loc8_ || this)
                                       {
                                          if(_loc8_)
                                          {
                                             §§push(_loc5_);
                                             if(!(_loc9_ && param1))
                                             {
                                                §§push(Number(§§pop()));
                                                if(!_loc9_)
                                                {
                                                   §§goto(addr318);
                                                }
                                                §§goto(addr316);
                                             }
                                             §§goto(addr319);
                                          }
                                          §§goto(addr565);
                                       }
                                       §§goto(addr485);
                                    }
                                 }
                              }
                              §§goto(addr561);
                              §§push(_loc4_);
                           }
                           else
                           {
                              §§push(this.§3!^§);
                           }
                           §§goto(addr613);
                        }
                     }
                  }
               }
               else
               {
                  §@P§(param1,§1=§);
               }
               §§goto(addr468);
            }
            §§goto(addr627);
         }
         §§goto(addr28);
      }
      
      public function §0U§(param1:int) : uint
      {
         return this.§3!^§.§<u§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§3!^§.§1!+§(param1,param2);
         }
      }
      
      public function §6!>§(param1:int) : Number
      {
         return this.§3!^§.§0j§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            this.§3!^§.§]q§(param1,param2);
         }
      }
      
      public function get color() : uint
      {
         return this.§'!k§;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            if(this.§'!k§ != param1)
            {
               do
               {
                  this.§'!k§ = param1;
                  do
                  {
                     this.§3!^§.§%-§(param1,1);
                  }
                  while(_loc3_ && this);
                  
               }
               while(!_loc2_);
               
               addr68:
            }
            return;
         }
         §§goto(addr68);
      }
      
      public function copyVertexDataTo(param1:§,!J§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            this.§3!^§.copyTo(param1,param2,param3,true,param4);
         }
      }
      
      override public function render(param1:§<!I§, param2:Number) : void
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
      
      public function get §5O§() : Number
      {
         return this.§-!K§;
      }
      
      public function get §@k§() : Number
      {
         return this.§8!x§;
      }
   }
}
