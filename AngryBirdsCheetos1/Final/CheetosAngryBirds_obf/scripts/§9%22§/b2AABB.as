package §9"§
{
   import §0!G§.b2Vec2;
   
   public class b2AABB
   {
       
      
      public var §!!C§:b2Vec2;
      
      public var §<0§:b2Vec2;
      
      public function b2AABB()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§!!C§ = new b2Vec2();
         }
         do
         {
            this.§<0§ = new b2Vec2();
            do
            {
               super();
            }
            while(!(_loc1_ || _loc2_));
            
         }
         while(!(_loc1_ || _loc1_));
         
      }
      
      public static function §8h§(param1:b2AABB, param2:b2AABB) : b2AABB
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2AABB = new b2AABB();
         if(_loc5_)
         {
            _loc3_.§8h§(param1,param2);
         }
         return _loc3_;
      }
      
      public function §6m§() : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§<0§.x);
         if(_loc5_)
         {
            §§push(§§pop() - this.§!!C§.x);
            if(_loc5_)
            {
               addr28:
               §§push(Number(§§pop()));
            }
            var _loc1_:* = §§pop();
            §§push(this.§<0§.y);
            if(!_loc4_)
            {
               §§push(§§pop() - this.§!!C§.y);
               if(_loc5_ || _loc1_)
               {
                  addr46:
                  §§push(Number(§§pop()));
               }
               var _loc2_:* = §§pop();
               if(_loc5_ || _loc1_)
               {
                  §§push(_loc1_);
                  if(_loc5_ || _loc1_)
                  {
                     §§push(0);
                     if(_loc5_ || _loc3_)
                     {
                        §§push(§§pop() >= §§pop());
                        if(_loc5_ || _loc3_)
                        {
                           if(§§pop())
                           {
                              if(!_loc4_)
                              {
                                 §§pop();
                                 addr86:
                                 addr85:
                                 addr84:
                                 §§push(_loc2_ >= 0);
                                 if(!_loc5_)
                                 {
                                 }
                                 addr100:
                                 var _loc3_:* = §§pop();
                                 if(_loc5_)
                                 {
                                    §§push(_loc3_);
                                    if(_loc5_)
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(!(_loc4_ && this))
                                       {
                                          §§push(§§pop());
                                          loop0:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                while(true)
                                                {
                                                   §§pop();
                                                   loop9:
                                                   while(true)
                                                   {
                                                      §§push(this.§!!C§.§6m§());
                                                      if(!(_loc4_ && _loc1_))
                                                      {
                                                         addr163:
                                                         §§push(Boolean(§§pop()));
                                                         while(true)
                                                         {
                                                         }
                                                         addr164:
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         if(_loc4_)
                                                         {
                                                            continue loop0;
                                                         }
                                                         if(§§pop())
                                                         {
                                                            loop3:
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               loop4:
                                                               while(true)
                                                               {
                                                                  if(_loc4_ && _loc2_)
                                                                  {
                                                                     continue loop9;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§<0§.§6m§());
                                                                     if(!_loc4_)
                                                                     {
                                                                        continue loop3;
                                                                     }
                                                                     addr142:
                                                                     while(true)
                                                                     {
                                                                        §§push(Boolean(§§pop()));
                                                                        addr143:
                                                                        do
                                                                        {
                                                                           _loc3_ = §§pop();
                                                                           if(_loc5_ || _loc2_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           continue loop4;
                                                                        }
                                                                        while(§§push(_loc3_), !(_loc5_ || _loc1_));
                                                                        
                                                                        return §§pop();
                                                                     }
                                                                  }
                                                               }
                                                               continue loop9;
                                                            }
                                                         }
                                                         §§goto(addr141);
                                                      }
                                                      §§goto(addr163);
                                                   }
                                                }
                                                addr201:
                                             }
                                             §§goto(addr164);
                                          }
                                       }
                                    }
                                    §§goto(addr201);
                                 }
                                 §§goto(addr177);
                              }
                           }
                           §§push(Boolean(§§pop()));
                        }
                        §§goto(addr100);
                     }
                     §§goto(addr86);
                  }
                  §§goto(addr85);
               }
               §§goto(addr84);
            }
            §§goto(addr46);
         }
         §§goto(addr28);
      }
      
      public function §2!A§() : b2Vec2
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(this.§!!C§.x);
         if(!_loc2_)
         {
            §§push(this.§<0§.x);
            if(!(_loc2_ && this))
            {
               §§push(§§pop() + §§pop());
               if(_loc1_)
               {
                  addr45:
                  §§push(§§pop() / 2);
               }
               §§push(this.§!!C§.y);
               if(!_loc2_)
               {
                  §§goto(addr52);
               }
               §§goto(addr73);
            }
            addr52:
            §§push(§§pop() + this.§<0§.y);
            if(!(_loc2_ && _loc2_))
            {
               addr73:
               §§push(§§pop() / 2);
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr45);
      }
      
      public function §?a§() : b2Vec2
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(this.§<0§.x);
         if(!_loc1_)
         {
            §§push(this.§!!C§.x);
            if(!_loc1_)
            {
               §§push(§§pop() - §§pop());
               if(!(_loc1_ && _loc2_))
               {
                  addr48:
                  §§push(§§pop() / 2);
                  §§push(this.§<0§.y);
                  if(_loc2_ || _loc2_)
                  {
                     §§push(§§pop() - this.§!!C§.y);
                     if(!_loc1_)
                     {
                        §§push(§§pop() / 2);
                     }
                  }
               }
               §§goto(addr48);
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr48);
      }
      
      public function §&!W§(param1:b2AABB) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = true;
         if(!(_loc3_ && param1))
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               while(true)
               {
                  §§push(§§pop());
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
                              §§push(this.§!!C§);
                              while(true)
                              {
                                 §§push(§§pop().x);
                                 addr281:
                                 while(true)
                                 {
                                    §§push(param1.§!!C§);
                                    addr283:
                                    while(true)
                                    {
                                       §§push(§§pop().x);
                                       addr284:
                                       while(true)
                                       {
                                          §§push(§§pop() <= §§pop());
                                       }
                                    }
                                 }
                                 loop17:
                                 while(true)
                                 {
                                    §§push(this.§!!C§);
                                    if(_loc3_)
                                    {
                                       break;
                                    }
                                    §§push(§§pop().y);
                                    loop18:
                                    for(; !(_loc3_ && _loc3_); if(_loc3_ && this)
                                    {
                                       continue;
                                    },§§push(this.§<0§),if(!(_loc3_ && this))
                                    {
                                       §§push(§§pop().y);
                                       if(_loc4_)
                                       {
                                          §§push(§§pop() <= §§pop());
                                          if(_loc4_)
                                          {
                                             §§goto(addr85);
                                          }
                                          §§goto(addr94);
                                       }
                                       §§goto(addr194);
                                    },§§goto(addr193))
                                    {
                                       §§push(param1.§!!C§);
                                       if(!_loc3_)
                                       {
                                          §§push(§§pop().y);
                                          loop19:
                                          while(true)
                                          {
                                             §§push(§§pop() <= §§pop());
                                             loop20:
                                             while(!_loc3_)
                                             {
                                                loop21:
                                                while(true)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   loop22:
                                                   while(true)
                                                   {
                                                      _loc2_ = §§pop();
                                                      loop23:
                                                      while(true)
                                                      {
                                                         §§push(_loc2_);
                                                         loop24:
                                                         while(true)
                                                         {
                                                            if(_loc4_ || _loc3_)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  addr233:
                                                                  addr85:
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        loop27:
                                                                        while(_loc4_ || _loc2_)
                                                                        {
                                                                           §§pop();
                                                                           loop28:
                                                                           while(true)
                                                                           {
                                                                              §§push(param1.§<0§);
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().x);
                                                                                 addr191:
                                                                                 addr186:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§<0§);
                                                                                    addr193:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().x);
                                                                                       addr194:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             continue loop19;
                                                                                          }
                                                                                          if(_loc3_ && param1)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §§push(§§pop() <= §§pop());
                                                                                          while(true)
                                                                                          {
                                                                                             addr205:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Boolean(§§pop()));
                                                                                                addr206:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc3_ && _loc3_)
                                                                                                   {
                                                                                                      continue loop27;
                                                                                                   }
                                                                                                   _loc2_ = §§pop();
                                                                                                   while(!(_loc3_ && this))
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc2_);
                                                                                                         continue loop22;
                                                                                                      }
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc2_);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            §§push(Boolean(§§pop()));
                                                                                                            break loop27;
                                                                                                         }
                                                                                                         continue loop3;
                                                                                                         addr35:
                                                                                                         if(!(_loc3_ && _loc2_))
                                                                                                         {
                                                                                                            return §§pop();
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop4;
                                                                                                      §§goto(addr214);
                                                                                                   }
                                                                                                   addr214:
                                                                                                }
                                                                                                continue loop28;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr284);
                                                                                    }
                                                                                 }
                                                                                 §§push(param1.§<0§);
                                                                                 if(!(_loc4_ || param1))
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 §§push(§§pop().y);
                                                                                 if(_loc4_ || this)
                                                                                 {
                                                                                    continue loop18;
                                                                                 }
                                                                                 §§goto(addr191);
                                                                              }
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop());
                                                                           addr274:
                                                                           while(true)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 continue loop21;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§pop();
                                                                                 break loop24;
                                                                              }
                                                                           }
                                                                           §§goto(addr234);
                                                                        }
                                                                        addr234:
                                                                        addr273:
                                                                     }
                                                                     §§goto(addr204);
                                                                  }
                                                                  addr85:
                                                                  if(_loc3_ && this)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                     addr94:
                                                                     loop40:
                                                                     while(true)
                                                                     {
                                                                        if(_loc3_)
                                                                        {
                                                                           continue loop22;
                                                                        }
                                                                        _loc2_ = §§pop();
                                                                        if(_loc4_ || param1)
                                                                        {
                                                                           if(_loc4_)
                                                                           {
                                                                              if(_loc4_)
                                                                              {
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    break loop24;
                                                                                 }
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    continue loop4;
                                                                                 }
                                                                                 §§push(_loc2_);
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       §§goto(addr35);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr205);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr162:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc3_ && _loc2_))
                                                                                       {
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             continue loop24;
                                                                                          }
                                                                                          if(!(_loc4_ || _loc2_))
                                                                                          {
                                                                                             continue loop20;
                                                                                          }
                                                                                          §§pop();
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc4_ || _loc3_))
                                                                                             {
                                                                                                break loop40;
                                                                                             }
                                                                                             §§goto(addr186);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr162:
                                                                                 }
                                                                                 §§goto(addr206);
                                                                              }
                                                                              §§goto(addr242);
                                                                           }
                                                                           §§goto(addr214);
                                                                        }
                                                                        §§goto(addr179);
                                                                     }
                                                                     continue loop23;
                                                                     §§goto(addr85);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr275);
                                                         }
                                                         continue loop17;
                                                      }
                                                   }
                                                }
                                             }
                                             addr286:
                                             while(true)
                                             {
                                                §§push(Boolean(§§pop()));
                                                continue loop0;
                                             }
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr283);
                                       }
                                       §§goto(addr284);
                                    }
                                    §§goto(addr281);
                                 }
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        §§goto(addr286);
                     }
                  }
               }
            }
         }
         §§goto(addr221);
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
         if(_loc17_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(param2.p1.y);
         if(_loc17_)
         {
            §§push(Number(§§pop()));
         }
         var _loc6_:* = §§pop();
         §§push(param2.p2.x);
         if(!_loc18_)
         {
            §§push(§§pop() - param2.p1.x);
            if(_loc17_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc7_:* = §§pop();
         §§push(param2.p2.y);
         if(!(_loc18_ && this))
         {
            §§push(§§pop() - param2.p1.y);
            if(!(_loc18_ && param1))
            {
               addr88:
               §§push(Number(§§pop()));
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
                     loop1:
                     while(true)
                     {
                        §§push(_loc5_);
                        loop2:
                        while(true)
                        {
                           §§push(this.§!!C§);
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
                                             addr923:
                                             while(true)
                                             {
                                                §§push(this.§<0§);
                                                addr879:
                                                while(true)
                                                {
                                                   §§push(§§pop().x);
                                                   addr880:
                                                   while(true)
                                                   {
                                                      §§push(_loc5_);
                                                      addr881:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() < §§pop());
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          addr922:
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
                                                      if(_loc17_)
                                                      {
                                                         if(§§pop() >= Number.MIN_VALUE)
                                                         {
                                                            §§push(1);
                                                            loop16:
                                                            while(!(_loc18_ && this))
                                                            {
                                                               if(_loc17_ || this)
                                                               {
                                                                  §§push(_loc8_);
                                                                  if(_loc17_ || _loc3_)
                                                                  {
                                                                     §§push(§§pop() / §§pop());
                                                                     if(!_loc18_)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     loop17:
                                                                     for(; _loc17_ || param1; if(_loc18_ && param2)
                                                                     {
                                                                        continue;
                                                                     },§§goto(addr258))
                                                                     {
                                                                        _loc12_ = §§pop();
                                                                        loop18:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§!!C§);
                                                                           if(_loc17_)
                                                                           {
                                                                              §§push(§§pop().y);
                                                                              loop19:
                                                                              while(!_loc18_)
                                                                              {
                                                                                 §§push(_loc6_);
                                                                                 if(!_loc18_)
                                                                                 {
                                                                                    if(!_loc18_)
                                                                                    {
                                                                                       §§push(§§pop() - §§pop());
                                                                                       loop20:
                                                                                       while(!_loc18_)
                                                                                       {
                                                                                          if(!(_loc18_ && param1))
                                                                                          {
                                                                                             §§push(_loc12_);
                                                                                             loop21:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                loop22:
                                                                                                while(!_loc18_)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   loop23:
                                                                                                   while(!_loc18_)
                                                                                                   {
                                                                                                      _loc13_ = §§pop();
                                                                                                      continue loop18;
                                                                                                      addr462:
                                                                                                      if(!(_loc17_ || param1))
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      if(_loc17_)
                                                                                                      {
                                                                                                         §§push(_loc14_);
                                                                                                         loop36:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc17_ || this)
                                                                                                            {
                                                                                                               if(_loc18_ && param2)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               if(§§pop() > §§pop())
                                                                                                               {
                                                                                                                  loop37:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc17_ || _loc3_)
                                                                                                                     {
                                                                                                                        if(!_loc18_)
                                                                                                                        {
                                                                                                                           §§push(_loc13_);
                                                                                                                           loop38:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                              loop39:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!_loc17_)
                                                                                                                                 {
                                                                                                                                    continue loop20;
                                                                                                                                 }
                                                                                                                                 _loc15_ = §§pop();
                                                                                                                                 loop40:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc14_);
                                                                                                                                    loop41:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!(_loc18_ && param1))
                                                                                                                                       {
                                                                                                                                          addr776:
                                                                                                                                          if(_loc17_)
                                                                                                                                          {
                                                                                                                                             if(_loc17_)
                                                                                                                                             {
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                loop42:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc17_ || this)
                                                                                                                                                   {
                                                                                                                                                      if(_loc17_)
                                                                                                                                                      {
                                                                                                                                                         _loc13_ = §§pop();
                                                                                                                                                         loop43:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc15_);
                                                                                                                                                            loop44:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(_loc17_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                  continue loop38;
                                                                                                                                                               }
                                                                                                                                                               addr685:
                                                                                                                                                               loop87:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§!!C§);
                                                                                                                                                                  if(_loc18_)
                                                                                                                                                                  {
                                                                                                                                                                     break;
                                                                                                                                                                  }
                                                                                                                                                                  §§push(§§pop().y);
                                                                                                                                                                  loop66:
                                                                                                                                                                  while(_loc17_ || param1)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() < §§pop());
                                                                                                                                                                     loop67:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop());
                                                                                                                                                                        if(_loc18_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop6;
                                                                                                                                                                        }
                                                                                                                                                                        if(!§§pop())
                                                                                                                                                                        {
                                                                                                                                                                           loop68:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc17_ || param1)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc17_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop13;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§pop();
                                                                                                                                                                                 loop62:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(this.§<0§);
                                                                                                                                                                                    addr631:
                                                                                                                                                                                    loop71:
                                                                                                                                                                                    while(!(_loc18_ && this))
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc17_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr640:
                                                                                                                                                                                          §§push(§§pop().y);
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc18_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc6_);
                                                                                                                                                                                                loop70:
                                                                                                                                                                                                while(_loc17_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() < §§pop());
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc17_ || this)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc18_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            break;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop67;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop68;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(§§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop1;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      loop59:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         loop60:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            param1.fraction = _loc3_;
                                                                                                                                                                                                            if(_loc17_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc17_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc18_ && param2)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc17_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr261:
                                                                                                                                                                                                                           if(!(_loc18_ && this))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc18_ && param1)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop62;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§push(_loc3_);
                                                                                                                                                                                                                              if(!(_loc18_ && this))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc18_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop41;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 if(_loc18_ && _loc3_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop39;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 if(!_loc18_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc17_ || _loc3_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc4_);
                                                                                                                                                                                                                                       if(!_loc18_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop36;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr326:
                                                                                                                                                                                                                                       while(!_loc18_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!_loc17_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop66;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          if(§§pop() > §§pop())
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                _loc11_.y = _loc16_;
                                                                                                                                                                                                                                                continue loop43;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr331:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             loop64:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(Number(Math.min(_loc4_,_loc14_)));
                                                                                                                                                                                                                                                addr240:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc17_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr242:
                                                                                                                                                                                                                                                      if(!(_loc18_ && param1))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!_loc18_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop17;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop38;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr526:
                                                                                                                                                                                                                                                      addr278:
                                                                                                                                                                                                                                                      while(!_loc18_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                                                                         §§goto(addr242);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc6_);
                                                                                                                                                                                                                                                         loop26:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                            addr528:
                                                                                                                                                                                                                                                            while(!_loc18_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!_loc18_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc17_ || param2)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(_loc12_);
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                        while(_loc17_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                           loop30:
                                                                                                                                                                                                                                                                           while(_loc17_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!_loc17_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 continue loop0;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              _loc14_ = §§pop();
                                                                                                                                                                                                                                                                              loop31:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(-1);
                                                                                                                                                                                                                                                                                 loop32:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc17_ || this)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                       loop33:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!_loc18_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(_loc18_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                break;
                                                                                                                                                                                                                                                                                                addr517:
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             _loc16_ = §§pop();
                                                                                                                                                                                                                                                                                             while(_loc17_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(_loc13_);
                                                                                                                                                                                                                                                                                                continue loop33;
                                                                                                                                                                                                                                                                                                §§goto(addr261);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             continue loop31;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          continue loop30;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       continue loop19;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr871:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(_loc7_);
                                                                                                                                                                                                                                                                                       addr872:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                                          break loop32;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr410:
                                                                                                                                                                                                                                                                                    §§push(1);
                                                                                                                                                                                                                                                                                    if(!(_loc18_ && _loc3_))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!_loc18_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                          continue loop41;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       continue loop16;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                    addr874:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       _loc12_ = §§pop();
                                                                                                                                                                                                                                                                                       addr875:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          break loop18;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           continue loop22;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr827:
                                                                                                                                                                                                                                                                        §§push(§§pop() - _loc5_);
                                                                                                                                                                                                                                                                        if(!_loc18_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(_loc12_);
                                                                                                                                                                                                                                                                           break loop70;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr851:
                                                                                                                                                                                                                                                                        loop77:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(_loc12_);
                                                                                                                                                                                                                                                                           addr852:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop77;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr881);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        if(!(_loc17_ || param1))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        if(!_loc17_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop26;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        if(_loc17_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!_loc18_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(§§pop() <= §§pop())
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 continue loop60;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              if(!(_loc18_ && this))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!_loc18_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§goto(addr205);
                                                                                                                                                                                                                                                                                    §§push(false);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§goto(addr837);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              if(_loc17_ || this)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc17_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    break loop16;
                                                                                                                                                                                                                                                                                    addr800:
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr923);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr875);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr843:
                                                                                                                                                                                                                                                                           if(_loc17_ || param2)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§goto(addr851);
                                                                                                                                                                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr881);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr813);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  if(_loc18_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue loop2;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc17_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr858:
                                                                                                                                                                                                                                                                        _loc13_ = §§pop();
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!(_loc18_ && param1))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(this.§<0§);
                                                                                                                                                                                                                                                                              break loop71;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                                                                           §§goto(addr858);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        continue loop14;
                                                                                                                                                                                                                                                                        addr859:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr874);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr836);
                                                                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr715:
                                                                                                                                                                                                                                                            break loop66;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   while(!_loc18_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!_loc17_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop44;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      _loc3_ = §§pop();
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc17_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!_loc18_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc17_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc18_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc17_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        _loc11_.y = 0;
                                                                                                                                                                                                                                                                        §§push(_loc13_);
                                                                                                                                                                                                                                                                        break loop23;
                                                                                                                                                                                                                                                                        addr753:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§push(false);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr770:
                                                                                                                                                                                                                                                                     addr885:
                                                                                                                                                                                                                                                                     addr884:
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  continue loop64;
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!(_loc18_ && param1))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc17_ || _loc3_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        continue loop5;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr922);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  return §§pop();
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               continue loop1;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            if(_loc18_ && this)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               break;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            continue loop59;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop43;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr715);
                                                                                                                                                                                                                                                      §§push(_loc3_);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   continue loop42;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop21;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr806);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr438);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr240);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr517);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr286);
                                                                                                                                                                                                                        addr258:
                                                                                                                                                                                                                        _loc4_ = §§pop();
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop62;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  if(!_loc18_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(true);
                                                                                                                                                                                                                        if(!_loc18_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!(_loc18_ && param1))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              return §§pop();
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr219);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr666:
                                                                                                                                                                                                                     return §§pop();
                                                                                                                                                                                                                     addr143:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr809);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr195);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr220:
                                                                                                                                                                                                               if(!(_loc18_ && _loc3_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc17_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc18_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     if(!_loc18_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr682:
                                                                                                                                                                                                                     addr724:
                                                                                                                                                                                                                     while(_loc17_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc6_);
                                                                                                                                                                                                                        continue loop87;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc18_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr727);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr331);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr299:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc17_ || _loc3_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop37;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     if(_loc18_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop40;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr278);
                                                                                                                                                                                                                     §§push(_loc13_);
                                                                                                                                                                                                                     §§goto(addr220);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr299:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr814);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr278);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr369:
                                                                                                                                                                                                         while(_loc17_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc13_);
                                                                                                                                                                                                               continue loop42;
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr758:
                                                                                                                                                                                                         if(_loc17_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc17_ || this)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               _loc11_.x = _loc16_;
                                                                                                                                                                                                               §§goto(addr770);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr859);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr822);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      if(_loc17_ || param1)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr219:
                                                                                                                                                                                                         addr205:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc18_ && _loc3_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               break loop59;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr647);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         return §§pop();
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr885);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr647:
                                                                                                                                                                                                }
                                                                                                                                                                                                if(_loc17_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr835);
                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr852);
                                                                                                                                                                                                addr644:
                                                                                                                                                                                             }
                                                                                                                                                                                             break;
                                                                                                                                                                                             §§goto(addr640);
                                                                                                                                                                                          }
                                                                                                                                                                                          _loc15_ = §§pop();
                                                                                                                                                                                          break loop37;
                                                                                                                                                                                          addr641:
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr879);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr827);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              addr727:
                                                                                                                                                                              return false;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr656);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr716:
                                                                                                                                                                  if(_loc17_ || param2)
                                                                                                                                                                  {
                                                                                                                                                                     addr723:
                                                                                                                                                                     if(§§pop() <= §§pop())
                                                                                                                                                                     {
                                                                                                                                                                        continue loop15;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr724);
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(§§pop() > §§pop())
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr758);
                                                                                                                                                                     }
                                                                                                                                                                     addr736:
                                                                                                                                                                     break loop22;
                                                                                                                                                                     §§goto(addr716);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr723);
                                                                                                                                                               }
                                                                                                                                                               continue loop3;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr528);
                                                                                                                                                }
                                                                                                                                                if(!_loc18_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr790);
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                }
                                                                                                                                                §§goto(addr856);
                                                                                                                                             }
                                                                                                                                             addr842:
                                                                                                                                             §§goto(addr843);
                                                                                                                                             §§push(_loc5_);
                                                                                                                                          }
                                                                                                                                          if(_loc17_ || param2)
                                                                                                                                          {
                                                                                                                                             _loc16_ = §§pop();
                                                                                                                                             §§goto(addr784);
                                                                                                                                          }
                                                                                                                                          §§goto(addr821);
                                                                                                                                       }
                                                                                                                                       §§goto(addr641);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     continue loop18;
                                                                                                                  }
                                                                                                                  §§push(_loc14_);
                                                                                                                  break loop20;
                                                                                                                  addr487:
                                                                                                               }
                                                                                                               §§goto(addr309);
                                                                                                            }
                                                                                                            §§goto(addr644);
                                                                                                         }
                                                                                                         continue loop4;
                                                                                                      }
                                                                                                      §§goto(addr836);
                                                                                                   }
                                                                                                   §§push(Number(§§pop()));
                                                                                                   break loop17;
                                                                                                }
                                                                                                _loc4_ = §§pop();
                                                                                                §§goto(addr743);
                                                                                             }
                                                                                             addr574:
                                                                                          }
                                                                                          §§goto(addr827);
                                                                                       }
                                                                                       if(!_loc18_)
                                                                                       {
                                                                                          §§goto(addr806);
                                                                                       }
                                                                                       §§goto(addr815);
                                                                                    }
                                                                                    §§goto(addr827);
                                                                                 }
                                                                                 §§goto(addr574);
                                                                              }
                                                                              §§goto(addr757);
                                                                              §§push(_loc3_);
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§goto(addr842);
                                                                        §§push(§§pop().x);
                                                                     }
                                                                     _loc3_ = §§pop();
                                                                     §§goto(addr748);
                                                                  }
                                                                  §§goto(addr872);
                                                               }
                                                               §§goto(addr836);
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr776);
                                                               §§goto(addr800);
                                                            }
                                                         }
                                                         §§goto(addr682);
                                                      }
                                                      §§goto(addr685);
                                                   }
                                                }
                                             }
                                             §§goto(addr884);
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
                  §§goto(addr871);
               }
            }
            §§goto(addr143);
         }
         §§goto(addr88);
      }
      
      public function §[!K§(param1:b2AABB) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(param1.§!!C§.x);
         if(!_loc6_)
         {
            §§push(§§pop() - this.§<0§.x);
            if(!_loc6_)
            {
               addr28:
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(param1.§!!C§.y);
            if(!(_loc6_ && _loc2_))
            {
               §§push(§§pop() - this.§<0§.y);
               if(_loc7_ || param1)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc3_:* = §§pop();
            §§push(this.§!!C§.x);
            if(!(_loc6_ && _loc2_))
            {
               §§push(§§pop() - param1.§<0§.x);
               if(!_loc6_)
               {
                  addr69:
                  §§push(Number(§§pop()));
               }
               var _loc4_:* = §§pop();
               §§push(this.§!!C§.y);
               if(_loc7_ || _loc2_)
               {
                  §§push(§§pop() - param1.§<0§.y);
                  if(!_loc6_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc5_:* = §§pop();
               if(!(_loc6_ && this))
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
                                    addr229:
                                    while(true)
                                    {
                                       §§push(_loc3_);
                                       addr204:
                                       while(true)
                                       {
                                          §§push(0);
                                          addr205:
                                          while(true)
                                          {
                                             §§push(§§pop() > §§pop());
                                             addr206:
                                             while(!_loc6_)
                                             {
                                             }
                                             continue loop2;
                                          }
                                       }
                                    }
                                 }
                                 addr228:
                              }
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    loop10:
                                    while(true)
                                    {
                                       §§push(_loc4_);
                                       loop11:
                                       while(true)
                                       {
                                          §§push(0);
                                          addr191:
                                          while(_loc7_)
                                          {
                                             §§push(§§pop() > §§pop());
                                             loop13:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                if(!_loc7_)
                                                {
                                                   continue loop3;
                                                }
                                                if(!§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      §§pop();
                                                   }
                                                   addr198:
                                                }
                                                else
                                                {
                                                   while(§§pop())
                                                   {
                                                      if(!(_loc6_ && _loc2_))
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(false);
                                                            §§goto(addr164);
                                                         }
                                                         addr163:
                                                      }
                                                      else
                                                      {
                                                         if(_loc7_)
                                                         {
                                                            if(!_loc7_)
                                                            {
                                                               §§goto(addr221);
                                                            }
                                                            if(!_loc6_)
                                                            {
                                                               break;
                                                            }
                                                            §§goto(addr229);
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               if(_loc7_)
                                                               {
                                                                  §§push(_loc5_);
                                                                  if(!_loc6_)
                                                                  {
                                                                     if(_loc6_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue loop0;
                                                                  }
                                                                  continue loop11;
                                                               }
                                                               continue loop10;
                                                            }
                                                            addr199:
                                                         }
                                                         §§goto(addr204);
                                                      }
                                                      §§goto(addr221);
                                                   }
                                                   §§push(true);
                                                   if(!_loc7_)
                                                   {
                                                      addr164:
                                                      while(true)
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            continue loop13;
                                                         }
                                                         if(_loc7_ || param1)
                                                         {
                                                            if(_loc7_ || _loc2_)
                                                            {
                                                               break;
                                                            }
                                                            break loop13;
                                                         }
                                                      }
                                                      return §§pop();
                                                   }
                                                   if(_loc7_ || _loc3_)
                                                   {
                                                      return §§pop();
                                                   }
                                                   §§goto(addr228);
                                                   addr154:
                                                }
                                                §§goto(addr199);
                                             }
                                             §§goto(addr206);
                                          }
                                          continue loop1;
                                       }
                                    }
                                 }
                                 addr221:
                                 return false;
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr163);
            }
            §§goto(addr69);
         }
         §§goto(addr28);
      }
      
      public function §8h§(param1:b2AABB, param2:b2AABB) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.§!!C§);
            loop0:
            while(true)
            {
               §§pop().x = Math.min(param1.§!!C§.x,param2.§!!C§.x);
               addr119:
               loop1:
               while(true)
               {
                  §§push(this.§!!C§);
                  if(_loc4_)
                  {
                     §§pop().y = Math.min(param1.§!!C§.y,param2.§!!C§.y);
                     loop2:
                     do
                     {
                        §§push(this.§<0§);
                        while(true)
                        {
                           §§pop().x = Math.max(param1.§<0§.x,param2.§<0§.x);
                           §§push(this.§<0§);
                           addr82:
                           continue loop1;
                           if(!(_loc3_ && this))
                           {
                              §§pop().y = Math.max(param1.§<0§.y,param2.§<0§.y);
                              if(!_loc3_)
                              {
                                 continue loop2;
                              }
                              continue loop1;
                           }
                        }
                     }
                     while(!(_loc4_ || param2));
                     
                     return;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr119);
      }
   }
}
