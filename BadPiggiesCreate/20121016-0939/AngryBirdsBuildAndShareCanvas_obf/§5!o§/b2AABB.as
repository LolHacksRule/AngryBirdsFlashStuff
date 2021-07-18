package §5!o§
{
   import §2"=§.b2Vec2;
   
   public class b2AABB
   {
       
      
      public var §8! §:b2Vec2;
      
      public var §;R§:b2Vec2;
      
      public function b2AABB()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§8! § = new b2Vec2();
            while(true)
            {
               this.§;R§ = new b2Vec2();
               loop1:
               while(!(_loc1_ && _loc1_))
               {
                  while(true)
                  {
                     super();
                     if(!(_loc1_ && _loc1_))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr72);
      }
      
      public static function §%!]§(param1:b2AABB, param2:b2AABB) : b2AABB
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2AABB = new b2AABB();
         if(!(_loc4_ && param2))
         {
            _loc3_.§%!]§(param1,param2);
         }
         return _loc3_;
      }
      
      public function §1H§() : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§;R§.x);
         if(!_loc4_)
         {
            §§push(§§pop() - this.§8! §.x);
            if(_loc5_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc1_:* = §§pop();
         §§push(this.§;R§.y);
         if(!_loc4_)
         {
            §§push(§§pop() - this.§8! §.y);
            if(!(_loc4_ && _loc1_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            §§push(_loc1_);
            if(_loc5_)
            {
               §§push(0);
               if(_loc5_)
               {
                  §§push(§§pop() >= §§pop());
                  if(!_loc4_)
                  {
                     if(§§pop())
                     {
                        if(_loc5_)
                        {
                           §§pop();
                           addr66:
                           §§push(_loc2_ >= 0);
                           if(_loc5_)
                           {
                              addr69:
                              §§push(Boolean(§§pop()));
                           }
                           var _loc3_:* = §§pop();
                           if(!(_loc4_ && _loc3_))
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
                                                §§push(this.§8! §.§1H§());
                                                loop5:
                                                while(!_loc4_)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   if(_loc5_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         if(_loc4_ && _loc1_)
                                                         {
                                                            break;
                                                         }
                                                         if(§§pop())
                                                         {
                                                            loop6:
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               addr191:
                                                               loop11:
                                                               while(true)
                                                               {
                                                                  §§push(this.§;R§.§1H§());
                                                                  addr126:
                                                                  addr143:
                                                                  while(true)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                     if(!(_loc5_ || this))
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue loop6;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(_loc4_)
                                                                     {
                                                                        continue loop5;
                                                                     }
                                                                     _loc3_ = §§pop();
                                                                     if(_loc4_ && _loc2_)
                                                                     {
                                                                        continue loop11;
                                                                     }
                                                                     if(_loc4_ && _loc2_)
                                                                     {
                                                                        continue loop4;
                                                                     }
                                                                     §§push(_loc3_);
                                                                     if(!(_loc5_ || _loc1_))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(!(_loc4_ && _loc2_))
                                                                     {
                                                                        if(_loc5_ || _loc3_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        continue loop3;
                                                                     }
                                                                     §§goto(addr126);
                                                                  }
                                                                  if(!(_loc4_ && _loc3_))
                                                                  {
                                                                     return §§pop();
                                                                  }
                                                                  continue loop1;
                                                               }
                                                            }
                                                            addr190:
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr143);
                                                            §§goto(addr134);
                                                         }
                                                      }
                                                      continue loop2;
                                                      addr170:
                                                   }
                                                   §§goto(addr190);
                                                }
                                                continue loop0;
                                             }
                                          }
                                       }
                                       §§goto(addr170);
                                    }
                                 }
                              }
                           }
                           §§goto(addr191);
                        }
                     }
                  }
                  §§goto(addr69);
               }
            }
         }
         §§goto(addr66);
      }
      
      public function §]t§() : b2Vec2
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(this.§8! §.x);
         if(!_loc2_)
         {
            §§push(this.§;R§.x);
            if(_loc1_ || this)
            {
               §§push(§§pop() + §§pop());
               if(_loc1_ || _loc2_)
               {
                  addr50:
                  §§push(§§pop() / 2);
               }
               §§push(this.§8! §.y);
               if(_loc1_ || _loc1_)
               {
                  §§push(§§pop() + this.§;R§.y);
                  if(!(_loc2_ && _loc2_))
                  {
                     §§push(§§pop() / 2);
                  }
               }
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr50);
      }
      
      public function §8"?§() : b2Vec2
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(this.§;R§.x);
         if(!(_loc2_ && this))
         {
            §§push(this.§8! §.x);
            if(!_loc2_)
            {
               §§push(§§pop() - §§pop());
               if(_loc2_ && this)
               {
               }
               §§goto(addr52);
            }
            §§goto(addr57);
         }
         addr52:
         §§push(§§pop() / 2);
         §§push(this.§;R§.y);
         if(_loc1_)
         {
            addr57:
            §§push(§§pop() - this.§8! §.y);
            if(!_loc2_)
            {
               §§push(§§pop() / 2);
            }
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public function §6",§(param1:b2AABB) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = true;
         if(_loc4_)
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
                           loop4:
                           while(true)
                           {
                              §§push(this.§8! §);
                              while(true)
                              {
                                 §§push(§§pop().x);
                                 addr252:
                                 while(true)
                                 {
                                    §§push(param1.§8! §);
                                    addr254:
                                    while(true)
                                    {
                                       §§push(§§pop().x);
                                       addr255:
                                       while(true)
                                       {
                                          §§push(§§pop() <= §§pop());
                                       }
                                    }
                                 }
                                 loop17:
                                 while(true)
                                 {
                                    §§push(this.§8! §);
                                    if(!_loc4_)
                                    {
                                       break;
                                    }
                                    §§push(§§pop().y);
                                    loop18:
                                    for(; !(_loc3_ && _loc2_); while(_loc4_ || _loc2_)
                                    {
                                       §§goto(addr168);
                                       §§push(this.§;R§);
                                    })
                                    {
                                       §§push(param1.§8! §);
                                       if(_loc4_)
                                       {
                                          §§push(§§pop().y);
                                          while(true)
                                          {
                                             §§push(§§pop() <= §§pop());
                                             loop20:
                                             while(true)
                                             {
                                                loop21:
                                                while(true)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   addr223:
                                                   while(!(_loc3_ && this))
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         _loc2_ = §§pop();
                                                         while(true)
                                                         {
                                                            §§push(_loc2_);
                                                            continue loop21;
                                                         }
                                                         addr233:
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                            addr258:
                                                            while(!(_loc3_ && this))
                                                            {
                                                               continue loop0;
                                                            }
                                                            continue loop1;
                                                         }
                                                         addr257:
                                                      }
                                                   }
                                                   loop13:
                                                   while(true)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      loop14:
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         loop15:
                                                         while(_loc4_ || _loc3_)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               continue loop20;
                                                            }
                                                            loop16:
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               continue loop17;
                                                               loop33:
                                                               while(true)
                                                               {
                                                                  if(!(_loc4_ || param1))
                                                                  {
                                                                     continue loop16;
                                                                  }
                                                                  loop34:
                                                                  while(true)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                     loop35:
                                                                     while(true)
                                                                     {
                                                                        _loc2_ = §§pop();
                                                                        loop36:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc2_);
                                                                           loop37:
                                                                           while(_loc4_)
                                                                           {
                                                                              §§push(Boolean(§§pop()));
                                                                              loop38:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    continue loop15;
                                                                                 }
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Boolean(§§pop()));
                                                                                       loop41:
                                                                                       for(; _loc4_; while(true)
                                                                                       {
                                                                                          §§push(_loc2_);
                                                                                          if(!(_loc3_ && _loc2_))
                                                                                          {
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                if(_loc4_ || _loc2_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                continue loop13;
                                                                                             }
                                                                                             continue loop37;
                                                                                          }
                                                                                          continue loop41;
                                                                                       },return §§pop())
                                                                                       {
                                                                                          if(_loc3_ && this)
                                                                                          {
                                                                                             continue loop33;
                                                                                          }
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             continue loop14;
                                                                                          }
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             continue loop3;
                                                                                          }
                                                                                          _loc2_ = §§pop();
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             §§goto(addr233);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             loop40:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   continue loop36;
                                                                                                }
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   break loop33;
                                                                                                }
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   while(_loc4_ || _loc3_)
                                                                                                   {
                                                                                                      §§push(_loc2_);
                                                                                                      continue loop13;
                                                                                                   }
                                                                                                   continue loop4;
                                                                                                   addr273:
                                                                                                }
                                                                                                addr154:
                                                                                                §§push(param1.§;R§);
                                                                                                if(!(_loc3_ && this))
                                                                                                {
                                                                                                   §§push(§§pop().y);
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      continue loop18;
                                                                                                   }
                                                                                                   §§push(this.§;R§);
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      §§push(§§pop().y);
                                                                                                      if(!_loc3_)
                                                                                                      {
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            continue loop20;
                                                                                                         }
                                                                                                         if(!(_loc3_ && _loc3_))
                                                                                                         {
                                                                                                            §§push(§§pop() <= §§pop());
                                                                                                            if(_loc3_ && _loc2_)
                                                                                                            {
                                                                                                               continue loop41;
                                                                                                            }
                                                                                                            addr80:
                                                                                                            if(_loc4_ || _loc2_)
                                                                                                            {
                                                                                                               continue loop35;
                                                                                                            }
                                                                                                            addr135:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               continue loop40;
                                                                                                               §§goto(addr80);
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr255);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop().x);
                                                                                                      }
                                                                                                      addr168:
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      continue loop33;
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop().x);
                                                                                                      continue loop18;
                                                                                                      §§goto(addr154);
                                                                                                   }
                                                                                                   addr158:
                                                                                                }
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§goto(addr158);
                                                                                             }
                                                                                             addr201:
                                                                                          }
                                                                                       }
                                                                                       continue loop38;
                                                                                    }
                                                                                    addr103:
                                                                                 }
                                                                                 §§goto(addr135);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    continue loop34;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop();
                                                                                    §§goto(addr201);
                                                                                 }
                                                                              }
                                                                           }
                                                                           continue loop21;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               continue loop17;
                                                            }
                                                         }
                                                         continue loop2;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr254);
                                       }
                                       §§goto(addr255);
                                    }
                                    §§goto(addr252);
                                 }
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        §§goto(addr257);
                     }
                  }
               }
            }
         }
         §§goto(addr123);
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
         if(_loc18_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(param2.p1.y);
         if(!(_loc17_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc6_:* = §§pop();
         §§push(param2.p2.x);
         if(!(_loc17_ && param2))
         {
            §§push(§§pop() - param2.p1.x);
            if(!(_loc17_ && this))
            {
               addr91:
               §§push(Number(§§pop()));
            }
            var _loc7_:* = §§pop();
            §§push(param2.p2.y);
            if(_loc18_)
            {
               §§push(§§pop() - param2.p1.y);
               if(_loc18_ || this)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc8_:* = §§pop();
            var _loc9_:Number = Math.abs(_loc7_);
            var _loc10_:Number = Math.abs(_loc8_);
            _loc11_ = param1.normal;
            if(!(_loc17_ && param1))
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
                           §§push(this.§8! §);
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
                                                §§push(this.§;R§);
                                                loop9:
                                                while(true)
                                                {
                                                   §§push(§§pop().x);
                                                   loop10:
                                                   while(true)
                                                   {
                                                      §§push(_loc5_);
                                                      loop11:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() < §§pop());
                                                         if(_loc18_ || this)
                                                         {
                                                            if(!(_loc18_ || this))
                                                            {
                                                               break;
                                                            }
                                                            while(true)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  loop13:
                                                                  while(true)
                                                                  {
                                                                     loop14:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc10_);
                                                                        loop15:
                                                                        while(_loc18_)
                                                                        {
                                                                           if(§§pop() >= Number.MIN_VALUE)
                                                                           {
                                                                              §§push(1);
                                                                              loop16:
                                                                              for(; !_loc17_; while(!(_loc17_ && this))
                                                                              {
                                                                                 §§goto(addr520);
                                                                                 §§push(Number(§§pop()));
                                                                                 §§goto(addr455);
                                                                              })
                                                                              {
                                                                                 if(!(_loc17_ && _loc3_))
                                                                                 {
                                                                                    §§push(_loc8_);
                                                                                    if(!_loc17_)
                                                                                    {
                                                                                       §§push(§§pop() / §§pop());
                                                                                       loop17:
                                                                                       while(!_loc17_)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          loop18:
                                                                                          while(!(_loc17_ && _loc3_))
                                                                                          {
                                                                                             _loc12_ = §§pop();
                                                                                             loop19:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc17_)
                                                                                                {
                                                                                                   §§push(this.§8! §);
                                                                                                   if(!(_loc18_ || this))
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   §§push(§§pop().y);
                                                                                                   loop20:
                                                                                                   while(!_loc17_)
                                                                                                   {
                                                                                                      §§push(_loc6_);
                                                                                                      loop21:
                                                                                                      while(_loc18_)
                                                                                                      {
                                                                                                         if(_loc18_)
                                                                                                         {
                                                                                                            §§push(§§pop() - §§pop());
                                                                                                            loop22:
                                                                                                            for(; !(_loc17_ && _loc3_); while(!(_loc17_ && param1))
                                                                                                            {
                                                                                                               §§goto(addr444);
                                                                                                               §§push(Number(§§pop()));
                                                                                                               §§goto(addr186);
                                                                                                            })
                                                                                                            {
                                                                                                               if(_loc18_)
                                                                                                               {
                                                                                                                  if(_loc17_ && param2)
                                                                                                                  {
                                                                                                                     continue loop10;
                                                                                                                  }
                                                                                                                  §§push(_loc12_);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     loop24:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        loop25:
                                                                                                                        while(_loc18_)
                                                                                                                        {
                                                                                                                           _loc13_ = §§pop();
                                                                                                                           loop26:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(this.§;R§);
                                                                                                                              if(_loc18_ || _loc3_)
                                                                                                                              {
                                                                                                                                 if(_loc17_)
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 if(_loc18_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().y);
                                                                                                                                    loop27:
                                                                                                                                    while(_loc18_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc6_);
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                          loop29:
                                                                                                                                          while(!_loc17_)
                                                                                                                                          {
                                                                                                                                             if(!(_loc17_ && this))
                                                                                                                                             {
                                                                                                                                                if(!_loc17_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc12_);
                                                                                                                                                   loop30:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc18_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc17_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc18_ || this)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                  addr592:
                                                                                                                                                                  while(!(_loc17_ && param2))
                                                                                                                                                                  {
                                                                                                                                                                     continue loop0;
                                                                                                                                                                  }
                                                                                                                                                                  addr776:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     _loc4_ = §§pop();
                                                                                                                                                                     addr777:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc3_);
                                                                                                                                                                        addr740:
                                                                                                                                                                        while(_loc18_ || param2)
                                                                                                                                                                        {
                                                                                                                                                                           addr747:
                                                                                                                                                                           if(_loc18_ || this)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc4_);
                                                                                                                                                                              break loop30;
                                                                                                                                                                           }
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                              addr901:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 _loc13_ = §§pop();
                                                                                                                                                                                 addr902:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(this.§;R§);
                                                                                                                                                                                    break loop26;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr747);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        addr882:
                                                                                                                                                                        while(_loc18_ || _loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              _loc14_ = §§pop();
                                                                                                                                                                              addr891:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(-1);
                                                                                                                                                                                 addr871:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                    break loop17;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr901);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr591:
                                                                                                                                                            }
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         loop73:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() < §§pop());
                                                                                                                                                            loop60:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(_loc18_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc17_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop7;
                                                                                                                                                                  }
                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                  if(_loc17_ && param2)
                                                                                                                                                                  {
                                                                                                                                                                     break;
                                                                                                                                                                  }
                                                                                                                                                                  if(!§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     loop61:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§pop();
                                                                                                                                                                        addr735:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc17_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop8;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(this.§;R§);
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop().y);
                                                                                                                                                                              loop71:
                                                                                                                                                                              while(_loc18_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc6_);
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() < §§pop());
                                                                                                                                                                                    if(!_loc17_)
                                                                                                                                                                                    {
                                                                                                                                                                                       loop62:
                                                                                                                                                                                       while(!§§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          loop63:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                param1.fraction = _loc3_;
                                                                                                                                                                                                if(_loc18_ || param2)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc18_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(true);
                                                                                                                                                                                                      if(_loc18_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc18_ || _loc3_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            return §§pop();
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr248:
                                                                                                                                                                                                         if(_loc18_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop61;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr701:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc18_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               return §§pop();
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop60;
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   do
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc18_ || param1)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc18_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc17_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc17_ && param1))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr248);
                                                                                                                                                                                                                  §§push(false);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               loop50:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc18_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc18_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc17_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           loop51:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc13_);
                                                                                                                                                                                                                              loop52:
                                                                                                                                                                                                                              for(; _loc18_; while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc17_ && param2)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop52;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr328);
                                                                                                                                                                                                                                 §§goto(addr170);
                                                                                                                                                                                                                              },§§goto(addr408))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc17_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc3_);
                                                                                                                                                                                                                                    loop53:
                                                                                                                                                                                                                                    while(!(_loc17_ && this))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc18_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop21;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       if(§§pop() > §§pop())
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr376:
                                                                                                                                                                                                                                          loop54:
                                                                                                                                                                                                                                          while(_loc18_ || _loc3_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             _loc11_.y = _loc16_;
                                                                                                                                                                                                                                             loop55:
                                                                                                                                                                                                                                             while(_loc18_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!(_loc18_ || this))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop63;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                _loc11_.x = 0;
                                                                                                                                                                                                                                                loop56:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc17_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop55;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   if(!_loc17_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc17_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         break;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§push(_loc13_);
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc18_ || _loc3_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                                                                            continue loop52;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr715:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(this.§8! §);
                                                                                                                                                                                                                                                            if(!_loc18_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               break;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§push(§§pop().y);
                                                                                                                                                                                                                                                            continue loop73;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop3;
                                                                                                                                                                                                                                                         addr177:
                                                                                                                                                                                                                                                         if(!(_loc18_ || _loc3_))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         if(!_loc17_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr186:
                                                                                                                                                                                                                                                            if(!(_loc17_ && this))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc4_);
                                                                                                                                                                                                                                                               if(_loc18_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  continue loop30;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               continue loop53;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            continue loop22;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr444:
                                                                                                                                                                                                                                                         addr859:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!_loc17_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc18_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc18_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!_loc17_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        _loc14_ = §§pop();
                                                                                                                                                                                                                                                                        while(_loc18_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(1);
                                                                                                                                                                                                                                                                           if(!(_loc18_ || param2))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop16;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           if(!_loc17_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                              loop49:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!(_loc17_ && param2))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr415:
                                                                                                                                                                                                                                                                                    if(_loc18_ || _loc3_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!_loc18_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          break;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       if(!_loc17_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          _loc16_ = §§pop();
                                                                                                                                                                                                                                                                                          continue loop50;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       continue loop24;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr520:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!(_loc18_ || param2))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop71;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       if(!(_loc17_ && param1))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          _loc16_ = §§pop();
                                                                                                                                                                                                                                                                                          break loop54;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       addr788:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc18_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             _loc3_ = §§pop();
                                                                                                                                                                                                                                                                                             while(_loc18_ || _loc3_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§goto(addr776);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                break loop16;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr791:
                                                                                                                                                                                                                                                                                             addr844:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr847:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                             addr848:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(!_loc17_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   _loc13_ = §§pop();
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(_loc15_);
                                                                                                                                                                                                                                                                                                      addr835:
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                         break loop22;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   addr851:
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                      addr910:
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         _loc12_ = §§pop();
                                                                                                                                                                                                                                                                                                         addr911:
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(this.§8! §);
                                                                                                                                                                                                                                                                                                            break loop19;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   addr909:
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr415);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 addr491:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                    addr492:
                                                                                                                                                                                                                                                                                    while(!(_loc17_ && this))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       _loc15_ = §§pop();
                                                                                                                                                                                                                                                                                       break loop55;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr860:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       _loc15_ = §§pop();
                                                                                                                                                                                                                                                                                       addr861:
                                                                                                                                                                                                                                                                                       addr873:
                                                                                                                                                                                                                                                                                       while(!(_loc17_ && param2))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§goto(addr847);
                                                                                                                                                                                                                                                                                          §§push(_loc14_);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(_loc13_);
                                                                                                                                                                                                                                                                                          break loop29;
                                                                                                                                                                                                                                                                                          §§goto(addr861);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    continue loop49;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr592);
                                                                                                                                                                                                                                                                              addr408:
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr871);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(_loc13_);
                                                                                                                                                                                                                                                                           break loop71;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr453:
                                                                                                                                                                                                                                                                        addr803:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  continue loop20;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               continue loop29;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr458:
                                                                                                                                                                                                                                                            while(!_loc17_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                                                                               break loop52;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            continue loop18;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§goto(addr860);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc15_);
                                                                                                                                                                                                                                                         continue loop22;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr476:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr290:
                                                                                                                                                                                                                                                   loop66:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!(_loc18_ || param2))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop56;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      if(!_loc17_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!_loc17_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc17_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               break loop62;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            if(_loc17_ && param2)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue loop13;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§push(_loc3_);
                                                                                                                                                                                                                                                            if(!(_loc17_ && this))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr170:
                                                                                                                                                                                                                                                               if(_loc17_ && param2)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  continue loop52;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr177);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc17_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     break loop66;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  if(!(_loc17_ && this))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc18_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue loop66;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr835);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  loop117:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!(_loc17_ && this))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc3_);
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!_loc18_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop11;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           if(§§pop() > §§pop())
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 _loc11_.x = _loc16_;
                                                                                                                                                                                                                                                                                 continue loop1;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr817:
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§goto(addr770);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr814:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                                                                     addr804:
                                                                                                                                                                                                                                                                     loop116:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc13_);
                                                                                                                                                                                                                                                                        continue loop117;
                                                                                                                                                                                                                                                                        addr832:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop116;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr278:
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr910);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         while(_loc18_ || _loc3_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§goto(addr491);
                                                                                                                                                                                                                                                            §§push(_loc13_);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr911);
                                                                                                                                                                                                                                                         addr483:
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr453);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   continue loop27;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!(_loc17_ && _loc3_))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop16;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr712:
                                                                                                                                                                                                                                                   while(_loc18_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr715);
                                                                                                                                                                                                                                                      §§push(_loc6_);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   continue loop14;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             while(!(_loc17_ && param1))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!_loc17_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§goto(addr458);
                                                                                                                                                                                                                                                   §§push(_loc14_);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr891);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             continue loop1;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          while(!(_loc17_ && param1))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§goto(addr479);
                                                                                                                                                                                                                                             §§push(_loc13_);
                                                                                                                                                                                                                                             §§goto(addr376);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr376:
                                                                                                                                                                                                                                          §§goto(addr791);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§goto(addr278);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr272:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr770);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(§§pop() <= §§pop())
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop51;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr483);
                                                                                                                                                                                                                                       §§goto(addr366);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr366:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr492);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc17_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc17_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    _loc13_ = §§pop();
                                                                                                                                                                                                                                    §§goto(addr476);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§goto(addr591);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr740);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr902);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop19;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr758:
                                                                                                                                                                                                               if(!_loc17_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc17_ && param1)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr832);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr768);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr777);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr851);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr376);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr290);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(§§pop() > §§pop());
                                                                                                                                                                                                   
                                                                                                                                                                                                   continue;
                                                                                                                                                                                                   addr768:
                                                                                                                                                                                                   return false;
                                                                                                                                                                                                }
                                                                                                                                                                                                if(!_loc18_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop26;
                                                                                                                                                                                                }
                                                                                                                                                                                                if(!(_loc17_ && _loc3_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc18_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc18_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         return false;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr935:
                                                                                                                                                                                                      addr934:
                                                                                                                                                                                                      addr935:
                                                                                                                                                                                                      continue;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr858:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr859);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr817);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          return §§pop();
                                                                                                                                                                                       }
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                       }
                                                                                                                                                                                       addr698:
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr701);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc17_ && param1))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr788);
                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr848);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr698);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr935);
                                                                                                                                                            }
                                                                                                                                                            continue loop6;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr891);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr695);
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc17_)
                                                                                                                                                      {
                                                                                                                                                         continue loop4;
                                                                                                                                                      }
                                                                                                                                                      if(§§pop() <= §§pop())
                                                                                                                                                      {
                                                                                                                                                         continue loop14;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr758);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc5_);
                                                                                                                                                   addr897:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                      break loop18;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr896:
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc5_);
                                                                                                                                                addr879:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr880);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc14_);
                                                                                                                                             break loop21;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    continue loop25;
                                                                                                                                 }
                                                                                                                                 continue loop9;
                                                                                                                              }
                                                                                                                              §§goto(addr691);
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§goto(addr878);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        continue loop15;
                                                                                                                     }
                                                                                                                     if(!(_loc18_ || param1))
                                                                                                                     {
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     if(!(_loc17_ && param1))
                                                                                                                     {
                                                                                                                        if(_loc18_ || param1)
                                                                                                                        {
                                                                                                                           if(_loc18_)
                                                                                                                           {
                                                                                                                              §§goto(addr228);
                                                                                                                           }
                                                                                                                           §§goto(addr897);
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§goto(addr900);
                                                                                                                        }
                                                                                                                        addr899:
                                                                                                                     }
                                                                                                                     §§goto(addr814);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr890);
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!(_loc18_ || param1))
                                                                                                               {
                                                                                                                  continue loop2;
                                                                                                               }
                                                                                                               _loc14_ = §§pop();
                                                                                                               §§goto(addr844);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr879);
                                                                                                      }
                                                                                                      while(_loc18_)
                                                                                                      {
                                                                                                         if(§§pop() > §§pop())
                                                                                                         {
                                                                                                            §§goto(addr858);
                                                                                                         }
                                                                                                         §§goto(addr804);
                                                                                                      }
                                                                                                      §§goto(addr881);
                                                                                                   }
                                                                                                   continue loop17;
                                                                                                }
                                                                                                §§goto(addr735);
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§goto(addr896);
                                                                                             }
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§goto(addr899);
                                                                                          }
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          _loc16_ = §§pop();
                                                                                          §§goto(addr873);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                       }
                                                                                       addr908:
                                                                                    }
                                                                                    §§goto(addr909);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                    }
                                                                                    addr907:
                                                                                 }
                                                                                 §§goto(addr908);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 break loop15;
                                                                              }
                                                                              addr830:
                                                                           }
                                                                           §§goto(addr712);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           _loc16_ = §§pop();
                                                                           §§goto(addr832);
                                                                           §§goto(addr830);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr934);
                                                            }
                                                         }
                                                         §§goto(addr935);
                                                      }
                                                      continue loop5;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr932);
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
                  §§goto(addr907);
               }
            }
            §§goto(addr832);
         }
         §§goto(addr91);
      }
      
      public function §;c§(param1:b2AABB) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(param1.§8! §.x);
         if(_loc6_)
         {
            §§push(§§pop() - this.§;R§.x);
            if(_loc6_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         §§push(param1.§8! §.y);
         if(_loc6_)
         {
            §§push(§§pop() - this.§;R§.y);
            if(_loc6_ || this)
            {
               addr45:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(this.§8! §.x);
            if(!(_loc7_ && _loc2_))
            {
               §§push(§§pop() - param1.§;R§.x);
               if(!(_loc7_ && _loc2_))
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc4_:* = §§pop();
            §§push(this.§8! §.y);
            if(_loc6_)
            {
               §§push(§§pop() - param1.§;R§.y);
               if(_loc6_ || this)
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
                              loop4:
                              while(true)
                              {
                                 §§pop();
                                 loop5:
                                 while(true)
                                 {
                                    §§push(_loc3_);
                                    loop6:
                                    while(true)
                                    {
                                       §§push(0);
                                       loop7:
                                       while(true)
                                       {
                                          §§push(§§pop() > §§pop());
                                          if(_loc6_ || _loc2_)
                                          {
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   loop9:
                                                   while(true)
                                                   {
                                                      §§push(_loc4_);
                                                      loop10:
                                                      while(true)
                                                      {
                                                         if(!_loc7_)
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               break;
                                                            }
                                                            §§push(0);
                                                            loop11:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() > §§pop());
                                                               if(!_loc7_)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(_loc7_ && this)
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc6_ || _loc2_)
                                                                              {
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    continue loop9;
                                                                                 }
                                                                                 if(_loc7_ && param1)
                                                                                 {
                                                                                    continue loop5;
                                                                                 }
                                                                                 addr163:
                                                                                 §§push(false);
                                                                                 if(_loc6_ || this)
                                                                                 {
                                                                                    if(!(_loc6_ || _loc3_))
                                                                                    {
                                                                                       break loop7;
                                                                                    }
                                                                                    if(!(_loc7_ && this))
                                                                                    {
                                                                                       return §§pop();
                                                                                    }
                                                                                    continue loop2;
                                                                                 }
                                                                                 addr207:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop();
                                                                                 }
                                                                              }
                                                                              else if(_loc6_)
                                                                              {
                                                                                 addr91:
                                                                                 §§push(true);
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          return §§pop();
                                                                                       }
                                                                                       continue loop4;
                                                                                    }
                                                                                    continue;
                                                                                 }
                                                                                 §§goto(addr163);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc6_ || _loc2_))
                                                                                 {
                                                                                    §§push(false);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr229:
                                                                                 }
                                                                                 §§push(_loc5_);
                                                                                 if(_loc7_ && param1)
                                                                                 {
                                                                                    continue loop10;
                                                                                 }
                                                                                 continue loop11;
                                                                              }
                                                                           }
                                                                           §§goto(addr91);
                                                                        }
                                                                        addr136:
                                                                        if(!(_loc6_ || _loc2_))
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(§§pop() > §§pop());
                                                                     }
                                                                     continue loop1;
                                                                  }
                                                               }
                                                               §§goto(addr207);
                                                            }
                                                            continue loop3;
                                                         }
                                                         continue loop6;
                                                      }
                                                      continue loop0;
                                                   }
                                                }
                                                §§goto(addr229);
                                             }
                                             addr227:
                                          }
                                          break;
                                       }
                                       return §§pop();
                                    }
                                 }
                              }
                           }
                           §§goto(addr227);
                        }
                     }
                  }
               }
            }
            §§goto(addr229);
         }
         §§goto(addr45);
      }
      
      public function §%!]§(param1:b2AABB, param2:b2AABB) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(this.§8! §);
            while(true)
            {
               §§pop().x = Math.min(param1.§8! §.x,param2.§8! §.x);
               while(true)
               {
                  §§push(this.§8! §);
                  if(!_loc4_)
                  {
                     break;
                  }
                  §§pop().y = Math.min(param1.§8! §.y,param2.§8! §.y);
                  loop2:
                  for(; _loc4_ || param1; while(!(_loc3_ && this))
                  {
                     §§goto(addr70);
                  })
                  {
                     §§push(this.§;R§);
                     while(true)
                     {
                        §§pop().x = Math.max(param1.§;R§.x,param2.§;R§.x);
                        continue loop2;
                        §§goto(addr70);
                     }
                  }
               }
            }
         }
         addr70:
         while(true)
         {
            §§push(this.§;R§);
            if(!_loc3_)
            {
               §§pop().y = Math.max(param1.§;R§.y,param2.§;R§.y);
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
