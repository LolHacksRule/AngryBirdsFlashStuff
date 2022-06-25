package §!m§
{
   import §>!8§.b2Vec2;
   
   public class b2AABB
   {
       
      
      public var §4m§:b2Vec2;
      
      public var §=!`§:b2Vec2;
      
      public function b2AABB()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§4m§ = new b2Vec2();
            while(true)
            {
               this.§=!`§ = new b2Vec2();
               while(!(_loc2_ && _loc2_))
               {
                  super();
                  if(_loc2_)
                  {
                     continue;
                  }
                  return;
                  addr43:
               }
            }
         }
         §§goto(addr43);
      }
      
      public static function §[!g§(param1:b2AABB, param2:b2AABB) : b2AABB
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2AABB = new b2AABB();
         if(!(_loc5_ && param1))
         {
            _loc3_.§[!g§(param1,param2);
         }
         return _loc3_;
      }
      
      public function §<`§() : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§=!`§.x);
         if(_loc5_ || this)
         {
            §§push(§§pop() - this.§4m§.x);
            if(_loc5_)
            {
               addr33:
               §§push(Number(§§pop()));
            }
            var _loc1_:* = §§pop();
            §§push(this.§=!`§.y);
            if(_loc5_ || this)
            {
               §§push(§§pop() - this.§4m§.y);
               if(!_loc4_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc2_:* = §§pop();
            if(_loc5_)
            {
               §§push(_loc1_);
               if(!(_loc4_ && _loc3_))
               {
                  §§push(0);
                  if(!(_loc4_ && _loc1_))
                  {
                     §§push(§§pop() >= §§pop());
                     if(!_loc4_)
                     {
                        §§push(Boolean(§§pop()));
                        if(!(_loc4_ && _loc1_))
                        {
                           §§push(§§pop());
                           if(!_loc4_)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           if(§§pop())
                           {
                              if(_loc5_ || _loc2_)
                              {
                                 §§pop();
                                 addr97:
                                 §§push(_loc2_ >= 0);
                                 if(!(_loc4_ && this))
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(!(_loc4_ && this))
                                    {
                                       addr123:
                                       §§push(Boolean(§§pop()));
                                    }
                                 }
                              }
                           }
                           §§goto(addr123);
                        }
                        var _loc3_:* = §§pop();
                        if(!_loc4_)
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
                                    §§push(Boolean(§§pop()));
                                    loop3:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          loop4:
                                          while(true)
                                          {
                                             §§pop();
                                             addr247:
                                             while(true)
                                             {
                                                §§push(this.§4m§.§<`§());
                                                addr221:
                                                while(!_loc4_)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   if(!(_loc4_ && _loc1_))
                                                   {
                                                      if(_loc5_ || _loc1_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      continue loop1;
                                                   }
                                                }
                                                continue loop4;
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          loop8:
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             if(!_loc4_)
                                             {
                                                §§push(Boolean(§§pop()));
                                             }
                                             if(!_loc5_)
                                             {
                                                break;
                                             }
                                             if(_loc4_ && _loc1_)
                                             {
                                                continue loop2;
                                             }
                                             if(!§§pop())
                                             {
                                                while(true)
                                                {
                                                   loop11:
                                                   while(true)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      addr189:
                                                      loop12:
                                                      while(true)
                                                      {
                                                         if(!(_loc4_ && this))
                                                         {
                                                            _loc3_ = §§pop();
                                                            if(_loc5_ || _loc1_)
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  §§push(_loc3_);
                                                                  if(_loc5_ || _loc1_)
                                                                  {
                                                                     if(!(_loc4_ && this))
                                                                     {
                                                                        break loop11;
                                                                     }
                                                                     continue loop11;
                                                                  }
                                                                  continue;
                                                               }
                                                               §§goto(addr247);
                                                            }
                                                            else
                                                            {
                                                               addr240:
                                                               while(true)
                                                               {
                                                                  §§push(this.§=!`§.§<`§());
                                                                  if(_loc5_ || _loc3_)
                                                                  {
                                                                     continue loop8;
                                                                  }
                                                                  continue loop12;
                                                               }
                                                               addr240:
                                                            }
                                                         }
                                                         §§goto(addr240);
                                                      }
                                                      §§goto(addr221);
                                                   }
                                                   return §§pop();
                                                   addr186:
                                                }
                                             }
                                             while(true)
                                             {
                                                §§pop();
                                                §§goto(addr189);
                                             }
                                          }
                                          continue loop3;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr240);
                     }
                     §§goto(addr123);
                  }
               }
            }
            §§goto(addr97);
         }
         §§goto(addr33);
      }
      
      public function §0!8§() : b2Vec2
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(this.§4m§.x);
         if(_loc1_)
         {
            §§push(this.§=!`§.x);
            if(!_loc2_)
            {
               §§push(§§pop() + §§pop());
               if(!_loc1_)
               {
               }
               §§goto(addr42);
            }
            §§goto(addr53);
         }
         addr42:
         §§push(§§pop() / 2);
         §§push(this.§4m§.y);
         if(!_loc2_)
         {
            §§push(§§pop() + this.§=!`§.y);
            if(_loc1_)
            {
               addr53:
               §§push(§§pop() / 2);
            }
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public function §&o§() : b2Vec2
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(this.§=!`§.x);
         if(_loc2_)
         {
            §§push(this.§4m§.x);
            if(!_loc1_)
            {
               §§push(§§pop() - §§pop());
               if(_loc1_)
               {
               }
               §§goto(addr53);
            }
            §§goto(addr74);
         }
         addr53:
         §§push(§§pop() / 2);
         §§push(this.§=!`§.y);
         if(!(_loc1_ && _loc1_))
         {
            §§push(§§pop() - this.§4m§.y);
            if(!(_loc1_ && _loc2_))
            {
               addr74:
               §§push(§§pop() / 2);
            }
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public function §!!4§(param1:b2AABB) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(true);
         if(!_loc4_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && param1))
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
                     §§push(Boolean(§§pop()));
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr337:
                              while(true)
                              {
                                 §§push(this.§4m§);
                                 addr321:
                                 while(true)
                                 {
                                    §§push(§§pop().x);
                                    addr322:
                                    while(true)
                                    {
                                       §§push(param1.§4m§);
                                       addr324:
                                       while(true)
                                       {
                                          §§push(§§pop().x);
                                          addr325:
                                          while(true)
                                          {
                                             §§push(§§pop() <= §§pop());
                                             addr326:
                                             while(true)
                                             {
                                                §§push(Boolean(§§pop()));
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           addr336:
                        }
                        while(true)
                        {
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              loop7:
                              while(true)
                              {
                                 _loc2_ = §§pop();
                                 loop8:
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    loop9:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          loop11:
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                             loop12:
                                             while(!(_loc4_ && _loc2_))
                                             {
                                                if(!§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      loop20:
                                                      while(true)
                                                      {
                                                         _loc2_ = §§pop();
                                                         loop21:
                                                         while(_loc3_ || _loc3_)
                                                         {
                                                            §§push(_loc2_);
                                                            loop22:
                                                            while(true)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               loop23:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  loop24:
                                                                  while(true)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                     loop25:
                                                                     while(_loc3_)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           loop26:
                                                                           while(_loc3_)
                                                                           {
                                                                              §§pop();
                                                                              loop27:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc3_ || this)
                                                                                 {
                                                                                    §§push(param1.§=!`§);
                                                                                    loop28:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().x);
                                                                                       addr193:
                                                                                       loop29:
                                                                                       while(!_loc4_)
                                                                                       {
                                                                                          §§push(this.§=!`§);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop().x);
                                                                                             addr198:
                                                                                             addr259:
                                                                                             while(_loc3_ || param1)
                                                                                             {
                                                                                                §§push(§§pop() <= §§pop());
                                                                                                loop32:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                   addr207:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      loop34:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Boolean(§§pop()));
                                                                                                         loop35:
                                                                                                         while(_loc3_ || param1)
                                                                                                         {
                                                                                                            _loc2_ = §§pop();
                                                                                                            loop36:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc3_)
                                                                                                               {
                                                                                                                  if(_loc4_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§push(_loc2_);
                                                                                                                  loop37:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                     if(!_loc3_)
                                                                                                                     {
                                                                                                                        continue loop34;
                                                                                                                     }
                                                                                                                     if(!_loc3_)
                                                                                                                     {
                                                                                                                        continue loop26;
                                                                                                                     }
                                                                                                                     if(_loc4_)
                                                                                                                     {
                                                                                                                        continue loop20;
                                                                                                                     }
                                                                                                                     if(!_loc3_)
                                                                                                                     {
                                                                                                                        continue loop9;
                                                                                                                     }
                                                                                                                     §§push(§§pop());
                                                                                                                     if(!_loc4_)
                                                                                                                     {
                                                                                                                        if(_loc4_)
                                                                                                                        {
                                                                                                                           continue loop3;
                                                                                                                        }
                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                     }
                                                                                                                     if(_loc4_)
                                                                                                                     {
                                                                                                                        continue loop25;
                                                                                                                     }
                                                                                                                     if(!(_loc3_ || this))
                                                                                                                     {
                                                                                                                        continue loop24;
                                                                                                                     }
                                                                                                                     if(_loc4_)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        continue loop34;
                                                                                                                     }
                                                                                                                     loop38:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                        addr124:
                                                                                                                        addr260:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc3_)
                                                                                                                           {
                                                                                                                              if(!_loc4_)
                                                                                                                              {
                                                                                                                                 _loc2_ = §§pop();
                                                                                                                                 if(_loc4_ && _loc2_)
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!_loc4_)
                                                                                                                                       {
                                                                                                                                          continue loop28;
                                                                                                                                       }
                                                                                                                                       continue loop36;
                                                                                                                                    }
                                                                                                                                    continue loop29;
                                                                                                                                    addr186:
                                                                                                                                 }
                                                                                                                                 if(!_loc4_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc2_);
                                                                                                                                    if(_loc4_ && this)
                                                                                                                                    {
                                                                                                                                       continue;
                                                                                                                                    }
                                                                                                                                    if(_loc3_ || param1)
                                                                                                                                    {
                                                                                                                                       continue loop32;
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!(_loc3_ || _loc3_))
                                                                                                                                       {
                                                                                                                                          continue loop34;
                                                                                                                                       }
                                                                                                                                       if(_loc4_ && param1)
                                                                                                                                       {
                                                                                                                                          continue loop35;
                                                                                                                                       }
                                                                                                                                       if(_loc4_)
                                                                                                                                       {
                                                                                                                                          continue loop22;
                                                                                                                                       }
                                                                                                                                       if(!_loc4_)
                                                                                                                                       {
                                                                                                                                          continue loop38;
                                                                                                                                       }
                                                                                                                                       addr309:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!(_loc4_ && param1))
                                                                                                                                          {
                                                                                                                                             §§pop();
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§goto(addr336);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr337);
                                                                                                                                       addr96:
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(this.§4m§);
                                                                                                                                    if(!_loc4_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().y);
                                                                                                                                       break loop29;
                                                                                                                                    }
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 §§goto(addr321);
                                                                                                                              }
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           continue loop37;
                                                                                                                        }
                                                                                                                        addr260:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                           continue loop9;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  continue loop11;
                                                                                                               }
                                                                                                               continue loop27;
                                                                                                            }
                                                                                                            continue loop21;
                                                                                                         }
                                                                                                         §§goto(addr326);
                                                                                                      }
                                                                                                      continue loop32;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr63:
                                                                                             while(true)
                                                                                             {
                                                                                                §§goto(addr260);
                                                                                                §§goto(addr198);
                                                                                             }
                                                                                             §§push(this.§=!`§);
                                                                                             if(_loc4_ && param1)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             §§push(§§pop().y);
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   §§push(§§pop() <= §§pop());
                                                                                                   if(!(_loc4_ && this))
                                                                                                   {
                                                                                                      if(_loc4_ && param1)
                                                                                                      {
                                                                                                         continue loop23;
                                                                                                      }
                                                                                                      if(!_loc3_)
                                                                                                      {
                                                                                                         continue loop7;
                                                                                                      }
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         continue loop0;
                                                                                                      }
                                                                                                      §§goto(addr96);
                                                                                                   }
                                                                                                   §§goto(addr124);
                                                                                                }
                                                                                                §§goto(addr325);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr198);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       while(!(_loc4_ && _loc2_))
                                                                                       {
                                                                                          §§push(param1.§4m§);
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             §§goto(addr259);
                                                                                             §§push(§§pop().y);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr324);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr322);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr337);
                                                                              }
                                                                           }
                                                                           continue loop1;
                                                                        }
                                                                        §§goto(addr207);
                                                                     }
                                                                     continue loop12;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         continue loop8;
                                                      }
                                                   }
                                                   addr275:
                                                }
                                                §§goto(addr309);
                                             }
                                             continue loop2;
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
         §§goto(addr337);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = true;
         var _loc11_:b2Vec2 = null;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         §§push(-Number.MAX_VALUE);
         if(_loc18_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:* = Number(Number.MAX_VALUE);
         §§push(param2.p1.x);
         if(_loc18_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(param2.p1.y);
         if(_loc18_)
         {
            §§push(Number(§§pop()));
         }
         var _loc6_:* = §§pop();
         §§push(param2.p2.x);
         if(!_loc17_)
         {
            §§push(§§pop() - param2.p1.x);
            if(!_loc17_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc7_:* = §§pop();
         §§push(param2.p2.y);
         if(!(_loc17_ && param1))
         {
            §§push(§§pop() - param2.p1.y);
            if(!(_loc17_ && param2))
            {
               addr91:
               §§push(Number(§§pop()));
            }
            var _loc8_:* = §§pop();
            var _loc9_:Number = Math.abs(_loc7_);
            var _loc10_:Number = Math.abs(_loc8_);
            _loc11_ = param1.normal;
            if(_loc18_)
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
                        while(true)
                        {
                           §§push(§§pop() / §§pop());
                           while(true)
                           {
                              §§push(Number(§§pop()));
                              while(true)
                              {
                                 _loc12_ = §§pop();
                                 loop5:
                                 while(true)
                                 {
                                    §§push(this.§4m§);
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
                                             loop9:
                                             while(true)
                                             {
                                                §§push(_loc12_);
                                                while(true)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   while(true)
                                                   {
                                                      if(_loc18_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         while(true)
                                                         {
                                                            _loc13_ = §§pop();
                                                         }
                                                         addr912:
                                                      }
                                                      else
                                                      {
                                                         loop124:
                                                         while(true)
                                                         {
                                                            §§push(_loc5_);
                                                            loop125:
                                                            while(true)
                                                            {
                                                               if(!(_loc17_ && param1))
                                                               {
                                                                  §§push(§§pop() < §§pop());
                                                                  loop126:
                                                                  while(true)
                                                                  {
                                                                     if(_loc18_)
                                                                     {
                                                                        §§push(Boolean(§§pop()));
                                                                        loop43:
                                                                        while(true)
                                                                        {
                                                                           loop44:
                                                                           while(true)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    loop46:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc10_);
                                                                                       addr678:
                                                                                       loop47:
                                                                                       while(_loc18_ || param1)
                                                                                       {
                                                                                          if(§§pop() < Number.MIN_VALUE)
                                                                                          {
                                                                                             loop104:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc6_);
                                                                                                loop105:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc17_ && this))
                                                                                                   {
                                                                                                      addr697:
                                                                                                      §§push(this.§4m§);
                                                                                                      if(!(_loc18_ || this))
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      §§push(§§pop().y);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc17_ && param1))
                                                                                                         {
                                                                                                            if(_loc18_)
                                                                                                            {
                                                                                                               if(!_loc17_)
                                                                                                               {
                                                                                                                  §§push(§§pop() < §§pop());
                                                                                                                  loop59:
                                                                                                                  while(!_loc17_)
                                                                                                                  {
                                                                                                                     if(!_loc17_)
                                                                                                                     {
                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                        loop60:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop());
                                                                                                                           if(_loc18_ || this)
                                                                                                                           {
                                                                                                                              addr732:
                                                                                                                              if(!(_loc17_ && param2))
                                                                                                                              {
                                                                                                                                 addr740:
                                                                                                                                 if(!§§pop())
                                                                                                                                 {
                                                                                                                                    loop61:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(this.§=!`§);
                                                                                                                                          loop63:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!(_loc17_ && param2))
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().y);
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc6_);
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() < §§pop());
                                                                                                                                                      if(_loc18_ || param1)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc18_)
                                                                                                                                                         {
                                                                                                                                                            continue loop61;
                                                                                                                                                         }
                                                                                                                                                         if(_loc17_)
                                                                                                                                                         {
                                                                                                                                                            continue loop60;
                                                                                                                                                         }
                                                                                                                                                         if(_loc17_)
                                                                                                                                                         {
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         if(!_loc18_)
                                                                                                                                                         {
                                                                                                                                                            continue loop126;
                                                                                                                                                         }
                                                                                                                                                         §§push(Boolean(§§pop()));
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      loop66:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!§§pop())
                                                                                                                                                         {
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  param1.fraction = _loc3_;
                                                                                                                                                                  if(_loc18_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc18_ || param1)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc18_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc17_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc17_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(true);
                                                                                                                                                                                 if(!_loc18_)
                                                                                                                                                                                 {
                                                                                                                                                                                    return §§pop();
                                                                                                                                                                                 }
                                                                                                                                                                                 addr182:
                                                                                                                                                                                 if(!_loc18_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr674);
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop66;
                                                                                                                                                                              }
                                                                                                                                                                              loop33:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc17_ && param2))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc15_);
                                                                                                                                                                                    if(!(_loc17_ && param1))
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc18_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr846:
                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             _loc14_ = §§pop();
                                                                                                                                                                                             addr847:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(1);
                                                                                                                                                                                                addr822:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                                                                   addr823:
                                                                                                                                                                                                   addr879:
                                                                                                                                                                                                   loop37:
                                                                                                                                                                                                   while(!(_loc17_ && this))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      _loc16_ = §§pop();
                                                                                                                                                                                                      while(!_loc17_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc13_);
                                                                                                                                                                                                            addr807:
                                                                                                                                                                                                            while(!(_loc17_ && _loc3_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc3_);
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(§§pop() > §§pop())
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     loop110:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        _loc11_.x = _loc16_;
                                                                                                                                                                                                                        addr819:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           _loc11_.y = 0;
                                                                                                                                                                                                                           addr802:
                                                                                                                                                                                                                           while(!_loc17_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc13_);
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                                                                 addr789:
                                                                                                                                                                                                                                 while(_loc18_ || param2)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    _loc3_ = §§pop();
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop9;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop110;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(Number(Math.min(_loc4_,_loc14_)));
                                                                                                                                                                                                                     addr782:
                                                                                                                                                                                                                     loop117:
                                                                                                                                                                                                                     while(!_loc17_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        _loc4_ = §§pop();
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc3_);
                                                                                                                                                                                                                           addr745:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc18_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc18_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc4_);
                                                                                                                                                                                                                                    while(_loc18_ || this)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(§§pop() > §§pop())
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr759:
                                                                                                                                                                                                                                          return false;
                                                                                                                                                                                                                                          addr758:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop46;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                       addr896:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                                                                          break loop117;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr895:
                                                                                                                                                                                                                                    addr750:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    _loc15_ = §§pop();
                                                                                                                                                                                                                                    addr873:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc14_);
                                                                                                                                                                                                                                       break loop47;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr872:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr851:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 _loc13_ = §§pop();
                                                                                                                                                                                                                                 continue loop33;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        _loc14_ = §§pop();
                                                                                                                                                                                                                        addr898:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc17_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(-1);
                                                                                                                                                                                                                              while(!_loc17_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                                                                 break loop37;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop1;
                                                                                                                                                                                                                              addr876:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr975:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(this.§=!`§);
                                                                                                                                                                                                                              addr928:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop124;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop7;
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(false);
                                                                                                                                                                                                      break loop59;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      _loc16_ = §§pop();
                                                                                                                                                                                                      addr880:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc13_);
                                                                                                                                                                                                         break loop33;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr823);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          addr846:
                                                                                                                                                                                       }
                                                                                                                                                                                       break;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc5_);
                                                                                                                                                                                       addr962:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(this.§4m§);
                                                                                                                                                                                          break loop105;
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    addr961:
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc18_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc14_);
                                                                                                                                                                                    while(_loc18_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(§§pop() > §§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          loop27:
                                                                                                                                                                                          while(_loc18_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc13_);
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr872);
                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                                loop88:
                                                                                                                                                                                                while(_loc18_ || this)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                                                                   loop96:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      _loc14_ = §§pop();
                                                                                                                                                                                                      while(!_loc17_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(-1);
                                                                                                                                                                                                         while(!_loc17_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                            while(!_loc17_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc17_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  _loc16_ = §§pop();
                                                                                                                                                                                                                  while(!(_loc17_ && this))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc17_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc13_);
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc14_);
                                                                                                                                                                                                                           addr438:
                                                                                                                                                                                                                           while(!(_loc17_ && _loc3_))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc18_ || _loc3_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(§§pop() > §§pop())
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    loop84:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc13_);
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc18_ || param2)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr462:
                                                                                                                                                                                                                                             _loc15_ = Number(§§pop());
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc14_);
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!_loc17_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc18_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!_loc18_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               break;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            if(_loc18_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               _loc13_ = §§pop();
                                                                                                                                                                                                                                                               loop72:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(_loc15_);
                                                                                                                                                                                                                                                                  if(_loc18_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!_loc18_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr404:
                                                                                                                                                                                                                                                                  while(_loc18_ || _loc3_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     _loc14_ = §§pop();
                                                                                                                                                                                                                                                                     continue loop72;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr896);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr788);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§goto(addr912);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr626);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      continue loop47;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   continue loop96;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr462);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr463:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr523);
                                                                                                                                                                                                                                          continue loop84;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr300);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr522);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           while(_loc18_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                              continue loop88;
                                                                                                                                                                                                                              §§goto(addr438);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr580);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr758);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc18_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc18_ || param2)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc18_ || this)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop46;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr847);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     if(!_loc17_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!(_loc17_ && this))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc18_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop27;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(this.§=!`§);
                                                                                                                                                                                                                              if(_loc17_ && param1)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop63;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              if(_loc18_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr507);
                                                                                                                                                                                                                                 §§push(§§pop().y);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop().x);
                                                                                                                                                                                                                                    continue loop0;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr884:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr819);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr785);
                                                                                                                                                                                                                     §§goto(addr484);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr484:
                                                                                                                                                                                                                  §§goto(addr797);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr846);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr745);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr822);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr673);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          while(_loc18_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr884);
                                                                                                                                                                                             §§push(this.§=!`§);
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop5;
                                                                                                                                                                                          addr913:
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr805);
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop8;
                                                                                                                                                                                    addr865:
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr962);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr285);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr846);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr237);
                                                                                                                                                                     }
                                                                                                                                                                     break;
                                                                                                                                                                  }
                                                                                                                                                                  if(_loc18_ || _loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc17_ && param2))
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc17_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc17_)
                                                                                                                                                                           {
                                                                                                                                                                              continue;
                                                                                                                                                                           }
                                                                                                                                                                           continue loop104;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr463);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr325);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr344);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr182);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         addr673:
                                                                                                                                                         addr674:
                                                                                                                                                         return §§pop();
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   continue loop44;
                                                                                                                                                   if(_loc17_ && param2)
                                                                                                                                                   {
                                                                                                                                                      continue;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr265);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr928);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr671);
                                                                                                                              }
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           §§goto(addr740);
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              continue loop43;
                                                                                                                           }
                                                                                                                           §§goto(addr732);
                                                                                                                        }
                                                                                                                        addr973:
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§pop();
                                                                                                                        §§goto(addr975);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  return §§pop();
                                                                                                               }
                                                                                                               continue loop125;
                                                                                                            }
                                                                                                            §§goto(addr865);
                                                                                                         }
                                                                                                         §§goto(addr815);
                                                                                                      }
                                                                                                      continue loop125;
                                                                                                   }
                                                                                                   §§goto(addr789);
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop().x);
                                                                                                   addr965:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() < §§pop());
                                                                                                      addr966:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Boolean(§§pop()));
                                                                                                         if(!_loc17_)
                                                                                                         {
                                                                                                            §§push(§§pop());
                                                                                                            if(!_loc17_)
                                                                                                            {
                                                                                                               §§push(Boolean(§§pop()));
                                                                                                            }
                                                                                                            §§goto(addr973);
                                                                                                         }
                                                                                                         §§goto(addr974);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr697);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push(1);
                                                                                          }
                                                                                          §§goto(addr614);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr851);
                                                                                          §§goto(addr678);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr953);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr966);
                                                                  }
                                                               }
                                                               §§goto(addr965);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr913);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       §§push(this.§4m§);
                                       if(_loc17_ && param1)
                                       {
                                          continue;
                                       }
                                       §§goto(addr564);
                                       §§push(§§pop().y);
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr961);
               }
            }
            §§goto(addr609);
         }
         §§goto(addr91);
      }
      
      public function § V§(param1:b2AABB) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(param1.§4m§.x);
         if(!(_loc7_ && param1))
         {
            §§push(§§pop() - this.§=!`§.x);
            if(_loc6_ || this)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         §§push(param1.§4m§.y);
         if(!(_loc7_ && param1))
         {
            §§push(§§pop() - this.§=!`§.y);
            if(!(_loc7_ && param1))
            {
               addr60:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(this.§4m§.x);
            if(_loc6_ || param1)
            {
               §§push(§§pop() - param1.§=!`§.x);
               if(!(_loc7_ && param1))
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc4_:* = §§pop();
            §§push(this.§4m§.y);
            if(!(_loc7_ && _loc3_))
            {
               §§push(§§pop() - param1.§=!`§.y);
               if(_loc6_ || this)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc5_:* = §§pop();
            if(_loc6_)
            {
               §§push(_loc2_);
               loop0:
               while(true)
               {
                  §§push(0);
                  loop1:
                  while(true)
                  {
                     §§push(§§pop() > §§pop());
                     if(_loc6_)
                     {
                        §§push(Boolean(§§pop()));
                        if(_loc6_ || this)
                        {
                           addr307:
                           §§push(§§pop());
                           loop18:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              loop19:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    loop2:
                                    while(true)
                                    {
                                       §§pop();
                                       loop3:
                                       while(true)
                                       {
                                          §§push(_loc3_);
                                          while(true)
                                          {
                                             §§push(0);
                                             addr287:
                                             addr134:
                                             while(true)
                                             {
                                                §§push(§§pop() > §§pop());
                                                addr288:
                                                while(true)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                }
                                             }
                                             if(!(_loc6_ || _loc3_))
                                             {
                                                continue;
                                             }
                                             addr151:
                                             §§push(0);
                                             if(!(_loc7_ && _loc2_))
                                             {
                                                §§push(§§pop() > §§pop());
                                                if(!(_loc7_ && _loc2_))
                                                {
                                                   addr167:
                                                   if(!(_loc7_ && this))
                                                   {
                                                      addr174:
                                                      if(_loc6_ || _loc2_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         loop16:
                                                         while(true)
                                                         {
                                                            if(!_loc7_)
                                                            {
                                                               if(!_loc7_)
                                                               {
                                                                  loop17:
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc6_ || _loc3_)
                                                                        {
                                                                           if(_loc6_ || this)
                                                                           {
                                                                              §§push(false);
                                                                              break;
                                                                           }
                                                                           addr221:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc4_);
                                                                              addr223:
                                                                              while(_loc6_)
                                                                              {
                                                                                 §§push(0);
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc7_ && param1))
                                                                                    {
                                                                                       if(_loc7_ && param1)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§push(§§pop() > §§pop());
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             §§push(Boolean(§§pop()));
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   if(_loc7_)
                                                                                                   {
                                                                                                      continue loop19;
                                                                                                   }
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                }
                                                                                                if(_loc6_ || this)
                                                                                                {
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      while(!(_loc7_ && param1))
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         §§goto(addr167);
                                                                                                      }
                                                                                                      addr292:
                                                                                                      return §§pop();
                                                                                                      addr258:
                                                                                                   }
                                                                                                   continue loop17;
                                                                                                }
                                                                                                continue loop18;
                                                                                             }
                                                                                             continue loop18;
                                                                                             addr244:
                                                                                          }
                                                                                          continue loop2;
                                                                                          §§goto(addr174);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr287);
                                                                                    }
                                                                                    §§goto(addr151);
                                                                                 }
                                                                                 continue loop1;
                                                                              }
                                                                              continue loop0;
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr211:
                                                                           if(!(_loc7_ && param1))
                                                                           {
                                                                              if(!_loc7_)
                                                                              {
                                                                                 addr111:
                                                                                 §§push(true);
                                                                                 if(_loc7_ && this)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 continue loop16;
                                                                              }
                                                                              addr291:
                                                                              §§goto(addr292);
                                                                              §§push(false);
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(_loc6_ || param1)
                                                                           {
                                                                              §§push(_loc5_);
                                                                              if(_loc6_)
                                                                              {
                                                                                 §§goto(addr134);
                                                                              }
                                                                              break;
                                                                           }
                                                                           continue loop3;
                                                                           §§goto(addr211);
                                                                        }
                                                                        §§goto(addr223);
                                                                     }
                                                                     §§goto(addr111);
                                                                  }
                                                                  if(_loc7_ && param1)
                                                                  {
                                                                     §§goto(addr288);
                                                                  }
                                                                  return §§pop();
                                                               }
                                                               break;
                                                            }
                                                            §§goto(addr244);
                                                         }
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               §§goto(addr221);
                                                            }
                                                            §§goto(addr291);
                                                         }
                                                         addr182:
                                                         addr290:
                                                      }
                                                      §§goto(addr241);
                                                   }
                                                   §§goto(addr258);
                                                }
                                                §§goto(addr182);
                                             }
                                             §§goto(addr226);
                                          }
                                       }
                                    }
                                    addr310:
                                 }
                                 while(true)
                                 {
                                    §§goto(addr290);
                                 }
                              }
                           }
                        }
                        §§goto(addr310);
                     }
                     §§goto(addr307);
                  }
               }
            }
            §§goto(addr291);
         }
         §§goto(addr60);
      }
      
      public function §[!g§(param1:b2AABB, param2:b2AABB) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(this.§4m§);
            while(true)
            {
               §§pop().x = Math.min(param1.§4m§.x,param2.§4m§.x);
               while(true)
               {
                  §§push(this.§4m§);
                  if(!(_loc3_ || this))
                  {
                     break;
                  }
                  §§pop().y = Math.min(param1.§4m§.y,param2.§4m§.y);
                  loop2:
                  while(!(_loc4_ && _loc3_))
                  {
                     §§push(this.§=!`§);
                     while(true)
                     {
                        §§pop().x = Math.max(param1.§=!`§.x,param2.§=!`§.x);
                        while(true)
                        {
                           §§push(this.§=!`§);
                           if(_loc4_)
                           {
                              break;
                           }
                           §§pop().y = Math.max(param1.§=!`§.y,param2.§=!`§.y);
                           if(!(_loc4_ && param2))
                           {
                              if(!_loc4_)
                              {
                                 return;
                                 addr57:
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr57);
      }
   }
}
