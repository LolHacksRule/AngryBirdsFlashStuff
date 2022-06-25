package §>!Z§
{
   import §&H§.b2Vec2;
   
   public class b2AABB
   {
       
      
      public var §>h§:b2Vec2;
      
      public var §^!z§:b2Vec2;
      
      public function b2AABB()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§>h§ = new b2Vec2();
            do
            {
               this.§^!z§ = new b2Vec2();
               do
               {
                  super();
               }
               while(_loc1_);
               
            }
            while(!_loc2_);
            
         }
      }
      
      public static function §5"$§(param1:b2AABB, param2:b2AABB) : b2AABB
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2AABB = new b2AABB();
         if(!_loc5_)
         {
            _loc3_.§5"$§(param1,param2);
         }
         return _loc3_;
      }
      
      public function §-!<§() : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§^!z§.x);
         if(_loc5_ || _loc2_)
         {
            §§push(§§pop() - this.§>h§.x);
            if(_loc5_ || this)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc1_:* = §§pop();
         §§push(this.§^!z§.y);
         if(!(_loc4_ && _loc2_))
         {
            §§push(§§pop() - this.§>h§.y);
            if(!_loc4_)
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
                  if(!(_loc4_ && _loc2_))
                  {
                     if(§§pop())
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           addr93:
                           §§pop();
                           §§push(_loc2_ >= 0);
                           if(!(_loc4_ && this))
                           {
                              addr104:
                              §§push(Boolean(§§pop()));
                           }
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
                                                §§push(this.§>h§.§-!<§());
                                                loop5:
                                                while(true)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   if(_loc5_ || _loc2_)
                                                   {
                                                      if(_loc4_ && _loc2_)
                                                      {
                                                         break;
                                                         addr173:
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         if(!(_loc5_ || this))
                                                         {
                                                            break;
                                                         }
                                                         if(!§§pop())
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               addr136:
                                                               loop9:
                                                               while(true)
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     _loc3_ = §§pop();
                                                                     if(!_loc4_)
                                                                     {
                                                                        if(_loc5_)
                                                                        {
                                                                           §§push(_loc3_);
                                                                           if(_loc5_)
                                                                           {
                                                                              if(_loc5_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              continue loop5;
                                                                           }
                                                                           continue;
                                                                        }
                                                                        continue loop4;
                                                                     }
                                                                     addr191:
                                                                     addr191:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§^!z§.§-!<§());
                                                                        if(_loc5_)
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        continue loop9;
                                                                     }
                                                                     addr191:
                                                                  }
                                                                  §§goto(addr191);
                                                               }
                                                               return §§pop();
                                                            }
                                                            addr134:
                                                         }
                                                      }
                                                      continue loop2;
                                                   }
                                                   while(_loc5_ || _loc1_)
                                                   {
                                                      §§pop();
                                                      §§goto(addr191);
                                                   }
                                                   continue loop1;
                                                }
                                                continue loop3;
                                             }
                                          }
                                       }
                                       §§goto(addr173);
                                    }
                                 }
                              }
                           }
                           §§goto(addr191);
                        }
                     }
                     §§goto(addr104);
                  }
               }
            }
         }
         §§goto(addr93);
      }
      
      public function §?!b§() : b2Vec2
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(this.§>h§.x);
         if(_loc2_)
         {
            §§push(this.§^!z§.x);
            if(_loc2_)
            {
               §§push(§§pop() + §§pop());
               if(!(_loc1_ && _loc2_))
               {
                  addr58:
                  §§push(§§pop() / 2);
                  §§push(this.§>h§.y);
                  if(_loc2_ || _loc2_)
                  {
                     §§push(§§pop() + this.§^!z§.y);
                     if(_loc2_)
                     {
                        addr74:
                        §§push(§§pop() / 2);
                     }
                     return new §§pop().b2Vec2(§§pop(),§§pop());
                  }
               }
               §§goto(addr58);
            }
            §§goto(addr74);
         }
         §§goto(addr58);
      }
      
      public function §3!Y§() : b2Vec2
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(this.§^!z§.x);
         if(!_loc2_)
         {
            §§push(this.§>h§.x);
            if(_loc1_)
            {
               §§push(§§pop() - §§pop());
               if(!_loc2_)
               {
                  addr42:
                  §§push(§§pop() / 2);
                  §§push(this.§^!z§.y);
                  if(!_loc2_)
                  {
                     §§push(§§pop() - this.§>h§.y);
                     if(_loc1_)
                     {
                        §§push(§§pop() / 2);
                     }
                  }
               }
               §§goto(addr42);
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr42);
      }
      
      public function §4#§(param1:b2AABB) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = true;
         if(!(_loc3_ && _loc2_))
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
                        while(true)
                        {
                           §§pop();
                           addr316:
                           while(true)
                           {
                              §§push(this.§>h§);
                              addr302:
                              while(true)
                              {
                                 §§push(§§pop().x);
                                 addr303:
                                 while(true)
                                 {
                                    §§push(param1.§>h§);
                                    addr305:
                                    while(true)
                                    {
                                       §§push(§§pop().x);
                                       addr306:
                                       while(true)
                                       {
                                          §§push(§§pop() <= §§pop());
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        addr315:
                     }
                     while(true)
                     {
                        loop5:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           while(true)
                           {
                              _loc2_ = §§pop();
                              loop7:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 loop8:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    loop9:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       loop10:
                                       while(_loc4_)
                                       {
                                          if(!§§pop())
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
                                                         loop20:
                                                         while(true)
                                                         {
                                                            if(!(_loc3_ && this))
                                                            {
                                                               §§push(§§pop());
                                                               while(_loc4_ || _loc2_)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     loop22:
                                                                     while(_loc4_)
                                                                     {
                                                                        §§pop();
                                                                        loop23:
                                                                        for(; _loc4_; if(_loc3_ && _loc3_)
                                                                        {
                                                                           continue;
                                                                        },§§push(_loc2_),if(_loc4_)
                                                                        {
                                                                           §§goto(addr31);
                                                                        },§§goto(addr92))
                                                                        {
                                                                           if(_loc4_ || _loc2_)
                                                                           {
                                                                              §§push(param1.§^!z§);
                                                                              loop24:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().x);
                                                                                 addr183:
                                                                                 while(_loc4_)
                                                                                 {
                                                                                    §§push(this.§^!z§);
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().x);
                                                                                       addr188:
                                                                                       addr261:
                                                                                       while(!(_loc3_ && this))
                                                                                       {
                                                                                          §§push(§§pop() <= §§pop());
                                                                                          while(_loc4_)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Boolean(§§pop()));
                                                                                                loop30:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      continue loop20;
                                                                                                   }
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      continue loop1;
                                                                                                   }
                                                                                                   _loc2_ = §§pop();
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc2_);
                                                                                                      if(!_loc3_)
                                                                                                      {
                                                                                                         §§push(Boolean(§§pop()));
                                                                                                         while(_loc4_)
                                                                                                         {
                                                                                                            continue loop0;
                                                                                                            if(_loc4_ || _loc3_)
                                                                                                            {
                                                                                                               continue loop30;
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop19;
                                                                                                      }
                                                                                                      addr297:
                                                                                                      addr152:
                                                                                                      addr152:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            continue loop22;
                                                                                                         }
                                                                                                         if(_loc3_ && _loc3_)
                                                                                                         {
                                                                                                            continue loop8;
                                                                                                         }
                                                                                                         if(_loc3_ && _loc3_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         §§pop();
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               if(!(_loc3_ && _loc2_))
                                                                                                               {
                                                                                                                  continue loop24;
                                                                                                               }
                                                                                                               continue loop7;
                                                                                                            }
                                                                                                            continue loop18;
                                                                                                         }
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         break loop23;
                                                                                                         §§goto(addr161);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                continue loop9;
                                                                                             }
                                                                                             if(_loc3_ && this)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             _loc2_ = §§pop();
                                                                                             if(!(_loc3_ && _loc3_))
                                                                                             {
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   continue loop23;
                                                                                                }
                                                                                                §§goto(addr207);
                                                                                             }
                                                                                             §§goto(addr169);
                                                                                          }
                                                                                          continue loop17;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() <= §§pop());
                                                                                          continue loop8;
                                                                                          §§goto(addr188);
                                                                                       }
                                                                                       addr63:
                                                                                       §§push(this.§^!z§);
                                                                                       if(!(_loc4_ || this))
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       §§push(§§pop().y);
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          if(_loc4_ || _loc3_)
                                                                                          {
                                                                                             addr82:
                                                                                             §§push(§§pop() <= §§pop());
                                                                                             if(_loc4_ || param1)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                   §§goto(addr82);
                                                                                                }
                                                                                                addr90:
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   §§goto(addr94);
                                                                                                }
                                                                                                §§goto(addr152);
                                                                                             }
                                                                                             continue loop23;
                                                                                             addr92:
                                                                                          }
                                                                                          §§goto(addr306);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr188);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr316);
                                                                           }
                                                                           §§goto(addr303);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§>h§);
                                                                           if(_loc3_ && _loc2_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§goto(addr251);
                                                                           §§push(§§pop().y);
                                                                        }
                                                                        §§goto(addr302);
                                                                     }
                                                                     continue loop5;
                                                                  }
                                                                  §§goto(addr198);
                                                                  §§push(§§pop());
                                                                  if(!(_loc4_ || this))
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     §§goto(addr152);
                                                                  }
                                                                  §§goto(addr90);
                                                               }
                                                               continue loop10;
                                                            }
                                                            §§goto(addr315);
                                                            §§goto(addr316);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             addr286:
                                          }
                                          §§goto(addr297);
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
         §§goto(addr316);
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
         if(!(_loc17_ && _loc3_))
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
         if(!(_loc17_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc6_:* = §§pop();
         §§push(param2.p2.x);
         if(_loc18_ || _loc3_)
         {
            §§push(§§pop() - param2.p1.x);
            if(!(_loc17_ && _loc3_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc7_:* = §§pop();
         §§push(param2.p2.y);
         if(_loc18_)
         {
            §§push(§§pop() - param2.p1.y);
            if(_loc18_)
            {
               addr99:
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
                                    §§push(this.§>h§);
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
                                                            §§push(this.§^!z§);
                                                            loop14:
                                                            while(true)
                                                            {
                                                               §§push(§§pop().x);
                                                               loop15:
                                                               while(true)
                                                               {
                                                                  §§push(_loc5_);
                                                                  loop16:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() - §§pop());
                                                                     loop17:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc12_);
                                                                        loop18:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           loop19:
                                                                           while(true)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              loop20:
                                                                              while(true)
                                                                              {
                                                                                 _loc14_ = §§pop();
                                                                                 loop21:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(-1);
                                                                                    loop22:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       loop23:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc16_ = §§pop();
                                                                                          loop24:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc13_);
                                                                                             loop25:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc14_);
                                                                                                loop26:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(§§pop() > §§pop())
                                                                                                   {
                                                                                                      loop27:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc17_ && param1))
                                                                                                         {
                                                                                                            §§push(_loc13_);
                                                                                                            loop28:
                                                                                                            while(!(_loc17_ && param1))
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               loop29:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc15_ = §§pop();
                                                                                                                  loop30:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc18_)
                                                                                                                     {
                                                                                                                        §§push(_loc14_);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        loop101:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(this.§^!z§);
                                                                                                                           loop102:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop().x);
                                                                                                                              loop103:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc5_);
                                                                                                                                 loop104:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() < §§pop());
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       loop106:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!_loc17_)
                                                                                                                                                {
                                                                                                                                                   §§push(false);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc5_);
                                                                                                                                                      addr987:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(this.§>h§);
                                                                                                                                                         addr989:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop().x);
                                                                                                                                                            addr990:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() < §§pop());
                                                                                                                                                               addr991:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                  addr992:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        continue loop101;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop106;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr986:
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr977:
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             loop40:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                loop41:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc10_);
                                                                                                                                                   loop42:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(§§pop() >= Number.MIN_VALUE)
                                                                                                                                                      {
                                                                                                                                                         §§push(1);
                                                                                                                                                         loop43:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc8_);
                                                                                                                                                            if(_loc17_)
                                                                                                                                                            {
                                                                                                                                                               break;
                                                                                                                                                            }
                                                                                                                                                            §§push(§§pop() / §§pop());
                                                                                                                                                            loop44:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(_loc18_ || _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                  loop45:
                                                                                                                                                                  while(!(_loc17_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     _loc12_ = §§pop();
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc18_ || _loc3_))
                                                                                                                                                                        {
                                                                                                                                                                           while(!(_loc17_ && this))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc6_);
                                                                                                                                                                              loop98:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc17_ && this))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc18_)
                                                                                                                                                                                    {
                                                                                                                                                                                       break;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(this.§>h§);
                                                                                                                                                                                    if(_loc18_ || param2)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop().y);
                                                                                                                                                                                       loop92:
                                                                                                                                                                                       while(!_loc17_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() < §§pop());
                                                                                                                                                                                          loop93:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc18_ || _loc3_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc18_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop());
                                                                                                                                                                                                   if(!_loc17_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(§§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         loop95:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            loop89:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!§§pop())
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  loop76:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     loop77:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        param1.fraction = _loc3_;
                                                                                                                                                                                                                        if(_loc18_ || param1)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc18_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              break;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(!(_loc17_ && _loc3_))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc17_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc17_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!(_loc17_ && this))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(true);
                                                                                                                                                                                                                                       if(_loc17_ && param1)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr218:
                                                                                                                                                                                                                                          if(!_loc17_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!_loc17_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                return §§pop();
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             continue loop106;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop89;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       if(_loc17_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr710:
                                                                                                                                                                                                                                          if(_loc18_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             return §§pop();
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop93;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       if(_loc18_ || this)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc18_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc18_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                return §§pop();
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             continue loop101;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§pop();
                                                                                                                                                                                                                                             addr770:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(this.§^!z§);
                                                                                                                                                                                                                                                continue loop14;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr769:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr702:
                                                                                                                                                                                                                                       if(_loc18_ || this)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr710);
                                                                                                                                                                                                                                          return false;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr784:
                                                                                                                                                                                                                                          if(_loc17_ && this)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop5;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          return false;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    return §§pop();
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 loop71:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc15_);
                                                                                                                                                                                                                                    if(_loc18_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr410:
                                                                                                                                                                                                                                       if(!(_loc17_ && this))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc18_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc18_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc18_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr424:
                                                                                                                                                                                                                                                      if(_loc18_ || _loc3_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!_loc17_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!(_loc18_ || this))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               break;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            _loc14_ = §§pop();
                                                                                                                                                                                                                                                            loop73:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc18_ || _loc3_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc18_ || this)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr455:
                                                                                                                                                                                                                                                                     §§push(1);
                                                                                                                                                                                                                                                                     if(_loc18_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue loop43;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     loop60:
                                                                                                                                                                                                                                                                     for(; !_loc17_; §§goto(addr455))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                        loop61:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           _loc16_ = §§pop();
                                                                                                                                                                                                                                                                           addr539:
                                                                                                                                                                                                                                                                           loop62:
                                                                                                                                                                                                                                                                           while(!(_loc17_ && _loc3_))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(_loc13_);
                                                                                                                                                                                                                                                                              loop63:
                                                                                                                                                                                                                                                                              while(!(_loc17_ && param2))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(_loc14_);
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc18_ || _loc3_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc17_ && param2)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          break;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       if(§§pop() > §§pop())
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!(_loc18_ || param2))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(!(_loc18_ || param2))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   break;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                continue loop76;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             if(!_loc17_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(_loc13_);
                                                                                                                                                                                                                                                                                                loop66:
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(!_loc18_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop45;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   if(!(_loc18_ || _loc3_))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop98;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      _loc15_ = §§pop();
                                                                                                                                                                                                                                                                                                      addr530:
                                                                                                                                                                                                                                                                                                      loop68:
                                                                                                                                                                                                                                                                                                      while(!_loc17_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(_loc14_);
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(_loc18_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(!(_loc17_ && param2))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                  while(!_loc17_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(_loc18_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        _loc13_ = §§pop();
                                                                                                                                                                                                                                                                                                                        continue loop71;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     continue loop0;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  continue loop61;
                                                                                                                                                                                                                                                                                                                  addr468:
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               continue loop103;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            addr646:
                                                                                                                                                                                                                                                                                                            while(!_loc17_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                               loop51:
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(!_loc17_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     _loc13_ = §§pop();
                                                                                                                                                                                                                                                                                                                     break loop68;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  break;
                                                                                                                                                                                                                                                                                                                  addr594:
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(!(_loc18_ || _loc3_))
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        continue loop51;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     if(!(_loc18_ || this))
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§push(_loc12_);
                                                                                                                                                                                                                                                                                                                     while(!(_loc17_ && _loc3_))
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                        break loop63;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(§§pop() <= §§pop())
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           continue loop41;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr784);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr424);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  continue loop42;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               continue loop4;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            continue loop20;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         continue loop103;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(this.§^!z§);
                                                                                                                                                                                                                                                                                                         if(!(_loc18_ || this))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue loop14;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         if(_loc17_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue loop102;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(_loc6_);
                                                                                                                                                                                                                                                                                                            addr561:
                                                                                                                                                                                                                                                                                                            loop54:
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(_loc18_ || param2)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(!(_loc18_ || _loc3_))
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     continue loop92;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  if(_loc17_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  if(_loc17_ && _loc3_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     continue loop16;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  if(_loc17_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     continue loop10;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  if(!(_loc17_ && _loc3_))
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§goto(addr594);
                                                                                                                                                                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§goto(addr990);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                     addr642:
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(_loc12_);
                                                                                                                                                                                                                                                                                                                        addr643:
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(!_loc17_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§goto(addr646);
                                                                                                                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 continue loop95;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              addr699:
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     continue loop54;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  addr641:
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr649);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            loop110:
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(!_loc18_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  continue loop104;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               if(§§pop() > §§pop())
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     _loc11_.x = _loc16_;
                                                                                                                                                                                                                                                                                                                     addr863:
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        _loc11_.y = 0;
                                                                                                                                                                                                                                                                                                                        break loop62;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  addr860:
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr808);
                                                                                                                                                                                                                                                                                                               addr856:
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(_loc3_);
                                                                                                                                                                                                                                                                                                                  continue loop110;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            addr300:
                                                                                                                                                                                                                                                                                                            if(_loc17_ && param2)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               continue;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            if(!(_loc17_ && param1))
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               addr314:
                                                                                                                                                                                                                                                                                                               if(!(_loc17_ && this))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(_loc17_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     continue loop19;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  _loc3_ = §§pop();
                                                                                                                                                                                                                                                                                                                  while(!_loc17_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(!(_loc17_ && _loc3_))
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        loop88:
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(Number(Math.min(_loc4_,_loc14_)));
                                                                                                                                                                                                                                                                                                                           loop83:
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(!_loc17_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 addr236:
                                                                                                                                                                                                                                                                                                                                 if(_loc18_ || param2)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(!(_loc17_ && param2))
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(_loc18_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(_loc17_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             continue loop28;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          if(_loc17_ && param2)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             continue loop17;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          if(!_loc18_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             continue loop15;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          _loc4_ = §§pop();
                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(_loc18_ || param2)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                continue loop83;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             addr626:
                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                continue loop60;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             _loc16_ = §§pop();
                                                                                                                                                                                                                                                                                                                                             addr872:
                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                if(_loc17_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   continue loop40;
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr856);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          addr871:
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 addr877:
                                                                                                                                                                                                                                                                                                                                 loop79:
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(_loc18_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(_loc17_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          break;
                                                                                                                                                                                                                                                                                                                                          addr279:
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(!(_loc17_ && param2))
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             continue loop66;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          addr357:
                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(_loc3_);
                                                                                                                                                                                                                                                                                                                                             addr358:
                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                if(!_loc17_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(§§pop() > §§pop())
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      continue loop73;
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   continue loop88;
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr643);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             continue loop44;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       continue loop19;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    addr393:
                                                                                                                                                                                                                                                                                                                                    while(_loc18_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       _loc16_ = §§pop();
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(_loc18_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(!_loc18_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                break;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§goto(addr357);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§goto(addr530);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          addr345:
                                                                                                                                                                                                                                                                                                                                          if(_loc17_ && _loc3_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             continue;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          if(_loc18_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(_loc13_);
                                                                                                                                                                                                                                                                                                                                             continue loop79;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          addr886:
                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             break loop60;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr863);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr458);
                                                                                                                                                                                                                                                                                                                                    §§goto(addr646);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                    continue loop29;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr863);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr279);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           addr773:
                                                                                                                                                                                                                                                                                                                           while(_loc18_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(_loc17_ && param1)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 continue loop11;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr783);
                                                                                                                                                                                                                                                                                                                              §§push(_loc4_);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           continue loop12;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr860);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(!(_loc17_ && param2))
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§goto(addr773);
                                                                                                                                                                                                                                                                                                                        §§push(_loc3_);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§goto(addr872);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                     continue loop25;
                                                                                                                                                                                                                                                                                                                     §§goto(addr314);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  addr889:
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§goto(addr642);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr643);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      continue loop102;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                while(_loc18_ || param2)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   _loc4_ = §§pop();
                                                                                                                                                                                                                                                                                                   §§goto(addr822);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr856);
                                                                                                                                                                                                                                                                                                addr814:
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§goto(addr877);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                addr898:
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             continue loop73;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          continue loop21;
                                                                                                                                                                                                                                                                                          addr509:
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr355);
                                                                                                                                                                                                                                                                                       §§goto(addr643);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr609);
                                                                                                                                                                                                                                                                                    addr193:
                                                                                                                                                                                                                                                                                    if(!(_loc18_ || this))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    if(_loc18_ || _loc3_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!_loc17_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(§§pop() > §§pop())
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             break loop77;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          continue loop77;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       continue loop26;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr561);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 continue loop8;
                                                                                                                                                                                                                                                                                 §§goto(addr410);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§goto(addr618);
                                                                                                                                                                                                                                                                                 §§goto(addr486);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr486:
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(_loc13_);
                                                                                                                                                                                                                                                                              break loop71;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     while(_loc18_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc17_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop1;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr871);
                                                                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     continue loop22;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  continue loop27;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr509);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            continue loop43;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop29;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr594);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr529);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr468);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             continue loop9;
                                                                                                                                                                                                                                             addr420:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          break;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr486);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr420);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                                                                    addr833:
                                                                                                                                                                                                                                    while(!(_loc17_ && param2))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       _loc3_ = §§pop();
                                                                                                                                                                                                                                       §§goto(addr841);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop23;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr784);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr380);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr264);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else if(!_loc17_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc17_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop77;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr227:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr338);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr324);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     if(!(_loc17_ && _loc3_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr218);
                                                                                                                                                                                                                        §§push(false);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     else
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr770);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr702);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr980);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr769);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr992);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr991);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr980);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop18;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr989);
                                                                                                                                                                                    §§goto(addr990);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              continue loop7;
                                                                                                                                                                           }
                                                                                                                                                                           continue loop30;
                                                                                                                                                                           addr726:
                                                                                                                                                                        }
                                                                                                                                                                        if(_loc18_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop6;
                                                                                                                                                                        }
                                                                                                                                                                        if(_loc18_ || _loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc18_ || param2)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop41;
                                                                                                                                                                           }
                                                                                                                                                                           continue loop24;
                                                                                                                                                                        }
                                                                                                                                                                        while(!(_loc17_ && param2))
                                                                                                                                                                        {
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(Number(Math.min(_loc4_,_loc14_)));
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        continue loop13;
                                                                                                                                                                        addr841:
                                                                                                                                                                        §§goto(addr814);
                                                                                                                                                                     }
                                                                                                                                                                     continue loop6;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr987);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                  }
                                                                                                                                                                  addr698:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr699);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         continue loop2;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr726);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr980:
                                                                                                                                          return §§pop();
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr889);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            continue loop3;
                                                                                                         }
                                                                                                         §§goto(addr977);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr854);
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
                  §§goto(addr986);
               }
            }
            §§goto(addr227);
         }
         §§goto(addr99);
      }
      
      public function §]I§(param1:b2AABB) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(param1.§>h§.x);
         if(!_loc7_)
         {
            §§push(§§pop() - this.§^!z§.x);
            if(_loc6_)
            {
               addr27:
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(param1.§>h§.y);
            if(_loc6_)
            {
               §§push(§§pop() - this.§^!z§.y);
               if(_loc6_)
               {
                  addr40:
                  §§push(Number(§§pop()));
               }
               var _loc3_:* = §§pop();
               §§push(this.§>h§.x);
               if(_loc6_)
               {
                  §§push(§§pop() - param1.§^!z§.x);
                  if(!(_loc7_ && param1))
                  {
                     addr58:
                     §§push(Number(§§pop()));
                  }
                  var _loc4_:* = §§pop();
                  §§push(this.§>h§.y);
                  if(_loc6_)
                  {
                     §§push(§§pop() - param1.§^!z§.y);
                     if(_loc6_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc5_:* = §§pop();
                  if(_loc6_ || _loc2_)
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
                                          while(_loc6_)
                                          {
                                             §§push(0);
                                             while(true)
                                             {
                                                if(!(_loc6_ || _loc3_))
                                                {
                                                   break;
                                                   addr205:
                                                }
                                                §§push(§§pop() > §§pop());
                                                while(_loc6_)
                                                {
                                                }
                                                continue loop4;
                                                addr112:
                                                if(_loc7_ && param1)
                                                {
                                                   continue;
                                                }
                                                §§push(§§pop() > §§pop());
                                                if(_loc6_)
                                                {
                                                   loop13:
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(!_loc7_)
                                                         {
                                                            if(!(_loc7_ && _loc2_))
                                                            {
                                                               §§push(false);
                                                               while(!_loc6_)
                                                               {
                                                                  while(_loc6_ || param1)
                                                                  {
                                                                     §§pop();
                                                                  }
                                                                  continue loop2;
                                                               }
                                                               return §§pop();
                                                               addr134:
                                                            }
                                                            while(true)
                                                            {
                                                               if(_loc6_ || this)
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc5_);
                                                                     if(_loc6_)
                                                                     {
                                                                        if(_loc7_)
                                                                        {
                                                                           continue loop6;
                                                                        }
                                                                        §§push(0);
                                                                        if(_loc6_)
                                                                        {
                                                                           §§goto(addr112);
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() > §§pop());
                                                                              if(_loc6_ || param1)
                                                                              {
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          continue loop3;
                                                                                       }
                                                                                       if(§§pop())
                                                                                       {
                                                                                          continue loop13;
                                                                                       }
                                                                                       §§goto(addr164);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr205);
                                                                                    }
                                                                                 }
                                                                                 break;
                                                                              }
                                                                           }
                                                                           addr210:
                                                                           return §§pop();
                                                                           addr148:
                                                                        }
                                                                        §§goto(addr164);
                                                                     }
                                                                     addr147:
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr148);
                                                                     }
                                                                  }
                                                               }
                                                               addr209:
                                                               §§goto(addr210);
                                                               §§goto(addr171);
                                                            }
                                                            continue loop5;
                                                         }
                                                         if(!(_loc7_ && _loc2_))
                                                         {
                                                            addr81:
                                                            §§push(true);
                                                            if(!(_loc7_ && _loc3_))
                                                            {
                                                               break;
                                                            }
                                                            §§goto(addr134);
                                                         }
                                                         else
                                                         {
                                                            addr211:
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr147);
                                                            §§goto(addr211);
                                                         }
                                                         addr145:
                                                      }
                                                      §§goto(addr81);
                                                   }
                                                   return §§pop();
                                                }
                                                §§goto(addr134);
                                             }
                                             continue loop1;
                                          }
                                          continue loop0;
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       §§goto(addr145);
                                    }
                                    §§goto(addr209);
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr191);
               }
               §§goto(addr58);
            }
            §§goto(addr40);
         }
         §§goto(addr27);
      }
      
      public function §5"$§(param1:b2AABB, param2:b2AABB) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.§>h§);
            while(true)
            {
               §§pop().x = Math.min(param1.§>h§.x,param2.§>h§.x);
               while(true)
               {
                  §§push(this.§>h§);
                  if(_loc3_ && param1)
                  {
                     break;
                  }
                  §§pop().y = Math.min(param1.§>h§.y,param2.§>h§.y);
                  loop2:
                  while(!(_loc3_ && param2))
                  {
                     while(true)
                     {
                        §§push(this.§^!z§);
                        while(true)
                        {
                           §§pop().x = Math.max(param1.§^!z§.x,param2.§^!z§.x);
                           while(true)
                           {
                              §§push(this.§^!z§);
                              if(!(_loc4_ || param2))
                              {
                                 break;
                              }
                              §§pop().y = Math.max(param1.§^!z§.y,param2.§^!z§.y);
                              if(!_loc3_)
                              {
                                 if(!_loc4_)
                                 {
                                    continue loop2;
                                 }
                                 §§goto(addr57);
                                 continue loop2;
                              }
                           }
                        }
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr107);
      }
   }
}
