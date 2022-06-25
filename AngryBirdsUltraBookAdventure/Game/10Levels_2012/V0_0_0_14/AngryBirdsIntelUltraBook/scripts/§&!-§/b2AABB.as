package §&!-§
{
   import §8>§.b2Vec2;
   
   public class b2AABB
   {
       
      
      public var §]S§:b2Vec2;
      
      public var §-!o§:b2Vec2;
      
      public function b2AABB()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§]S§ = new b2Vec2();
         }
         while(true)
         {
            this.§-!o§ = new b2Vec2();
            while(!_loc1_)
            {
               super();
               if(_loc2_ || _loc1_)
               {
                  return;
               }
            }
         }
      }
      
      public static function §"!#§(param1:b2AABB, param2:b2AABB) : b2AABB
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2AABB = new b2AABB();
         if(_loc4_ || _loc3_)
         {
            _loc3_.§"!#§(param1,param2);
         }
         return _loc3_;
      }
      
      public function §]d§() : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§-!o§.x);
         if(_loc5_)
         {
            §§push(§§pop() - this.§]S§.x);
            if(_loc5_ || _loc3_)
            {
               addr33:
               §§push(Number(§§pop()));
            }
            var _loc1_:* = §§pop();
            §§push(this.§-!o§.y);
            if(_loc5_)
            {
               §§push(§§pop() - this.§]S§.y);
               if(!_loc4_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc2_:* = §§pop();
            if(!(_loc4_ && _loc1_))
            {
               §§push(_loc1_);
               if(_loc5_ || _loc2_)
               {
                  §§push(0);
                  if(_loc5_)
                  {
                     §§push(§§pop() >= §§pop());
                     if(_loc5_ || this)
                     {
                        if(§§pop())
                        {
                           if(!_loc4_)
                           {
                              §§pop();
                              addr81:
                              §§push(_loc2_ >= 0);
                              if(!_loc4_)
                              {
                                 addr94:
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
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             loop7:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                if(_loc4_ && _loc1_)
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
                                                      while(_loc5_)
                                                      {
                                                         §§push(this.§-!o§.§]d§());
                                                         if(_loc5_)
                                                         {
                                                            continue loop8;
                                                         }
                                                         addr181:
                                                         addr201:
                                                         addr132:
                                                         loop10:
                                                         for(; !(_loc4_ && _loc1_); if(!(_loc5_ || _loc1_))
                                                         {
                                                            continue;
                                                         },§§goto(addr115))
                                                         {
                                                            if(_loc4_ && this)
                                                            {
                                                               continue loop0;
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               while(true)
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     _loc3_ = §§pop();
                                                                     if(!(_loc4_ && this))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     continue loop9;
                                                                  }
                                                                  continue loop1;
                                                               }
                                                               continue loop10;
                                                            }
                                                         }
                                                         while(_loc5_)
                                                         {
                                                            continue loop7;
                                                            §§goto(addr132);
                                                         }
                                                         addr132:
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            break loop9;
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(this.§]S§.§]d§());
                                                         continue loop0;
                                                      }
                                                   }
                                                }
                                                §§goto(addr146);
                                             }
                                             continue;
                                          }
                                          §§goto(addr201);
                                       }
                                    }
                                 }
                              }
                              §§goto(addr158);
                           }
                        }
                     }
                     §§goto(addr94);
                  }
               }
            }
            §§goto(addr81);
         }
         §§goto(addr33);
      }
      
      public function §,§() : b2Vec2
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(this.§]S§.x);
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§-!o§.x);
            if(!(_loc2_ && _loc2_))
            {
               §§push(§§pop() + §§pop());
               if(!_loc2_)
               {
                  addr62:
                  §§push(§§pop() / 2);
                  §§push(this.§]S§.y);
                  if(_loc1_)
                  {
                     §§push(§§pop() + this.§-!o§.y);
                     if(!_loc1_)
                     {
                     }
                     §§goto(addr75);
                  }
                  §§push(§§pop() / 2);
               }
               §§goto(addr62);
            }
            addr75:
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr62);
      }
      
      public function § ,§() : b2Vec2
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(this.§-!o§.x);
         if(_loc1_)
         {
            §§push(this.§]S§.x);
            if(!_loc2_)
            {
               §§push(§§pop() - §§pop());
               if(!(_loc2_ && _loc2_))
               {
                  addr55:
                  §§push(§§pop() / 2);
               }
               §§push(this.§-!o§.y);
               if(_loc1_ || _loc2_)
               {
                  §§push(§§pop() - this.§]S§.y);
                  if(_loc2_)
                  {
                  }
                  §§goto(addr75);
               }
               §§push(§§pop() / 2);
            }
            addr75:
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr55);
      }
      
      public function §#X§(param1:b2AABB) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = true;
         if(_loc4_ || _loc2_)
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
                              §§push(this.§]S§);
                              while(true)
                              {
                                 §§push(§§pop().x);
                                 addr273:
                                 while(true)
                                 {
                                    §§push(param1.§]S§);
                                    addr275:
                                    while(true)
                                    {
                                       §§push(§§pop().x);
                                       addr276:
                                       while(true)
                                       {
                                          §§push(§§pop() <= §§pop());
                                       }
                                    }
                                 }
                                 loop37:
                                 while(true)
                                 {
                                    §§push(this.§]S§);
                                    if(_loc3_ && this)
                                    {
                                       break;
                                    }
                                    §§push(§§pop().y);
                                    loop38:
                                    while(true)
                                    {
                                       §§push(param1.§]S§);
                                       if(_loc3_)
                                       {
                                          break;
                                       }
                                       §§push(§§pop().y);
                                       while(_loc4_)
                                       {
                                          §§push(§§pop() <= §§pop());
                                          while(_loc4_)
                                          {
                                             addr244:
                                             while(true)
                                             {
                                                §§push(Boolean(§§pop()));
                                                addr256:
                                                while(true)
                                                {
                                                   _loc2_ = §§pop();
                                                   addr257:
                                                   while(true)
                                                   {
                                                      §§push(_loc2_);
                                                      continue loop0;
                                                   }
                                                }
                                                §§goto(addr244);
                                             }
                                          }
                                          loop13:
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                             if(_loc4_)
                                             {
                                                §§push(§§pop());
                                                loop14:
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      §§goto(addr255);
                                                   }
                                                   loop20:
                                                   while(true)
                                                   {
                                                      if(_loc3_ && _loc3_)
                                                      {
                                                         continue loop14;
                                                      }
                                                      if(!(_loc4_ || _loc3_))
                                                      {
                                                         break;
                                                      }
                                                      if(§§pop())
                                                      {
                                                         loop21:
                                                         while(_loc4_)
                                                         {
                                                            §§pop();
                                                            loop22:
                                                            while(_loc4_)
                                                            {
                                                               §§push(param1.§-!o§);
                                                               loop23:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().x);
                                                                  addr174:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§-!o§);
                                                                     addr176:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().x);
                                                                        addr177:
                                                                        loop26:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() <= §§pop());
                                                                           addr178:
                                                                           while(true)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(Boolean(§§pop()));
                                                                                 loop29:
                                                                                 while(true)
                                                                                 {
                                                                                    _loc2_ = §§pop();
                                                                                    loop30:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          continue loop37;
                                                                                       }
                                                                                       if(_loc3_ && _loc2_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§push(_loc2_);
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             continue loop1;
                                                                                          }
                                                                                          §§push(Boolean(§§pop()));
                                                                                          if(!(_loc3_ && this))
                                                                                          {
                                                                                             addr146:
                                                                                             §§push(§§pop());
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                continue loop20;
                                                                                             }
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                   loop34:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc4_ || param1)
                                                                                                      {
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            continue loop21;
                                                                                                         }
                                                                                                         addr95:
                                                                                                         if(_loc4_ || _loc2_)
                                                                                                         {
                                                                                                            if(!(_loc3_ && this))
                                                                                                            {
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  addr111:
                                                                                                                  _loc2_ = §§pop();
                                                                                                                  if(!(_loc3_ && param1))
                                                                                                                  {
                                                                                                                     if(!_loc4_)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!(_loc4_ || param1))
                                                                                                                     {
                                                                                                                        continue loop30;
                                                                                                                     }
                                                                                                                     if(!_loc3_)
                                                                                                                     {
                                                                                                                        continue loop23;
                                                                                                                     }
                                                                                                                     §§goto(addr111);
                                                                                                                  }
                                                                                                                  continue loop38;
                                                                                                                  addr160:
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                     addr279:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc2_ = §§pop();
                                                                                                                        break loop22;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr278:
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr242);
                                                                                                            }
                                                                                                            §§goto(addr257);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               continue loop20;
                                                                                                               §§goto(addr95);
                                                                                                            }
                                                                                                            addr201:
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               continue loop29;
                                                                                                            }
                                                                                                            if(_loc3_ && this)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            §§pop();
                                                                                                            §§goto(addr160);
                                                                                                            continue loop34;
                                                                                                         }
                                                                                                         addr150:
                                                                                                      }
                                                                                                      §§goto(addr256);
                                                                                                   }
                                                                                                   continue loop22;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr150);
                                                                                       }
                                                                                       §§goto(addr146);
                                                                                    }
                                                                                    continue loop4;
                                                                                 }
                                                                              }
                                                                              continue loop26;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               continue loop13;
                                                            }
                                                         }
                                                         continue loop3;
                                                      }
                                                      §§goto(addr178);
                                                   }
                                                   continue loop2;
                                                }
                                             }
                                             §§goto(addr265);
                                          }
                                          addr242:
                                       }
                                       §§goto(addr276);
                                    }
                                    §§goto(addr275);
                                 }
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        §§goto(addr278);
                     }
                  }
               }
            }
         }
         §§goto(addr280);
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
         if(!(_loc18_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:* = Number(Number.MAX_VALUE);
         §§push(param2.p1.x);
         if(!(_loc18_ && param2))
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(param2.p1.y);
         if(!(_loc18_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc6_:* = §§pop();
         §§push(param2.p2.x);
         if(_loc17_)
         {
            §§push(§§pop() - param2.p1.x);
            if(!(_loc18_ && param2))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc7_:* = §§pop();
         §§push(param2.p2.y);
         if(!(_loc18_ && _loc3_))
         {
            §§push(§§pop() - param2.p1.y);
            if(_loc17_ || param1)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc8_:* = §§pop();
         var _loc9_:Number = Math.abs(_loc7_);
         var _loc10_:Number = Math.abs(_loc8_);
         _loc11_ = param1.normal;
         if(!_loc18_)
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
                                 §§push(this.§]S§);
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
                                          if(_loc17_ || _loc3_)
                                          {
                                             §§push(§§pop() - §§pop());
                                             if(!_loc18_)
                                             {
                                                §§push(_loc12_);
                                                while(true)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                }
                                                addr908:
                                             }
                                             loop10:
                                             while(true)
                                             {
                                                §§push(Number(§§pop()));
                                                loop11:
                                                while(true)
                                                {
                                                   _loc13_ = §§pop();
                                                   loop12:
                                                   while(true)
                                                   {
                                                      §§push(this.§-!o§);
                                                      loop13:
                                                      while(true)
                                                      {
                                                         §§push(§§pop().x);
                                                         loop14:
                                                         while(_loc17_)
                                                         {
                                                            §§push(_loc5_);
                                                            loop15:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() - §§pop());
                                                               loop16:
                                                               while(true)
                                                               {
                                                                  §§push(_loc12_);
                                                                  loop17:
                                                                  while(true)
                                                                  {
                                                                     if(_loc17_ || this)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                     }
                                                                     else
                                                                     {
                                                                        loop108:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() < §§pop());
                                                                           loop109:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc18_)
                                                                              {
                                                                                 loop110:
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       addr941:
                                                                                       if(!(_loc18_ && _loc3_))
                                                                                       {
                                                                                          §§push(false);
                                                                                          break;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr941);
                                                                                       }
                                                                                       addr950:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       addr684:
                                                                                       loop45:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc10_);
                                                                                          loop46:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc18_)
                                                                                             {
                                                                                                if(!(_loc17_ || this))
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                if(§§pop() < Number.MIN_VALUE)
                                                                                                {
                                                                                                   while(!(_loc18_ && this))
                                                                                                   {
                                                                                                      §§push(_loc6_);
                                                                                                      continue loop0;
                                                                                                      addr373:
                                                                                                      if(!(_loc17_ || this))
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      if(_loc18_)
                                                                                                      {
                                                                                                         continue loop12;
                                                                                                      }
                                                                                                      _loc11_.y = _loc16_;
                                                                                                      loop75:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc11_.x = 0;
                                                                                                         loop76:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc17_ || this)
                                                                                                            {
                                                                                                               if(!(_loc18_ && param2))
                                                                                                               {
                                                                                                                  if(_loc17_ || this)
                                                                                                                  {
                                                                                                                     if(_loc17_)
                                                                                                                     {
                                                                                                                        §§push(_loc13_);
                                                                                                                        loop77:
                                                                                                                        while(_loc17_ || param2)
                                                                                                                        {
                                                                                                                           addr295:
                                                                                                                           if(!(_loc18_ && _loc3_))
                                                                                                                           {
                                                                                                                              if(!_loc18_)
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    _loc3_ = §§pop();
                                                                                                                                    loop79:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!_loc18_)
                                                                                                                                       {
                                                                                                                                          if(!(_loc18_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             loop80:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(Number(Math.min(_loc4_,_loc14_)));
                                                                                                                                                loop81:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!_loc18_)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc18_ && param2))
                                                                                                                                                      {
                                                                                                                                                         if(!_loc18_)
                                                                                                                                                         {
                                                                                                                                                            _loc4_ = §§pop();
                                                                                                                                                            loop98:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc18_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc18_ && param2))
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc17_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc17_)
                                                                                                                                                                        {
                                                                                                                                                                           break loop80;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop81;
                                                                                                                                                                     }
                                                                                                                                                                     loop103:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc3_);
                                                                                                                                                                        loop104:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc18_ && _loc3_))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc4_);
                                                                                                                                                                              loop105:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc18_ && _loc3_))
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop15;
                                                                                                                                                                                 }
                                                                                                                                                                                 loop32:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(§§pop() > §§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       loop33:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc18_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc18_)
                                                                                                                                                                                             {
                                                                                                                                                                                                break;
                                                                                                                                                                                             }
                                                                                                                                                                                             _loc11_.x = _loc16_;
                                                                                                                                                                                             loop34:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc11_.y = 0;
                                                                                                                                                                                                loop35:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc13_);
                                                                                                                                                                                                   addr779:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc17_ || param1)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc17_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr851:
                                                                                                                                                                                                            while(_loc17_ || param2)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               _loc15_ = §§pop();
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop14;
                                                                                                                                                                                                            addr851:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc3_ = §§pop();
                                                                                                                                                                                                            addr790:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc17_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(Number(Math.min(_loc4_,_loc14_)));
                                                                                                                                                                                                                     addr775:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        _loc4_ = §§pop();
                                                                                                                                                                                                                        continue loop103;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr769:
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc14_);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                         addr825:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc13_ = §§pop();
                                                                                                                                                                                                            break loop79;
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr414:
                                                                                                                                                                                                      if(!(_loc18_ && this))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         _loc16_ = §§pop();
                                                                                                                                                                                                         loop100:
                                                                                                                                                                                                         while(!_loc18_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr424:
                                                                                                                                                                                                            loop71:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc13_);
                                                                                                                                                                                                               addr346:
                                                                                                                                                                                                               loop72:
                                                                                                                                                                                                               while(!(_loc18_ && _loc3_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc18_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc3_);
                                                                                                                                                                                                                     loop73:
                                                                                                                                                                                                                     while(_loc17_ || this)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(§§pop() > §§pop())
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           loop74:
                                                                                                                                                                                                                           while(_loc17_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr366:
                                                                                                                                                                                                                              if(_loc17_ || _loc3_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr373);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 loop55:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!_loc18_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(this.§-!o§);
                                                                                                                                                                                                                                       loop56:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc17_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr656:
                                                                                                                                                                                                                                             if(_loc17_ || _loc3_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop().y);
                                                                                                                                                                                                                                                loop57:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc17_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc6_);
                                                                                                                                                                                                                                                      loop58:
                                                                                                                                                                                                                                                      while(!_loc18_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                                         loop59:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            loop60:
                                                                                                                                                                                                                                                            while(!§§pop())
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  loop62:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     param1.fraction = _loc3_;
                                                                                                                                                                                                                                                                     if(_loc17_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc17_ || param2)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!_loc17_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop98;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§push(true);
                                                                                                                                                                                                                                                                           if(!_loc17_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr218:
                                                                                                                                                                                                                                                                              if(!(_loc18_ && this))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc18_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue loop60;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 if(!_loc18_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc17_ || param2)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       return §§pop();
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr767:
                                                                                                                                                                                                                                                                                    return §§pop();
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 addr963:
                                                                                                                                                                                                                                                                                 addr963:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(§§pop());
                                                                                                                                                                                                                                                                                    if(!_loc17_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    if(§§pop())
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop59;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 while(§§pop())
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue loop110;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 addr962:
                                                                                                                                                                                                                                                                                 §§pop();
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(this.§-!o§);
                                                                                                                                                                                                                                                                                    break loop56;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 addr961:
                                                                                                                                                                                                                                                                                 addr724:
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr675:
                                                                                                                                                                                                                                                                                 if(!(_loc18_ && param2))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    return §§pop();
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!_loc18_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§pop();
                                                                                                                                                                                                                                                                                    continue loop55;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 continue loop109;
                                                                                                                                                                                                                                                                                 §§goto(addr675);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              continue loop109;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           if(_loc18_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              break loop110;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           if(_loc17_ || _loc3_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              return §§pop();
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr962);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!(_loc18_ && this))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!_loc18_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc18_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       break loop60;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    if(_loc17_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop34;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    continue loop35;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 continue loop76;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              continue loop79;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr197:
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc18_ && param1)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop100;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        if(_loc17_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc17_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr549:
                                                                                                                                                                                                                                                                           loop63:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(_loc13_);
                                                                                                                                                                                                                                                                              addr513:
                                                                                                                                                                                                                                                                              loop64:
                                                                                                                                                                                                                                                                              while(!_loc18_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!_loc17_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue loop104;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 if(_loc17_ || this)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc18_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop11;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§push(_loc14_);
                                                                                                                                                                                                                                                                                    loop65:
                                                                                                                                                                                                                                                                                    while(!_loc18_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!_loc18_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(§§pop() <= §§pop())
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             continue loop71;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          loop66:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(_loc13_);
                                                                                                                                                                                                                                                                                             if(_loc17_ || _loc3_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc18_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   break;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                _loc15_ = §§pop();
                                                                                                                                                                                                                                                                                                addr544:
                                                                                                                                                                                                                                                                                                addr174:
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(_loc14_);
                                                                                                                                                                                                                                                                                                   addr474:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!_loc18_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr476:
                                                                                                                                                                                                                                                                                                         if(_loc17_ || param1)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                            break loop72;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         addr649:
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            _loc12_ = §§pop();
                                                                                                                                                                                                                                                                                                            break loop74;
                                                                                                                                                                                                                                                                                                            §§goto(addr476);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      break;
                                                                                                                                                                                                                                                                                                      §§goto(addr295);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   addr623:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                      break loop64;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                if(!(_loc17_ || _loc3_))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   continue;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                if(!_loc18_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(!_loc18_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(_loc4_);
                                                                                                                                                                                                                                                                                                      if(!_loc17_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         continue loop73;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      if(_loc18_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         continue loop65;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      if(_loc17_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(_loc18_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue loop58;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         if(_loc18_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue loop105;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         if(§§pop() <= §§pop())
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue loop62;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr197);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                            addr558:
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(_loc12_);
                                                                                                                                                                                                                                                                                                               break loop65;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         addr557:
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop108;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   addr935:
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr775);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr494:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(!(_loc18_ && param1))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(!(_loc18_ && param2))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(_loc17_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(_loc15_);
                                                                                                                                                                                                                                                                                                         break loop77;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      break;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   continue loop56;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                continue loop66;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr891:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop1;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          loop118:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(_loc17_ || param1)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(_loc6_);
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(_loc18_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr844:
                                                                                                                                                                                                                                                                                                      while(!_loc18_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(§§pop() > §§pop())
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            break loop80;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(_loc13_);
                                                                                                                                                                                                                                                                                                            addr800:
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               continue loop32;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            addr816:
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      continue loop8;
                                                                                                                                                                                                                                                                                                      addr844:
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(_loc18_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         continue loop57;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§push(_loc12_);
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§goto(addr623);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                addr616:
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                while(!_loc18_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(!(_loc18_ && _loc3_))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§goto(addr649);
                                                                                                                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(this.§]S§);
                                                                                                                                                                                                                                                                                                         addr958:
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(§§pop().x);
                                                                                                                                                                                                                                                                                                            addr959:
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                                                                                               addr960:
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§goto(addr961);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      addr956:
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   continue loop118;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                   addr890:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      _loc14_ = §§pop();
                                                                                                                                                                                                                                                                                                      §§goto(addr891);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                addr639:
                                                                                                                                                                                                                                                                                                addr889:
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§goto(addr724);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr723:
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr962);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    while(_loc17_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc17_ || this)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                          while(!_loc18_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(_loc17_ || param2)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(_loc18_ && param2)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      break loop63;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   addr586:
                                                                                                                                                                                                                                                                                                   if(_loc17_ || this)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      _loc14_ = §§pop();
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(_loc18_ && _loc3_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            break loop57;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§push(-1);
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                            break loop81;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      addr594:
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§goto(addr851);
                                                                                                                                                                                                                                                                                                         §§goto(addr586);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      addr850:
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                addr579:
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             if(_loc18_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop16;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             _loc16_ = §§pop();
                                                                                                                                                                                                                                                                                             §§goto(addr816);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr619);
                                                                                                                                                                                                                                                                                          addr569:
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§goto(addr616);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr798);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr622);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 _loc14_ = §§pop();
                                                                                                                                                                                                                                                                                 §§goto(addr813);
                                                                                                                                                                                                                                                                                 §§push(Number(1));
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 _loc13_ = §§pop();
                                                                                                                                                                                                                                                                                 continue loop56;
                                                                                                                                                                                                                                                                                 §§goto(addr623);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              continue loop57;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           continue loop46;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr494);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr962);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            if(!_loc17_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               break;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr675);
                                                                                                                                                                                                                                                            §§push(false);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop33;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr908);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr789);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr790);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             break;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop13;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr935);
                                                                                                                                                                                                                                          §§goto(addr656);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr955:
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr956);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop76;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop6;
                                                                                                                                                                                                                           addr364:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop80;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop17;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop10;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc18_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc17_ || param1)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        _loc13_ = §§pop();
                                                                                                                                                                                                                        §§goto(addr494);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr556);
                                                                                                                                                                                                                  §§goto(addr346);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr890);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop5;
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr816);
                                                                                                                                                                                       }
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc13_);
                                                                                                                                                                                          if(_loc17_ || param2)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr844);
                                                                                                                                                                                             §§push(_loc14_);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr851);
                                                                                                                                                                                       }
                                                                                                                                                                                       addr871:
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr769);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              continue loop15;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr825);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr626);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr844);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr544);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr569);
                                                                                                                                                      }
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr346);
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   _loc16_ = §§pop();
                                                                                                                                                   §§goto(addr549);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!_loc18_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr850);
                                                                                                                                                   §§push(_loc13_);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§goto(addr963);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       continue loop75;
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!(_loc18_ && param1))
                                                                                                                                       {
                                                                                                                                          addr819:
                                                                                                                                          §§goto(addr820);
                                                                                                                                          §§push(Number(_loc15_));
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr950);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    if(_loc18_ && this)
                                                                                                                                    {
                                                                                                                                       continue;
                                                                                                                                    }
                                                                                                                                    if(_loc18_)
                                                                                                                                    {
                                                                                                                                       continue loop77;
                                                                                                                                    }
                                                                                                                                    if(_loc17_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr174);
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc17_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr414);
                                                                                                                                       }
                                                                                                                                       addr444:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc17_)
                                                                                                                                          {
                                                                                                                                             if(_loc17_ || this)
                                                                                                                                             {
                                                                                                                                                if(_loc17_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   _loc14_ = §§pop();
                                                                                                                                                   break loop76;
                                                                                                                                                }
                                                                                                                                                §§goto(addr819);
                                                                                                                                             }
                                                                                                                                             §§goto(addr579);
                                                                                                                                          }
                                                                                                                                          §§goto(addr513);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr779);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr800);
                                                                                                                           }
                                                                                                                           §§goto(addr474);
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc17_ || param1)
                                                                                                                           {
                                                                                                                              addr434:
                                                                                                                              if(!(_loc17_ || this))
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              if(_loc18_)
                                                                                                                              {
                                                                                                                                 continue loop3;
                                                                                                                              }
                                                                                                                              §§goto(addr444);
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                           }
                                                                                                                           §§goto(addr558);
                                                                                                                        }
                                                                                                                        continue loop0;
                                                                                                                     }
                                                                                                                     §§goto(addr821);
                                                                                                                  }
                                                                                                                  §§goto(addr594);
                                                                                                               }
                                                                                                               break;
                                                                                                            }
                                                                                                            §§goto(addr364);
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(1);
                                                                                                            if(!(_loc18_ && param2))
                                                                                                            {
                                                                                                               addr395:
                                                                                                               if(_loc17_ || param2)
                                                                                                               {
                                                                                                                  if(_loc17_)
                                                                                                                  {
                                                                                                                     addr404:
                                                                                                                     if(_loc18_ && this)
                                                                                                                     {
                                                                                                                        continue loop1;
                                                                                                                     }
                                                                                                                     §§goto(addr412);
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                  }
                                                                                                                  break;
                                                                                                               }
                                                                                                               addr630:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc8_);
                                                                                                                  if(_loc18_ && param1)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§push(§§pop() / §§pop());
                                                                                                                  §§goto(addr395);
                                                                                                               }
                                                                                                               continue loop2;
                                                                                                               §§goto(addr639);
                                                                                                            }
                                                                                                            §§goto(addr547);
                                                                                                         }
                                                                                                         §§goto(addr820);
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop45;
                                                                                                }
                                                                                                §§goto(addr630);
                                                                                                §§push(1);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc16_ = §§pop();
                                                                                                   §§goto(addr871);
                                                                                                }
                                                                                                addr870:
                                                                                             }
                                                                                             §§goto(addr963);
                                                                                          }
                                                                                          continue loop7;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 return §§pop();
                                                                              }
                                                                              §§goto(addr960);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr889);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         continue loop4;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr959);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr955);
            }
         }
         §§goto(addr650);
      }
      
      public function §'V§(param1:b2AABB) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(param1.§]S§.x);
         if(_loc7_)
         {
            §§push(§§pop() - this.§-!o§.x);
            if(!(_loc6_ && this))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         §§push(param1.§]S§.y);
         if(!_loc6_)
         {
            §§push(§§pop() - this.§-!o§.y);
            if(_loc7_ || _loc2_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(this.§]S§.x);
         if(_loc7_)
         {
            §§push(§§pop() - param1.§-!o§.x);
            if(!_loc6_)
            {
               addr64:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(this.§]S§.y);
            if(!(_loc6_ && param1))
            {
               §§push(§§pop() - param1.§-!o§.y);
               if(_loc7_)
               {
                  addr82:
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               if(_loc7_)
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
                                       while(true)
                                       {
                                          §§push(0);
                                          addr215:
                                          while(true)
                                          {
                                             §§push(§§pop() > §§pop());
                                          }
                                          loop11:
                                          while(_loc7_ || this)
                                          {
                                             §§push(0);
                                             while(_loc7_)
                                             {
                                                if(!(_loc6_ && _loc2_))
                                                {
                                                   §§push(§§pop() > §§pop());
                                                   loop13:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      if(_loc6_ && param1)
                                                      {
                                                         break;
                                                      }
                                                      if(§§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(_loc7_)
                                                               {
                                                                  addr141:
                                                                  if(_loc7_ || param1)
                                                                  {
                                                                     if(_loc7_)
                                                                     {
                                                                        §§push(false);
                                                                        break;
                                                                     }
                                                                     continue loop5;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     addr87:
                                                                     §§push(true);
                                                                     if(_loc6_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(_loc7_)
                                                                     {
                                                                        if(_loc7_)
                                                                        {
                                                                           return §§pop();
                                                                        }
                                                                        addr201:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc7_)
                                                                           {
                                                                              continue loop4;
                                                                           }
                                                                           if(!(_loc7_ || _loc2_))
                                                                           {
                                                                              continue loop2;
                                                                           }
                                                                           §§pop();
                                                                        }
                                                                        continue loop5;
                                                                     }
                                                                     continue loop13;
                                                                  }
                                                                  addr222:
                                                                  addr222:
                                                                  while(true)
                                                                  {
                                                                     addr162:
                                                                     while(true)
                                                                     {
                                                                        continue loop11;
                                                                     }
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(_loc5_);
                                                                  if(_loc6_ && param1)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue loop0;
                                                                  §§goto(addr141);
                                                               }
                                                               continue loop11;
                                                            }
                                                            §§goto(addr87);
                                                         }
                                                         if(!(_loc6_ && _loc3_))
                                                         {
                                                            return §§pop();
                                                         }
                                                         addr221:
                                                         return §§pop();
                                                         addr137:
                                                      }
                                                      §§goto(addr201);
                                                   }
                                                   continue loop3;
                                                }
                                                continue loop1;
                                             }
                                             §§goto(addr215);
                                          }
                                       }
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr217);
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr222);
            }
            §§goto(addr82);
         }
         §§goto(addr64);
      }
      
      public function §"!#§(param1:b2AABB, param2:b2AABB) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            §§push(this.§]S§);
            while(true)
            {
               §§pop().x = Math.min(param1.§]S§.x,param2.§]S§.x);
               while(true)
               {
                  §§push(this.§]S§);
                  if(!(_loc4_ || this))
                  {
                     break;
                  }
                  §§pop().y = Math.min(param1.§]S§.y,param2.§]S§.y);
                  while(true)
                  {
                     §§push(this.§-!o§);
                     while(true)
                     {
                        §§pop().x = Math.max(param1.§-!o§.x,param2.§-!o§.x);
                        §§goto(addr82);
                     }
                  }
               }
            }
         }
         addr82:
         while(true)
         {
            §§push(this.§-!o§);
            if(!_loc3_)
            {
               §§pop().y = Math.max(param1.§-!o§.y,param2.§-!o§.y);
               if(!(_loc3_ && _loc3_))
               {
                  if(_loc4_)
                  {
                     if(!(_loc3_ && this))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  continue loop2;
               }
               continue;
            }
            continue loop3;
         }
      }
   }
}
