package §!4§
{
   import §6A§.*;
   import §^P§.*;
   
   use namespace b2internal;
   
   public class b2WorldManifold
   {
       
      
      public var §4e§:b2Vec2;
      
      public var §7! §:Vector.<b2Vec2>;
      
      public function b2WorldManifold()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc1_)
         {
            this.§4e§ = new b2Vec2();
            while(true)
            {
               loop1:
               while(true)
               {
                  super();
                  do
                  {
                     this.§7! § = new Vector.<b2Vec2>(b2Settings.b2_maxManifoldPoints);
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
                           if(_loc2_)
                           {
                              break;
                           }
                        }
                        else
                        {
                           this.§7! §[_loc1_] = new b2Vec2();
                           while(true)
                           {
                              _loc1_++;
                           }
                           addr94:
                        }
                        while(!_loc2_)
                        {
                           §§goto(addr94);
                        }
                     }
                     return;
                     addr47:
                  }
                  break;
               }
            }
         }
         §§goto(addr47);
      }
      
      public function §';§(param1:b2Manifold, param2:b2Transform, param3:Number, param4:b2Transform, param5:Number) : void
      {
         var _loc28_:Boolean = false;
         var _loc29_:Boolean = true;
         var _loc6_:int = 0;
         var _loc7_:b2Vec2 = null;
         var _loc8_:b2Mat22 = null;
         var _loc9_:* = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:* = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:* = NaN;
         var _loc16_:Number = NaN;
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
         if(_loc29_)
         {
            if(param1.§;6§ == 0)
            {
               if(_loc29_)
               {
                  return;
               }
            }
         }
         §§push(param1.§2!]§);
         if(!(_loc28_ && param1))
         {
            var _loc27_:* = §§pop();
            if(_loc29_)
            {
               §§push(b2Manifold.§;N§);
               if(!_loc28_)
               {
                  §§push(_loc27_);
                  if(_loc29_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc28_)
                        {
                           §§push(0);
                           if(_loc28_ && this)
                           {
                              addr2029:
                              if(§§pop() === _loc27_)
                              {
                                 addr2031:
                                 §§push(2);
                                 if(_loc29_)
                                 {
                                    addr2044:
                                 }
                              }
                              else
                              {
                                 §§push(3);
                              }
                           }
                           addr2049:
                           switch(§§pop())
                           {
                              case 0:
                                 _loc8_ = param2.R;
                                 _loc7_ = param1.m_localPoint;
                                 if(!_loc28_)
                                 {
                                    §§push(param2.position);
                                    if(!(_loc28_ && this))
                                    {
                                       §§push(§§pop().x);
                                       if(_loc29_ || param1)
                                       {
                                          §§push(_loc8_.col1);
                                          if(!(_loc28_ && param2))
                                          {
                                             §§push(§§pop().x);
                                             if(!_loc28_)
                                             {
                                                §§push(_loc7_.x);
                                                if(_loc29_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc29_ || param3)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(!(_loc28_ && this))
                                                      {
                                                         addr131:
                                                         §§push(_loc8_.col2);
                                                         if(_loc29_ || param2)
                                                         {
                                                            §§push(§§pop().x);
                                                            if(!_loc28_)
                                                            {
                                                               addr143:
                                                               §§push(_loc7_.y);
                                                               if(_loc29_ || param3)
                                                               {
                                                                  addr152:
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc29_ || param2)
                                                                  {
                                                                     addr160:
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!(_loc28_ && param1))
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        if(!(_loc28_ && param1))
                                                                        {
                                                                           _loc15_ = §§pop();
                                                                           if(_loc29_)
                                                                           {
                                                                              addr181:
                                                                              §§push(param2.position.y);
                                                                              if(_loc29_ || param2)
                                                                              {
                                                                                 addr191:
                                                                                 §§push(_loc8_.col1.y);
                                                                                 if(_loc29_)
                                                                                 {
                                                                                    §§push(_loc7_.x);
                                                                                    if(_loc29_)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(!_loc28_)
                                                                                       {
                                                                                          addr201:
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(_loc29_ || param2)
                                                                                          {
                                                                                             addr209:
                                                                                             addr211:
                                                                                             §§push(_loc8_.col2.y);
                                                                                             if(_loc29_ || this)
                                                                                             {
                                                                                             }
                                                                                             addr222:
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(_loc29_ || this)
                                                                                             {
                                                                                                addr231:
                                                                                                _loc16_ = §§pop();
                                                                                                _loc8_ = param4.R;
                                                                                                _loc7_ = param1.§7! §[0].m_localPoint;
                                                                                                if(_loc29_ || this)
                                                                                                {
                                                                                                   §§push(param4.position);
                                                                                                   loop0:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop().x);
                                                                                                      addr804:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc8_.col1);
                                                                                                         addr806:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop().x);
                                                                                                            addr807:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc7_.x);
                                                                                                               if(_loc29_)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     addr813:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc8_.col2);
                                                                                                                        addr815:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop().x);
                                                                                                                           addr816:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc7_.y);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr812:
                                                                                                               }
                                                                                                               addr818:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  addr819:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     addr820:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        addr821:
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
                                                                                                §§goto(addr530);
                                                                                                addr230:
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr231);
                                                                                       }
                                                                                    }
                                                                                    addr221:
                                                                                    §§goto(addr222);
                                                                                    §§push(§§pop() * §§pop());
                                                                                 }
                                                                                 §§goto(addr221);
                                                                                 §§push(_loc7_.y);
                                                                              }
                                                                              §§goto(addr230);
                                                                           }
                                                                           §§goto(addr231);
                                                                        }
                                                                        §§goto(addr209);
                                                                     }
                                                                     §§goto(addr231);
                                                                  }
                                                                  §§goto(addr201);
                                                               }
                                                               §§goto(addr221);
                                                            }
                                                            §§goto(addr209);
                                                         }
                                                         §§goto(addr211);
                                                      }
                                                      §§goto(addr231);
                                                   }
                                                   §§goto(addr143);
                                                }
                                                §§goto(addr152);
                                             }
                                             §§goto(addr160);
                                          }
                                          §§goto(addr191);
                                       }
                                       §§goto(addr131);
                                    }
                                 }
                                 §§goto(addr181);
                              case 1:
                                 _loc8_ = param2.R;
                                 _loc7_ = param1.§&h§;
                                 if(!(_loc28_ && param2))
                                 {
                                    §§push(_loc8_.col1);
                                    if(_loc29_ || param3)
                                    {
                                       §§push(§§pop().x);
                                       if(_loc29_ || param2)
                                       {
                                          §§push(_loc7_.x);
                                          if(_loc29_ || param2)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!(_loc28_ && this))
                                             {
                                                §§push(_loc8_.col2);
                                                if(!_loc28_)
                                                {
                                                   §§push(§§pop().x);
                                                   if(!_loc28_)
                                                   {
                                                      addr881:
                                                      §§push(_loc7_.y);
                                                      if(!(_loc28_ && this))
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc29_)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(!(_loc28_ && param1))
                                                            {
                                                               §§push(Number(§§pop()));
                                                               if(_loc29_ || this)
                                                               {
                                                                  _loc9_ = §§pop();
                                                                  if(_loc29_)
                                                                  {
                                                                     addr914:
                                                                     §§push(_loc8_.col1.y);
                                                                     if(_loc29_ || param3)
                                                                     {
                                                                        addr922:
                                                                        §§push(_loc7_.x);
                                                                        if(_loc29_ || param1)
                                                                        {
                                                                           addr945:
                                                                           addr946:
                                                                           addr931:
                                                                           §§push(§§pop() * §§pop());
                                                                           if(!_loc28_)
                                                                           {
                                                                              addr934:
                                                                              §§push(_loc8_.col2.y);
                                                                              if(!_loc28_)
                                                                              {
                                                                                 addr941:
                                                                                 §§push(§§pop() * _loc7_.y);
                                                                              }
                                                                           }
                                                                           _loc10_ = §§pop();
                                                                           _loc8_ = param2.R;
                                                                           _loc7_ = param1.m_localPoint;
                                                                           if(_loc29_)
                                                                           {
                                                                              §§push(param2.position);
                                                                              loop85:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().x);
                                                                                 addr1108:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc8_.col1);
                                                                                    addr1110:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().x);
                                                                                       addr1111:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc7_.x);
                                                                                          addr1113:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             addr1114:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() + §§pop());
                                                                                                if(!_loc28_)
                                                                                                {
                                                                                                   §§push(_loc8_.col2);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop().x);
                                                                                                      addr1120:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc7_.y);
                                                                                                         addr1122:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            addr1123:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   addr1119:
                                                                                                }
                                                                                                addr1124:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   addr1125:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc11_ = §§pop();
                                                                                                      continue loop85;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr996);
                                                                        }
                                                                        §§push(§§pop() + §§pop());
                                                                        if(_loc29_)
                                                                        {
                                                                           §§goto(addr945);
                                                                        }
                                                                        §§goto(addr946);
                                                                     }
                                                                     §§goto(addr934);
                                                                  }
                                                                  §§goto(addr945);
                                                               }
                                                               §§goto(addr922);
                                                            }
                                                            §§goto(addr945);
                                                         }
                                                         §§goto(addr931);
                                                      }
                                                      §§goto(addr941);
                                                   }
                                                   §§goto(addr945);
                                                }
                                             }
                                             §§goto(addr934);
                                          }
                                          §§goto(addr881);
                                       }
                                       §§goto(addr934);
                                    }
                                 }
                                 §§goto(addr914);
                              case 2:
                                 §§goto(addr1387);
                           }
                           param4.R;
                           return;
                           addr2049:
                        }
                        else
                        {
                           addr2011:
                           §§push(1);
                           if(!(_loc29_ || param2))
                           {
                              §§goto(addr2029);
                           }
                           §§goto(addr2049);
                        }
                        §§goto(addr2029);
                     }
                     else
                     {
                        §§push(b2Manifold.§%!"§);
                        if(_loc29_)
                        {
                           §§push(_loc27_);
                           if(!(_loc28_ && param3))
                           {
                              addr2003:
                              if(§§pop() === §§pop())
                              {
                                 if(_loc29_ || param2)
                                 {
                                    §§goto(addr2011);
                                 }
                                 §§goto(addr2031);
                              }
                              else
                              {
                                 §§push(b2Manifold.§9!M§);
                                 if(_loc29_ || param2)
                                 {
                                    §§goto(addr2029);
                                 }
                              }
                              §§goto(addr2049);
                           }
                           §§goto(addr2029);
                        }
                     }
                     §§goto(addr2044);
                  }
                  §§goto(addr2003);
               }
               §§goto(addr2029);
            }
            §§goto(addr2031);
         }
         §§goto(addr2049);
      }
   }
}
