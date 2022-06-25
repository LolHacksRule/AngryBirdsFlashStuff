package §8w§
{
   import §3!m§.*;
   import §;%§.*;
   
   use namespace b2internal;
   
   public class b2WorldManifold
   {
       
      
      public var §-n§:b2Vec2;
      
      public var §4!a§:Vector.<b2Vec2>;
      
      public function b2WorldManifold()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§-n§ = new b2Vec2();
            while(true)
            {
               loop1:
               while(true)
               {
                  super();
                  do
                  {
                     this.§4!a§ = new Vector.<b2Vec2>(b2Settings.b2_maxManifoldPoints);
                  }
                  while(!_loc2_);
                  
                  if(_loc2_)
                  {
                     while(false)
                     {
                        continue loop1;
                     }
                     var _loc1_:int = 0;
                     while(true)
                     {
                        if(_loc1_ >= b2Settings.b2_maxManifoldPoints)
                        {
                           if(!(_loc3_ && _loc3_))
                           {
                              break;
                           }
                        }
                        else
                        {
                           this.§4!a§[_loc1_] = new b2Vec2();
                           while(true)
                           {
                              _loc1_++;
                           }
                           addr94:
                        }
                        while(_loc3_)
                        {
                           §§goto(addr94);
                        }
                     }
                     return;
                     addr42:
                  }
                  break;
               }
            }
         }
         §§goto(addr42);
      }
      
      public function §'K§(param1:b2Manifold, param2:b2Transform, param3:Number, param4:b2Transform, param5:Number) : void
      {
         var _loc28_:Boolean = true;
         var _loc29_:Boolean = false;
         var _loc6_:int = 0;
         var _loc7_:b2Vec2 = null;
         var _loc8_:b2Mat22 = null;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         var _loc17_:* = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         if(_loc28_ || param3)
         {
            if(param1.§2V§ == 0)
            {
               if(!(_loc29_ && param2))
               {
                  §§goto(addr78);
               }
            }
            §§push(param1.§"_§);
            if(!(_loc29_ && this))
            {
               var _loc27_:* = §§pop();
               if(_loc28_ || this)
               {
                  §§push(b2Manifold.§6!C§);
                  if(!(_loc29_ && param3))
                  {
                     §§push(_loc27_);
                     if(_loc28_ || param1)
                     {
                        if(§§pop() === §§pop())
                        {
                           if(!_loc29_)
                           {
                              addr2016:
                              §§push(0);
                              if(!(_loc29_ && param3))
                              {
                                 addr2078:
                                 switch(§§pop())
                                 {
                                    case 0:
                                       _loc8_ = param2.R;
                                       _loc7_ = param1.m_localPoint;
                                       if(_loc28_ || param3)
                                       {
                                          §§push(param2.position);
                                          if(_loc28_)
                                          {
                                             §§push(§§pop().x);
                                             if(_loc28_)
                                             {
                                                §§push(_loc8_.col1);
                                                if(!_loc29_)
                                                {
                                                   §§push(§§pop().x);
                                                   if(_loc28_ || param3)
                                                   {
                                                      §§push(_loc7_.x);
                                                      if(!(_loc29_ && param1))
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc28_ || this)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc28_ || param1)
                                                            {
                                                               §§push(_loc8_.col2);
                                                               if(!_loc29_)
                                                               {
                                                                  §§push(§§pop().x);
                                                                  if(!(_loc29_ && param3))
                                                                  {
                                                                     addr152:
                                                                     §§push(_loc7_.y);
                                                                     if(_loc28_ || this)
                                                                     {
                                                                        addr161:
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc28_)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           if(!_loc29_)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              if(!_loc29_)
                                                                              {
                                                                                 _loc15_ = §§pop();
                                                                                 if(!_loc29_)
                                                                                 {
                                                                                    addr175:
                                                                                    addr173:
                                                                                    §§push(param2.position.y);
                                                                                    if(!(_loc29_ && this))
                                                                                    {
                                                                                       addr183:
                                                                                       §§push(_loc8_.col1.y);
                                                                                       if(_loc28_)
                                                                                       {
                                                                                          addr188:
                                                                                          §§push(_loc7_.x);
                                                                                          if(_loc28_)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(!(_loc29_ && param3))
                                                                                             {
                                                                                                §§push(§§pop() + §§pop());
                                                                                                if(!(_loc29_ && param1))
                                                                                                {
                                                                                                   addr210:
                                                                                                   §§push(_loc8_.col2.y);
                                                                                                   if(_loc28_ || param1)
                                                                                                   {
                                                                                                      addr221:
                                                                                                      addr220:
                                                                                                      §§push(§§pop() + §§pop() * _loc7_.y);
                                                                                                      if(_loc29_)
                                                                                                      {
                                                                                                      }
                                                                                                      addr225:
                                                                                                      _loc16_ = §§pop();
                                                                                                      _loc8_ = param4.R;
                                                                                                      _loc7_ = param1.§4!a§[0].m_localPoint;
                                                                                                      if(_loc28_)
                                                                                                      {
                                                                                                         §§push(param4.position);
                                                                                                         loop0:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop().x);
                                                                                                            addr830:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc8_.col1);
                                                                                                               addr832:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop().x);
                                                                                                                  addr833:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc7_.x);
                                                                                                                     addr835:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        addr836:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           addr837:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc8_.col2);
                                                                                                                              addr839:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().x);
                                                                                                                                 addr840:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc7_.y);
                                                                                                                                    addr842:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       addr843:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          addr844:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                             addr845:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                _loc17_ = §§pop();
                                                                                                                                                continue loop0;
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
                                                                                                      }
                                                                                                      §§goto(addr741);
                                                                                                   }
                                                                                                   §§goto(addr221);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr221);
                                                                                          }
                                                                                          §§goto(addr220);
                                                                                       }
                                                                                       §§goto(addr221);
                                                                                    }
                                                                                    §§goto(addr225);
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                              }
                                                                              §§goto(addr221);
                                                                           }
                                                                           §§goto(addr183);
                                                                        }
                                                                        §§goto(addr188);
                                                                     }
                                                                  }
                                                                  §§goto(addr221);
                                                               }
                                                            }
                                                            §§goto(addr210);
                                                         }
                                                         §§goto(addr152);
                                                      }
                                                      §§goto(addr161);
                                                   }
                                                   §§goto(addr152);
                                                }
                                                §§goto(addr183);
                                             }
                                             §§goto(addr221);
                                          }
                                          §§goto(addr175);
                                       }
                                       §§goto(addr173);
                                    case 1:
                                       _loc8_ = param2.R;
                                       _loc7_ = param1.§6O§;
                                       if(_loc28_)
                                       {
                                          §§push(_loc8_.col1);
                                          if(_loc28_ || param1)
                                          {
                                             §§push(§§pop().x);
                                             if(_loc28_)
                                             {
                                                §§push(_loc7_.x);
                                                if(!(_loc29_ && param3))
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc28_ || this)
                                                   {
                                                      §§push(_loc8_.col2);
                                                      if(_loc28_ || param1)
                                                      {
                                                         §§push(§§pop().x);
                                                         if(!(_loc29_ && param1))
                                                         {
                                                            addr905:
                                                            §§push(_loc7_.y);
                                                            if(_loc28_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(!(_loc29_ && param1))
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!(_loc29_ && param3))
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     if(_loc28_)
                                                                     {
                                                                        _loc9_ = §§pop();
                                                                        if(_loc28_ || param1)
                                                                        {
                                                                           addr938:
                                                                           §§push(_loc8_.col1.y);
                                                                           if(_loc28_ || this)
                                                                           {
                                                                              addr946:
                                                                              §§push(_loc7_.x);
                                                                              if(!(_loc29_ && param1))
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(!(_loc29_ && param1))
                                                                                 {
                                                                                    addr963:
                                                                                    §§push(_loc8_.col2.y);
                                                                                    if(!_loc29_)
                                                                                    {
                                                                                       addr971:
                                                                                       §§push(§§pop() + §§pop() * _loc7_.y);
                                                                                       if(_loc28_)
                                                                                       {
                                                                                          addr974:
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr971);
                                                                                 }
                                                                                 _loc10_ = §§pop();
                                                                                 addr976:
                                                                                 _loc8_ = param2.R;
                                                                                 _loc7_ = param1.m_localPoint;
                                                                                 if(_loc28_)
                                                                                 {
                                                                                    §§push(param2.position);
                                                                                    loop83:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().x);
                                                                                       if(_loc28_)
                                                                                       {
                                                                                          §§push(_loc8_.col1);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop().x);
                                                                                             addr1156:
                                                                                             addr1063:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc7_.x);
                                                                                                if(_loc28_ || this)
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   loop86:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(_loc28_ || this)
                                                                                                      {
                                                                                                         §§push(_loc8_.col2);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop().x);
                                                                                                            addr1177:
                                                                                                            addr1109:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc7_.y);
                                                                                                            }
                                                                                                            §§push(_loc8_.col2);
                                                                                                            if(_loc29_ && param1)
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                            §§push(§§pop().y);
                                                                                                            if(!_loc29_)
                                                                                                            {
                                                                                                               addr1121:
                                                                                                               if(!(_loc29_ && param2))
                                                                                                               {
                                                                                                                  if(!_loc28_)
                                                                                                                  {
                                                                                                                     continue loop86;
                                                                                                                  }
                                                                                                                  §§push(_loc7_.y);
                                                                                                                  if(!_loc29_)
                                                                                                                  {
                                                                                                                     addr1135:
                                                                                                                     §§push(§§pop() + §§pop() * §§pop());
                                                                                                                     if(_loc28_ || param1)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                     }
                                                                                                                     if(!_loc29_)
                                                                                                                     {
                                                                                                                        _loc12_ = §§pop();
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(this.§-n§);
                                                                                                                           loop94:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc9_);
                                                                                                                              addr1048:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§pop().x = §§pop();
                                                                                                                                 addr1049:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    continue loop94;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr1147:
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr1179:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        addr1180:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(_loc28_ || param1)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr1179:
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc11_ = §§pop();
                                                                                                                     continue loop83;
                                                                                                                  }
                                                                                                                  addr1189:
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr1177);
                                                                                                               }
                                                                                                               §§goto(addr1179);
                                                                                                            }
                                                                                                            §§goto(addr1135);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr1189);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr1179);
                                                                                             }
                                                                                             §§push(_loc8_.col1);
                                                                                             if(!(_loc28_ || param2))
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             §§push(§§pop().y);
                                                                                             if(!_loc29_)
                                                                                             {
                                                                                                if(_loc28_ || this)
                                                                                                {
                                                                                                   if(!(_loc29_ && param2))
                                                                                                   {
                                                                                                      §§push(_loc7_.x);
                                                                                                      if(_loc28_ || param2)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(_loc28_ || this)
                                                                                                         {
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(!_loc29_)
                                                                                                            {
                                                                                                               §§goto(addr1109);
                                                                                                            }
                                                                                                            §§goto(addr1135);
                                                                                                         }
                                                                                                         §§goto(addr1121);
                                                                                                      }
                                                                                                      §§goto(addr1132);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr1156);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr1180);
                                                                                             }
                                                                                             §§goto(addr1135);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr1132);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr1147);
                                                                              }
                                                                              §§goto(addr971);
                                                                           }
                                                                           §§goto(addr974);
                                                                        }
                                                                        §§goto(addr976);
                                                                     }
                                                                     §§goto(addr963);
                                                                  }
                                                                  §§goto(addr974);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr971);
                                                      }
                                                      §§goto(addr963);
                                                   }
                                                   §§goto(addr946);
                                                }
                                                §§goto(addr905);
                                             }
                                             §§goto(addr946);
                                          }
                                          §§goto(addr938);
                                       }
                                       §§goto(addr976);
                                    case 2:
                                       §§goto(addr1406);
                                 }
                                 param4.R;
                                 return;
                                 addr2078:
                              }
                           }
                           else
                           {
                              addr2040:
                              §§push(1);
                              if(!_loc28_)
                              {
                              }
                           }
                           §§goto(addr2078);
                        }
                        else
                        {
                           §§push(b2Manifold.§>!r§);
                           if(_loc28_ || param1)
                           {
                              §§push(_loc27_);
                              if(_loc28_)
                              {
                                 addr2037:
                                 if(§§pop() === §§pop())
                                 {
                                    if(_loc28_)
                                    {
                                       §§goto(addr2040);
                                    }
                                    addr2065:
                                    §§push(2);
                                    if(_loc29_ && param1)
                                    {
                                    }
                                    §§goto(addr2078);
                                 }
                                 else
                                 {
                                    §§push(b2Manifold.§9!D§);
                                    if(_loc28_ || param1)
                                    {
                                       addr2064:
                                       if(§§pop() === _loc27_)
                                       {
                                          §§goto(addr2065);
                                       }
                                       else
                                       {
                                          §§goto(addr2078);
                                          §§push(3);
                                       }
                                       §§goto(addr2078);
                                    }
                                 }
                                 §§goto(addr2078);
                              }
                              §§goto(addr2064);
                           }
                        }
                        §§goto(addr2064);
                     }
                     §§goto(addr2037);
                  }
                  §§goto(addr2078);
               }
               §§goto(addr2016);
            }
            §§goto(addr2078);
         }
         addr78:
      }
   }
}
