package §'"-§
{
   import §,"[§.*;
   import §6!^§.*;
   
   use namespace b2internal;
   
   public class b2WorldManifold
   {
       
      
      public var §0"#§:b2Vec2;
      
      public var §4!_§:Vector.<b2Vec2>;
      
      public function b2WorldManifold()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§0"#§ = new b2Vec2();
            loop0:
            while(true)
            {
               addr53:
               while(true)
               {
                  super();
                  while(true)
                  {
                     if(_loc3_)
                     {
                        this.§4!_§ = new Vector.<b2Vec2>(b2Settings.b2_maxManifoldPoints);
                        if(_loc3_ || _loc2_)
                        {
                           break;
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(false)
         {
            §§goto(addr53);
         }
         var _loc1_:int = 0;
         while(true)
         {
            if(_loc1_ >= b2Settings.b2_maxManifoldPoints)
            {
               if(_loc3_)
               {
                  break;
               }
               loop5:
               while(!(_loc3_ || _loc1_))
               {
                  while(true)
                  {
                     _loc1_++;
                     continue loop5;
                  }
               }
               continue;
            }
            this.§4!_§[_loc1_] = new b2Vec2();
            §§goto(addr105);
         }
      }
      
      public function §6!Q§(param1:b2Manifold, param2:b2Transform, param3:Number, param4:b2Transform, param5:Number) : void
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
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:* = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         if(!_loc29_)
         {
            if(param1.§0,§ == 0)
            {
               if(_loc28_)
               {
                  §§goto(addr68);
               }
            }
            §§push(param1.§<"@§);
            if(!(_loc29_ && param3))
            {
               var _loc27_:* = §§pop();
               if(_loc28_ || this)
               {
                  §§push(b2Manifold.§>E§);
                  if(!_loc29_)
                  {
                     §§push(_loc27_);
                     if(_loc28_)
                     {
                        if(§§pop() === §§pop())
                        {
                           if(!(_loc29_ && param1))
                           {
                              addr2006:
                              §§push(0);
                              if(!(_loc29_ && param2))
                              {
                                 addr2073:
                                 switch(§§pop())
                                 {
                                    case 0:
                                       _loc8_ = param2.R;
                                       _loc7_ = param1.m_localPoint;
                                       if(_loc28_ || param1)
                                       {
                                          §§push(param2.position);
                                          if(!(_loc29_ && param3))
                                          {
                                             §§push(§§pop().x);
                                             if(_loc28_)
                                             {
                                                §§push(_loc8_.col1);
                                                if(!(_loc29_ && this))
                                                {
                                                   §§push(§§pop().x);
                                                   if(!_loc29_)
                                                   {
                                                      §§push(_loc7_.x);
                                                      if(!_loc29_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(!_loc29_)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(!(_loc29_ && this))
                                                            {
                                                               addr125:
                                                               §§push(_loc8_.col2);
                                                               if(!_loc29_)
                                                               {
                                                                  §§push(§§pop().x);
                                                                  if(!_loc29_)
                                                                  {
                                                                     §§push(_loc7_.y);
                                                                     if(!(_loc29_ && this))
                                                                     {
                                                                        addr141:
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!_loc29_)
                                                                        {
                                                                           addr144:
                                                                           §§push(§§pop() + §§pop());
                                                                           if(!(_loc29_ && param3))
                                                                           {
                                                                              addr152:
                                                                              §§push(Number(§§pop()));
                                                                              if(_loc28_ || param3)
                                                                              {
                                                                                 _loc15_ = §§pop();
                                                                                 if(_loc28_)
                                                                                 {
                                                                                    addr165:
                                                                                    §§push(param2.position.y);
                                                                                    if(_loc28_ || this)
                                                                                    {
                                                                                       addr173:
                                                                                       §§push(_loc8_.col1.y);
                                                                                       if(_loc28_)
                                                                                       {
                                                                                          §§push(_loc7_.x);
                                                                                          if(_loc28_)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(!_loc29_)
                                                                                             {
                                                                                                addr185:
                                                                                                §§push(§§pop() + §§pop());
                                                                                                if(!(_loc29_ && param3))
                                                                                                {
                                                                                                   addr193:
                                                                                                   §§push(_loc8_.col2.y);
                                                                                                   if(!(_loc29_ && this))
                                                                                                   {
                                                                                                      addr206:
                                                                                                      §§push(§§pop() + §§pop() * _loc7_.y);
                                                                                                      if(!_loc29_)
                                                                                                      {
                                                                                                         addr209:
                                                                                                         §§push(Number(§§pop()));
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr206);
                                                                                                }
                                                                                                _loc16_ = §§pop();
                                                                                                _loc8_ = param4.R;
                                                                                                _loc7_ = param1.§4!_§[0].m_localPoint;
                                                                                                if(!(_loc29_ && param3))
                                                                                                {
                                                                                                   §§push(param4.position);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop().x);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc8_.col1);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop().x);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc7_.x);
                                                                                                               if(!(_loc29_ && this))
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  loop4:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     addr817:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc8_.col2);
                                                                                                                        addr819:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop().x);
                                                                                                                           addr820:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc7_.y);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc29_ && this)
                                                                                                                        {
                                                                                                                           continue loop4;
                                                                                                                        }
                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                        loop25:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           addr745:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc19_ = §§pop();
                                                                                                                              addr746:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc18_);
                                                                                                                                 addr714:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc16_);
                                                                                                                                    addr715:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                       continue loop25;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr822);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(param4.position);
                                                                                                         if(_loc29_ && param2)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         §§goto(addr758);
                                                                                                         §§push(§§pop().y);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr376);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr206);
                                                                                       }
                                                                                       §§goto(addr185);
                                                                                    }
                                                                                    §§goto(addr193);
                                                                                 }
                                                                                 §§goto(addr185);
                                                                              }
                                                                              §§goto(addr173);
                                                                           }
                                                                           §§goto(addr209);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr206);
                                                               }
                                                               §§goto(addr193);
                                                            }
                                                            §§goto(addr152);
                                                         }
                                                         §§goto(addr144);
                                                      }
                                                      §§goto(addr141);
                                                   }
                                                   §§goto(addr185);
                                                }
                                                §§goto(addr173);
                                             }
                                             §§goto(addr125);
                                          }
                                          §§goto(addr165);
                                       }
                                       §§goto(addr185);
                                    case 1:
                                       _loc8_ = param2.R;
                                       _loc7_ = param1.§3=§;
                                       if(_loc28_ || param1)
                                       {
                                          §§push(_loc8_.col1);
                                          if(!_loc29_)
                                          {
                                             §§push(§§pop().x);
                                             if(!(_loc29_ && param2))
                                             {
                                                §§push(_loc7_.x);
                                                if(_loc28_ || param3)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!_loc29_)
                                                   {
                                                      §§push(_loc8_.col2);
                                                      if(_loc28_ || param2)
                                                      {
                                                         §§push(§§pop().x);
                                                         if(_loc28_ || param3)
                                                         {
                                                            addr885:
                                                            §§push(_loc7_.y);
                                                            if(_loc28_ || param3)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc28_)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!_loc29_)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     if(!(_loc29_ && this))
                                                                     {
                                                                        addr908:
                                                                        _loc9_ = §§pop();
                                                                        if(_loc28_ || this)
                                                                        {
                                                                           addr918:
                                                                           §§push(_loc8_.col1.y);
                                                                           if(!_loc29_)
                                                                           {
                                                                              addr921:
                                                                              §§push(_loc7_.x);
                                                                              if(!_loc29_)
                                                                              {
                                                                                 addr925:
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(!(_loc29_ && param1))
                                                                                 {
                                                                                    addr933:
                                                                                    §§push(_loc8_.col2.y);
                                                                                    if(!(_loc29_ && param1))
                                                                                    {
                                                                                       addr943:
                                                                                       §§push(§§pop() * _loc7_.y);
                                                                                    }
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(_loc28_)
                                                                                    {
                                                                                       addr949:
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                 }
                                                                                 _loc10_ = §§pop();
                                                                                 addr951:
                                                                                 _loc8_ = param2.R;
                                                                                 _loc7_ = param1.m_localPoint;
                                                                                 if(_loc28_)
                                                                                 {
                                                                                    §§push(param2.position);
                                                                                    loop81:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().x);
                                                                                       loop82:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc8_.col1);
                                                                                          addr1144:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop().x);
                                                                                             loop84:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc7_.x);
                                                                                                loop85:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   loop86:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(_loc28_)
                                                                                                      {
                                                                                                         §§push(_loc8_.col2);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop().x);
                                                                                                            addr1154:
                                                                                                            addr1074:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc7_.y);
                                                                                                               addr1156:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  addr1157:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§push(_loc8_.col2);
                                                                                                            if(_loc29_ && param2)
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                            §§push(§§pop().y);
                                                                                                            if(_loc28_ || param3)
                                                                                                            {
                                                                                                               if(_loc28_ || this)
                                                                                                               {
                                                                                                                  if(!(_loc29_ && param2))
                                                                                                                  {
                                                                                                                     if(!_loc28_)
                                                                                                                     {
                                                                                                                        continue loop86;
                                                                                                                     }
                                                                                                                     if(_loc29_)
                                                                                                                     {
                                                                                                                        continue loop84;
                                                                                                                     }
                                                                                                                     §§push(_loc7_.y);
                                                                                                                     if(!(_loc29_ && param3))
                                                                                                                     {
                                                                                                                        if(!_loc28_)
                                                                                                                        {
                                                                                                                           continue loop85;
                                                                                                                        }
                                                                                                                        addr1121:
                                                                                                                        §§push(§§pop() + §§pop() * §§pop());
                                                                                                                        if(_loc28_ || param2)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                        }
                                                                                                                        if(_loc29_ && this)
                                                                                                                        {
                                                                                                                           continue loop82;
                                                                                                                        }
                                                                                                                        _loc12_ = §§pop();
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(this.§0"#§);
                                                                                                                           loop95:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc9_);
                                                                                                                              addr1018:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§pop().x = §§pop();
                                                                                                                                 addr1019:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    continue loop95;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           if(!(_loc28_ || param2))
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           if(!_loc28_)
                                                                                                                           {
                                                                                                                              continue loop81;
                                                                                                                           }
                                                                                                                           if(false)
                                                                                                                           {
                                                                                                                              §§goto(addr997);
                                                                                                                           }
                                                                                                                           §§goto(addr1393);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr1154);
                                                                                                                  }
                                                                                                                  §§goto(addr1156);
                                                                                                               }
                                                                                                               §§goto(addr1157);
                                                                                                            }
                                                                                                            §§goto(addr1121);
                                                                                                         }
                                                                                                      }
                                                                                                      addr1158:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         addr1159:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc11_ = §§pop();
                                                                                                            continue loop81;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr1019);
                                                                              }
                                                                              §§goto(addr943);
                                                                           }
                                                                           §§goto(addr933);
                                                                        }
                                                                        §§goto(addr951);
                                                                     }
                                                                     §§goto(addr949);
                                                                  }
                                                                  §§goto(addr908);
                                                               }
                                                               §§goto(addr925);
                                                            }
                                                            §§goto(addr943);
                                                         }
                                                         §§goto(addr925);
                                                      }
                                                      §§goto(addr933);
                                                   }
                                                   §§goto(addr921);
                                                }
                                                §§goto(addr885);
                                             }
                                             §§goto(addr908);
                                          }
                                       }
                                       §§goto(addr918);
                                    case 2:
                                       §§goto(addr1401);
                                 }
                                 param4.R;
                                 return;
                                 addr2073:
                              }
                           }
                           else
                           {
                              addr2060:
                              §§push(2);
                              if(_loc28_ || param3)
                              {
                              }
                           }
                           §§goto(addr2073);
                        }
                        else
                        {
                           §§push(b2Manifold.§[!7§);
                           if(!_loc29_)
                           {
                              §§push(_loc27_);
                              if(!(_loc29_ && param1))
                              {
                                 addr2027:
                                 if(§§pop() === §§pop())
                                 {
                                    if(!_loc29_)
                                    {
                                       §§push(1);
                                       if(_loc28_ || param2)
                                       {
                                          addr2048:
                                       }
                                       else
                                       {
                                          addr2058:
                                          if(§§pop() !== _loc27_)
                                          {
                                             §§goto(addr2073);
                                             §§push(3);
                                          }
                                       }
                                       §§goto(addr2073);
                                    }
                                    §§goto(addr2060);
                                 }
                                 else
                                 {
                                    §§push(b2Manifold.§?!Q§);
                                    if(_loc28_ || param1)
                                    {
                                       §§goto(addr2058);
                                    }
                                    §§goto(addr2073);
                                 }
                              }
                              §§goto(addr2058);
                           }
                           §§goto(addr2048);
                        }
                     }
                     §§goto(addr2027);
                  }
                  §§goto(addr2073);
               }
               §§goto(addr2006);
            }
            §§goto(addr2073);
         }
         addr68:
      }
   }
}
