package §>!Z§
{
   import §&H§.*;
   import §@!3§.*;
   
   use namespace b2internal;
   
   public class b2WorldManifold
   {
       
      
      public var §6!P§:b2Vec2;
      
      public var § !C§:Vector.<b2Vec2>;
      
      public function b2WorldManifold()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§6!P§ = new b2Vec2();
            while(true)
            {
               loop1:
               while(true)
               {
                  super();
                  do
                  {
                     this.§ !C§ = new Vector.<b2Vec2>(b2Settings.b2_maxManifoldPoints);
                  }
                  while(!_loc2_);
                  
                  if(_loc2_ || _loc2_)
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
                           if(_loc3_)
                           {
                              continue;
                           }
                           if(!(_loc3_ && _loc1_))
                           {
                              break;
                           }
                        }
                        else
                        {
                           this.§ !C§[_loc1_] = new b2Vec2();
                        }
                        _loc1_++;
                     }
                     return;
                     addr52:
                  }
                  break;
               }
            }
         }
         §§goto(addr52);
      }
      
      public function §`!D§(param1:b2Manifold, param2:b2Transform, param3:Number, param4:b2Transform, param5:Number) : void
      {
         var _loc28_:Boolean = false;
         var _loc29_:Boolean = true;
         var _loc6_:int = 0;
         var _loc7_:b2Vec2 = null;
         var _loc8_:b2Mat22 = null;
         var _loc9_:* = NaN;
         var _loc10_:Number = NaN;
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
         if(!_loc28_)
         {
            if(param1.§&!h§ == 0)
            {
               if(_loc29_)
               {
                  return;
               }
            }
         }
         §§push(param1.§3r§);
         if(!_loc28_)
         {
            var _loc27_:* = §§pop();
            if(_loc29_)
            {
               §§push(b2Manifold.§+!,§);
               if(!_loc28_)
               {
                  §§push(_loc27_);
                  if(!(_loc28_ && param1))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc29_)
                        {
                           addr1947:
                           §§push(0);
                           if(_loc29_ || param2)
                           {
                           }
                        }
                        else
                        {
                           addr1971:
                           §§push(1);
                           if(!(_loc28_ && param1))
                           {
                              addr1989:
                           }
                           else
                           {
                              addr2004:
                           }
                        }
                        addr2009:
                        switch(§§pop())
                        {
                           case 0:
                              _loc8_ = param2.R;
                              _loc7_ = param1.m_localPoint;
                              if(!(_loc28_ && this))
                              {
                                 §§push(param2.position);
                                 if(!(_loc28_ && param1))
                                 {
                                    §§push(§§pop().x);
                                    if(_loc29_)
                                    {
                                       §§push(_loc8_.col1);
                                       if(_loc29_)
                                       {
                                          §§push(§§pop().x);
                                          if(!_loc28_)
                                          {
                                             §§push(_loc7_.x);
                                             if(_loc29_ || param2)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!(_loc28_ && this))
                                                {
                                                   addr123:
                                                   §§push(§§pop() + §§pop());
                                                   if(!(_loc28_ && param1))
                                                   {
                                                      §§push(_loc8_.col2);
                                                      if(!_loc28_)
                                                      {
                                                         §§push(§§pop().x);
                                                         if(!(_loc28_ && param1))
                                                         {
                                                            §§push(_loc7_.y);
                                                            if(!(_loc28_ && param3))
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc29_ || param2)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc29_)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     if(_loc29_ || param3)
                                                                     {
                                                                        addr171:
                                                                        _loc15_ = §§pop();
                                                                        if(_loc29_ || param2)
                                                                        {
                                                                           addr181:
                                                                           §§push(param2.position.y);
                                                                           if(!_loc28_)
                                                                           {
                                                                              addr186:
                                                                              §§push(_loc8_.col1.y);
                                                                              if(!(_loc28_ && param2))
                                                                              {
                                                                                 addr194:
                                                                                 §§push(_loc7_.x);
                                                                                 if(!_loc28_)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(_loc29_)
                                                                                    {
                                                                                       addr201:
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(_loc29_ || param2)
                                                                                       {
                                                                                          addr209:
                                                                                          §§push(_loc8_.col2.y);
                                                                                          if(_loc29_ || this)
                                                                                          {
                                                                                             addr222:
                                                                                             §§push(§§pop() + §§pop() * _loc7_.y);
                                                                                             if(!(_loc28_ && param2))
                                                                                             {
                                                                                                addr230:
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr222);
                                                                                       }
                                                                                       §§goto(addr230);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr222);
                                                                           }
                                                                           _loc16_ = §§pop();
                                                                           addr232:
                                                                           _loc8_ = param4.R;
                                                                           _loc7_ = param1.§ !C§[0].m_localPoint;
                                                                           if(!(_loc28_ && param2))
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
                                                                           §§goto(addr645);
                                                                        }
                                                                        §§goto(addr232);
                                                                     }
                                                                     §§goto(addr230);
                                                                  }
                                                                  §§goto(addr209);
                                                               }
                                                               §§goto(addr201);
                                                            }
                                                            §§goto(addr222);
                                                         }
                                                         §§goto(addr194);
                                                      }
                                                      §§goto(addr209);
                                                   }
                                                   §§goto(addr171);
                                                }
                                             }
                                             §§goto(addr222);
                                          }
                                          §§goto(addr123);
                                       }
                                       §§goto(addr186);
                                    }
                                    §§goto(addr171);
                                 }
                              }
                              §§goto(addr181);
                           case 1:
                              _loc8_ = param2.R;
                              _loc7_ = param1.§1!§;
                              if(_loc29_)
                              {
                                 §§push(_loc8_.col1);
                                 if(!(_loc28_ && param2))
                                 {
                                    §§push(§§pop().x);
                                    if(!(_loc28_ && this))
                                    {
                                       §§push(_loc7_.x);
                                       if(!_loc28_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc29_ || param3)
                                          {
                                             §§push(_loc8_.col2);
                                             if(!(_loc28_ && param3))
                                             {
                                                §§push(§§pop().x);
                                                if(!(_loc28_ && param3))
                                                {
                                                   addr881:
                                                   §§push(_loc7_.y);
                                                   if(!(_loc28_ && param1))
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!(_loc28_ && param3))
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(!(_loc28_ && param1))
                                                         {
                                                            addr906:
                                                            §§push(Number(§§pop()));
                                                            if(_loc29_ || param3)
                                                            {
                                                               _loc9_ = §§pop();
                                                               if(!(_loc28_ && param1))
                                                               {
                                                                  addr924:
                                                                  addr922:
                                                                  §§push(_loc8_.col1.y);
                                                                  if(_loc29_ || param1)
                                                                  {
                                                                     addr932:
                                                                     §§push(_loc7_.x);
                                                                     if(!_loc28_)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc28_ && param1)
                                                                        {
                                                                        }
                                                                        addr956:
                                                                        _loc10_ = §§pop();
                                                                        _loc8_ = param2.R;
                                                                        _loc7_ = param1.m_localPoint;
                                                                        if(!_loc28_)
                                                                        {
                                                                           §§push(param2.position);
                                                                           loop79:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().x);
                                                                              if(_loc29_)
                                                                              {
                                                                                 §§push(_loc8_.col1);
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().x);
                                                                                    addr1141:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc7_.x);
                                                                                       addr1143:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(_loc29_)
                                                                                          {
                                                                                             addr1147:
                                                                                             §§push(§§pop() + §§pop());
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc8_.col2);
                                                                                                addr1149:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop().x);
                                                                                                   addr1150:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc7_.y);
                                                                                                      addr1152:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr1147:
                                                                                          }
                                                                                          addr1153:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() + §§pop());
                                                                                             addr1154:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                addr1155:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc11_ = §§pop();
                                                                                                   continue loop79;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr1140:
                                                                              }
                                                                              §§goto(addr1147);
                                                                           }
                                                                           addr1135:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(param2.position);
                                                                           if(!(_loc28_ && param2))
                                                                           {
                                                                              §§push(§§pop().y);
                                                                              if(_loc29_ || param2)
                                                                              {
                                                                                 §§push(_loc8_.col1);
                                                                                 if(!_loc28_)
                                                                                 {
                                                                                    §§push(§§pop().y);
                                                                                    if(_loc29_)
                                                                                    {
                                                                                       if(_loc29_)
                                                                                       {
                                                                                          if(!(_loc28_ && param3))
                                                                                          {
                                                                                             §§push(_loc7_.x);
                                                                                             if(!(_loc28_ && param1))
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(!(_loc28_ && param2))
                                                                                                {
                                                                                                   addr1077:
                                                                                                   if(!_loc28_)
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(!(_loc28_ && param3))
                                                                                                      {
                                                                                                         addr1087:
                                                                                                         §§push(_loc8_.col2);
                                                                                                         if(!(_loc28_ && param3))
                                                                                                         {
                                                                                                            §§push(§§pop().y);
                                                                                                            if(!_loc28_)
                                                                                                            {
                                                                                                               addr1099:
                                                                                                               §§push(_loc7_.y);
                                                                                                               if(!_loc28_)
                                                                                                               {
                                                                                                                  if(_loc29_ || param3)
                                                                                                                  {
                                                                                                                     addr1111:
                                                                                                                     §§push(§§pop() + §§pop() * §§pop());
                                                                                                                     if(_loc29_)
                                                                                                                     {
                                                                                                                        addr1114:
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                     }
                                                                                                                     if(!(_loc28_ && param1))
                                                                                                                     {
                                                                                                                        if(_loc29_)
                                                                                                                        {
                                                                                                                           if(!(_loc28_ && param1))
                                                                                                                           {
                                                                                                                              _loc12_ = §§pop();
                                                                                                                              loop91:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(this.§6!P§);
                                                                                                                                 addr1016:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc9_);
                                                                                                                                    addr1017:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§pop().x = §§pop();
                                                                                                                                       continue loop91;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr1147);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr1154);
                                                                                                                     }
                                                                                                                     §§goto(addr1155);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr1143);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr1152);
                                                                                                            }
                                                                                                            §§goto(addr1111);
                                                                                                         }
                                                                                                         §§goto(addr1149);
                                                                                                      }
                                                                                                      §§goto(addr1114);
                                                                                                   }
                                                                                                   §§goto(addr1153);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr1099);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr1141);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr1150);
                                                                                    }
                                                                                    §§goto(addr1077);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr1140);
                                                                                 }
                                                                              }
                                                                              §§goto(addr1087);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr1135);
                                                                           }
                                                                        }
                                                                        addr955:
                                                                     }
                                                                     addr952:
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!_loc28_)
                                                                     {
                                                                        §§goto(addr955);
                                                                     }
                                                                     §§goto(addr956);
                                                                  }
                                                                  addr946:
                                                                  §§push(_loc8_.col2.y);
                                                                  if(_loc29_)
                                                                  {
                                                                     addr951:
                                                                     §§goto(addr952);
                                                                     §§push(§§pop() * _loc7_.y);
                                                                  }
                                                                  §§goto(addr952);
                                                               }
                                                            }
                                                            §§goto(addr956);
                                                         }
                                                      }
                                                      §§goto(addr932);
                                                   }
                                                }
                                                §§goto(addr951);
                                             }
                                             §§goto(addr946);
                                          }
                                          §§goto(addr906);
                                       }
                                       §§goto(addr881);
                                    }
                                    §§goto(addr956);
                                 }
                                 §§goto(addr924);
                              }
                              §§goto(addr922);
                           case 2:
                              §§goto(addr1382);
                        }
                        param4.R;
                        return;
                        addr2009:
                     }
                     else
                     {
                        §§push(b2Manifold.§-!-§);
                        if(!(_loc28_ && this))
                        {
                           addr1965:
                           §§push(_loc27_);
                           if(!_loc28_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc29_)
                                 {
                                    §§goto(addr1971);
                                 }
                                 else
                                 {
                                    addr2001:
                                    §§push(2);
                                    if(_loc29_)
                                    {
                                       §§goto(addr2004);
                                    }
                                 }
                                 §§goto(addr2009);
                              }
                              else
                              {
                                 §§push(b2Manifold.§3!J§);
                                 if(!(_loc28_ && this))
                                 {
                                    addr2000:
                                    if(§§pop() === _loc27_)
                                    {
                                       §§goto(addr2001);
                                    }
                                    else
                                    {
                                       §§push(3);
                                    }
                                    §§goto(addr2009);
                                 }
                              }
                              §§goto(addr2004);
                           }
                           §§goto(addr2000);
                        }
                     }
                     §§goto(addr1989);
                  }
                  §§goto(addr2000);
               }
               §§goto(addr1965);
            }
            §§goto(addr1947);
         }
         §§goto(addr2009);
      }
   }
}
