package §^9§
{
   import §'F§.*;
   import §6Z§.*;
   
   use namespace b2internal;
   
   public class b2WorldManifold
   {
       
      
      public var §[!l§:b2Vec2;
      
      public var §"A§:Vector.<b2Vec2>;
      
      public function b2WorldManifold()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§[!l§ = new b2Vec2();
            loop0:
            while(true)
            {
               addr48:
               while(true)
               {
                  super();
                  while(true)
                  {
                     if(_loc3_)
                     {
                        this.§"A§ = new Vector.<b2Vec2>(b2Settings.b2_maxManifoldPoints);
                        if(_loc3_)
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
            §§goto(addr48);
         }
         var _loc1_:int = 0;
         while(true)
         {
            if(_loc1_ >= b2Settings.b2_maxManifoldPoints)
            {
               if(_loc2_)
               {
                  continue;
               }
               if(!_loc2_)
               {
                  break;
               }
            }
            else
            {
               this.§"A§[_loc1_] = new b2Vec2();
            }
            _loc1_++;
         }
      }
      
      public function §",§(param1:b2Manifold, param2:b2Transform, param3:Number, param4:b2Transform, param5:Number) : void
      {
         var _loc28_:Boolean = false;
         var _loc29_:Boolean = true;
         var _loc6_:int = 0;
         var _loc7_:b2Vec2 = null;
         var _loc8_:b2Mat22 = null;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:* = NaN;
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
            if(param1.§26§ == 0)
            {
               if(_loc29_ || this)
               {
                  §§goto(addr74);
               }
            }
            §§push(param1.§6m§);
            if(!_loc28_)
            {
               var _loc27_:* = §§pop();
               if(_loc29_ || param2)
               {
                  §§push(b2Manifold.§1K§);
                  if(!_loc28_)
                  {
                     §§push(_loc27_);
                     if(_loc29_)
                     {
                        if(§§pop() === §§pop())
                        {
                           if(_loc29_)
                           {
                              §§push(0);
                              if(_loc28_ && this)
                              {
                              }
                           }
                           else
                           {
                              addr1961:
                              §§push(1);
                              if(!_loc28_)
                              {
                                 addr1964:
                              }
                           }
                           addr1989:
                           loop115:
                           switch(§§pop())
                           {
                              case 0:
                                 _loc8_ = param2.R;
                                 _loc7_ = param1.m_localPoint;
                                 if(_loc29_)
                                 {
                                    §§push(param2.position);
                                    if(_loc29_ || param1)
                                    {
                                       §§push(§§pop().x);
                                       if(!(_loc28_ && this))
                                       {
                                          §§push(_loc8_.col1);
                                          if(!_loc28_)
                                          {
                                             §§push(§§pop().x);
                                             if(!(_loc28_ && param1))
                                             {
                                                §§push(_loc7_.x);
                                                if(_loc29_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc29_ || param2)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc29_)
                                                      {
                                                         §§push(_loc8_.col2);
                                                         if(!(_loc28_ && param3))
                                                         {
                                                            §§push(§§pop().x);
                                                            if(!(_loc28_ && param2))
                                                            {
                                                               §§push(_loc7_.y);
                                                               if(!(_loc28_ && param3))
                                                               {
                                                                  addr157:
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!(_loc28_ && this))
                                                                  {
                                                                     addr165:
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!(_loc28_ && param2))
                                                                     {
                                                                        addr173:
                                                                        §§push(Number(§§pop()));
                                                                        if(!(_loc28_ && param3))
                                                                        {
                                                                           _loc15_ = §§pop();
                                                                           if(_loc29_)
                                                                           {
                                                                              addr186:
                                                                              §§push(param2.position.y);
                                                                              if(!_loc28_)
                                                                              {
                                                                                 addr189:
                                                                                 §§push(_loc8_.col1.y);
                                                                                 if(_loc29_ || param3)
                                                                                 {
                                                                                    addr199:
                                                                                    §§push(_loc7_.x);
                                                                                    if(_loc29_)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(_loc29_ || param3)
                                                                                       {
                                                                                       }
                                                                                       addr227:
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(!(_loc28_ && param3))
                                                                                       {
                                                                                          addr236:
                                                                                          _loc16_ = §§pop();
                                                                                          _loc8_ = param4.R;
                                                                                          _loc7_ = param1.§"A§[0].m_localPoint;
                                                                                          if(!_loc28_)
                                                                                          {
                                                                                             §§push(param4.position);
                                                                                             loop0:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop().x);
                                                                                                addr786:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc8_.col1);
                                                                                                   addr788:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop().x);
                                                                                                      addr789:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc7_.x);
                                                                                                         addr791:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            addr792:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               addr793:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc8_.col2);
                                                                                                                  addr795:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop().x);
                                                                                                                     addr796:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc7_.y);
                                                                                                                        addr798:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           addr799:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              addr800:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                 addr801:
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
                                                                                          §§goto(addr391);
                                                                                          addr235:
                                                                                       }
                                                                                       §§goto(addr236);
                                                                                    }
                                                                                    addr226:
                                                                                    §§goto(addr227);
                                                                                    §§push(§§pop() * §§pop());
                                                                                 }
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(_loc29_ || param3)
                                                                                 {
                                                                                    addr221:
                                                                                    §§push(_loc8_.col2.y);
                                                                                    if(!_loc28_)
                                                                                    {
                                                                                       addr224:
                                                                                       §§goto(addr226);
                                                                                       §§push(_loc7_.y);
                                                                                    }
                                                                                    §§goto(addr227);
                                                                                 }
                                                                              }
                                                                              §§goto(addr235);
                                                                           }
                                                                        }
                                                                        §§goto(addr236);
                                                                     }
                                                                     §§goto(addr189);
                                                                  }
                                                                  §§goto(addr227);
                                                               }
                                                               §§goto(addr226);
                                                            }
                                                            §§goto(addr199);
                                                         }
                                                      }
                                                      §§goto(addr221);
                                                   }
                                                   §§goto(addr224);
                                                }
                                                §§goto(addr157);
                                             }
                                             §§goto(addr165);
                                          }
                                          §§goto(addr189);
                                       }
                                       §§goto(addr173);
                                    }
                                    §§goto(addr186);
                                 }
                                 §§goto(addr236);
                              case 1:
                                 _loc8_ = param2.R;
                                 _loc7_ = param1.§'c§;
                                 if(!_loc28_)
                                 {
                                    §§push(_loc8_.col1);
                                    if(_loc29_ || param3)
                                    {
                                       §§push(§§pop().x);
                                       if(_loc29_)
                                       {
                                          §§push(_loc7_.x);
                                          if(_loc29_ || param2)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!_loc28_)
                                             {
                                                §§push(_loc8_.col2);
                                                if(_loc29_)
                                                {
                                                   §§push(§§pop().x);
                                                   if(_loc29_ || param2)
                                                   {
                                                      §§push(_loc7_.y);
                                                      if(!_loc28_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(!_loc28_)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc29_)
                                                            {
                                                               addr861:
                                                               §§push(Number(§§pop()));
                                                               if(_loc29_)
                                                               {
                                                                  _loc9_ = §§pop();
                                                                  if(!_loc28_)
                                                                  {
                                                                     addr869:
                                                                     §§push(_loc8_.col1.y);
                                                                     if(!_loc28_)
                                                                     {
                                                                        §§push(_loc7_.x);
                                                                        if(!(_loc28_ && param3))
                                                                        {
                                                                           addr901:
                                                                           addr881:
                                                                           §§push(§§pop() * §§pop());
                                                                           if(!_loc28_)
                                                                           {
                                                                              addr886:
                                                                              §§push(_loc8_.col2.y);
                                                                              if(!_loc28_)
                                                                              {
                                                                                 addr891:
                                                                                 §§push(§§pop() * _loc7_.y);
                                                                              }
                                                                           }
                                                                           _loc10_ = §§pop();
                                                                           _loc8_ = param2.R;
                                                                           _loc7_ = param1.m_localPoint;
                                                                           if(!_loc28_)
                                                                           {
                                                                              §§push(param2.position);
                                                                              loop83:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().x);
                                                                                 addr1098:
                                                                                 loop84:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc8_.col1);
                                                                                    addr1100:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().x);
                                                                                       if(!(_loc28_ && param3))
                                                                                       {
                                                                                          §§push(_loc7_.x);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             addr1111:
                                                                                             addr1022:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() + §§pop());
                                                                                                addr1112:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc8_.col2);
                                                                                                   addr1114:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop().x);
                                                                                                      addr1115:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc7_.y);
                                                                                                         addr1117:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             if(!(_loc29_ || this))
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(_loc29_)
                                                                                             {
                                                                                                §§push(§§pop() + §§pop());
                                                                                                if(!(_loc28_ && this))
                                                                                                {
                                                                                                   if(_loc29_ || param3)
                                                                                                   {
                                                                                                      if(_loc29_ || this)
                                                                                                      {
                                                                                                         §§push(_loc8_.col2);
                                                                                                         if(_loc29_)
                                                                                                         {
                                                                                                            §§push(§§pop().y);
                                                                                                            if(!(_loc28_ && param3))
                                                                                                            {
                                                                                                               addr1066:
                                                                                                               if(!_loc28_)
                                                                                                               {
                                                                                                                  if(_loc29_)
                                                                                                                  {
                                                                                                                     addr1073:
                                                                                                                     §§push(§§pop() + §§pop() * _loc7_.y);
                                                                                                                     if(!(_loc28_ && param3))
                                                                                                                     {
                                                                                                                        addr1081:
                                                                                                                        if(_loc29_ || param1)
                                                                                                                        {
                                                                                                                           addr1089:
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           if(_loc29_)
                                                                                                                           {
                                                                                                                              _loc12_ = §§pop();
                                                                                                                              if(_loc29_)
                                                                                                                              {
                                                                                                                                 §§push(this.§[!l§);
                                                                                                                                 loop96:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc9_);
                                                                                                                                    addr953:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§pop().x = §§pop();
                                                                                                                                       if(!(_loc28_ && param3))
                                                                                                                                       {
                                                                                                                                          if(!(_loc29_ || this))
                                                                                                                                          {
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          continue loop96;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    continue loop83;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              break loop115;
                                                                                                                           }
                                                                                                                           continue loop84;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr1089);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr1111);
                                                                                                                  }
                                                                                                                  addr1120:
                                                                                                               }
                                                                                                               §§goto(addr1115);
                                                                                                            }
                                                                                                            §§goto(addr1073);
                                                                                                         }
                                                                                                         §§goto(addr1114);
                                                                                                      }
                                                                                                      §§goto(addr1112);
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§goto(addr1120);
                                                                                                   }
                                                                                                   addr1119:
                                                                                                }
                                                                                                §§goto(addr1089);
                                                                                             }
                                                                                             §§goto(addr1073);
                                                                                          }
                                                                                       }
                                                                                       addr1118:
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr1119);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr1097:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(param2.position);
                                                                              if(_loc29_ || param3)
                                                                              {
                                                                                 §§push(§§pop().y);
                                                                                 if(!_loc28_)
                                                                                 {
                                                                                    §§push(_loc8_.col1);
                                                                                    if(!(_loc28_ && param3))
                                                                                    {
                                                                                       §§push(§§pop().y);
                                                                                       if(!(_loc28_ && param2))
                                                                                       {
                                                                                          if(_loc29_)
                                                                                          {
                                                                                             §§push(_loc7_.x);
                                                                                             if(_loc29_)
                                                                                             {
                                                                                                if(_loc29_ || param1)
                                                                                                {
                                                                                                   §§goto(addr1022);
                                                                                                }
                                                                                                §§goto(addr1117);
                                                                                             }
                                                                                             §§goto(addr1073);
                                                                                          }
                                                                                          §§goto(addr1118);
                                                                                       }
                                                                                       §§goto(addr1066);
                                                                                    }
                                                                                    §§goto(addr1100);
                                                                                 }
                                                                                 §§goto(addr1081);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr1097);
                                                                              }
                                                                           }
                                                                        }
                                                                        §§push(§§pop() + §§pop());
                                                                        if(_loc29_ || param1)
                                                                        {
                                                                        }
                                                                     }
                                                                     §§goto(addr901);
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr901);
                                                         }
                                                         §§goto(addr881);
                                                      }
                                                      §§goto(addr891);
                                                   }
                                                   §§goto(addr901);
                                                }
                                                §§goto(addr886);
                                             }
                                          }
                                          §§goto(addr901);
                                       }
                                       §§goto(addr861);
                                    }
                                    §§goto(addr869);
                                 }
                                 §§goto(addr901);
                              case 2:
                                 §§goto(addr1372);
                           }
                           param4.R;
                           return;
                           addr1989:
                        }
                        else
                        {
                           §§push(b2Manifold.§3!u§);
                           if(!(_loc28_ && param3))
                           {
                              §§push(_loc27_);
                              if(_loc29_ || param3)
                              {
                                 addr1953:
                                 if(§§pop() === §§pop())
                                 {
                                    if(_loc29_ || param1)
                                    {
                                       §§goto(addr1961);
                                    }
                                    else
                                    {
                                       addr1971:
                                       §§push(2);
                                       if(!_loc28_)
                                       {
                                          addr1984:
                                       }
                                    }
                                    §§goto(addr1989);
                                 }
                                 else
                                 {
                                    §§push(b2Manifold.§8!p§);
                                    if(!_loc28_)
                                    {
                                       addr1970:
                                       if(§§pop() === _loc27_)
                                       {
                                          §§goto(addr1971);
                                       }
                                       else
                                       {
                                          §§push(3);
                                       }
                                       §§goto(addr1989);
                                    }
                                 }
                                 §§goto(addr1984);
                              }
                              §§goto(addr1970);
                           }
                        }
                        §§goto(addr1964);
                     }
                     §§goto(addr1953);
                  }
                  §§goto(addr1970);
               }
               §§goto(addr1961);
            }
            §§goto(addr1989);
         }
         addr74:
      }
   }
}
