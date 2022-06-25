package §8w§
{
   import §;%§.b2Vec2;
   
   public class b2AABB
   {
       
      
      public var §+!`§:b2Vec2;
      
      public var §"W§:b2Vec2;
      
      public function b2AABB()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§+!`§ = new b2Vec2();
            while(true)
            {
               this.§"W§ = new b2Vec2();
               §§goto(addr52);
            }
         }
         addr52:
         while(true)
         {
            super();
            if(!_loc1_)
            {
               if(_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public static function §3!M§(param1:b2AABB, param2:b2AABB) : b2AABB
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2AABB = new b2AABB();
         if(!(_loc4_ && _loc3_))
         {
            _loc3_.§3!M§(param1,param2);
         }
         return _loc3_;
      }
      
      public function §,b§() : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.§"W§.x);
         if(_loc4_)
         {
            §§push(§§pop() - this.§+!`§.x);
            if(!_loc5_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc1_:* = §§pop();
         §§push(this.§"W§.y);
         if(_loc4_ || this)
         {
            §§push(§§pop() - this.§+!`§.y);
            if(!_loc5_)
            {
               addr45:
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            if(_loc4_ || this)
            {
               §§push(_loc1_);
               if(_loc4_)
               {
                  §§push(0);
                  if(_loc4_)
                  {
                     §§push(§§pop() >= §§pop());
                     if(!_loc5_)
                     {
                        if(§§pop())
                        {
                           if(!(_loc5_ && _loc2_))
                           {
                              §§pop();
                              addr75:
                              addr74:
                              addr73:
                              §§push(_loc2_ >= 0);
                              if(_loc5_ && _loc3_)
                              {
                              }
                              addr94:
                              var _loc3_:* = §§pop();
                              if(_loc4_)
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
                                             loop3:
                                             while(true)
                                             {
                                                §§pop();
                                                loop4:
                                                while(true)
                                                {
                                                   §§push(this.§+!`§.§,b§());
                                                   while(_loc4_ || _loc3_)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      addr132:
                                                      if(_loc4_ || _loc2_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         if(!(_loc5_ && _loc2_))
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                            }
                                                            addr147:
                                                         }
                                                         loop10:
                                                         while(true)
                                                         {
                                                            if(!(_loc5_ && this))
                                                            {
                                                               _loc3_ = §§pop();
                                                               if(!(_loc5_ && _loc3_))
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue;
                                                               }
                                                               addr190:
                                                               loop9:
                                                               while(true)
                                                               {
                                                                  §§push(this.§"W§.§,b§());
                                                                  if(_loc5_ && _loc2_)
                                                                  {
                                                                     continue loop10;
                                                                  }
                                                                  addr123:
                                                                  if(!(_loc5_ && _loc2_))
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§goto(addr132);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     continue loop9;
                                                                     §§goto(addr123);
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(!_loc4_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     §§goto(addr194);
                                                                  }
                                                                  §§goto(addr147);
                                                               }
                                                               continue loop2;
                                                            }
                                                            continue loop3;
                                                         }
                                                         continue loop4;
                                                      }
                                                   }
                                                   continue loop1;
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             §§goto(addr190);
                                          }
                                       }
                                    }
                                    if(_loc5_ && this)
                                    {
                                       continue;
                                    }
                                    §§goto(addr109);
                                 }
                              }
                              §§goto(addr176);
                           }
                           §§goto(addr94);
                        }
                        §§push(Boolean(§§pop()));
                     }
                     §§goto(addr94);
                  }
                  §§goto(addr75);
               }
               §§goto(addr74);
            }
            §§goto(addr73);
         }
         §§goto(addr45);
      }
      
      public function §,!8§() : b2Vec2
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(this.§+!`§.x);
         if(_loc1_ || _loc2_)
         {
            §§push(this.§"W§.x);
            if(_loc1_)
            {
               §§push(§§pop() + §§pop());
               if(_loc1_ || this)
               {
                  addr62:
                  §§push(§§pop() / 2);
                  §§push(this.§+!`§.y);
                  if(!(_loc2_ && _loc2_))
                  {
                     §§push(§§pop() + this.§"W§.y);
                     if(!(_loc2_ && this))
                     {
                        addr83:
                        §§push(§§pop() / 2);
                     }
                     return new §§pop().b2Vec2(§§pop(),§§pop());
                  }
               }
               §§goto(addr62);
            }
            §§goto(addr83);
         }
         §§goto(addr62);
      }
      
      public function §^!X§() : b2Vec2
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(this.§"W§.x);
         if(!_loc2_)
         {
            §§push(this.§+!`§.x);
            if(_loc1_)
            {
               §§push(§§pop() - §§pop());
               if(_loc2_)
               {
               }
               §§goto(addr52);
            }
            §§goto(addr62);
         }
         addr52:
         §§push(§§pop() / 2);
         §§push(this.§"W§.y);
         if(!(_loc2_ && _loc2_))
         {
            addr62:
            §§push(§§pop() - this.§+!`§.y);
            if(!_loc2_)
            {
               §§push(§§pop() / 2);
            }
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public function §&y§(param1:b2AABB) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = true;
         if(!_loc4_)
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
                              §§push(this.§+!`§);
                              loop5:
                              while(true)
                              {
                                 §§push(§§pop().x);
                                 addr285:
                                 addr280:
                                 while(true)
                                 {
                                    §§push(param1.§+!`§);
                                    addr287:
                                    while(true)
                                    {
                                       §§push(§§pop().x);
                                       addr288:
                                       while(true)
                                       {
                                          §§push(§§pop() <= §§pop());
                                          addr289:
                                          while(_loc3_)
                                          {
                                          }
                                          continue loop0;
                                       }
                                    }
                                 }
                                 loop38:
                                 while(true)
                                 {
                                    §§push(this.§+!`§);
                                    if(_loc4_)
                                    {
                                       continue loop5;
                                    }
                                    §§push(§§pop().y);
                                    loop39:
                                    while(true)
                                    {
                                       §§push(param1.§+!`§);
                                       if(_loc3_ || _loc3_)
                                       {
                                          §§push(§§pop().y);
                                          loop40:
                                          while(true)
                                          {
                                             §§push(§§pop() <= §§pop());
                                             loop15:
                                             while(true)
                                             {
                                                while(true)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   loop17:
                                                   while(true)
                                                   {
                                                      _loc2_ = §§pop();
                                                      loop18:
                                                      while(true)
                                                      {
                                                         §§push(_loc2_);
                                                         loop19:
                                                         while(true)
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                            while(true)
                                                            {
                                                               if(_loc3_ || this)
                                                               {
                                                                  §§push(§§pop());
                                                                  loop21:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        if(!(_loc3_ || _loc2_))
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(§§pop())
                                                                        {
                                                                           loop22:
                                                                           while(true)
                                                                           {
                                                                              if(_loc3_ || this)
                                                                              {
                                                                                 if(_loc4_ && _loc2_)
                                                                                 {
                                                                                    continue loop1;
                                                                                 }
                                                                                 §§pop();
                                                                                 loop23:
                                                                                 for(; !_loc4_; while(true)
                                                                                 {
                                                                                    if(_loc4_ && _loc3_)
                                                                                    {
                                                                                       continue loop23;
                                                                                    }
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       continue loop18;
                                                                                    }
                                                                                    §§goto(addr173);
                                                                                 },§§goto(addr285))
                                                                                 {
                                                                                    §§push(param1.§"W§);
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().x);
                                                                                       addr178:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             continue loop39;
                                                                                          }
                                                                                          §§push(this.§"W§);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop().x);
                                                                                             addr183:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() <= §§pop());
                                                                                                addr184:
                                                                                                loop28:
                                                                                                while(!_loc4_)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(Boolean(§§pop()));
                                                                                                      loop30:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc2_ = §§pop();
                                                                                                         addr189:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc2_);
                                                                                                            if(!(_loc4_ && param1))
                                                                                                            {
                                                                                                               if(!(_loc3_ || this))
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§push(Boolean(§§pop()));
                                                                                                               if(!(_loc4_ && param1))
                                                                                                               {
                                                                                                                  addr159:
                                                                                                                  §§push(§§pop());
                                                                                                                  if(_loc4_)
                                                                                                                  {
                                                                                                                     continue loop21;
                                                                                                                  }
                                                                                                                  if(!§§pop())
                                                                                                                  {
                                                                                                                     loop36:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc3_)
                                                                                                                           {
                                                                                                                              if(_loc3_)
                                                                                                                              {
                                                                                                                                 continue loop19;
                                                                                                                              }
                                                                                                                              continue loop30;
                                                                                                                           }
                                                                                                                           addr124:
                                                                                                                           §§push(_loc2_);
                                                                                                                           if(_loc4_ && param1)
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           addr30:
                                                                                                                           if(!(_loc4_ && _loc2_))
                                                                                                                           {
                                                                                                                              continue loop22;
                                                                                                                           }
                                                                                                                           addr293:
                                                                                                                           addr93:
                                                                                                                           while(_loc3_)
                                                                                                                           {
                                                                                                                              continue loop36;
                                                                                                                              §§goto(addr30);
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc2_ = §§pop();
                                                                                                                              break loop23;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        continue loop38;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop();
                                                                                                                  continue loop23;
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr159);
                                                                                                         }
                                                                                                         continue loop28;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                continue loop17;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr173:
                                                                                       §§push(param1.§"W§);
                                                                                       continue loop39;
                                                                                       if(!(_loc3_ || _loc3_))
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       §§push(§§pop().y);
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             §§push(this.§"W§);
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                §§push(§§pop().y);
                                                                                                if(_loc3_ || param1)
                                                                                                {
                                                                                                   if(_loc4_ && param1)
                                                                                                   {
                                                                                                      continue loop40;
                                                                                                   }
                                                                                                   if(_loc3_ || _loc3_)
                                                                                                   {
                                                                                                      §§goto(addr93);
                                                                                                      §§push(§§pop() <= §§pop());
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr288);
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr183);
                                                                                                }
                                                                                                §§goto(addr184);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr182);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr285);
                                                                                          }
                                                                                          §§goto(addr288);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr178);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc2_);
                                                                                    addr252:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Boolean(§§pop()));
                                                                                       if(!(_loc4_ && this))
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          while(true)
                                                                                          {
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                continue loop15;
                                                                                             }
                                                                                          }
                                                                                          addr271:
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(_loc4_ && _loc3_)
                                                                                 {
                                                                                    break loop22;
                                                                                 }
                                                                                 §§pop();
                                                                                 continue loop38;
                                                                              }
                                                                           }
                                                                           §§goto(addr289);
                                                                        }
                                                                        §§goto(addr186);
                                                                     }
                                                                     §§goto(addr271);
                                                                  }
                                                                  continue loop2;
                                                               }
                                                               continue loop3;
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr287);
                                    }
                                 }
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        §§goto(addr293);
                     }
                  }
               }
            }
         }
         §§goto(addr280);
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
         if(_loc18_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc6_:* = §§pop();
         §§push(param2.p2.x);
         if(!(_loc17_ && param1))
         {
            §§push(§§pop() - param2.p1.x);
            if(_loc18_)
            {
               addr76:
               §§push(Number(§§pop()));
            }
            var _loc7_:* = §§pop();
            §§push(param2.p2.y);
            if(_loc18_)
            {
               §§push(§§pop() - param2.p1.y);
               if(!(_loc17_ && param1))
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc8_:* = §§pop();
            var _loc9_:Number = Math.abs(_loc7_);
            var _loc10_:Number = Math.abs(_loc8_);
            _loc11_ = param1.normal;
            if(!(_loc17_ && param2))
            {
               §§push(_loc9_);
               loop0:
               while(true)
               {
                  if(§§pop() >= Number.MIN_VALUE)
                  {
                     §§push(1);
                     while(true)
                     {
                        §§push(_loc7_);
                        loop2:
                        while(true)
                        {
                           §§push(§§pop() / §§pop());
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
                                    §§push(this.§+!`§);
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
                                             loop9:
                                             while(true)
                                             {
                                                §§push(_loc12_);
                                                loop10:
                                                while(true)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   loop11:
                                                   while(true)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      loop12:
                                                      while(true)
                                                      {
                                                         _loc13_ = §§pop();
                                                         loop13:
                                                         while(true)
                                                         {
                                                            §§push(this.§"W§);
                                                            loop14:
                                                            while(true)
                                                            {
                                                               if(!_loc17_)
                                                               {
                                                                  §§push(§§pop().x);
                                                                  if(!(_loc17_ && this))
                                                                  {
                                                                     §§push(_loc5_);
                                                                     if(!_loc17_)
                                                                     {
                                                                        §§push(§§pop() - §§pop());
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc12_);
                                                                        }
                                                                        addr872:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        addr874:
                                                                        while(true)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                     }
                                                                     addr873:
                                                                  }
                                                                  loop18:
                                                                  while(_loc18_)
                                                                  {
                                                                     _loc14_ = §§pop();
                                                                     loop19:
                                                                     while(!(_loc17_ && this))
                                                                     {
                                                                        §§push(-1);
                                                                        while(true)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           loop21:
                                                                           while(true)
                                                                           {
                                                                              _loc16_ = §§pop();
                                                                              loop22:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc13_);
                                                                                 loop23:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc14_);
                                                                                    loop24:
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop() > §§pop())
                                                                                       {
                                                                                          loop25:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc13_);
                                                                                             loop26:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                loop27:
                                                                                                while(_loc18_)
                                                                                                {
                                                                                                   _loc15_ = §§pop();
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc14_);
                                                                                                      loop29:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         loop30:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc18_ || this)
                                                                                                            {
                                                                                                               _loc13_ = §§pop();
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc15_);
                                                                                                                  loop32:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     loop33:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc14_ = §§pop();
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(1);
                                                                                                                           loop35:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                              loop36:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 _loc16_ = §§pop();
                                                                                                                                 loop37:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc17_)
                                                                                                                                    {
                                                                                                                                       continue loop19;
                                                                                                                                    }
                                                                                                                                    if(_loc17_ && param2)
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc13_);
                                                                                                                                       loop102:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc3_);
                                                                                                                                          loop103:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(§§pop() > §§pop())
                                                                                                                                             {
                                                                                                                                                if(_loc18_ || this)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc18_ || _loc3_))
                                                                                                                                                   {
                                                                                                                                                      continue loop25;
                                                                                                                                                   }
                                                                                                                                                   _loc11_.x = _loc16_;
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   _loc11_.y = 0;
                                                                                                                                                   addr786:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc13_);
                                                                                                                                                      addr772:
                                                                                                                                                      while(_loc18_ || param1)
                                                                                                                                                      {
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            _loc3_ = §§pop();
                                                                                                                                                            addr781:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      continue loop12;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr808:
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(Number(Math.min(_loc4_,_loc14_)));
                                                                                                                                                loop110:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   _loc4_ = §§pop();
                                                                                                                                                   loop111:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc18_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc3_);
                                                                                                                                                         loop112:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(_loc18_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc4_);
                                                                                                                                                               loop113:
                                                                                                                                                               while(_loc18_)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop() <= §§pop())
                                                                                                                                                                  {
                                                                                                                                                                     loop48:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc10_);
                                                                                                                                                                        loop49:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop() < Number.MIN_VALUE)
                                                                                                                                                                           {
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc6_);
                                                                                                                                                                                 loop99:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc18_ || _loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(this.§+!`§);
                                                                                                                                                                                       if(!(_loc17_ && param1))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop().y);
                                                                                                                                                                                          loop100:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() < §§pop());
                                                                                                                                                                                             loop94:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc18_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop());
                                                                                                                                                                                                   if(_loc18_ || param2)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!§§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr747:
                                                                                                                                                                                                         §§pop();
                                                                                                                                                                                                         §§push(this.§"W§.y);
                                                                                                                                                                                                         loop55:
                                                                                                                                                                                                         for(; _loc18_; §§goto(addr747))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc6_);
                                                                                                                                                                                                            loop56:
                                                                                                                                                                                                            while(!(_loc17_ && this))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc18_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() < §§pop());
                                                                                                                                                                                                                  if(_loc18_ || _loc3_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc17_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!§§pop())
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              loop58:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    param1.fraction = _loc3_;
                                                                                                                                                                                                                                    if(_loc18_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc18_ || param2)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!(_loc17_ && this))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc17_ && param1)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop22;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§push(true);
                                                                                                                                                                                                                                             if(!_loc17_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc17_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§goto(addr758);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                if(_loc18_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   return §§pop();
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop());
                                                                                                                                                                                                                                                   break loop94;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr936:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr211:
                                                                                                                                                                                                                                                if(!(_loc17_ && param1))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!_loc17_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!(_loc17_ && param1))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         return §§pop();
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr938:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§pop();
                                                                                                                                                                                                                                                         addr939:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(this.§"W§);
                                                                                                                                                                                                                                                            addr919:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop().x);
                                                                                                                                                                                                                                                               addr920:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(_loc5_);
                                                                                                                                                                                                                                                                  addr921:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                                                     addr922:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr923:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(§§pop())
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr925:
                                                                                                                                                                                                                                                                              return false;
                                                                                                                                                                                                                                                                              addr924:
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr907:
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop48;
                                                                                                                                                                                                                                                                           }
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
                                                                                                                                                                                                                                                      §§goto(addr747);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   while(_loc17_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop94;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   return §§pop();
                                                                                                                                                                                                                                                   addr699:
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             loop60:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc18_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!_loc18_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop37;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   if(_loc18_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc14_);
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc18_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                                                                            loop62:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc18_ || this)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!_loc18_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  _loc13_ = §§pop();
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(_loc15_);
                                                                                                                                                                                                                                                                     loop64:
                                                                                                                                                                                                                                                                     for(; !_loc17_; if(_loc17_ && this)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue;
                                                                                                                                                                                                                                                                     },if(!(_loc17_ && param1))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§goto(addr179);
                                                                                                                                                                                                                                                                     },§§goto(addr627))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                        loop65:
                                                                                                                                                                                                                                                                        while(_loc18_ || this)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           _loc14_ = §§pop();
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc18_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!_loc17_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(1);
                                                                                                                                                                                                                                                                                    if(_loc18_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!_loc18_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          break;
                                                                                                                                                                                                                                                                                          addr587:
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                       loop67:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!_loc18_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                _loc16_ = §§pop();
                                                                                                                                                                                                                                                                                                loop69:
                                                                                                                                                                                                                                                                                                while(_loc18_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(_loc13_);
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(_loc14_);
                                                                                                                                                                                                                                                                                                      addr483:
                                                                                                                                                                                                                                                                                                      while(!(_loc17_ && param2))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(§§pop() > §§pop())
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr491:
                                                                                                                                                                                                                                                                                                            §§push(_loc13_);
                                                                                                                                                                                                                                                                                                            break loop65;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         addr386:
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(_loc13_);
                                                                                                                                                                                                                                                                                                            continue loop67;
                                                                                                                                                                                                                                                                                                            §§goto(addr435);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      loop88:
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(!_loc17_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(_loc17_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               continue loop56;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                               addr561:
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(!(_loc17_ && param2))
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(!_loc17_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(!_loc17_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           _loc14_ = §§pop();
                                                                                                                                                                                                                                                                                                                           break loop69;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     addr647:
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(!_loc18_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           continue loop112;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        if(_loc17_ && param2)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           continue loop110;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        if(!_loc18_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           continue loop30;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     continue loop112;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  while(_loc18_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     _loc12_ = §§pop();
                                                                                                                                                                                                                                                                                                                     continue loop6;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  continue loop0;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               continue loop33;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr624:
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(_loc18_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(_loc17_ && _loc3_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        continue loop102;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                     loop95:
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        _loc13_ = §§pop();
                                                                                                                                                                                                                                                                                                                        addr636:
                                                                                                                                                                                                                                                                                                                        while(!_loc17_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(this.§"W§);
                                                                                                                                                                                                                                                                                                                           if(!_loc18_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              continue loop55;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           if(_loc17_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              continue loop14;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(!(_loc18_ || param2))
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 continue loop49;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              if(!_loc18_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                              if(_loc17_ && _loc3_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 continue loop88;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              if(_loc17_ && param2)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 continue loop8;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 continue loop88;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr780);
                                                                                                                                                                                                                                                                                                                           continue loop95;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr808);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  continue loop102;
                                                                                                                                                                                                                                                                                                                  addr627:
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               continue loop113;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            addr624:
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      addr319:
                                                                                                                                                                                                                                                                                                      continue loop113;
                                                                                                                                                                                                                                                                                                      if(!(_loc18_ || param1))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         continue;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      if(!_loc17_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                         loop79:
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(!(_loc17_ && param1))
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(!(_loc17_ && param2))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(!_loc18_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     continue loop99;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  if(_loc17_ && _loc3_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     continue loop4;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  _loc3_ = §§pop();
                                                                                                                                                                                                                                                                                                                  loop80:
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(_loc18_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(_loc18_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(_loc18_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(_loc17_ && param1)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                                                                                                                                 addr243:
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(Number(Math.min(_loc4_,_loc14_)));
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(_loc18_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(!(_loc17_ && param1))
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(_loc18_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(!_loc17_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                if(_loc18_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(!(_loc17_ && this))
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      _loc4_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                      continue loop80;
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   continue loop7;
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                continue loop23;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             continue loop27;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr772);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§goto(addr635);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§push(_loc3_);
                                                                                                                                                                                                                                                                                                                                    addr302:
                                                                                                                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                                                                                                                    if(!_loc18_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       continue;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    if(!_loc18_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       continue loop79;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    if(_loc18_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       continue loop64;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    addr305:
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(_loc18_ || param1)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(!(_loc18_ || this))
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             continue loop65;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr319);
                                                                                                                                                                                                                                                                                                                                          continue loop65;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       continue loop67;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr560);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr561);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              continue loop100;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr786);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        else if(!(_loc17_ && this))
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(_loc18_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              continue loop58;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           addr931:
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(_loc5_);
                                                                                                                                                                                                                                                                                                                              addr932:
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(this.§+!`§);
                                                                                                                                                                                                                                                                                                                                 break loop99;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           addr757:
                                                                                                                                                                                                                                                                                                                           addr758:
                                                                                                                                                                                                                                                                                                                           return §§pop();
                                                                                                                                                                                                                                                                                                                           §§push(false);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§goto(addr491);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr924);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr529);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr554);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr874);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr560);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(_loc18_ || param2)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop35;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   continue loop111;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             continue loop111;
                                                                                                                                                                                                                                                                                             addr517:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          if(_loc17_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             break;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          _loc16_ = §§pop();
                                                                                                                                                                                                                                                                                          addr435:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr435:
                                                                                                                                                                                                                                                                                          §§goto(addr386);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc17_ && this)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             continue loop26;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          if(!_loc18_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             break;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§push(_loc6_);
                                                                                                                                                                                                                                                                                          if(!(_loc17_ && this))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!(_loc18_ || param2))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop24;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                             if(_loc18_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(!(_loc18_ || this))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   continue loop55;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                if(!_loc17_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§goto(addr624);
                                                                                                                                                                                                                                                                                                   §§push(_loc12_);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§goto(addr920);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr635);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr624);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       continue loop11;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    continue loop35;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr781);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr636);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(_loc8_);
                                                                                                                                                                                                                                                                              if(!_loc18_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr647);
                                                                                                                                                                                                                                                                              §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           continue loop2;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     continue loop62;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               if(!_loc17_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  continue loop60;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               continue loop29;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            continue loop18;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr872);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr873);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr939);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr691:
                                                                                                                                                                                                                                                   if(_loc17_ && param1)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      break;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr699);
                                                                                                                                                                                                                                                   §§push(false);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr748);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr479);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr228);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr691);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr689:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr923);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr699);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr921);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop10;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr748:
                                                                                                                                                                                                         continue loop36;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr689);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   break;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr925);
                                                                                                                                                                                             }
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!§§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr938);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr922);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       break;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr874);
                                                                                                                                                                                 }
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr935);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§push(1);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr643);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr757);
                                                                                                                                                               }
                                                                                                                                                               continue loop103;
                                                                                                                                                            }
                                                                                                                                                            continue loop32;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr907);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 continue loop5;
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  if(_loc17_ && this)
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  §§goto(addr302);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr932);
                                                                                                         }
                                                                                                      }
                                                                                                      if(_loc17_ && _loc3_)
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      §§goto(addr305);
                                                                                                      §§push(_loc13_);
                                                                                                   }
                                                                                                }
                                                                                                continue loop21;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr787);
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     continue loop13;
                                                                  }
                                                                  continue loop9;
                                                               }
                                                               §§goto(addr919);
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
                  }
                  §§goto(addr931);
               }
            }
            §§goto(addr435);
         }
         §§goto(addr76);
      }
      
      public function §3!V§(param1:b2AABB) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(param1.§+!`§.x);
         if(_loc6_ || _loc3_)
         {
            §§push(§§pop() - this.§"W§.x);
            if(!_loc7_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         §§push(param1.§+!`§.y);
         if(!(_loc7_ && param1))
         {
            §§push(§§pop() - this.§"W§.y);
            if(_loc6_ || _loc2_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(this.§+!`§.x);
         if(!(_loc7_ && _loc3_))
         {
            §§push(§§pop() - param1.§"W§.x);
            if(!(_loc7_ && this))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         §§push(this.§+!`§.y);
         if(!(_loc7_ && _loc3_))
         {
            §§push(§§pop() - param1.§"W§.y);
            if(_loc6_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         if(_loc6_ || this)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(0);
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
                              addr258:
                              while(true)
                              {
                                 §§push(_loc3_);
                                 addr231:
                                 while(true)
                                 {
                                    §§push(0);
                                    addr232:
                                    while(true)
                                    {
                                       §§push(§§pop() > §§pop());
                                    }
                                 }
                              }
                           }
                           addr257:
                        }
                        while(true)
                        {
                           loop9:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 loop10:
                                 while(true)
                                 {
                                    §§push(_loc4_);
                                    loop11:
                                    while(_loc6_)
                                    {
                                       §§push(0);
                                       loop12:
                                       while(true)
                                       {
                                          §§push(§§pop() > §§pop());
                                          loop13:
                                          while(!_loc7_)
                                          {
                                             §§push(§§pop());
                                             if(!(_loc6_ || param1))
                                             {
                                                continue loop3;
                                             }
                                             if(§§pop())
                                             {
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(_loc6_ || param1)
                                                      {
                                                         §§push(false);
                                                      }
                                                      else
                                                      {
                                                         if(_loc6_ || _loc2_)
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               continue loop10;
                                                            }
                                                            if(!(_loc7_ && param1))
                                                            {
                                                               addr106:
                                                               §§push(true);
                                                               if(!(_loc7_ && _loc3_))
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     if(!(_loc6_ || this))
                                                                     {
                                                                        continue loop13;
                                                                     }
                                                                     if(!(_loc7_ && _loc2_))
                                                                     {
                                                                        return §§pop();
                                                                     }
                                                                     addr243:
                                                                     if(_loc6_ || _loc2_)
                                                                     {
                                                                        return §§pop();
                                                                     }
                                                                     §§goto(addr257);
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§pop();
                                                                        addr228:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc5_);
                                                                           if(!_loc7_)
                                                                           {
                                                                              if(_loc6_)
                                                                              {
                                                                                 continue loop12;
                                                                              }
                                                                              continue loop0;
                                                                           }
                                                                           continue loop11;
                                                                        }
                                                                     }
                                                                     addr217:
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  while(!_loc6_)
                                                                  {
                                                                     continue loop2;
                                                                  }
                                                                  return §§pop();
                                                                  addr180:
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr235:
                                                               if(_loc6_ || _loc2_)
                                                               {
                                                                  §§goto(addr243);
                                                                  §§push(false);
                                                               }
                                                            }
                                                            §§goto(addr258);
                                                         }
                                                         §§goto(addr228);
                                                      }
                                                      §§goto(addr180);
                                                   }
                                                   §§goto(addr106);
                                                }
                                                §§goto(addr232);
                                                addr170:
                                             }
                                             §§goto(addr217);
                                          }
                                          continue loop9;
                                       }
                                    }
                                    §§goto(addr231);
                                 }
                              }
                              §§goto(addr235);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr228);
      }
      
      public function §3!M§(param1:b2AABB, param2:b2AABB) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(this.§+!`§);
            while(true)
            {
               §§pop().x = Math.min(param1.§+!`§.x,param2.§+!`§.x);
               loop1:
               while(true)
               {
                  §§push(this.§+!`§);
                  if(!(_loc3_ || param2))
                  {
                     break;
                  }
                  §§pop().y = Math.min(param1.§+!`§.y,param2.§+!`§.y);
                  loop2:
                  while(true)
                  {
                     §§push(this.§"W§);
                     loop3:
                     while(true)
                     {
                        §§pop().x = Math.max(param1.§"W§.x,param2.§"W§.x);
                        addr67:
                        while(!_loc4_)
                        {
                           if(!_loc4_)
                           {
                              continue loop3;
                           }
                           continue loop1;
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr71);
      }
   }
}
