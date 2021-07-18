package §-r§
{
   import §6!H§.b2Vec2;
   
   public class b2AABB
   {
       
      
      public var §>!7§:b2Vec2;
      
      public var §=k§:b2Vec2;
      
      public function b2AABB()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§>!7§ = new b2Vec2();
            while(true)
            {
               this.§=k§ = new b2Vec2();
               loop1:
               while(_loc2_ || _loc1_)
               {
                  while(true)
                  {
                     super();
                     if(!(_loc1_ && _loc2_))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr67);
      }
      
      public static function §]y§(param1:b2AABB, param2:b2AABB) : b2AABB
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2AABB = new b2AABB();
         if(!_loc5_)
         {
            _loc3_.§]y§(param1,param2);
         }
         return _loc3_;
      }
      
      public function §&U§() : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§=k§.x);
         if(!_loc4_)
         {
            §§push(§§pop() - this.§>!7§.x);
            if(!(_loc4_ && _loc2_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc1_:* = §§pop();
         §§push(this.§=k§.y);
         if(_loc5_)
         {
            §§push(§§pop() - this.§>!7§.y);
            if(!_loc4_)
            {
               addr46:
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            if(!(_loc4_ && _loc2_))
            {
               §§push(_loc1_);
               if(!_loc4_)
               {
                  §§push(0);
                  if(!(_loc4_ && _loc2_))
                  {
                     §§push(§§pop() >= §§pop());
                     if(!_loc4_)
                     {
                        if(§§pop())
                        {
                           if(!(_loc4_ && _loc3_))
                           {
                              addr78:
                              §§pop();
                              §§push(_loc2_ >= 0);
                              if(!_loc4_)
                              {
                                 addr94:
                                 §§push(Boolean(§§pop()));
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
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             while(true)
                                             {
                                                §§pop();
                                                addr192:
                                                while(true)
                                                {
                                                   §§push(this.§>!7§.§&U§());
                                                   addr162:
                                                   while(true)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      addr163:
                                                      while(!_loc4_)
                                                      {
                                                      }
                                                      continue loop0;
                                                   }
                                                }
                                             }
                                             addr191:
                                          }
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
                                                   §§pop();
                                                   addr186:
                                                   loop12:
                                                   while(true)
                                                   {
                                                      §§push(this.§=k§.§&U§());
                                                      if(!_loc4_)
                                                      {
                                                         if(!(_loc4_ && _loc3_))
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  continue loop8;
                                                               }
                                                               continue loop1;
                                                            }
                                                            §§goto(addr162);
                                                         }
                                                         §§goto(addr163);
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            _loc3_ = §§pop();
                                                            if(_loc5_ || this)
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  §§push(_loc3_);
                                                                  if(!_loc5_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(!(_loc5_ || _loc3_))
                                                                  {
                                                                     continue loop8;
                                                                  }
                                                                  if(!(_loc4_ && this))
                                                                  {
                                                                     return §§pop();
                                                                  }
                                                                  §§goto(addr191);
                                                               }
                                                               break;
                                                            }
                                                            continue loop12;
                                                         }
                                                         §§goto(addr192);
                                                         addr147:
                                                      }
                                                      §§goto(addr162);
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                §§goto(addr147);
                                                §§goto(addr138);
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr186);
                           }
                        }
                        §§goto(addr94);
                     }
                  }
               }
            }
            §§goto(addr78);
         }
         §§goto(addr46);
      }
      
      public function §%!7§() : b2Vec2
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(this.§>!7§.x);
         if(_loc1_ || _loc2_)
         {
            §§push(this.§=k§.x);
            if(!_loc2_)
            {
               §§push(§§pop() + §§pop());
               if(_loc1_ || _loc1_)
               {
               }
               §§goto(addr52);
            }
            §§goto(addr83);
         }
         addr52:
         §§push(§§pop() / 2);
         §§push(this.§>!7§.y);
         if(!(_loc2_ && _loc1_))
         {
            §§push(§§pop() + this.§=k§.y);
            if(!(_loc2_ && _loc2_))
            {
               addr83:
               §§push(§§pop() / 2);
            }
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public function §[i§() : b2Vec2
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(this.§=k§.x);
         if(_loc1_ || _loc2_)
         {
            §§push(this.§>!7§.x);
            if(_loc1_ || this)
            {
               §§push(§§pop() - §§pop());
               if(_loc1_ || this)
               {
                  addr55:
                  §§push(§§pop() / 2);
               }
               §§push(this.§=k§.y);
               if(_loc1_)
               {
                  §§push(§§pop() - this.§>!7§.y);
                  if(!(_loc2_ && _loc2_))
                  {
                     addr83:
                     §§push(§§pop() / 2);
                  }
                  return new §§pop().b2Vec2(§§pop(),§§pop());
               }
            }
            §§goto(addr83);
         }
         §§goto(addr55);
      }
      
      public function §>!J§(param1:b2AABB) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = true;
         if(_loc3_)
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
                     if(!§§pop())
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
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    loop7:
                                    while(_loc3_ || _loc3_)
                                    {
                                       if(_loc3_)
                                       {
                                          §§push(§§pop());
                                          loop8:
                                          for(; _loc3_ || _loc2_; while(!(_loc4_ && param1))
                                          {
                                             if(§§pop())
                                             {
                                                §§goto(addr229);
                                             }
                                             §§goto(addr204);
                                          })
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
                                                      §§push(this.§>!7§);
                                                      if(_loc4_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(§§pop().y);
                                                      loop11:
                                                      while(true)
                                                      {
                                                         §§push(param1.§>!7§);
                                                         if(_loc4_)
                                                         {
                                                            break;
                                                         }
                                                         §§push(§§pop().y);
                                                         while(!_loc4_)
                                                         {
                                                            §§push(§§pop() <= §§pop());
                                                            addr85:
                                                            if(_loc3_ || param1)
                                                            {
                                                               §§push(§§pop() <= §§pop());
                                                               loop29:
                                                               while(true)
                                                               {
                                                                  if(_loc3_ || _loc2_)
                                                                  {
                                                                     if(!(_loc4_ && _loc2_))
                                                                     {
                                                                        if(_loc4_ && _loc2_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        continue loop6;
                                                                     }
                                                                     addr255:
                                                                     loop23:
                                                                     while(true)
                                                                     {
                                                                        if(_loc3_ || this)
                                                                        {
                                                                           if(!_loc3_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           _loc2_ = §§pop();
                                                                           loop24:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc2_);
                                                                              loop25:
                                                                              for(; _loc3_ || _loc3_; if(_loc4_ && _loc3_)
                                                                              {
                                                                                 continue;
                                                                              },if(!_loc4_)
                                                                              {
                                                                                 if(!(_loc4_ && this))
                                                                                 {
                                                                                    return §§pop();
                                                                                 }
                                                                                 continue loop3;
                                                                              },§§goto(addr202))
                                                                              {
                                                                                 §§push(Boolean(§§pop()));
                                                                                 loop26:
                                                                                 for(; _loc3_ || this; while(true)
                                                                                 {
                                                                                    if(_loc4_ && this)
                                                                                    {
                                                                                       continue loop26;
                                                                                    }
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       §§goto(addr132);
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       continue loop8;
                                                                                    }
                                                                                    §§goto(addr154);
                                                                                 },§§goto(addr191))
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    if(_loc4_ && param1)
                                                                                    {
                                                                                       continue loop8;
                                                                                    }
                                                                                    if(§§pop())
                                                                                    {
                                                                                       while(!_loc4_)
                                                                                       {
                                                                                          if(_loc3_ || _loc3_)
                                                                                          {
                                                                                             §§pop();
                                                                                             while(_loc3_)
                                                                                             {
                                                                                                §§push(param1.§=k§);
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   §§push(§§pop().y);
                                                                                                   if(!(_loc4_ && param1))
                                                                                                   {
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         continue loop11;
                                                                                                      }
                                                                                                      if(!(_loc4_ && _loc2_))
                                                                                                      {
                                                                                                         §§push(this.§=k§);
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            §§push(§§pop().y);
                                                                                                            if(_loc3_ || _loc2_)
                                                                                                            {
                                                                                                               §§goto(addr85);
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop().x);
                                                                                                            }
                                                                                                            addr200:
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() <= §§pop());
                                                                                                            addr202:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  continue loop9;
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  continue loop23;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(param1.§>!7§);
                                                                                                            break loop11;
                                                                                                         }
                                                                                                         addr287:
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                      }
                                                                                                      addr198:
                                                                                                   }
                                                                                                   §§goto(addr200);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                   }
                                                                                                   addr197:
                                                                                                }
                                                                                                §§goto(addr198);
                                                                                                _loc2_ = §§pop();
                                                                                                if(!(_loc3_ || _loc3_))
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   continue loop24;
                                                                                                }
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   §§push(_loc2_);
                                                                                                   if(!(_loc4_ && _loc2_))
                                                                                                   {
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         continue loop25;
                                                                                                      }
                                                                                                      continue loop29;
                                                                                                   }
                                                                                                   continue loop26;
                                                                                                   addr154:
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr230:
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      while(_loc3_)
                                                                                                      {
                                                                                                         §§push(_loc2_);
                                                                                                         break loop26;
                                                                                                      }
                                                                                                      continue loop5;
                                                                                                      addr257:
                                                                                                   }
                                                                                                   if(_loc4_ && _loc3_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§goto(addr197);
                                                                                                   }
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§>!7§);
                                                                                                   break loop10;
                                                                                                }
                                                                                                addr310:
                                                                                             }
                                                                                             continue loop10;
                                                                                             addr191:
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr309:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop();
                                                                                             §§goto(addr310);
                                                                                          }
                                                                                          continue loop29;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          _loc2_ = §§pop();
                                                                                          §§goto(addr257);
                                                                                       }
                                                                                       addr256:
                                                                                       addr181:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Boolean(§§pop()));
                                                                                          continue loop26;
                                                                                       }
                                                                                       addr121:
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§goto(addr220);
                                                                                    §§goto(addr165);
                                                                                 }
                                                                                 addr165:
                                                                              }
                                                                              continue loop4;
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§pop();
                                                                              continue loop23;
                                                                           }
                                                                           addr229:
                                                                        }
                                                                        §§goto(addr230);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr256);
                                                                     }
                                                                  }
                                                                  §§goto(addr181);
                                                               }
                                                               continue loop7;
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            continue loop3;
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr290);
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr287);
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                §§goto(addr255);
                                             }
                                          }
                                          continue loop2;
                                       }
                                       continue loop0;
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr309);
                  }
               }
            }
         }
         §§goto(addr239);
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
         if(_loc18_ || this)
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
         if(!(_loc17_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc6_:* = §§pop();
         §§push(param2.p2.x);
         if(_loc18_)
         {
            §§push(§§pop() - param2.p1.x);
            if(_loc18_)
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
            if(_loc18_ || this)
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
                           §§push(this.§>!7§);
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
                                          while(true)
                                          {
                                             §§pop();
                                             addr944:
                                             while(true)
                                             {
                                                §§push(this.§=k§);
                                                addr914:
                                                while(true)
                                                {
                                                   §§push(§§pop().x);
                                                   addr915:
                                                   while(true)
                                                   {
                                                      §§push(_loc5_);
                                                      addr916:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() < §§pop());
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          addr943:
                                       }
                                       while(true)
                                       {
                                          loop13:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                loop14:
                                                while(true)
                                                {
                                                   loop15:
                                                   while(true)
                                                   {
                                                      §§push(_loc10_);
                                                      loop16:
                                                      while(!_loc17_)
                                                      {
                                                         if(_loc18_)
                                                         {
                                                            if(§§pop() >= Number.MIN_VALUE)
                                                            {
                                                               §§push(1);
                                                               loop17:
                                                               while(_loc18_)
                                                               {
                                                                  §§push(_loc8_);
                                                                  if(!(_loc17_ && this))
                                                                  {
                                                                     §§push(§§pop() / §§pop());
                                                                     loop18:
                                                                     while(!_loc17_)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        loop19:
                                                                        while(true)
                                                                        {
                                                                           _loc12_ = §§pop();
                                                                           loop20:
                                                                           while(_loc18_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§>!7§);
                                                                                 if(!_loc17_)
                                                                                 {
                                                                                    §§push(§§pop().y);
                                                                                    loop40:
                                                                                    while(_loc18_ || param1)
                                                                                    {
                                                                                       §§push(_loc6_);
                                                                                       loop41:
                                                                                       while(_loc18_)
                                                                                       {
                                                                                          §§push(§§pop() - §§pop());
                                                                                          if(_loc18_ || _loc3_)
                                                                                          {
                                                                                             if(!_loc17_)
                                                                                             {
                                                                                                §§push(_loc12_);
                                                                                                loop42:
                                                                                                while(!(_loc17_ && _loc3_))
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(_loc18_)
                                                                                                   {
                                                                                                      if(_loc17_)
                                                                                                      {
                                                                                                         continue loop18;
                                                                                                      }
                                                                                                      if(_loc18_ || param2)
                                                                                                      {
                                                                                                         if(_loc18_)
                                                                                                         {
                                                                                                            if(!(_loc17_ && this))
                                                                                                            {
                                                                                                               if(!_loc18_)
                                                                                                               {
                                                                                                                  continue loop2;
                                                                                                               }
                                                                                                               §§push(Number(§§pop()));
                                                                                                               loop43:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!(_loc17_ && _loc3_))
                                                                                                                  {
                                                                                                                     if(_loc17_)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     _loc13_ = §§pop();
                                                                                                                     loop67:
                                                                                                                     while(_loc18_ || this)
                                                                                                                     {
                                                                                                                        addr606:
                                                                                                                        §§push(this.§=k§);
                                                                                                                        if(!(_loc17_ && param2))
                                                                                                                        {
                                                                                                                           §§push(§§pop().y);
                                                                                                                           loop60:
                                                                                                                           while(_loc18_)
                                                                                                                           {
                                                                                                                              §§push(_loc6_);
                                                                                                                              loop71:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!(_loc17_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    if(_loc18_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                       loop54:
                                                                                                                                       while(_loc18_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc12_);
                                                                                                                                          loop55:
                                                                                                                                          while(_loc18_)
                                                                                                                                          {
                                                                                                                                             addr513:
                                                                                                                                             loop46:
                                                                                                                                             for(; _loc18_ || _loc3_; §§goto(addr513))
                                                                                                                                             {
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                loop47:
                                                                                                                                                while(_loc18_ || param1)
                                                                                                                                                {
                                                                                                                                                   _loc14_ = §§pop();
                                                                                                                                                   loop48:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(-1);
                                                                                                                                                      loop49:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(_loc17_)
                                                                                                                                                         {
                                                                                                                                                            continue loop17;
                                                                                                                                                         }
                                                                                                                                                         if(!(_loc17_ && this))
                                                                                                                                                         {
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                            loop52:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               _loc16_ = §§pop();
                                                                                                                                                               loop62:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc13_);
                                                                                                                                                                  if(_loc18_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc14_);
                                                                                                                                                                     loop63:
                                                                                                                                                                     while(_loc18_)
                                                                                                                                                                     {
                                                                                                                                                                        if(§§pop() > §§pop())
                                                                                                                                                                        {
                                                                                                                                                                           loop68:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc13_);
                                                                                                                                                                              loop69:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                 addr444:
                                                                                                                                                                                 loop58:
                                                                                                                                                                                 while(_loc18_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr446:
                                                                                                                                                                                    _loc15_ = §§pop();
                                                                                                                                                                                    while(!(_loc17_ && _loc3_))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc14_);
                                                                                                                                                                                       loop45:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc18_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop47;
                                                                                                                                                                                          }
                                                                                                                                                                                          if(!_loc18_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop46;
                                                                                                                                                                                          }
                                                                                                                                                                                          if(!(_loc18_ || param1))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr823:
                                                                                                                                                                                             §§push(_loc14_);
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(§§pop() > §§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr825:
                                                                                                                                                                                                   if(!(_loc17_ && _loc3_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr833:
                                                                                                                                                                                                      §§push(_loc13_);
                                                                                                                                                                                                      if(!(_loc17_ && this))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc15_ = §§pop();
                                                                                                                                                                                                            break loop20;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr841:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            break loop47;
                                                                                                                                                                                                            §§goto(addr833);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr881:
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr823);
                                                                                                                                                                                                      §§goto(addr825);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr847:
                                                                                                                                                                                                }
                                                                                                                                                                                                addr769:
                                                                                                                                                                                                addr737:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   break loop46;
                                                                                                                                                                                                }
                                                                                                                                                                                                break loop40;
                                                                                                                                                                                             }
                                                                                                                                                                                             addr724:
                                                                                                                                                                                             if(§§pop() > §§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                addr726:
                                                                                                                                                                                                §§push(false);
                                                                                                                                                                                                if(_loc18_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   return §§pop();
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop5;
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop15;
                                                                                                                                                                                             addr824:
                                                                                                                                                                                          }
                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc17_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop54;
                                                                                                                                                                                             }
                                                                                                                                                                                             _loc13_ = §§pop();
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc15_);
                                                                                                                                                                                                addr395:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc17_ && param2)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop60;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc17_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop43;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop45;
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr446);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr680:
                                                                                                                                                                                    loop31:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       loop32:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          param1.fraction = _loc3_;
                                                                                                                                                                                          if(_loc18_ || this)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc18_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc17_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc18_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc18_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(true);
                                                                                                                                                                                                         if(_loc18_ || this)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc18_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc17_ && param1))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc18_ || _loc3_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     return §§pop();
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                                                                     if(!(_loc18_ || _loc3_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     if(!§§pop())
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§pop();
                                                                                                                                                                                                                           addr707:
                                                                                                                                                                                                                           addr775:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc17_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc17_ && param2)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop15;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              if(_loc18_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc17_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(this.§=k§);
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc17_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop().y);
                                                                                                                                                                                                                                          while(_loc18_ || param1)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc18_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc6_);
                                                                                                                                                                                                                                                while(_loc18_ || param1)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc18_ || _loc3_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                                      if(!(_loc17_ && param1))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop13;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr677:
                                                                                                                                                                                                                                                      addr677:
                                                                                                                                                                                                                                                      if(_loc18_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         return §§pop();
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr943);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr891:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                         break loop16;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr891:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr862:
                                                                                                                                                                                                                                                if(!(_loc17_ && param1))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                   continue loop0;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                continue loop4;
                                                                                                                                                                                                                                                addr645:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr846:
                                                                                                                                                                                                                                             _loc16_ = §§pop();
                                                                                                                                                                                                                                             §§goto(addr847);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr811:
                                                                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc18_ || _loc3_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                _loc13_ = §§pop();
                                                                                                                                                                                                                                                addr807:
                                                                                                                                                                                                                                                _loc14_ = Number(_loc15_);
                                                                                                                                                                                                                                                break loop17;
                                                                                                                                                                                                                                                addr808:
                                                                                                                                                                                                                                                addr820:
                                                                                                                                                                                                                                                addr806:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             continue loop0;
                                                                                                                                                                                                                                             addr795:
                                                                                                                                                                                                                                             if(_loc17_ && param1)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             _loc16_ = §§pop();
                                                                                                                                                                                                                                             §§goto(addr769);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§goto(addr846);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr845:
                                                                                                                                                                                                                                          addr635:
                                                                                                                                                                                                                                          addr812:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                       §§goto(addr606);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr851:
                                                                                                                                                                                                                                    if(_loc18_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop().x);
                                                                                                                                                                                                                                       break loop54;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr914);
                                                                                                                                                                                                                                    addr632:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr825);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr803);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(_loc18_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop1;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr883:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr845);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr706:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     else
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!§§pop())
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop31;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr677);
                                                                                                                                                                                                                           §§push(false);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr674:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr677);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop6;
                                                                                                                                                                                                                  addr697:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr726);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr706);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr207:
                                                                                                                                                                                                            if(_loc18_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc18_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  return §§pop();
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr920);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr677);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(this.§>!7§);
                                                                                                                                                                                                         addr887:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop().x);
                                                                                                                                                                                                            break loop18;
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr910:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr726);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr707);
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                addr206:
                                                                                                                                                                                                §§push(false);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr207);
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc17_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc17_ && this))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc18_ || this)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc17_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc17_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr808);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr787:
                                                                                                                                                                                                         if(_loc18_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc11_.y = 0;
                                                                                                                                                                                                            §§push(_loc13_);
                                                                                                                                                                                                            break loop58;
                                                                                                                                                                                                            addr768:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr919:
                                                                                                                                                                                                            addr920:
                                                                                                                                                                                                            return §§pop();
                                                                                                                                                                                                            §§push(false);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   loop33:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc17_ && param2))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc17_ && param1))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc17_ && param2))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               _loc11_.y = _loc16_;
                                                                                                                                                                                                               loop34:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc17_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc18_ || this))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop20;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     if(!_loc18_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     _loc11_.x = 0;
                                                                                                                                                                                                                     loop35:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!(_loc17_ && param2))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!(_loc17_ && _loc3_))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc18_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc18_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc13_);
                                                                                                                                                                                                                                    if(_loc18_ || _loc3_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    loop36:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc18_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!_loc17_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!_loc17_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc18_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!_loc18_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      _loc13_ = §§pop();
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   _loc3_ = §§pop();
                                                                                                                                                                                                                                                   loop37:
                                                                                                                                                                                                                                                   while(!_loc17_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc17_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop34;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      if(!(_loc17_ && param1))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!_loc17_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            loop38:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(Number(Math.min(_loc4_,_loc14_)));
                                                                                                                                                                                                                                                               loop39:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc17_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue loop36;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  if(_loc17_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue loop40;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  if(!(_loc18_ || _loc3_))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  _loc4_ = §§pop();
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!_loc17_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc18_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(_loc3_);
                                                                                                                                                                                                                                                                           if(!_loc18_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop39;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           if(!(_loc17_ && _loc3_))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc17_ && param2)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 continue loop69;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§push(_loc4_);
                                                                                                                                                                                                                                                                              if(!(_loc17_ && param1))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc17_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue loop63;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 if(_loc17_ && param2)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue loop55;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 if(_loc17_ && param2)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue loop71;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 if(_loc18_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(§§pop() <= §§pop())
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop32;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr206);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§goto(addr697);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr696:
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr677);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!_loc17_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(§§pop() > §§pop())
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          break;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       continue loop38;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    continue loop42;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 continue loop33;
                                                                                                                                                                                                                                                                                 addr333:
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              while(!_loc17_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr384:
                                                                                                                                                                                                                                                                                 _loc16_ = §§pop();
                                                                                                                                                                                                                                                                                 while(_loc18_ || _loc3_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(_loc13_);
                                                                                                                                                                                                                                                                                       addr316:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!(_loc17_ && param1))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(_loc18_ || param1)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc17_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   continue loop58;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr333);
                                                                                                                                                                                                                                                                                                §§push(_loc3_);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§goto(addr395);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr403);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr384);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr768);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr807);
                                                                                                                                                                                                                                                                              addr382:
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr823);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     continue loop37;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr820);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr691:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(this.§>!7§);
                                                                                                                                                                                                                                                                  if(_loc17_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr696);
                                                                                                                                                                                                                                                                  §§push(§§pop().y);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               continue loop3;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§goto(addr447);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr418);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr385);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   continue loop35;
                                                                                                                                                                                                                                                   addr893:
                                                                                                                                                                                                                                                   break loop35;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                continue loop19;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             continue loop52;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr430);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr316);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr944);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              break;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop62;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr413:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc17_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop49;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop48;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr851);
                                                                                                                                                                                                                     §§push(this.§=k§);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr433);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr691);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr690:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr716:
                                                                                                                                                                                                            §§push(_loc3_);
                                                                                                                                                                                                            §§push(_loc4_);
                                                                                                                                                                                                            break loop42;
                                                                                                                                                                                                            addr744:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop67;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop68;
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr676);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr251);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    addr447:
                                                                                                                                                                                 }
                                                                                                                                                                                 if(!(_loc17_ && this))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                    break loop60;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr841);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr314);
                                                                                                                                                                     }
                                                                                                                                                                     addr774:
                                                                                                                                                                     if(§§pop() > §§pop())
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr775);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr737);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr444);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc7_);
                                                                                                                                                               addr900:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() / §§pop());
                                                                                                                                                                  addr901:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                     addr902:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc17_ && param1))
                                                                                                                                                                        {
                                                                                                                                                                           _loc12_ = §§pop();
                                                                                                                                                                           §§goto(addr910);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr899:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr915);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                _loc14_ = §§pop();
                                                                                                                                                §§goto(addr883);
                                                                                                                                             }
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             if(_loc18_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr774);
                                                                                                                                                §§push(_loc3_);
                                                                                                                                             }
                                                                                                                                             §§goto(addr901);
                                                                                                                                          }
                                                                                                                                          continue loop41;
                                                                                                                                       }
                                                                                                                                       if(!(_loc18_ || _loc3_))
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§goto(addr891);
                                                                                                                                          }
                                                                                                                                          addr890:
                                                                                                                                       }
                                                                                                                                       §§goto(addr862);
                                                                                                                                       §§push(_loc5_);
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§goto(addr890);
                                                                                                                                    }
                                                                                                                                    addr889:
                                                                                                                                 }
                                                                                                                                 §§goto(addr645);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           _loc3_ = §§pop();
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        §§goto(addr632);
                                                                                                                     }
                                                                                                                     if(_loc17_ && param2)
                                                                                                                     {
                                                                                                                        continue loop14;
                                                                                                                     }
                                                                                                                     §§goto(addr737);
                                                                                                                  }
                                                                                                                  §§goto(addr635);
                                                                                                               }
                                                                                                               continue loop16;
                                                                                                               addr589:
                                                                                                            }
                                                                                                            §§goto(addr806);
                                                                                                         }
                                                                                                         §§goto(addr795);
                                                                                                      }
                                                                                                      §§goto(addr716);
                                                                                                   }
                                                                                                   §§goto(addr589);
                                                                                                }
                                                                                                if(_loc17_ && param1)
                                                                                                {
                                                                                                   §§goto(addr824);
                                                                                                }
                                                                                                §§goto(addr724);
                                                                                             }
                                                                                             §§goto(addr833);
                                                                                          }
                                                                                          §§goto(addr589);
                                                                                       }
                                                                                       if(!_loc17_)
                                                                                       {
                                                                                          §§goto(addr881);
                                                                                          §§push(§§pop() * §§pop());
                                                                                       }
                                                                                       §§goto(addr916);
                                                                                    }
                                                                                    _loc4_ = §§pop();
                                                                                    §§goto(addr744);
                                                                                 }
                                                                                 §§goto(addr887);
                                                                              }
                                                                           }
                                                                           §§goto(addr811);
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr889);
                                                                     }
                                                                  }
                                                                  §§goto(addr900);
                                                               }
                                                               if(!_loc17_)
                                                               {
                                                                  §§goto(addr795);
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               §§goto(addr811);
                                                            }
                                                            §§goto(addr690);
                                                         }
                                                         §§goto(addr902);
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr893);
                                                         §§goto(addr891);
                                                      }
                                                      §§goto(addr915);
                                                   }
                                                }
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
                  else
                  {
                     §§push(1);
                  }
                  §§goto(addr899);
               }
            }
            §§goto(addr628);
         }
         §§goto(addr76);
      }
      
      public function §"!F§(param1:b2AABB) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(param1.§>!7§.x);
         if(!_loc6_)
         {
            §§push(§§pop() - this.§=k§.x);
            if(!_loc6_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         §§push(param1.§>!7§.y);
         if(_loc7_ || _loc2_)
         {
            §§push(§§pop() - this.§=k§.y);
            if(_loc7_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(this.§>!7§.x);
         if(_loc7_)
         {
            §§push(§§pop() - param1.§=k§.x);
            if(_loc7_ || _loc2_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         §§push(this.§>!7§.y);
         if(!(_loc6_ && _loc2_))
         {
            §§push(§§pop() - param1.§=k§.y);
            if(!_loc6_)
            {
               addr82:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            if(_loc7_ || this)
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
                     while(true)
                     {
                        §§push(§§pop());
                        loop3:
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop8:
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
                                          while(!_loc6_)
                                          {
                                             §§push(0);
                                             loop12:
                                             for(; !_loc6_; §§push(0),if(!_loc7_)
                                             {
                                                continue;
                                             },if(_loc7_)
                                             {
                                                §§push(§§pop() > §§pop());
                                                if(_loc7_ || _loc3_)
                                                {
                                                   §§goto(addr131);
                                                }
                                                §§goto(addr157);
                                             },while(true)
                                             {
                                                continue loop8;
                                             })
                                             {
                                                §§push(§§pop() > §§pop());
                                                loop13:
                                                while(true)
                                                {
                                                   if(!(_loc6_ && _loc3_))
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         continue loop9;
                                                      }
                                                      §§push(§§pop());
                                                      if(!_loc7_)
                                                      {
                                                         continue loop3;
                                                      }
                                                      if(§§pop())
                                                      {
                                                         while(§§pop())
                                                         {
                                                            if(!(_loc6_ && param1))
                                                            {
                                                               break loop13;
                                                            }
                                                            if(!_loc6_)
                                                            {
                                                               if(_loc7_)
                                                               {
                                                                  break;
                                                               }
                                                               continue loop10;
                                                            }
                                                            addr185:
                                                            loop15:
                                                            while(true)
                                                            {
                                                               if(_loc7_ || _loc3_)
                                                               {
                                                                  if(!(_loc7_ || param1))
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(_loc5_);
                                                                  if(_loc7_ || _loc2_)
                                                                  {
                                                                     continue loop12;
                                                                  }
                                                                  continue loop11;
                                                               }
                                                               addr213:
                                                               addr214:
                                                               §§push(false);
                                                               if(_loc7_ || this)
                                                               {
                                                                  return §§pop();
                                                               }
                                                               addr238:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  break loop15;
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(_loc3_);
                                                               break loop11;
                                                            }
                                                         }
                                                         §§push(true);
                                                         if(!_loc6_)
                                                         {
                                                            return §§pop();
                                                         }
                                                         addr157:
                                                         addr157:
                                                         return §§pop();
                                                         addr147:
                                                      }
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         addr131:
                                                         if(!(_loc6_ && _loc2_))
                                                         {
                                                            continue loop13;
                                                         }
                                                      }
                                                      §§goto(addr185);
                                                   }
                                                   §§goto(addr214);
                                                }
                                                §§goto(addr157);
                                                §§push(false);
                                             }
                                             continue loop1;
                                          }
                                          continue loop0;
                                       }
                                    }
                                    §§goto(addr213);
                                 }
                              }
                           }
                           §§goto(addr238);
                        }
                     }
                  }
               }
            }
            §§goto(addr156);
         }
         §§goto(addr82);
      }
      
      public function §]y§(param1:b2AABB, param2:b2AABB) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            §§push(this.§>!7§);
            while(true)
            {
               §§pop().x = Math.min(param1.§>!7§.x,param2.§>!7§.x);
               while(true)
               {
                  §§push(this.§>!7§);
                  if(_loc3_)
                  {
                     break;
                  }
                  §§pop().y = Math.min(param1.§>!7§.y,param2.§>!7§.y);
                  loop2:
                  while(true)
                  {
                     §§push(this.§=k§);
                     while(true)
                     {
                        §§pop().x = Math.max(param1.§=k§.x,param2.§=k§.x);
                        continue loop2;
                        §§goto(addr82);
                     }
                  }
                  if(!(_loc4_ || param2))
                  {
                     continue;
                  }
                  §§goto(addr82);
               }
            }
         }
         addr82:
         while(true)
         {
            §§push(this.§=k§);
            if(!_loc3_)
            {
               §§pop().y = Math.max(param1.§=k§.y,param2.§=k§.y);
               if(_loc4_)
               {
                  break;
               }
               continue loop2;
            }
            continue loop3;
         }
      }
   }
}
