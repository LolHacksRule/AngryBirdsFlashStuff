package §3"5§
{
   import §5"i§.*;
   import §[R§.*;
   
   use namespace b2internal;
   
   public class b2WorldManifold
   {
       
      
      public var §7w§:b2Vec2;
      
      public var §="8§:Vector.<b2Vec2>;
      
      public function b2WorldManifold()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§7w§ = new b2Vec2();
            while(true)
            {
               loop1:
               while(true)
               {
                  super();
                  do
                  {
                     this.§="8§ = new Vector.<b2Vec2>(b2Settings.b2_maxManifoldPoints);
                  }
                  while(_loc3_);
                  
                  if(_loc2_ || _loc1_)
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
                           if(_loc2_ || _loc2_)
                           {
                              break;
                           }
                        }
                        else
                        {
                           this.§="8§[_loc1_] = new b2Vec2();
                           while(true)
                           {
                              _loc1_++;
                           }
                           addr104:
                        }
                        while(!_loc2_)
                        {
                           §§goto(addr104);
                        }
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
      
      public function §8#5§(param1:b2Manifold, param2:b2Transform, param3:Number, param4:b2Transform, param5:Number) : void
      {
         var _loc28_:Boolean = false;
         var _loc29_:Boolean = true;
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
         if(_loc29_ || param3)
         {
            if(param1.§6#;§ == 0)
            {
               if(!_loc28_)
               {
                  return;
               }
            }
         }
         §§push(param1.§%!9§);
         if(!(_loc28_ && this))
         {
            var _loc27_:* = §§pop();
            if(_loc29_ || this)
            {
               §§push(b2Manifold.§1!9§);
               if(_loc29_ || this)
               {
                  §§push(_loc27_);
                  if(!(_loc28_ && this))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc29_)
                        {
                           §§push(0);
                           if(!_loc28_)
                           {
                              addr2049:
                              loop153:
                              switch(§§pop())
                              {
                                 case 0:
                                    _loc8_ = param2.R;
                                    _loc7_ = param1.m_localPoint;
                                    if(!(_loc28_ && param3))
                                    {
                                       §§push(param2.position);
                                       if(_loc29_ || param2)
                                       {
                                          §§push(§§pop().x);
                                          if(!_loc28_)
                                          {
                                             §§push(_loc8_.col1);
                                             if(_loc29_ || param1)
                                             {
                                                §§push(§§pop().x);
                                                if(!_loc28_)
                                                {
                                                   §§push(_loc7_.x);
                                                   if(!_loc28_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!(_loc28_ && this))
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc29_ || param2)
                                                         {
                                                            §§push(_loc8_.col2);
                                                            if(!_loc28_)
                                                            {
                                                               §§push(§§pop().x);
                                                               if(_loc29_)
                                                               {
                                                                  §§push(_loc7_.y);
                                                                  if(!_loc28_)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc29_ || this)
                                                                     {
                                                                        addr155:
                                                                        §§push(§§pop() + §§pop());
                                                                        if(_loc29_)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           if(!_loc28_)
                                                                           {
                                                                              _loc15_ = §§pop();
                                                                              if(!(_loc28_ && this))
                                                                              {
                                                                                 addr171:
                                                                                 §§push(param2.position.y);
                                                                                 if(!(_loc28_ && param1))
                                                                                 {
                                                                                    addr181:
                                                                                    §§push(_loc8_.col1.y);
                                                                                    if(!(_loc28_ && this))
                                                                                    {
                                                                                       §§push(_loc7_.x);
                                                                                       if(!_loc28_)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(_loc29_)
                                                                                          {
                                                                                             addr196:
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(!_loc28_)
                                                                                             {
                                                                                                addr199:
                                                                                                addr201:
                                                                                                §§push(_loc8_.col2.y);
                                                                                                if(!_loc29_)
                                                                                                {
                                                                                                }
                                                                                                addr207:
                                                                                                §§push(§§pop() + §§pop());
                                                                                                if(_loc29_ || param1)
                                                                                                {
                                                                                                   addr216:
                                                                                                   _loc16_ = §§pop();
                                                                                                   _loc8_ = param4.R;
                                                                                                   _loc7_ = param1.§="8§[0].m_localPoint;
                                                                                                   if(!_loc28_)
                                                                                                   {
                                                                                                      §§push(param4.position);
                                                                                                      loop0:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop().x);
                                                                                                         addr806:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc8_.col1);
                                                                                                            addr808:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop().x);
                                                                                                               addr809:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc7_.x);
                                                                                                                  addr811:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     addr812:
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
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr627);
                                                                                                   addr215:
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr216);
                                                                                          }
                                                                                          addr206:
                                                                                          §§push(§§pop() * _loc7_.y);
                                                                                       }
                                                                                       §§goto(addr206);
                                                                                    }
                                                                                    §§goto(addr207);
                                                                                 }
                                                                                 §§goto(addr199);
                                                                              }
                                                                              §§goto(addr216);
                                                                           }
                                                                           §§goto(addr215);
                                                                        }
                                                                        §§goto(addr216);
                                                                     }
                                                                     §§goto(addr196);
                                                                  }
                                                                  §§goto(addr206);
                                                               }
                                                               §§goto(addr196);
                                                            }
                                                            §§goto(addr201);
                                                         }
                                                         §§goto(addr216);
                                                      }
                                                      §§goto(addr196);
                                                   }
                                                   §§goto(addr206);
                                                }
                                                §§goto(addr155);
                                             }
                                             §§goto(addr181);
                                          }
                                          §§goto(addr216);
                                       }
                                    }
                                    §§goto(addr171);
                                 case 1:
                                    _loc8_ = param2.R;
                                    _loc7_ = param1.§[#M§;
                                    if(!(_loc28_ && param2))
                                    {
                                       §§push(_loc8_.col1);
                                       if(!(_loc28_ && param1))
                                       {
                                          §§push(§§pop().x);
                                          if(!_loc28_)
                                          {
                                             §§push(_loc7_.x);
                                             if(_loc29_ || param3)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc29_)
                                                {
                                                   §§push(_loc8_.col2);
                                                   if(!(_loc28_ && param3))
                                                   {
                                                      §§push(§§pop().x);
                                                      if(!_loc28_)
                                                      {
                                                         §§push(_loc7_.y);
                                                         if(!(_loc28_ && this))
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(!(_loc28_ && param3))
                                                            {
                                                               addr893:
                                                               §§push(§§pop() + §§pop());
                                                               if(_loc29_ || this)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  if(_loc29_ || param2)
                                                                  {
                                                                     addr909:
                                                                     _loc9_ = §§pop();
                                                                     if(_loc29_)
                                                                     {
                                                                        addr914:
                                                                        §§push(_loc8_.col1.y);
                                                                        if(_loc29_)
                                                                        {
                                                                           addr917:
                                                                           §§push(_loc7_.x);
                                                                           if(!_loc28_)
                                                                           {
                                                                              addr941:
                                                                              addr921:
                                                                              §§push(§§pop() * §§pop());
                                                                              if(!_loc28_)
                                                                              {
                                                                                 addr926:
                                                                                 §§push(_loc8_.col2.y);
                                                                                 if(_loc29_ || param1)
                                                                                 {
                                                                                    addr936:
                                                                                    §§push(§§pop() * _loc7_.y);
                                                                                 }
                                                                              }
                                                                              _loc10_ = §§pop();
                                                                              _loc8_ = param2.R;
                                                                              _loc7_ = param1.m_localPoint;
                                                                              if(!(_loc28_ && this))
                                                                              {
                                                                                 §§push(param2.position);
                                                                                 loop82:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().x);
                                                                                    if(_loc29_ || param3)
                                                                                    {
                                                                                       §§push(_loc8_.col1);
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          addr1133:
                                                                                          addr1036:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc7_.x);
                                                                                             addr1135:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                addr1136:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   addr1137:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc8_.col2);
                                                                                                      addr1139:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop().x);
                                                                                                         addr1140:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc7_.y);
                                                                                                            addr1142:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               addr1143:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  addr1144:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§push(_loc8_.col1);
                                                                                          if(!(_loc29_ || param1))
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          §§push(§§pop().y);
                                                                                          if(_loc29_)
                                                                                          {
                                                                                             if(!(_loc28_ && param1))
                                                                                             {
                                                                                                if(_loc29_)
                                                                                                {
                                                                                                   §§push(_loc7_.x);
                                                                                                   if(!(_loc28_ && this))
                                                                                                   {
                                                                                                      if(_loc29_)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(!_loc28_)
                                                                                                         {
                                                                                                            addr1071:
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(!_loc28_)
                                                                                                            {
                                                                                                               §§push(_loc8_.col2);
                                                                                                               if(!_loc28_)
                                                                                                               {
                                                                                                                  §§push(§§pop().y);
                                                                                                                  if(_loc29_)
                                                                                                                  {
                                                                                                                     if(_loc29_ || param3)
                                                                                                                     {
                                                                                                                        addr1090:
                                                                                                                        §§push(_loc7_.y);
                                                                                                                        if(!(_loc28_ && param3))
                                                                                                                        {
                                                                                                                           addr1098:
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(_loc29_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              if(_loc29_)
                                                                                                                              {
                                                                                                                                 addr1103:
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                              }
                                                                                                                              if(!(_loc28_ && param1))
                                                                                                                              {
                                                                                                                                 _loc12_ = §§pop();
                                                                                                                                 if(!(_loc28_ && param3))
                                                                                                                                 {
                                                                                                                                    §§push(this.§7w§);
                                                                                                                                    loop95:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc9_);
                                                                                                                                       addr1002:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§pop().x = §§pop();
                                                                                                                                          addr1003:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             continue loop95;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 break loop153;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr1136);
                                                                                                                           }
                                                                                                                           §§goto(addr1137);
                                                                                                                        }
                                                                                                                        §§goto(addr1142);
                                                                                                                     }
                                                                                                                     §§goto(addr1140);
                                                                                                                  }
                                                                                                                  §§goto(addr1098);
                                                                                                               }
                                                                                                               §§goto(addr1139);
                                                                                                            }
                                                                                                            §§goto(addr1103);
                                                                                                         }
                                                                                                         §§goto(addr1098);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr1135);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr1090);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr1133);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr1143);
                                                                                          }
                                                                                          §§goto(addr1071);
                                                                                       }
                                                                                    }
                                                                                    addr1145:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc11_ = §§pop();
                                                                                       continue loop82;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr967);
                                                                           }
                                                                           §§push(§§pop() + §§pop());
                                                                           if(_loc28_)
                                                                           {
                                                                           }
                                                                           §§goto(addr941);
                                                                        }
                                                                     }
                                                                     §§goto(addr941);
                                                                  }
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               §§goto(addr941);
                                                            }
                                                            §§goto(addr921);
                                                         }
                                                         §§goto(addr936);
                                                      }
                                                      §§goto(addr893);
                                                   }
                                                   §§goto(addr926);
                                                }
                                                §§goto(addr909);
                                             }
                                             §§goto(addr893);
                                          }
                                          §§goto(addr917);
                                       }
                                       §§goto(addr914);
                                    }
                                    §§goto(addr941);
                                 case 2:
                                    §§goto(addr1372);
                              }
                              param4.R;
                              return;
                              addr2049:
                           }
                           else
                           {
                              addr2044:
                              §§goto(addr2049);
                           }
                        }
                        else
                        {
                           addr2021:
                           §§push(1);
                           if(_loc28_)
                           {
                           }
                        }
                        §§goto(addr2049);
                     }
                     else
                     {
                        §§push(b2Manifold.§=!m§);
                        if(_loc29_)
                        {
                           §§push(_loc27_);
                           if(!_loc28_)
                           {
                              addr2013:
                              if(§§pop() === §§pop())
                              {
                                 if(_loc29_ || param1)
                                 {
                                    §§goto(addr2021);
                                 }
                                 addr2031:
                                 §§push(2);
                                 if(!_loc29_)
                                 {
                                 }
                                 §§goto(addr2049);
                              }
                              else
                              {
                                 §§push(b2Manifold.§3"f§);
                                 if(_loc29_)
                                 {
                                    addr2030:
                                    if(§§pop() === _loc27_)
                                    {
                                       §§goto(addr2031);
                                    }
                                    else
                                    {
                                       §§goto(addr2049);
                                       §§push(3);
                                    }
                                    §§goto(addr2049);
                                 }
                              }
                              §§goto(addr2044);
                           }
                           §§goto(addr2030);
                        }
                     }
                     §§goto(addr2030);
                  }
                  §§goto(addr2013);
               }
               §§goto(addr2049);
            }
            §§goto(addr2031);
         }
         §§goto(addr2049);
      }
   }
}
