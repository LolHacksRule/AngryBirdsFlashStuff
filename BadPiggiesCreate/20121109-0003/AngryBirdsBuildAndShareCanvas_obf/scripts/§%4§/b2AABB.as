package §%4§
{
   import §<!a§.b2Vec2;
   
   public class b2AABB
   {
       
      
      public var §=!H§:b2Vec2;
      
      public var §6P§:b2Vec2;
      
      public function b2AABB()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§=!H§ = new b2Vec2();
            do
            {
               this.§6P§ = new b2Vec2();
               do
               {
                  super();
               }
               while(!_loc2_);
               
            }
            while(_loc1_);
            
         }
      }
      
      public static function §^!%§(param1:b2AABB, param2:b2AABB) : b2AABB
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2AABB = new b2AABB();
         if(!_loc4_)
         {
            _loc3_.§^!%§(param1,param2);
         }
         return _loc3_;
      }
      
      public function §7S§() : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.§6P§.x);
         if(_loc4_ || _loc2_)
         {
            §§push(§§pop() - this.§=!H§.x);
            if(_loc4_)
            {
               addr32:
               §§push(Number(§§pop()));
            }
            var _loc1_:* = §§pop();
            §§push(this.§6P§.y);
            if(!_loc5_)
            {
               §§push(§§pop() - this.§=!H§.y);
               if(!(_loc5_ && _loc3_))
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc2_:* = §§pop();
            if(!(_loc5_ && _loc3_))
            {
               §§push(_loc1_);
               if(!(_loc5_ && _loc3_))
               {
                  §§push(0);
                  if(!(_loc5_ && _loc1_))
                  {
                     §§push(§§pop() >= §§pop());
                     if(!_loc5_)
                     {
                        if(§§pop())
                        {
                           if(!(_loc5_ && _loc2_))
                           {
                              addr97:
                              §§pop();
                              §§push(_loc2_ >= 0);
                              if(_loc4_)
                              {
                                 addr103:
                                 §§push(Boolean(§§pop()));
                              }
                           }
                           var _loc3_:* = §§pop();
                           if(!_loc5_)
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
                                             addr191:
                                             while(true)
                                             {
                                                §§push(this.§=!H§.§7S§());
                                                while(true)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   addr114:
                                                   if(_loc4_ || this)
                                                   {
                                                      return §§pop();
                                                   }
                                                }
                                             }
                                          }
                                          addr190:
                                       }
                                       while(true)
                                       {
                                          loop7:
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             if(!_loc4_)
                                             {
                                                break;
                                             }
                                             if(§§pop())
                                             {
                                                loop8:
                                                while(true)
                                                {
                                                   §§pop();
                                                   loop9:
                                                   while(_loc4_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(this.§6P§.§7S§());
                                                         if(_loc4_ || _loc1_)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               continue loop8;
                                                            }
                                                            if(_loc5_)
                                                            {
                                                               continue loop7;
                                                            }
                                                            §§push(Boolean(§§pop()));
                                                            while(true)
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                  }
                                                                  §§goto(addr114);
                                                                  addr142:
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr190);
                                                               }
                                                            }
                                                            addr140:
                                                         }
                                                         while(_loc4_ || _loc3_)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               continue loop0;
                                                            }
                                                            _loc3_ = §§pop();
                                                            if(_loc5_ && _loc1_)
                                                            {
                                                               continue loop9;
                                                            }
                                                            §§push(_loc3_);
                                                            if(_loc5_)
                                                            {
                                                               continue;
                                                            }
                                                            if(!_loc4_)
                                                            {
                                                               §§goto(addr140);
                                                            }
                                                            §§goto(addr114);
                                                         }
                                                         continue loop1;
                                                      }
                                                   }
                                                   §§goto(addr191);
                                                }
                                             }
                                             §§goto(addr142);
                                          }
                                          continue loop2;
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr185);
                        }
                        §§goto(addr103);
                     }
                  }
               }
            }
            §§goto(addr97);
         }
         §§goto(addr32);
      }
      
      public function §1C§() : b2Vec2
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(this.§=!H§.x);
         if(_loc1_)
         {
            §§push(this.§6P§.x);
            if(_loc1_)
            {
               §§push(§§pop() + §§pop());
               if(!_loc1_)
               {
               }
               §§goto(addr42);
            }
            §§goto(addr52);
         }
         addr42:
         §§push(§§pop() / 2);
         §§push(this.§=!H§.y);
         if(!(_loc2_ && _loc1_))
         {
            addr52:
            §§push(§§pop() + this.§6P§.y);
            if(!(_loc2_ && _loc2_))
            {
               §§push(§§pop() / 2);
            }
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public function §@!S§() : b2Vec2
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(this.§6P§.x);
         if(_loc1_)
         {
            §§push(this.§=!H§.x);
            if(!_loc2_)
            {
               §§push(§§pop() - §§pop());
               if(!_loc2_)
               {
                  addr40:
                  §§push(§§pop() / 2);
               }
               §§push(this.§6P§.y);
               if(!(_loc2_ && this))
               {
                  addr52:
                  §§push(§§pop() - this.§=!H§.y);
                  if(_loc1_ || _loc2_)
                  {
                     §§push(§§pop() / 2);
                  }
               }
               return new §§pop().b2Vec2(§§pop(),§§pop());
            }
            §§goto(addr52);
         }
         §§goto(addr40);
      }
      
      public function §`7§(param1:b2AABB) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = true;
         if(!_loc3_)
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
                              §§push(this.§=!H§);
                              while(true)
                              {
                                 §§push(§§pop().x);
                                 addr249:
                                 while(true)
                                 {
                                    §§push(param1.§=!H§);
                                    addr251:
                                    while(true)
                                    {
                                       §§push(§§pop().x);
                                       addr252:
                                       while(true)
                                       {
                                          §§push(§§pop() <= §§pop());
                                          addr253:
                                          while(_loc4_)
                                          {
                                          }
                                          continue loop3;
                                       }
                                    }
                                 }
                                 loop17:
                                 while(true)
                                 {
                                    §§push(this.§=!H§);
                                    if(!_loc4_)
                                    {
                                       break;
                                    }
                                    §§push(§§pop().y);
                                    loop18:
                                    while(true)
                                    {
                                       §§push(param1.§=!H§);
                                       if(!_loc4_)
                                       {
                                          break;
                                       }
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
                                                loop22:
                                                while(true)
                                                {
                                                   _loc2_ = §§pop();
                                                   loop23:
                                                   while(true)
                                                   {
                                                      §§push(_loc2_);
                                                      loop24:
                                                      for(; !(_loc3_ && _loc2_); while(!(_loc3_ && _loc3_))
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         continue loop21;
                                                         §§goto(addr30);
                                                      })
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         if(_loc4_ || this)
                                                         {
                                                            addr193:
                                                            if(_loc4_ || param1)
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  §§push(§§pop());
                                                                  while(true)
                                                                  {
                                                                     if(_loc4_)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           addr206:
                                                                           while(!(_loc3_ && this))
                                                                           {
                                                                              §§pop();
                                                                              while(true)
                                                                              {
                                                                                 §§push(param1.§6P§);
                                                                                 addr143:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().x);
                                                                                    continue loop18;
                                                                                 }
                                                                              }
                                                                           }
                                                                           while(_loc4_ || param1)
                                                                           {
                                                                              _loc2_ = §§pop();
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc2_);
                                                                                 addr233:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Boolean(§§pop()));
                                                                                    break loop24;
                                                                                    §§goto(addr193);
                                                                                 }
                                                                              }
                                                                              §§goto(addr206);
                                                                           }
                                                                           addr206:
                                                                           continue loop1;
                                                                           addr257:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                           addr172:
                                                                           while(true)
                                                                           {
                                                                              _loc2_ = §§pop();
                                                                              addr173:
                                                                              while(!_loc3_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc2_);
                                                                                    continue loop24;
                                                                                 }
                                                                              }
                                                                              continue loop17;
                                                                           }
                                                                           addr163:
                                                                           if(_loc4_ || _loc2_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           §§goto(addr253);
                                                                        }
                                                                     }
                                                                     §§push(§§pop());
                                                                     addr109:
                                                                     break;
                                                                     if(_loc3_ && _loc2_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(§§pop())
                                                                     {
                                                                        loop39:
                                                                        while(!_loc3_)
                                                                        {
                                                                           §§pop();
                                                                           loop40:
                                                                           for(; _loc4_; _loc2_ = §§pop(),if(!(_loc4_ || _loc2_))
                                                                           {
                                                                              continue;
                                                                           },if(!_loc3_)
                                                                           {
                                                                              §§push(_loc2_);
                                                                              if(!_loc3_)
                                                                              {
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    §§goto(addr64);
                                                                                 }
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    continue loop39;
                                                                                 }
                                                                                 if(!(_loc4_ || _loc2_))
                                                                                 {
                                                                                    continue loop24;
                                                                                 }
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    return §§pop();
                                                                                 }
                                                                                 §§goto(addr172);
                                                                              }
                                                                              §§goto(addr65);
                                                                           },§§goto(addr173))
                                                                           {
                                                                              if(_loc3_)
                                                                              {
                                                                                 continue loop23;
                                                                              }
                                                                              if(!_loc3_)
                                                                              {
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    continue loop4;
                                                                                 }
                                                                                 §§push(param1.§6P§);
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    §§push(§§pop().y);
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       continue loop18;
                                                                                    }
                                                                                    §§push(this.§6P§);
                                                                                    if(!(_loc3_ && _loc3_))
                                                                                    {
                                                                                       §§push(§§pop().y);
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          §§push(§§pop() <= §§pop());
                                                                                          while(true)
                                                                                          {
                                                                                             addr64:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Boolean(§§pop()));
                                                                                                addr65:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      continue loop21;
                                                                                                   }
                                                                                                   if(_loc3_ && this)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   if(_loc4_ || _loc3_)
                                                                                                   {
                                                                                                      continue loop40;
                                                                                                   }
                                                                                                   §§goto(addr206);
                                                                                                }
                                                                                                addr161:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      §§goto(addr163);
                                                                                                   }
                                                                                                   addr243:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      continue loop17;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          addr63:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                continue loop20;
                                                                                             }
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             §§goto(addr161);
                                                                                             §§push(§§pop() <= §§pop());
                                                                                          }
                                                                                          §§goto(addr252);
                                                                                          addr156:
                                                                                       }
                                                                                       §§goto(addr253);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                       }
                                                                                       addr155:
                                                                                    }
                                                                                    §§goto(addr156);
                                                                                 }
                                                                                 §§goto(addr143);
                                                                              }
                                                                              §§goto(addr275);
                                                                           }
                                                                           §§goto(addr214);
                                                                        }
                                                                        continue loop22;
                                                                     }
                                                                     §§goto(addr63);
                                                                  }
                                                                  while(!(_loc3_ && _loc3_))
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        continue loop20;
                                                                     }
                                                                     §§goto(addr243);
                                                                  }
                                                                  continue loop2;
                                                                  addr235:
                                                               }
                                                               continue loop0;
                                                            }
                                                            §§goto(addr233);
                                                         }
                                                         §§goto(addr206);
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr235);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr251);
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
         §§goto(addr175);
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
         var _loc4_:Number = Number.MAX_VALUE;
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
            if(!(_loc17_ && this))
            {
               addr76:
               §§push(Number(§§pop()));
            }
            var _loc7_:* = §§pop();
            §§push(param2.p2.y);
            if(!(_loc17_ && _loc3_))
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
                                 addr898:
                                 loop86:
                                 while(true)
                                 {
                                    §§push(this.§=!H§);
                                    loop87:
                                    while(true)
                                    {
                                       §§push(§§pop().x);
                                       loop88:
                                       while(true)
                                       {
                                          §§push(_loc5_);
                                          loop78:
                                          while(true)
                                          {
                                             addr888:
                                             addr889:
                                             _loc13_ = Number((§§pop() - §§pop()) * _loc12_);
                                             while(true)
                                             {
                                                addr871:
                                                §§push(this.§6P§.x - _loc5_);
                                                §§push(_loc12_);
                                                if(_loc18_)
                                                {
                                                   break;
                                                }
                                                continue loop78;
                                                §§goto(addr888);
                                             }
                                             §§push(§§pop() * §§pop());
                                             loop80:
                                             while(true)
                                             {
                                                addr877:
                                                addr878:
                                                _loc14_ = Number(§§pop());
                                                §§push(-1);
                                                loop75:
                                                while(true)
                                                {
                                                   if(!_loc17_)
                                                   {
                                                      addr862:
                                                      _loc16_ = Number(§§pop());
                                                      loop76:
                                                      while(true)
                                                      {
                                                         if(_loc18_)
                                                         {
                                                            addr840:
                                                            if(_loc13_ > _loc14_)
                                                            {
                                                               while(true)
                                                               {
                                                                  addr843:
                                                                  §§push(_loc13_);
                                                                  if(_loc18_)
                                                                  {
                                                                     addr846:
                                                                     §§push(Number(§§pop()));
                                                                     if(!(_loc17_ && this))
                                                                     {
                                                                        _loc15_ = §§pop();
                                                                        addr854:
                                                                        if(_loc18_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        continue loop76;
                                                                     }
                                                                     continue loop80;
                                                                  }
                                                                  continue loop0;
                                                               }
                                                               §§push(_loc14_);
                                                               loop73:
                                                               while(true)
                                                               {
                                                                  addr834:
                                                                  addr835:
                                                                  _loc13_ = Number(§§pop());
                                                                  if(_loc18_)
                                                                  {
                                                                     addr822:
                                                                     _loc14_ = Number(_loc15_);
                                                                     addr821:
                                                                     loop74:
                                                                     while(true)
                                                                     {
                                                                        if(_loc18_ || _loc3_)
                                                                        {
                                                                           addr814:
                                                                           §§push(1);
                                                                           if(!_loc18_)
                                                                           {
                                                                              continue loop75;
                                                                           }
                                                                           addr817:
                                                                           _loc16_ = Number(§§pop());
                                                                           addr802:
                                                                           §§push(_loc13_);
                                                                           while(§§pop() > _loc3_)
                                                                           {
                                                                              if(!_loc17_)
                                                                              {
                                                                                 _loc11_.x = _loc16_;
                                                                                 _loc11_.y = 0;
                                                                                 addr790:
                                                                                 §§push(Number(_loc13_));
                                                                                 if(!_loc17_)
                                                                                 {
                                                                                    _loc3_ = §§pop();
                                                                                    addr794:
                                                                                    if(!_loc17_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    addr908:
                                                                                    return false;
                                                                                    addr907:
                                                                                 }
                                                                                 continue loop73;
                                                                                 addr811:
                                                                                 addr801:
                                                                              }
                                                                              continue loop74;
                                                                              §§goto(addr802);
                                                                           }
                                                                           addr779:
                                                                           _loc4_ = Math.min(_loc4_,_loc14_);
                                                                           addr818:
                                                                           addr804:
                                                                           if(!(_loc17_ && param1))
                                                                           {
                                                                              addr760:
                                                                              §§push(_loc3_);
                                                                              §§push(_loc4_);
                                                                              if(!(_loc17_ && _loc3_))
                                                                              {
                                                                                 if(§§pop() <= §§pop())
                                                                                 {
                                                                                    loop13:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc10_);
                                                                                       loop14:
                                                                                       while(!(_loc17_ && this))
                                                                                       {
                                                                                          if(_loc18_ || this)
                                                                                          {
                                                                                             if(_loc17_ && param2)
                                                                                             {
                                                                                                continue loop88;
                                                                                             }
                                                                                             if(_loc17_ && param1)
                                                                                             {
                                                                                                continue loop3;
                                                                                             }
                                                                                             if(§§pop() < Number.MIN_VALUE)
                                                                                             {
                                                                                                if(!(_loc17_ && this))
                                                                                                {
                                                                                                   if(_loc18_)
                                                                                                   {
                                                                                                      §§push(_loc6_);
                                                                                                      loop15:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.§=!H§);
                                                                                                         if(!_loc17_)
                                                                                                         {
                                                                                                            §§push(§§pop().y);
                                                                                                            loop16:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() < §§pop());
                                                                                                               if(!_loc17_)
                                                                                                               {
                                                                                                                  addr728:
                                                                                                                  §§push(§§pop());
                                                                                                                  if(!(_loc17_ && param2))
                                                                                                                  {
                                                                                                                     if(!§§pop())
                                                                                                                     {
                                                                                                                        loop65:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§pop();
                                                                                                                           addr738:
                                                                                                                           loop66:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!(_loc17_ && param2))
                                                                                                                              {
                                                                                                                                 if(!_loc17_)
                                                                                                                                 {
                                                                                                                                    if(!(_loc17_ && param2))
                                                                                                                                    {
                                                                                                                                       if(!_loc17_)
                                                                                                                                       {
                                                                                                                                          §§push(this.§6P§);
                                                                                                                                          loop67:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop().y);
                                                                                                                                             loop68:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc18_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc6_);
                                                                                                                                                   loop69:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() < §§pop());
                                                                                                                                                      if(_loc18_)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc17_)
                                                                                                                                                         {
                                                                                                                                                            loop17:
                                                                                                                                                            while(!§§pop())
                                                                                                                                                            {
                                                                                                                                                               loop18:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  loop19:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     param1.fraction = _loc3_;
                                                                                                                                                                     if(!(_loc17_ && _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc18_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc18_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc18_ || param1)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc17_ && this))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc18_)
                                                                                                                                                                                    {
                                                                                                                                                                                       break loop17;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(true);
                                                                                                                                                                                    if(_loc18_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc18_)
                                                                                                                                                                                       {
                                                                                                                                                                                          break loop69;
                                                                                                                                                                                       }
                                                                                                                                                                                       if(_loc18_ || _loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc17_ && param2))
                                                                                                                                                                                          {
                                                                                                                                                                                             return §§pop();
                                                                                                                                                                                          }
                                                                                                                                                                                          addr906:
                                                                                                                                                                                          while(!§§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop13;
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr907);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr908);
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       addr218:
                                                                                                                                                                                       if(!(_loc18_ || param1))
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop65;
                                                                                                                                                                                       }
                                                                                                                                                                                       if(_loc18_ || param1)
                                                                                                                                                                                       {
                                                                                                                                                                                          return §§pop();
                                                                                                                                                                                       }
                                                                                                                                                                                       addr933:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§pop();
                                                                                                                                                                                          addr934:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(this.§6P§);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       addr933:
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    loop59:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(this.§6P§);
                                                                                                                                                                                       if(_loc17_ && param1)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop67;
                                                                                                                                                                                       }
                                                                                                                                                                                       if(_loc18_ || param1)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc17_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop().y);
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc6_);
                                                                                                                                                                                                addr566:
                                                                                                                                                                                                while(!(_loc17_ && param1))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                                                                   while(_loc18_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc18_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc18_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc12_);
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc18_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                  while(_loc18_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                                                                     loop55:
                                                                                                                                                                                                                     while(!_loc17_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc18_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           _loc14_ = §§pop();
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(-1);
                                                                                                                                                                                                                              addr517:
                                                                                                                                                                                                                              loop43:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc18_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!(_loc17_ && param2))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                                                                       continue loop15;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr814);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc8_);
                                                                                                                                                                                                                                       if(_loc17_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          break loop43;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                       while(!(_loc17_ && this))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc18_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!_loc17_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   _loc12_ = §§pop();
                                                                                                                                                                                                                                                   addr654:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(this.§=!H§);
                                                                                                                                                                                                                                                      if(_loc17_ && param2)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop87;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr603:
                                                                                                                                                                                                                                                      §§push(§§pop().y);
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!(_loc17_ && param2))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc6_);
                                                                                                                                                                                                                                                            while(!_loc17_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!_loc17_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                  while(!(_loc17_ && this))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(_loc12_);
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                        break loop55;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr834);
                                                                                                                                                                                                                                                                  addr617:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr871);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr805);
                                                                                                                                                                                                                                                            addr612:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         break;
                                                                                                                                                                                                                                                         §§goto(addr603);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr779);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   continue loop87;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr653:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr871);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§goto(addr840);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr821);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr637:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr802);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop2;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr592:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr888);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     while(_loc18_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                        while(_loc18_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           _loc13_ = §§pop();
                                                                                                                                                                                                                           continue loop59;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr888);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr641);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop4;
                                                                                                                                                                                                                  addr584:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop69;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop69;
                                                                                                                                                                                                            addr581:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc5_);
                                                                                                                                                                                                            break loop13;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr903:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr871);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr790);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr760);
                                                                                                                                                                                             }
                                                                                                                                                                                             addr565:
                                                                                                                                                                                          }
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr903);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr902:
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr871);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr902);
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 loop60:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc17_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop66;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(_loc13_);
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                       loop41:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc17_ && param2))
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc18_)
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc15_ = §§pop();
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc18_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc18_ || this))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop18;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(_loc14_);
                                                                                                                                                                                                      loop45:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc17_ && this))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc17_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                               loop46:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc17_ && _loc3_))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     _loc13_ = §§pop();
                                                                                                                                                                                                                     loop57:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc15_);
                                                                                                                                                                                                                        loop51:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc18_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop15;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                                                                           loop52:
                                                                                                                                                                                                                           while(!(_loc17_ && param1))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              _loc14_ = §§pop();
                                                                                                                                                                                                                              loop58:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(1);
                                                                                                                                                                                                                                 if(_loc18_ || param1)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                                                                    loop53:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc18_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop52;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       if(!_loc18_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop41;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       if(_loc17_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop68;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       if(!(_loc17_ && this))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          _loc16_ = §§pop();
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc18_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc17_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop75;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr416:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc13_);
                                                                                                                                                                                                                                                   loop47:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc17_ && param2)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop53;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      if(!_loc18_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop51;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      if(_loc18_ || _loc3_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc17_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            break;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§push(_loc3_);
                                                                                                                                                                                                                                                         loop48:
                                                                                                                                                                                                                                                         while(_loc18_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc18_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!_loc17_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(§§pop() > §§pop())
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!_loc17_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc18_ || _loc3_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              _loc11_.y = _loc16_;
                                                                                                                                                                                                                                                                              loop21:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc17_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue loop57;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 if(_loc18_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc17_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop86;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    _loc11_.x = 0;
                                                                                                                                                                                                                                                                                    loop22:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(_loc13_);
                                                                                                                                                                                                                                                                                       loop23:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc18_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(_loc17_ && param1)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                break;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc17_ && param1)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   continue loop47;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                if(!_loc18_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   continue loop46;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                if(!_loc18_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   continue loop45;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                if(!_loc18_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   continue loop41;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                if(_loc18_ || this)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(_loc18_ || param1)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      _loc3_ = §§pop();
                                                                                                                                                                                                                                                                                                      loop25:
                                                                                                                                                                                                                                                                                                      while(!(_loc17_ && param2))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(Number(Math.min(_loc4_,_loc14_)));
                                                                                                                                                                                                                                                                                                            continue loop23;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(!(_loc17_ && param2))
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(_loc18_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  continue loop21;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               continue loop22;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            continue loop25;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§goto(addr790);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr779);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§goto(addr604);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                if(!(_loc17_ && this))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(_loc18_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(_loc4_);
                                                                                                                                                                                                                                                                                                      if(_loc17_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         continue loop48;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      if(!(_loc17_ && param2))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(!(_loc17_ && this))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(!_loc17_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(!_loc17_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(§§pop() > §§pop())
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     break loop19;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  continue loop19;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr612);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr625);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr566);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(!_loc18_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               continue loop16;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            if(_loc18_ || this)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(_loc18_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(§§pop() > §§pop())
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     continue loop60;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  continue loop47;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr888);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         addr479:
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr840);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr629);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr587);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr584);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       addr915:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(this.§=!H§);
                                                                                                                                                                                                                                                                                          break loop15;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc18_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc18_ || this)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§goto(addr544);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          break;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr654);
                                                                                                                                                                                                                                                                                       §§goto(addr871);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr794);
                                                                                                                                                                                                                                                                                    addr535:
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr654);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        continue loop58;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr769:
                                                                                                                                                                                                                                                                     return false;
                                                                                                                                                                                                                                                                     addr369:
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr248);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                                                  if(!_loc17_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                                                                                                                     break loop16;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr933);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr928:
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr871);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr581);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr653);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   continue loop14;
                                                                                                                                                                                                                                                   §§goto(addr416);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr806);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr862);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr517);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr877);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr574);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            break;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr617);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr843);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr592);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr505:
                                                                                                                                                                                             }
                                                                                                                                                                                             break;
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr760);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr565);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr505);
                                                                                                                                                                        }
                                                                                                                                                                        break;
                                                                                                                                                                     }
                                                                                                                                                                     if(!(_loc17_ && param1))
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc17_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           continue;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr369);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr264);
                                                                                                                                                                  }
                                                                                                                                                                  if(!(_loc17_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr218);
                                                                                                                                                                     §§push(false);
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr811);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr934);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§push(false);
                                                                                                                                                            break;
                                                                                                                                                            addr672:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr769);
                                                                                                                                                      }
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   return §§pop();
                                                                                                                                                }
                                                                                                                                                §§goto(addr888);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr854);
                                                                                                                                    }
                                                                                                                                    §§goto(addr835);
                                                                                                                                 }
                                                                                                                                 §§goto(addr801);
                                                                                                                              }
                                                                                                                              else if(!_loc17_)
                                                                                                                              {
                                                                                                                                 continue loop13;
                                                                                                                              }
                                                                                                                              §§goto(addr818);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr737:
                                                                                                                     }
                                                                                                                     §§goto(addr672);
                                                                                                                  }
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§goto(addr737);
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!§§pop())
                                                                                                               {
                                                                                                                  §§goto(addr933);
                                                                                                               }
                                                                                                               addr905:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§goto(addr906);
                                                                                                               }
                                                                                                               §§goto(addr728);
                                                                                                            }
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§goto(addr928);
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                      }
                                                                                                      addr914:
                                                                                                   }
                                                                                                   §§goto(addr915);
                                                                                                }
                                                                                                §§goto(addr738);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push(1);
                                                                                             }
                                                                                             §§goto(addr637);
                                                                                          }
                                                                                          §§goto(addr846);
                                                                                       }
                                                                                       §§goto(addr804);
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§goto(addr905);
                                                                                    }
                                                                                    addr904:
                                                                                 }
                                                                                 §§goto(addr769);
                                                                              }
                                                                              §§goto(addr904);
                                                                           }
                                                                           §§goto(addr934);
                                                                        }
                                                                        §§goto(addr842);
                                                                     }
                                                                  }
                                                                  break;
                                                               }
                                                               addr842:
                                                               addr856:
                                                               §§goto(addr890);
                                                            }
                                                            §§goto(addr817);
                                                         }
                                                         §§goto(addr889);
                                                      }
                                                      continue loop80;
                                                   }
                                                   continue loop1;
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
                  §§goto(addr914);
               }
            }
            §§goto(addr898);
         }
         §§goto(addr76);
      }
      
      public function §6m§(param1:b2AABB) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(param1.§=!H§.x);
         if(!(_loc7_ && _loc2_))
         {
            §§push(§§pop() - this.§6P§.x);
            if(!_loc7_)
            {
               addr32:
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(param1.§=!H§.y);
            if(!(_loc7_ && _loc3_))
            {
               §§push(§§pop() - this.§6P§.y);
               if(_loc6_)
               {
                  addr50:
                  §§push(Number(§§pop()));
               }
               var _loc3_:* = §§pop();
               §§push(this.§=!H§.x);
               if(!_loc7_)
               {
                  §§push(§§pop() - param1.§6P§.x);
                  if(!_loc7_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc4_:* = §§pop();
               §§push(this.§=!H§.y);
               if(_loc6_ || _loc2_)
               {
                  §§push(§§pop() - param1.§6P§.y);
                  if(_loc6_ || param1)
                  {
                     addr86:
                     §§push(Number(§§pop()));
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
                                             addr212:
                                             while(true)
                                             {
                                                §§push(§§pop() > §§pop());
                                                addr213:
                                                while(!(_loc7_ && param1))
                                                {
                                                }
                                                continue loop4;
                                             }
                                             addr104:
                                             if(_loc7_ && param1)
                                             {
                                                continue;
                                             }
                                             addr111:
                                             §§push(0);
                                             if(_loc6_ || this)
                                             {
                                                if(!_loc6_)
                                                {
                                                   continue loop1;
                                                }
                                                §§push(§§pop() > §§pop());
                                                if(!(_loc7_ && param1))
                                                {
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(!(_loc7_ && param1))
                                                         {
                                                            addr149:
                                                            §§push(false);
                                                            while(true)
                                                            {
                                                               if(!_loc7_)
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     if(!_loc7_)
                                                                     {
                                                                        return §§pop();
                                                                     }
                                                                     continue loop2;
                                                                  }
                                                                  §§goto(addr213);
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     addr208:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc5_);
                                                                        if(_loc7_)
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        §§goto(addr104);
                                                                     }
                                                                     continue loop6;
                                                                  }
                                                                  addr207:
                                                               }
                                                               §§goto(addr240);
                                                            }
                                                            addr149:
                                                         }
                                                         else if(!(_loc7_ && _loc2_))
                                                         {
                                                            if(!(_loc7_ && _loc3_))
                                                            {
                                                               if(_loc6_ || _loc3_)
                                                               {
                                                                  addr91:
                                                                  §§push(true);
                                                                  if(_loc6_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§goto(addr149);
                                                               }
                                                               addr222:
                                                               if(!(_loc6_ || _loc2_))
                                                               {
                                                                  continue loop5;
                                                               }
                                                               addr240:
                                                               return §§pop();
                                                               §§push(false);
                                                            }
                                                            else
                                                            {
                                                               addr241:
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(_loc4_);
                                                               continue loop0;
                                                               §§goto(addr241);
                                                            }
                                                            addr178:
                                                         }
                                                         §§goto(addr208);
                                                      }
                                                      §§goto(addr91);
                                                   }
                                                   addr139:
                                                   if(_loc7_)
                                                   {
                                                      while(true)
                                                      {
                                                         if(!(_loc7_ && this))
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc7_ && _loc2_)
                                                            {
                                                               break;
                                                            }
                                                            if(!§§pop())
                                                            {
                                                               §§goto(addr207);
                                                            }
                                                            §§goto(addr139);
                                                         }
                                                         §§goto(addr240);
                                                      }
                                                      continue loop3;
                                                      addr191:
                                                   }
                                                   return §§pop();
                                                }
                                                §§goto(addr149);
                                             }
                                             while(_loc6_)
                                             {
                                                §§goto(addr191);
                                                §§push(§§pop() > §§pop());
                                                §§goto(addr111);
                                             }
                                             §§goto(addr212);
                                          }
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       §§goto(addr222);
                                    }
                                    else
                                    {
                                       §§goto(addr178);
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr229);
               }
               §§goto(addr86);
            }
            §§goto(addr50);
         }
         §§goto(addr32);
      }
      
      public function §^!%§(param1:b2AABB, param2:b2AABB) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            §§push(this.§=!H§);
            while(true)
            {
               §§pop().x = Math.min(param1.§=!H§.x,param2.§=!H§.x);
               while(true)
               {
                  §§push(this.§=!H§);
                  if(!(_loc4_ || this))
                  {
                     break;
                  }
                  §§pop().y = Math.min(param1.§=!H§.y,param2.§=!H§.y);
                  loop2:
                  while(true)
                  {
                     §§push(this.§6P§);
                     while(true)
                     {
                        §§pop().x = Math.max(param1.§6P§.x,param2.§6P§.x);
                        §§push(this.§6P§);
                        addr77:
                        continue loop2;
                        if(!_loc3_)
                        {
                           §§pop().y = Math.max(param1.§6P§.y,param2.§6P§.y);
                           if(_loc4_)
                           {
                              return;
                              addr45:
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr45);
      }
   }
}
