package §72§
{
   import §>H§.b2Vec2;
   
   public class b2AABB
   {
       
      
      public var §>!6§:b2Vec2;
      
      public var §8!X§:b2Vec2;
      
      public function b2AABB()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§>!6§ = new b2Vec2();
            while(true)
            {
               this.§8!X§ = new b2Vec2();
               while(!(_loc2_ && _loc2_))
               {
                  super();
                  if(!(_loc1_ || _loc2_))
                  {
                     continue;
                  }
                  return;
                  addr58:
               }
            }
         }
         §§goto(addr58);
      }
      
      public static function §%q§(param1:b2AABB, param2:b2AABB) : b2AABB
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2AABB = new b2AABB();
         if(_loc4_ || param1)
         {
            _loc3_.§%q§(param1,param2);
         }
         return _loc3_;
      }
      
      public function §3!W§() : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§8!X§.x);
         if(_loc5_ || _loc3_)
         {
            §§push(§§pop() - this.§>!6§.x);
            if(!(_loc4_ && _loc3_))
            {
               addr38:
               §§push(Number(§§pop()));
            }
            var _loc1_:* = §§pop();
            §§push(this.§8!X§.y);
            if(_loc5_)
            {
               §§push(§§pop() - this.§>!6§.y);
               if(_loc5_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc2_:* = §§pop();
            if(_loc5_)
            {
               §§push(_loc1_);
               if(_loc5_)
               {
                  §§push(0);
                  if(!(_loc4_ && _loc2_))
                  {
                     §§push(§§pop() >= §§pop());
                     if(_loc5_ || this)
                     {
                        if(§§pop())
                        {
                           if(!(_loc4_ && _loc2_))
                           {
                              §§pop();
                              addr96:
                              addr95:
                              addr94:
                              §§push(_loc2_ >= 0);
                              if(_loc5_ || _loc2_)
                              {
                              }
                              addr105:
                              var _loc3_:* = §§pop();
                              if(_loc5_)
                              {
                                 §§push(_loc3_);
                                 loop0:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
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
                                                   §§push(this.§>!6§.§3!W§());
                                                   if(_loc5_ || this)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      if(!_loc4_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc4_)
                                                            {
                                                               break;
                                                            }
                                                            if(§§pop())
                                                            {
                                                               loop5:
                                                               for(; _loc5_ || _loc2_; if(!(_loc5_ || _loc1_))
                                                               {
                                                                  continue;
                                                               },§§goto(addr127))
                                                               {
                                                                  §§pop();
                                                                  loop10:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§8!X§.§3!W§());
                                                                     if(_loc5_)
                                                                     {
                                                                        addr138:
                                                                        §§push(Boolean(§§pop()));
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr138);
                                                                        }
                                                                        addr139:
                                                                     }
                                                                     loop8:
                                                                     while(true)
                                                                     {
                                                                        §§push(Boolean(§§pop()));
                                                                        while(true)
                                                                        {
                                                                           if(_loc5_ || _loc3_)
                                                                           {
                                                                              _loc3_ = §§pop();
                                                                              if(_loc5_)
                                                                              {
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§push(_loc3_);
                                                                                 if(!(_loc4_ && _loc3_))
                                                                                 {
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       continue loop5;
                                                                                    }
                                                                                    continue loop8;
                                                                                 }
                                                                                 continue;
                                                                              }
                                                                              continue loop10;
                                                                           }
                                                                           continue loop3;
                                                                        }
                                                                        continue loop4;
                                                                     }
                                                                     addr127:
                                                                     if(!_loc4_)
                                                                     {
                                                                        return §§pop();
                                                                     }
                                                                     continue loop0;
                                                                  }
                                                               }
                                                               continue loop1;
                                                               addr183:
                                                            }
                                                            §§goto(addr139);
                                                         }
                                                         continue loop2;
                                                         addr178:
                                                      }
                                                   }
                                                   §§goto(addr183);
                                                }
                                             }
                                          }
                                          §§goto(addr178);
                                       }
                                    }
                                 }
                              }
                              §§goto(addr191);
                           }
                        }
                        §§push(Boolean(§§pop()));
                     }
                     §§goto(addr105);
                  }
                  §§goto(addr96);
               }
               §§goto(addr95);
            }
            §§goto(addr94);
         }
         §§goto(addr38);
      }
      
      public function §;!A§() : b2Vec2
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(this.§>!6§.x);
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§8!X§.x);
            if(_loc1_)
            {
               §§push(§§pop() + §§pop());
               if(!_loc2_)
               {
                  addr55:
                  §§push(§§pop() / 2);
               }
               §§push(this.§>!6§.y);
               if(_loc1_ || _loc1_)
               {
                  §§push(§§pop() + this.§8!X§.y);
                  if(!(_loc2_ && _loc2_))
                  {
                     §§push(§§pop() / 2);
                  }
               }
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr55);
      }
      
      public function §]!A§() : b2Vec2
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(this.§8!X§.x);
         if(_loc1_)
         {
            §§push(this.§>!6§.x);
            if(_loc1_)
            {
               §§push(§§pop() - §§pop());
               if(!_loc2_)
               {
                  addr40:
                  §§push(§§pop() / 2);
               }
               §§push(this.§8!X§.y);
               if(_loc1_)
               {
                  addr47:
                  §§push(§§pop() - this.§>!6§.y);
                  if(!_loc2_)
                  {
                     §§push(§§pop() / 2);
                  }
               }
               return new §§pop().b2Vec2(§§pop(),§§pop());
            }
            §§goto(addr47);
         }
         §§goto(addr40);
      }
      
      public function §@!d§(param1:b2AABB) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = true;
         if(!(_loc4_ && _loc2_))
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
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
                           while(true)
                           {
                              §§push(this.§>!6§);
                              while(true)
                              {
                                 §§push(§§pop().x);
                                 addr280:
                                 while(true)
                                 {
                                    §§push(param1.§>!6§);
                                    addr282:
                                    while(true)
                                    {
                                       §§push(§§pop().x);
                                       addr283:
                                       while(true)
                                       {
                                          §§push(§§pop() <= §§pop());
                                       }
                                    }
                                 }
                                 loop17:
                                 while(true)
                                 {
                                    §§push(this.§>!6§);
                                    if(_loc4_)
                                    {
                                       break;
                                    }
                                    §§push(§§pop().y);
                                    loop18:
                                    while(true)
                                    {
                                       §§push(param1.§>!6§);
                                       if(_loc3_ || this)
                                       {
                                          §§push(§§pop().y);
                                          loop19:
                                          while(true)
                                          {
                                             §§push(§§pop() <= §§pop());
                                             loop20:
                                             while(!_loc4_)
                                             {
                                                loop21:
                                                while(true)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   loop22:
                                                   for(; _loc3_; while(!(_loc4_ && this))
                                                   {
                                                      _loc2_ = §§pop();
                                                      §§goto(addr198);
                                                   })
                                                   {
                                                      _loc2_ = §§pop();
                                                      loop23:
                                                      while(true)
                                                      {
                                                         §§push(_loc2_);
                                                         if(!_loc4_)
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               break;
                                                            }
                                                            §§push(Boolean(§§pop()));
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               addr211:
                                                               while(true)
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     if(_loc4_ && _loc2_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(!§§pop())
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           addr189:
                                                                           addr187:
                                                                           while(true)
                                                                           {
                                                                              §§push(Boolean(§§pop()));
                                                                              continue loop22;
                                                                           }
                                                                        }
                                                                        addr188:
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           continue loop21;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           continue loop17;
                                                                        }
                                                                     }
                                                                     addr273:
                                                                  }
                                                               }
                                                               continue loop2;
                                                               addr153:
                                                               if(_loc4_ && this)
                                                               {
                                                                  continue;
                                                               }
                                                               §§pop();
                                                               loop40:
                                                               while(!(_loc4_ && this))
                                                               {
                                                                  §§push(param1.§8!X§);
                                                                  if(!(_loc4_ && _loc2_))
                                                                  {
                                                                     §§push(§§pop().y);
                                                                     if(!(_loc4_ && param1))
                                                                     {
                                                                        §§push(this.§8!X§);
                                                                        if(_loc3_ || this)
                                                                        {
                                                                           §§push(§§pop().y);
                                                                           if(_loc3_ || _loc2_)
                                                                           {
                                                                              if(_loc3_)
                                                                              {
                                                                                 §§push(§§pop() <= §§pop());
                                                                                 if(!(_loc4_ && param1))
                                                                                 {
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       continue loop1;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Boolean(§§pop()));
                                                                                    }
                                                                                    addr98:
                                                                                 }
                                                                                 loop41:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc3_ || param1)
                                                                                    {
                                                                                       addr107:
                                                                                       if(!(_loc4_ && this))
                                                                                       {
                                                                                          _loc2_ = §§pop();
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             if(_loc4_ && _loc3_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             continue;
                                                                                          }
                                                                                          continue loop40;
                                                                                       }
                                                                                       addr127:
                                                                                       addr221:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                §§push(Boolean(§§pop()));
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      while(_loc3_ || _loc3_)
                                                                                                      {
                                                                                                         §§goto(addr153);
                                                                                                      }
                                                                                                      §§goto(addr189);
                                                                                                      addr146:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr98);
                                                                                                   }
                                                                                                   continue loop41;
                                                                                                }
                                                                                                §§goto(addr211);
                                                                                                addr132:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc4_ && _loc3_)
                                                                                                   {
                                                                                                      continue loop3;
                                                                                                   }
                                                                                                   _loc2_ = §§pop();
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc2_);
                                                                                                      break loop23;
                                                                                                   }
                                                                                                }
                                                                                                addr286:
                                                                                             }
                                                                                          }
                                                                                          break;
                                                                                          §§goto(addr107);
                                                                                       }
                                                                                       while(_loc3_)
                                                                                       {
                                                                                          §§pop();
                                                                                          break loop41;
                                                                                       }
                                                                                       continue loop20;
                                                                                    }
                                                                                    §§goto(addr132);
                                                                                 }
                                                                                 continue loop23;
                                                                              }
                                                                              continue loop19;
                                                                           }
                                                                           while(_loc3_ || param1)
                                                                           {
                                                                              §§goto(addr187);
                                                                           }
                                                                           §§goto(addr283);
                                                                           addr180:
                                                                           §§goto(addr188);
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                           }
                                                                           addr179:
                                                                        }
                                                                        §§goto(addr180);
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(_loc4_)
                                                                           {
                                                                              continue loop18;
                                                                           }
                                                                           if(_loc4_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(this.§8!X§);
                                                                        }
                                                                        §§goto(addr280);
                                                                        addr173:
                                                                     }
                                                                     §§goto(addr179);
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                     }
                                                                     addr172:
                                                                  }
                                                                  §§goto(addr173);
                                                               }
                                                               while(true)
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr127);
                                                                        }
                                                                        addr202:
                                                                     }
                                                                     break;
                                                                  }
                                                                  continue loop17;
                                                                  §§goto(addr161);
                                                               }
                                                               addr161:
                                                               §§goto(addr294);
                                                            }
                                                         }
                                                         §§goto(addr221);
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr272);
                                                      }
                                                   }
                                                   addr285:
                                                   while(true)
                                                   {
                                                      §§goto(addr286);
                                                   }
                                                }
                                             }
                                             continue loop0;
                                          }
                                       }
                                       break;
                                    }
                                    §§goto(addr282);
                                 }
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        §§goto(addr285);
                     }
                  }
               }
            }
         }
         §§goto(addr202);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         var _loc17_:Boolean = true;
         var _loc18_:Boolean = false;
         var _loc11_:b2Vec2 = null;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         §§push(-Number.MAX_VALUE);
         if(_loc17_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:* = Number(Number.MAX_VALUE);
         §§push(param2.p1.x);
         if(!(_loc18_ && param2))
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(param2.p1.y);
         if(_loc17_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc6_:* = §§pop();
         §§push(param2.p2.x);
         if(_loc17_)
         {
            §§push(§§pop() - param2.p1.x);
            if(!_loc18_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc7_:* = §§pop();
         §§push(param2.p2.y);
         if(_loc17_ || this)
         {
            §§push(§§pop() - param2.p1.y);
            if(!_loc18_)
            {
               addr93:
               §§push(Number(§§pop()));
            }
            var _loc8_:* = §§pop();
            var _loc9_:Number = Math.abs(_loc7_);
            var _loc10_:Number = Math.abs(_loc8_);
            _loc11_ = param1.normal;
            if(!_loc18_)
            {
               §§push(_loc9_);
               loop0:
               while(true)
               {
                  if(§§pop() >= Number.MIN_VALUE)
                  {
                     §§push(1);
                     loop1:
                     while(true)
                     {
                        §§push(_loc7_);
                        loop2:
                        while(true)
                        {
                           §§push(§§pop() / §§pop());
                           loop3:
                           while(true)
                           {
                              §§push(Number(§§pop()));
                              loop4:
                              while(true)
                              {
                                 _loc12_ = §§pop();
                                 loop5:
                                 while(true)
                                 {
                                    §§push(this.§>!6§);
                                    loop6:
                                    while(true)
                                    {
                                       §§push(§§pop().x);
                                       loop7:
                                       while(true)
                                       {
                                          §§push(_loc5_);
                                          loop8:
                                          while(true)
                                          {
                                             §§push(§§pop() - §§pop());
                                             if(_loc17_ || this)
                                             {
                                                §§push(_loc12_);
                                                while(true)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   addr582:
                                                   if(!(_loc17_ || param1))
                                                   {
                                                      continue;
                                                   }
                                                   §§push(§§pop() * §§pop());
                                                   loop70:
                                                   for(; _loc17_ || param2; while(!(_loc18_ && _loc3_))
                                                   {
                                                      addr445:
                                                      if(!(_loc17_ || this))
                                                      {
                                                         while(!(_loc18_ && param2))
                                                         {
                                                            _loc16_ = §§pop();
                                                            §§goto(addr445);
                                                         }
                                                         continue loop7;
                                                         addr868:
                                                      }
                                                      §§goto(addr453);
                                                      §§push(Number(§§pop()));
                                                      §§goto(addr876);
                                                   })
                                                   {
                                                      §§push(Number(§§pop()));
                                                      loop71:
                                                      while(true)
                                                      {
                                                         _loc14_ = §§pop();
                                                         loop72:
                                                         while(_loc17_)
                                                         {
                                                            §§push(-1);
                                                            loop73:
                                                            while(true)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               loop74:
                                                               while(!_loc18_)
                                                               {
                                                                  _loc16_ = §§pop();
                                                                  loop75:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc13_);
                                                                     loop76:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc14_);
                                                                        addr515:
                                                                        loop77:
                                                                        while(!(_loc18_ && _loc3_))
                                                                        {
                                                                           if(_loc17_ || _loc3_)
                                                                           {
                                                                              if(§§pop() > §§pop())
                                                                              {
                                                                                 loop78:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc13_);
                                                                                    addr531:
                                                                                    while(_loc17_)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       continue loop71;
                                                                                    }
                                                                                    loop66:
                                                                                    while(_loc17_ || param1)
                                                                                    {
                                                                                       if(_loc17_)
                                                                                       {
                                                                                          §§push(_loc6_);
                                                                                          loop67:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() - §§pop());
                                                                                             loop68:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc12_);
                                                                                                addr575:
                                                                                                while(_loc17_ || param2)
                                                                                                {
                                                                                                   §§goto(addr582);
                                                                                                }
                                                                                                loop63:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc18_ && param2))
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(!(_loc17_ || param2))
                                                                                                      {
                                                                                                         continue loop0;
                                                                                                      }
                                                                                                      if(!_loc18_)
                                                                                                      {
                                                                                                         if(_loc18_ && param1)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         §§push(Number(§§pop()));
                                                                                                         continue loop0;
                                                                                                      }
                                                                                                      while(_loc17_)
                                                                                                      {
                                                                                                         §§push(_loc14_);
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         break loop63;
                                                                                                      }
                                                                                                      addr848:
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop() > §§pop())
                                                                                                      {
                                                                                                         loop26:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc13_);
                                                                                                            loop27:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!_loc18_)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  loop28:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc15_ = §§pop();
                                                                                                                     loop29:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc14_);
                                                                                                                        addr829:
                                                                                                                        while(!(_loc18_ && param1))
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           break loop70;
                                                                                                                        }
                                                                                                                        loop14:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc5_);
                                                                                                                           loop15:
                                                                                                                           while(!_loc18_)
                                                                                                                           {
                                                                                                                              if(!_loc18_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc12_);
                                                                                                                                    addr890:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       addr891:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr889:
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 loop116:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc17_ || param1)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() < §§pop());
                                                                                                                                       loop117:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          loop118:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!§§pop())
                                                                                                                                             {
                                                                                                                                                loop119:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   loop54:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc10_);
                                                                                                                                                      addr741:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(§§pop() >= Number.MIN_VALUE)
                                                                                                                                                         {
                                                                                                                                                            §§push(1);
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc8_);
                                                                                                                                                               if(_loc18_ && param1)
                                                                                                                                                               {
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               §§push(§§pop() / §§pop());
                                                                                                                                                               loop57:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                  addr691:
                                                                                                                                                                  loop58:
                                                                                                                                                                  while(!_loc18_)
                                                                                                                                                                  {
                                                                                                                                                                     _loc12_ = §§pop();
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc17_)
                                                                                                                                                                        {
                                                                                                                                                                           addr696:
                                                                                                                                                                           if(!(_loc18_ && param2))
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc17_)
                                                                                                                                                                              {
                                                                                                                                                                                 break;
                                                                                                                                                                              }
                                                                                                                                                                              continue loop6;
                                                                                                                                                                           }
                                                                                                                                                                           addr826:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(1);
                                                                                                                                                                              addr817:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                 addr818:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc16_ = §§pop();
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr696);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           loop112:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              loop113:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    param1.fraction = _loc3_;
                                                                                                                                                                                    if(!(_loc18_ && this))
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc17_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc17_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop72;
                                                                                                                                                                                          }
                                                                                                                                                                                          if(!(_loc17_ || param2))
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop29;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§push(true);
                                                                                                                                                                                          if(!_loc18_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc17_ || this)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc18_ && param1))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc18_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc17_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         return §§pop();
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop118;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§pop();
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(this.§8!X§);
                                                                                                                                                                                                         addr709:
                                                                                                                                                                                                         addr880:
                                                                                                                                                                                                         while(_loc17_ || this)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr716:
                                                                                                                                                                                                            §§push(§§pop().y);
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc6_);
                                                                                                                                                                                                               while(!_loc18_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() < §§pop());
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr722:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!§§pop())
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop113;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        if(!_loc17_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop112;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        if(_loc17_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc18_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr730:
                                                                                                                                                                                                                              §§push(false);
                                                                                                                                                                                                                              if(_loc17_ || _loc3_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 return §§pop();
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              while(_loc17_ || param1)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc15_);
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                                                                    break loop66;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr946:
                                                                                                                                                                                                                              §§push(false);
                                                                                                                                                                                                                              addr838:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           return §§pop();
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc13_);
                                                                                                                                                                                                                           addr785:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                                                                              loop47:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 _loc3_ = §§pop();
                                                                                                                                                                                                                                 addr787:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr773:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(Number(Math.min(_loc4_,_loc14_)));
                                                                                                                                                                                                                                       for(; _loc17_; if(_loc17_ || this)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          _loc3_ = §§pop();
                                                                                                                                                                                                                                          addr316:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!(_loc18_ && param2))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§goto(addr323);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr390:
                                                                                                                                                                                                                                             §§goto(addr770);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop75;
                                                                                                                                                                                                                                          addr316:
                                                                                                                                                                                                                                       })
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          _loc4_ = §§pop();
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc3_);
                                                                                                                                                                                                                                             break loop58;
                                                                                                                                                                                                                                             addr380:
                                                                                                                                                                                                                                             if(!(_loc17_ || _loc3_))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                _loc11_.y = _loc16_;
                                                                                                                                                                                                                                                §§goto(addr390);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop47;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop15;
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc17_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop().x);
                                                                                                                                                                                                               continue loop14;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr924);
                                                                                                                                                                                                            §§goto(addr709);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr722);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr730);
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr213);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr197);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr967);
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc18_ && _loc3_))
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc18_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue;
                                                                                                                                                                                          }
                                                                                                                                                                                          addr744:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr745);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr316);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr787);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr819);
                                                                                                                                                                     }
                                                                                                                                                                     continue loop5;
                                                                                                                                                                  }
                                                                                                                                                                  while(!_loc18_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc4_);
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(§§pop() > §§pop())
                                                                                                                                                                        {
                                                                                                                                                                           addr770:
                                                                                                                                                                           loop101:
                                                                                                                                                                           while(!_loc18_)
                                                                                                                                                                           {
                                                                                                                                                                              _loc11_.x = 0;
                                                                                                                                                                              loop96:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc18_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr339:
                                                                                                                                                                                    if(!(_loc17_ || _loc3_))
                                                                                                                                                                                    {
                                                                                                                                                                                       break;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(_loc13_);
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                       addr164:
                                                                                                                                                                                       if(!(_loc17_ || param1))
                                                                                                                                                                                       {
                                                                                                                                                                                          continue;
                                                                                                                                                                                       }
                                                                                                                                                                                       if(!_loc18_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc18_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr175:
                                                                                                                                                                                             if(_loc17_ || param1)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc4_);
                                                                                                                                                                                                if(!_loc18_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc18_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop77;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(!_loc17_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop63;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(_loc18_ && _loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop91;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(§§pop() <= §§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop94;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc17_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc17_ || this))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop96;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(!_loc17_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc18_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc17_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc18_ && this))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc17_ || param2)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop73;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop119;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop26;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop49;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop59;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop27;
                                                                                                                                                                                                            addr456:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(!_loc18_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc18_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop110;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(false);
                                                                                                                                                                                                            if(!_loc18_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc17_ || this)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  return §§pop();
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr771);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr967:
                                                                                                                                                                                                            loop108:
                                                                                                                                                                                                            while(_loc17_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop());
                                                                                                                                                                                                               if(_loc17_ || _loc3_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!§§pop())
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop109;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop92;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr966:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!§§pop())
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     break loop108;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop117;
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr967:
                                                                                                                                                                                                            §§pop();
                                                                                                                                                                                                            addr751:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc18_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc18_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§push(this.§8!X§);
                                                                                                                                                                                                                  if(_loc17_ || this)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop().y);
                                                                                                                                                                                                                     continue loop66;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop111;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr893:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop1;
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr672:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(this.§8!X§);
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop().x);
                                                                                                                                                                                                            continue loop116;
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         loop99:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc18_ && param2))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc18_ && param1))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc3_);
                                                                                                                                                                                                                  if(!_loc18_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr164);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  loop104:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc17_ || param1)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc17_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           loop82:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!(_loc17_ || param2))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop90;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              if(!_loc17_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                                                                              while(_loc17_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 _loc13_ = §§pop();
                                                                                                                                                                                                                                 while(_loc17_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc18_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop54;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(!(_loc18_ && param2))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc15_);
                                                                                                                                                                                                                                       continue loop70;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(_loc18_ && _loc3_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(_loc18_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop75;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop104;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop82;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr889);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop4;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        if(!_loc18_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!(_loc17_ || param1))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop68;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(!(_loc18_ && _loc3_))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!(_loc17_ || _loc3_))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 break loop99;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              _loc4_ = §§pop();
                                                                                                                                                                                                                              continue loop99;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr818);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr531);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr819:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     else
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        loop98:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!(_loc17_ || this))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc17_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr411:
                                                                                                                                                                                                                                    if(!(_loc18_ && this))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop76;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop71;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop70;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop58;
                                                                                                                                                                                                                              addr409:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(!(_loc17_ || this))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop74;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(_loc18_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop57;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(!_loc18_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop50;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr745:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(this.§>!6§);
                                                                                                                                                                                                                              if(!_loc17_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 break loop98;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§push(§§pop().y);
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr751);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop().x);
                                                                                                                                                                                                                           addr957:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() < §§pop());
                                                                                                                                                                                                                              if(!(_loc18_ && this))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr966);
                                                                                                                                                                                                                                 §§push(§§pop());
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr967);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr956:
                                                                                                                                                                                                                        addr290:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc5_);
                                                                                                                                                                                                                     break loop99;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr953:
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr804:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               _loc11_.x = _loc16_;
                                                                                                                                                                                                               break loop72;
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr956);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr967);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc17_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop67;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(§§pop() > §§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc17_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop101;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      if(!_loc17_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop78;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr380);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr233);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop51;
                                                                                                                                                                                                addr373:
                                                                                                                                                                                             }
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc18_ && param2))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc6_);
                                                                                                                                                                                                   break loop77;
                                                                                                                                                                                                }
                                                                                                                                                                                                break;
                                                                                                                                                                                                §§goto(addr175);
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop3;
                                                                                                                                                                                             addr613:
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr497);
                                                                                                                                                                                       }
                                                                                                                                                                                       loop103:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc18_ && param2))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr356:
                                                                                                                                                                                             if(_loc17_ || this)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc18_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc18_ && param1))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr373);
                                                                                                                                                                                                      §§push(_loc3_);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   break;
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop27;
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop0;
                                                                                                                                                                                          }
                                                                                                                                                                                          addr453:
                                                                                                                                                                                          while(!_loc18_)
                                                                                                                                                                                          {
                                                                                                                                                                                             _loc14_ = §§pop();
                                                                                                                                                                                             continue loop103;
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop28;
                                                                                                                                                                                          §§goto(addr456);
                                                                                                                                                                                       }
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc14_ = §§pop();
                                                                                                                                                                                          §§goto(addr893);
                                                                                                                                                                                       }
                                                                                                                                                                                       addr349:
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr347:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr349);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    addr435:
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr290);
                                                                                                                                                                              }
                                                                                                                                                                              addr392:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr848);
                                                                                                                                                                                 §§goto(addr339);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           addr771:
                                                                                                                                                                           return §§pop();
                                                                                                                                                                           break loop77;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop54;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr785);
                                                                                                                                                               }
                                                                                                                                                               addr397:
                                                                                                                                                               if(_loc18_ && _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  continue;
                                                                                                                                                               }
                                                                                                                                                               if(!_loc18_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc18_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop1;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr409);
                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr817);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr818);
                                                                                                                                                            }
                                                                                                                                                            continue loop2;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr744);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr946);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr957);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr892);
                                                                                                                           }
                                                                                                                           continue loop8;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr925);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr793);
                                                                                                      continue loop63;
                                                                                                   }
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc13_ = §§pop();
                                                                                                   addr911:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§goto(addr880);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr822);
                                                                                    }
                                                                                    while(_loc17_)
                                                                                    {
                                                                                       _loc14_ = §§pop();
                                                                                       §§goto(addr826);
                                                                                    }
                                                                                    §§goto(addr829);
                                                                                 }
                                                                              }
                                                                              §§goto(addr347);
                                                                           }
                                                                           §§goto(addr750);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(_loc17_ || _loc3_)
                                                                           {
                                                                              if(_loc17_)
                                                                              {
                                                                                 §§goto(addr631);
                                                                                 §§push(§§pop() - §§pop());
                                                                              }
                                                                              while(_loc17_ || this)
                                                                              {
                                                                                 if(§§pop() > §§pop())
                                                                                 {
                                                                                    §§goto(addr804);
                                                                                 }
                                                                                 §§goto(addr773);
                                                                              }
                                                                              §§goto(addr890);
                                                                              addr796:
                                                                           }
                                                                           break;
                                                                           §§goto(addr515);
                                                                        }
                                                                        §§goto(addr769);
                                                                     }
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  §§goto(addr796);
                                                               }
                                                            }
                                                         }
                                                         while(!(_loc18_ && _loc3_))
                                                         {
                                                            _loc11_.y = 0;
                                                            §§goto(addr792);
                                                         }
                                                         §§goto(addr911);
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      _loc13_ = §§pop();
                                                      §§goto(addr838);
                                                      §§goto(addr590);
                                                   }
                                                   addr590:
                                                }
                                             }
                                             §§goto(addr909);
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr953);
               }
            }
            §§goto(addr387);
         }
         §§goto(addr93);
      }
      
      public function §7l§(param1:b2AABB) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(param1.§>!6§.x);
         if(!_loc7_)
         {
            §§push(§§pop() - this.§8!X§.x);
            if(!_loc7_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         §§push(param1.§>!6§.y);
         if(_loc6_ || _loc3_)
         {
            §§push(§§pop() - this.§8!X§.y);
            if(_loc6_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(this.§>!6§.x);
         if(!_loc7_)
         {
            §§push(§§pop() - param1.§8!X§.x);
            if(_loc6_ || _loc2_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         §§push(this.§>!6§.y);
         if(!(_loc7_ && _loc2_))
         {
            §§push(§§pop() - param1.§8!X§.y);
            if(!_loc7_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         if(!(_loc7_ && _loc2_))
         {
            §§push(_loc2_);
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  §§push(§§pop() > §§pop());
                  while(true)
                  {
                     §§push(§§pop());
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              while(true)
                              {
                                 §§push(_loc3_);
                                 loop6:
                                 while(true)
                                 {
                                    §§push(0);
                                    addr203:
                                    while(!_loc7_)
                                    {
                                       §§push(§§pop() > §§pop());
                                       if(!_loc7_)
                                       {
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                if(!(_loc7_ && this))
                                                {
                                                   §§push(false);
                                                   while(_loc7_ && this)
                                                   {
                                                      continue loop4;
                                                   }
                                                   return §§pop();
                                                   addr228:
                                                }
                                                else
                                                {
                                                   addr236:
                                                }
                                                while(true)
                                                {
                                                }
                                                addr236:
                                             }
                                             while(true)
                                             {
                                                §§push(_loc4_);
                                                continue loop6;
                                                §§goto(addr236);
                                             }
                                          }
                                          addr218:
                                       }
                                       §§goto(addr228);
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                        }
                        §§goto(addr218);
                     }
                  }
               }
            }
         }
         §§goto(addr174);
      }
      
      public function §%q§(param1:b2AABB, param2:b2AABB) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(this.§>!6§);
            while(true)
            {
               §§pop().x = Math.min(param1.§>!6§.x,param2.§>!6§.x);
               while(true)
               {
                  §§push(this.§>!6§);
                  if(_loc4_ || param1)
                  {
                     §§pop().y = Math.min(param1.§>!6§.y,param2.§>!6§.y);
                     loop2:
                     while(true)
                     {
                        §§push(this.§8!X§);
                        while(true)
                        {
                           §§pop().x = Math.max(param1.§8!X§.x,param2.§8!X§.x);
                           while(true)
                           {
                              §§push(this.§8!X§);
                              if(_loc3_)
                              {
                                 break;
                              }
                              §§pop().y = Math.max(param1.§8!X§.y,param2.§8!X§.y);
                              if(!_loc3_)
                              {
                                 continue loop2;
                              }
                           }
                        }
                     }
                     return;
                     addr97:
                  }
                  break;
               }
            }
         }
         §§goto(addr97);
      }
   }
}
