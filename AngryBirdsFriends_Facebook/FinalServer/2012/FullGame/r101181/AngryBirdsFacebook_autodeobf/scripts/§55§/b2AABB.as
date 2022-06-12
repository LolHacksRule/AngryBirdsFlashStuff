package §55§
{
   import §#]§.b2Vec2;
   
   public class b2AABB
   {
       
      
      public var §!8§:b2Vec2;
      
      public var §,f§:b2Vec2;
      
      public function b2AABB()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§!8§ = new b2Vec2();
         }
         while(true)
         {
            this.§,f§ = new b2Vec2();
            while(!_loc2_)
            {
               super();
               if(!(_loc2_ && _loc1_))
               {
                  return;
               }
            }
         }
      }
      
      public static function §[!-§(param1:b2AABB, param2:b2AABB) : b2AABB
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2AABB = new b2AABB();
         if(_loc5_)
         {
            _loc3_.§[!-§(param1,param2);
         }
         return _loc3_;
      }
      
      public function §^!-§() : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.§,f§.x);
         if(_loc4_)
         {
            §§push(§§pop() - this.§!8§.x);
            if(!_loc5_)
            {
               addr27:
               §§push(Number(§§pop()));
            }
            var _loc1_:* = §§pop();
            §§push(this.§,f§.y);
            if(_loc4_)
            {
               §§push(§§pop() - this.§!8§.y);
               if(_loc4_)
               {
                  addr40:
                  §§push(Number(§§pop()));
               }
               var _loc2_:* = §§pop();
               if(!(_loc5_ && _loc3_))
               {
                  §§push(_loc1_);
                  if(_loc4_ || _loc2_)
                  {
                     §§push(0);
                     if(_loc4_ || _loc1_)
                     {
                        §§push(§§pop() >= §§pop());
                        if(!_loc5_)
                        {
                           if(§§pop())
                           {
                              if(_loc4_ || _loc2_)
                              {
                                 addr77:
                                 §§pop();
                                 §§push(_loc2_ >= 0);
                                 if(_loc4_)
                                 {
                                    addr83:
                                    §§push(Boolean(§§pop()));
                                 }
                                 var _loc3_:* = §§pop();
                                 if(!(_loc5_ && this))
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
                                                while(true)
                                                {
                                                   §§pop();
                                                   addr206:
                                                   while(true)
                                                   {
                                                      §§push(this.§!8§.§^!-§());
                                                      if(!_loc4_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      §§push(Boolean(§§pop()));
                                                   }
                                                }
                                                addr205:
                                             }
                                             while(true)
                                             {
                                                loop7:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   if(!(_loc4_ || this))
                                                   {
                                                      break;
                                                   }
                                                   if(§§pop())
                                                   {
                                                      continue loop0;
                                                   }
                                                   loop8:
                                                   while(true)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      loop9:
                                                      while(true)
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            continue loop7;
                                                         }
                                                         if(!_loc4_)
                                                         {
                                                            break;
                                                         }
                                                         _loc3_ = §§pop();
                                                         if(!(_loc5_ && _loc3_))
                                                         {
                                                            if(_loc4_ || _loc1_)
                                                            {
                                                               §§push(_loc3_);
                                                               if(_loc4_ || this)
                                                               {
                                                                  return §§pop();
                                                               }
                                                               continue;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(this.§,f§.§^!-§());
                                                               if(!(_loc4_ || _loc2_))
                                                               {
                                                                  continue loop8;
                                                               }
                                                               if(!(_loc5_ && this))
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  if(!_loc5_)
                                                                  {
                                                                     continue loop8;
                                                                  }
                                                                  continue loop9;
                                                               }
                                                               §§goto(addr205);
                                                            }
                                                            addr200:
                                                         }
                                                         §§goto(addr206);
                                                      }
                                                      continue loop1;
                                                   }
                                                }
                                                continue loop2;
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr200);
                              }
                           }
                           §§goto(addr83);
                        }
                     }
                  }
               }
               §§goto(addr77);
            }
            §§goto(addr40);
         }
         §§goto(addr27);
      }
      
      public function §2"F§() : b2Vec2
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(this.§!8§.x);
         if(!_loc2_)
         {
            §§push(this.§,f§.x);
            if(_loc1_)
            {
               §§push(§§pop() + §§pop());
               if(!_loc2_)
               {
                  addr52:
                  §§push(§§pop() / 2);
                  §§push(this.§!8§.y);
                  if(_loc1_ || this)
                  {
                     §§push(§§pop() + this.§,f§.y);
                     if(!_loc1_)
                     {
                     }
                     §§goto(addr70);
                  }
                  §§push(§§pop() / 2);
               }
               §§goto(addr52);
            }
            addr70:
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr52);
      }
      
      public function §#w§() : b2Vec2
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(this.§,f§.x);
         if(_loc1_ || _loc2_)
         {
            §§push(this.§!8§.x);
            if(_loc1_)
            {
               §§push(§§pop() - §§pop());
               if(_loc1_ || _loc2_)
               {
                  addr60:
                  §§push(§§pop() / 2);
               }
               §§push(this.§,f§.y);
               if(_loc1_)
               {
                  §§push(§§pop() - this.§!8§.y);
                  if(!_loc2_)
                  {
                     §§push(§§pop() / 2);
                  }
               }
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr60);
      }
      
      public function § Z§(param1:b2AABB) : Boolean
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
                              §§push(this.§!8§);
                              while(true)
                              {
                                 §§push(§§pop().x);
                                 addr291:
                                 while(true)
                                 {
                                    §§push(param1.§!8§);
                                    addr293:
                                    while(true)
                                    {
                                       §§push(§§pop().x);
                                       addr294:
                                       while(true)
                                       {
                                          §§push(§§pop() <= §§pop());
                                       }
                                    }
                                 }
                                 loop17:
                                 while(true)
                                 {
                                    §§push(this.§!8§);
                                    if(_loc3_ && _loc3_)
                                    {
                                       break;
                                    }
                                    §§push(§§pop().y);
                                    loop18:
                                    while(true)
                                    {
                                       §§push(param1.§!8§);
                                       if(!_loc3_)
                                       {
                                          §§push(§§pop().y);
                                          loop19:
                                          while(true)
                                          {
                                             §§push(§§pop() <= §§pop());
                                             loop20:
                                             while(true)
                                             {
                                                if(!_loc3_)
                                                {
                                                   if(!(_loc4_ || _loc3_))
                                                   {
                                                      continue loop3;
                                                   }
                                                   loop21:
                                                   while(true)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      loop22:
                                                      for(; _loc4_; while(true)
                                                      {
                                                         if(!(_loc4_ || _loc3_))
                                                         {
                                                            continue loop22;
                                                         }
                                                         §§goto(addr125);
                                                      },§§goto(addr284))
                                                      {
                                                         _loc2_ = §§pop();
                                                         loop23:
                                                         for(; _loc4_; if(!(_loc4_ || _loc3_))
                                                         {
                                                            continue;
                                                         },§§goto(addr110))
                                                         {
                                                            addr262:
                                                            if(!(_loc3_ && _loc3_))
                                                            {
                                                               §§push(_loc2_);
                                                               loop24:
                                                               for(; !_loc3_; while(true)
                                                               {
                                                                  if(!(_loc4_ || this))
                                                                  {
                                                                     continue loop24;
                                                                  }
                                                                  §§goto(addr184);
                                                               })
                                                               {
                                                                  addr199:
                                                                  if(_loc4_ || this)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                     if(_loc4_)
                                                                     {
                                                                        §§push(§§pop());
                                                                        while(_loc4_)
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              loop26:
                                                                              while(true)
                                                                              {
                                                                                 §§push(Boolean(§§pop()));
                                                                                 loop27:
                                                                                 while(true)
                                                                                 {
                                                                                    _loc2_ = §§pop();
                                                                                    addr187:
                                                                                    addr228:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc3_ && _loc3_)
                                                                                       {
                                                                                          break loop20;
                                                                                       }
                                                                                       §§push(_loc2_);
                                                                                       while(!_loc3_)
                                                                                       {
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             §§push(Boolean(§§pop()));
                                                                                             continue loop22;
                                                                                          }
                                                                                          if(!(_loc3_ && _loc3_))
                                                                                          {
                                                                                             return §§pop();
                                                                                          }
                                                                                       }
                                                                                       continue loop27;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(param1.§,f§);
                                                                                       addr158:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          addr159:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc3_ && _loc3_))
                                                                                             {
                                                                                                addr168:
                                                                                                §§push(this.§,f§);
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop().x);
                                                                                                   addr169:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc3_ && param1))
                                                                                                      {
                                                                                                         §§push(§§pop() <= §§pop());
                                                                                                         continue loop26;
                                                                                                      }
                                                                                                      §§goto(addr294);
                                                                                                   }
                                                                                                }
                                                                                                addr168:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr291);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              continue loop24;
                                                                              addr184:
                                                                           }
                                                                           §§push(§§pop());
                                                                           if(_loc3_ && _loc3_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(_loc4_)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 while(_loc4_ || param1)
                                                                                 {
                                                                                    §§pop();
                                                                                 }
                                                                                 continue loop24;
                                                                                 addr136:
                                                                              }
                                                                              else
                                                                              {
                                                                                 loop34:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Boolean(§§pop()));
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          continue loop22;
                                                                                       }
                                                                                       if(_loc4_ || _loc2_)
                                                                                       {
                                                                                          _loc2_ = §§pop();
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          if(_loc4_ || this)
                                                                                          {
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                continue loop23;
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr187);
                                                                                          }
                                                                                          §§goto(addr228);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          addr284:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                continue loop21;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop();
                                                                                                break loop23;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr110:
                                                                                       §§push(_loc2_);
                                                                                       if(!(_loc4_ || _loc2_))
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          break loop34;
                                                                                       }
                                                                                       addr78:
                                                                                       while(_loc4_)
                                                                                       {
                                                                                          continue loop34;
                                                                                       }
                                                                                       §§goto(addr136);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr33);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(param1.§,f§);
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    §§push(§§pop().y);
                                                                                    if(!(_loc3_ && _loc2_))
                                                                                    {
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          continue loop18;
                                                                                       }
                                                                                       §§push(this.§,f§);
                                                                                       if(!(_loc3_ && param1))
                                                                                       {
                                                                                          §§push(§§pop().y);
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             continue loop19;
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr168);
                                                                                       }
                                                                                       §§goto(addr169);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr159);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr158);
                                                                                 }
                                                                                 §§goto(addr159);
                                                                              }
                                                                              continue loop19;
                                                                           }
                                                                           §§goto(addr284);
                                                                        }
                                                                        continue loop2;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(_loc4_ || _loc3_)
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        §§goto(addr285);
                                                                     }
                                                                     continue loop0;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                     break loop22;
                                                                     §§goto(addr199);
                                                                  }
                                                               }
                                                               continue loop20;
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(_loc2_);
                                                               addr282:
                                                               while(true)
                                                               {
                                                                  §§goto(addr283);
                                                               }
                                                               §§goto(addr262);
                                                            }
                                                         }
                                                         continue loop17;
                                                      }
                                                      while(!_loc3_)
                                                      {
                                                         _loc2_ = §§pop();
                                                         §§goto(addr300);
                                                      }
                                                      continue loop1;
                                                   }
                                                }
                                                §§goto(addr282);
                                             }
                                             continue loop4;
                                          }
                                       }
                                       break;
                                    }
                                    §§goto(addr293);
                                 }
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        §§goto(addr296);
                     }
                  }
               }
            }
         }
         §§goto(addr228);
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
         if(!(_loc17_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:* = Number(Number.MAX_VALUE);
         §§push(param2.p1.x);
         if(_loc18_ || this)
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
         if(!_loc17_)
         {
            §§push(§§pop() - param2.p1.x);
            if(!_loc17_)
            {
               addr81:
               §§push(Number(§§pop()));
            }
            var _loc7_:* = §§pop();
            §§push(param2.p2.y);
            if(!(_loc17_ && this))
            {
               §§push(§§pop() - param2.p1.y);
               if(_loc18_ || param2)
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
                                    §§push(this.§!8§);
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
                                                            §§push(this.§,f§);
                                                            loop14:
                                                            while(true)
                                                            {
                                                               if(_loc18_ || param2)
                                                               {
                                                                  §§push(§§pop().x);
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc5_);
                                                                     addr448:
                                                                     if(!(_loc18_ || _loc3_))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(_loc17_)
                                                                     {
                                                                        continue loop9;
                                                                     }
                                                                     _loc16_ = §§pop();
                                                                     loop93:
                                                                     while(true)
                                                                     {
                                                                        if(_loc18_)
                                                                        {
                                                                           if(!_loc17_)
                                                                           {
                                                                              if(!_loc17_)
                                                                              {
                                                                                 if(_loc18_ || param2)
                                                                                 {
                                                                                    if(!(_loc17_ && param2))
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc13_);
                                                                                          loop111:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc17_ && param1))
                                                                                             {
                                                                                                if(_loc17_ && this)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                §§push(_loc3_);
                                                                                                while(_loc18_)
                                                                                                {
                                                                                                   if(§§pop() > §§pop())
                                                                                                   {
                                                                                                      loop112:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc11_.y = _loc16_;
                                                                                                         loop110:
                                                                                                         while(_loc18_ || param2)
                                                                                                         {
                                                                                                            if(_loc18_ || _loc3_)
                                                                                                            {
                                                                                                               _loc11_.x = 0;
                                                                                                               loop102:
                                                                                                               for(; !(_loc17_ && _loc3_); §§goto(addr412))
                                                                                                               {
                                                                                                                  if(_loc18_)
                                                                                                                  {
                                                                                                                     if(_loc18_)
                                                                                                                     {
                                                                                                                        §§push(_loc13_);
                                                                                                                        loop103:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!_loc17_)
                                                                                                                           {
                                                                                                                              if(!_loc17_)
                                                                                                                              {
                                                                                                                                 if(_loc18_)
                                                                                                                                 {
                                                                                                                                    if(_loc18_)
                                                                                                                                    {
                                                                                                                                       if(_loc18_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                          loop104:
                                                                                                                                          for(; _loc18_ || this; while(_loc18_ || param2)
                                                                                                                                          {
                                                                                                                                             continue loop103;
                                                                                                                                          })
                                                                                                                                          {
                                                                                                                                             _loc3_ = §§pop();
                                                                                                                                             loop105:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc17_ && param1)
                                                                                                                                                {
                                                                                                                                                   continue loop112;
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(Number(Math.min(_loc4_,_loc14_)));
                                                                                                                                                   continue loop104;
                                                                                                                                                }
                                                                                                                                                loop31:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                   loop32:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      _loc13_ = §§pop();
                                                                                                                                                      loop33:
                                                                                                                                                      while(_loc18_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc15_);
                                                                                                                                                         loop34:
                                                                                                                                                         for(; !(_loc17_ && _loc3_); while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc17_ && param1))
                                                                                                                                                            {
                                                                                                                                                               if(_loc18_ || _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr582);
                                                                                                                                                                  §§push(_loc14_);
                                                                                                                                                               }
                                                                                                                                                               break;
                                                                                                                                                            }
                                                                                                                                                            continue loop34;
                                                                                                                                                            §§goto(addr441);
                                                                                                                                                         },§§goto(addr935))
                                                                                                                                                         {
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                            loop35:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               _loc14_ = §§pop();
                                                                                                                                                               loop36:
                                                                                                                                                               while(_loc18_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(1);
                                                                                                                                                                  loop37:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                     loop38:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        _loc16_ = §§pop();
                                                                                                                                                                        addr883:
                                                                                                                                                                        while(_loc18_)
                                                                                                                                                                        {
                                                                                                                                                                           loop40:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc13_);
                                                                                                                                                                              loop41:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc3_);
                                                                                                                                                                                 loop42:
                                                                                                                                                                                 while(!(_loc17_ && this))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(§§pop() > §§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc11_.x = _loc16_;
                                                                                                                                                                                          loop44:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             _loc11_.y = 0;
                                                                                                                                                                                             addr863:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc13_);
                                                                                                                                                                                                loop46:
                                                                                                                                                                                                for(; !_loc17_; if(_loc17_ && param1)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue;
                                                                                                                                                                                                },§§goto(addr605),§§push(Number(§§pop())))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                                                                   loop47:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc18_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         _loc3_ = §§pop();
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr162:
                                                                                                                                                                                                            if(_loc17_ && param1)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(_loc18_ || this)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc17_ && _loc3_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  loop130:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(true);
                                                                                                                                                                                                                     if(!_loc17_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!(_loc17_ && param1))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           return §§pop();
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     loop131:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!(_loc17_ && _loc3_))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!(_loc17_ && param1))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              return §§pop();
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr995);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        loop97:
                                                                                                                                                                                                                        for(; _loc18_; continue loop131)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!(_loc17_ && _loc3_))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc18_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 loop98:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(§§pop())
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr763:
                                                                                                                                                                                                                                       §§push(false);
                                                                                                                                                                                                                                       break loop130;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       loop100:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          param1.fraction = _loc3_;
                                                                                                                                                                                                                                          if(_loc18_ || param1)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc17_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop93;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             if(!(_loc17_ && _loc3_))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§goto(addr162);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!(_loc18_ || this))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr977:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr977:
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc10_);
                                                                                                                                                                                                                                                   continue loop41;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr768:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr977);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             loop101:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc17_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop105;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                if(!_loc18_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop102;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr277:
                                                                                                                                                                                                                                                if(!(_loc17_ && param2))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr284:
                                                                                                                                                                                                                                                   if(!(_loc17_ && param1))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop100;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   loop86:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc14_);
                                                                                                                                                                                                                                                      addr523:
                                                                                                                                                                                                                                                      loop87:
                                                                                                                                                                                                                                                      while(_loc18_ || _loc3_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr530:
                                                                                                                                                                                                                                                         if(!(_loc17_ && param2))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc18_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!_loc18_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                                                                     addr543:
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  _loc13_ = §§pop();
                                                                                                                                                                                                                                                                  loop89:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!(_loc17_ && param2))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc18_ || _loc3_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc17_ && param1)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              break;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§push(_loc15_);
                                                                                                                                                                                                                                                                           if(!(_loc17_ && this))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc17_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 continue loop47;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              if(_loc18_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr503:
                                                                                                                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                 loop90:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc18_ || this)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!_loc17_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc17_ && param1)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             break;
                                                                                                                                                                                                                                                                                             addr720:
                                                                                                                                                                                                                                                                                             addr520:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          _loc14_ = §§pop();
                                                                                                                                                                                                                                                                                          loop91:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(1);
                                                                                                                                                                                                                                                                                             if(!(_loc17_ && param2))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr422:
                                                                                                                                                                                                                                                                                                if(!(_loc18_ || param2))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   break;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                if(_loc17_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   continue loop1;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                while(!_loc17_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr434:
                                                                                                                                                                                                                                                                                                   if(_loc17_ && _loc3_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(!_loc17_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue loop46;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         continue loop35;
                                                                                                                                                                                                                                                                                                         §§goto(addr434);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      continue loop46;
                                                                                                                                                                                                                                                                                                      addr595:
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   if(_loc17_ && _loc3_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop34;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr448);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(_loc18_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!(_loc18_ || param1))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         break;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      _loc15_ = §§pop();
                                                                                                                                                                                                                                                                                                      continue loop86;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   addr701:
                                                                                                                                                                                                                                                                                                   addr848:
                                                                                                                                                                                                                                                                                                   while(!(_loc17_ && this))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!_loc17_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         _loc13_ = §§pop();
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(!_loc17_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(!_loc18_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  break;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§push(this.§,f§);
                                                                                                                                                                                                                                                                                                               if(_loc18_ || param1)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                                  while(_loc18_ || param2)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(!(_loc17_ && _loc3_))
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(_loc18_ || param2)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                           while(_loc18_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(_loc12_);
                                                                                                                                                                                                                                                                                                                                 addr662:
                                                                                                                                                                                                                                                                                                                                 addr681:
                                                                                                                                                                                                                                                                                                                                 while(!_loc17_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(!_loc17_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                       break loop87;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    addr934:
                                                                                                                                                                                                                                                                                                                                    addr798:
                                                                                                                                                                                                                                                                                                                                    while(!(_loc17_ && param2))
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                          if(_loc18_ || this)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(!§§pop())
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                break loop97;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             continue loop98;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          addr1007:
                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(!§§pop())
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§pop();
                                                                                                                                                                                                                                                                                                                                                   addr1009:
                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§push(this.§,f§);
                                                                                                                                                                                                                                                                                                                                                      addr989:
                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop().x);
                                                                                                                                                                                                                                                                                                                                                         addr990:
                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§push(_loc5_);
                                                                                                                                                                                                                                                                                                                                                            addr991:
                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                addr1008:
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                addr993:
                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      break loop36;
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr977);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(this.§,f§);
                                                                                                                                                                                                                                                                                                                                          addr732:
                                                                                                                                                                                                                                                                                                                                          while(_loc18_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                                                             while(!_loc17_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                                                while(!_loc17_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(!_loc17_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      if(!(_loc17_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                                                                                                                                         continue loop97;
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      addr1005:
                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                                                                                                                                         addr1006:
                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1007);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         if(_loc18_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            if(§§pop() <= §§pop())
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               continue loop40;
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               §§push(_loc13_);
                                                                                                                                                                                                                                                                                                                                                               addr914:
                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                  break loop90;
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr284);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr991);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      addr910:
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr991);
                                                                                                                                                                                                                                                                                                                                                   if(_loc17_ && param1)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      continue;
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   if(_loc18_ || this)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      if(§§pop() > §§pop())
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         continue loop101;
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      continue loop100;
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   addr822:
                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      if(§§pop() > §§pop())
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§push(false);
                                                                                                                                                                                                                                                                                                                                                            break loop103;
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         addr823:
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr768);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                continue loop42;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             continue loop4;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          addr817:
                                                                                                                                                                                                                                                                                                                                          continue loop14;
                                                                                                                                                                                                                                                                                                                                          §§pop();
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                       addr935:
                                                                                                                                                                                                                                                                                                                                       while(_loc18_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(_loc12_);
                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                             addr939:
                                                                                                                                                                                                                                                                                                                                             while(_loc18_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                continue loop0;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             continue loop11;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       continue loop7;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                    continue loop35;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr530);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                              break loop111;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           addr658:
                                                                                                                                                                                                                                                                                                                           addr690:
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr990);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr914);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  continue loop38;
                                                                                                                                                                                                                                                                                                                  addr636:
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr732);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                  addr781:
                                                                                                                                                                                                                                                                                                                  addr909:
                                                                                                                                                                                                                                                                                                                  while(!(_loc17_ && param1))
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(this.§!8§);
                                                                                                                                                                                                                                                                                                                     if(!(_loc17_ && _loc3_))
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§goto(addr798);
                                                                                                                                                                                                                                                                                                                        §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        addr1004:
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1005);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§goto(addr781);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               addr780:
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr910);
                                                                                                                                                                                                                                                                                                            continue loop89;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         continue loop44;
                                                                                                                                                                                                                                                                                                         addr711:
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr939);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      _loc4_ = §§pop();
                                                                                                                                                                                                                                                                                                      break loop93;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   _loc12_ = §§pop();
                                                                                                                                                                                                                                                                                                   break loop102;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr618:
                                                                                                                                                                                                                                                                                             while(_loc18_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   _loc16_ = §§pop();
                                                                                                                                                                                                                                                                                                   break loop110;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                continue loop91;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr919:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                addr920:
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   _loc16_ = §§pop();
                                                                                                                                                                                                                                                                                                   addr921:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§goto(addr909);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(_loc17_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop37;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§push(_loc8_);
                                                                                                                                                                                                                                                                                             if(_loc17_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                break;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§goto(addr727);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr422);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          continue loop2;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr636);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr621);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    _loc15_ = §§pop();
                                                                                                                                                                                                                                                                                    addr916:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop31;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 addr503:
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    _loc14_ = §§pop();
                                                                                                                                                                                                                                                                                    addr955:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 addr954:
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr919);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr503);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr818);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr711);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  continue loop33;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr735);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            continue loop41;
                                                                                                                                                                                                                                                            addr538:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr661);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                                                                         addr668:
                                                                                                                                                                                                                                                         while(!_loc17_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            _loc14_ = §§pop();
                                                                                                                                                                                                                                                            while(_loc18_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§goto(addr618);
                                                                                                                                                                                                                                                               §§push(-1);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc5_);
                                                                                                                                                                                                                                                               addr1002:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§goto(addr1004);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop12;
                                                                                                                                                                                                                                                         §§goto(addr523);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr615:
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr913);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr991);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr993);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr806);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        if(_loc18_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr817);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        break loop103;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  return §§pop();
                                                                                                                                                                                                                  addr183:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1009);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr916);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr1002);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop32;
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       addr875:
                                                                                                                                                                                    }
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr848);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop10;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        continue loop36;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr995:
                                                                                                                                                               return §§pop();
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         continue loop3;
                                                                                                                                                      }
                                                                                                                                                      continue loop13;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§goto(addr681);
                                                                                                                                             §§goto(addr343);
                                                                                                                                          }
                                                                                                                                          addr343:
                                                                                                                                          addr680:
                                                                                                                                       }
                                                                                                                                       §§goto(addr920);
                                                                                                                                    }
                                                                                                                                    §§goto(addr781);
                                                                                                                                 }
                                                                                                                                 §§goto(addr668);
                                                                                                                              }
                                                                                                                              §§goto(addr538);
                                                                                                                           }
                                                                                                                           §§goto(addr432);
                                                                                                                           if(!(_loc18_ || param2))
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           if(_loc18_)
                                                                                                                           {
                                                                                                                              §§goto(addr314);
                                                                                                                           }
                                                                                                                           §§goto(addr503);
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!_loc17_)
                                                                                                                           {
                                                                                                                              if(!(_loc17_ && this))
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              §§goto(addr1006);
                                                                                                                           }
                                                                                                                           §§goto(addr1008);
                                                                                                                        }
                                                                                                                        return §§pop();
                                                                                                                     }
                                                                                                                     §§goto(addr875);
                                                                                                                  }
                                                                                                                  §§goto(addr863);
                                                                                                               }
                                                                                                               addr412:
                                                                                                               continue loop6;
                                                                                                            }
                                                                                                            §§goto(addr763);
                                                                                                         }
                                                                                                         while(!_loc17_)
                                                                                                         {
                                                                                                            §§goto(addr567);
                                                                                                            §§push(_loc13_);
                                                                                                         }
                                                                                                         continue loop5;
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr292);
                                                                                                }
                                                                                                continue loop8;
                                                                                             }
                                                                                             §§goto(addr523);
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc17_)
                                                                                             {
                                                                                                if(!(_loc17_ && param1))
                                                                                                {
                                                                                                   §§goto(addr701);
                                                                                                   §§push(Number(§§pop()));
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             §§goto(addr726);
                                                                                          }
                                                                                          addr821:
                                                                                          while(true)
                                                                                          {
                                                                                             §§goto(addr822);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr955);
                                                                                 }
                                                                                 §§goto(addr883);
                                                                              }
                                                                              break;
                                                                           }
                                                                           §§goto(addr543);
                                                                        }
                                                                        §§goto(addr520);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr821);
                                                                     }
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr989);
                                                               }
                                                               §§goto(addr934);
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
                  §§goto(addr1001);
               }
            }
            §§goto(addr183);
         }
         §§goto(addr81);
      }
      
      public function §3§(param1:b2AABB) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(param1.§!8§.x);
         if(!_loc7_)
         {
            §§push(§§pop() - this.§,f§.x);
            if(!(_loc7_ && _loc3_))
            {
               addr32:
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(param1.§!8§.y);
            if(!_loc7_)
            {
               §§push(§§pop() - this.§,f§.y);
               if(_loc6_)
               {
                  addr45:
                  §§push(Number(§§pop()));
               }
               var _loc3_:* = §§pop();
               §§push(this.§!8§.x);
               if(_loc6_ || param1)
               {
                  §§push(§§pop() - param1.§,f§.x);
                  if(!_loc7_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc4_:* = §§pop();
               §§push(this.§!8§.y);
               if(!(_loc7_ && this))
               {
                  §§push(§§pop() - param1.§,f§.y);
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
                                          addr205:
                                          while(true)
                                          {
                                             §§push(§§pop() > §§pop());
                                             addr206:
                                             while(_loc6_)
                                             {
                                             }
                                             continue loop4;
                                          }
                                          addr117:
                                          if(!(_loc6_ || _loc2_))
                                          {
                                             continue;
                                          }
                                          §§push(0);
                                          if(!_loc7_)
                                          {
                                             if(_loc7_)
                                             {
                                                continue loop1;
                                             }
                                             §§push(§§pop() > §§pop());
                                             if(_loc6_ || param1)
                                             {
                                                if(!(_loc7_ && _loc2_))
                                                {
                                                   loop16:
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(!_loc7_)
                                                         {
                                                            if(!_loc7_)
                                                            {
                                                               if(!_loc7_)
                                                               {
                                                                  addr153:
                                                                  §§push(false);
                                                                  while(true)
                                                                  {
                                                                     if(_loc6_ || param1)
                                                                     {
                                                                        addr160:
                                                                        if(!(_loc6_ || param1))
                                                                        {
                                                                           loop13:
                                                                           for(; _loc6_; §§goto(addr160))
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(!(_loc7_ && param1))
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop();
                                                                                       addr191:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc5_);
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             §§goto(addr117);
                                                                                          }
                                                                                          addr173:
                                                                                          while(!_loc7_)
                                                                                          {
                                                                                             §§push(0);
                                                                                             while(_loc6_)
                                                                                             {
                                                                                                §§push(§§pop() > §§pop());
                                                                                                continue loop13;
                                                                                             }
                                                                                             §§goto(addr205);
                                                                                          }
                                                                                          continue loop0;
                                                                                       }
                                                                                       continue loop6;
                                                                                    }
                                                                                    continue;
                                                                                    addr190:
                                                                                 }
                                                                                 continue loop16;
                                                                              }
                                                                              continue loop3;
                                                                           }
                                                                           while(_loc7_ && this)
                                                                           {
                                                                              continue loop2;
                                                                           }
                                                                           return §§pop();
                                                                           addr211:
                                                                        }
                                                                        return §§pop();
                                                                     }
                                                                     §§goto(addr190);
                                                                  }
                                                                  addr153:
                                                               }
                                                               while(true)
                                                               {
                                                                  §§goto(addr211);
                                                               }
                                                               addr210:
                                                            }
                                                            §§goto(addr191);
                                                         }
                                                         else if(_loc6_)
                                                         {
                                                            addr91:
                                                            §§push(true);
                                                            if(!(_loc7_ && _loc3_))
                                                            {
                                                               return §§pop();
                                                            }
                                                            §§goto(addr153);
                                                         }
                                                         else
                                                         {
                                                            if(!(_loc6_ || this))
                                                            {
                                                               break;
                                                            }
                                                            addr226:
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr173);
                                                            §§goto(addr226);
                                                         }
                                                         addr171:
                                                      }
                                                      §§goto(addr91);
                                                   }
                                                   continue loop5;
                                                }
                                                §§goto(addr206);
                                             }
                                             §§goto(addr153);
                                          }
                                          §§goto(addr176);
                                       }
                                    }
                                 }
                              }
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    §§goto(addr171);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr210);
            }
            §§goto(addr45);
         }
         §§goto(addr32);
      }
      
      public function §[!-§(param1:b2AABB, param2:b2AABB) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(this.§!8§);
            loop0:
            while(true)
            {
               §§pop().x = Math.min(param1.§!8§.x,param2.§!8§.x);
               addr119:
               while(true)
               {
                  §§push(this.§!8§);
                  if(_loc4_ || _loc3_)
                  {
                     §§pop().y = Math.min(param1.§!8§.y,param2.§!8§.y);
                     loop2:
                     for(; !(_loc3_ && _loc3_); if(_loc4_)
                     {
                        return;
                     })
                     {
                        §§push(this.§,f§);
                        while(true)
                        {
                           §§pop().x = Math.max(param1.§,f§.x,param2.§,f§.x);
                           while(true)
                           {
                              §§push(this.§,f§);
                              if(_loc3_)
                              {
                                 break;
                              }
                              §§pop().y = Math.max(param1.§,f§.y,param2.§,f§.y);
                              if(_loc4_ || param1)
                              {
                                 continue loop2;
                              }
                           }
                        }
                     }
                     continue;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr119);
      }
   }
}
