package §3c§
{
   import §9t§.b2Vec2;
   
   public class b2AABB
   {
       
      
      public var §<!@§:b2Vec2;
      
      public var §2!1§:b2Vec2;
      
      public function b2AABB()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§<!@§ = new b2Vec2();
         }
         while(true)
         {
            this.§2!1§ = new b2Vec2();
            while(!(_loc2_ && _loc1_))
            {
               super();
               if(_loc1_ || _loc1_)
               {
                  return;
               }
            }
         }
      }
      
      public static function §@B§(param1:b2AABB, param2:b2AABB) : b2AABB
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2AABB = new b2AABB();
         if(!(_loc5_ && param2))
         {
            _loc3_.§@B§(param1,param2);
         }
         return _loc3_;
      }
      
      public function §,8§() : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§2!1§.x);
         if(!(_loc4_ && _loc1_))
         {
            §§push(§§pop() - this.§<!@§.x);
            if(!(_loc4_ && _loc2_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc1_:* = §§pop();
         §§push(this.§2!1§.y);
         if(!_loc4_)
         {
            §§push(§§pop() - this.§<!@§.y);
            if(!(_loc4_ && _loc1_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         if(_loc5_ || _loc2_)
         {
            §§push(_loc1_);
            if(_loc5_)
            {
               §§push(0);
               if(_loc5_)
               {
                  §§push(§§pop() >= §§pop());
                  if(_loc5_ || _loc3_)
                  {
                     if(§§pop())
                     {
                        if(_loc5_)
                        {
                           §§pop();
                           addr86:
                           addr85:
                           addr84:
                           §§push(_loc2_ >= 0);
                           if(_loc4_ && _loc2_)
                           {
                           }
                           addr105:
                           var _loc3_:* = §§pop();
                           if(!_loc4_)
                           {
                              §§push(_loc3_);
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
                                          while(true)
                                          {
                                             §§pop();
                                             addr207:
                                             while(true)
                                             {
                                                §§push(this.§<!@§.§,8§());
                                                addr170:
                                                while(true)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                }
                                             }
                                          }
                                          addr206:
                                       }
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             if(!(_loc5_ || _loc2_))
                                             {
                                                break;
                                             }
                                             if(§§pop())
                                             {
                                                loop8:
                                                while(true)
                                                {
                                                   if(!(_loc4_ && _loc2_))
                                                   {
                                                      §§pop();
                                                      loop9:
                                                      while(true)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            break loop8;
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(this.§2!1§.§,8§());
                                                            if(!(_loc5_ || _loc2_))
                                                            {
                                                               continue loop8;
                                                            }
                                                            if(_loc4_)
                                                            {
                                                               break loop9;
                                                            }
                                                            §§push(Boolean(§§pop()));
                                                            while(true)
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  continue loop1;
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr170);
                                                      addr199:
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr206);
                                                   }
                                                }
                                                §§goto(addr207);
                                             }
                                             while(true)
                                             {
                                                §§goto(addr148);
                                                §§goto(addr144);
                                             }
                                             continue loop1;
                                             addr120:
                                             if(!(_loc4_ && this))
                                             {
                                                return §§pop();
                                             }
                                          }
                                          continue loop2;
                                       }
                                    }
                                 }
                                 if(_loc4_ && this)
                                 {
                                    continue;
                                 }
                                 _loc3_ = §§pop();
                                 if(!_loc4_)
                                 {
                                    §§push(_loc3_);
                                    if(_loc5_)
                                    {
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          §§goto(addr120);
                                       }
                                       §§goto(addr144);
                                    }
                                    §§goto(addr148);
                                 }
                                 §§goto(addr199);
                              }
                           }
                           §§goto(addr201);
                        }
                     }
                     §§push(Boolean(§§pop()));
                  }
                  §§goto(addr105);
               }
               §§goto(addr86);
            }
            §§goto(addr85);
         }
         §§goto(addr84);
      }
      
      public function §4!F§() : b2Vec2
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(this.§<!@§.x);
         if(_loc1_)
         {
            §§push(this.§2!1§.x);
            if(!(_loc2_ && _loc1_))
            {
               §§push(§§pop() + §§pop());
               if(!_loc2_)
               {
                  addr45:
                  §§push(§§pop() / 2);
               }
               §§push(this.§<!@§.y);
               if(!(_loc2_ && _loc1_))
               {
                  §§push(§§pop() + this.§2!1§.y);
                  if(_loc2_ && this)
                  {
                  }
                  §§goto(addr80);
               }
               §§push(§§pop() / 2);
            }
            addr80:
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr45);
      }
      
      public function §!!B§() : b2Vec2
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(this.§2!1§.x);
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§<!@§.x);
            if(_loc2_)
            {
               §§push(§§pop() - §§pop());
               if(_loc2_)
               {
                  addr46:
                  §§push(§§pop() / 2);
               }
               §§push(this.§2!1§.y);
               if(_loc2_ || _loc1_)
               {
                  §§goto(addr58);
               }
               §§goto(addr74);
            }
            addr58:
            §§push(§§pop() - this.§<!@§.y);
            if(!_loc1_)
            {
               addr74:
               §§push(§§pop() / 2);
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr46);
      }
      
      public function §""B§(param1:b2AABB) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = true;
         if(_loc3_ || this)
         {
            §§push(_loc2_);
            if(_loc3_ || _loc3_)
            {
               §§push(Boolean(§§pop()));
               loop0:
               while(true)
               {
                  §§push(§§pop());
                  loop1:
                  while(true)
                  {
                     if(§§pop())
                     {
                        addr309:
                        while(true)
                        {
                           §§pop();
                           addr310:
                           while(true)
                           {
                              §§push(this.§<!@§);
                              addr279:
                              while(true)
                              {
                                 §§push(§§pop().x);
                                 addr280:
                                 while(true)
                                 {
                                    §§push(param1.§<!@§);
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
                              }
                           }
                        }
                        addr309:
                     }
                     while(true)
                     {
                        loop3:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           loop4:
                           while(true)
                           {
                              _loc2_ = §§pop();
                              loop5:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 loop6:
                                 for(; _loc3_; if(!(_loc3_ || this))
                                 {
                                    continue;
                                 },§§goto(addr197))
                                 {
                                    §§push(Boolean(§§pop()));
                                    loop7:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       loop8:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             loop9:
                                             while(true)
                                             {
                                                §§pop();
                                                loop10:
                                                while(true)
                                                {
                                                   §§push(this.§<!@§);
                                                   if(_loc4_ && _loc3_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(§§pop().y);
                                                   loop11:
                                                   while(true)
                                                   {
                                                      §§push(param1.§<!@§);
                                                      if(!_loc3_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(§§pop().y);
                                                      while(_loc3_)
                                                      {
                                                         §§push(§§pop() <= §§pop());
                                                         while(!_loc4_)
                                                         {
                                                         }
                                                         continue loop4;
                                                      }
                                                      §§goto(addr283);
                                                      loop23:
                                                      while(true)
                                                      {
                                                         if(!(_loc4_ && _loc3_))
                                                         {
                                                            if(_loc3_ || _loc2_)
                                                            {
                                                               §§push(this.§2!1§);
                                                               loop24:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().x);
                                                                  addr187:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() <= §§pop());
                                                                     loop26:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc4_)
                                                                        {
                                                                           continue loop6;
                                                                        }
                                                                        loop17:
                                                                        while(true)
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                           loop18:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                              loop19:
                                                                              while(_loc3_ || param1)
                                                                              {
                                                                                 if(_loc4_ && _loc2_)
                                                                                 {
                                                                                    continue loop1;
                                                                                 }
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Boolean(§§pop()));
                                                                                       loop28:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             continue loop0;
                                                                                          }
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          _loc2_ = §§pop();
                                                                                          loop29:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc2_);
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc4_ && _loc2_)
                                                                                                {
                                                                                                   continue loop26;
                                                                                                }
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                if(_loc4_ && _loc3_)
                                                                                                {
                                                                                                   continue loop9;
                                                                                                }
                                                                                                §§push(Boolean(§§pop()));
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      continue loop28;
                                                                                                   }
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   §§push(§§pop());
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      continue loop19;
                                                                                                   }
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Boolean(§§pop()));
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               addr103:
                                                                                                               _loc2_ = §§pop();
                                                                                                               if(!(_loc4_ && this))
                                                                                                               {
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     if(_loc4_)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  continue loop29;
                                                                                                               }
                                                                                                               addr257:
                                                                                                               while(_loc3_)
                                                                                                               {
                                                                                                                  if(_loc3_ || _loc3_)
                                                                                                                  {
                                                                                                                     addr165:
                                                                                                                     §§push(param1.§2!1§);
                                                                                                                     if(!(_loc4_ && _loc3_))
                                                                                                                     {
                                                                                                                        §§push(§§pop().y);
                                                                                                                        if(!(_loc4_ && param1))
                                                                                                                        {
                                                                                                                           continue loop24;
                                                                                                                        }
                                                                                                                        continue loop23;
                                                                                                                     }
                                                                                                                     addr169:
                                                                                                                     addr169:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        continue loop23;
                                                                                                                        §§goto(addr165);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr103);
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc3_ || _loc2_)
                                                                                                                  {
                                                                                                                     if(!_loc3_)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§push(_loc2_);
                                                                                                                     continue loop17;
                                                                                                                  }
                                                                                                                  continue loop10;
                                                                                                               }
                                                                                                               continue loop5;
                                                                                                               addr156:
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     §§goto(addr156);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr309);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr169);
                                                                                                               addr143:
                                                                                                            }
                                                                                                            §§goto(addr310);
                                                                                                         }
                                                                                                         addr225:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§goto(addr169);
                                                                                                         }
                                                                                                      }
                                                                                                      addr99:
                                                                                                   }
                                                                                                   §§goto(addr143);
                                                                                                   if(!(_loc3_ || param1))
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   addr49:
                                                                                                   if(!(_loc4_ && param1))
                                                                                                   {
                                                                                                      §§goto(addr56);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         §§goto(addr225);
                                                                                                         §§goto(addr49);
                                                                                                      }
                                                                                                      addr224:
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr245);
                                                                                                addr92:
                                                                                                while(!(_loc4_ && param1))
                                                                                                {
                                                                                                   §§goto(addr99);
                                                                                                   §§goto(addr35);
                                                                                                }
                                                                                             }
                                                                                             continue loop18;
                                                                                          }
                                                                                       }
                                                                                       continue loop7;
                                                                                    }
                                                                                    addr197:
                                                                                 }
                                                                                 §§goto(addr224);
                                                                              }
                                                                              continue loop8;
                                                                           }
                                                                        }
                                                                     }
                                                                     continue loop6;
                                                                  }
                                                               }
                                                            }
                                                            break;
                                                         }
                                                         continue loop11;
                                                      }
                                                      §§goto(addr280);
                                                   }
                                                   §§goto(addr282);
                                                }
                                                §§goto(addr279);
                                             }
                                          }
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                             continue loop0;
                                          }
                                       }
                                    }
                                 }
                                 continue loop3;
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr309);
         }
         §§goto(addr115);
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
         if(!_loc17_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:* = Number(Number.MAX_VALUE);
         §§push(param2.p1.x);
         if(!_loc17_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(param2.p1.y);
         if(_loc18_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc6_:* = §§pop();
         §§push(param2.p2.x);
         if(!_loc17_)
         {
            §§push(§§pop() - param2.p1.x);
            if(!(_loc17_ && this))
            {
               addr76:
               §§push(Number(§§pop()));
            }
            var _loc7_:* = §§pop();
            §§push(param2.p2.y);
            if(!_loc17_)
            {
               §§push(§§pop() - param2.p1.y);
               if(!_loc17_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc8_:* = §§pop();
            var _loc9_:Number = Math.abs(_loc7_);
            var _loc10_:Number = Math.abs(_loc8_);
            _loc11_ = param1.normal;
            if(!_loc17_)
            {
               §§push(_loc9_);
               loop0:
               while(true)
               {
                  if(§§pop() < Number.MIN_VALUE)
                  {
                     loop1:
                     while(true)
                     {
                        §§push(_loc5_);
                        loop2:
                        while(true)
                        {
                           §§push(this.§<!@§);
                           loop3:
                           while(true)
                           {
                              §§push(§§pop().x);
                              loop4:
                              while(true)
                              {
                                 §§push(§§pop() < §§pop());
                                 loop5:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    loop6:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          loop7:
                                          while(true)
                                          {
                                             §§pop();
                                             loop8:
                                             while(true)
                                             {
                                                §§push(this.§2!1§);
                                                while(true)
                                                {
                                                   §§push(§§pop().x);
                                                   addr948:
                                                   while(true)
                                                   {
                                                      §§push(_loc5_);
                                                      addr949:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() < §§pop());
                                                      }
                                                   }
                                                   addr548:
                                                   if(_loc17_ && param2)
                                                   {
                                                      continue;
                                                   }
                                                   §§push(§§pop().y);
                                                   if(_loc18_)
                                                   {
                                                      if(_loc18_ || param2)
                                                      {
                                                         §§push(_loc6_);
                                                         loop29:
                                                         for(; !_loc17_; while(true)
                                                         {
                                                            if(_loc17_ && _loc3_)
                                                            {
                                                               continue loop29;
                                                            }
                                                            if(_loc18_ || _loc3_)
                                                            {
                                                               if(!_loc17_)
                                                               {
                                                                  if(_loc18_)
                                                                  {
                                                                     if(§§pop() > §§pop())
                                                                     {
                                                                        §§goto(addr516);
                                                                     }
                                                                     §§goto(addr352);
                                                                  }
                                                                  §§goto(addr924);
                                                               }
                                                               §§goto(addr844);
                                                            }
                                                            §§goto(addr687);
                                                         })
                                                         {
                                                            §§push(§§pop() - §§pop());
                                                            loop30:
                                                            while(_loc18_ || this)
                                                            {
                                                               if(!(_loc17_ && param1))
                                                               {
                                                                  §§push(_loc12_);
                                                                  loop31:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc17_)
                                                                     {
                                                                        if(_loc18_ || this)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           loop32:
                                                                           while(!(_loc17_ && this))
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              loop33:
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc17_ && _loc3_))
                                                                                 {
                                                                                    if(!_loc17_)
                                                                                    {
                                                                                       if(!(_loc17_ && this))
                                                                                       {
                                                                                          if(!_loc17_)
                                                                                          {
                                                                                             if(!_loc17_)
                                                                                             {
                                                                                                _loc14_ = §§pop();
                                                                                                loop34:
                                                                                                while(!(_loc17_ && param2))
                                                                                                {
                                                                                                   §§push(-1);
                                                                                                   loop35:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc16_ = §§pop();
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc13_);
                                                                                                            loop38:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc14_);
                                                                                                               continue loop29;
                                                                                                               addr280:
                                                                                                               loop61:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc18_ || this)
                                                                                                                  {
                                                                                                                     if(!_loc17_)
                                                                                                                     {
                                                                                                                        if(!(_loc17_ && this))
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           loop62:
                                                                                                                           for(; _loc18_ || param2; if(!(_loc18_ || this))
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           },if(_loc18_)
                                                                                                                           {
                                                                                                                              if(_loc17_)
                                                                                                                              {
                                                                                                                                 continue loop30;
                                                                                                                              }
                                                                                                                              §§goto(addr172);
                                                                                                                           },§§goto(addr420))
                                                                                                                           {
                                                                                                                              if(_loc18_ || _loc3_)
                                                                                                                              {
                                                                                                                                 _loc3_ = §§pop();
                                                                                                                                 loop63:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc18_)
                                                                                                                                    {
                                                                                                                                       if(_loc18_)
                                                                                                                                       {
                                                                                                                                          loop64:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(Number(Math.min(_loc4_,_loc14_)));
                                                                                                                                             loop65:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc18_)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc17_ && this))
                                                                                                                                                   {
                                                                                                                                                      if(_loc18_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc18_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            _loc4_ = §§pop();
                                                                                                                                                            loop66:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc17_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc17_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc18_ || param2))
                                                                                                                                                                     {
                                                                                                                                                                        break;
                                                                                                                                                                     }
                                                                                                                                                                     §§push(_loc3_);
                                                                                                                                                                     if(!(_loc17_ && _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        continue loop62;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop65;
                                                                                                                                                                  }
                                                                                                                                                                  loop28:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc18_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.§2!1§);
                                                                                                                                                                        if(_loc18_)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr548);
                                                                                                                                                                        }
                                                                                                                                                                        loop73:
                                                                                                                                                                        while(_loc18_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop().y);
                                                                                                                                                                           loop75:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc6_);
                                                                                                                                                                              addr687:
                                                                                                                                                                              loop71:
                                                                                                                                                                              while(!(_loc17_ && this))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() < §§pop());
                                                                                                                                                                                 loop72:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc17_)
                                                                                                                                                                                    {
                                                                                                                                                                                       loop55:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(§§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             addr700:
                                                                                                                                                                                             §§push(false);
                                                                                                                                                                                             if(_loc18_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr702:
                                                                                                                                                                                                if(!(_loc17_ && this))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc18_ || param2)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      return §§pop();
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop7;
                                                                                                                                                                                                }
                                                                                                                                                                                                addr951:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc17_ && this))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(false);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         loop14:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr928:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr725:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc10_);
                                                                                                                                                                                                                  loop17:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(§§pop() < Number.MIN_VALUE)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr730:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!(_loc17_ && _loc3_))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!(_loc17_ && param2))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc6_);
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(this.§<!@§);
                                                                                                                                                                                                                                    if(_loc17_ && _loc3_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§push(§§pop().y);
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                       addr756:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc17_ && _loc3_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§goto(addr960);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          if(!_loc18_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             break;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§push(§§pop());
                                                                                                                                                                                                                                          if(_loc17_ && param1)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop6;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          if(§§pop())
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop55;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§pop();
                                                                                                                                                                                                                                             addr775:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!_loc17_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc17_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      break;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§push(this.§2!1§);
                                                                                                                                                                                                                                                   continue loop73;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr876:
                                                                                                                                                                                                                                                loop109:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc15_);
                                                                                                                                                                                                                                                   addr860:
                                                                                                                                                                                                                                                   addr926:
                                                                                                                                                                                                                                                   while(_loc18_ || param1)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                                                                      loop111:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         _loc14_ = §§pop();
                                                                                                                                                                                                                                                         addr869:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(1);
                                                                                                                                                                                                                                                            addr855:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                                                                               addr856:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  _loc16_ = §§pop();
                                                                                                                                                                                                                                                                  addr857:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr841:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc13_);
                                                                                                                                                                                                                                                                        break loop62;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            continue loop111;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      _loc13_ = §§pop();
                                                                                                                                                                                                                                                      addr927:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(this.§2!1§);
                                                                                                                                                                                                                                                         break loop73;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr860);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr875:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      _loc13_ = §§pop();
                                                                                                                                                                                                                                                      continue loop109;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             continue loop1;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop5;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop3;
                                                                                                                                                                                                                                 addr745:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc13_);
                                                                                                                                                                                                                                 addr833:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                                                                    break loop61;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr840:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr796);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr730:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     else
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(1);
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc18_ || param2)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc18_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc8_);
                                                                                                                                                                                                                                 if(!(_loc17_ && this))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                    loop19:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                                                                       addr676:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!_loc18_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop75;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          _loc12_ = §§pop();
                                                                                                                                                                                                                                          loop21:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(this.§<!@§);
                                                                                                                                                                                                                                             if(_loc18_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop().y);
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc6_);
                                                                                                                                                                                                                                                   loop23:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                      addr639:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc12_);
                                                                                                                                                                                                                                                         loop25:
                                                                                                                                                                                                                                                         while(!(_loc17_ && param2))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                                                                               addr649:
                                                                                                                                                                                                                                                               addr172:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  _loc13_ = §§pop();
                                                                                                                                                                                                                                                                  continue loop28;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               if(_loc17_ && param1)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  continue;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               if(_loc18_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc18_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(_loc4_);
                                                                                                                                                                                                                                                                     if(_loc18_ || this)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!_loc18_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop31;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        if(_loc17_ && _loc3_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop23;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        if(!_loc17_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc18_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(§§pop() > §§pop())
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 continue loop66;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr136:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 param1.fraction = _loc3_;
                                                                                                                                                                                                                                                                                 if(!(_loc17_ && this))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc17_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop66;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    if(_loc18_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(true);
                                                                                                                                                                                                                                                                                       if(!(_loc18_ || param1))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§goto(addr227);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       if(_loc18_ || this)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc17_ && this)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             continue loop72;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          if(!_loc17_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             return §§pop();
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr796);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§goto(addr700);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       loop58:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!(_loc17_ && param1))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!_loc18_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                break;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             _loc11_.y = _loc16_;
                                                                                                                                                                                                                                                                                             continue loop21;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr516:
                                                                                                                                                                                                                                                                                          addr427:
                                                                                                                                                                                                                                                                                          while(_loc18_ || param2)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(_loc13_);
                                                                                                                                                                                                                                                                                                break loop65;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             continue loop58;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(_loc17_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop14;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§push(_loc13_);
                                                                                                                                                                                                                                                                                             if(_loc18_ || param1)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop19;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr534:
                                                                                                                                                                                                                                                                                             addr534:
                                                                                                                                                                                                                                                                                             while(!_loc17_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                _loc15_ = §§pop();
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(_loc14_);
                                                                                                                                                                                                                                                                                                   addr463:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!_loc17_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(_loc17_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            break;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                         while(_loc18_ || param1)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            _loc13_ = §§pop();
                                                                                                                                                                                                                                                                                                            §§goto(addr486);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         continue loop32;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      continue loop17;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   addr934:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                      addr935:
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(_loc18_ || this)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            _loc12_ = §§pop();
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(this.§<!@§);
                                                                                                                                                                                                                                                                                                               break loop21;
                                                                                                                                                                                                                                                                                                               addr886:
                                                                                                                                                                                                                                                                                                               while(_loc18_ || this)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(_loc14_);
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(_loc17_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        continue loop2;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr875);
                                                                                                                                                                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§goto(addr948);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   continue loop66;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr649);
                                                                                                                                                                                                                                                                                             §§goto(addr427);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr427:
                                                                                                                                                                                                                                                                                          continue loop19;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       addr376:
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr869);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!_loc17_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr456:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!_loc17_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!_loc17_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             continue loop35;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr835:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr812:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(Number(Math.min(_loc4_,_loc14_)));
                                                                                                                                                                                                                                                                                                addr818:
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(!_loc17_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      _loc4_ = §§pop();
                                                                                                                                                                                                                                                                                                      break loop34;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   addr882:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                      break loop33;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   break loop64;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§goto(addr730);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr796);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(§§pop() > §§pop())
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 break loop63;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr841);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr880:
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr755);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc17_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop29;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        if(!(_loc18_ || param1))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop25;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        if(§§pop() <= §§pop())
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop64;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr376);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr366:
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(_loc5_);
                                                                                                                                                                                                                                                                     break loop25;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr914:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(_loc5_);
                                                                                                                                                                                                                                                                  break loop71;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc17_ && this)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue loop4;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc12_);
                                                                                                                                                                                                                                                               addr924:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                  break loop30;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   continue loop33;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr637:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             break;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr934);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr933:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§goto(addr914);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr896);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                           addr405:
                                                                                                                                                                                                                           if(_loc17_ && _loc3_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(!(_loc17_ && param2))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc18_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc18_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc18_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          _loc16_ = §§pop();
                                                                                                                                                                                                                                          §§goto(addr427);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr534);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr447);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr856);
                                                                                                                                                                                                                              addr420:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr933);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr932:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr934);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr855);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr960:
                                                                                                                                                                                                      return §§pop();
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr928);
                                                                                                                                                                                                   §§goto(addr702);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr774);
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr136);
                                                                                                                                                                                             }
                                                                                                                                                                                             addr653:
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr730);
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop8;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr756);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                                                                 addr905:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc12_);
                                                                                                                                                                                    break loop29;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr903);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr775);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr537);
                                                                                                                                                            }
                                                                                                                                                            while(_loc18_)
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  _loc11_.x = _loc16_;
                                                                                                                                                                  §§goto(addr850);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc13_);
                                                                                                                                                               addr879:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr880);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr845:
                                                                                                                                                            addr898:
                                                                                                                                                         }
                                                                                                                                                         break loop64;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr437);
                                                                                                                                                   }
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                continue loop61;
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc18_)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc17_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      if(!_loc17_)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr366);
                                                                                                                                                         §§push(_loc3_);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr879);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr639);
                                                                                                                                                }
                                                                                                                                                §§goto(addr463);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!(_loc17_ && param2))
                                                                                                                                             {
                                                                                                                                                if(_loc18_)
                                                                                                                                                {
                                                                                                                                                   if(_loc18_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc4_);
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(§§pop() <= §§pop())
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr725);
                                                                                                                                                         }
                                                                                                                                                         addr796:
                                                                                                                                                         return false;
                                                                                                                                                      }
                                                                                                                                                      addr794:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr875);
                                                                                                                                                }
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             §§goto(addr818);
                                                                                                                                          }
                                                                                                                                          §§goto(addr868);
                                                                                                                                          addr782:
                                                                                                                                       }
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    §§goto(addr321);
                                                                                                                                    if(!(_loc18_ || this))
                                                                                                                                    {
                                                                                                                                       continue;
                                                                                                                                    }
                                                                                                                                    if(!(_loc18_ || param2))
                                                                                                                                    {
                                                                                                                                       if(!(_loc17_ && param1))
                                                                                                                                       {
                                                                                                                                          §§goto(addr653);
                                                                                                                                       }
                                                                                                                                       if(!(_loc17_ && param2))
                                                                                                                                       {
                                                                                                                                          if(_loc18_ || param1)
                                                                                                                                          {
                                                                                                                                             §§goto(addr725);
                                                                                                                                          }
                                                                                                                                          §§goto(addr927);
                                                                                                                                       }
                                                                                                                                       §§goto(addr909);
                                                                                                                                    }
                                                                                                                                    addr227:
                                                                                                                                    return §§pop();
                                                                                                                                    §§push(false);
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§goto(addr882);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr935);
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc3_);
                                                                                                                              addr844:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(§§pop() > §§pop())
                                                                                                                                 {
                                                                                                                                    §§goto(addr845);
                                                                                                                                 }
                                                                                                                                 §§goto(addr812);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     continue loop33;
                                                                                                                  }
                                                                                                                  continue loop38;
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc3_ = §§pop();
                                                                                                                  §§goto(addr835);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   if(!(_loc18_ || this))
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   if(!(_loc17_ && param1))
                                                                                                   {
                                                                                                      §§goto(addr280);
                                                                                                      §§push(_loc13_);
                                                                                                   }
                                                                                                   §§goto(addr700);
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc17_)
                                                                                                   {
                                                                                                      if(!(_loc18_ || this))
                                                                                                      {
                                                                                                         continue loop8;
                                                                                                      }
                                                                                                      §§goto(addr782);
                                                                                                      §§push(_loc3_);
                                                                                                   }
                                                                                                   §§goto(addr886);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr905);
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§goto(addr908);
                                                                                          }
                                                                                          addr907:
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    §§goto(addr676);
                                                                                 }
                                                                                 §§goto(addr637);
                                                                              }
                                                                              while(!_loc17_)
                                                                              {
                                                                                 _loc15_ = §§pop();
                                                                                 §§goto(addr886);
                                                                                 §§goto(addr882);
                                                                              }
                                                                              continue loop0;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              _loc16_ = §§pop();
                                                                              §§goto(addr898);
                                                                           }
                                                                           addr594:
                                                                        }
                                                                        break;
                                                                     }
                                                                     §§goto(addr794);
                                                                  }
                                                                  §§goto(addr949);
                                                               }
                                                               §§goto(addr923);
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr926);
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr907);
                                                         }
                                                      }
                                                      §§goto(addr833);
                                                   }
                                                   §§goto(addr594);
                                                }
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          §§goto(addr951);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  else
                  {
                     §§push(1);
                  }
                  §§goto(addr932);
               }
            }
            §§goto(addr847);
         }
         §§goto(addr76);
      }
      
      public function §5"0§(param1:b2AABB) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(param1.§<!@§.x);
         if(!(_loc7_ && _loc3_))
         {
            §§push(§§pop() - this.§2!1§.x);
            if(_loc6_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         §§push(param1.§<!@§.y);
         if(_loc6_ || this)
         {
            §§push(§§pop() - this.§2!1§.y);
            if(_loc6_ || _loc3_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(this.§<!@§.x);
         if(!_loc7_)
         {
            §§push(§§pop() - param1.§2!1§.x);
            if(!_loc7_)
            {
               addr68:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(this.§<!@§.y);
            if(_loc6_ || _loc2_)
            {
               §§push(§§pop() - param1.§2!1§.y);
               if(_loc6_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc5_:* = §§pop();
            if(!_loc7_)
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
                     loop2:
                     while(true)
                     {
                        §§push(§§pop());
                        loop3:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              while(true)
                              {
                                 §§pop();
                                 addr253:
                                 while(true)
                                 {
                                    §§push(_loc3_);
                                    addr216:
                                    while(true)
                                    {
                                       §§push(0);
                                       addr217:
                                       while(true)
                                       {
                                          §§push(§§pop() > §§pop());
                                       }
                                    }
                                 }
                              }
                              addr252:
                           }
                           while(true)
                           {
                              loop6:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc6_ || this)
                                    {
                                       if(!(_loc7_ && this))
                                       {
                                          §§goto(addr245);
                                       }
                                       §§goto(addr253);
                                    }
                                    else
                                    {
                                       loop7:
                                       while(true)
                                       {
                                          addr184:
                                          while(true)
                                          {
                                             §§push(_loc4_);
                                             while(true)
                                             {
                                                if(!_loc7_)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(0);
                                                   loop10:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() > §§pop());
                                                      while(true)
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            addr245:
                                                         }
                                                         §§push(§§pop());
                                                         if(!_loc6_)
                                                         {
                                                            break;
                                                         }
                                                         if(§§pop())
                                                         {
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(!(_loc7_ && _loc3_))
                                                                  {
                                                                     break loop10;
                                                                  }
                                                                  if(!_loc6_)
                                                                  {
                                                                     continue loop7;
                                                                  }
                                                               }
                                                               §§push(true);
                                                               if(_loc6_ || this)
                                                               {
                                                                  addr100:
                                                                  if(_loc6_ || param1)
                                                                  {
                                                                     break;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr173:
                                                                  if(_loc6_ || _loc2_)
                                                                  {
                                                                     return §§pop();
                                                                  }
                                                                  §§goto(addr252);
                                                               }
                                                            }
                                                            if(!(_loc7_ && _loc2_))
                                                            {
                                                               return §§pop();
                                                            }
                                                            continue;
                                                            addr163:
                                                         }
                                                         while(_loc6_ || _loc2_)
                                                         {
                                                            §§pop();
                                                            continue loop7;
                                                            §§goto(addr100);
                                                         }
                                                         continue loop6;
                                                         return false;
                                                      }
                                                      §§push(0);
                                                      addr131:
                                                      continue loop3;
                                                      if(_loc7_ && this)
                                                      {
                                                         continue;
                                                      }
                                                      if(_loc6_ || param1)
                                                      {
                                                         if(_loc7_)
                                                         {
                                                            continue loop1;
                                                         }
                                                         §§push(§§pop() > §§pop());
                                                         if(_loc6_ || this)
                                                         {
                                                            if(_loc7_ && this)
                                                            {
                                                               continue loop2;
                                                            }
                                                            §§goto(addr163);
                                                         }
                                                         §§goto(addr173);
                                                      }
                                                      §§goto(addr217);
                                                   }
                                                   §§goto(addr173);
                                                   §§push(false);
                                                }
                                                addr213:
                                                §§push(_loc5_);
                                                if(_loc7_)
                                                {
                                                   continue;
                                                }
                                                §§goto(addr131);
                                             }
                                             continue loop0;
                                          }
                                       }
                                    }
                                    §§goto(addr216);
                                 }
                                 §§goto(addr184);
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr253);
         }
         §§goto(addr68);
      }
      
      public function §@B§(param1:b2AABB, param2:b2AABB) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(this.§<!@§);
            loop0:
            while(true)
            {
               §§pop().x = Math.min(param1.§<!@§.x,param2.§<!@§.x);
               addr114:
               loop1:
               while(true)
               {
                  §§push(this.§<!@§);
                  if(!_loc4_)
                  {
                     continue loop0;
                  }
                  §§pop().y = Math.min(param1.§<!@§.y,param2.§<!@§.y);
                  loop2:
                  while(true)
                  {
                     §§push(this.§2!1§);
                     while(true)
                     {
                        §§pop().x = Math.max(param1.§2!1§.x,param2.§2!1§.x);
                        §§push(this.§2!1§);
                        addr77:
                        continue loop2;
                        if(_loc4_ || this)
                        {
                           §§pop().y = Math.max(param1.§2!1§.y,param2.§2!1§.y);
                           if(_loc4_)
                           {
                              if(!_loc3_)
                              {
                                 return;
                              }
                              continue loop1;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr114);
      }
   }
}
