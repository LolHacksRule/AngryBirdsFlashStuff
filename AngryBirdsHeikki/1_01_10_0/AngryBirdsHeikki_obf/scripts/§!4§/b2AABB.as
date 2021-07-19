package §!4§
{
   import §6A§.b2Vec2;
   
   public class b2AABB
   {
       
      
      public var §?`§:b2Vec2;
      
      public var §[O§:b2Vec2;
      
      public function b2AABB()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§?`§ = new b2Vec2();
         }
         do
         {
            this.§[O§ = new b2Vec2();
            do
            {
               super();
            }
            while(!_loc1_);
            
         }
         while(_loc2_);
         
      }
      
      public static function §#2§(param1:b2AABB, param2:b2AABB) : b2AABB
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2AABB = new b2AABB();
         if(!_loc4_)
         {
            _loc3_.§#2§(param1,param2);
         }
         return _loc3_;
      }
      
      public function § if§() : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§[O§.x);
         if(_loc5_ || _loc1_)
         {
            §§push(§§pop() - this.§?`§.x);
            if(!_loc4_)
            {
               addr33:
               §§push(Number(§§pop()));
            }
            var _loc1_:* = §§pop();
            §§push(this.§[O§.y);
            if(_loc5_)
            {
               §§push(§§pop() - this.§?`§.y);
               if(_loc5_)
               {
                  addr46:
                  §§push(Number(§§pop()));
               }
               var _loc2_:* = §§pop();
               if(!(_loc4_ && _loc2_))
               {
                  §§push(_loc1_);
                  if(!(_loc4_ && _loc2_))
                  {
                     §§push(0);
                     if(_loc5_ || _loc3_)
                     {
                        §§push(§§pop() >= §§pop());
                        if(!(_loc4_ && _loc3_))
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
                                 if(_loc4_ && this)
                                 {
                                 }
                                 addr105:
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
                                             if(!§§pop())
                                             {
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   if(_loc4_ && _loc2_)
                                                   {
                                                      break;
                                                   }
                                                   if(§§pop())
                                                   {
                                                      loop6:
                                                      while(!_loc4_)
                                                      {
                                                         if(_loc4_ && _loc3_)
                                                         {
                                                            continue loop1;
                                                         }
                                                         §§pop();
                                                         loop10:
                                                         while(true)
                                                         {
                                                            §§push(this.§[O§.§ if§());
                                                            if(_loc5_)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               if(!_loc4_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                  }
                                                                  addr132:
                                                               }
                                                            }
                                                            loop9:
                                                            while(true)
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  continue loop6;
                                                               }
                                                               _loc3_ = §§pop();
                                                               if(!_loc5_)
                                                               {
                                                                  continue loop10;
                                                               }
                                                               if(_loc5_ || _loc1_)
                                                               {
                                                                  §§push(_loc3_);
                                                                  if(_loc5_ || _loc2_)
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        return §§pop();
                                                                     }
                                                                     break;
                                                                  }
                                                                  continue;
                                                               }
                                                               addr197:
                                                               while(true)
                                                               {
                                                                  §§push(this.§?`§.§ if§());
                                                                  if(_loc5_)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                     break loop9;
                                                                  }
                                                                  continue loop6;
                                                               }
                                                            }
                                                            continue loop0;
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         §§goto(addr197);
                                                      }
                                                      addr196:
                                                   }
                                                   §§goto(addr132);
                                                }
                                                continue;
                                                addr161:
                                             }
                                             §§goto(addr196);
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
                     §§goto(addr86);
                  }
                  §§goto(addr85);
               }
               §§goto(addr84);
            }
            §§goto(addr46);
         }
         §§goto(addr33);
      }
      
      public function §>O§() : b2Vec2
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(this.§?`§.x);
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§[O§.x);
            if(_loc2_ || _loc1_)
            {
               §§push(§§pop() + §§pop());
               if(_loc2_ || _loc1_)
               {
                  addr58:
                  §§push(§§pop() / 2);
                  §§push(this.§?`§.y);
                  if(!(_loc1_ && _loc2_))
                  {
                     §§push(§§pop() + this.§[O§.y);
                     if(!(_loc1_ && _loc2_))
                     {
                        §§push(§§pop() / 2);
                     }
                  }
               }
               §§goto(addr58);
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr58);
      }
      
      public function §7N§() : b2Vec2
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(this.§[O§.x);
         if(_loc1_ || _loc1_)
         {
            §§push(this.§?`§.x);
            if(!_loc2_)
            {
               §§push(§§pop() - §§pop());
               if(_loc2_)
               {
               }
               §§goto(addr47);
            }
            §§goto(addr68);
         }
         addr47:
         §§push(§§pop() / 2);
         §§push(this.§[O§.y);
         if(!_loc2_)
         {
            §§push(§§pop() - this.§?`§.y);
            if(_loc1_)
            {
               addr68:
               §§push(§§pop() / 2);
            }
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public function §;!$§(param1:b2AABB) : Boolean
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
                              addr290:
                              loop11:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 loop12:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    loop13:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       loop14:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             loop15:
                                             while(true)
                                             {
                                                §§pop();
                                                loop16:
                                                while(true)
                                                {
                                                   §§push(this.§?`§);
                                                   if(_loc4_ || _loc2_)
                                                   {
                                                      §§push(§§pop().y);
                                                      loop17:
                                                      while(true)
                                                      {
                                                         §§push(param1.§?`§);
                                                         if(!(_loc3_ && _loc2_))
                                                         {
                                                            §§push(§§pop().y);
                                                            loop18:
                                                            while(_loc4_ || _loc2_)
                                                            {
                                                               §§push(§§pop() <= §§pop());
                                                               loop19:
                                                               for(; _loc4_; if(!(_loc4_ || _loc2_))
                                                               {
                                                                  continue;
                                                               },if(_loc3_)
                                                               {
                                                                  continue loop3;
                                                               },§§pop(),§§goto(addr132))
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                     loop21:
                                                                     while(!(_loc3_ && this))
                                                                     {
                                                                        _loc2_ = §§pop();
                                                                        loop22:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc2_);
                                                                           loop23:
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc3_ && this))
                                                                              {
                                                                                 §§push(Boolean(§§pop()));
                                                                                 loop24:
                                                                                 for(; !_loc3_; if(_loc3_ && _loc3_)
                                                                                 {
                                                                                    continue;
                                                                                 },§§goto(addr109),§§push(Boolean(§§pop())))
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    loop25:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          continue loop14;
                                                                                       }
                                                                                       if(_loc3_ && param1)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       if(§§pop())
                                                                                       {
                                                                                          loop26:
                                                                                          while(!_loc3_)
                                                                                          {
                                                                                             §§pop();
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc4_ || param1))
                                                                                                {
                                                                                                   continue loop16;
                                                                                                }
                                                                                                §§push(param1.§[O§);
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop().x);
                                                                                                   addr165:
                                                                                                   addr160:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         continue loop17;
                                                                                                      }
                                                                                                      §§push(this.§[O§);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop().x);
                                                                                                         addr170:
                                                                                                         addr63:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() <= §§pop());
                                                                                                         }
                                                                                                         §§push(this.§[O§);
                                                                                                         if(!(_loc4_ || _loc3_))
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         §§push(§§pop().y);
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               §§push(§§pop() <= §§pop());
                                                                                                               if(_loc4_)
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                  }
                                                                                                                  addr80:
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!_loc3_)
                                                                                                                  {
                                                                                                                     if(_loc4_)
                                                                                                                     {
                                                                                                                        continue loop23;
                                                                                                                     }
                                                                                                                     addr109:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc4_)
                                                                                                                        {
                                                                                                                           continue loop25;
                                                                                                                        }
                                                                                                                        continue loop0;
                                                                                                                     }
                                                                                                                     continue loop25;
                                                                                                                  }
                                                                                                                  addr120:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc4_)
                                                                                                                     {
                                                                                                                        continue loop19;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr96:
                                                                                                                  §§push(_loc2_);
                                                                                                                  continue loop3;
                                                                                                                  if(_loc4_ || param1)
                                                                                                                  {
                                                                                                                     if(!_loc3_)
                                                                                                                     {
                                                                                                                        if(!(_loc3_ && _loc2_))
                                                                                                                        {
                                                                                                                           return §§pop();
                                                                                                                        }
                                                                                                                        continue loop4;
                                                                                                                     }
                                                                                                                     loop36:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!_loc3_)
                                                                                                                        {
                                                                                                                           continue loop24;
                                                                                                                        }
                                                                                                                        addr173:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!_loc4_)
                                                                                                                           {
                                                                                                                              continue loop26;
                                                                                                                           }
                                                                                                                           if(!_loc3_)
                                                                                                                           {
                                                                                                                              _loc2_ = §§pop();
                                                                                                                              while(_loc4_ || _loc2_)
                                                                                                                              {
                                                                                                                                 §§push(_loc2_);
                                                                                                                                 continue loop36;
                                                                                                                              }
                                                                                                                              continue loop11;
                                                                                                                              addr178:
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              addr295:
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§pop();
                                                                                                                              addr296:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(this.§?`§);
                                                                                                                                 break loop16;
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     continue loop24;
                                                                                                                  }
                                                                                                               }
                                                                                                               continue loop23;
                                                                                                            }
                                                                                                            continue loop18;
                                                                                                         }
                                                                                                         §§goto(addr170);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§goto(addr173);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§push(param1.§[O§);
                                                                                                   if(_loc3_ && _loc2_)
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   §§push(§§pop().y);
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      if(!(_loc3_ && _loc2_))
                                                                                                      {
                                                                                                         §§goto(addr63);
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(param1.§?`§);
                                                                                                         break loop17;
                                                                                                      }
                                                                                                      addr273:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr165);
                                                                                                   }
                                                                                                   §§goto(addr169);
                                                                                                }
                                                                                                addr134:
                                                                                                if(_loc3_ && this)
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   continue loop22;
                                                                                                }
                                                                                                if(_loc4_ || param1)
                                                                                                {
                                                                                                   §§goto(addr160);
                                                                                                }
                                                                                                §§goto(addr296);
                                                                                             }
                                                                                          }
                                                                                          continue loop1;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr172);
                                                                                          §§goto(addr170);
                                                                                       }
                                                                                    }
                                                                                    continue loop2;
                                                                                 }
                                                                                 continue loop21;
                                                                              }
                                                                              continue loop15;
                                                                           }
                                                                        }
                                                                     }
                                                                     continue loop13;
                                                                  }
                                                               }
                                                               continue loop12;
                                                            }
                                                            while(true)
                                                            {
                                                               continue loop3;
                                                            }
                                                            addr276:
                                                         }
                                                         break;
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr276);
                                                      }
                                                   }
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr273);
                                                }
                                             }
                                          }
                                          §§goto(addr251);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr295);
                  }
               }
            }
         }
         §§goto(addr290);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         var _loc17_:Boolean = true;
         var _loc18_:Boolean = false;
         var _loc11_:b2Vec2 = null;
         var _loc12_:* = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:* = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:* = NaN;
         §§push(-Number.MAX_VALUE);
         if(!(_loc18_ && param2))
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:Number = Number.MAX_VALUE;
         §§push(param2.p1.x);
         if(!_loc18_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(param2.p1.y);
         if(!_loc18_)
         {
            §§push(Number(§§pop()));
         }
         var _loc6_:* = §§pop();
         §§push(param2.p2.x);
         if(_loc17_)
         {
            §§push(§§pop() - param2.p1.x);
            if(_loc17_ || param1)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc7_:* = §§pop();
         §§push(param2.p2.y);
         if(_loc17_ || param1)
         {
            §§push(§§pop() - param2.p1.y);
            if(_loc17_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc8_:* = §§pop();
         var _loc9_:Number = Math.abs(_loc7_);
         var _loc10_:Number = Math.abs(_loc8_);
         _loc11_ = param1.normal;
         if(_loc17_ || _loc3_)
         {
            §§push(_loc9_);
            loop0:
            while(true)
            {
               if(§§pop() < Number.MIN_VALUE)
               {
                  while(true)
                  {
                     §§push(_loc5_);
                     while(true)
                     {
                        §§push(this.§?`§);
                        while(true)
                        {
                           §§push(§§pop().x);
                           while(true)
                           {
                              §§push(§§pop() < §§pop());
                              while(true)
                              {
                                 §§push(§§pop());
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       while(true)
                                       {
                                          §§pop();
                                          addr963:
                                          while(true)
                                          {
                                             §§push(this.§[O§);
                                             addr933:
                                             while(true)
                                             {
                                                §§push(§§pop().x);
                                                addr934:
                                                while(true)
                                                {
                                                   §§push(_loc5_);
                                                   addr935:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() < §§pop());
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       addr962:
                                    }
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             while(true)
                                             {
                                                while(true)
                                                {
                                                   §§push(_loc10_);
                                                   while(!(_loc18_ && param2))
                                                   {
                                                      if(_loc17_)
                                                      {
                                                         if(§§pop() >= Number.MIN_VALUE)
                                                         {
                                                            §§push(1);
                                                            loop17:
                                                            while(_loc17_ || _loc3_)
                                                            {
                                                               if(!(_loc18_ && _loc3_))
                                                               {
                                                                  §§push(_loc8_);
                                                                  if(!_loc18_)
                                                                  {
                                                                     §§push(§§pop() / §§pop());
                                                                     loop18:
                                                                     for(; _loc17_ || param2; while(_loc17_ || param1)
                                                                     {
                                                                        if(!_loc18_)
                                                                        {
                                                                           §§goto(addr572);
                                                                           §§push(_loc6_);
                                                                        }
                                                                        §§goto(addr858);
                                                                        §§goto(addr482);
                                                                     })
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        while(true)
                                                                        {
                                                                           _loc12_ = §§pop();
                                                                           addr634:
                                                                           addr906:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§?`§);
                                                                              if(_loc18_ && this)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§push(§§pop().y);
                                                                              continue loop18;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().x);
                                                                              addr907:
                                                                              while(true)
                                                                              {
                                                                                 addr908:
                                                                                 break loop18;
                                                                              }
                                                                           }
                                                                           while(_loc17_ || _loc3_)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              loop48:
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc17_ || _loc3_))
                                                                                 {
                                                                                    continue loop0;
                                                                                 }
                                                                                 if(!_loc18_)
                                                                                 {
                                                                                    _loc14_ = §§pop();
                                                                                    loop49:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(1);
                                                                                       if(_loc17_ || _loc3_)
                                                                                       {
                                                                                          if(_loc18_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §§push(Number(§§pop()));
                                                                                          continue loop48;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc17_ || this)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             loop36:
                                                                                             while(true)
                                                                                             {
                                                                                                _loc16_ = §§pop();
                                                                                                addr506:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc13_);
                                                                                                   continue loop36;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc7_);
                                                                                                addr926:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() / §§pop());
                                                                                                }
                                                                                             }
                                                                                             addr925:
                                                                                          }
                                                                                          continue loop49;
                                                                                       }
                                                                                    }
                                                                                    continue loop17;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    break loop48;
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 _loc12_ = §§pop();
                                                                                 §§goto(addr929);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr910);
                                                                     §§push(_loc12_);
                                                                  }
                                                                  §§goto(addr926);
                                                               }
                                                               §§goto(addr883);
                                                            }
                                                            §§goto(addr844);
                                                            §§push(Number(§§pop()));
                                                         }
                                                         §§goto(addr704);
                                                      }
                                                      §§goto(addr849);
                                                   }
                                                   while(true)
                                                   {
                                                      if(_loc17_ || param1)
                                                      {
                                                         _loc3_ = §§pop();
                                                         §§goto(addr811);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr928);
                                                      }
                                                      §§goto(addr802);
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr875);
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
               §§goto(addr925);
            }
         }
         §§goto(addr236);
      }
      
      public function §+!;§(param1:b2AABB) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(param1.§?`§.x);
         if(_loc6_)
         {
            §§push(§§pop() - this.§[O§.x);
            if(_loc6_ || _loc3_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         §§push(param1.§?`§.y);
         if(_loc6_)
         {
            §§push(§§pop() - this.§[O§.y);
            if(!(_loc7_ && param1))
            {
               addr50:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(this.§?`§.x);
            if(_loc6_ || param1)
            {
               §§push(§§pop() - param1.§[O§.x);
               if(_loc6_ || _loc2_)
               {
                  addr73:
                  §§push(Number(§§pop()));
               }
               var _loc4_:* = §§pop();
               §§push(this.§?`§.y);
               if(!_loc7_)
               {
                  §§push(§§pop() - param1.§[O§.y);
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
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 while(true)
                                 {
                                    §§pop();
                                    addr248:
                                    while(true)
                                    {
                                       §§push(_loc3_);
                                       addr216:
                                       while(true)
                                       {
                                          §§push(0);
                                          addr217:
                                          while(!_loc7_)
                                          {
                                             §§push(§§pop() > §§pop());
                                          }
                                          continue loop1;
                                       }
                                    }
                                 }
                                 addr247:
                              }
                              while(true)
                              {
                                 loop9:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       addr222:
                                       return false;
                                    }
                                    else
                                    {
                                       loop10:
                                       while(true)
                                       {
                                          §§push(_loc4_);
                                          loop11:
                                          while(!_loc7_)
                                          {
                                             §§push(0);
                                             while(true)
                                             {
                                                §§push(§§pop() > §§pop());
                                                addr189:
                                                while(!(_loc7_ && this))
                                                {
                                                   continue loop9;
                                                }
                                                addr114:
                                                §§push(0);
                                                if(!_loc6_)
                                                {
                                                   continue;
                                                }
                                                if(_loc6_ || _loc3_)
                                                {
                                                   §§push(§§pop() > §§pop());
                                                   if(!(_loc7_ && _loc3_))
                                                   {
                                                      if(!(_loc7_ && param1))
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               continue loop2;
                                                            }
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(_loc6_ || param1)
                                                                  {
                                                                     if(!_loc7_)
                                                                     {
                                                                        if(_loc6_ || _loc3_)
                                                                        {
                                                                           if(_loc7_ && this)
                                                                           {
                                                                              break;
                                                                           }
                                                                           addr179:
                                                                           §§push(false);
                                                                           loop17:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop();
                                                                                    addr213:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc5_);
                                                                                       if(!(_loc6_ || this))
                                                                                       {
                                                                                          continue loop11;
                                                                                       }
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          continue loop0;
                                                                                       }
                                                                                       §§goto(addr114);
                                                                                    }
                                                                                    §§goto(addr217);
                                                                                    continue loop17;
                                                                                 }
                                                                                 addr212:
                                                                              }
                                                                              return §§pop();
                                                                           }
                                                                           addr179:
                                                                        }
                                                                        else if(!(_loc7_ && param1))
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              continue loop10;
                                                                           }
                                                                           addr241:
                                                                        }
                                                                        §§goto(addr248);
                                                                     }
                                                                     §§goto(addr213);
                                                                  }
                                                                  §§goto(addr179);
                                                               }
                                                               §§push(true);
                                                               if(_loc6_ || this)
                                                               {
                                                                  return §§pop();
                                                               }
                                                               §§goto(addr179);
                                                            }
                                                            §§goto(addr222);
                                                         }
                                                         §§goto(addr247);
                                                      }
                                                      §§goto(addr189);
                                                   }
                                                   §§goto(addr179);
                                                }
                                                §§goto(addr217);
                                             }
                                          }
                                          §§goto(addr216);
                                       }
                                    }
                                    return §§pop();
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr241);
            }
            §§goto(addr73);
         }
         §§goto(addr50);
      }
      
      public function §#2§(param1:b2AABB, param2:b2AABB) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(this.§?`§);
            loop0:
            while(true)
            {
               §§pop().x = Math.min(param1.§?`§.x,param2.§?`§.x);
               addr123:
               loop1:
               while(true)
               {
                  §§push(this.§?`§);
                  if(_loc4_)
                  {
                     continue loop0;
                  }
                  §§pop().y = Math.min(param1.§?`§.y,param2.§?`§.y);
                  loop2:
                  while(true)
                  {
                     §§push(this.§[O§);
                     while(true)
                     {
                        §§pop().x = Math.max(param1.§[O§.x,param2.§[O§.x);
                        §§push(this.§[O§);
                        addr86:
                        continue loop2;
                        if(!(_loc4_ && param1))
                        {
                           §§pop().y = Math.max(param1.§[O§.y,param2.§[O§.y);
                           if(_loc3_ || param1)
                           {
                              continue loop1;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr123);
      }
   }
}
